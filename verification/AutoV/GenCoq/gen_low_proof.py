import sys
import os
from AutoV.utils import *
from AutoV.Spec.ir2spec import ir_to_spec


def gen_loop_proof(proj, base_layer, fname, out):
    spec = proj.defs[f"{fname}_spec_low"]
    loop = proj.defs[f"{fname}_loop_low"]
    rank = proj.defs[f"{fname}_loop_rank"]
    code = proj.code.functions[fname]

    vars_before_loop = []
    loop_inst = None
    for arg in code.args:
        vars_before_loop.append(arg.name)
    def get_vars_before_loop(insts):
        nonlocal vars_before_loop, loop_inst
        found_loop = False
        for i in reversed(insts):
            if isinstance(i, IIf):
                if get_vars_before_loop(i.true_body):
                    found_loop = True
                else:
                    if get_vars_before_loop(i.false_body):
                        found_loop = True
            elif isinstance(i, ILoop):
                found_loop = True
                loop_inst = i
            if found_loop and hasattr(i, "assign"):
                vars_before_loop.append(i.assign)
        return found_loop
    get_vars_before_loop(code.body)

    n_args = len(loop_inst.loop_args)
    n_inputs = len(loop_inst.input)

    args1 = [f"_a{i}" for i in range(n_args)] + ["_st"]
    args1_map = {loop.args[i+1].name: args1[i] for i in range(n_args)}
    args1_input = [args1_map[a] for a in loop_inst.input]

    args1_q = [f"?_a{i}" for i in range(n_args)] + ["?_st"]
    args1_q_map = {loop.args[i+1].name: args1_q[i] for i in range(n_args)}
    args1_q_input = [args1_q_map[a] for a in loop_inst.input]

    args2 = [f"_a{i}'" for i in range(n_args)] + ["_st'"]
    args2_map = {loop.args[i+1].name: args2[i] for i in range(n_args)}
    args2_input = [args2_map[a] for a in loop_inst.input]

    args2_q = [f"?_a{i}'" for i in range(n_args)] + ["?_st'"]
    args2_q_map = {loop.args[i+1].name: args2_q[i] for i in range(n_args)}
    args2_q_input = [args2_q_map[a] for a in loop_inst.input]

    args3 = [f"_a{i}''" for i in range(n_args)] + ["_st''"]
    args3_map = {loop.args[i+1].name: args3[i] for i in range(n_args)}
    args3_input = [args3_map[a] for a in loop_inst.input]

    out.write(f"    Proof.\n")
    out.write(f"      intros; simpl_func Hspec; simpl in *; try solve[try_solve];\n")
    out.write(f"        try solve[ eapply exec_func_call; try reflexivity; vcgen].\n")
    out.write(f"      remember (fbody Code.f_{fname}) as fcode eqn:Hc; simpl in Hc;\n")
    out.write(f"        match type of Hc with\n")
    out.write(f"        | context[ILoop ?body] => remember body as LoopBody eqn:Cloop; clear Hc\n")
    out.write(f"        end.\n")
    out.write(f"      match goal with\n")
    out.write(f"      | [H: {fname}_loop_low ?n {' '.join(args1_q)} =\n")
    out.write(f"          Some ({', '.join(args2_q)}) |- _] =>\n")
    out.write(f"          rename H into Hfinal;\n")
    out.write(f"          assert(HLoop: forall te,\n")
    for arg in loop_inst.input:
        out.write(f"                  gets \"{arg}\" te = Some (VInt {args1_map[arg]}) ->\n")
    out.write(f"                  (forall s, inlist s (" + "::".join([f'"{v}"' for v in vars_before_loop] + ["nil"]) + ") = false -> gets s te = None) ->\n")
    out.write(f"                  exec {base_layer}_layer code (ILoop LoopBody :: nil) te _st\n")
    for arg in loop_inst.loop_args:
        out.write(f"                      (sets \"{arg}\" (VInt {args2_map[arg]})\n")
    out.write(f"                          te{')'*n_args} out_normal _st')\n")
    out.write(f"      end.\n")
    out.write( "      {\n")
    out.write(f"        intros te {'? '*n_inputs}te_all.\n")
    out.write(f"        unfold {fname}_loop_rank in *.\n")
    out.write(f"        match goal with\n")
    out.write(f"        | [H: {fname}_loop_low (z_to_nat ?n) {' '.join(args1_q)} =\n")
    out.write(f"                Some ({', '.join(args2_q)}) |-\n")
    out.write(f"            exec _ _ (_ :: nil) ?te ?st ?te' ?out ?st'] =>\n")
    out.write(f"            remember n as W0 eqn:HW0;\n")
    out.write(f"            set(P := fun t s => t = te /\ s = st);\n")
    out.write(f"            set(Q := fun t s =>  (forall s' v, gets s' te' = Some v -> gets s' t = Some v) /\ s = st');\n")
    out.write(f"            set(R := fun (_: temp_env) (_: RData) (_: option value) => False);\n")
    out.write(f"            set(Inv := fun t s w => exists {' '.join(args3)},\n")
    out.write(f"                        {fname}_loop_low (z_to_nat (W0 - w)) {' '.join(args1)} = Some ({', '.join(args3)})\n")
    out.write(f"                        /\ ({fname}_loop_rank {' '.join(args3_input)}) = w\n")
    out.write(f"                        /\ 0 < w <= W0\n")
    out.write(f"                        /\ s = _st''\n")
    out.write(f"                        /\ (forall p v, gets p\n")
    for arg in loop_inst.input:
        out.write(f"                                        (sets \"{arg}\" (VInt {args3_map[arg]})\n")
    out.write(f"                                                    te{')'*n_inputs} = Some v -> gets p t = Some v));\n")
    out.write(f"            assert(loop_succ: forall W, Z.of_nat W <= W0 -> exists {' '.join(args3)},\n")
    out.write(f"                    {fname}_loop_low (z_to_nat (W0 - Z.of_nat W)) {' '.join(args1)} =\n")
    out.write(f"                    Some ({', '.join(args3)}))\n")
    out.write(f"        end.\n")
    out.write( "        { induction W. rewrite Z.sub_0_r. repeat frewrite. intros. repeat eexists; reflexivity.\n")
    out.write( "        intros. erewrite loop_ind_sub1 in IHW; try lia.\n")
    out.write( "        rewrite Nat2Z.inj_succ, succ_plus_1 in *.\n")
    out.write( "        assert(Hcc: Z.of_nat W <= W0) by lia.\n")
    out.write(f"        exploit IHW. lia. unfold z_to_nat. intros ({'? & '*(n_args+1)}Hnext).\n")
    out.write( "        simpl in Hnext. repeat simpl_hyp Hnext; repeat eexists. }\n")
    out.write( "\n")
    out.write(f"        assert(HLoop: Loop {base_layer}_layer code LoopBody P Q R).\n")
    out.write( "        {\n")
    out.write(f"          apply mkLoop with (W:=Z) (lt:=fun z1 z2 => (1 <= z2 /\ z1 < z2)) (I:=Inv).\n")
    out.write(f"          - apply Zwf_well_founded.\n")
    out.write(f"          - unfold P, Inv. intros ? ? (CC1 & CC2).\n")
    out.write(f"            exists W0. replace (W0 - W0) with 0 by lia. simpl.\n")
    out.write(f"            subst; repeat eexists; try solve[unfold {fname}_loop_rank in *; simpl; try_solve].\n")
    out.write(f"            intros ? ? Hte'; repeat simpl_hyp Hte'; inv Hte';\n")
    out.write(f"            try match goal with | [H: (?p =? ?t)%string = true |- _] => apply String.eqb_eq in H end;\n")
    out.write(f"            subst; try assumption; try reflexivity.\n")
    out.write(f"          - intros te0 st0 W I. unfold Inv in I.\n")
    out.write(f"            destruct I as ({'? & '*(n_args+1)}Hnow & Hid & ? & ? & Hte').\n")
    out.write(f"            unfold {fname}_loop_rank in *.\n")
    out.write(f"            assert(W1: W >= 1) by lia.\n")
    out.write(f"            assert(Hlx: Z.of_nat (Z.to_nat (W-1)) <= W0) by (rewrite Z2Nat.id; lia).\n")
    out.write(f"            apply loop_succ in Hlx. rewrite Z2Nat.id in Hlx; try lia.\n")
    out.write(f"            destruct Hlx as ({'? & '*(n_args+1)}Hnext). pose proof Hnext as D.\n")
    out.write(f"            rewrite loop_nat_sub1 in D; try lia. unfold z_to_nat in *.\n")
    out.write(f"            simpl in D; rewrite Hnow in D; autounfold with sem in D.\n")
    out.write(f"            destruct_spec D; try solve[lia]; solve_loop_body te te_all Hte' Hnext Hfinal Inv Q.\n")
    out.write( "        }\n")
    out.write(f"        match goal with\n")
    out.write(f"        | [H: {fname}_loop_low ?n {' '.join(args1_q)} =\n")
    out.write(f"            Some ({', '.join(args2_q)}) |- _] =>\n")
    out.write(f"          assert(Pre: P te _st) by (split; auto);\n")
    out.write(f"          pose proof (LoopTermination _ _ _ _ _ _ HLoop te _st Pre) as LoopProof\n")
    out.write(f"        end.\n")
    out.write(f"        destruct LoopProof as (out & te0 & st0 & Hexec & Hout).\n")
    out.write(f"        destruct Hout as [(? & ? & Hout)|(? & Hout)]; [inv Hout|unfold Q in Hout; destruct Hout as (Hte0 & Hst0)].\n")
    out.write(f"        subst. eapply exec_drop_tempvar. eapply Hte0. eassumption.\n")
    out.write( "      }\n")
    out.write(f"      subst.\n")
    out.write(f"      eapply exec_func_call; try reflexivity; vcgen;\n")
    out.write(f"        try eapply HLoop; try reflexivity; simpl; intros;\n")
    out.write(f"        repeat match goal with\n")
    out.write(f"        | H: context[if (?s =? ?v)%string then _ else _] |- _ =>\n")
    out.write(f"            let Hs := fresh \"Hs\" in\n")
    out.write(f"            let Hss := fresh \"Hss\" in\n")
    out.write(f"            destruct (s =? v)%string eqn:Hs; simpl in *; try solve[inv H]\n")
    out.write(f"        end; contra; vcgen.\n")
    out.write(f"    Qed.\n\n")


def gen_low_proof_func(proj, i, fname, path):

    layer = proj.layers[i].name
    base_layer = proj.layers[i-1].name
    func = proj.code.functions[fname]

    loc = (layer, fname, "LowSpec")

    syms = [s for s in proj.symbols if proj.symbols[s]["loc"] == loc]

    # Require Import
    deps = ['CommonDeps', 'Code', 'DataTypes', 'GlobalDefs', 'Zwf',
            f'{layer}.{fname}.LowSpec', f'{base_layer}.Layer']
    dep_defs = set()
    for s in syms:
        if not s in proj.deps: continue
        for d in proj.deps[s]:
            if proj.symbols[d]["loc"] is None: continue
            dep_defs.add(d)
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

    out.write(f"Section {layer}_{fname}_CodeProof.\n")
    out.write("\n")
    out.write("  Context `{int_ptr: IntPtrCast}.\n")
    out.write("\n")
    for d in dep_defs:
        if d.startswith(f"{fname}_loop"): continue
        out.write(f"  Local Opaque {d}.\n")
    out.write("\n")

    # Code Proof
    vars = []
    call_param = []
    call_ret = ""
    code_param = []
    code_ret = []
    for arg in func.args:
        aname = to_coq_name(arg.name)
        vars.append(aname)
        call_param.append(aname)
        if isinstance(arg.typ, TInt):
            code_param.append(f"VInt {aname}")
        elif isinstance(arg.typ, TBool):
            code_param.append(f"VBool {aname}")
        elif isinstance(arg.typ, TPtr):
            code_param.append(f"VPtr {aname}")
    vars += ["st", "st'"]
    call_param.append("st")

    if isinstance(func.rettype, TVoid):
        call_ret = "Some st'"
        code_ret = "None"
    elif isinstance(func.rettype, TInt):
        vars.append("res")
        call_ret = "Some (res, st')"
        code_ret = "(Some (VInt res))"
    elif isinstance(func.rettype, TBool):
        vars.append("res")
        call_ret = "Some (res, st')"
        code_ret = "(Some (VBool res))"
    elif isinstance(func.rettype, TPtr):
        vars.append("res")
        call_ret = "Some (res, st')"
        code_ret = "(Some (VPtr res))"

    out.write(f"    Lemma f_{fname}_correct:\n")
    out.write(f"      forall {' '.join(vars)}\n")
    out.write(f"             (Hspec: {fname}_spec_low {' '.join(call_param)} = {call_ret}),\n")
    out.write(f"        exec_func {base_layer}_layer code \"{fname}\"\n")
    out.write(f"                  [{'; '.join(code_param)}]\n")
    out.write(f"                  st st' {code_ret}.\n")
    if len(syms) == 1:
        out.write(f"    Proof.\n")
        out.write("       intros; simpl_func Hspec; simpl in *;\n")
        out.write("         eapply exec_func_call; try reflexivity; vcgen.\n")
        out.write(f"    Qed.\n\n")
    else:
        gen_loop_proof(proj, base_layer, fname, out)

    out.write(f"End {layer}_{fname}_CodeProof.\n\n")

    out.close()

def gen_low_proof_proc(proj, i, fname, path):

    layer = proj.layers[i].name
    base_layer = proj.layers[i-1].name
    proc = proj.code.asm_procs[fname]

    loc = (layer, fname, "LowSpec")

    syms = [s for s in proj.symbols if proj.symbols[s]["loc"] == loc]

    out = open(path, "w")

    # Require Import
    deps = ['CommonDeps', 'Code', 'DataTypes', 'GlobalDefs', 
            f'{layer}.{fname}.LowSpec', f'{base_layer}.Layer']
    dep_defs = set()
    for s in syms:
        if not s in proj.deps: continue
        for d in proj.deps[s]:
            dep_defs.add(d)
            if proj.symbols[d]["loc"] is None: continue
            deps.append(".".join(proj.symbols[d]["loc"]))
    deps = sorted(list(set(deps)))

    for d in deps:
        out.write(f"Require Import {d}.\n")

    out.write("\n")

    L = proj.layers[i]

    # Open Scope
    out.write("Local Open Scope string_scope.\n")
    out.write("Local Open Scope Z_scope.\n")
    out.write("Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.\n")
    out.write("\n")

    out.write(f"Section {layer}_{fname}_CodeProof.\n")
    out.write("\n")
    out.write("  Context `{int_ptr: IntPtrCast}.\n")
    out.write("\n")

    # Code Proof
    spec = proj.defs[proc.name + "_spec_low"]
    vars = []
    call_param = []
    call_ret = ""
    Hprep = None
    Hret = None
    if len(spec.args) == 2:
        vars += ["st0", spec.args[0].name] 
        call_param = [spec.args[0].name, "st"]
        Hprep = f"(Harg: {base_layer}_layer.(SetReg) (Rx0 SZ32) {spec.args[0].name} st0 = Some st)"
        st_init = "st"
    else:
        call_param = ["st"]
        st_init = "st"

    vars += ["st", "st'"]

    if spec.rettype.name.startswith("Option_Tuple"):
        vars += ["res"]
        vars += ["st''"]
        call_ret = "Some (res, st')"
        Hret = f"(Hret: {base_layer}_layer.(SetReg) (Rx0 SZ32) res st' = Some st'')"
        st_final = "st''"
    else:
        call_ret = "Some st'"
        st_final = "st'"

    out.write(f"    Lemma f_{fname}_correct:\n")
    out.write(f"      forall {' '.join(vars)}\n")
    if Hprep is not None: out.write(f"             {Hprep}\n")
    out.write(f"             (Hspec: {fname}_spec_low {' '.join(call_param)} = {call_ret})")
    if Hret is not None: out.write(f"\n             {Hret}")
    out.write(",\n")
    out.write(f"         exec_proc {base_layer}_layer code \"{fname}\" {st_init} {st_final}.\n")
    out.write(f"    Proof.\n")
    out.write("      solve_single_mrs_msr Hspec.\n")
    out.write(f"    Qed.\n\n")

    out.write(f"End {layer}_{fname}_CodeProof.\n\n")

    out.close()



def generate_low_proof(proj):
    files = []
    for i, L in enumerate(proj.layers):
        if i == 0: continue
        if not os.path.exists(os.path.join(proj.base, L.name)):
            os.mkdir(os.path.join(proj.base, L.name))
        for p in L.prims:
            if not os.path.exists(os.path.join(proj.base, L.name, p)):
                os.mkdir(os.path.join(proj.base, L.name, p))
            if p in proj.code.functions:
                gen_low_proof_func(proj, i, p, os.path.join(proj.base, L.name, p, "CodeProof.v"))
            else:
                gen_low_proof_proc(proj, i, p, os.path.join(proj.base, L.name, p, "CodeProof.v"))
            if os.path.exists(os.path.join(proj.base, L.name, p, "CodeProof.v")):
                files.append(os.path.join(L.name, p, "CodeProof.v"))
    return files
