Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_vcpu_was_preempted_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vcpu_was_preempted_spec_low (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    let v_mul := (v_vmid << 2) in
    let v_add := (v_mul + v_vcpuid) in
    when v_call, st == ((get_shared_data_start_spec st));
    let v_idxprom := v_add in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 72)));
    let v_was_preempted := (ptr_offset v_call ((810864 * 0) + (158832 + ((9056 * v_idxprom) + (352 + (4 + 0)))))) in
    when st == ((store_RData 1 v_was_preempted 0 st));
    let __return__ := true in
    (Some st).

End Accessors_set_vcpu_was_preempted_LowSpec.

#[global] Hint Unfold set_vcpu_was_preempted_spec_low: spec.
