Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_vcpu_esr_el2_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vcpu_esr_el2_spec_low (v_vmid: Z) (v_vcpuid: Z) (v_esr_el2: Z) (st: RData) : (option RData) :=
    let v_mul := (v_vmid << 2) in
    let v_add := (v_mul + v_vcpuid) in
    when v_call, st == ((get_shared_data_start_spec st));
    let v_idxprom := v_add in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 72)));
    let v_esr_el21 := (ptr_offset v_call ((810864 * 0) + (158832 + ((9056 * v_idxprom) + (352 + (1840 + (0 + 0))))))) in
    when st == ((store_RData 4 v_esr_el21 v_esr_el2 st));
    let __return__ := true in
    (Some st).

End Accessors_set_vcpu_esr_el2_LowSpec.

#[global] Hint Unfold set_vcpu_esr_el2_spec_low: spec.
