Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuPTWalk_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition walk_smmu_pte_spec (v_pmd: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    if ((v_pmd & 281474976706560) =? 0)
    then (Some (0, st))
    else (
      rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
      if (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start))) <? 0)
      then (Some (((((st.(shared)).(e_smmupts)).(e_smmu_pgd_pool)) @ (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))), st))
      else (
        if (
          ((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
            (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - ((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576)) <? 0)))
        then (Some (((((st.(shared)).(e_smmupts)).(e_smmu_pmd_pool)) @ (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))), st))
        else (
          if (
            (((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
              (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - ((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 16777216)) <? 0)))
          then (Some (((((st.(shared)).(e_smmupts)).(e_smmu_pte_pool)) @ (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))), st))
          else None))).

  Definition set_smmu_pte_spec (v_pmd: Z) (v_addr: Z) (v_pte: Z) (st: RData) : (option RData) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    if (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start))) <? 0)
    then (
      (Some (st.[shared].[e_smmupts].[e_smmu_pgd_pool] :<
        ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_pool)) # (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) == v_pte))))
    else (
      if (
        ((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
          (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - ((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576)) <? 0)))
      then (
        (Some (st.[shared].[e_smmupts].[e_smmu_pmd_pool] :<
          ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_pool)) # (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) == v_pte))))
      else (
        if (
          (((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
            (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - ((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 16777216)) <? 0)))
        then (
          (Some (st.[shared].[e_smmupts].[e_smmu_pte_pool] :<
            ((((st.(shared)).(e_smmupts)).(e_smmu_pte_pool)) # (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) == v_pte))))
        else None)).

  Definition walk_smmu_pgd_spec (v_ttbr: Z) (v_addr: Z) (v_alloc: Z) (st: RData) : (option (Z * RData)) :=
    if ((v_ttbr & 281474976706560) =? 0)
    then (Some (0, st))
    else (
      rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
      if (((((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560)) - (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start))) <? 0)
      then (
        if ((v_alloc =? 1) && ((((((st.(shared)).(e_smmupts)).(e_smmu_pgd_pool)) @ (((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560))) & 281474976706560) =? 0))
        then (
          if (((- 1044480) + ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12)) >? 0)
          then None
          else (
            (Some (
              ((((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12) + (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start))) |' 3)  ,
              ((st.[shared].[e_smmupts].[e_smmu_pgd_pool] :<
                ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_pool)) #
                  (((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560)) ==
                  ((((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12) + (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start))) |' 3))).[shared].[e_smmupts].[e_smmu_pgd_used_pages] :<
                ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) + 1))
            ))))
        else (Some (((((st.(shared)).(e_smmupts)).(e_smmu_pgd_pool)) @ (((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560))), st)))
      else (
        if (
          ((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) - (((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560))) <=? 0) &&
            (((((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560)) - ((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576)) <? 0)))
        then (
          if ((v_alloc =? 1) && ((((((st.(shared)).(e_smmupts)).(e_smmu_pmd_pool)) @ (((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560))) & 281474976706560) =? 0))
          then (
            if (((- 1044480) + ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12)) >? 0)
            then None
            else (
              (Some (
                ((((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12) + (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start))) |' 3)  ,
                ((st.[shared].[e_smmupts].[e_smmu_pgd_used_pages] :< ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) + 1)).[shared].[e_smmupts].[e_smmu_pmd_pool] :<
                  ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_pool)) #
                    (((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560)) ==
                    ((((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12) + (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start))) |' 3)))
              ))))
          else (Some (((((st.(shared)).(e_smmupts)).(e_smmu_pmd_pool)) @ (((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560))), st)))
        else (
          if (
            (((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) - (((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560))) <=? 0) &&
              (((((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560)) - ((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 16777216)) <? 0)))
          then (
            if ((v_alloc =? 1) && ((((((st.(shared)).(e_smmupts)).(e_smmu_pte_pool)) @ (((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560))) & 281474976706560) =? 0))
            then (
              if (((- 1044480) + ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12)) >? 0)
              then None
              else (
                (Some (
                  ((((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12) + (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start))) |' 3)  ,
                  ((st.[shared].[e_smmupts].[e_smmu_pgd_used_pages] :< ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) + 1)).[shared].[e_smmupts].[e_smmu_pte_pool] :<
                    ((((st.(shared)).(e_smmupts)).(e_smmu_pte_pool)) #
                      (((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560)) ==
                      ((((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12) + (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start))) |' 3)))
                ))))
            else (Some (((((st.(shared)).(e_smmupts)).(e_smmu_pte_pool)) @ (((v_addr >> 27) & 8184) + (v_ttbr & 281474976706560))), st)))
          else None))).

  Definition walk_smmu_pmd_spec (v_pgd: Z) (v_addr: Z) (v_alloc: Z) (st: RData) : (option (Z * RData)) :=
    if ((v_pgd & 281474976706560) =? 0)
    then (Some (0, st))
    else (
      rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
      if (((((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) - (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start))) <? 0)
      then (
        if ((v_alloc =? 1) && ((((((st.(shared)).(e_smmupts)).(e_smmu_pgd_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) & 281474976706560) =? 0))
        then (
          if (((- 15724544) + ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) << 12)) >? 0)
          then None
          else (
            (Some (
              ((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) + ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) << 12)) |' 3)  ,
              ((st.[shared].[e_smmupts].[e_smmu_pgd_pool] :<
                ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_pool)) #
                  (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) ==
                  ((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) + ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) << 12)) |' 3))).[shared].[e_smmupts].[e_smmu_pmd_used_pages] :<
                ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) + 1))
            ))))
        else (Some (((((st.(shared)).(e_smmupts)).(e_smmu_pgd_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))), st)))
      else (
        if (
          ((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) - (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
            (((((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) - ((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576)) <? 0)))
        then (
          if ((v_alloc =? 1) && ((((((st.(shared)).(e_smmupts)).(e_smmu_pmd_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) & 281474976706560) =? 0))
          then (
            if (((- 15724544) + ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) << 12)) >? 0)
            then None
            else (
              (Some (
                ((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) + ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) << 12)) |' 3)  ,
                ((st.[shared].[e_smmupts].[e_smmu_pmd_pool] :<
                  ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_pool)) #
                    (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) ==
                    ((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) + ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) << 12)) |' 3))).[shared].[e_smmupts].[e_smmu_pmd_used_pages] :<
                  ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) + 1))
              ))))
          else (Some (((((st.(shared)).(e_smmupts)).(e_smmu_pmd_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))), st)))
        else (
          if (
            (((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) - (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
              (((((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) - ((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 16777216)) <? 0)))
          then (
            if ((v_alloc =? 1) && ((((((st.(shared)).(e_smmupts)).(e_smmu_pte_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) & 281474976706560) =? 0))
            then (
              if (((- 15724544) + ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) << 12)) >? 0)
              then None
              else (
                (Some (
                  ((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) + ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) << 12)) |' 3)  ,
                  ((st.[shared].[e_smmupts].[e_smmu_pmd_used_pages] :< ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) + 1)).[shared].[e_smmupts].[e_smmu_pte_pool] :<
                    ((((st.(shared)).(e_smmupts)).(e_smmu_pte_pool)) #
                      (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) ==
                      ((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) + ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) << 12)) |' 3)))
                ))))
            else (Some (((((st.(shared)).(e_smmupts)).(e_smmu_pte_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))), st)))
          else None))).

End SmmuPTWalk_Spec.

#[global] Hint Unfold walk_smmu_pte_spec: spec.
#[global] Hint Unfold set_smmu_pte_spec: spec.
#[global] Hint Unfold walk_smmu_pgd_spec: spec.
#[global] Hint Unfold walk_smmu_pmd_spec: spec.
