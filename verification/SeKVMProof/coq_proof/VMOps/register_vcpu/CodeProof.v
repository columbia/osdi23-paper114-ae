Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemoryOps.Layer.
Require Import VMOps.register_vcpu.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOps_register_vcpu_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_vcpu_state_spec.
  Local Opaque set_vcpu_state_spec.
  Local Opaque acquire_lock_vm_spec.
  Local Opaque set_shadow_ctxt_spec.
  Local Opaque get_shared_vcpu_spec.
  Local Opaque v_panic_spec.
  Local Opaque set_vm_vcpu_spec.
  Local Opaque release_lock_vm_spec.
  Local Opaque get_vm_state_spec.

    Lemma f_register_vcpu_correct:
      forall v_vmid v_vcpuid st st' res
             (Hspec: register_vcpu_spec_low v_vmid v_vcpuid st = Some (res, st')),
        exec_func MemoryOps_layer code "register_vcpu"
                  [VInt v_vmid; VInt v_vcpuid]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VMOps_register_vcpu_CodeProof.

