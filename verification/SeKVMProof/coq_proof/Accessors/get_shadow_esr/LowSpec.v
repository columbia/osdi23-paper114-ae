Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_get_shadow_esr_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_shadow_esr_spec_low (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_mul := (v_vmid << 2) in
    let v_add := (v_mul + v_vcpuid) in
    let v_idxprom := v_add in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 72)));
    let v_esr := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom) + (1792 + 0))))) in
    when v_0, st == ((load_RData 4 v_esr st));
    let __return__ := true in
    let __retval__ := v_0 in
    (Some (__retval__, st)).

End Accessors_get_shadow_esr_LowSpec.

#[global] Hint Unfold get_shadow_esr_spec_low: spec.
