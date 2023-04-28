Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import SmmuAccess.Layer.
Require Import SmmuReadWrite.Layer.
Require Import SmmuReadWrite.RefineRel.
Require Import SmmuReadWrite.Spec.
Require Import SmmuReadWrite.handle_smmu_read.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuReadWrite_handle_smmu_read_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_smmu_read_spec_mid (v_hsr: Z) (v_fault_ipa: Z) (v_len: Z) (st: RData) : (option RData) :=
    rely (((v_len = 8) \/ (v_len = 4)));
    (Some (st.[priv].[e_host_ctxt] :< (((st.(priv)).(e_host_ctxt)) # (_host_dabt_get_rd v_hsr) == (((st.(priv)).(e_umem)) @ v_fault_ipa)))).

  Hint Unfold handle_smmu_read_spec_mid: spec.

  Lemma f_handle_smmu_read_refine_mid:
    forall v_hsr v_fault_ipa v_len lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_smmu_read_spec_mid v_hsr v_fault_ipa v_len hst = Some hst'),
      exists lst', handle_smmu_read_spec_low v_hsr v_fault_ipa v_len lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_smmu_read_refine_high:
    forall v_hsr v_fault_ipa v_len lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_smmu_read_spec v_hsr v_fault_ipa v_len hst = Some hst'),
      exists lst', handle_smmu_read_spec_mid v_hsr v_fault_ipa v_len lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_smmu_read_refine:
    forall v_hsr v_fault_ipa v_len lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_smmu_read_spec v_hsr v_fault_ipa v_len hst = Some hst'),
      exists lst', handle_smmu_read_spec_low v_hsr v_fault_ipa v_len lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_handle_smmu_read_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_handle_smmu_read_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuReadWrite_handle_smmu_read_RefProof.

