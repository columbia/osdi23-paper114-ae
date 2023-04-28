Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemoryOpsAux.Layer.
Require Import VMOpsAux.Layer.
Require Import VMOpsAux.RefineRel.
Require Import VMOpsAux.Spec.
Require Import VMOpsAux.set_vm_poweroff.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOpsAux_set_vm_poweroff_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vm_poweroff_spec_mid (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    (Some (((st_2.[log] :<
      ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_powered_on] :< 0)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
      (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
      (((st_2.(shared)).(e_vminfos)) # v_vmid == ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_powered_on] :< 0)))).

  Hint Unfold set_vm_poweroff_spec_mid: spec.

  Lemma f_set_vm_poweroff_refine_mid:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_poweroff_spec_mid v_vmid hst = Some hst'),
      exists lst', set_vm_poweroff_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_vm_poweroff_refine_high:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_poweroff_spec v_vmid hst = Some hst'),
      exists lst', set_vm_poweroff_spec_mid v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_vm_poweroff_refine:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_poweroff_spec v_vmid hst = Some hst'),
      exists lst', set_vm_poweroff_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_vm_poweroff_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_vm_poweroff_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VMOpsAux_set_vm_poweroff_RefProof.

