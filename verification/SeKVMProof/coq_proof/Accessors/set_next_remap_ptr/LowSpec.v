Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_next_remap_ptr_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_next_remap_ptr_spec_low (v_remap: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_last_remap_ptr := (ptr_offset v_call ((33731152 * 0) + (33701024 + 0))) in
    when st == ((store_RData 8 v_last_remap_ptr v_remap st));
    let __return__ := true in
    (Some st).

End Accessors_set_next_remap_ptr_LowSpec.

#[global] Hint Unfold set_next_remap_ptr_spec_low: spec.
