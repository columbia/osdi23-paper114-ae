from AutoV.IRLoader.irtypes import *
from AutoV.IRLoader.values import *
from AutoV.IRLoader.instructions import *
from AutoV.IRLoader.llvm import *
from AutoV.Spec.values import *
from AutoV.Spec.nodes import *


def asm_to_spec(proj, fname: str, L: Layer, suffix: str = ""):
    abs_data = L.abs_data

    module = proj.code

    proc = module.asm_procs[fname]

    if proc.objdump is None:
        raise Exception(f"Cannot convert asm {fname} to spec: no objdump")

    spec_name = to_coq_name(fname) + "_spec" + suffix
    
    dump = proc.objdump.strip().split("\n")
    if len(dump) == 2 and dump[1].strip() == "ret":
        inst = dump[0].strip().split()
        if inst[0] == "mrs" and inst[1] == "x0,":
            reg = "R" + inst[2]
            args = [Arg("st", abs_data)]
            rettype = Option(Tuple([Int(), abs_data]))
            body = Match.when(Symbol('v_val', Int()), 
                              Expr(L.ops["get_reg"], [Expr("Rsys", [Symbol(reg)]), Symbol("st", abs_data)]),
                              Expr('Some', [Expr('Tuple', [Symbol('v_val', Int()), Symbol('st', abs_data)])]))
        elif inst[0] == "msr" and inst[2] == "x0":
            reg = "R" + inst[1][:-1]
            args = [Arg("v_val", Int()), Arg("st", abs_data)]
            rettype = Option(abs_data)
            body = Expr(L.ops["set_reg"], 
                        [Expr("Rsys", [Symbol(reg)]), Symbol("v_val", Int()), Symbol("st", abs_data)])
        else:
            raise Exception(f"Cannot convert asm {fname} to spec: unsupported objdump {' '.join(dump)}")
    else:
        raise Exception(f"Cannot convert asm {fname} to spec: unsupported objdump {' '.join(dump)}")

    return [Definition(spec_name, rettype, args, body)]
