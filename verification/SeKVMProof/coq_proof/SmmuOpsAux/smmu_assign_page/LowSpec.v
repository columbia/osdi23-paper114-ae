Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuMemOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuOpsAux_smmu_assign_page_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition smmu_assign_page_spec_low (v_cbndx: Z) (v_index: Z) (v_pfn: Z) (v_gfn: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_smmu_spec st));
    when v_call, st == ((get_smmu_cfg_vmid_spec v_cbndx v_index st));
    let v_conv := v_pfn in
    let v_conv1 := v_gfn in
    when st == ((assign_smmu_spec v_call v_conv v_conv1 st));
    when st == ((release_lock_smmu_spec st));
    let __return__ := true in
    (Some st).

End SmmuOpsAux_smmu_assign_page_LowSpec.

#[global] Hint Unfold smmu_assign_page_spec_low: spec.
