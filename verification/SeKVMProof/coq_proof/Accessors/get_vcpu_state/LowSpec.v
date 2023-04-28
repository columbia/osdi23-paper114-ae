Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_get_vcpu_state_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_vcpu_state_spec_low (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_idxprom := v_vmid in
    let v_idxprom1 := v_vcpuid in
    rely (((0 <= v_idxprom1) /\ (v_idxprom1 < 4)));
    rely (((0 <= v_idxprom) /\ (v_idxprom < 19)));
    let v_state := (ptr_offset v_call ((33731152 * 0) + (33686424 + ((768 * v_idxprom) + (528 + ((24 * v_idxprom1) + (12 + 0))))))) in
    when v_0, st == ((load_RData 4 v_state st));
    let __return__ := true in
    let __retval__ := v_0 in
    (Some (__retval__, st)).

End Accessors_get_vcpu_state_LowSpec.

#[global] Hint Unfold get_vcpu_state_spec_low: spec.
