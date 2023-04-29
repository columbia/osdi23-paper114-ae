Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_s2_page_count.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_s2_page_count_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_s2_page_count_spec_mid (v_index: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 2097152)));
    (anno (((33731152 * 0) = 0));
    (anno (((0 + 0) = 0));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    (anno ((((16 * v_index) + 0) = (16 * v_index)));
    (anno (((0 + (1128 + (16 * v_index))) = (1128 + (16 * v_index))));
    (anno ((((1128 + (16 * v_index)) - 1128) = (16 * v_index)));
    (anno ((((16 * v_index) / 16) = v_index));
    (Some (((((st.(shared)).(e_s2pages)) @ v_index).(e_count)), st)))))))).

  Hint Unfold get_s2_page_count_spec_mid: spec.

  Lemma f_get_s2_page_count_refine_mid:
    forall v_index lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_s2_page_count_spec_mid v_index hst = Some (res, hst')),
      exists lst', get_s2_page_count_spec_low v_index lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_s2_page_count_refine_high:
    forall v_index lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_s2_page_count_spec v_index hst = Some (res, hst')),
      exists lst', get_s2_page_count_spec_mid v_index lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_s2_page_count_refine:
    forall v_index lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_s2_page_count_spec v_index hst = Some (res, hst')),
      exists lst', get_s2_page_count_spec_low v_index lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_s2_page_count_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_s2_page_count_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_s2_page_count_RefProof.

