Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemoryOpsAux.Layer.
Require Import VMOpsAux.set_vm_poweroff.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOpsAux_set_vm_poweroff_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque set_vm_power_spec.
  Local Opaque release_lock_vm_spec.
  Local Opaque acquire_lock_vm_spec.

    Lemma f_set_vm_poweroff_correct:
      forall v_vmid st st'
             (Hspec: set_vm_poweroff_spec_low v_vmid st = Some st'),
        exec_func MemoryOpsAux_layer code "set_vm_poweroff"
                  [VInt v_vmid]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VMOpsAux_set_vm_poweroff_CodeProof.

