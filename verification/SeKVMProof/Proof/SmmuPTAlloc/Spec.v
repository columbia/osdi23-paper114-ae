Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuPTAlloc_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition alloc_smmu_pgd_page_spec (st: RData) : (option (Z * RData)) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    if (((- 1044480) + ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12)) >? 0)
    then None
    else (
      (Some (
        (((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12) + (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)))  ,
        (st.[shared].[e_smmupts].[e_smmu_pgd_used_pages] :< ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) + 1))
      ))).

  Definition alloc_smmu_pmd_page_spec (st: RData) : (option (Z * RData)) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    if (((- 15724544) + ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) << 12)) >? 0)
    then None
    else (
      (Some (
        (((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) + ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) << 12))  ,
        (st.[shared].[e_smmupts].[e_smmu_pmd_used_pages] :< ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) + 1))
      ))).

End SmmuPTAlloc_Spec.

#[global] Hint Unfold alloc_smmu_pgd_page_spec: spec.
#[global] Hint Unfold alloc_smmu_pmd_page_spec: spec.
