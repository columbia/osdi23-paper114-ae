Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_get_next_remap_ptr_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_next_remap_ptr_spec_low (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_last_remap_ptr := (ptr_offset v_call ((33731152 * 0) + (33701024 + 0))) in
    when v_0, st == ((load_RData 8 v_last_remap_ptr st));
    let v_add := (v_0 + 4294967296) in
    let __return__ := true in
    let __retval__ := v_add in
    (Some (__retval__, st)).

End Accessors_get_next_remap_ptr_LowSpec.

#[global] Hint Unfold get_next_remap_ptr_spec_low: spec.
