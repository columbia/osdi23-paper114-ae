Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_vm_vcpu_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vm_vcpu_spec_low (v_vmid: Z) (v_vcpuid: Z) (v_vcpu: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_0 := (int_to_ptr v_vcpu) in
    let v_idxprom := v_vmid in
    let v_idxprom1 := v_vcpuid in
    rely (((0 <= v_idxprom1) /\ (v_idxprom1 < 4)));
    rely (((0 <= v_idxprom) /\ (v_idxprom < 19)));
    let v_vcpu3 := (ptr_offset v_call ((33731152 * 0) + (33686424 + ((768 * v_idxprom) + (528 + ((24 * v_idxprom1) + (0 + 0))))))) in
    when st == ((store_RData 0 v_vcpu3 (ptr_to_int v_0) st));
    let __return__ := true in
    (Some st).

End Accessors_set_vm_vcpu_LowSpec.

#[global] Hint Unfold set_vm_vcpu_spec_low: spec.
