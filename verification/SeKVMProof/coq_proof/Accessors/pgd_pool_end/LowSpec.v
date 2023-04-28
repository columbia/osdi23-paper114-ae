Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_pgd_pool_end_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition pgd_pool_end_spec_low (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_idxprom := v_vmid in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 19)));
    let v_page_pool_start := (ptr_offset v_call ((33731152 * 0) + (33686424 + ((768 * v_idxprom) + (728 + 0))))) in
    when v_0, st == ((load_RData 8 v_page_pool_start st));
    let v_add := (v_0 + 69632) in
    let __return__ := true in
    let __retval__ := v_add in
    (Some (__retval__, st)).

End Accessors_pgd_pool_end_LowSpec.

#[global] Hint Unfold pgd_pool_end_spec_low: spec.
