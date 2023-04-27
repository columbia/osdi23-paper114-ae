from AutoV.IRLoader.instructions import *
from AutoV.IRLoader.irtypes import *
from AutoV.IRLoader.values import *
from AutoV.IRLoader.llvm import *
from AutoV.IRLoader.inline_asm import parse_inline_asm

def extract_inline_asm(mod: IRModule) -> None:
    inline_asms = {}

    iasm_count = 0

    def find_inline_asm(insts) -> None:
        nonlocal inline_asms, mod, iasm_count

        if insts is None: return
        for i in insts:
            if isinstance(i, ICall):
                if not isinstance(i.func, VGlobal) and isinstance(i.func, VInlineAsm):
                    fname = f"iasm_{iasm_count}"
                    old_name = fname
                    asm_text = i.func.asm
                    constraints = i.func.constraints
                    rettype = i.typ
                    args = [FuncArg(f"_{n}", a) for n, a in enumerate(i.func.typ.subtype.arglist)]
                    asm = parse_inline_asm(fname, asm_text, rettype, args, constraints)
                    if asm["objdump"] is not None:
                        objd = "\n".join(asm["objdump"].split("\n")[1:])
                        if objd in inline_asms:
                            i.func = VGlobal(i.typ, inline_asms[objd]["fname"])
                            continue
                    if asm["coq"]:
                        lines = objd.strip().split("\n")
                        if len(lines) == 2 and lines[1].strip() == "ret":
                            # single line function
                            inst = lines[0].strip().split("\t")
                            if inst[0] == "mrs" and inst[1].startswith("x0, "):
                                reg = inst[1].split(", ")[1]
                                fname = f"iasm_get_{reg}"
                            elif inst[0] == "msr" and inst[1].endswith(", x0"):
                                reg = inst[1].split(", ")[0]
                                fname = f"iasm_set_{reg}"
                            else:
                                fname = f"iasm_{iasm_count}_{inst[0]}"
                                iasm_count += 1
                        else:
                            iasm_count += 1
                        coq = asm["coq"].replace(old_name, fname)
                        mod.asm_procs[fname] = AsmProcedure(fname, asm["asm"], objd, coq)
                        inline_asms[objd] = {"fname": fname, "func": mod.asm_procs[fname]}
                        i.func = VGlobal(i.typ, inline_asms[objd]["fname"])
                    else:
                        if asm["objdump"]:
                            mod.asm_procs[fname] = AsmProcedure(fname, asm["asm"], objd, None)
                            inline_asms[objd] = {"fname": fname, "func": mod.asm_procs[fname]}
                            i.func = VGlobal(i.typ, inline_asms[objd]["fname"])
                            iasm_count += 1
                        else:
                            mod.asm_procs[fname] = AsmProcedure(fname, asm["asm"], None, None)
                            i.func = VGlobal(i.typ, fname)
                            iasm_count += 1
                else:
                    pass
            elif isinstance(i, IIf):
                find_inline_asm(i.true_body)
                find_inline_asm(i.false_body)
            elif isinstance(i, ILoop):
                find_inline_asm(i.body)

    funcs = list(mod.functions.keys())
    for f in sorted(funcs):
        func = mod.functions[f]
        find_inline_asm(func.body)

    return mod

def post_process(mod: IRModule):
    mod = extract_inline_asm(mod)
    return mod