Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_get_mem_region_flag_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_mem_region_flag_spec_low (v_index: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_idxprom := v_index in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 32)));
    let v_flags := (ptr_offset v_call ((33731152 * 0) + (0 + ((24 * v_idxprom) + (16 + 0))))) in
    when v_0, st == ((load_RData 4 v_flags st));
    let v_conv := v_0 in
    let __return__ := true in
    let __retval__ := v_conv in
    (Some (__retval__, st)).

End Accessors_get_mem_region_flag_LowSpec.

#[global] Hint Unfold get_mem_region_flag_spec_low: spec.
