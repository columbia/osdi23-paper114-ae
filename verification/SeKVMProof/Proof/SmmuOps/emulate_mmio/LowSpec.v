Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuOps_emulate_mmio_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition emulate_mmio_spec_low (v_addr: Z) (v_hsr: Z) (st: RData) : (option (Z * RData)) :=
    when st == ((acquire_lock_smmu_spec st));
    when v_call, st == ((is_smmu_range_spec v_addr st));
    let v_cmp_not := (v_call =? (- 1)) in
    when st == (
        if v_cmp_not
        then (Some st)
        else (
          when st == ((handle_host_mmio_spec v_call v_hsr st));
          (Some st)));
    when st == ((release_lock_smmu_spec st));
    let __return__ := true in
    let __retval__ := v_call in
    (Some (__retval__, st)).

End SmmuOps_emulate_mmio_LowSpec.

#[global] Hint Unfold emulate_mmio_spec_low: spec.
