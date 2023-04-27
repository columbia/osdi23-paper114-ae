import json
import sys
import os

from AutoV.IRLoader.irtypes import *
from AutoV.IRLoader.values import *
from AutoV.IRLoader.instructions import *
from AutoV.IRLoader.llvm import *
from AutoV.IRLoader.coq import *
from AutoV.IRLoader.control_flow import control_flow_conversion
from AutoV.IRLoader.post_process import post_process

def parse_type(typ):
    if typ["type"] == "i1": return TBool()
    elif typ["type"] == "i8": return TInt(IntType.TI8)
    elif typ["type"] == "i16": return TInt(IntType.TI16)
    elif typ["type"] == "i32": return TInt(IntType.TI32)
    elif typ["type"] == "i64": return TInt(IntType.TI64)
    elif typ["type"] == "i128": return TInt(IntType.TI128)
    elif typ["type"] == "void": return TVoid()
    elif typ["type"] == "label": return TLabel()
    elif typ["type"] == "function":
        rettype = parse_type(typ["return"])
        arglist = []
        for arg in typ["arguments"]:
            arglist.append(parse_type(arg))
        return TFunction(rettype, arglist)
    elif typ["type"] == "pointer":
        subtype = parse_type(typ["subtype"])
        return TPtr(subtype)
    elif typ["type"] == "named_struct":
        return TNamedStruct(typ["name"], structs)
    elif typ["type"] == "unnamed_struct":
        struct = []
        for st in typ["struct"]:
            struct.append(parse_type(st))
        return TStruct(struct)
    elif typ["type"] == "array":
        subtype = parse_type(typ["subtype"])
        length = int(typ["length"])
        return TArray(subtype, length)
    elif typ["type"] == "fixedvector":
        subtype = parse_type(typ["subtype"])
        length = int(typ["length"])
        return TFixedVector(subtype, length)
    elif typ["type"] == "scalevector":
        subtype = parse_type(typ["subtype"])
        return TScaleVector(subtype)
    else:
        return IRType()

def parse_op(op):
    return {
        "eq": Op.Ceq,
        "ne": Op.Cne,
        "slt": Op.Cslt,
        "sle": Op.Csle,
        "ult": Op.Cult,
        "ule": Op.Cule,
        "sgt": Op.Csgt,
        "sge": Op.Csge,
        "ugt": Op.Cugt,
        "uge": Op.Cuge,
        "add": Op.OAdd,
        "and": Op.OAnd,
        "ashr": Op.OAshr,
        "bitcast": Op.OBitCast,
        "fadd": Op.OFadd,
        "fdiv": Op.OFdiv,
        "fmul": Op.OFmul,
        "fneg": Op.OFneg,
        "fsub": Op.OFsub,
        "getelementptr": Op.OGetElementPtr,
        "inttoptr": Op.OIntToPtr,
        "lshr": Op.OLshr,
        "mul": Op.OMul,
        "or": Op.OOr,
        "ptrtoint": Op.OPtrToInt,
        "sdiv": Op.OSdiv,
        "srem": Op.OSrem,
        "shl": Op.OShl,
        "sub": Op.OSub,
        "udiv": Op.OUdiv,
        "urem": Op.OUrem,
        "xor": Op.OXor,
        "trunc": Op.OTrunc,
     } [op]

def parse_ordering(order):
    return {
        "NotAtomic": Ordering.NotAtomic,
        "Unordered": Ordering.Unordered,
        "Monotonic": Ordering.Monotonic,
        "Acquire": Ordering.Acquire,
        "Release": Ordering.Release,
        "AcquireRelease": Ordering.AcquireRelease,
        "SequentiallyConsistent": Ordering.SequentiallyConsistent
     } [order]

def parse_value(val):
    typ = parse_type(val["type"])
    src = val["source"]
    if src == "constant":
        if isinstance(val["value"], str):
            if val["value"] == "UndefValue":
                return VUndef(typ)
            elif val["value"] == "ConstantPointerNull":
                return VNull(typ)
            elif val["value"] == "ConstantAggregateZero":
                return VAggZero(typ)
            elif isinstance(typ, TInt):
                return VInt(typ, int(val["value"]))
            elif isinstance(typ, TBool):
                return VBool(val["value"] != "0")
            else:
                return IRValue()
        else:
            val = val["value"]
            if val["type"] == "expression":
                if val["op"] == "icmp":
                    op = parse_op(val["predicate"])
                else:
                    op = parse_op(val["op"])
                operands = []
                for opr in val["operands"]:
                    operands.append(parse_value(opr))
                return VExpr(typ, op, operands)
            elif val["type"] == "global":
                return VGlobal(typ, val["value"][1:])
            elif val["type"] in ["array", "data_array", "vector", "data_vector"]:
                values = []
                for v in val["values"]:
                    values.append(parse_value(v))
                return VStruct(typ, values)
            elif val["type"] == "struct":
                values = []
                for v in val["value"]:
                    values.append(parse_value(v))
                return VStruct(typ, values)
            else:
                return IRValue()
    elif src == "argument":
        return VLocal(typ, val["value"])
    elif src == "basic_block":
        return VLabel(val["value"])
    elif src == "instruction":
        return VLocal(typ, val["value"])
    elif src == "inline_asm":
        return VInlineAsm(typ, val["value"]["asm"], val["value"]["side_effect"], 
                          val["value"]["constraints"] )
    elif src == "metadata":
        return IRValue()
    elif src == "operator":
        return IRValue()
    else:
        return IRValue()

def parse_val_list(lst):
    return [parse_value(a) for a in lst]

def parse_instruction(inst):
    if isinstance(inst, str):
        print(inst)
        return IRInst()
    elif inst["type"] == "AllocaInst":
        return IAlloc(parse_type(inst["assign"]["type"]), inst["assign"]["value"], inst["align"])
    elif inst["type"] == "AtomicRMWInst":
        return IAtomicRMW(parse_type(inst["assign"]["type"]), inst["assign"]["value"], parse_op(inst["op"]), 
                          parse_value(inst["ptr"]), parse_value(inst["val"]), parse_ordering(inst["ordering"]), inst["align"])
    elif inst["type"] == "BinaryOperator":
        return IBinOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                      parse_op(inst["operator"]), parse_value(inst["operands"][0]), parse_value(inst["operands"][1]))
    elif inst["type"] == "BitCastInst":
        return IUnaryOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        Op.OBitCast, parse_value(inst["src"]))
    elif inst["type"] == "BranchInst":
        if inst["conditional"]:
            return ICondBranch(parse_value(inst["condition"]), parse_value(inst["true_br"]), parse_value(inst["false_br"]))
        else:
            return IBranch(parse_value(inst["true_br"]))
    elif inst["type"] == "CallInst":
        args = [parse_value(a) for a in inst["arguments"]]
        return ICall(parse_type(inst["assign"]["type"]), inst["assign"]["value"],
                     args[-1], args[:-1])
    elif inst["type"] == "CmpXchgInst":
        return ICmpXchg(parse_type(inst["assign"]["type"]), inst["assign"]["value"], parse_value(inst["ptr"]), 
                          parse_value(inst["cmp"]), parse_value(inst["new"]), 
                          parse_ordering(inst["succ_ordering"]), parse_ordering(inst["fail_ordering"]), inst["align"])
    elif inst["type"] == "ExtractElementInst":
        return IExtractElem(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                            parse_value(inst["src"]), parse_value(inst["index"]))
    elif inst["type"] == "ExtractValueInst":
        return IExtractValue(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                            parse_value(inst["src"]), inst["indices"])
    elif inst["type"] == "FCmpInst":
        return IRInst()
    elif inst["type"] == "FPExtInst":
        return IUnaryOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        Op.OFPExt, parse_value(inst["src"]))
    elif inst["type"] == "FPToSIInst":
        return IUnaryOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        Op.OFPToSI, parse_value(inst["src"]))
    elif inst["type"] == "FPToUIInst":
        return IUnaryOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        Op.OFPToUI, parse_value(inst["src"]))
    elif inst["type"] == "FPTruncInst":
        return IUnaryOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        Op.OFPTrunc, parse_value(inst["src"]))
    elif inst["type"] == "FenceInst":
        return IFence(parse_ordering(inst["ordering"]))
    elif inst["type"] == "FreezeInst":
        return IFreeze(parse_type(inst["assign"]["type"]), inst["assign"]["value"], parse_value(inst["src"]))
    elif inst["type"] == "GetElementPtrInst":
        return IGetElemPtr(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                           parse_value(inst["src"]), parse_val_list(inst["indices"]))
    elif inst["type"] == "ICmpInst":
        op = parse_op(inst["predicate"])
        return IBinOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                      op, parse_value(inst["operands"][0]), parse_value(inst["operands"][1]))
    elif inst["type"] == "InsertElementInst":
        return IInsertElem(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                            parse_value(inst["target"]), parse_value(inst["value"]), parse_value(inst["index"]))
    elif inst["type"] == "InsertValueInst":
        return IInsertValue(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                            parse_value(inst["target"]), parse_value(inst["value"]), inst["indices"])
    elif inst["type"] == "IntToPtrInst":
        return IUnaryOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        Op.OIntToPtr, parse_value(inst["src"]))
    elif inst["type"] == "LoadInst":
        return ILoad(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        parse_value(inst["src"]), inst["align"])
    elif inst["type"] == "PHINode":
        values = [parse_value(inc["value"]) for inc in inst["incoming_list"]]
        blocks = [parse_value(inc["block"]) for inc in inst["incoming_list"]]
        return IPHI(parse_type(inst["assign"]["type"]), inst["assign"]["value"], values, blocks)
    elif inst["type"] == "PtrToIntInst":
        return IUnaryOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        Op.OPtrToInt, parse_value(inst["src"]))
    elif inst["type"] == "ReturnInst":
        if "return_value" in inst:
            return IReturn(parse_type(inst["return_type"]), parse_value(inst["return_value"]))
        else:
            return IReturn(parse_type(inst["return_type"]), None)
    elif inst["type"] == "SExtInst":
        return IUnaryOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        Op.OSExt, parse_value(inst["src"]))
    elif inst["type"] == "SIToFPInst":
        return IUnaryOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        Op.OSIToFP, parse_value(inst["src"]))
    elif inst["type"] == "SelectInst":
        return ISelect(parse_type(inst["assign"]["type"]), inst["assign"]["value"],
                       parse_value(inst["condition"]), parse_value(inst["true_value"]), parse_value(inst["false_value"]))
    elif inst["type"] == "ShuffleVectorInst":
        return IShuffleVec(parse_type(inst["assign"]["type"]), inst["assign"]["value"], parse_val_list(inst["operands"]))
    elif inst["type"] == "StoreInst":
        return IStore(parse_value(inst["target"]), parse_value(inst["src"]), inst["align"])
    elif inst["type"] == "SwitchInst":
        values = [parse_value(inc["value"]) for inc in inst["cases"]]
        blocks = [parse_value(inc["succ"]) for inc in inst["cases"]]
        return ISwitch(parse_value(inst["condition"]), parse_value(inst["default_succ"]), values, blocks)
    elif inst["type"] == "TruncInst":
        return IUnaryOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        Op.OTrunc, parse_value(inst["src"]))
    elif inst["type"] == "UIToFPInst":
        return IUnaryOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        Op.OUIToFP, parse_value(inst["src"]))
    elif inst["type"] == "UnaryOperator":
        return IUnaryOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        parse_op(inst["operator"]), parse_value(inst["operands"][0]))
    elif inst["type"] == "UnreachableInst":
        return IUnreachable()
    elif inst["type"] == "ZExtInst":
        return IUnaryOp(parse_type(inst["assign"]["type"]), inst["assign"]["value"], 
                        Op.OZExt, parse_value(inst["src"]))
    else:
        return IRInst()

fnames = []
ir_loc = []
cir_loc = []

def parse_function(func):
    fname = func["fname"]
    rettype = parse_type(func["rettype"])
    args = []
    for arg in func["args"]:
        args.append(FuncArg(arg["name"], parse_type(arg["type"])))
    is_decl = func["is_declaration"]
    if is_decl:
        func = IRFunction(fname, rettype, args, is_decl)
    else:
        entry = func["entry"]
        blocks = {}
        for block in func["blocks"]:
            insts = []
            for inst in func["blocks"][block]:
                insts.append(parse_instruction(inst))
            blocks[block] = insts
        func = IRFunction(fname, rettype, args, is_decl, entry, blocks)

    def count_ir_loc(func):
        loc = 0
        for blk in func.blocks:
            loc += len(func.blocks[blk])
        return loc
    def count_cir_loc(body):
        loc = 0
        for inst in body:
            if isinstance(inst, IIf):
                loc += count_cir_loc(inst.true_body)
                loc += count_cir_loc(inst.false_body)
            elif isinstance(inst, ILoop):
                loc += count_cir_loc(inst.body)
            else:
                loc += 1
        return loc

    if not func.is_decl:
        loc = count_ir_loc(func)
        if DEBUG: print(func.fname)
        body = control_flow_conversion(func.blocks)
        func = CFunction(func.fname, func.rettype, func.args, func.is_decl, body)
    else:
        func = CFunction(func.fname, func.rettype, func.args, func.is_decl, None)

    if func:
        if DEBUG: print("converted ", func.fname)
        if not func.is_decl and func.body:
            ir_loc.append(loc)
            cir_loc.append(count_cir_loc(func.body))
            fnames.append(func.fname)
        return func
    else:
        print("Unable to resolve function ", fname)
        return None

def parse_debug_info(module):
    structs = {}
    metadata = {}

    for md in module["mdtype"]:
        metadata[md["mdid"]] = md

    def construct_struct(md, parse_elems=True):
        if md["tag"] == "base":
            return md["name"]
        if md["tag"] not in ("struct", "union", "member", "typedef", "array", "pointer"):
            return md
        if md["tag"] in ("array", "pointer"):
            if md["base"] == '-1':
                return {"tag": md["tag"], "subtype": "UNKNOWN"}
            return {"tag": md["tag"], "subtype": construct_struct(metadata[md["base"]])}
        if "base" in md:
            if md["base"] == '-1':
                return "UNKNOWN"
            return construct_struct(metadata[md["base"]])
        if md["tag"] == "union":
            md["elements"] = md["elements"][:1]
        if parse_elems and md["name"] != "":
            return md["tag"] + "." + md["name"]
        name = md["tag"] + "." +  md["name"]
        size = md["size"]
        elems = []
        for i, elem in enumerate(md["elements"]):
            elem_md = metadata[elem]
            if elem_md["name"] == "":
                elem_md["name"] = md["name"] + "." + str(i)
            elems.append({"name": elem_md["name"], "offset": int(elem_md["offset"]) // 8, "size": int(elem_md["size"]) // 8, "type": construct_struct(elem_md)})
        return {"name": name, "size": int(size) // 8, "elems": elems}

    while True:
        parse_new_struct = False
        for md in module["mdtype"]:
            if md["tag"] in ("struct", "union") and md["name"] != "" and not md["tag"] + "." + md["name"] in structs:
                structs[md["tag"] + "." + md["name"]] = construct_struct(md, False)
                parse_new_struct = True
        if not parse_new_struct:
            break

    return {"structs": structs}

def parse_module(module, postprocess=True):
    global structs

    structs = {}
    globvars = {}
    functions = {}

    debug_info = parse_debug_info(module)

    def parse_struct(name, stype, sinfo):
        global structs

        size = sinfo["size"]
        elems = []

        if len(sinfo["elems"]) != len(stype):
            return False

        # padding_num = 0

        for i in range(len(sinfo["elems"])):
            j = i
            '''
            j = i + padding_num
            if stype[j]["type"] == "array" and stype[j]["subtype"]["type"] == "i8" and\
                not (isinstance(sinfo["elems"][i]["type"], dict) and\
                     sinfo["elems"][i]["type"]["tag"] == "array" and\
                     sinfo["elems"][i]["type"]["subtype"] in ("char", "unsigned char")):
                padding_num = padding_num + 1
            '''
            elems.append(TStructElem(sinfo["elems"][i]["name"], parse_type(stype[j]), sinfo["elems"][i]["offset"]))
            if isinstance(elems[-1].typ, TNamedStruct) and isinstance(sinfo["elems"][i]["type"], dict) and\
                (elems[-1].typ.name.startswith("struct") or elems[-1].typ.name.startswith("union")):
                if not elems[-1].typ.name in debug_info["structs"]:
                    sinfo["elems"][i]["type"]["name"] = elems[-1].typ.name
                    debug_info["structs"][elems[-1].typ.name] = sinfo["elems"][i]["type"]
        structs[name] = TStruct(elems, size)
        return True

    while True:
        parse_new_structs = False
        for struct in list(debug_info["structs"].keys()):
            if struct not in structs and struct in module["struct_types"]:
                if parse_struct(struct, module["struct_types"][struct], debug_info["structs"][struct]):
                    parse_new_structs = True
        if not parse_new_structs:
            break
        
    for struct in module["struct_types"]:
        if struct not in structs:
            elems = []
            for typ in module["struct_types"][struct]:
                elems.append(TStructElem("", parse_type(typ), 0))
            structs[struct] = TStruct(elems, 0)

    for vname in module["global_variables"]:
        var = module["global_variables"][vname]
        vtype = parse_type(var["type"])
        vconst = var["constant"]
        if "value" in var:
            vvalue = parse_value(var["value"])
        else:
            vvalue = None
        valign = int(var["align"])
        globvars[vname] = GlobalVar(vname, vtype, vconst, vvalue, valign)

    for fname in module["functions"]:
        func = parse_function(module["functions"][fname])
        if func:
            functions[fname] = func

    if postprocess:
        return post_process(IRModule(structs, globvars, functions, debug_info))
    else:
        return IRModule(structs, globvars, functions, debug_info)
