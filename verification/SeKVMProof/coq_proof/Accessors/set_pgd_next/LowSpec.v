Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_pgd_next_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_pgd_next_spec_low (v_vmid: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_idxprom := v_vmid in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 19)));
    let v_pud_used_pages := (ptr_offset v_call ((33731152 * 0) + (33686424 + ((768 * v_idxprom) + (752 + 0))))) in
    when v_0, st == ((load_RData 8 v_pud_used_pages st));
    let v_add := (v_0 + 1) in
    when st == ((store_RData 8 v_pud_used_pages v_add st));
    let __return__ := true in
    (Some st).

End Accessors_set_pgd_next_LowSpec.

#[global] Hint Unfold set_pgd_next_spec_low: spec.
