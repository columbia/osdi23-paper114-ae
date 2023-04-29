Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemoryOps.Layer.
Require Import S2PTOps.Spec.
Require Import VMOps.register_kvm.LowSpec.
Require Import VMOpsAux.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOps_register_kvm_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque init_s2pt_spec.
  Local Opaque set_vm_kvm_spec.
  Local Opaque acquire_lock_vm_spec.
  Local Opaque set_vm_inc_exe_spec.
  Local Opaque v_panic_spec.
  Local Opaque get_shared_kvm_spec.
  Local Opaque gen_vmid_spec.
  Local Opaque set_vm_state_spec.
  Local Opaque set_vm_public_key_spec.
  Local Opaque release_lock_vm_spec.
  Local Opaque get_vm_state_spec.

    Lemma f_register_kvm_correct:
      forall st st' res
             (Hspec: register_kvm_spec_low st = Some (res, st')),
        exec_func MemoryOps_layer code "register_kvm"
                  []
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VMOps_register_kvm_CodeProof.

