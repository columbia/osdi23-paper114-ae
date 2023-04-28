Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import SmmuOps.Layer.
Require Import VCPUOpsAux.Layer.
Require Import VCPUOpsAux.RefineRel.
Require Import VCPUOpsAux.Spec.
Require Import VCPUOpsAux.reset_gp_regs.LowSpec.
Require Import VMOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUOpsAux_reset_gp_regs_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition reset_gp_regs_spec_mid (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) =? 0)
    then (
      (anno (((0 - 0) = 0));
      None))
    else (
      rely ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) >= 0));
      match (
        (v_search_load_info_loop
          (z_to_nat ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))) 
          ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e_pc)) 
          ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) 
          0 
          0 
          0 
          v_vmid 
          ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID))))
      ) with
      | (Some (v_addr_0, v_call_0, v_load_idx_30, v_ret_29, v_ret_0_lcssa_0, v_vmid_1, st_3)) =>
        rely (((((st_3.(shared)).(e_locks)) @ (5 + v_vmid_1)) = (Some CPU_ID)));
        if (v_ret_0_lcssa_0 =? 0)
        then None
        else (
          (anno (((v_vcpuid - VCPU_PER_VM) = ((- 4) + v_vcpuid)));
          rely ((((0 - v_vcpuid) <= 0) /\ (((- 4) + v_vcpuid) < 0)));
          (anno (((0 - 33) = (- 33)));
          (anno (((0 - 32) = (- 32)));
          (anno (((v_vmid * VCPU_PER_VM) = (4 * v_vmid)));
          (Some (((st_3.[log] :< ((EVT CPU_ID (REL (5 + v_vmid_1) (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ v_vmid_1)))) :: (st_3.(log)))).[priv].[e_shadow_ctxts] :<
            (((st_3.(priv)).(e_shadow_ctxts)) #
              ((4 * v_vmid) + v_vcpuid) ==
              (((((st_3.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_fp_regs] :<
                (((((st_3.(priv)).(e_host_cpus)) @ ((4 * v_vmid) + v_vcpuid)).(e_gp_regs)).(e__fp_regs))).[e_regs] :<
                (((zmap_init 0) # 33 == ((((((((st_3.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e_pstate))) #
                  32 ==
                  ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e_pc)))))).[shared].[e_locks] :<
            (((st_3.(shared)).(e_locks)) # (5 + v_vmid_1) == None))))))))
      | None => None
      end).

  Hint Unfold reset_gp_regs_spec_mid: spec.

  Lemma search_loop:
    forall n a b c d e vmid g a' b' c' d' e' vmid' g',
      v_search_load_info_loop n a b c d e vmid g = Some (a', b', c', d', e', vmid', g') ->
      vmid' = vmid.
  Proof.
    induction n. simpl. intros. inv H. reflexivity.
    simpl. intros. simpl_hyp H. repeat destruct p. eapply IHn in C. subst.
    autounfold with sem in *. destruct_spec H; reflexivity.
  Qed.

  Local Opaque v_search_load_info_loop.

  Lemma f_reset_gp_regs_refine_mid:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: reset_gp_regs_spec_mid v_vmid v_vcpuid hst = Some hst'),
      exists lst', reset_gp_regs_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec. exploit search_loop. eassumption. intro T. subst.
      repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_reset_gp_regs_refine_high:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: reset_gp_regs_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', reset_gp_regs_spec_mid v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_reset_gp_regs_refine:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: reset_gp_regs_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', reset_gp_regs_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_reset_gp_regs_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_reset_gp_regs_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VCPUOpsAux_reset_gp_regs_RefProof.

