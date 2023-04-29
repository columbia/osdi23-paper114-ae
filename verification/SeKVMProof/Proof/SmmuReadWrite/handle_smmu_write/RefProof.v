Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Spec.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import SmmuAccess.Layer.
Require Import SmmuAccess.Spec.
Require Import SmmuReadWrite.Layer.
Require Import SmmuReadWrite.RefineRel.
Require Import SmmuReadWrite.Spec.
Require Import SmmuReadWrite.handle_smmu_write.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuReadWrite_handle_smmu_write_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_smmu_write_spec_mid (v_hsr: Z) (v_fault_ipa: Z) (v_len: Z) (v_index: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 2)));
    (anno (((((((st.(priv)).(e_smmus)) @ v_index).(e___size)) >> 1) = (((((st.(priv)).(e_smmus)) @ v_index).(e___size)) / 2)));
    if (((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) - (((((st.(priv)).(e_smmus)) @ v_index).(e___size)) / 2)) <? 0)
    then (
      if ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) <? 4096)
      then (
        if ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) =? 8)
        then (
          if (((((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)) & 255) =? 0)
          then (
            rely (((v_len = 8) \/ (v_len = 4)));
            (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr))))))
          else (
            (anno (((0 - 0) = 0));
            None)))
        else (
          if ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) =? 0)
          then (
            if ((((((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)) >> 21) & 1) =? 0)
            then None
            else (
              rely (((v_len = 8) \/ (v_len = 4)));
              (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)))))))
          else (
            rely (((v_len = 8) \/ (v_len = 4)));
            (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr))))))))
      else (
        rely ((((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) <? 6144) = false));
        rely (((v_len = 8) \/ (v_len = 4)));
        (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)))))))
    else (
      if (((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) & 4095) =? 48)
      then (
        (anno (((3 - 3) = 0));
        rely (((v_len = 8) \/ (v_len = 4)));
        (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)))))))
      else (
        if (((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) & 4095) =? 32)
        then (
          (anno (((2 - 2) = 0));
          rely (
            (((0 - ((8 * v_index) + (4503599627370488 + ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) / 4096)))) <= 0) /\
              (((8 * v_index) + (4503599627370488 + ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) / 4096))) < 16)));
          rely (((v_len = 8) \/ (v_len = 4)));
          (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)))))))
        else (
          if (((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) & 4095) =? 52)
          then (
            (anno (((0 - 0) = 0));
            None))
          else (
            rely (((v_len = 8) \/ (v_len = 4)));
            (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)))))))))).

  Hint Unfold handle_smmu_write_spec_mid: spec.

  Lemma f_handle_smmu_write_refine_mid:
    forall v_hsr v_fault_ipa v_len v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_smmu_write_spec_mid v_hsr v_fault_ipa v_len v_index hst = Some hst'),
      exists lst', handle_smmu_write_spec_low v_hsr v_fault_ipa v_len v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_smmu_write_refine_high:
    forall v_hsr v_fault_ipa v_len v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_smmu_write_spec v_hsr v_fault_ipa v_len v_index hst = Some hst'),
      exists lst', handle_smmu_write_spec_mid v_hsr v_fault_ipa v_len v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent handle_smmu_write_spec.
      unfold handle_smmu_write_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_smmu_write_refine:
    forall v_hsr v_fault_ipa v_len v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_smmu_write_spec v_hsr v_fault_ipa v_len v_index hst = Some hst'),
      exists lst', handle_smmu_write_spec_low v_hsr v_fault_ipa v_len v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent handle_smmu_write_spec.
      unfold handle_smmu_write_spec.
      intros; inv Hrel.
      eapply f_handle_smmu_write_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_handle_smmu_write_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuReadWrite_handle_smmu_write_RefProof.

