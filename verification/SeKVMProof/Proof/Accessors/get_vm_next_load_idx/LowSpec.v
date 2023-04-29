Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_get_vm_next_load_idx_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_vm_next_load_idx_spec_low (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_idxprom := v_vmid in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 19)));
    let v_load_info_cnt := (ptr_offset v_call ((33731152 * 0) + (33686424 + ((768 * v_idxprom) + (12 + 0))))) in
    when v_0, st == ((load_RData 4 v_load_info_cnt st));
    let __return__ := true in
    let __retval__ := v_0 in
    (Some (__retval__, st)).

End Accessors_get_vm_next_load_idx_LowSpec.

#[global] Hint Unfold get_vm_next_load_idx_spec_low: spec.
