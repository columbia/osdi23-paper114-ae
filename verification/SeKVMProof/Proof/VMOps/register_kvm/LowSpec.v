Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import S2PTOps.Spec.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOps_register_kvm_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition register_kvm_spec_low (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((gen_vmid_spec st));
    when st == ((acquire_lock_vm_spec v_call st));
    when v_call1, st == ((get_vm_state_spec v_call st));
    let v_cmp := (v_call1 =? 0) in
    when st == (
        if v_cmp
        then (
          when st == ((set_vm_inc_exe_spec v_call 0 st));
          when v_call2, st == ((get_shared_kvm_spec v_call st));
          when st == ((set_vm_kvm_spec v_call v_call2 st));
          when st == ((init_s2pt_spec v_call st));
          when st == ((set_vm_public_key_spec v_call st));
          when st == ((set_vm_state_spec v_call 2 st));
          (Some st))
        else (
          when st == ((v_panic_spec st));
          (Some st)));
    when st == ((release_lock_vm_spec v_call st));
    let __return__ := true in
    let __retval__ := v_call in
    (Some (__retval__, st)).

End VMOps_register_kvm_LowSpec.

#[global] Hint Unfold register_kvm_spec_low: spec.
