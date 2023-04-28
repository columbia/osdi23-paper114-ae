Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_vm_state_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vm_state_spec_low (v_vmid: Z) (v_state: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_idxprom := v_vmid in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 19)));
    let v_state1 := (ptr_offset v_call ((33731152 * 0) + (33686424 + ((768 * v_idxprom) + (24 + 0))))) in
    when st == ((store_RData 4 v_state1 v_state st));
    let __return__ := true in
    (Some st).

End Accessors_set_vm_state_LowSpec.

#[global] Hint Unfold set_vm_state_spec_low: spec.
