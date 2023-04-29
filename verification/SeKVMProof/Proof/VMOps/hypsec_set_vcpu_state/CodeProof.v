Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemoryOps.Layer.
Require Import VMOps.hypsec_set_vcpu_state.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOps_hypsec_set_vcpu_state_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque acquire_lock_vm_spec.
  Local Opaque release_lock_vm_spec.
  Local Opaque set_vcpu_state_spec.

    Lemma f_hypsec_set_vcpu_state_correct:
      forall v_vmid v_vcpu_id v_state st st'
             (Hspec: hypsec_set_vcpu_state_spec_low v_vmid v_vcpu_id v_state st = Some st'),
        exec_func MemoryOps_layer code "hypsec_set_vcpu_state"
                  [VInt v_vmid; VInt v_vcpu_id; VInt v_state]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VMOps_hypsec_set_vcpu_state_CodeProof.

