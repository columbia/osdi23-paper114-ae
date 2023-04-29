Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOps_register_vcpu_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition register_vcpu_spec_low (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    when st == ((acquire_lock_vm_spec v_vmid st));
    when v_call, st == ((get_vm_state_spec v_vmid st));
    when v_call1, st == ((get_vcpu_state_spec v_vmid v_vcpuid st));
    let v_cmp := (v_call =? 2) in
    let v_cmp2 := (v_call1 =? 0) in
    let v_or_cond := (
        if v_cmp
        then true
        else v_cmp2) in
    when st == (
        if v_or_cond
        then (
          when v_call3, st == ((get_shared_vcpu_spec v_vmid v_vcpuid st));
          when st == ((set_vm_vcpu_spec v_vmid v_vcpuid v_call3 st));
          when st == ((set_vcpu_state_spec v_vmid v_vcpuid 2 st));
          when st == ((set_shadow_ctxt_spec v_vmid v_vcpuid 45 (- 1) st));
          (Some st))
        else (
          when st == ((v_panic_spec st));
          (Some st)));
    when st == ((release_lock_vm_spec v_vmid st));
    let __return__ := true in
    let __retval__ := 0 in
    (Some (__retval__, st)).

End VMOps_register_vcpu_LowSpec.

#[global] Hint Unfold register_vcpu_spec_low: spec.
