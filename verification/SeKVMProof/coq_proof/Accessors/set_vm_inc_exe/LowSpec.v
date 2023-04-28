Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_vm_inc_exe_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vm_inc_exe_spec_low (v_vmid: Z) (v_inc_exe: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_tobool := (v_inc_exe <>? 0) in
    let v_idxprom := v_vmid in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 19)));
    let v_inc_exe1 := (ptr_offset v_call ((33731152 * 0) + (33686424 + ((768 * v_idxprom) + (20 + 0))))) in
    let v_frombool := (bool_to_int v_tobool) in
    when st == ((store_RData 1 v_inc_exe1 v_frombool st));
    let __return__ := true in
    (Some st).

End Accessors_set_vm_inc_exe_LowSpec.

#[global] Hint Unfold set_vm_inc_exe_spec_low: spec.
