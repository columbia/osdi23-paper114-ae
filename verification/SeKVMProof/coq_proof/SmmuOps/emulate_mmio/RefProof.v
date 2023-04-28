Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuOps.Layer.
Require Import SmmuOps.RefineRel.
Require Import SmmuOps.Spec.
Require Import SmmuOps.emulate_mmio.LowSpec.
Require Import SmmuOpsAux.Layer.
Require Import SmmuOpsAux.Spec.
Require Import SmmuReadWrite.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuOps_emulate_mmio_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition emulate_mmio_spec_mid (v_addr: Z) (v_hsr: Z) (st: RData) : (option (Z * RData)) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMU_LOCK) = None));
    if (((st_2.(priv)).(e_el2_smmu_num)) =? 0)
    then (
      (anno (((- 1) = (- 1)));
      (anno ((((- 1) - (- 1)) = 0));
      (Some (
        (- 1)  ,
        ((st_2.[log] :< ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_2.(shared)).(e_smmu_vmid))))) :: ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # SMMU_LOCK == None))
      )))))
    else (
      rely ((((st_2.(priv)).(e_el2_smmu_num)) >= 0));
      (anno (((- 1) = (- 1)));
      match (
        (is_smmu_range_loop
          (z_to_nat ((st_2.(priv)).(e_el2_smmu_num))) 
          v_addr 
          0 
          (- 1) 
          0 
          ((st_2.(priv)).(e_el2_smmu_num)) 
          ((st_2.[log] :< ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # SMMU_LOCK == (Some CPU_ID))))
      ) with
      | (Some (v_addr_1, v_indvars_iv_0, v_res_19, v_res_0_lcssa_0, v_wide_trip_count_0, st_3)) =>
        if (v_res_0_lcssa_0 =? (- 1))
        then (
          rely (((((st_3.(shared)).(e_locks)) @ SMMU_LOCK) = (Some CPU_ID)));
          (Some (
            v_res_0_lcssa_0  ,
            ((st_3.[log] :< ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_3.(shared)).(e_smmu_vmid))))) :: (st_3.(log)))).[shared].[e_locks] :<
              (((st_3.(shared)).(e_locks)) # SMMU_LOCK == None))
          )))
        else (
          rely ((((0 - v_res_0_lcssa_0) <= 0) /\ (v_res_0_lcssa_0 < 2)));
          if (_host_dabt_is_write v_hsr)
          then (
            when st_4 == (
                (handle_smmu_write_spec
                  v_hsr 
                  ((((((st_3.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) |' ((((st_3.(priv)).(e_smmus)) @ v_res_0_lcssa_0).(e_hyp_base))) 
                  (_host_dabt_get_as v_hsr) 
                  v_res_0_lcssa_0 
                  st_3));
            rely (((((st_4.(shared)).(e_locks)) @ SMMU_LOCK) = (Some CPU_ID)));
            (Some (
              v_res_0_lcssa_0  ,
              (((st_4.[log] :< ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_4.(shared)).(e_smmu_vmid))))) :: (st_4.(log)))).[priv].[e_cpu_regs].[e_sysregs_el2] :<
                ((((st_4.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # ELR_EL2 == (((((st_4.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ELR_EL2) + 4))).[shared].[e_locks] :<
                (((st_4.(shared)).(e_locks)) # SMMU_LOCK == None))
            )))
          else (
            rely ((((_host_dabt_get_as v_hsr) = 8) \/ ((_host_dabt_get_as v_hsr) = 4)));
            rely (((((st_3.(shared)).(e_locks)) @ SMMU_LOCK) = (Some CPU_ID)));
            (Some (
              v_res_0_lcssa_0  ,
              ((((st_3.[log] :< ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_3.(shared)).(e_smmu_vmid))))) :: (st_3.(log)))).[priv].[e_cpu_regs].[e_sysregs_el2] :<
                ((((st_3.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # ELR_EL2 == (((((st_3.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ELR_EL2) + 4))).[priv].[e_host_ctxt] :<
                (((st_3.(priv)).(e_host_ctxt)) #
                  (_host_dabt_get_rd v_hsr) ==
                  (((st_3.(priv)).(e_umem)) @ ((((((st_3.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) |' ((((st_3.(priv)).(e_smmus)) @ v_res_0_lcssa_0).(e_hyp_base)))))).[shared].[e_locks] :<
                (((st_3.(shared)).(e_locks)) # SMMU_LOCK == None))
            ))))
      | None => None
      end)).

  Hint Unfold emulate_mmio_spec_mid: spec.

  Lemma f_emulate_mmio_refine_mid:
    forall v_addr v_hsr lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: emulate_mmio_spec_mid v_addr v_hsr hst = Some (res, hst')),
      exists lst', emulate_mmio_spec_low v_addr v_hsr lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_emulate_mmio_refine_high:
    forall v_addr v_hsr lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: emulate_mmio_spec v_addr v_hsr hst = Some (res, hst')),
      exists lst', emulate_mmio_spec_mid v_addr v_hsr lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      Local Transparent emulate_mmio_spec.
      unfold emulate_mmio_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_emulate_mmio_refine:
    forall v_addr v_hsr lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: emulate_mmio_spec v_addr v_hsr hst = Some (res, hst')),
      exists lst', emulate_mmio_spec_low v_addr v_hsr lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      Local Transparent emulate_mmio_spec.
      unfold emulate_mmio_spec.
      intros; inv Hrel.
      eapply f_emulate_mmio_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_emulate_mmio_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuOps_emulate_mmio_RefProof.

