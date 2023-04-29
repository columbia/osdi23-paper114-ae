Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTAlloc_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition alloc_s2pt_pgd_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    if (((- 61440) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) >? 0)
    then None
    else (
      (Some (
        ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12))  ,
        (st.[shared].[e_s2pts] :<
          (((st.(shared)).(e_s2pts)) #
            v_vmid ==
            ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pud_used_pages] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) + 1))))
      ))).

  Definition alloc_s2pt_pud_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    if (((- 2023424) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)) >? 0)
    then None
    else (
      (Some (
        ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12))  ,
        (st.[shared].[e_s2pts] :<
          (((st.(shared)).(e_s2pts)) #
            v_vmid ==
            ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pmd_used_pages] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) + 1))))
      ))).

  Definition alloc_s2pt_pmd_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    if ((v_vmid =? 18) || (v_vmid =? 0))
    then (
      if (((- 31453184) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) >? 0)
      then None
      else (
        (Some (
          ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12))  ,
          (st.[shared].[e_s2pts] :<
            (((st.(shared)).(e_s2pts)) #
              v_vmid ==
              ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pte_used_pages] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) + 1))))
        ))))
    else (
      if (((- 6287360) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) >? 0)
      then None
      else (
        (Some (
          ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12))  ,
          (st.[shared].[e_s2pts] :<
            (((st.(shared)).(e_s2pts)) #
              v_vmid ==
              ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pte_used_pages] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) + 1))))
        )))).

End S2PTAlloc_Spec.

#[global] Hint Unfold alloc_s2pt_pgd_spec: spec.
#[global] Hint Unfold alloc_s2pt_pud_spec: spec.
#[global] Hint Unfold alloc_s2pt_pmd_spec: spec.
