Require Import Accessors.Layer.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Layer.
Require Import Locks.RefineRel.
Require Import Locks.Spec.
Require Import Locks.release_lock_vm.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Locks_release_lock_vm_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition release_lock_vm_spec_mid (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    (anno (((33731152 * 0) = 0));
    (anno (((516 + 0) = 516));
    (anno ((((768 * v_vmid) + 516) = (12 * ((64 * v_vmid) + 43))));
    (anno (((33686424 + (12 * ((64 * v_vmid) + 43))) = (12 * (2807202 + (1 * ((64 * v_vmid) + 43))))));
    (anno (((1 * ((64 * v_vmid) + 43)) = ((64 * v_vmid) + 43)));
    (anno (((2807202 + ((64 * v_vmid) + 43)) = (2807245 + (64 * v_vmid))));
    (anno (((12 * (2807245 + (64 * v_vmid))) = (33686940 + (768 * v_vmid))));
    (anno (((0 + (33686940 + (768 * v_vmid))) = (33686940 + (768 * v_vmid))));
    (anno ((((33686940 + (768 * v_vmid)) - 33686424) = (516 + (768 * v_vmid))));
    (anno ((((516 + (768 * v_vmid)) / 768) = v_vmid));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (anno (((5 + 19) = 24));
    (anno (((24 + 0) = 24));
    (anno (((5 + 0) = 5));
    (anno ((((5 + v_vmid) - 5) = v_vmid));
    (anno (((1 * ((64 * v_vmid) + 43)) = ((64 * v_vmid) + 43)));
    (anno (((2807202 + ((64 * v_vmid) + 43)) = (2807245 + (64 * v_vmid))));
    (anno (((12 * (2807245 + (64 * v_vmid))) = (33686940 + (768 * v_vmid))));
    (anno (((0 + (33686940 + (768 * v_vmid))) = (33686940 + (768 * v_vmid))));
    (anno ((((33686940 + (768 * v_vmid)) - 33686424) = (516 + (768 * v_vmid))));
    (anno ((((516 + (768 * v_vmid)) / 768) = v_vmid));
    (Some ((st.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st.(shared)).(e_vminfos)) @ v_vmid)))) :: (st.(log)))).[shared].[e_locks] :<
      (((st.(shared)).(e_locks)) # (5 + v_vmid) == None))))))))))))))))))))))).

  Hint Unfold release_lock_vm_spec_mid: spec.

  Lemma f_release_lock_vm_refine_mid:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: release_lock_vm_spec_mid v_vmid hst = Some hst'),
      exists lst', release_lock_vm_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_release_lock_vm_refine_high:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: release_lock_vm_spec v_vmid hst = Some hst'),
      exists lst', release_lock_vm_spec_mid v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_release_lock_vm_refine:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: release_lock_vm_spec v_vmid hst = Some hst'),
      exists lst', release_lock_vm_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_release_lock_vm_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_release_lock_vm_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Locks_release_lock_vm_RefProof.

