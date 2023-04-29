Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuPTWalk.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuPTTreeOps_walk_smmu_pt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition walk_smmu_pt_spec_low (v_cbndx: Z) (v_num: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_smmu_cfg_hw_ttbr_spec v_cbndx v_num st));
    when v_call1, st == ((walk_smmu_pgd_spec v_call v_addr 0 st));
    when v_call2, st == ((walk_smmu_pmd_spec v_call1 v_addr 0 st));
    when v_call3, st == ((walk_smmu_pte_spec v_call2 v_addr st));
    let __return__ := true in
    let __retval__ := v_call3 in
    (Some (__retval__, st)).

End SmmuPTTreeOps_walk_smmu_pt_LowSpec.

#[global] Hint Unfold walk_smmu_pt_spec_low: spec.
