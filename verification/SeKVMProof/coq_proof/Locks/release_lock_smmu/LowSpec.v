Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Locks_release_lock_smmu_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition release_lock_smmu_spec_low (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_smmu_lock := (ptr_offset v_call ((33731152 * 0) + (1112 + 0))) in
    when st == ((stage2_spin_unlock_spec v_smmu_lock st));
    let __return__ := true in
    (Some st).

End Locks_release_lock_smmu_LowSpec.

#[global] Hint Unfold release_lock_smmu_spec_low: spec.
