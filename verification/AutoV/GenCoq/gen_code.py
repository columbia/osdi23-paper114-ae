import os

from AutoV.IRLoader.irtypes import *
from AutoV.IRLoader.values import *
from AutoV.IRLoader.instructions import *
from AutoV.IRLoader.llvm import *

def print_module(ir: IRModule, out_path: str):
    out = open(out_path, "w")

    layer_sem_name = "LayerSem."
    lib_name = "LayerSem.Libs."
    out.write("Require Import String.\n")
    out.write("Require Import ZArith.\n")
    out.write("Require Import List.\n")
    out.write(f"Require Import {lib_name}SMap.\n")
    out.write(f"Require Import {layer_sem_name}IR.\n")
    out.write(f"Require Import {layer_sem_name}IRSem.\n")
    out.write(f"Require Import {layer_sem_name}Asm.AsmInsn.\n")
    out.write("\n")
    out.write("Local Open Scope Z_scope.\n")
    out.write("Local Open Scope string_scope.\n\n")
    
    structs_coq = []
    out.write("(************ Structures ************)\n\n")
    for struct in ir.structs:
        typ = ir.structs[struct]
        out.write(f"Definition s_{to_coq_name(struct)} :=\n" +\
                    add_indent(typ.to_coq(), 4) + ".\n")
        out.write("\n")
        structs_coq.append(f"(\"{struct}\", s_{to_coq_name(struct)})")

    out.write("Definition structures :  list (string * typ) :=\n")
    out.write(add_indent(to_code_block(structs_coq), 4) + ".\n\n")

    globvars_coq = []
    out.write("(************ Global Variables ************)\n\n")
    for var in ir.globvars:
        out.write(f"Definition v_{to_coq_name(var)} :=\n" +\
                    add_indent(ir.globvars[var].to_coq(), 4) + ".\n")
        out.write("\n")
        globvars_coq.append(f"(\"{var}\", v_{to_coq_name(var)})")

    out.write("Definition globvars : list (string * global_var) :=\n")
    out.write(add_indent(to_code_block(globvars_coq), 4) + ".\n\n")

    functions_coq = []
    out.write("(************ Functions ************)\n\n")
    for func in ir.functions:
        out.write(f"Definition f_{to_coq_name(func)} :=\n" +\
                    add_indent(ir.functions[func].to_coq(), 4) + ".\n")
        out.write("\n")
        functions_coq.append(f"(\"{func}\", f_{to_coq_name(func)})")

    out.write("Definition funcs :=\n")
    out.write(add_indent(to_code_block(functions_coq), 4) + ".\n\n")

    asm_procs = []
    out.write("(************ AsmProcs ************)\n\n")
    for proc in ir.asm_procs:
        proc = ir.asm_procs[proc]
        if proc.body is None: continue
        out.write(proc.to_coq())
        out.write(".\n\n")
        asm_procs.append(f"(\"{proc.name}\", p_{to_coq_name(proc.name)})")

    out.write("Definition asm_procs :=\n")
    out.write(add_indent(to_code_block(asm_procs), 4) + ".\n\n")


    out.write("(************ IR Module ************)\n\n")
    out.write("Definition code :=\n")
    out.write("  {| structs := structures;\n")
    out.write("     global_vars := globvars;\n")
    out.write("     functions := funcs;\n")
    out.write("     asm_procedures := asm_procs |}.\n")

    out.close()


def generate_code(proj):
    print_module(proj.code, os.path.join(proj.base, "Code.v"))

    return ["Code.v"]
