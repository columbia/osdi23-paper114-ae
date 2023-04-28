Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Locks_release_lock_vm_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition release_lock_vm_spec_low (v_vmid: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_idxprom := v_vmid in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 19)));
    let v_vm_lock := (ptr_offset v_call ((33731152 * 0) + (33686424 + ((768 * v_idxprom) + (516 + 0))))) in
    when st == ((stage2_spin_unlock_spec v_vm_lock st));
    let __return__ := true in
    (Some st).

End Locks_release_lock_vm_LowSpec.

#[global] Hint Unfold release_lock_vm_spec_low: spec.
