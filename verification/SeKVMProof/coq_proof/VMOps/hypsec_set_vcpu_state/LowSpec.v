Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOps_hypsec_set_vcpu_state_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition hypsec_set_vcpu_state_spec_low (v_vmid: Z) (v_vcpu_id: Z) (v_state: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_vm_spec v_vmid st));
    when st == ((set_vcpu_state_spec v_vmid v_vcpu_id v_state st));
    when st == ((release_lock_vm_spec v_vmid st));
    let __return__ := true in
    (Some st).

End VMOps_hypsec_set_vcpu_state_LowSpec.

#[global] Hint Unfold hypsec_set_vcpu_state_spec_low: spec.
