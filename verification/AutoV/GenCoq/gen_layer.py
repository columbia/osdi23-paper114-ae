import sys
import os

from AutoV.utils import *

def gen_layer(proj, i, path):
    out = open(path, "w")

    layer = proj.layers[i]

    Ps = set(layer.prims) | set(layer.passthrough)


    # Require Import
    deps = ['CommonDeps', "DataTypes"]

    # import specs
    for p in Ps:
        spec = f"{p}_spec"
        deps.append(".".join(proj.symbols[spec]["loc"]))

    # import interfaces
    for i in layer.ops:
        deps.append(".".join(proj.symbols[layer.ops[i]]["loc"]))

    deps = sorted(list(set(deps)))
    for d in deps:
        out.write(f"Require Import {d}.\n")
    out.write("\n")

    # Open Scope
    out.write("Local Open Scope string_scope.\n")
    out.write("Local Open Scope Z_scope.\n")
    out.write("\n")

    # Generate

    if "init" in layer.ops:
        dinit = layer.ops["init"]
    else:
        out.write(f"Parameter {layer.name}_init: {layer.abs_data}.\n")
        out.write("\n")
        dinit = f"{layer.name}_init"

    out.write(f"Section {layer.name}_Layer.\n")
    out.write("\n")
    out.write("  Context `{int_ptr: IntPtrCast}.\n")
    out.write("\n")

    if "load" in layer.ops:
        fload  = layer.ops["load"]
    else:
        out.write(f"  Definition {layer.name}_load (size: Z) (p: Ptr) (st: {layer.abs_data}) : option (Z * {layer.abs_data}) := None.\n")
        out.write("\n")
        fload = f"{layer.name}_load"

    if "store" in layer.ops:
        fstore  = layer.ops["store"]
    else:
        out.write(f"  Definition {layer.name}_store (size: Z) (p: Ptr) (val: Z) (st: {layer.abs_data}) : option {layer.abs_data} := None.\n")
        out.write("\n")
        fstore = f"{layer.name}_store"

    if "alloc" in layer.ops:
        falloc = layer.ops["alloc"]
    else:
        out.write(f"  Definition {layer.name}_alloca (size: Z) (align: Z) (st: {layer.abs_data}) : option (Ptr * {layer.abs_data}) := None.\n")
        out.write("\n")
        falloc = f"{layer.name}_alloca"

    if "free" in layer.ops:
        ffree = layer.ops["free"]
    else:
        out.write(f"  Definition {layer.name}_free (p: Ptr) (st: {layer.abs_data}) : option {layer.abs_data} := None.\n")
        out.write("\n")
        ffree = f"{layer.name}_free"

    if "get_reg" in layer.ops:
        fgetreg = layer.ops["get_reg"]
    else:
        out.write(f"  Definition {layer.name}_get_reg (reg: regset) (st: {layer.abs_data}) : option Z := None.\n")
        out.write("\n")
        fgetreg = f"{layer.name}_get_reg"

    if "set_reg" in layer.ops:
        fsetreg = layer.ops["set_reg"]
    else:
        out.write(f"  Definition {layer.name}_set_reg (reg: regset) (val: Z) (st: {layer.abs_data}) : option {layer.abs_data} := None.\n")
        out.write("\n")
        fsetreg = f"{layer.name}_set_reg"

    if "get_flag" in layer.ops:
        fgetflag = layer.ops["get_flag"]
    else:
        out.write(f"  Definition {layer.name}_get_flag (f: flag) (st: {layer.abs_data}) : bool := false.\n")
        out.write("\n")
        fgetflag = f"{layer.name}_get_flag"

    if "set_flag" in layer.ops:
        fsetflag = layer.ops["set_flag"]
    else:
        out.write(f"  Definition {layer.name}_set_flag (f: flag) (val: bool) (st: {layer.abs_data}) : option {layer.abs_data} := None.\n")
        out.write("\n")
        fsetflag = f"{layer.name}_set_flag"

    out.write(f"  Definition {layer.name}_layer :=\n")
    out.write( "    {|\n")
    out.write(f"      State := {layer.abs_data};\n")
    out.write(f"      Init := {dinit};\n")
    out.write(f"      Load := {fload};\n")
    out.write(f"      Store := {fstore};\n")
    out.write(f"      Alloca := {falloc};\n")
    out.write(f"      Free := {ffree};\n")
    out.write(f"      GetReg := {fgetreg};\n")
    out.write(f"      SetReg := {fsetreg};\n")
    out.write(f"      GetFlag := {fgetflag};\n")
    out.write(f"      SetFlag := {fsetflag};\n")
    out.write(f"      PrimCall :=\n")
    first = True
    for p in Ps:
        if first:
            out.write(f"          (\"{p}\", prim {p}_spec)\n")
            first = False
        else:
            out.write(f"          :: (\"{p}\", prim {p}_spec)\n")
    if len(Ps) > 0:
        out.write(f"          :: nil\n")
    else:
        out.write(f"          nil\n")
    out.write( "    |}.\n\n")
    out.write(f"End {layer.name}_Layer.\n")

def gen_layer_refine_rel(proj, i, path):
    out = open(path, "w")
    layer = proj.layers[i]
    base_layer = proj.layers[i-1]

    # Require Import
    deps = ["CommonDeps", "DataTypes"]
    for d in deps:
        out.write(f"Require Import {d}.\n")
    out.write("\n")

    out.write(f"Definition refrel (hst: {layer.abs_data}) (lst: {base_layer.abs_data}): Prop := hst = lst.\n")

    out.close()

def gen_layer_refine(proj, i, path):
    out = open(path, "w")

    layer = proj.layers[i].name
    base_layer = proj.layers[i-1].name

    # Require Import
    deps = ["CommonDeps", "Code", "DataTypes", f"{base_layer}.Layer", f"{layer}.Layer", f"{layer}.RefineRel"]
    for d in deps:
        out.write(f"Require Import {d}.\n")
    out.write("\n")

    # Open Scope
    out.write("Local Open Scope Z_scope.\n")
    out.write("Local Open Scope string_scope.\n")
    out.write("\n")

    # refinement proof
    out.write("Section LayerRefine.\n")
    out.write("\n")
    out.write("  Context `{int_ptr: IntPtrCast}.\n")
    out.write("\n")
    out.write(f"  Lemma {layer}_refine_{base_layer}:\n")
    out.write(f"    LayerRef {base_layer}_layer {layer}_layer code refrel.\n")
    out.write(f"  Admitted.\n")
    out.write("\n")
    out.write("End LayerRefine.\n")

def generate_layer(proj):
    files = []
    proj_dir = proj.base
    for i, layer in enumerate(proj.layers):
        name = layer.name
        if not os.path.exists(f"{proj_dir}/{name}"):
            os.mkdir(f"{proj_dir}/{name}")
        gen_layer(proj, i, f"{proj_dir}/{name}/Layer.v")
        files.append(f"{name}/Layer.v")

        if i > 0:
            gen_layer_refine_rel(proj, i, f"{proj_dir}/{name}/RefineRel.v")
            #gen_layer_refine(proj, i, f"{proj_dir}/{name}/LayerRefine.v")
            #files.append(f"{name}/LayerRefine.v")
            files.append(f"{name}/RefineRel.v")

    return files
