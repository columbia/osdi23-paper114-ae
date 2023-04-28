Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuMemOps___el2_free_smmu_pgd_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition __el2_free_smmu_pgd_spec_low (v_cbndx: Z) (v_index: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_smmu_spec st));
    when v_call, st == ((get_smmu_cfg_vmid_spec v_cbndx v_index st));
    when v_call1, st == ((get_vm_poweron_spec v_call st));
    let v_cmp := (v_call1 =? 0) in
    when st == (
        if v_cmp
        then (
          when st == ((set_smmu_cfg_vmid_spec v_cbndx v_index (- 1) st));
          (Some st))
        else (
          when st == ((v_panic_spec st));
          (Some st)));
    when st == ((release_lock_smmu_spec st));
    let __return__ := true in
    (Some st).

End SmmuMemOps___el2_free_smmu_pgd_LowSpec.

#[global] Hint Unfold __el2_free_smmu_pgd_spec_low: spec.
