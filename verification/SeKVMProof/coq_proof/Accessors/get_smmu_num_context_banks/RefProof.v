Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_smmu_num_context_banks.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_smmu_num_context_banks_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_smmu_num_context_banks_spec_mid (v_num: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_num) <= 0) /\ (v_num < 2)));
    (anno (((33731152 * 0) = 0));
    (anno (((28 + 0) = 28));
    (anno ((((96 * v_num) + 28) = (4 * ((24 * v_num) + 7))));
    (anno (((33701288 + (4 * ((24 * v_num) + 7))) = (4 * (8425322 + (1 * ((24 * v_num) + 7))))));
    (anno (((1 * ((24 * v_num) + 7)) = ((24 * v_num) + 7)));
    (anno (((8425322 + ((24 * v_num) + 7)) = (8425329 + (24 * v_num))));
    (anno (((4 * (8425329 + (24 * v_num))) = (33701316 + (96 * v_num))));
    (anno (((0 + (33701316 + (96 * v_num))) = (33701316 + (96 * v_num))));
    (anno ((((33701316 + (96 * v_num)) - 33701288) = (28 + (96 * v_num))));
    (anno ((((28 + (96 * v_num)) / 96) = v_num));
    (Some (((((st.(priv)).(e_smmus)) @ v_num).(e_num_context_banks)), st)))))))))))).

  Hint Unfold get_smmu_num_context_banks_spec_mid: spec.

  Lemma f_get_smmu_num_context_banks_refine_mid:
    forall v_num lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_smmu_num_context_banks_spec_mid v_num hst = Some (res, hst')),
      exists lst', get_smmu_num_context_banks_spec_low v_num lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_smmu_num_context_banks_refine_high:
    forall v_num lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_smmu_num_context_banks_spec v_num hst = Some (res, hst')),
      exists lst', get_smmu_num_context_banks_spec_mid v_num lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_smmu_num_context_banks_refine:
    forall v_num lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_smmu_num_context_banks_spec v_num hst = Some (res, hst')),
      exists lst', get_smmu_num_context_banks_spec_low v_num lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_smmu_num_context_banks_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_smmu_num_context_banks_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_smmu_num_context_banks_RefProof.

