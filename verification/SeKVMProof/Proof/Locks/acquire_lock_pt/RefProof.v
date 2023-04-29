Require Import Accessors.Layer.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Layer.
Require Import Locks.RefineRel.
Require Import Locks.Spec.
Require Import Locks.acquire_lock_pt.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Locks_acquire_lock_pt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition acquire_lock_pt_spec_mid (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    (anno (((33731152 * 0) = 0));
    (anno (((512 + 0) = 512));
    (anno ((((768 * v_vmid) + 512) = (256 * ((3 * v_vmid) + 2))));
    (anno (((33686424 + (256 * ((3 * v_vmid) + 2))) = (8 * (4210803 + (32 * ((3 * v_vmid) + 2))))));
    (anno (((5 + 19) = 24));
    when st_2 == ((query_oracle st));
    (anno (((32 * ((3 * v_vmid) + 2)) = (64 + (96 * v_vmid))));
    (anno (((4210803 + (64 + (96 * v_vmid))) = (4210867 + (96 * v_vmid))));
    (anno (((8 * (4210867 + (96 * v_vmid))) = (33686936 + (768 * v_vmid))));
    (anno (((0 + (33686936 + (768 * v_vmid))) = (33686936 + (768 * v_vmid))));
    (anno ((((33686936 + (768 * v_vmid)) - 33686424) = (512 + (768 * v_vmid))));
    (anno ((((512 + (768 * v_vmid)) / 768) = v_vmid));
    rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
    (anno (((32 * ((3 * v_vmid) + 2)) = (64 + (96 * v_vmid))));
    (anno (((4210803 + (64 + (96 * v_vmid))) = (4210867 + (96 * v_vmid))));
    (anno (((8 * (4210867 + (96 * v_vmid))) = (33686936 + (768 * v_vmid))));
    (anno (((0 + (33686936 + (768 * v_vmid))) = (33686936 + (768 * v_vmid))));
    (anno ((((33686936 + (768 * v_vmid)) - 33686424) = (512 + (768 * v_vmid))));
    (anno ((((512 + (768 * v_vmid)) / 768) = v_vmid));
    (Some ((st_2.[log] :< ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == (Some CPU_ID))))))))))))))))))))).

  Hint Unfold acquire_lock_pt_spec_mid: spec.

  Lemma f_acquire_lock_pt_refine_mid:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: acquire_lock_pt_spec_mid v_vmid hst = Some hst'),
      exists lst', acquire_lock_pt_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_acquire_lock_pt_refine_high:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: acquire_lock_pt_spec v_vmid hst = Some hst'),
      exists lst', acquire_lock_pt_spec_mid v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_acquire_lock_pt_refine:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: acquire_lock_pt_spec v_vmid hst = Some hst'),
      exists lst', acquire_lock_pt_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_acquire_lock_pt_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_acquire_lock_pt_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Locks_acquire_lock_pt_RefProof.

