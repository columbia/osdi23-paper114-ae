Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_next_remap_ptr.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_next_remap_ptr_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_next_remap_ptr_spec_mid (st: RData) : (option (Z * RData)) :=
    (anno (((33731152 * 0) = 0));
    (anno (((33701024 + 0) = 33701024));
    (anno (((0 + 33701024) = 33701024));
    (anno (((1096 - 33701024) = (- 33699928)));
    (anno (((1100 - 33701024) = (- 33699924)));
    (anno (((1112 - 33701024) = (- 33699912)));
    (anno (((1116 - 33701024) = (- 33699908)));
    (anno (((1128 - 33701024) = (- 33699896)));
    rely (((((st.(shared)).(e_locks)) @ ABS_LOCK) = (Some CPU_ID)));
    (anno (((0 - 33701024) = (- 33701024)));
    (anno (((768 - 33701024) = (- 33700256)));
    (anno (((1024 - 33701024) = (- 33700000)));
    (anno (((1128 - 33701024) = (- 33699896)));
    (anno (((33555568 - 33701024) = (- 145456)));
    (anno (((33685752 - 33701024) = (- 15272)));
    (anno (((33686424 - 33701024) = (- 14600)));
    (Some (((((st.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296), st))))))))))))))))).

  Hint Unfold get_next_remap_ptr_spec_mid: spec.

  Lemma f_get_next_remap_ptr_refine_mid:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_next_remap_ptr_spec_mid hst = Some (res, hst')),
      exists lst', get_next_remap_ptr_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_next_remap_ptr_refine_high:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_next_remap_ptr_spec hst = Some (res, hst')),
      exists lst', get_next_remap_ptr_spec_mid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_next_remap_ptr_refine:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_next_remap_ptr_spec hst = Some (res, hst')),
      exists lst', get_next_remap_ptr_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_next_remap_ptr_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_next_remap_ptr_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_next_remap_ptr_RefProof.

