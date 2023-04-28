Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuPTWalk.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuPTTreeOps_set_smmu_pt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_smmu_pt_spec_low (v_cbndx: Z) (v_num: Z) (v_addr: Z) (v_pte: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_smmu_cfg_hw_ttbr_spec v_cbndx v_num st));
    let v_cmp := (v_call =? 0) in
    when st == (
        if v_cmp
        then (
          when st == ((v_panic_spec st));
          (Some st))
        else (
          when v_call1, st == ((walk_smmu_pgd_spec v_call v_addr 1 st));
          when v_call2, st == ((walk_smmu_pmd_spec v_call1 v_addr 1 st));
          when st == ((set_smmu_pte_spec v_call2 v_addr v_pte st));
          (Some st)));
    let __return__ := true in
    (Some st).

End SmmuPTTreeOps_set_smmu_pt_LowSpec.

#[global] Hint Unfold set_smmu_pt_spec_low: spec.
