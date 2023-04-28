Require Import Accessors.Layer.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Layer.
Require Import Locks.RefineRel.
Require Import Locks.Spec.
Require Import Locks.release_lock_s2page.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Locks_release_lock_s2page_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition release_lock_s2page_spec_mid (st: RData) : (option RData) :=
    (anno (((33731152 * 0) = 0));
    (anno (((1096 + 0) = 1096));
    (anno (((0 + 1096) = 1096));
    (anno (((1096 - 1096) = 0));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    (Some ((st.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st.(shared)).(e_s2pages))))) :: (st.(log)))).[shared].[e_locks] :<
      (((st.(shared)).(e_locks)) # S2PAGE_LOCK == None))))))).

  Hint Unfold release_lock_s2page_spec_mid: spec.

  Lemma f_release_lock_s2page_refine_mid:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: release_lock_s2page_spec_mid hst = Some hst'),
      exists lst', release_lock_s2page_spec_low lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_release_lock_s2page_refine_high:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: release_lock_s2page_spec hst = Some hst'),
      exists lst', release_lock_s2page_spec_mid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_release_lock_s2page_refine:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: release_lock_s2page_spec hst = Some hst'),
      exists lst', release_lock_s2page_spec_low lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_release_lock_s2page_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_release_lock_s2page_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Locks_release_lock_s2page_RefProof.

