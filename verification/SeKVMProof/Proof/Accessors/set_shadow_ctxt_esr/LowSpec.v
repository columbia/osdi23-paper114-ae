Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_shadow_ctxt_esr_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_shadow_ctxt_esr_spec_low (v_vmid: Z) (v_vcpuid: Z) (v_value: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_mul := (v_vmid << 2) in
    let v_add := (v_mul + v_vcpuid) in
    let v_idxprom := v_add in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 72)));
    let v_esr := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom) + (1792 + 0))))) in
    when st == ((store_RData 4 v_esr v_value st));
    let __return__ := true in
    (Some st).

End Accessors_set_shadow_ctxt_esr_LowSpec.

#[global] Hint Unfold set_shadow_ctxt_esr_spec_low: spec.
