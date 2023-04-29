Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuMemOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuOpsAux_smmu_map_page_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition smmu_map_page_spec_low (v_cbndx: Z) (v_index: Z) (v_iova: Z) (v_pte: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_smmu_spec st));
    when v_call, st == ((get_smmu_cfg_vmid_spec v_cbndx v_index st));
    when st == ((map_smmu_spec v_call v_cbndx v_index v_iova v_pte st));
    when st == ((release_lock_smmu_spec st));
    let __return__ := true in
    (Some st).

End SmmuOpsAux_smmu_map_page_LowSpec.

#[global] Hint Unfold smmu_map_page_spec_low: spec.
