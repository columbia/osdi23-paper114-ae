Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_shadow_dirty_bit_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_shadow_dirty_bit_spec_low (v_vmid: Z) (v_vcpuid: Z) (v_value: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_mul := (v_vmid << 2) in
    let v_add := (v_mul + v_vcpuid) in
    let v_tobool_not := (v_value =? 0) in
    let v_idxprom2 := v_add in
    rely (((0 <= v_idxprom2) /\ (v_idxprom2 < 72)));
    let v_dirty4 := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom2) + (360 + 0))))) in
    when v__sink, st == (
        let v__sink := 0 in
        if v_tobool_not
        then (
          let v__sink := 0 in
          (Some (v__sink, st)))
        else (
          when v_0, st == ((load_RData 8 v_dirty4 st));
          let v_or := (v_0 |' v_value) in
          let v__sink := v_or in
          (Some (v__sink, st))));
    when st == ((store_RData 8 v_dirty4 v__sink st));
    let __return__ := true in
    (Some st).

End Accessors_set_shadow_dirty_bit_LowSpec.

#[global] Hint Unfold set_shadow_dirty_bit_spec_low: spec.
