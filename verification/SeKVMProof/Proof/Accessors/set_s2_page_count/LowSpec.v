Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_s2_page_count_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_s2_page_count_spec_low (v_index: Z) (v_count: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    rely (((0 <= v_index) /\ (v_index < 2097152)));
    let v_count1 := (ptr_offset v_call ((33731152 * 0) + (1128 + ((16 * v_index) + (0 + 0))))) in
    when st == ((store_RData 4 v_count1 v_count st));
    let __return__ := true in
    (Some st).

End Accessors_set_s2_page_count_LowSpec.

#[global] Hint Unfold set_s2_page_count_spec_low: spec.
