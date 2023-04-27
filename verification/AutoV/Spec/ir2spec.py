from AutoV.IRLoader.irtypes import *
from AutoV.IRLoader.values import *
from AutoV.IRLoader.instructions import *
from AutoV.IRLoader.llvm import *
from AutoV.Spec.values import *
from AutoV.Spec.nodes import *


def ir_to_spec(proj, fname: str, L: Layer, suffix: str = ""):
    abs_data = L.abs_data

    module = proj.code

    func = module.functions[fname]

    spec_name = func.fname + "_spec" + suffix
    args = [Arg(arg.name, ir_type_to_spec(arg.typ)) for arg in func.args]
    args.append(Arg('st', abs_data))

    if isinstance(func.rettype, TVoid):
        rettype = Option(abs_data)
        ret = []
    else:
        rettype = Option(Tuple([ir_type_to_spec(func.rettype), abs_data]))
        ret = ["__retval__"]

    defs = []

    analyze_input_output(func)
    func.types = analyze_types(func.body, {"st": abs_data})

    body = ir_insts_to_spec(proj, L, func.fname, func.body, defs, ret, False, suffix)

    return defs + [Definition(spec_name, rettype, args, body)]


def ir_type_to_spec(typ):
    if isinstance(typ, TInt):
        return Int()
    elif isinstance(typ, TBool):
        return Bool()
    elif isinstance(typ, TVoid):
        return SpecType("Void")
    elif isinstance(typ, TFunction):
        return Function(ir_type_to_spec(typ.rettype), [ir_type_to_spec(t) for t in typ.arglist])
    elif isinstance(typ, TPtr):
        return Ptr
    elif isinstance(typ, TNamedStruct):
        return SpecType(typ.name)
    else:
        raise Exception(f"Unsupported type: {typ.to_coq()}")

def _Let(name, value, body):
    return Match(value, [PatternMatch(Symbol(name), body)])

def _When(patt, value, body):
    return Match(value, [PatternMatch(Expr('Some', [patt]), body), PatternMatch(Symbol('None'), Symbol('None'))])

def _Some(value):
    return Expr('Some', [value])

def _Tuple(elems):
    return Expr('Tuple', elems)

def _List(elems):
    return Expr('List', elems)

def _st(abs_data):
    return Symbol('st', abs_data)

def _name(name, types):
    return Symbol(name, types.get(name, UNKNOWN_TYPE))

def _default_val(typ):
    if isinstance(typ, Int):
        return IntConst(0)
    elif isinstance(typ, Bool):
        return BoolConst(False)
    elif isinstance(typ, Struct) and typ.name == "Ptr":
        return Expr("mkPtr", [StringConst("#"), IntConst(0)])
    elif isinstance(typ, String()):
        return StringConst("")
    else:
        assert(False)

def load_store_typ(typ):
    if isinstance(typ, TInt):
        return {IntType.TI8: 1, IntType.TI16: 2, IntType.TI32: 4, IntType.TI64: 8}[typ.inttype]
    elif isinstance(typ, TPtr):
        return 0
    else: return 99

# generates spec that returns option(args + [st])
def ir_insts_to_spec(proj, L: Layer, fname: str, insts: list[IRInst], 
                     defs: list[SpecNode], args: list[str], in_loop: bool, suffix: str):
    abs_data = L.abs_data
    func = proj.code.functions[fname]
    types = func.types

    relies = []

    if len(args) > 0:
        returns = _Some(_Tuple([_name(a, types) for a in args] + [_st(abs_data)]))
    else:
        returns = _Some(_st(abs_data))

    if not insts:
        return returns

    i = insts[0]
    remain = insts[1:]

    remain_spec = ir_insts_to_spec(proj, L, fname, remain, defs, args, in_loop, suffix)

    if isinstance(i, IAssign):
        stmt = _Let(i.assign, ir_value_to_spec(i.value, relies), remain_spec)
        for p in relies: stmt = Rely(p, stmt)
        return stmt

    elif isinstance(i, IReturn):
        if i.val:
            stmt = _Let("__return__", BoolConst(True), _Let("__retval__", ir_value_to_spec(i.val, relies), remain_spec))
            for p in relies: stmt = Rely(p, stmt)
            return stmt
        else:
            return _Let("__return__", BoolConst(True), remain_spec)

    elif isinstance(i, IBreak):
        return _Let("__break__", BoolConst(True), remain_spec)

    elif isinstance(i, IContinue):
        return _Let("__continue__", BoolConst(True), remain_spec)

    elif isinstance(i, (IUnaryOp, IBinOp)):
        return ir_op_to_spec(i, remain_spec, types)

    elif isinstance(i, ISelect):
        cond = ir_value_to_spec(i.cond, relies)
        stmt = _Let(i.assign, If(cond, ir_value_to_spec(i.true_val, relies), ir_value_to_spec(i.false_val, relies)), remain_spec)
        for p in relies: stmt = Rely(p, stmt)
        return stmt

    elif isinstance(i, ICall):
        if isinstance(i.func, VGlobal):
            f = i.func.name

            args = []
            for a in i.args:
                args.append(ir_value_to_spec(a, relies))

            args.append(_st(abs_data))

            if isinstance(i.typ, TVoid):
                ret = _st(abs_data)
            else:
                ret = _Tuple([_name(i.assign, types), _st(abs_data)])

            stmt = _When(ret, Expr(f + "_spec", args), remain_spec)
            for p in relies: stmt = Rely(p, stmt)
            return stmt
        else:
            assert(False)

    elif isinstance(i, IGetElemPtr):
        stmt = _Let(i.assign, ir_expr_to_spec(Op.OGetElementPtr, [i.val] + i.idx, relies), remain_spec) 
        for p in relies: stmt = Rely(p, stmt)
        return stmt

    elif isinstance(i, ILoad):
        if isinstance(i.typ, TInt):
            stmt = _When(_Tuple([_name(i.assign, types), _st(abs_data)]), 
                         Expr(L.ops["load"], [IntConst(load_store_typ(i.typ)), ir_value_to_spec(i.ptr, relies), _st(abs_data)]), remain_spec)
            for p in relies: stmt = Rely(p, stmt)
            return stmt
        elif isinstance(i.typ, TPtr):
            types[i.assign + "_tmp"] = Int()
            stmt = _When(_Tuple([_name(i.assign + "_tmp", types), _st(abs_data)]), 
                         Expr(L.ops["load"], [IntConst(load_store_typ(i.typ)), ir_value_to_spec(i.ptr, relies), _st(abs_data)]), 
                         _Let(i.assign, Expr('int_to_ptr', [_name(i.assign + "_tmp", types)]), remain_spec))
            for p in relies: stmt = Rely(p, stmt)
            return stmt
        else:
            raise Exception("ILoad not int or ptr")

    elif isinstance(i, IStore):
        if isinstance(i.val.typ, TInt):
            stmt = _When(_st(abs_data), Expr(L.ops['store'], [IntConst(load_store_typ(i.val.typ)), ir_value_to_spec(i.ptr, relies), ir_value_to_spec(i.val, relies), _st(abs_data)]), remain_spec)
            for p in relies: stmt = Rely(p, stmt)
            return stmt
        elif isinstance(i.val.typ, TPtr):
            stmt = _When(_st(abs_data), 
                         Expr(L.ops['store'], [IntConst(load_store_typ(i.val.typ)), ir_value_to_spec(i.ptr, relies), 
                                        Expr("ptr_to_int", [ir_value_to_spec(i.val, relies)]), _st(abs_data)]), remain_spec)
            for p in relies: stmt = Rely(p, stmt)
            return stmt
        else:
            raise Exception("IStore not int or ptr")

    elif isinstance(i, IAlloc):
        stmt = _When(_Tuple([_name(i.assign, types), _st(abs_data)]), 
                     Expr(L.ops['alloc'], [IntConst(load_store_typ(i.typ.subtype)), ir_value_to_spec(i.align, relies), _st(abs_data)]), remain_spec)
        for p in relies: stmt = Rely(p, stmt)
        return stmt

    elif isinstance(i, IIf):
        cond = ir_value_to_spec(i.cond, relies)
        then_body = ir_insts_to_spec(proj, L, fname, i.true_body, defs, i.output, in_loop, suffix)
        else_body = ir_insts_to_spec(proj, L, fname, i.false_body, defs, i.output, in_loop, suffix)

        val = If(cond, then_body, else_body) # returns option(i.output + [st])
        for o in i.need_init:
            val = _Let(o, _default_val(types[o]), val)
        
        if in_loop:
            if "__continue__" in i.output:
                remain_spec = If(_name("__continue__", types), returns, remain_spec)
            if "__break__" in i.output:
                remain_spec = If(_name("__break__", types), returns, remain_spec)
        if "__return__" in i.output:
            remain_spec = If(_name("__return__", types), returns, remain_spec)

        if len(i.output) > 0:
            out = _Tuple([Symbol(o) for o in i.output] + [_st(abs_data)])
        else:
            out = _st(abs_data)
        
        stmt = _When(out, val, remain_spec)
        for p in relies: stmt = Rely(p, stmt)
        return stmt

    elif isinstance(i, ILoop):
        loop_args = [Symbol('_N_', Nat)] + [_name(a, types) for a in i.loop_args] + [_st(abs_data)]
        loop_init = [Expr('z_to_nat', [Expr(f'{fname}_loop_rank', [_name(a, types) for a in i.input])])]
        for a in i.loop_args:
            if a in ["__return__", "__break__"]: 
                loop_init.append(BoolConst(False))
            elif a in i.input:
                loop_init.append(_name(a, types))
            else:
                loop_init.append(_default_val(types[a]))
        loop_init.append(_st(abs_data))

        loop_body = _When(_Tuple(loop_args[1:]), Expr(f'{fname}_loop' + suffix, loop_args), 
                          ir_insts_to_spec(proj, L, fname, i.body, defs, [a for a in i.loop_args], True, suffix))
        defs.append(Fixpoint(f'{fname}_loop' + suffix, Option(Tuple([types[a] for a in (i.loop_args + ['st'])])), 
                             [Arg("_N_", Nat)] + [Arg(a, types[a]) for a in (i.loop_args + ['st'])],
                             Match(_name('_N_', types), [PatternMatch(_name('O', types), _Some(_Tuple(loop_args[1:]))),
                                                    PatternMatch(Expr('S', [Symbol('_N_')]), loop_body)])))
        if f'{fname}_loop_rank' not in proj.defs:
            defs.append(Definition(f'{fname}_loop_rank', Int(), [Arg(a, types[a]) for a in i.input], IntConst(0)))
            print("Need fill in:\n", str(defs[-1]))

        if "__break__" in i.output:
            remain_spec = If(_name("__break__", types), remain_spec, Symbol("None"))

        if "__return__" in i.output:
            remain_spec = If(_name("__return__", types), returns, remain_spec)

        return Rely(Expr(">=", [Expr(f'{fname}_loop_rank', [_name(a, types) for a in i.input]), IntConst(0)]),
            _When(_Tuple(loop_args[1:]), Expr(f'{fname}_loop' + suffix, loop_init), remain_spec))

    else:
        assert(False)


def ir_value_to_spec(v, relies: list[SpecNode]):
    if isinstance(v, int):
        return IntConst(v)
    elif isinstance(v, bool):
        return BoolConst(v)
    elif isinstance(v, str):
        return StringConst(v)
    elif isinstance(v, VLocal):
        return Symbol(v.name)
    elif isinstance(v, VGlobal):
        return Expr("mkPtr", [StringConst(v.name), IntConst(0)])
    elif isinstance(v, VInt):
        return IntConst(v.val)
    elif isinstance(v, VBool):
        return BoolConst(True if v.val else False)
    elif isinstance(v, VExpr):
        return ir_expr_to_spec(v.op, v.operands, relies)
    elif isinstance(v, VNull):
        return Expr("mkPtr", [StringConst("null"), IntConst(0)])
    elif isinstance(v, VUndef):
        return _name('UNDEF', {})
    else:
        return _name('UNKNOWN_VALUE', {})

def ir_op_to_spec(i, remain_spec, types):
    relies = []
    args = [i.a] if isinstance(i, IUnaryOp) else [i.a, i.b]
    expr = ir_expr_to_spec(i.op, args, relies)
    stmt = _Let(i.assign, expr, remain_spec)
    for p in relies: stmt = Rely(p, stmt)
    return stmt

def int_val_of(v, signed):
    return v

def sizeof_type(ty):
    sz = ty.sizeof_verbose()
    if len(sz) == 1:
        return IntConst(sz[0])
    else:
        return Expr('*', [IntConst(sz[0]), IntConst(sz[1])])

def get_elem_ptr(val, idx, relies):
    tv = val.typ
    offs = []
    for i in idx:
        if isinstance(tv, (TPtr, TArray, TFixedVector)):
            offs.append(Expr("*", [sizeof_type(tv.subtype), i])) 
            if isinstance(tv, (TArray, TFixedVector)):
                relies.append(Expr("/\\", [Expr("<=", [IntConst(0), i]), Expr("<", [i, IntConst(tv.length)])]))
            tv = tv.subtype
        elif isinstance(tv, TStruct):
            assert(isinstance(i, IntConst))
            offs.append(IntConst(tv.elems[i.value].offset))
            tv = tv.elems[i.value].typ
        elif isinstance(tv, TNamedStruct):
            tv = tv.structs[tv.name]
            assert(isinstance(i, IntConst))
            offs.append(IntConst(tv.elems[i.value].offset))
            tv = tv.elems[i.value].typ
    offs.append(IntConst(0))

    def reduce(offs):
        if len(offs) == 1: return offs[0]
        return Expr("+", [offs[0], reduce(offs[1:])])

    return Expr("ptr_offset", [ir_value_to_spec(val, relies), reduce(offs)])

def ir_expr_to_spec(op, _args, relies):
    args = [ir_value_to_spec(a, relies) for a in _args]
    if op == Op.OBitCast:
        return args[0]
    elif op == Op.OSExt:
        return args[0]
    elif op == Op.OTrunc:
        return args[0]
    elif op == Op.OZExt:
        if isinstance(_args[0].typ, TBool):
            return Expr('bool_to_int', args)
        else:
            return args[0]
    elif op == Op.OPtrToInt:
        return Expr('ptr_to_int', args)
    elif op == Op.OIntToPtr:
        return Expr('int_to_ptr', args)
    elif op == Op.OGetElementPtr:
        return get_elem_ptr(_args[0], args[1:], relies)
    elif op == Op.Cslt:
        return Expr('<?', [int_val_of(args[0], True), int_val_of(args[1], True)])
    elif op == Op.Csle:
        return Expr('<=?', [int_val_of(args[0], True), int_val_of(args[1], True)])
    elif op == Op.Cult:
        return Expr('<?', [int_val_of(args[0], False), int_val_of(args[1], False)])
    elif op == Op.Cule:
        return Expr('<=?', [int_val_of(args[0], False), int_val_of(args[1], False)])
    elif op == Op.Ceq:
        if isinstance(_args[0].typ, TInt):
            return Expr('=?', [int_val_of(args[0], False), int_val_of(args[1], False)])
        elif isinstance(_args[0].typ, TPtr):
            return Expr('ptr_eqb', [args[0], args[1]])
        else:
            assert(False)
    elif op == Op.Cne:
        if isinstance(_args[0].typ, TInt):
            return Expr('<>?', [int_val_of(args[0], False), int_val_of(args[1], False)])
        elif isinstance(_args[0].typ, TPtr):
            return Expr('!', [Expr('ptr_eqb', [args[0], args[1]])])
        else:
            assert(False)
    elif op == Op.Csgt:
        return Expr('>?', [int_val_of(args[0], True), int_val_of(args[1], True)])
    elif op == Op.Csge:
        return Expr('>=?', [int_val_of(args[0], True), int_val_of(args[1], True)])
    elif op == Op.Cugt:
        return Expr('>?', [int_val_of(args[0], False), int_val_of(args[1], False)])
    elif op == Op.Cuge:
        return Expr('>=?', [int_val_of(args[0], False), int_val_of(args[1], False)])
    elif op == Op.OAdd:
        return Expr('+', [int_val_of(args[0], False), int_val_of(args[1], False)])
    elif op == Op.OAnd:
        if isinstance(_args[0].typ, TInt):
            return Expr('&', [int_val_of(args[0], False), int_val_of(args[1], False)])
        elif isinstance(_args[0].typ, TBool):
            return Expr('&&', [int_val_of(args[0], False), int_val_of(args[1], False)])
        else:
            assert(False)
    elif op == Op.OAshr:
        return Expr('>>', [int_val_of(args[0], False), int_val_of(args[1], False)])
    elif op == Op.OLshr:
        return Expr('>>', [int_val_of(args[0], False), int_val_of(args[1], False)])
    elif op == Op.OMul:
        return Expr('*', [int_val_of(args[0], False), int_val_of(args[1], False)])
    elif op == Op.OOr:
        if isinstance(_args[0].typ, TInt):
            return Expr('|\'', [int_val_of(args[0], False), int_val_of(args[1], False)])
        elif isinstance(_args[0].typ, TBool):
            return Expr('||', [int_val_of(args[0], False), int_val_of(args[1], False)])
        else:
            assert(False)
    elif op == Op.OSdiv:
        return Expr('/', [int_val_of(args[0], True), int_val_of(args[1], True)])
    elif op == Op.OSrem:
        return Expr('mod', [int_val_of(args[0], True), int_val_of(args[1], True)])
    elif op == Op.OShl:
        return Expr('<<', [int_val_of(args[0], True), int_val_of(args[1], True)])
    elif op == Op.OSub:
        return Expr('-', [int_val_of(args[0], False), int_val_of(args[1], False)])
    elif op == Op.OUdiv:
        return Expr('/', [int_val_of(args[0], False), int_val_of(args[1], False)])
    elif op == Op.OUrem:
        return Expr('mod', [int_val_of(args[0], False), int_val_of(args[1], False)])
    elif op == Op.OXor:
        if isinstance(_args[0].typ, TInt):
            return Expr('Z.lxor', [int_val_of(args[0], False), int_val_of(args[1], False)])
        elif isinstance(_args[0].typ, TBool):
            return Expr('xorb', [int_val_of(args[0], False), int_val_of(args[1], False)])
        else:
            assert(False)
    else:
        assert(False)

def analyze_input_output(func):

    def get_input_output(insts, input, output):
        if not isinstance(insts, list):
            insts = [insts]
        for i in insts:
            if isinstance(i, CFunction):
                for a in i.args:
                    output.add(a.name)
            elif isinstance(i, IAssign):
                get_input_output(i.value, input, output)
                output.add(i.assign)
            elif isinstance(i, IReturn):
                if i.val: 
                    get_input_output(i.val, input, output)
                    output.add("__retval__")
                output.add("__return__")
            elif isinstance(i, IBreak):
                output.add("__break__")
            elif isinstance(i, IContinue):
                output.add("__continue__")
            elif isinstance(i, IUnaryOp):
                get_input_output(i.a, input, output)
                output.add(i.assign)
            elif isinstance(i, IBinOp):
                get_input_output(i.a, input, output)
                get_input_output(i.b, input, output)
                output.add(i.assign)
            elif isinstance(i, ISelect):
                get_input_output(i.cond, input, output)
                get_input_output(i.true_val, input, output)
                get_input_output(i.false_val, input, output)
                output.add(i.assign)
            elif isinstance(i, ICall):
                for a in i.args:
                    get_input_output(a, input, output)
                output.add(i.assign)
            elif isinstance(i, IIf):
                get_input_output(i.cond, input, output)
                get_input_output(i.true_body, input, output)
                get_input_output(i.false_body, input, output)
            elif isinstance(i, ILoop):
                get_input_output(i.body, input, output)
            elif isinstance(i, IGetElemPtr):
                get_input_output(i.val, input, output)
                get_input_output(i.idx, input, output)
                output.add(i.assign)
            elif isinstance(i, IExtractValue):
                #TODO
                pass
            elif isinstance(i, ILoad):
                get_input_output(i.ptr, input, output)
                output.add(i.assign)
            elif isinstance(i, IStore):
                get_input_output(i.ptr, input, output)
                get_input_output(i.val, input, output)
            elif isinstance(i, IAlloc):
                output.add(i.assign)
            elif isinstance(i, VLocal):
                if isinstance(i.typ, TVoid):
                    output.add(i.name)
                else:
                    if i.name not in output:
                        input.add(i.name)
            elif isinstance(i, VExpr):
                for a in i.operands:
                    get_input_output(a, input, output)
            elif isinstance(i, (VInt, VBool, VAggZero, VNull, VUndef, VStruct, VGlobal, IRValue)):
                pass
            else:
                assert(False)

        return input, output

    def _analyze_input_output(insts, before, after, in_loop):
        for i in range(len(insts)):
            if isinstance(insts[i], CFunction): continue
            before_input, before_output = get_input_output(before + insts[:i], set(), set())
            after_input, after_output = get_input_output(insts[i+1:] + after, set(), set())

            input, output = get_input_output([insts[i]], set(), set())
            insts[i].input = sorted(list(before_output & input))
            insts[i].output = sorted(list(output & after_input))
            if in_loop:
                if "__continue__" in output and "__continue__" not in insts[i].output: insts[i].output = ["__continue__"] + insts[i].output
                if "__break__" in output and "__break__" not in insts[i].output: insts[i].output = ["__break__"] + insts[i].output
            if "__retval__" in output and "__retval__" not in insts[i].output: insts[i].output = ["__retval__"] + insts[i].output
            if "__return__" in output and "__return__" not in insts[i].output: insts[i].output = ["__return__"] + insts[i].output

            if isinstance(insts[i], IIf):
                _analyze_input_output(insts[i].true_body, before + insts[:i], insts[i+1:] + after, in_loop)
                _analyze_input_output(insts[i].false_body, before + insts[:i], insts[i+1:] + after, in_loop)
                insts[i].need_init = sorted(list(set(insts[i].output) - before_output))
            elif isinstance(insts[i], ILoop):
                _analyze_input_output(insts[i].body, before + insts[:i], insts[i+1:] + after, True)
                loop_input, loop_output = get_input_output(insts[i].body, set(), set())
                loop_output &= after_input
                insts[i].loop_args = sorted(list(loop_input | loop_output))
                if in_loop:
                    # if "__continue__" in output: insts[i].loop_args = ["__continue__"] + insts[i].loop_args
                    if "__break__" in output and "__break__" not in insts[i].loop_args: insts[i].loop_args = ["__break__"] + insts[i].loop_args
                if "__retval__" in output and "__retval__" not in insts[i].loop_args: insts[i].loop_args = ["__retval__"] + insts[i].loop_args
                if "__return__" in output and "__return__" not in insts[i].loop_args: insts[i].loop_args = ["__return__"] + insts[i].loop_args
                # recompute input/output of loop body with the loop_args as outside input/output
                _analyze_input_output(insts[i].body, 
                                      [VLocal(TVoid(), name) for name in insts[i].loop_args],
                                      [VLocal(TBool(), name) for name in insts[i].loop_args],
                                      True)

    _analyze_input_output([func] + func.body, [], [], False)

def analyze_types(insts, types):
    if not isinstance(insts, list):
        insts = [insts]
    for i in insts:
        if isinstance(i, IAssign):
            analyze_types(i.value, types)
            types[i.assign] = ir_type_to_spec(i.typ)
        elif isinstance(i, IReturn):
            if i.val: 
                analyze_types(i.val, types)
                types["__retval__"] = ir_type_to_spec(i.val.typ)
            types["__return__"] = Bool()
        elif isinstance(i, IBreak):
            types["__break__"] = Bool()
        elif isinstance(i, IContinue):
            types["__continue__"] = Bool()
        elif isinstance(i, IUnaryOp):
            analyze_types(i.a, types)
            types[i.assign] = ir_type_to_spec(i.typ)
        elif isinstance(i, IBinOp):
            analyze_types(i.a, types)
            analyze_types(i.b, types)
            types[i.assign] = ir_type_to_spec(i.typ)
        elif isinstance(i, ISelect):
            analyze_types(i.cond, types)
            analyze_types(i.true_val, types)
            analyze_types(i.false_val, types)
            types[i.assign] = ir_type_to_spec(i.typ)
        elif isinstance(i, ICall):
            for a in i.args:
                analyze_types(a, types)
            types[i.assign] = ir_type_to_spec(i.typ)
        elif isinstance(i, IIf):
            analyze_types(i.cond, types)
            analyze_types(i.true_body, types)
            analyze_types(i.false_body, types)
        elif isinstance(i, ILoop):
            analyze_types(i.body, types)
            types["_N_"] = Nat
        elif isinstance(i, IGetElemPtr):
            analyze_types(i.val, types)
            analyze_types(i.idx, types)
            types[i.assign] = ir_type_to_spec(i.typ)
        elif isinstance(i, ILoad):
            analyze_types(i.ptr, types)
            types[i.assign] = ir_type_to_spec(i.typ)
        elif isinstance(i, IStore):
            analyze_types(i.ptr, types)
            analyze_types(i.val, types)
        elif isinstance(i, IAlloc):
            types[i.assign] = ir_type_to_spec(i.typ)
        elif isinstance(i, VLocal):
            types[i.name] = ir_type_to_spec(i.typ)
        elif isinstance(i, VExpr):
            for a in i.operands:
                analyze_types(a, types)
        elif isinstance(i, (VInt, VBool, VAggZero, VNull, VUndef, VStruct, VGlobal, IRValue)):
            pass
        else:
            assert(False)

    return types