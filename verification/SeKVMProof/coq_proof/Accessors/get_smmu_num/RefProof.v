Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_smmu_num.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_smmu_num_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_smmu_num_spec_mid (st: RData) : (option (Z * RData)) :=
    (anno (((33731152 * 0) = 0));
    (anno (((33701480 + 0) = 33701480));
    (anno (((0 + 33701480) = 33701480));
    (anno (((1096 - 33701480) = (- 33700384)));
    (anno (((1100 - 33701480) = (- 33700380)));
    (anno (((1112 - 33701480) = (- 33700368)));
    (anno (((1116 - 33701480) = (- 33700364)));
    (anno (((0 - 33701480) = (- 33701480)));
    (anno (((768 - 33701480) = (- 33700712)));
    (anno (((1024 - 33701480) = (- 33700456)));
    (anno (((1128 - 33701480) = (- 33700352)));
    (anno (((33555568 - 33701480) = (- 145912)));
    (anno (((33685752 - 33701480) = (- 15728)));
    (anno (((33686424 - 33701480) = (- 15056)));
    (anno (((33701032 - 33701480) = (- 448)));
    (anno (((33701288 - 33701480) = (- 192)));
    (Some (((st.(priv)).(e_el2_smmu_num)), st)))))))))))))))))).

  Hint Unfold get_smmu_num_spec_mid: spec.

  Lemma f_get_smmu_num_refine_mid:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_smmu_num_spec_mid hst = Some (res, hst')),
      exists lst', get_smmu_num_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_smmu_num_refine_high:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_smmu_num_spec hst = Some (res, hst')),
      exists lst', get_smmu_num_spec_mid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_smmu_num_refine:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_smmu_num_spec hst = Some (res, hst')),
      exists lst', get_smmu_num_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_smmu_num_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_smmu_num_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_smmu_num_RefProof.

