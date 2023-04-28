Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_vm_power_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vm_power_spec_low (v_vmid: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_idxprom := v_vmid in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 19)));
    let v_powered_on := (ptr_offset v_call ((33731152 * 0) + (33686424 + ((768 * v_idxprom) + (720 + 0))))) in
    when st == ((store_RData 1 v_powered_on 0 st));
    let __return__ := true in
    (Some st).

End Accessors_set_vm_power_LowSpec.

#[global] Hint Unfold set_vm_power_spec_low: spec.
