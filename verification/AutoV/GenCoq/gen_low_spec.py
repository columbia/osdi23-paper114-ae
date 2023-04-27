import sys
import os
from AutoV.utils import *

def gen_low_spec(proj, i, fname, path):
    out = open(path, "w")

    loc = (proj.layers[i].name, fname, "LowSpec")

    syms = [s for s in proj.symbols if proj.symbols[s]["loc"] == loc]
    syms.sort(key=lambda s: proj.symbols[s]["order"])

    # Require Import
    deps = ['CommonDeps', 'Code', 'DataTypes', 'GlobalDefs']
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
        if proj.symbols[s]["kind"] == "def" and s not in proj.cmds["NoUnfold"]:
            out.write(f"#[global] Hint Unfold {s}: spec.\n")

    out.close()



def generate_low_spec(proj):
    files = []
    for i, L in enumerate(proj.layers):
        if i == 0: continue
        if not os.path.exists(os.path.join(proj.base, L.name)):
            os.mkdir(os.path.join(proj.base, L.name))
        for p in L.prims:
            if not os.path.exists(os.path.join(proj.base, L.name, p)):
                os.mkdir(os.path.join(proj.base, L.name, p))
            gen_low_spec(proj, i, p, os.path.join(proj.base, L.name, p, "LowSpec.v"))
            files.append(os.path.join(L.name, p, "LowSpec.v"))
    return files
