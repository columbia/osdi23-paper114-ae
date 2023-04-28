Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuOps_v_el2_arm_lpae_map_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition v_el2_arm_lpae_map_spec_low (v_iova: Z) (v_paddr: Z) (v_prot: Z) (v_cbndx: Z) (v_index: Z) (st: RData) : (option RData) :=
    let v_div := (v_paddr >> 12) in
    let v_div1 := (v_iova >> 12) in
    when v_call, st == ((smmu_init_pte_spec v_prot v_paddr st));
    when st == ((smmu_assign_page_spec v_cbndx v_index v_div v_div1 st));
    when st == ((smmu_map_page_spec v_cbndx v_index v_iova v_call st));
    let __return__ := true in
    (Some st).

End SmmuOps_v_el2_arm_lpae_map_LowSpec.

#[global] Hint Unfold v_el2_arm_lpae_map_spec_low: spec.
