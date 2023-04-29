Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import SmmuAccess.Layer.
Require Import SmmuAccess.RefineRel.
Require Import SmmuAccess.Spec.
Require Import SmmuAccess.handle_smmu_cb_access.LowSpec.
Require Import SmmuMemOps.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuAccess_handle_smmu_cb_access_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_smmu_cb_access_spec_mid (v_offset: Z) (st: RData) : (option (Z * RData)) :=
    if ((v_offset & 4095) =? 48)
    then (Some (3, st))
    else (
      if ((v_offset & 4095) =? 32)
      then (Some (2, st))
      else (
        if ((v_offset & 4095) =? 52)
        then (Some (0, st))
        else (Some (1, st)))).

  Hint Unfold handle_smmu_cb_access_spec_mid: spec.

  Lemma f_handle_smmu_cb_access_refine_mid:
    forall v_offset lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: handle_smmu_cb_access_spec_mid v_offset hst = Some (res, hst')),
      exists lst', handle_smmu_cb_access_spec_low v_offset lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_smmu_cb_access_refine_high:
    forall v_offset lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: handle_smmu_cb_access_spec v_offset hst = Some (res, hst')),
      exists lst', handle_smmu_cb_access_spec_mid v_offset lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_smmu_cb_access_refine:
    forall v_offset lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: handle_smmu_cb_access_spec v_offset hst = Some (res, hst')),
      exists lst', handle_smmu_cb_access_spec_low v_offset lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_handle_smmu_cb_access_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_handle_smmu_cb_access_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuAccess_handle_smmu_cb_access_RefProof.

