from AutoV.IRLoader.irtypes import *
from AutoV.IRLoader.values import *
import os

autov = os.environ['AUTOV_HOME']
asmgen = os.path.join(autov, "AsmGen", "asmgen.native")
aarch64_gcc = "aarch64-linux-gnu-gcc"
aarch64_objd = "aarch64-linux-gnu-objdump"

def irtype_to_str(typ):
    if typ == TInt(IntType.TI64):
        return 'u64'
    if typ == TInt(IntType.TI32):
        return 'u32'
    if typ == TInt(IntType.TI8):
        return 'u8'
    if typ == TPtr(TInt(IntType.TI64)):
        return 'u64*'
    if typ == TPtr(TInt(IntType.TI32)):
        return 'u32*'
    if typ == TPtr(TInt(IntType.TI8)):
        return 'u8*'
    if typ == TVoid():
        return 'void'
    raise Exception("Unsupported type: " + typ.to_coq())

def parse_inline_asm(fname, asm_text, rettype, arglist, constraints):
    rettype = irtype_to_str(rettype)

    args = [irtype_to_str(t.typ) for t in arglist]
    arg_str = ", ".join([f"{t} in{i}" for i, t in enumerate(args)])
    if arg_str == "": arg_str = "void"

    vars = [f"in{i}" for i in range(len(args))]
    if rettype != 'void':
        vars = ["out"] + vars

    asm_text = repr(asm_text)[1:-1]
    asm_text = asm_text.replace("\"", "\\\"")
    for i in range(len(vars)):
        asm_text = asm_text.replace("$%d" % i, f"%{i}")
        asm_text = asm_text.replace("${%d:x}" % i, f"%{i}")
        asm_text = asm_text.replace("${%d:w}" % i, f"%{i}")
    asm_text = '"' + asm_text + '"'

    result = {"fname": fname, "asm": asm_text, "c": None, "objdump": None, "coq": None}

    '''
    TODO: Unsupported cases
    '''
    if "stxr" in asm_text: return result

    cons = constraints.split(",")
    # set empty if no constraint
    if len(cons) == 1 and cons[0] == '':
        cons = []

    # return value as output
    if rettype == 'void':
        out_cons = ""
    else:
        out_cons = '"' + cons[0] + "\"(out)"
        cons = cons[1:]

    # pointer argument as output
    # TODO: assume only the first argument can be output
    in_start = 0
    if cons and cons[0].startswith("="):
        if out_cons: out_cons += ","
        out_cons += f"\"{cons[0]}\"(in0)"
        cons = cons[1:]
        in_start = 1

    # concat input args
    in_cons = ",".join([f"\"{c}\"(in{a})" for a, c in zip(range(in_start, len(args)), cons)])

    # collect remaining constraints
    cons = cons[len(args):]
    cons = ",".join(['"' + c[2:-1] + '"' for c in cons])

    cons_text = ""
    if cons:
        cons_text = " : " + cons
    if in_cons:
        cons_text = " : " + in_cons + cons_text
    elif cons_text:
        cons_text = " :" + cons_text
    if out_cons:
        cons_text = " : " + out_cons + cons_text
    elif cons_text:
        cons_text = " :" + cons_text

    f = open(f"{fname}.c", "w")
    f.write("typedef unsigned long long u64;\n")
    f.write("typedef unsigned u32;\n")
    f.write("typedef unsigned char u8;\n")
    f.write("\n");
    f.write(f"{rettype} {fname}({arg_str})\n")
    f.write("{\n")
    if rettype != "void":
        f.write(f"    {rettype} out;\n")

    f.write(f"    asm volatile({asm_text}{cons_text});\n");
    if rettype != "void":
        f.write(f"    return out;\n")
    f.write("}\n")

    f.close()

    result["c"] = open(f"{fname}.c").read()

    os.system(f"{aarch64_gcc} -O2 -c {fname}.c 2> /dev/null")
    os.system(f"{aarch64_objd} -d {fname}.o > {fname}_objdump  2> /dev/null")
    if os.path.exists(f"{fname}_objdump"):
        f = open(f"{fname}_objdump").readlines()
        if len(f) > 6:
            objd = f[6]
            for l in f[7:]:
                tk = l.split("\t")
                objd += "\t".join(tk[2:])
                # TODO: may be wrong if there are jumps
                if "ret" in l: break
            result["objdump"] = objd
            out = open(f"{fname}_objdump", "w")
            out.write(objd)
            out.close()
            os.system(f"{asmgen} < {fname}_objdump > {fname}.v  2> /dev/null")
            coq = open(f"{fname}.v").read().strip()
            if len(coq) == 0: coq = None
            result["coq"] = coq
    if os.path.exists(f"{fname}.c"): os.system(f"rm {fname}.c")
    if os.path.exists(f"{fname}.o"): os.system(f"rm {fname}.o")
    if os.path.exists(f"{fname}_objdump"): os.system(f"rm {fname}_objdump")
    if os.path.exists(f"{fname}.v"): os.system(f"rm {fname}.v")
    return  result