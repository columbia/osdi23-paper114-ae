import os
from AutoV.utils import *
from AutoV.Spec.values import *

def gen_high_proof(proj, i, fname, path):

    layer = proj.layers[i].name
    base_layer = proj.layers[i-1].name

    loc = (layer, fname, "LowSpec")
    loc_proof = (layer, fname, "RefProof")

    syms = [s for s in proj.symbols if proj.symbols[s]["loc"] == loc]
    mid_syms = [s for s in proj.symbols if proj.symbols[s]["loc"] == loc_proof]
    mid_syms.sort(key=lambda s: proj.symbols[s]["order"])

    # Require Import
    deps = ['CommonDeps', 'DataTypes', 'GlobalDefs', 
            'LayerSem.Libs.Zutils.div_mod_to_equations',
            f'{layer}.{fname}.LowSpec', f'{layer}.Spec', f'{layer}.Layer', f'{base_layer}.Layer', f'{layer}.RefineRel']
    for s in syms + mid_syms:
        if not s in proj.deps: continue
        for d in proj.deps[s]:
            if proj.symbols[d]["loc"] is None or proj.symbols[d]["loc"] == loc_proof: continue
            deps.append(".".join(proj.symbols[d]["loc"]))
    deps = sorted(list(set(deps)))

    out = open(path, "w")

    for d in deps:
        out.write(f"Require Import {d}.\n")

    out.write("\n")

    L = proj.layers[i]

    # Open Scope
    out.write("Local Open Scope string_scope.\n")
    out.write("Local Open Scope Z_scope.\n")
    out.write("Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.\n")
    out.write("\n")

    out.write(f"Section {layer}_{fname}_RefProof.\n")
    out.write("\n")
    out.write("  Context `{int_ptr: IntPtrCast}.\n")
    out.write("\n")
    '''
    mid specs
    '''
    for s in mid_syms:
        if proj.symbols[s]["kind"] == "def":
            out.write(add_indent(str(proj.defs[s]), 2) + "\n\n")
            out.write(f"  Hint Unfold {s}: spec.\n\n")

    '''
    Refine Proof 
    '''
    spec = proj.defs[f"{fname}_spec"]
    vars = []
    call_param = []
    for arg in spec.args[:-1]:
        aname = to_coq_name(arg.name)
        vars.append(aname)
        call_param.append(aname)
    vars += ["lst", "hst", "hst'"]

    if len(syms) > 1:
        loop_spec = proj.defs[f"{fname}_loop"]
        loop_vars = []
        loop_call_param = []
        loop_ret_args = []
        for arg in loop_spec.args[:-1]:
            aname = to_coq_name(arg.name)
            loop_vars.append(aname)
            loop_call_param.append(aname)
            if arg != loop_spec.args[0]:
                loop_vars.append(aname + "'")
                loop_ret_args.append(aname + "'")
        loop_vars += ["lst", "hst", "hst'"]
        loop_ret = lambda s: f"Some ({', '.join(loop_ret_args + [s])})"

    if isinstance(spec.rettype, Option) and isinstance(spec.rettype.elem_type, Tuple):
        vars += ["res"]
        call_ret = lambda s: f"Some (res, {s})"
    else:
        call_ret = lambda s: f"Some {s}"

    if len(mid_syms) > 0:
        if len(syms) > 1:
            out.write(f"  Lemma f_{fname}_loop_refine_mid:\n")
            out.write(f"    forall {' '.join(loop_vars)}\n")
            out.write(f"           (Hrel: refrel hst lst)\n")
            out.write(f"           (Hspec: {fname}_loop_mid {' '.join(loop_call_param + ['hst'])} = " + loop_ret("hst'") + "),\n")
            out.write(f"      exists lst', {fname}_loop_low {' '.join(loop_call_param + ['lst'])} = " + loop_ret("lst'") + " /\ refrel hst' lst'.\n")
            out.write(f"    Proof.\n")
            out.write(f"      intros; inv Hrel.\n")
            out.write(f"      autounfold with spec in *; autounfold with sem in *; simpl in *.\n")
            out.write(f"      destruct_spec Hspec; repeat solve_refproof;\n")
            out.write(f"        repeat eexists; try unfold refrel; solve_equality.\n")
            out.write(f"    Qed.\n\n")

        out.write(f"  Lemma f_{fname}_refine_mid:\n")
        out.write(f"    forall {' '.join(vars)}\n")
        out.write(f"           (Hrel: refrel hst lst)\n")
        out.write(f"           (Hspec: {fname}_spec_mid {' '.join(call_param + ['hst'])} = " + call_ret("hst'") + "),\n")
        out.write(f"      exists lst', {fname}_spec_low {' '.join(call_param + ['lst'])} = " + call_ret("lst'") + " /\ refrel hst' lst'.\n")
        out.write(f"    Proof.\n")
        out.write(f"      intros; inv Hrel.\n")
        out.write(f"      autounfold with spec in *; autounfold with sem in *; simpl in *.\n")
        out.write(f"      destruct_spec Hspec; repeat solve_refproof;\n")
        out.write(f"        repeat eexists; try unfold refrel; solve_equality.\n")
        out.write(f"    Qed.\n\n")

        if len(syms) > 1:
            out.write(f"  Lemma f_{fname}_loop_refine_high:\n")
            out.write(f"    forall {' '.join(loop_vars)}\n")
            out.write(f"           (Hrel: refrel hst lst)\n")
            out.write(f"           (Hspec: {fname}_loop {' '.join(loop_call_param + ['hst'])} = " + loop_ret("hst'") + "),\n")
            out.write(f"      exists lst', {fname}_loop_mid {' '.join(loop_call_param + ['lst'])} = " + loop_ret("lst'") + " /\ refrel hst' lst'.\n")
            out.write(f"    Proof.\n")
            out.write(f"      intros; inv Hrel.\n")
            out.write(f"      autounfold with spec in *; autounfold with sem in *; simpl in *.\n")
            out.write(f"      destruct_spec Hspec; repeat solve_refproof;\n")
            out.write(f"        repeat eexists; try unfold refrel; solve_equality.\n")
            out.write(f"    Qed.\n\n")

        out.write(f"  Lemma f_{fname}_refine_high:\n")
        out.write(f"    forall {' '.join(vars)}\n")
        out.write(f"           (Hrel: refrel hst lst)\n")
        out.write(f"           (Hspec: {fname}_spec {' '.join(call_param + ['hst'])} = " + call_ret("hst'") + "),\n")
        out.write(f"      exists lst', {fname}_spec_mid {' '.join(call_param + ['lst'])} = " + call_ret("lst'") + " /\ refrel hst' lst'.\n")
        out.write(f"    Proof.\n")
        if (fname + "_spec") in proj.cmds["NoUnfold"]:
            out.write(f"      Local Transparent {fname}_spec.\n")
            out.write(f"      unfold {fname}_spec.\n")
        out.write(f"      intros; inv Hrel.\n")
        out.write(f"      autounfold with spec in *; autounfold with sem in *; simpl in *.\n")
        out.write(f"      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);\n")
        out.write(f"        repeat eexists; try unfold refrel; solve_equality.\n")
        out.write(f"    Qed.\n\n")

        out.write(f"  Lemma f_{fname}_refine:\n")
        out.write(f"    forall {' '.join(vars)}\n")
        out.write(f"           (Hrel: refrel hst lst)\n")
        out.write(f"           (Hspec: {fname}_spec {' '.join(call_param + ['hst'])} = " + call_ret("hst'") + "),\n")
        out.write(f"      exists lst', {fname}_spec_low {' '.join(call_param + ['lst'])} = " + call_ret("lst'") + " /\ refrel hst' lst'.\n")
        out.write(f"    Proof.\n")
        if (fname + "_spec") in proj.cmds["NoUnfold"]:
            out.write(f"      Local Transparent {fname}_spec.\n")
            out.write(f"      unfold {fname}_spec.\n")
        out.write(f"      intros; inv Hrel.\n")
        out.write(f"      eapply f_{fname}_refine_high in Hspec; try unfold refrel; try reflexivity.\n")
        out.write(f"      destruct Hspec as (lst' & Hspec & Hrel).\n")
        out.write(f"      inv Hrel; try unfold refrel; try reflexivity.\n")
        out.write(f"      eapply f_{fname}_refine_mid; try unfold refrel; try reflexivity; try eassumption.\n")
        out.write(f"    Qed.\n\n")
    else:
        out.write(f"  Lemma f_{fname}_refine:\n")
        out.write(f"    forall {' '.join(vars)}\n")
        out.write(f"           (Hrel: refrel hst lst)\n")
        out.write(f"           (Hspec: {fname}_spec {' '.join(call_param + ['hst'])} = " + call_ret("hst'") + "),\n")
        out.write(f"      exists lst', {fname}_spec_low {' '.join(call_param + ['lst'])} = " + call_ret("lst'") + " /\ refrel hst' lst'.\n")
        out.write(f"    Proof.\n")
        if (fname + "_spec") in proj.cmds["NoUnfold"]:
            out.write(f"      Local Transparent {fname}_spec.\n")
            out.write(f"      unfold {fname}_spec.\n")
        out.write(f"      intros; inv Hrel.\n")
        out.write(f"      autounfold with spec in *; autounfold with sem in *; simpl in *.\n")
        out.write(f"      destruct_spec Hspec; repeat solve_refproof;\n")
        out.write(f"        repeat eexists; try unfold refrel; solve_equality.\n")
        out.write(f"    Qed.\n\n")

    out.write(f"End {layer}_{fname}_RefProof.\n\n")

    out.close()


def generate_high_proof(proj):
    files = []
    for i, L in enumerate(proj.layers):
        if i == 0: continue
        if not os.path.exists(os.path.join(proj.base, L.name)):
            os.mkdir(os.path.join(proj.base, L.name))
        for p in L.prims:
            if not os.path.exists(os.path.join(proj.base, L.name, p)):
                os.mkdir(os.path.join(proj.base, L.name, p))
            gen_high_proof(proj, i, p, os.path.join(proj.base, L.name, p, "RefProof.v"))
            if os.path.exists(os.path.join(proj.base, L.name, p, "RefProof.v")):
                files.append(os.path.join(L.name, p, "RefProof.v"))
    return files
