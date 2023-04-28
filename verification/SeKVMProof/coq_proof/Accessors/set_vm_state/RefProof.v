Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.set_vm_state.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_vm_state_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vm_state_spec_mid (v_vmid: Z) (v_state: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    (anno (((33731152 * 0) = 0));
    (anno (((24 + 0) = 24));
    (anno ((((768 * v_vmid) + 24) = (24 * ((32 * v_vmid) + 1))));
    (anno (((33686424 + (24 * ((32 * v_vmid) + 1))) = (24 * (1403601 + (1 * ((32 * v_vmid) + 1))))));
    (anno (((1 * ((32 * v_vmid) + 1)) = ((32 * v_vmid) + 1)));
    (anno (((1403601 + ((32 * v_vmid) + 1)) = (1403602 + (32 * v_vmid))));
    (anno (((24 * (1403602 + (32 * v_vmid))) = (33686448 + (768 * v_vmid))));
    (anno (((0 + (33686448 + (768 * v_vmid))) = (33686448 + (768 * v_vmid))));
    (anno ((((33686448 + (768 * v_vmid)) - 33686424) = (24 + (768 * v_vmid))));
    (anno ((((24 + (768 * v_vmid)) / 768) = v_vmid));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (anno (((1 * ((32 * v_vmid) + 1)) = ((32 * v_vmid) + 1)));
    (anno (((1403601 + ((32 * v_vmid) + 1)) = (1403602 + (32 * v_vmid))));
    (anno (((24 * (1403602 + (32 * v_vmid))) = (33686448 + (768 * v_vmid))));
    (anno (((0 + (33686448 + (768 * v_vmid))) = (33686448 + (768 * v_vmid))));
    (anno ((((33686448 + (768 * v_vmid)) - 33686424) = (24 + (768 * v_vmid))));
    (anno ((((24 + (768 * v_vmid)) / 768) = v_vmid));
    (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # v_vmid == ((((st.(shared)).(e_vminfos)) @ v_vmid).[e__state] :< v_state)))))))))))))))))))).

  Hint Unfold set_vm_state_spec_mid: spec.

  Lemma f_set_vm_state_refine_mid:
    forall v_vmid v_state lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_state_spec_mid v_vmid v_state hst = Some hst'),
      exists lst', set_vm_state_spec_low v_vmid v_state lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_vm_state_refine_high:
    forall v_vmid v_state lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_state_spec v_vmid v_state hst = Some hst'),
      exists lst', set_vm_state_spec_mid v_vmid v_state lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_vm_state_refine:
    forall v_vmid v_state lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_state_spec v_vmid v_state hst = Some hst'),
      exists lst', set_vm_state_spec_low v_vmid v_state lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_vm_state_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_vm_state_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_set_vm_state_RefProof.

