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
Require Import VMOpsAux.get_vm_poweron.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOpsAux_get_vm_poweron_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_vm_poweron_spec_mid (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    (Some (
      ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_powered_on))  ,
      ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))
    )).

  Hint Unfold get_vm_poweron_spec_mid: spec.

  Lemma f_get_vm_poweron_refine_mid:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_vm_poweron_spec_mid v_vmid hst = Some (res, hst')),
      exists lst', get_vm_poweron_spec_low v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_vm_poweron_refine_high:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_vm_poweron_spec v_vmid hst = Some (res, hst')),
      exists lst', get_vm_poweron_spec_mid v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_vm_poweron_refine:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_vm_poweron_spec v_vmid hst = Some (res, hst')),
      exists lst', get_vm_poweron_spec_low v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_vm_poweron_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_vm_poweron_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VMOpsAux_get_vm_poweron_RefProof.

