Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.smmu_get_cbndx.LowSpec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_smmu_get_cbndx_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition smmu_get_cbndx_spec_mid (v_offset: Z) (st: RData) : (option (Z * RData)) :=
    (anno ((((v_offset + 18446744073709518848) >> 12) = (4503599627370488 + (v_offset / 4096))));
    (Some ((4503599627370488 + (v_offset / 4096)), st))).

  Hint Unfold smmu_get_cbndx_spec_mid: spec.

  Lemma f_smmu_get_cbndx_refine_mid:
    forall v_offset lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: smmu_get_cbndx_spec_mid v_offset hst = Some (res, hst')),
      exists lst', smmu_get_cbndx_spec_low v_offset lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_smmu_get_cbndx_refine_high:
    forall v_offset lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: smmu_get_cbndx_spec v_offset hst = Some (res, hst')),
      exists lst', smmu_get_cbndx_spec_mid v_offset lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_smmu_get_cbndx_refine:
    forall v_offset lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: smmu_get_cbndx_spec v_offset hst = Some (res, hst')),
      exists lst', smmu_get_cbndx_spec_low v_offset lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_smmu_get_cbndx_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_smmu_get_cbndx_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_smmu_get_cbndx_RefProof.

