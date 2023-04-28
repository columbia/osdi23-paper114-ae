Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Locks_acquire_lock_spt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition acquire_lock_spt_spec_low (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_spt_lock := (ptr_offset v_call ((33731152 * 0) + (1116 + 0))) in
    when st == ((stage2_spin_lock_spec v_spt_lock st));
    let __return__ := true in
    (Some st).

End Locks_acquire_lock_spt_LowSpec.

#[global] Hint Unfold acquire_lock_spt_spec_low: spec.
