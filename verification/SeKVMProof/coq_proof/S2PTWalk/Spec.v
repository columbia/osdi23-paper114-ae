Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTWalk_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition v_set_pmd_spec (v_vmid: Z) (v_pgd: Z) (v_addr: Z) (v_pmd: Z) (st: RData) : (option RData) :=
    rely (((((- 1) * v_vmid) <= 0) /\ (((- 18) + v_vmid) <= 0)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    if (
      (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) - (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
        (((((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096)) <? 0)))
    then (
      (Some (st.[shared].[e_s2pts] :<
        (((st.(shared)).(e_s2pts)) #
          v_vmid ==
          ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pgd_pool] :<
            (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) # (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) == (v_pmd |' 36028797018963968)))))))
    else (
      if (
        ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) - (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
          (((((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632)) <? 0)))
      then (
        (Some (st.[shared].[e_s2pts] :<
          (((st.(shared)).(e_s2pts)) #
            v_vmid ==
            ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pud_pool] :<
              (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) # (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) == (v_pmd |' 36028797018963968)))))))
      else (
        if (
          ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) - (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
            (((((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152)) <? 0)))
        then (
          (Some (st.[shared].[e_s2pts] :<
            (((st.(shared)).(e_s2pts)) #
              v_vmid ==
              ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pmd_pool] :<
                (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) # (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) == (v_pmd |' 36028797018963968)))))))
        else (
          if (
            ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) - (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
              (((((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 8388608)) <? 0)))
          then (
            (Some (st.[shared].[e_s2pts] :<
              (((st.(shared)).(e_s2pts)) #
                v_vmid ==
                ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pte_pool] :<
                  (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) # (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) == (v_pmd |' 36028797018963968)))))))
          else None))).

  Definition v_set_pte_spec (v_vmid: Z) (v_pmd: Z) (v_addr: Z) (v_pte: Z) (st: RData) : (option RData) :=
    rely (((((- 1) * v_vmid) <= 0) /\ (((- 18) + v_vmid) <= 0)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    if (
      (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
        (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096)) <? 0)))
    then (
      (Some (st.[shared].[e_s2pts] :<
        (((st.(shared)).(e_s2pts)) #
          v_vmid ==
          ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pgd_pool] :<
            (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) # (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) == (v_pte |' 72057594037927936)))))))
    else (
      if (
        ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
          (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632)) <? 0)))
      then (
        (Some (st.[shared].[e_s2pts] :<
          (((st.(shared)).(e_s2pts)) #
            v_vmid ==
            ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pud_pool] :<
              (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) # (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) == (v_pte |' 72057594037927936)))))))
      else (
        if (
          ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
            (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152)) <? 0)))
        then (
          (Some (st.[shared].[e_s2pts] :<
            (((st.(shared)).(e_s2pts)) #
              v_vmid ==
              ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pmd_pool] :<
                (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) # (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) == (v_pte |' 72057594037927936)))))))
        else (
          if (
            ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
              (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 8388608)) <? 0)))
          then (
            (Some (st.[shared].[e_s2pts] :<
              (((st.(shared)).(e_s2pts)) #
                v_vmid ==
                ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pte_pool] :<
                  (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) # (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) == (v_pte |' 72057594037927936)))))))
          else None))).

  Definition walk_pte_spec (v_vmid: Z) (v_pmd: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    if ((v_pmd & 281474976706560) =? 0)
    then (Some (0, st))
    else (
      rely (((((- 1) * v_vmid) <= 0) /\ (((- 18) + v_vmid) <= 0)));
      rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
      if (
        (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
          (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096)) <? 0)))
      then (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) @ (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))), st))
      else (
        if (
          ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
            (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632)) <? 0)))
        then (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) @ (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))), st))
        else (
          if (
            ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
              (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152)) <? 0)))
          then (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) @ (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))), st))
          else (
            if (
              ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
                (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 8388608)) <? 0)))
            then (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) @ (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))), st))
            else None)))).

  Definition walk_pgd_spec (v_vmid: Z) (v_vttbr: Z) (v_addr: Z) (v_alloc: Z) (st: RData) : (option (Z * RData)) :=
    if ((v_vttbr & 281474976706560) =? 0)
    then (Some (0, st))
    else (
      rely (((((- 1) * v_vmid) <= 0) /\ (((- 18) + v_vmid) <= 0)));
      rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
      if (
        (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) - (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560))) <=? 0) &&
          (((((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096)) <? 0)))
      then (
        if ((v_alloc =? 1) && (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) @ (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560))) & 281474976706560) =? 0))
        then (
          if (((- 61440) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) >? 0)
          then None
          else (
            (Some (
              (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) |' 3)  ,
              (st.[shared].[e_s2pts] :<
                (((st.(shared)).(e_s2pts)) #
                  v_vmid ==
                  (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pgd_pool] :<
                    (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) #
                      (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560)) ==
                      (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) |' 3))).[e_pud_used_pages] :<
                    (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) + 1))))
            ))))
        else (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) @ (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560))), st)))
      else (
        if (
          ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) - (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560))) <=? 0) &&
            (((((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632)) <? 0)))
        then (
          if ((v_alloc =? 1) && (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) @ (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560))) & 281474976706560) =? 0))
          then (
            if (((- 61440) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) >? 0)
            then None
            else (
              (Some (
                (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) |' 3)  ,
                (st.[shared].[e_s2pts] :<
                  (((st.(shared)).(e_s2pts)) #
                    v_vmid ==
                    (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pud_pool] :<
                      (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) #
                        (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560)) ==
                        (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) |' 3))).[e_pud_used_pages] :<
                      (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) + 1))))
              ))))
          else (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) @ (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560))), st)))
        else (
          if (
            ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) - (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560))) <=? 0) &&
              (((((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152)) <? 0)))
          then (
            if ((v_alloc =? 1) && (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) @ (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560))) & 281474976706560) =? 0))
            then (
              if (((- 61440) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) >? 0)
              then None
              else (
                (Some (
                  (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) |' 3)  ,
                  (st.[shared].[e_s2pts] :<
                    (((st.(shared)).(e_s2pts)) #
                      v_vmid ==
                      (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pmd_pool] :<
                        (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) #
                          (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560)) ==
                          (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) |' 3))).[e_pud_used_pages] :<
                        (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) + 1))))
                ))))
            else (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) @ (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560))), st)))
          else (
            if (
              ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) - (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560))) <=? 0) &&
                (((((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 8388608)) <? 0)))
            then (
              if ((v_alloc =? 1) && (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) @ (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560))) & 281474976706560) =? 0))
              then (
                if (((- 61440) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) >? 0)
                then None
                else (
                  (Some (
                    (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) |' 3)  ,
                    (st.[shared].[e_s2pts] :<
                      (((st.(shared)).(e_s2pts)) #
                        v_vmid ==
                        (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pte_pool] :<
                          (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) #
                            (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560)) ==
                            (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) |' 3))).[e_pud_used_pages] :<
                          (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) + 1))))
                  ))))
              else (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) @ (((v_addr >> 36) & 4088) |' (v_vttbr & 281474976706560))), st)))
            else None)))).

  Definition walk_pud_spec (v_vmid: Z) (v_pgd: Z) (v_addr: Z) (v_alloc: Z) (st: RData) : (option (Z * RData)) :=
    if ((v_pgd & 281474976706560) =? 0)
    then (Some (0, st))
    else (
      rely (((((- 1) * v_vmid) <= 0) /\ (((- 18) + v_vmid) <= 0)));
      rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
      if (
        (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) - (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
          (((((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096)) <? 0)))
      then (
        if ((v_alloc =? 1) && (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) @ (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560))) & 281474976706560) =? 0))
        then (
          if (((- 2023424) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)) >? 0)
          then None
          else (
            (Some (
              (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)) |' 3)  ,
              (st.[shared].[e_s2pts] :<
                (((st.(shared)).(e_s2pts)) #
                  v_vmid ==
                  (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pgd_pool] :<
                    (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) #
                      (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560)) ==
                      (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)) |' 3))).[e_pmd_used_pages] :<
                    (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) + 1))))
            ))))
        else (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) @ (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560))), st)))
      else (
        if (
          ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) - (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
            (((((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632)) <? 0)))
        then (
          if ((v_alloc =? 1) && (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) @ (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560))) & 281474976706560) =? 0))
          then (
            if (((- 2023424) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)) >? 0)
            then None
            else (
              (Some (
                (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)) |' 3)  ,
                (st.[shared].[e_s2pts] :<
                  (((st.(shared)).(e_s2pts)) #
                    v_vmid ==
                    (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pmd_used_pages] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) + 1)).[e_pud_pool] :<
                      (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) #
                        (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560)) ==
                        (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)) |' 3)))))
              ))))
          else (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) @ (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560))), st)))
        else (
          if (
            ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) - (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
              (((((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152)) <? 0)))
          then (
            if ((v_alloc =? 1) && (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) @ (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560))) & 281474976706560) =? 0))
            then (
              if (((- 2023424) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)) >? 0)
              then None
              else (
                (Some (
                  (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)) |' 3)  ,
                  (st.[shared].[e_s2pts] :<
                    (((st.(shared)).(e_s2pts)) #
                      v_vmid ==
                      (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pmd_pool] :<
                        (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) #
                          (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560)) ==
                          (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)) |' 3))).[e_pmd_used_pages] :<
                        (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) + 1))))
                ))))
            else (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) @ (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560))), st)))
          else (
            if (
              ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) - (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
                (((((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 8388608)) <? 0)))
            then (
              if ((v_alloc =? 1) && (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) @ (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560))) & 281474976706560) =? 0))
              then (
                if (((- 2023424) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)) >? 0)
                then None
                else (
                  (Some (
                    (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)) |' 3)  ,
                    (st.[shared].[e_s2pts] :<
                      (((st.(shared)).(e_s2pts)) #
                        v_vmid ==
                        (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pmd_used_pages] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) + 1)).[e_pte_pool] :<
                          (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) #
                            (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560)) ==
                            (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)) |' 3)))))
                  ))))
              else (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) @ (((v_addr >> 27) & 4088) |' (v_pgd & 281474976706560))), st)))
            else None)))).

  Definition walk_pmd_spec (v_vmid: Z) (v_pgd: Z) (v_addr: Z) (v_alloc: Z) (st: RData) : (option (Z * RData)) :=
    if ((v_pgd & 281474976706560) =? 0)
    then (Some (0, st))
    else (
      rely (((((- 1) * v_vmid) <= 0) /\ (((- 18) + v_vmid) <= 0)));
      rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
      if (
        (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) - (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
          (((((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096)) <? 0)))
      then (
        if ((v_alloc =? 1) && (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) & 281474976706560) =? 0))
        then (
          if ((v_vmid =? 18) || (v_vmid =? 0))
          then (
            if (((- 31453184) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) >? 0)
            then None
            else (
              (Some (
                (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3)  ,
                (st.[shared].[e_s2pts] :<
                  (((st.(shared)).(e_s2pts)) #
                    v_vmid ==
                    (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pgd_pool] :<
                      (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) #
                        (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) ==
                        (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3))).[e_pte_used_pages] :<
                      (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) + 1))))
              ))))
          else (
            if (((- 6287360) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) >? 0)
            then None
            else (
              (Some (
                (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3)  ,
                (st.[shared].[e_s2pts] :<
                  (((st.(shared)).(e_s2pts)) #
                    v_vmid ==
                    (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pgd_pool] :<
                      (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) #
                        (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) ==
                        (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3))).[e_pte_used_pages] :<
                      (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) + 1))))
              )))))
        else (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))), st)))
      else (
        if (
          ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) - (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
            (((((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632)) <? 0)))
        then (
          if ((v_alloc =? 1) && (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) & 281474976706560) =? 0))
          then (
            if ((v_vmid =? 18) || (v_vmid =? 0))
            then (
              if (((- 31453184) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) >? 0)
              then None
              else (
                (Some (
                  (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3)  ,
                  (st.[shared].[e_s2pts] :<
                    (((st.(shared)).(e_s2pts)) #
                      v_vmid ==
                      (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pte_used_pages] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) + 1)).[e_pud_pool] :<
                        (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) #
                          (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) ==
                          (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3)))))
                ))))
            else (
              if (((- 6287360) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) >? 0)
              then None
              else (
                (Some (
                  (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3)  ,
                  (st.[shared].[e_s2pts] :<
                    (((st.(shared)).(e_s2pts)) #
                      v_vmid ==
                      (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pte_used_pages] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) + 1)).[e_pud_pool] :<
                        (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) #
                          (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) ==
                          (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3)))))
                )))))
          else (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))), st)))
        else (
          if (
            ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) - (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
              (((((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152)) <? 0)))
          then (
            if ((v_alloc =? 1) && (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) & 281474976706560) =? 0))
            then (
              if ((v_vmid =? 18) || (v_vmid =? 0))
              then (
                if (((- 31453184) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) >? 0)
                then None
                else (
                  (Some (
                    (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3)  ,
                    (st.[shared].[e_s2pts] :<
                      (((st.(shared)).(e_s2pts)) #
                        v_vmid ==
                        (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pmd_pool] :<
                          (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) #
                            (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) ==
                            (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3))).[e_pte_used_pages] :<
                          (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) + 1))))
                  ))))
              else (
                if (((- 6287360) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) >? 0)
                then None
                else (
                  (Some (
                    (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3)  ,
                    (st.[shared].[e_s2pts] :<
                      (((st.(shared)).(e_s2pts)) #
                        v_vmid ==
                        (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pmd_pool] :<
                          (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) #
                            (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) ==
                            (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3))).[e_pte_used_pages] :<
                          (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) + 1))))
                  )))))
            else (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))), st)))
          else (
            if (
              ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) - (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) <=? 0) &&
                (((((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 8388608)) <? 0)))
            then (
              if ((v_alloc =? 1) && (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))) & 281474976706560) =? 0))
              then (
                if ((v_vmid =? 18) || (v_vmid =? 0))
                then (
                  if (((- 31453184) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) >? 0)
                  then None
                  else (
                    (Some (
                      (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3)  ,
                      (st.[shared].[e_s2pts] :<
                        (((st.(shared)).(e_s2pts)) #
                          v_vmid ==
                          (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pte_pool] :<
                            (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) #
                              (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) ==
                              (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3))).[e_pte_used_pages] :<
                            (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) + 1))))
                    ))))
                else (
                  if (((- 6287360) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) >? 0)
                  then None
                  else (
                    (Some (
                      (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3)  ,
                      (st.[shared].[e_s2pts] :<
                        (((st.(shared)).(e_s2pts)) #
                          v_vmid ==
                          (((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pte_pool] :<
                            (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) #
                              (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560)) ==
                              (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)) |' 3))).[e_pte_used_pages] :<
                            (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) + 1))))
                    )))))
              else (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) @ (((v_addr >> 18) & 4088) |' (v_pgd & 281474976706560))), st)))
            else None)))).

End S2PTWalk_Spec.

#[global] Hint Unfold v_set_pmd_spec: spec.
#[global] Hint Unfold v_set_pte_spec: spec.
#[global] Hint Unfold walk_pte_spec: spec.
#[global] Hint Unfold walk_pgd_spec: spec.
#[global] Hint Unfold walk_pud_spec: spec.
#[global] Hint Unfold walk_pmd_spec: spec.
