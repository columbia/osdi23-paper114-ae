import os
from AutoV.utils import *

def gen_specs(proj, loc, out):
    out = open(out, "w")

    syms = [s for s in proj.symbols if proj.symbols[s]["loc"] == loc]
    syms.sort(key=lambda s: proj.symbols[s]["order"])

    # Require Import
    deps = ['CommonDeps', "DataTypes"]
    if loc[0] != "GlobalDefs":
        deps.append("GlobalDefs")
    for s in syms:
        if not s in proj.deps: continue
        for d in proj.deps[s]:
            if proj.symbols[d]["loc"] == loc: continue
            if proj.symbols[d]["loc"] is None: continue
            deps.append(".".join(proj.symbols[d]["loc"]))
    deps = sorted(list(set(deps)))

    for d in deps:
        out.write(f"Require Import {d}.\n")

    out.write("\n")

    # Open Scope
    out.write("Local Open Scope string_scope.\n")
    out.write("Local Open Scope Z_scope.\n")
    out.write("\n")

    # Print Declarations
    for s in syms:
        if proj.symbols[s]["kind"] == "decl":
            out.write(str(proj.decls[s]) + "\n\n")

    out.write("Section " + "_".join(loc) + ".\n")
    out.write("\n")
    out.write("  Context `{int_ptr: IntPtrCast}.\n")
    out.write("\n")

    # Print Definitions
    for s in syms:
        if proj.symbols[s]["kind"] == "def":
            out.write(add_indent(str(proj.defs[s]), 2) + "\n\n")

    out.write("End " + "_".join(loc) + ".\n\n")

    for s in syms:
        if proj.symbols[s]["kind"] == "def":
            if s in proj.cmds["NoUnfold"]:
                out.write(f"Opaque {s}.\n")
            else:
                out.write(f"#[global] Hint Unfold {s}: spec.\n")
    
    out.close()

def generate_high_spec(proj):

    files = []
    gen_specs(proj, ("GlobalDefs",), os.path.join(proj.base, "GlobalDefs.v"))
    files.append("GlobalDefs.v")

    for L in proj.layers:
        if not os.path.exists(os.path.join(proj.base, L.name)):
            os.mkdir(os.path.join(proj.base, L.name)) 
        gen_specs(proj, (L.name, "Spec"), os.path.join(proj.base, L.name, "Spec.v"))
        files.append(os.path.join(L.name, "Spec.v"))

    return files
