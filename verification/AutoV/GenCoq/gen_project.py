import os
from copy import copy, deepcopy

from AutoV.GenCoq.gen_code import generate_code
from AutoV.GenCoq.gen_low_spec import generate_low_spec
from AutoV.GenCoq.gen_low_proof import generate_low_proof
from AutoV.GenCoq.gen_high_spec import generate_high_spec
from AutoV.GenCoq.gen_high_proof import generate_high_proof
from AutoV.GenCoq.gen_layer import generate_layer
from AutoV.GenCoq.gen_data import generate_data

from AutoV.Spec.project import Project

def generate_project(proj: Project):
    proj_name = proj.name
    proj_dir = proj.base

    if not os.path.exists(proj_dir):
        os.mkdir(proj_dir)

    files = []

    files += generate_data(proj)
    files += generate_code(proj)
    files += generate_low_spec(proj)
    files += generate_low_proof(proj)
    files += generate_high_spec(proj)
    files += generate_high_proof(proj)
    files += generate_layer(proj)

    common = open(proj_dir + "/CommonDeps.v", "w")
    for dep in ["LayerSem.Libs.Coqlib", "LayerSem.Libs.CommonLib", "LayerSem.Libs.Maps",
                "LayerSem.Libs.SMap", "LayerSem.Libs.Notations",
                "LayerSem.IR", "LayerSem.IRSem", "LayerSem.Asm.AsmInsn", 
                "LayerSem.Asm.AsmSem", "LayerSem.LayerRefine", "LayerSem.PrimSem"]:
        common.write(f"Require Export {dep}.\n")
    common.close()

    files += ["./CommonDeps.v"]

    mkfile = open(os.path.join(proj.base,  "_CoqProject"), "w")
    mkfile.write(f"-R . {proj_name}\n\n")
    for f in sorted(files):
        mkfile.write(f + "\n")
    mkfile.close()