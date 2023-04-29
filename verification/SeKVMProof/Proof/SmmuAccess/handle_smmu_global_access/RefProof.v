Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import SmmuAccess.Layer.
Require Import SmmuAccess.RefineRel.
Require Import SmmuAccess.Spec.
Require Import SmmuAccess.handle_smmu_global_access.LowSpec.
Require Import SmmuMemOps.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuAccess_handle_smmu_global_access_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_smmu_global_access_spec_mid (v_hsr: Z) (v_offset: Z) (v_smmu_index: Z) (st: RData) : (option (Z * RData)) :=
    if (v_offset <? 4096)
    then (
      if (v_offset =? 8)
      then (
        if (((((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)) & 255) =? 0)
        then (Some (1, st))
        else (Some (0, st)))
      else (
        if (v_offset =? 0)
        then (Some ((((((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)) >> 21) & 1), st))
        else (Some (1, st))))
    else (
      if (v_offset <? 6144)
      then (
        (anno ((((v_offset + 17179865088) >> 2) = (4294966272 + (v_offset / 4))));
        rely ((((0 - ((8 * v_smmu_index) + (4294966272 + (v_offset / 4)))) <= 0) /\ (((8 * v_smmu_index) + (4294966272 + (v_offset / 4))) < 16)));
        rely (((((st.(shared)).(e_locks)) @ SMMU_LOCK) = (Some CPU_ID)));
        (anno ((((v_offset + 17179865088) >> 2) = (4294966272 + (v_offset / 4))));
        if ((((st.(shared)).(e_smmu_vmid)) @ ((8 * v_smmu_index) + (4294966272 + (v_offset / 4)))) =? 0)
        then (Some (1, st))
        else (
          if ((((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)) <? 65536)
          then (
            (anno ((((v_offset + 17179865088) >> 2) = (4294966272 + (v_offset / 4))));
            if ((((((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)) & 255) - (((st.(shared)).(e_smmu_vmid)) @ ((8 * v_smmu_index) + (4294966272 + (v_offset / 4))))) =? 0)
            then (Some (1, st))
            else (Some (0, st))))
          else (Some (0, st))))))
      else (Some (1, st))).

  Hint Unfold handle_smmu_global_access_spec_mid: spec.

  Lemma f_handle_smmu_global_access_refine_mid:
    forall v_hsr v_offset v_smmu_index lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: handle_smmu_global_access_spec_mid v_hsr v_offset v_smmu_index hst = Some (res, hst')),
      exists lst', handle_smmu_global_access_spec_low v_hsr v_offset v_smmu_index lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_smmu_global_access_refine_high:
    forall v_hsr v_offset v_smmu_index lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: handle_smmu_global_access_spec v_hsr v_offset v_smmu_index hst = Some (res, hst')),
      exists lst', handle_smmu_global_access_spec_mid v_hsr v_offset v_smmu_index lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_smmu_global_access_refine:
    forall v_hsr v_offset v_smmu_index lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: handle_smmu_global_access_spec v_hsr v_offset v_smmu_index hst = Some (res, hst')),
      exists lst', handle_smmu_global_access_spec_low v_hsr v_offset v_smmu_index lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_handle_smmu_global_access_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_handle_smmu_global_access_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuAccess_handle_smmu_global_access_RefProof.

