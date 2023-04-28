Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemoryOpsAux.Layer.
Require Import VMOpsAux.get_vm_poweron.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOpsAux_get_vm_poweron_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_vm_power_spec.
  Local Opaque release_lock_vm_spec.
  Local Opaque acquire_lock_vm_spec.

    Lemma f_get_vm_poweron_correct:
      forall v_vmid st st' res
             (Hspec: get_vm_poweron_spec_low v_vmid st = Some (res, st')),
        exec_func MemoryOpsAux_layer code "get_vm_poweron"
                  [VInt v_vmid]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VMOpsAux_get_vm_poweron_CodeProof.

