Require Import CommonDeps.
Require Import DataTypes.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section GlobalDefs.

  Context `{int_ptr: IntPtrCast}.

  Definition CPU_ID  : Z :=
    0.

  Definition query_oracle (st: RData) : (option RData) :=
    let L := ((st.(oracle)) (st.(log))) in
    when new_sh == (((st.(repl)) (st.(shared)) L));
    (Some ((st.[shared] :< new_sh).[log] :< (L ++ (st.(log))))).

  Definition HOSTVISOR  : Z :=
    0.

  Definition COREVISOR  : Z :=
    18.

  Definition MAX_ADDR  : Z :=
    ((1 << 48) - 1).

  Definition MAX_PADDR  : Z :=
    ((1 << 40) - 1).

  Definition MAX_PFN  : Z :=
    ((1 << 28) - 1).

  Definition SMMU_NUM_CBNDX  : Z :=
    8.

  Definition SMMU_NUM_DEVICE  : Z :=
    2.

  Definition MAX_LOAD_IDX  : Z :=
    5.

  Definition VCPU_PER_VM  : Z :=
    4.

  Definition smmu_id (cbndx: Z) (index: Z) : Z :=
    ((index * SMMU_NUM_CBNDX) + cbndx).

  Definition context_id (v_vmid: Z) (v_vcpuid: Z) : Z :=
    ((v_vmid * VCPU_PER_VM) + v_vcpuid).

  Definition is_vmid (v_vmid: Z) : Prop :=
    ((HOSTVISOR <= v_vmid) /\ (v_vmid <= COREVISOR)).

  Definition is_vcpuid (v_vcpuid: Z) : Prop :=
    ((0 <= v_vcpuid) /\ (v_vcpuid < VCPU_PER_VM)).

  Definition is_paddr (v_addr: Z) : Prop :=
    ((0 <= v_addr) /\ (v_addr <= MAX_PADDR)).

  Definition is_addr (v_addr: Z) : Prop :=
    ((0 <= v_addr) /\ (v_addr <= MAX_ADDR)).

  Definition is_pfn (v_pfn: Z) : Prop :=
    ((0 <= v_pfn) /\ (v_pfn <= MAX_PFN)).

  Definition is_cbndx (v_cbndx: Z) : Prop :=
    ((0 <= v_cbndx) /\ (v_cbndx < SMMU_NUM_CBNDX)).

  Definition is_smmu_index (v_index: Z) : Prop :=
    ((0 <= v_index) /\ (v_index < SMMU_NUM_DEVICE)).

  Definition is_load_idx (v_load_idx: Z) : Prop :=
    ((0 <= v_load_idx) /\ (v_load_idx < MAX_LOAD_IDX)).

  Definition is_pgdp (v_addr: Z) (npt: Stage2PT) : bool :=
    (((npt.(e_page_pool_start)) <=? v_addr) && (v_addr <? ((npt.(e_page_pool_start)) + 4096))).

  Definition is_pudp (v_addr: Z) (npt: Stage2PT) : bool :=
    ((((npt.(e_page_pool_start)) + 4096) <=? v_addr) && (v_addr <? ((npt.(e_page_pool_start)) + (17 * 4096)))).

  Definition is_pmdp (v_addr: Z) (npt: Stage2PT) : bool :=
    ((((npt.(e_page_pool_start)) + (17 * 4096)) <=? v_addr) && (v_addr <? ((npt.(e_page_pool_start)) + (512 * 4096)))).

  Definition is_ptep (v_addr: Z) (npt: Stage2PT) : bool :=
    ((((npt.(e_page_pool_start)) + (512 * 4096)) <=? v_addr) && (v_addr <? ((npt.(e_page_pool_start)) + (2048 * 4096)))).

  Definition is_smmu_pgdp (v_addr: Z) (spts: SMMU_PT) : bool :=
    (v_addr <? (spts.(e_smmu_page_pool_start))).

  Definition is_smmu_pmdp (v_addr: Z) (spts: SMMU_PT) : bool :=
    (((spts.(e_smmu_page_pool_start)) <=? v_addr) && (v_addr <? ((spts.(e_smmu_page_pool_start)) + (256 * 4096)))).

  Definition is_smmu_ptep (v_addr: Z) (spts: SMMU_PT) : bool :=
    ((((spts.(e_smmu_page_pool_start)) + (256 * 4096)) <=? v_addr) && (v_addr <? ((spts.(e_smmu_page_pool_start)) + (4096 * 4096)))).

  Definition is_smmu_addr (v_addr: Z) (v_base: Z) : bool :=
    ((v_addr >=? v_base) && (v_addr <? (v_base + 65536))).

  Definition MPIDR_EL1  : Z :=
    1.

  Definition CSSELR_EL1  : Z :=
    2.

  Definition SCTLR_EL1  : Z :=
    3.

  Definition ACTLR_EL1  : Z :=
    4.

  Definition CPACR_EL1  : Z :=
    5.

  Definition ZCR_EL1  : Z :=
    6.

  Definition TTBR0_EL1  : Z :=
    7.

  Definition TTBR1_EL1  : Z :=
    8.

  Definition TCR_EL1  : Z :=
    9.

  Definition ESR_EL1  : Z :=
    10.

  Definition AFSR0_EL1  : Z :=
    11.

  Definition AFSR1_EL1  : Z :=
    12.

  Definition FAR_EL1  : Z :=
    13.

  Definition MAIR_EL1  : Z :=
    14.

  Definition VBAR_EL1  : Z :=
    15.

  Definition CONTEXTIDR_EL1  : Z :=
    16.

  Definition TPIDR_EL0  : Z :=
    17.

  Definition TPIDRRO_EL0  : Z :=
    18.

  Definition TPIDR_EL1  : Z :=
    19.

  Definition AMAIR_EL1  : Z :=
    20.

  Definition CNTKCTL_EL1  : Z :=
    21.

  Definition PAR_EL1  : Z :=
    22.

  Definition MDSCR_EL1  : Z :=
    23.

  Definition MDCCINT_EL1  : Z :=
    23.

  Definition DISR_EL1  : Z :=
    24.

  Definition PMCR_EL0  : Z :=
    25.

  Definition PMSELR_EL0  : Z :=
    26.

  Definition PMEVCNTR0_EL0  : Z :=
    27.

  Definition PMEVCNTR30_EL0  : Z :=
    57.

  Definition PMCCNTR_EL0  : Z :=
    58.

  Definition PMEVTYPER0_EL0  : Z :=
    59.

  Definition PMEVTYPER30_EL0  : Z :=
    89.

  Definition PMCCFILTR_EL0  : Z :=
    90.

  Definition PMCNTENSET_EL0  : Z :=
    91.

  Definition PMINTENSET_EL1  : Z :=
    92.

  Definition PMOVSSET_EL0  : Z :=
    93.

  Definition PMSWINC_EL0  : Z :=
    94.

  Definition PMUSERENR_EL0  : Z :=
    95.

  Definition APIAKEYLO_EL1  : Z :=
    96.

  Definition APIAKEYHI_EL1  : Z :=
    97.

  Definition APIBKEYLO_EL1  : Z :=
    98.

  Definition APIBKEYHI_EL1  : Z :=
    99.

  Definition APDAKEYLO_EL1  : Z :=
    100.

  Definition APDAKEYHI_EL1  : Z :=
    101.

  Definition APDBKEYLO_EL1  : Z :=
    102.

  Definition APDBKEYHI_EL1  : Z :=
    103.

  Definition APGAKEYLO_EL1  : Z :=
    104.

  Definition APGAKEYHI_EL1  : Z :=
    105.

  Definition DACR32_EL2  : Z :=
    106.

  Definition IFSR32_EL2  : Z :=
    107.

  Definition FPEXC32_EL2  : Z :=
    108.

  Definition DBGVCR32_EL2  : Z :=
    109.

  Definition NR_SYS_REGS  : Z :=
    110.

  Definition TTBR0_EL2  : Z :=
    1.

  Definition VTTBR_EL2  : Z :=
    2.

  Definition ESR_EL2  : Z :=
    3.

  Definition ELR_EL2  : Z :=
    4.

  Definition TPIDR_EL2  : Z :=
    5.

  Definition HCR_EL2  : Z :=
    6.

  Definition HPFAR_EL2  : Z :=
    7.

  Definition FAR_EL2  : Z :=
    8.

  Definition load_s_memblock_region (sz: Z) (ofs: Z) (st: s_memblock_region) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_base)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_size)))
      else (
        if (ofs =? 16)
        then (Some (st.(e_flags)))
        else None)).

  Definition store_s_memblock_region (sz: Z) (ofs: Z) (v: Z) (st: s_memblock_region) : (option s_memblock_region) :=
    if (ofs =? 0)
    then (Some (st.[e_base] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_size] :< v))
      else (
        if (ofs =? 16)
        then (Some (st.[e_flags] :< v))
        else None)).

  Definition load_s_s2_memblock_info (sz: Z) (ofs: Z) (st: s_s2_memblock_info) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_index)))
    else None.

  Definition store_s_s2_memblock_info (sz: Z) (ofs: Z) (v: Z) (st: s_s2_memblock_info) : (option s_s2_memblock_info) :=
    if (ofs =? 0)
    then (Some (st.[e_index] :< v))
    else None.

  Definition load_s_s2_cpu_arch (sz: Z) (ofs: Z) (st: s_s2_cpu_arch) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_host_hcr_el2)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_host_vttbr_el2)))
      else None).

  Definition store_s_s2_cpu_arch (sz: Z) (ofs: Z) (v: Z) (st: s_s2_cpu_arch) : (option s_s2_cpu_arch) :=
    if (ofs =? 0)
    then (Some (st.[e_host_hcr_el2] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_host_vttbr_el2] :< v))
      else None).

  Definition load_s_b_arch_spinlock_t (sz: Z) (ofs: Z) (st: s_b_arch_spinlock_t) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_lock)))
    else None.

  Definition store_s_b_arch_spinlock_t (sz: Z) (ofs: Z) (v: Z) (st: s_b_arch_spinlock_t) : (option s_b_arch_spinlock_t) :=
    if (ofs =? 0)
    then (Some (st.[e_lock] :< v))
    else None.

  Definition load_s_s2_page (sz: Z) (ofs: Z) (st: s_s2_page) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_count)))
    else (
      if (ofs =? 4)
      then (Some (st.(e_vmid)))
      else (
        if (ofs =? 8)
        then (Some (st.(e_gfn)))
        else None)).

  Definition store_s_s2_page (sz: Z) (ofs: Z) (v: Z) (st: s_s2_page) : (option s_s2_page) :=
    if (ofs =? 0)
    then (Some (st.[e_count] :< v))
    else (
      if (ofs =? 4)
      then (Some (st.[e_vmid] :< v))
      else (
        if (ofs =? 8)
        then (Some (st.[e_gfn] :< v))
        else None)).

  Definition load_s_user_fpsimd_state (sz: Z) (ofs: Z) (st: s_user_fpsimd_state) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 512))
    then (
      let idx := ((ofs - 0) / 16) in
      (Some ((st.(e_vregs)) @ idx)))
    else (
      if (ofs =? 512)
      then (Some (st.(e_fpsr)))
      else (
        if (ofs =? 516)
        then (Some (st.(e_fpcr)))
        else (
          if ((520 <=? ofs) && (ofs <? 528))
          then (
            let idx := ((ofs - 520) / 4) in
            (Some ((st.(e___reserved)) @ idx)))
          else None))).

  Definition store_s_user_fpsimd_state (sz: Z) (ofs: Z) (v: Z) (st: s_user_fpsimd_state) : (option s_user_fpsimd_state) :=
    if ((0 <=? ofs) && (ofs <? 512))
    then (
      let idx := ((ofs - 0) / 16) in
      (Some (st.[e_vregs] :< ((st.(e_vregs)) # idx == v))))
    else (
      if (ofs =? 512)
      then (Some (st.[e_fpsr] :< v))
      else (
        if (ofs =? 516)
        then (Some (st.[e_fpcr] :< v))
        else (
          if ((520 <=? ofs) && (ofs <? 528))
          then (
            let idx := ((ofs - 520) / 4) in
            (Some (st.[e___reserved] :< ((st.(e___reserved)) # idx == v))))
          else None))).

  Definition load_s_shadow_vcpu_context (sz: Z) (ofs: Z) (st: s_shadow_vcpu_context) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 328))
    then (
      let idx := ((ofs - 0) / 8) in
      (Some ((st.(e_regs)) @ idx)))
    else (
      if (ofs =? 328)
      then (Some (st.(e_far_el2)))
      else (
        if (ofs =? 336)
        then (Some (st.(e_hpfar)))
        else (
          if (ofs =? 344)
          then (Some (st.(e_hcr_el2)))
          else (
            if (ofs =? 352)
            then (Some (st.(e_ec)))
            else (
              if (ofs =? 360)
              then (Some (st.(e_dirty)))
              else (
                if (ofs =? 368)
                then (Some (st.(e__flags)))
                else (
                  if ((376 <=? ofs) && (ofs <? 1264))
                  then (
                    let idx := ((ofs - 376) / 8) in
                    (Some ((st.(e_sys_regs)) @ idx)))
                  else (
                    if ((1264 <=? ofs) && (ofs <? 1792))
                    then (
                      let elem_ofs := (ofs - 1264) in
                      (load_s_user_fpsimd_state sz elem_ofs (st.(e_fp_regs))))
                    else (
                      if (ofs =? 1792)
                      then (Some (st.(e_esr)))
                      else (
                        if (ofs =? 1796)
                        then (Some (st.(e__vmid)))
                        else None)))))))))).

  Definition store_s_shadow_vcpu_context (sz: Z) (ofs: Z) (v: Z) (st: s_shadow_vcpu_context) : (option s_shadow_vcpu_context) :=
    if ((0 <=? ofs) && (ofs <? 328))
    then (
      let idx := ((ofs - 0) / 8) in
      (Some (st.[e_regs] :< ((st.(e_regs)) # idx == v))))
    else (
      if (ofs =? 328)
      then (Some (st.[e_far_el2] :< v))
      else (
        if (ofs =? 336)
        then (Some (st.[e_hpfar] :< v))
        else (
          if (ofs =? 344)
          then (Some (st.[e_hcr_el2] :< v))
          else (
            if (ofs =? 352)
            then (Some (st.[e_ec] :< v))
            else (
              if (ofs =? 360)
              then (Some (st.[e_dirty] :< v))
              else (
                if (ofs =? 368)
                then (Some (st.[e__flags] :< v))
                else (
                  if ((376 <=? ofs) && (ofs <? 1264))
                  then (
                    let idx := ((ofs - 376) / 8) in
                    (Some (st.[e_sys_regs] :< ((st.(e_sys_regs)) # idx == v))))
                  else (
                    if ((1264 <=? ofs) && (ofs <? 1792))
                    then (
                      let elem_ofs := (ofs - 1264) in
                      when ret == ((store_s_user_fpsimd_state sz elem_ofs v (st.(e_fp_regs))));
                      (Some (st.[e_fp_regs] :< ret)))
                    else (
                      if (ofs =? 1792)
                      then (Some (st.[e_esr] :< v))
                      else (
                        if (ofs =? 1796)
                        then (Some (st.[e__vmid] :< v))
                        else None)))))))))).

  Definition load_s_s2_sys_reg_desc (sz: Z) (ofs: Z) (st: s_s2_sys_reg_desc) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_Op0)))
    else (
      if (ofs =? 1)
      then (Some (st.(e_Op1)))
      else (
        if (ofs =? 2)
        then (Some (st.(e_CRn)))
        else (
          if (ofs =? 3)
          then (Some (st.(e_CRm)))
          else (
            if (ofs =? 4)
            then (Some (st.(e_Op2)))
            else (
              if (ofs =? 8)
              then (Some (st.(e_reg)))
              else (
                if (ofs =? 16)
                then (Some (st.(e_val)))
                else None)))))).

  Definition store_s_s2_sys_reg_desc (sz: Z) (ofs: Z) (v: Z) (st: s_s2_sys_reg_desc) : (option s_s2_sys_reg_desc) :=
    if (ofs =? 0)
    then (Some (st.[e_Op0] :< v))
    else (
      if (ofs =? 1)
      then (Some (st.[e_Op1] :< v))
      else (
        if (ofs =? 2)
        then (Some (st.[e_CRn] :< v))
        else (
          if (ofs =? 3)
          then (Some (st.[e_CRm] :< v))
          else (
            if (ofs =? 4)
            then (Some (st.[e_Op2] :< v))
            else (
              if (ofs =? 8)
              then (Some (st.[e_reg] :< v))
              else (
                if (ofs =? 16)
                then (Some (st.[e_val] :< v))
                else None)))))).

  Definition load_s_el2_load_info (sz: Z) (ofs: Z) (st: s_el2_load_info) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_load_addr)))
    else (
      if (ofs =? 8)
      then (Some (st.(e__size)))
      else (
        if (ofs =? 16)
        then (Some (st.(e_el2_remap_addr)))
        else (
          if (ofs =? 24)
          then (Some (st.(e_el2_mapped_pages)))
          else (
            if ((28 <=? ofs) && (ofs <? 92))
            then (
              let idx := ((ofs - 28) / 1) in
              (Some ((st.(e_signature)) @ idx)))
            else None)))).

  Definition store_s_el2_load_info (sz: Z) (ofs: Z) (v: Z) (st: s_el2_load_info) : (option s_el2_load_info) :=
    if (ofs =? 0)
    then (Some (st.[e_load_addr] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e__size] :< v))
      else (
        if (ofs =? 16)
        then (Some (st.[e_el2_remap_addr] :< v))
        else (
          if (ofs =? 24)
          then (Some (st.[e_el2_mapped_pages] :< v))
          else (
            if ((28 <=? ofs) && (ofs <? 92))
            then (
              let idx := ((ofs - 28) / 1) in
              (Some (st.[e_signature] :< ((st.(e_signature)) # idx == v))))
            else None)))).

  Definition load_s_int_vcpu (sz: Z) (ofs: Z) (st: s_int_vcpu) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_vcpu)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_vcpu_pg_cnt)))
      else (
        if (ofs =? 12)
        then (Some (st.(e_state)))
        else (
          if (ofs =? 16)
          then (Some (st.(e_ctxtid)))
          else None))).

  Definition store_s_int_vcpu (sz: Z) (ofs: Z) (v: Z) (st: s_int_vcpu) : (option s_int_vcpu) :=
    if (ofs =? 0)
    then (Some (st.[e_vcpu] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_vcpu_pg_cnt] :< v))
      else (
        if (ofs =? 12)
        then (Some (st.[e_state] :< v))
        else (
          if (ofs =? 16)
          then (Some (st.[e_ctxtid] :< v))
          else None))).

  Definition load_s_el2_arm_smmu_device (sz: Z) (ofs: Z) (st: s_el2_arm_smmu_device) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_phys_base)))
    else (
      if (ofs =? 8)
      then (Some (st.(e___size)))
      else (
        if (ofs =? 16)
        then (Some (st.(e_pgshift)))
        else (
          if (ofs =? 24)
          then (Some (st.(e_features)))
          else (
            if (ofs =? 28)
            then (Some (st.(e_num_context_banks)))
            else (
              if (ofs =? 32)
              then (Some (st.(e_num_s2_context_banks)))
              else (
                if (ofs =? 36)
                then (Some (st.(e_num_mapping_groups)))
                else (
                  if (ofs =? 40)
                  then (Some (st.(e_va_size)))
                  else (
                    if (ofs =? 48)
                    then (Some (st.(e_ipa_size)))
                    else (
                      if (ofs =? 56)
                      then (Some (st.(e_pa_size)))
                      else (
                        if (ofs =? 64)
                        then (Some (st.(e_num_global_irqs)))
                        else (
                          if (ofs =? 68)
                          then (Some (st.(e_num_context_irqs)))
                          else (
                            if (ofs =? 72)
                            then (Some (st.(e_exists)))
                            else (
                              if (ofs =? 80)
                              then (Some (st.(e_hyp_base)))
                              else (
                                if (ofs =? 88)
                                then (Some (st.(e__index)))
                                else None)))))))))))))).

  Definition store_s_el2_arm_smmu_device (sz: Z) (ofs: Z) (v: Z) (st: s_el2_arm_smmu_device) : (option s_el2_arm_smmu_device) :=
    if (ofs =? 0)
    then (Some (st.[e_phys_base] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e___size] :< v))
      else (
        if (ofs =? 16)
        then (Some (st.[e_pgshift] :< v))
        else (
          if (ofs =? 24)
          then (Some (st.[e_features] :< v))
          else (
            if (ofs =? 28)
            then (Some (st.[e_num_context_banks] :< v))
            else (
              if (ofs =? 32)
              then (Some (st.[e_num_s2_context_banks] :< v))
              else (
                if (ofs =? 36)
                then (Some (st.[e_num_mapping_groups] :< v))
                else (
                  if (ofs =? 40)
                  then (Some (st.[e_va_size] :< v))
                  else (
                    if (ofs =? 48)
                    then (Some (st.[e_ipa_size] :< v))
                    else (
                      if (ofs =? 56)
                      then (Some (st.[e_pa_size] :< v))
                      else (
                        if (ofs =? 64)
                        then (Some (st.[e_num_global_irqs] :< v))
                        else (
                          if (ofs =? 68)
                          then (Some (st.[e_num_context_irqs] :< v))
                          else (
                            if (ofs =? 72)
                            then (Some (st.[e_exists] :< v))
                            else (
                              if (ofs =? 80)
                              then (Some (st.[e_hyp_base] :< v))
                              else (
                                if (ofs =? 88)
                                then (Some (st.[e__index] :< v))
                                else None)))))))))))))).

  Definition load_s_user_pt_regs (sz: Z) (ofs: Z) (st: s_user_pt_regs) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 248))
    then (
      let idx := ((ofs - 0) / 8) in
      (Some ((st.(e__regs)) @ idx)))
    else (
      if (ofs =? 248)
      then (Some (st.(e_sp)))
      else (
        if (ofs =? 256)
        then (Some (st.(e_pc)))
        else (
          if (ofs =? 264)
          then (Some (st.(e_pstate)))
          else None))).

  Definition store_s_user_pt_regs (sz: Z) (ofs: Z) (v: Z) (st: s_user_pt_regs) : (option s_user_pt_regs) :=
    if ((0 <=? ofs) && (ofs <? 248))
    then (
      let idx := ((ofs - 0) / 8) in
      (Some (st.[e__regs] :< ((st.(e__regs)) # idx == v))))
    else (
      if (ofs =? 248)
      then (Some (st.[e_sp] :< v))
      else (
        if (ofs =? 256)
        then (Some (st.[e_pc] :< v))
        else (
          if (ofs =? 264)
          then (Some (st.[e_pstate] :< v))
          else None))).

  Definition load_s_kvm_regs (sz: Z) (ofs: Z) (st: s_kvm_regs) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 272))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_user_pt_regs sz elem_ofs (st.(e___regs))))
    else (
      if (ofs =? 272)
      then (Some (st.(e_sp_el1)))
      else (
        if (ofs =? 280)
        then (Some (st.(e_elr_el1)))
        else (
          if ((288 <=? ofs) && (ofs <? 328))
          then (
            let idx := ((ofs - 288) / 8) in
            (Some ((st.(e_spsr)) @ idx)))
          else (
            if ((336 <=? ofs) && (ofs <? 864))
            then (
              let elem_ofs := (ofs - 336) in
              (load_s_user_fpsimd_state sz elem_ofs (st.(e__fp_regs))))
            else None)))).

  Definition store_s_kvm_regs (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_regs) : (option s_kvm_regs) :=
    if ((0 <=? ofs) && (ofs <? 272))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_user_pt_regs sz elem_ofs v (st.(e___regs))));
      (Some (st.[e___regs] :< ret)))
    else (
      if (ofs =? 272)
      then (Some (st.[e_sp_el1] :< v))
      else (
        if (ofs =? 280)
        then (Some (st.[e_elr_el1] :< v))
        else (
          if ((288 <=? ofs) && (ofs <? 328))
          then (
            let idx := ((ofs - 288) / 8) in
            (Some (st.[e_spsr] :< ((st.(e_spsr)) # idx == v))))
          else (
            if ((336 <=? ofs) && (ofs <? 864))
            then (
              let elem_ofs := (ofs - 336) in
              when ret == ((store_s_user_fpsimd_state sz elem_ofs v (st.(e__fp_regs))));
              (Some (st.[e__fp_regs] :< ret)))
            else None)))).

  Definition load_s_kvm_cpu_context (sz: Z) (ofs: Z) (st: s_kvm_cpu_context) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 864))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_kvm_regs sz elem_ofs (st.(e_gp_regs))))
    else (
      if ((864 <=? ofs) && (ofs <? 1752))
      then (
        let idx := ((ofs - 864) / 8) in
        (Some ((st.(e__sys_regs)) @ idx)))
      else (
        if (ofs =? 1752)
        then (Some (st.(e___hyp_running_vcpu)))
        else None)).

  Definition store_s_kvm_cpu_context (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_cpu_context) : (option s_kvm_cpu_context) :=
    if ((0 <=? ofs) && (ofs <? 864))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_kvm_regs sz elem_ofs v (st.(e_gp_regs))));
      (Some (st.[e_gp_regs] :< ret)))
    else (
      if ((864 <=? ofs) && (ofs <? 1752))
      then (
        let idx := ((ofs - 864) / 8) in
        (Some (st.[e__sys_regs] :< ((st.(e__sys_regs)) # idx == v))))
      else (
        if (ofs =? 1752)
        then (Some (st.[e___hyp_running_vcpu] :< v))
        else None)).

  Definition load_s_el2_per_cpu_data (sz: Z) (ofs: Z) (st: s_el2_per_cpu_data) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_____vmid)))
    else (
      if (ofs =? 4)
      then (Some (st.(e_vcpu_id)))
      else (
        if ((16 <=? ofs) && (ofs <? 1776))
        then (
          let elem_ofs := (ofs - 16) in
          (load_s_kvm_cpu_context sz elem_ofs (st.(e_core_ctxt))))
        else (
          if (ofs =? 1776)
          then (Some (st.(e_host_regs)))
          else None))).

  Definition store_s_el2_per_cpu_data (sz: Z) (ofs: Z) (v: Z) (st: s_el2_per_cpu_data) : (option s_el2_per_cpu_data) :=
    if (ofs =? 0)
    then (Some (st.[e_____vmid] :< v))
    else (
      if (ofs =? 4)
      then (Some (st.[e_vcpu_id] :< v))
      else (
        if ((16 <=? ofs) && (ofs <? 1776))
        then (
          let elem_ofs := (ofs - 16) in
          when ret == ((store_s_kvm_cpu_context sz elem_ofs v (st.(e_core_ctxt))));
          (Some (st.[e_core_ctxt] :< ret)))
        else (
          if (ofs =? 1776)
          then (Some (st.[e_host_regs] :< v))
          else None))).

  Definition load_s_atomic_t (sz: Z) (ofs: Z) (st: s_atomic_t) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_counter)))
    else None.

  Definition store_s_atomic_t (sz: Z) (ofs: Z) (v: Z) (st: s_atomic_t) : (option s_atomic_t) :=
    if (ofs =? 0)
    then (Some (st.[e_counter] :< v))
    else None.

  Definition load_u_anon_1 (sz: Z) (ofs: Z) (st: u_anon_1) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_atomic_t sz elem_ofs (st.(e__val))))
    else None.

  Definition store_u_anon_1 (sz: Z) (ofs: Z) (v: Z) (st: u_anon_1) : (option u_anon_1) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_atomic_t sz elem_ofs v (st.(e__val))));
      (Some (st.[e__val] :< ret)))
    else None.

  Definition load_s_qspinlock (sz: Z) (ofs: Z) (st: s_qspinlock) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_u_anon_1 sz elem_ofs (st.(e_qspinlock_0))))
    else None.

  Definition store_s_qspinlock (sz: Z) (ofs: Z) (v: Z) (st: s_qspinlock) : (option s_qspinlock) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_u_anon_1 sz elem_ofs v (st.(e_qspinlock_0))));
      (Some (st.[e_qspinlock_0] :< ret)))
    else None.

  Definition load_s_raw_spinlock (sz: Z) (ofs: Z) (st: s_raw_spinlock) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_qspinlock sz elem_ofs (st.(e_raw_lock))))
    else None.

  Definition store_s_raw_spinlock (sz: Z) (ofs: Z) (v: Z) (st: s_raw_spinlock) : (option s_raw_spinlock) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_qspinlock sz elem_ofs v (st.(e_raw_lock))));
      (Some (st.[e_raw_lock] :< ret)))
    else None.

  Definition load_u_anon_0 (sz: Z) (ofs: Z) (st: u_anon_0) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_raw_spinlock sz elem_ofs (st.(e_rlock))))
    else None.

  Definition store_u_anon_0 (sz: Z) (ofs: Z) (v: Z) (st: u_anon_0) : (option u_anon_0) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_raw_spinlock sz elem_ofs v (st.(e_rlock))));
      (Some (st.[e_rlock] :< ret)))
    else None.

  Definition load_s_spinlock (sz: Z) (ofs: Z) (st: s_spinlock) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_u_anon_0 sz elem_ofs (st.(e_spinlock_0))))
    else None.

  Definition store_s_spinlock (sz: Z) (ofs: Z) (v: Z) (st: s_spinlock) : (option s_spinlock) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_u_anon_0 sz elem_ofs v (st.(e_spinlock_0))));
      (Some (st.[e_spinlock_0] :< ret)))
    else None.

  Definition load_s_atomic64_t (sz: Z) (ofs: Z) (st: s_atomic64_t) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e__counter)))
    else None.

  Definition store_s_atomic64_t (sz: Z) (ofs: Z) (v: Z) (st: s_atomic64_t) : (option s_atomic64_t) :=
    if (ofs =? 0)
    then (Some (st.[e__counter] :< v))
    else None.

  Definition load_s_optimistic_spin_queue (sz: Z) (ofs: Z) (st: s_optimistic_spin_queue) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_atomic_t sz elem_ofs (st.(e_tail))))
    else None.

  Definition store_s_optimistic_spin_queue (sz: Z) (ofs: Z) (v: Z) (st: s_optimistic_spin_queue) : (option s_optimistic_spin_queue) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_atomic_t sz elem_ofs v (st.(e_tail))));
      (Some (st.[e_tail] :< ret)))
    else None.

  Definition load_s_list_head (sz: Z) (ofs: Z) (st: s_list_head) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_next)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_prev)))
      else None).

  Definition store_s_list_head (sz: Z) (ofs: Z) (v: Z) (st: s_list_head) : (option s_list_head) :=
    if (ofs =? 0)
    then (Some (st.[e_next] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_prev] :< v))
      else None).

  Definition load_s_mutex (sz: Z) (ofs: Z) (st: s_mutex) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 8))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_atomic64_t sz elem_ofs (st.(e_owner))))
    else (
      if ((8 <=? ofs) && (ofs <? 12))
      then (
        let elem_ofs := (ofs - 8) in
        (load_s_spinlock sz elem_ofs (st.(e_wait_lock))))
      else (
        if ((12 <=? ofs) && (ofs <? 16))
        then (
          let elem_ofs := (ofs - 12) in
          (load_s_optimistic_spin_queue sz elem_ofs (st.(e_osq))))
        else (
          if ((16 <=? ofs) && (ofs <? 32))
          then (
            let elem_ofs := (ofs - 16) in
            (load_s_list_head sz elem_ofs (st.(e_wait_list))))
          else None))).

  Definition store_s_mutex (sz: Z) (ofs: Z) (v: Z) (st: s_mutex) : (option s_mutex) :=
    if ((0 <=? ofs) && (ofs <? 8))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_atomic64_t sz elem_ofs v (st.(e_owner))));
      (Some (st.[e_owner] :< ret)))
    else (
      if ((8 <=? ofs) && (ofs <? 12))
      then (
        let elem_ofs := (ofs - 8) in
        when ret == ((store_s_spinlock sz elem_ofs v (st.(e_wait_lock))));
        (Some (st.[e_wait_lock] :< ret)))
      else (
        if ((12 <=? ofs) && (ofs <? 16))
        then (
          let elem_ofs := (ofs - 12) in
          when ret == ((store_s_optimistic_spin_queue sz elem_ofs v (st.(e_osq))));
          (Some (st.[e_osq] :< ret)))
        else (
          if ((16 <=? ofs) && (ofs <? 32))
          then (
            let elem_ofs := (ofs - 16) in
            when ret == ((store_s_list_head sz elem_ofs v (st.(e_wait_list))));
            (Some (st.[e_wait_list] :< ret)))
          else None))).

  Definition load_s_anon_124 (sz: Z) (ofs: Z) (st: s_anon_124) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_spinlock sz elem_ofs (st.(e__lock))))
    else (
      if ((8 <=? ofs) && (ofs <? 24))
      then (
        let elem_ofs := (ofs - 8) in
        (load_s_list_head sz elem_ofs (st.(e_items))))
      else (
        if ((24 <=? ofs) && (ofs <? 40))
        then (
          let elem_ofs := (ofs - 24) in
          (load_s_list_head sz elem_ofs (st.(e_resampler_list))))
        else (
          if ((40 <=? ofs) && (ofs <? 72))
          then (
            let elem_ofs := (ofs - 40) in
            (load_s_mutex sz elem_ofs (st.(e_resampler_lock))))
          else None))).

  Definition store_s_anon_124 (sz: Z) (ofs: Z) (v: Z) (st: s_anon_124) : (option s_anon_124) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_spinlock sz elem_ofs v (st.(e__lock))));
      (Some (st.[e__lock] :< ret)))
    else (
      if ((8 <=? ofs) && (ofs <? 24))
      then (
        let elem_ofs := (ofs - 8) in
        when ret == ((store_s_list_head sz elem_ofs v (st.(e_items))));
        (Some (st.[e_items] :< ret)))
      else (
        if ((24 <=? ofs) && (ofs <? 40))
        then (
          let elem_ofs := (ofs - 24) in
          when ret == ((store_s_list_head sz elem_ofs v (st.(e_resampler_list))));
          (Some (st.[e_resampler_list] :< ret)))
        else (
          if ((40 <=? ofs) && (ofs <? 72))
          then (
            let elem_ofs := (ofs - 40) in
            when ret == ((store_s_mutex sz elem_ofs v (st.(e_resampler_lock))));
            (Some (st.[e_resampler_lock] :< ret)))
          else None))).

  Definition load_s_kvm_vm_stat (sz: Z) (ofs: Z) (st: s_kvm_vm_stat) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_remote_tlb_flush)))
    else None.

  Definition store_s_kvm_vm_stat (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_vm_stat) : (option s_kvm_vm_stat) :=
    if (ofs =? 0)
    then (Some (st.[e_remote_tlb_flush] :< v))
    else None.

  Definition load_s_kvm_vmid (sz: Z) (ofs: Z) (st: s_kvm_vmid) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_vmid_gen)))
    else (
      if (ofs =? 8)
      then (Some (st.(e______vmid)))
      else None).

  Definition store_s_kvm_vmid (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_vmid) : (option s_kvm_vmid) :=
    if (ofs =? 0)
    then (Some (st.[e_vmid_gen] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e______vmid] :< v))
      else None).

  Definition load_u_anon_125 (sz: Z) (ofs: Z) (st: u_anon_125) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 16))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_list_head sz elem_ofs (st.(e__vgic_cpu_base))))
    else None.

  Definition store_u_anon_125 (sz: Z) (ofs: Z) (v: Z) (st: u_anon_125) : (option u_anon_125) :=
    if ((0 <=? ofs) && (ofs <? 16))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_list_head sz elem_ofs v (st.(e__vgic_cpu_base))));
      (Some (st.[e__vgic_cpu_base] :< ret)))
    else None.

  Definition load_u_anon_121 (sz: Z) (ofs: Z) (st: u_anon_121) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_redist_vcpu)))
    else None.

  Definition store_u_anon_121 (sz: Z) (ofs: Z) (v: Z) (st: u_anon_121) : (option u_anon_121) :=
    if (ofs =? 0)
    then (Some (st.[e_redist_vcpu] :< v))
    else None.

  Definition load_s_kvm_io_device (sz: Z) (ofs: Z) (st: s_kvm_io_device) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_ops)))
    else None.

  Definition store_s_kvm_io_device (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_io_device) : (option s_kvm_io_device) :=
    if (ofs =? 0)
    then (Some (st.[e_ops] :< v))
    else None.

  Definition load_s_vgic_io_device (sz: Z) (ofs: Z) (st: s_vgic_io_device) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_base_addr)))
    else (
      if ((8 <=? ofs) && (ofs <? 16))
      then (
        let elem_ofs := (ofs - 8) in
        (load_u_anon_121 sz elem_ofs (st.(e_vgic_io_device_1))))
      else (
        if (ofs =? 16)
        then (Some (st.(e__regions)))
        else (
          if (ofs =? 24)
          then (Some (st.(e_iodev_type)))
          else (
            if (ofs =? 28)
            then (Some (st.(e_nr_regions)))
            else (
              if ((32 <=? ofs) && (ofs <? 40))
              then (
                let elem_ofs := (ofs - 32) in
                (load_s_kvm_io_device sz elem_ofs (st.(e_dev))))
              else None))))).

  Definition store_s_vgic_io_device (sz: Z) (ofs: Z) (v: Z) (st: s_vgic_io_device) : (option s_vgic_io_device) :=
    if (ofs =? 0)
    then (Some (st.[e_base_addr] :< v))
    else (
      if ((8 <=? ofs) && (ofs <? 16))
      then (
        let elem_ofs := (ofs - 8) in
        when ret == ((store_u_anon_121 sz elem_ofs v (st.(e_vgic_io_device_1))));
        (Some (st.[e_vgic_io_device_1] :< ret)))
      else (
        if (ofs =? 16)
        then (Some (st.[e__regions] :< v))
        else (
          if (ofs =? 24)
          then (Some (st.[e_iodev_type] :< v))
          else (
            if (ofs =? 28)
            then (Some (st.[e_nr_regions] :< v))
            else (
              if ((32 <=? ofs) && (ofs <? 40))
              then (
                let elem_ofs := (ofs - 32) in
                when ret == ((store_s_kvm_io_device sz elem_ofs v (st.(e_dev))));
                (Some (st.[e_dev] :< ret)))
              else None))))).

  Definition load_s_its_vm (sz: Z) (ofs: Z) (st: s_its_vm) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_fwnode)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_domain)))
      else (
        if (ofs =? 16)
        then (Some (st.(e_vprop_page)))
        else (
          if (ofs =? 24)
          then (Some (st.(e_vpes)))
          else (
            if (ofs =? 32)
            then (Some (st.(e_nr_vpes)))
            else (
              if (ofs =? 40)
              then (Some (st.(e_db_lpi_base)))
              else (
                if (ofs =? 48)
                then (Some (st.(e_db_bitmap)))
                else (
                  if (ofs =? 56)
                  then (Some (st.(e_nr_db_lpis)))
                  else (
                    if ((60 <=? ofs) && (ofs <? 124))
                    then (
                      let idx := ((ofs - 60) / 4) in
                      (Some ((st.(e_vlpi_count)) @ idx)))
                    else None)))))))).

  Definition store_s_its_vm (sz: Z) (ofs: Z) (v: Z) (st: s_its_vm) : (option s_its_vm) :=
    if (ofs =? 0)
    then (Some (st.[e_fwnode] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_domain] :< v))
      else (
        if (ofs =? 16)
        then (Some (st.[e_vprop_page] :< v))
        else (
          if (ofs =? 24)
          then (Some (st.[e_vpes] :< v))
          else (
            if (ofs =? 32)
            then (Some (st.[e_nr_vpes] :< v))
            else (
              if (ofs =? 40)
              then (Some (st.[e_db_lpi_base] :< v))
              else (
                if (ofs =? 48)
                then (Some (st.[e_db_bitmap] :< v))
                else (
                  if (ofs =? 56)
                  then (Some (st.[e_nr_db_lpis] :< v))
                  else (
                    if ((60 <=? ofs) && (ofs <? 124))
                    then (
                      let idx := ((ofs - 60) / 4) in
                      (Some (st.[e_vlpi_count] :< ((st.(e_vlpi_count)) # idx == v))))
                    else None)))))))).

  Definition load_s_vgic_dist (sz: Z) (ofs: Z) (st: s_vgic_dist) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_in_kernel)))
    else (
      if (ofs =? 1)
      then (Some (st.(e_ready)))
      else (
        if (ofs =? 2)
        then (Some (st.(e_initialized)))
        else (
          if (ofs =? 4)
          then (Some (st.(e_vgic_model)))
          else (
            if (ofs =? 8)
            then (Some (st.(e_implementation_rev)))
            else (
              if (ofs =? 12)
              then (Some (st.(e_v2_groups_user_writable)))
              else (
                if (ofs =? 13)
                then (Some (st.(e_msis_require_devid)))
                else (
                  if (ofs =? 16)
                  then (Some (st.(e_nr_spis)))
                  else (
                    if (ofs =? 24)
                    then (Some (st.(e_vgic_dist_base)))
                    else (
                      if ((32 <=? ofs) && (ofs <? 48))
                      then (
                        let elem_ofs := (ofs - 32) in
                        (load_u_anon_125 sz elem_ofs (st.(e_vgic_dist_9))))
                      else (
                        if (ofs =? 48)
                        then (Some (st.(e_enabled)))
                        else (
                          if (ofs =? 56)
                          then (Some (st.(e_spis)))
                          else (
                            if ((64 <=? ofs) && (ofs <? 104))
                            then (
                              let elem_ofs := (ofs - 64) in
                              (load_s_vgic_io_device sz elem_ofs (st.(e_dist_iodev))))
                            else (
                              if (ofs =? 104)
                              then (Some (st.(e_has_its)))
                              else (
                                if (ofs =? 112)
                                then (Some (st.(e_propbaser)))
                                else (
                                  if ((120 <=? ofs) && (ofs <? 124))
                                  then (
                                    let elem_ofs := (ofs - 120) in
                                    (load_s_raw_spinlock sz elem_ofs (st.(e_lpi_list_lock))))
                                  else (
                                    if ((128 <=? ofs) && (ofs <? 144))
                                    then (
                                      let elem_ofs := (ofs - 128) in
                                      (load_s_list_head sz elem_ofs (st.(e_lpi_list_head))))
                                    else (
                                      if (ofs =? 144)
                                      then (Some (st.(e_lpi_list_count)))
                                      else (
                                        if ((152 <=? ofs) && (ofs <? 168))
                                        then (
                                          let elem_ofs := (ofs - 152) in
                                          (load_s_list_head sz elem_ofs (st.(e_lpi_translation_cache))))
                                        else (
                                          if (ofs =? 168)
                                          then (Some (st.(e_iter)))
                                          else (
                                            if ((176 <=? ofs) && (ofs <? 304))
                                            then (
                                              let elem_ofs := (ofs - 176) in
                                              (load_s_its_vm sz elem_ofs (st.(e_its_vm))))
                                            else None)))))))))))))))))))).

  Definition store_s_vgic_dist (sz: Z) (ofs: Z) (v: Z) (st: s_vgic_dist) : (option s_vgic_dist) :=
    if (ofs =? 0)
    then (Some (st.[e_in_kernel] :< v))
    else (
      if (ofs =? 1)
      then (Some (st.[e_ready] :< v))
      else (
        if (ofs =? 2)
        then (Some (st.[e_initialized] :< v))
        else (
          if (ofs =? 4)
          then (Some (st.[e_vgic_model] :< v))
          else (
            if (ofs =? 8)
            then (Some (st.[e_implementation_rev] :< v))
            else (
              if (ofs =? 12)
              then (Some (st.[e_v2_groups_user_writable] :< v))
              else (
                if (ofs =? 13)
                then (Some (st.[e_msis_require_devid] :< v))
                else (
                  if (ofs =? 16)
                  then (Some (st.[e_nr_spis] :< v))
                  else (
                    if (ofs =? 24)
                    then (Some (st.[e_vgic_dist_base] :< v))
                    else (
                      if ((32 <=? ofs) && (ofs <? 48))
                      then (
                        let elem_ofs := (ofs - 32) in
                        when ret == ((store_u_anon_125 sz elem_ofs v (st.(e_vgic_dist_9))));
                        (Some (st.[e_vgic_dist_9] :< ret)))
                      else (
                        if (ofs =? 48)
                        then (Some (st.[e_enabled] :< v))
                        else (
                          if (ofs =? 56)
                          then (Some (st.[e_spis] :< v))
                          else (
                            if ((64 <=? ofs) && (ofs <? 104))
                            then (
                              let elem_ofs := (ofs - 64) in
                              when ret == ((store_s_vgic_io_device sz elem_ofs v (st.(e_dist_iodev))));
                              (Some (st.[e_dist_iodev] :< ret)))
                            else (
                              if (ofs =? 104)
                              then (Some (st.[e_has_its] :< v))
                              else (
                                if (ofs =? 112)
                                then (Some (st.[e_propbaser] :< v))
                                else (
                                  if ((120 <=? ofs) && (ofs <? 124))
                                  then (
                                    let elem_ofs := (ofs - 120) in
                                    when ret == ((store_s_raw_spinlock sz elem_ofs v (st.(e_lpi_list_lock))));
                                    (Some (st.[e_lpi_list_lock] :< ret)))
                                  else (
                                    if ((128 <=? ofs) && (ofs <? 144))
                                    then (
                                      let elem_ofs := (ofs - 128) in
                                      when ret == ((store_s_list_head sz elem_ofs v (st.(e_lpi_list_head))));
                                      (Some (st.[e_lpi_list_head] :< ret)))
                                    else (
                                      if (ofs =? 144)
                                      then (Some (st.[e_lpi_list_count] :< v))
                                      else (
                                        if ((152 <=? ofs) && (ofs <? 168))
                                        then (
                                          let elem_ofs := (ofs - 152) in
                                          when ret == ((store_s_list_head sz elem_ofs v (st.(e_lpi_translation_cache))));
                                          (Some (st.[e_lpi_translation_cache] :< ret)))
                                        else (
                                          if (ofs =? 168)
                                          then (Some (st.[e_iter] :< v))
                                          else (
                                            if ((176 <=? ofs) && (ofs <? 304))
                                            then (
                                              let elem_ofs := (ofs - 176) in
                                              when ret == ((store_s_its_vm sz elem_ofs v (st.(e_its_vm))));
                                              (Some (st.[e_its_vm] :< ret)))
                                            else None)))))))))))))))))))).

  Definition load_s_kvm_arch (sz: Z) (ofs: Z) (st: s_kvm_arch) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 16))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_kvm_vmid sz elem_ofs (st.(e_______vmid))))
    else (
      if (ofs =? 16)
      then (Some (st.(e_pgd)))
      else (
        if (ofs =? 24)
        then (Some (st.(e_pgd_phys)))
        else (
          if (ofs =? 32)
          then (Some (st.(e_vtcr)))
          else (
            if (ofs =? 40)
            then (Some (st.(e_last_vcpu_ran)))
            else (
              if (ofs =? 48)
              then (Some (st.(e_max_vcpus)))
              else (
                if ((56 <=? ofs) && (ofs <? 360))
                then (
                  let elem_ofs := (ofs - 56) in
                  (load_s_vgic_dist sz elem_ofs (st.(e_vgic))))
                else (
                  if (ofs =? 360)
                  then (Some (st.(e_psci_version)))
                  else None))))))).

  Definition store_s_kvm_arch (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_arch) : (option s_kvm_arch) :=
    if ((0 <=? ofs) && (ofs <? 16))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_kvm_vmid sz elem_ofs v (st.(e_______vmid))));
      (Some (st.[e_______vmid] :< ret)))
    else (
      if (ofs =? 16)
      then (Some (st.[e_pgd] :< v))
      else (
        if (ofs =? 24)
        then (Some (st.[e_pgd_phys] :< v))
        else (
          if (ofs =? 32)
          then (Some (st.[e_vtcr] :< v))
          else (
            if (ofs =? 40)
            then (Some (st.[e_last_vcpu_ran] :< v))
            else (
              if (ofs =? 48)
              then (Some (st.[e_max_vcpus] :< v))
              else (
                if ((56 <=? ofs) && (ofs <? 360))
                then (
                  let elem_ofs := (ofs - 56) in
                  when ret == ((store_s_vgic_dist sz elem_ofs v (st.(e_vgic))));
                  (Some (st.[e_vgic] :< ret)))
                else (
                  if (ofs =? 360)
                  then (Some (st.[e_psci_version] :< v))
                  else None))))))).

  Definition load_s_refcount_struct (sz: Z) (ofs: Z) (st: s_refcount_struct) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_atomic_t sz elem_ofs (st.(e_refs))))
    else None.

  Definition store_s_refcount_struct (sz: Z) (ofs: Z) (v: Z) (st: s_refcount_struct) : (option s_refcount_struct) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_atomic_t sz elem_ofs v (st.(e_refs))));
      (Some (st.[e_refs] :< ret)))
    else None.

  Definition load_s_hlist_head (sz: Z) (ofs: Z) (st: s_hlist_head) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_first)))
    else None.

  Definition store_s_hlist_head (sz: Z) (ofs: Z) (v: Z) (st: s_hlist_head) : (option s_hlist_head) :=
    if (ofs =? 0)
    then (Some (st.[e_first] :< v))
    else None.

  Definition load_s_hlist_node (sz: Z) (ofs: Z) (st: s_hlist_node) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e__next)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_pprev)))
      else None).

  Definition store_s_hlist_node (sz: Z) (ofs: Z) (v: Z) (st: s_hlist_node) : (option s_hlist_node) :=
    if (ofs =? 0)
    then (Some (st.[e__next] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_pprev] :< v))
      else None).

  Definition load_s_callback_head (sz: Z) (ofs: Z) (st: s_callback_head) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e___next)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_func)))
      else None).

  Definition store_s_callback_head (sz: Z) (ofs: Z) (v: Z) (st: s_callback_head) : (option s_callback_head) :=
    if (ofs =? 0)
    then (Some (st.[e___next] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_func] :< v))
      else None).

  Definition load_s_mmu_notifier (sz: Z) (ofs: Z) (st: s_mmu_notifier) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 16))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_hlist_node sz elem_ofs (st.(e_hlist))))
    else (
      if (ofs =? 16)
      then (Some (st.(e__ops)))
      else (
        if (ofs =? 24)
        then (Some (st.(e_mm)))
        else (
          if ((32 <=? ofs) && (ofs <? 48))
          then (
            let elem_ofs := (ofs - 32) in
            (load_s_callback_head sz elem_ofs (st.(e_rcu))))
          else (
            if (ofs =? 48)
            then (Some (st.(e_users)))
            else None)))).

  Definition store_s_mmu_notifier (sz: Z) (ofs: Z) (v: Z) (st: s_mmu_notifier) : (option s_mmu_notifier) :=
    if ((0 <=? ofs) && (ofs <? 16))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_hlist_node sz elem_ofs v (st.(e_hlist))));
      (Some (st.[e_hlist] :< ret)))
    else (
      if (ofs =? 16)
      then (Some (st.[e__ops] :< v))
      else (
        if (ofs =? 24)
        then (Some (st.[e_mm] :< v))
        else (
          if ((32 <=? ofs) && (ofs <? 48))
          then (
            let elem_ofs := (ofs - 32) in
            when ret == ((store_s_callback_head sz elem_ofs v (st.(e_rcu))));
            (Some (st.[e_rcu] :< ret)))
          else (
            if (ofs =? 48)
            then (Some (st.[e_users] :< v))
            else None)))).

  Definition load_s_srcu_node (sz: Z) (ofs: Z) (st: s_srcu_node) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_spinlock sz elem_ofs (st.(e___lock))))
    else (
      if ((8 <=? ofs) && (ofs <? 40))
      then (
        let idx := ((ofs - 8) / 8) in
        (Some ((st.(e_srcu_have_cbs)) @ idx)))
      else (
        if ((40 <=? ofs) && (ofs <? 72))
        then (
          let idx := ((ofs - 40) / 8) in
          (Some ((st.(e_srcu_data_have_cbs)) @ idx)))
        else (
          if (ofs =? 72)
          then (Some (st.(e_srcu_gp_seq_needed_exp)))
          else (
            if (ofs =? 80)
            then (Some (st.(e_srcu_parent)))
            else (
              if (ofs =? 88)
              then (Some (st.(e_grplo)))
              else (
                if (ofs =? 92)
                then (Some (st.(e_grphi)))
                else None)))))).

  Definition store_s_srcu_node (sz: Z) (ofs: Z) (v: Z) (st: s_srcu_node) : (option s_srcu_node) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_spinlock sz elem_ofs v (st.(e___lock))));
      (Some (st.[e___lock] :< ret)))
    else (
      if ((8 <=? ofs) && (ofs <? 40))
      then (
        let idx := ((ofs - 8) / 8) in
        (Some (st.[e_srcu_have_cbs] :< ((st.(e_srcu_have_cbs)) # idx == v))))
      else (
        if ((40 <=? ofs) && (ofs <? 72))
        then (
          let idx := ((ofs - 40) / 8) in
          (Some (st.[e_srcu_data_have_cbs] :< ((st.(e_srcu_data_have_cbs)) # idx == v))))
        else (
          if (ofs =? 72)
          then (Some (st.[e_srcu_gp_seq_needed_exp] :< v))
          else (
            if (ofs =? 80)
            then (Some (st.[e_srcu_parent] :< v))
            else (
              if (ofs =? 88)
              then (Some (st.[e_grplo] :< v))
              else (
                if (ofs =? 92)
                then (Some (st.[e_grphi] :< v))
                else None)))))).

  Definition load_s_wait_queue_head (sz: Z) (ofs: Z) (st: s_wait_queue_head) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_spinlock sz elem_ofs (st.(e____lock))))
    else (
      if ((8 <=? ofs) && (ofs <? 24))
      then (
        let elem_ofs := (ofs - 8) in
        (load_s_list_head sz elem_ofs (st.(e_head))))
      else None).

  Definition store_s_wait_queue_head (sz: Z) (ofs: Z) (v: Z) (st: s_wait_queue_head) : (option s_wait_queue_head) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_spinlock sz elem_ofs v (st.(e____lock))));
      (Some (st.[e____lock] :< ret)))
    else (
      if ((8 <=? ofs) && (ofs <? 24))
      then (
        let elem_ofs := (ofs - 8) in
        when ret == ((store_s_list_head sz elem_ofs v (st.(e_head))));
        (Some (st.[e_head] :< ret)))
      else None).

  Definition load_s_completion (sz: Z) (ofs: Z) (st: s_completion) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_done)))
    else (
      if ((8 <=? ofs) && (ofs <? 32))
      then (
        let elem_ofs := (ofs - 8) in
        (load_s_wait_queue_head sz elem_ofs (st.(e_wait))))
      else None).

  Definition store_s_completion (sz: Z) (ofs: Z) (v: Z) (st: s_completion) : (option s_completion) :=
    if (ofs =? 0)
    then (Some (st.[e_done] :< v))
    else (
      if ((8 <=? ofs) && (ofs <? 32))
      then (
        let elem_ofs := (ofs - 8) in
        when ret == ((store_s_wait_queue_head sz elem_ofs v (st.(e_wait))));
        (Some (st.[e_wait] :< ret)))
      else None).

  Definition load_s_work_struct (sz: Z) (ofs: Z) (st: s_work_struct) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 8))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_atomic64_t sz elem_ofs (st.(e_data))))
    else (
      if ((8 <=? ofs) && (ofs <? 24))
      then (
        let elem_ofs := (ofs - 8) in
        (load_s_list_head sz elem_ofs (st.(e_entry))))
      else (
        if (ofs =? 24)
        then (Some (st.(e__func)))
        else None)).

  Definition store_s_work_struct (sz: Z) (ofs: Z) (v: Z) (st: s_work_struct) : (option s_work_struct) :=
    if ((0 <=? ofs) && (ofs <? 8))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_atomic64_t sz elem_ofs v (st.(e_data))));
      (Some (st.[e_data] :< ret)))
    else (
      if ((8 <=? ofs) && (ofs <? 24))
      then (
        let elem_ofs := (ofs - 8) in
        when ret == ((store_s_list_head sz elem_ofs v (st.(e_entry))));
        (Some (st.[e_entry] :< ret)))
      else (
        if (ofs =? 24)
        then (Some (st.[e__func] :< v))
        else None)).

  Definition load_s_timer_list (sz: Z) (ofs: Z) (st: s_timer_list) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 16))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_hlist_node sz elem_ofs (st.(e__entry))))
    else (
      if (ofs =? 16)
      then (Some (st.(e_expires)))
      else (
        if (ofs =? 24)
        then (Some (st.(e_function)))
        else (
          if (ofs =? 32)
          then (Some (st.(e___flags)))
          else None))).

  Definition store_s_timer_list (sz: Z) (ofs: Z) (v: Z) (st: s_timer_list) : (option s_timer_list) :=
    if ((0 <=? ofs) && (ofs <? 16))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_hlist_node sz elem_ofs v (st.(e__entry))));
      (Some (st.[e__entry] :< ret)))
    else (
      if (ofs =? 16)
      then (Some (st.[e_expires] :< v))
      else (
        if (ofs =? 24)
        then (Some (st.[e_function] :< v))
        else (
          if (ofs =? 32)
          then (Some (st.[e___flags] :< v))
          else None))).

  Definition load_s_delayed_work (sz: Z) (ofs: Z) (st: s_delayed_work) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 32))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_work_struct sz elem_ofs (st.(e_work))))
    else (
      if ((32 <=? ofs) && (ofs <? 72))
      then (
        let elem_ofs := (ofs - 32) in
        (load_s_timer_list sz elem_ofs (st.(e_timer))))
      else (
        if (ofs =? 72)
        then (Some (st.(e_wq)))
        else (
          if (ofs =? 80)
          then (Some (st.(e_cpu)))
          else None))).

  Definition store_s_delayed_work (sz: Z) (ofs: Z) (v: Z) (st: s_delayed_work) : (option s_delayed_work) :=
    if ((0 <=? ofs) && (ofs <? 32))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_work_struct sz elem_ofs v (st.(e_work))));
      (Some (st.[e_work] :< ret)))
    else (
      if ((32 <=? ofs) && (ofs <? 72))
      then (
        let elem_ofs := (ofs - 32) in
        when ret == ((store_s_timer_list sz elem_ofs v (st.(e_timer))));
        (Some (st.[e_timer] :< ret)))
      else (
        if (ofs =? 72)
        then (Some (st.[e_wq] :< v))
        else (
          if (ofs =? 80)
          then (Some (st.[e_cpu] :< v))
          else None))).

  Definition load_s_srcu_struct (sz: Z) (ofs: Z) (st: s_srcu_struct) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 1632))
    then (
      let idx := ((ofs - 0) / 96) in
      let elem_ofs := ((ofs - 0) mod 96) in
      (load_s_srcu_node sz elem_ofs ((st.(e_node)) @ idx)))
    else (
      if ((1632 <=? ofs) && (ofs <? 1656))
      then (
        let idx := ((ofs - 1632) / 8) in
        (Some ((st.(e_level)) @ idx)))
      else (
        if ((1656 <=? ofs) && (ofs <? 1688))
        then (
          let elem_ofs := (ofs - 1656) in
          (load_s_mutex sz elem_ofs (st.(e_srcu_cb_mutex))))
        else (
          if ((1688 <=? ofs) && (ofs <? 1692))
          then (
            let elem_ofs := (ofs - 1688) in
            (load_s_spinlock sz elem_ofs (st.(e_____lock))))
          else (
            if ((1696 <=? ofs) && (ofs <? 1728))
            then (
              let elem_ofs := (ofs - 1696) in
              (load_s_mutex sz elem_ofs (st.(e_srcu_gp_mutex))))
            else (
              if (ofs =? 1728)
              then (Some (st.(e_srcu_idx)))
              else (
                if (ofs =? 1736)
                then (Some (st.(e_srcu_gp_seq)))
                else (
                  if (ofs =? 1744)
                  then (Some (st.(e_srcu_gp_seq_needed)))
                  else (
                    if (ofs =? 1752)
                    then (Some (st.(e__srcu_gp_seq_needed_exp)))
                    else (
                      if (ofs =? 1760)
                      then (Some (st.(e_srcu_last_gp_end)))
                      else (
                        if (ofs =? 1768)
                        then (Some (st.(e_sda)))
                        else (
                          if (ofs =? 1776)
                          then (Some (st.(e_srcu_barrier_seq)))
                          else (
                            if ((1784 <=? ofs) && (ofs <? 1816))
                            then (
                              let elem_ofs := (ofs - 1784) in
                              (load_s_mutex sz elem_ofs (st.(e_srcu_barrier_mutex))))
                            else (
                              if ((1816 <=? ofs) && (ofs <? 1848))
                              then (
                                let elem_ofs := (ofs - 1816) in
                                (load_s_completion sz elem_ofs (st.(e_srcu_barrier_completion))))
                              else (
                                if ((1848 <=? ofs) && (ofs <? 1852))
                                then (
                                  let elem_ofs := (ofs - 1848) in
                                  (load_s_atomic_t sz elem_ofs (st.(e_srcu_barrier_cpu_cnt))))
                                else (
                                  if ((1856 <=? ofs) && (ofs <? 1944))
                                  then (
                                    let elem_ofs := (ofs - 1856) in
                                    (load_s_delayed_work sz elem_ofs (st.(e__work))))
                                  else None))))))))))))))).

  Definition store_s_srcu_struct (sz: Z) (ofs: Z) (v: Z) (st: s_srcu_struct) : (option s_srcu_struct) :=
    if ((0 <=? ofs) && (ofs <? 1632))
    then (
      let idx := ((ofs - 0) / 96) in
      let elem_ofs := ((ofs - 0) mod 96) in
      when ret == ((store_s_srcu_node sz elem_ofs v ((st.(e_node)) @ idx)));
      (Some (st.[e_node] :< ((st.(e_node)) # idx == ret))))
    else (
      if ((1632 <=? ofs) && (ofs <? 1656))
      then (
        let idx := ((ofs - 1632) / 8) in
        (Some (st.[e_level] :< ((st.(e_level)) # idx == v))))
      else (
        if ((1656 <=? ofs) && (ofs <? 1688))
        then (
          let elem_ofs := (ofs - 1656) in
          when ret == ((store_s_mutex sz elem_ofs v (st.(e_srcu_cb_mutex))));
          (Some (st.[e_srcu_cb_mutex] :< ret)))
        else (
          if ((1688 <=? ofs) && (ofs <? 1692))
          then (
            let elem_ofs := (ofs - 1688) in
            when ret == ((store_s_spinlock sz elem_ofs v (st.(e_____lock))));
            (Some (st.[e_____lock] :< ret)))
          else (
            if ((1696 <=? ofs) && (ofs <? 1728))
            then (
              let elem_ofs := (ofs - 1696) in
              when ret == ((store_s_mutex sz elem_ofs v (st.(e_srcu_gp_mutex))));
              (Some (st.[e_srcu_gp_mutex] :< ret)))
            else (
              if (ofs =? 1728)
              then (Some (st.[e_srcu_idx] :< v))
              else (
                if (ofs =? 1736)
                then (Some (st.[e_srcu_gp_seq] :< v))
                else (
                  if (ofs =? 1744)
                  then (Some (st.[e_srcu_gp_seq_needed] :< v))
                  else (
                    if (ofs =? 1752)
                    then (Some (st.[e__srcu_gp_seq_needed_exp] :< v))
                    else (
                      if (ofs =? 1760)
                      then (Some (st.[e_srcu_last_gp_end] :< v))
                      else (
                        if (ofs =? 1768)
                        then (Some (st.[e_sda] :< v))
                        else (
                          if (ofs =? 1776)
                          then (Some (st.[e_srcu_barrier_seq] :< v))
                          else (
                            if ((1784 <=? ofs) && (ofs <? 1816))
                            then (
                              let elem_ofs := (ofs - 1784) in
                              when ret == ((store_s_mutex sz elem_ofs v (st.(e_srcu_barrier_mutex))));
                              (Some (st.[e_srcu_barrier_mutex] :< ret)))
                            else (
                              if ((1816 <=? ofs) && (ofs <? 1848))
                              then (
                                let elem_ofs := (ofs - 1816) in
                                when ret == ((store_s_completion sz elem_ofs v (st.(e_srcu_barrier_completion))));
                                (Some (st.[e_srcu_barrier_completion] :< ret)))
                              else (
                                if ((1848 <=? ofs) && (ofs <? 1852))
                                then (
                                  let elem_ofs := (ofs - 1848) in
                                  when ret == ((store_s_atomic_t sz elem_ofs v (st.(e_srcu_barrier_cpu_cnt))));
                                  (Some (st.[e_srcu_barrier_cpu_cnt] :< ret)))
                                else (
                                  if ((1856 <=? ofs) && (ofs <? 1944))
                                  then (
                                    let elem_ofs := (ofs - 1856) in
                                    when ret == ((store_s_delayed_work sz elem_ofs v (st.(e__work))));
                                    (Some (st.[e__work] :< ret)))
                                  else None))))))))))))))).

  Definition load_s_kvm (sz: Z) (ofs: Z) (st: s_kvm) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_spinlock sz elem_ofs (st.(e_mmu_lock))))
    else (
      if ((8 <=? ofs) && (ofs <? 40))
      then (
        let elem_ofs := (ofs - 8) in
        (load_s_mutex sz elem_ofs (st.(e_slots_lock))))
      else (
        if (ofs =? 40)
        then (Some (st.(e__mm)))
        else (
          if ((48 <=? ofs) && (ofs <? 56))
          then (
            let idx := ((ofs - 48) / 8) in
            (Some ((st.(e_memslots)) @ idx)))
          else (
            if ((56 <=? ofs) && (ofs <? 4152))
            then (
              let idx := ((ofs - 56) / 8) in
              (Some ((st.(e_vcpus)) @ idx)))
            else (
              if ((4152 <=? ofs) && (ofs <? 4156))
              then (
                let elem_ofs := (ofs - 4152) in
                (load_s_atomic_t sz elem_ofs (st.(e_online_vcpus))))
              else (
                if (ofs =? 4156)
                then (Some (st.(e_created_vcpus)))
                else (
                  if (ofs =? 4160)
                  then (Some (st.(e_last_boosted_vcpu)))
                  else (
                    if ((4168 <=? ofs) && (ofs <? 4184))
                    then (
                      let elem_ofs := (ofs - 4168) in
                      (load_s_list_head sz elem_ofs (st.(e_vm_list))))
                    else (
                      if ((4184 <=? ofs) && (ofs <? 4216))
                      then (
                        let elem_ofs := (ofs - 4184) in
                        (load_s_mutex sz elem_ofs (st.(e______lock))))
                      else (
                        if ((4216 <=? ofs) && (ofs <? 4248))
                        then (
                          let idx := ((ofs - 4216) / 8) in
                          (Some ((st.(e_buses)) @ idx)))
                        else (
                          if ((4248 <=? ofs) && (ofs <? 4320))
                          then (
                            let elem_ofs := (ofs - 4248) in
                            (load_s_anon_124 sz elem_ofs (st.(e_irqfds))))
                          else (
                            if ((4320 <=? ofs) && (ofs <? 4336))
                            then (
                              let elem_ofs := (ofs - 4320) in
                              (load_s_list_head sz elem_ofs (st.(e_ioeventfds))))
                            else (
                              if ((4336 <=? ofs) && (ofs <? 4344))
                              then (
                                let elem_ofs := (ofs - 4336) in
                                (load_s_kvm_vm_stat sz elem_ofs (st.(e_stat))))
                              else (
                                if ((4344 <=? ofs) && (ofs <? 4712))
                                then (
                                  let elem_ofs := (ofs - 4344) in
                                  (load_s_kvm_arch sz elem_ofs (st.(e__arch))))
                                else (
                                  if ((4712 <=? ofs) && (ofs <? 4716))
                                  then (
                                    let elem_ofs := (ofs - 4712) in
                                    (load_s_refcount_struct sz elem_ofs (st.(e_users_count))))
                                  else (
                                    if (ofs =? 4720)
                                    then (Some (st.(e_coalesced_mmio_ring)))
                                    else (
                                      if ((4728 <=? ofs) && (ofs <? 4732))
                                      then (
                                        let elem_ofs := (ofs - 4728) in
                                        (load_s_spinlock sz elem_ofs (st.(e_ring_lock))))
                                      else (
                                        if ((4736 <=? ofs) && (ofs <? 4752))
                                        then (
                                          let elem_ofs := (ofs - 4736) in
                                          (load_s_list_head sz elem_ofs (st.(e_coalesced_zones))))
                                        else (
                                          if ((4752 <=? ofs) && (ofs <? 4784))
                                          then (
                                            let elem_ofs := (ofs - 4752) in
                                            (load_s_mutex sz elem_ofs (st.(e_irq_lock))))
                                          else (
                                            if (ofs =? 4784)
                                            then (Some (st.(e_irq_routing)))
                                            else (
                                              if ((4792 <=? ofs) && (ofs <? 4800))
                                              then (
                                                let elem_ofs := (ofs - 4792) in
                                                (load_s_hlist_head sz elem_ofs (st.(e_irq_ack_notifier_list))))
                                              else (
                                                if ((4800 <=? ofs) && (ofs <? 4856))
                                                then (
                                                  let elem_ofs := (ofs - 4800) in
                                                  (load_s_mmu_notifier sz elem_ofs (st.(e_mmu_notifier))))
                                                else (
                                                  if (ofs =? 4856)
                                                  then (Some (st.(e_mmu_notifier_seq)))
                                                  else (
                                                    if (ofs =? 4864)
                                                    then (Some (st.(e_mmu_notifier_count)))
                                                    else (
                                                      if (ofs =? 4872)
                                                      then (Some (st.(e_tlbs_dirty)))
                                                      else (
                                                        if ((4880 <=? ofs) && (ofs <? 4896))
                                                        then (
                                                          let elem_ofs := (ofs - 4880) in
                                                          (load_s_list_head sz elem_ofs (st.(e_devices))))
                                                        else (
                                                          if (ofs =? 4896)
                                                          then (Some (st.(e_manual_dirty_log_protect)))
                                                          else (
                                                            if (ofs =? 4904)
                                                            then (Some (st.(e_debugfs_dentry)))
                                                            else (
                                                              if (ofs =? 4912)
                                                              then (Some (st.(e_debugfs_stat_data)))
                                                              else (
                                                                if ((4920 <=? ofs) && (ofs <? 6864))
                                                                then (
                                                                  let elem_ofs := (ofs - 4920) in
                                                                  (load_s_srcu_struct sz elem_ofs (st.(e_srcu))))
                                                                else (
                                                                  if ((6864 <=? ofs) && (ofs <? 8808))
                                                                  then (
                                                                    let elem_ofs := (ofs - 6864) in
                                                                    (load_s_srcu_struct sz elem_ofs (st.(e_irq_srcu))))
                                                                  else (
                                                                    if (ofs =? 8808)
                                                                    then (Some (st.(e_userspace_pid)))
                                                                    else (
                                                                      if (ofs =? 8812)
                                                                      then (Some (st.(e_verified)))
                                                                      else (
                                                                        if ((8816 <=? ofs) && (ofs <? 8820))
                                                                        then (
                                                                          let elem_ofs := (ofs - 8816) in
                                                                          (load_s_spinlock sz elem_ofs (st.(e_hypsec_lock))))
                                                                        else None)))))))))))))))))))))))))))))))))).

  Definition store_s_kvm (sz: Z) (ofs: Z) (v: Z) (st: s_kvm) : (option s_kvm) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_spinlock sz elem_ofs v (st.(e_mmu_lock))));
      (Some (st.[e_mmu_lock] :< ret)))
    else (
      if ((8 <=? ofs) && (ofs <? 40))
      then (
        let elem_ofs := (ofs - 8) in
        when ret == ((store_s_mutex sz elem_ofs v (st.(e_slots_lock))));
        (Some (st.[e_slots_lock] :< ret)))
      else (
        if (ofs =? 40)
        then (Some (st.[e__mm] :< v))
        else (
          if ((48 <=? ofs) && (ofs <? 56))
          then (
            let idx := ((ofs - 48) / 8) in
            (Some (st.[e_memslots] :< ((st.(e_memslots)) # idx == v))))
          else (
            if ((56 <=? ofs) && (ofs <? 4152))
            then (
              let idx := ((ofs - 56) / 8) in
              (Some (st.[e_vcpus] :< ((st.(e_vcpus)) # idx == v))))
            else (
              if ((4152 <=? ofs) && (ofs <? 4156))
              then (
                let elem_ofs := (ofs - 4152) in
                when ret == ((store_s_atomic_t sz elem_ofs v (st.(e_online_vcpus))));
                (Some (st.[e_online_vcpus] :< ret)))
              else (
                if (ofs =? 4156)
                then (Some (st.[e_created_vcpus] :< v))
                else (
                  if (ofs =? 4160)
                  then (Some (st.[e_last_boosted_vcpu] :< v))
                  else (
                    if ((4168 <=? ofs) && (ofs <? 4184))
                    then (
                      let elem_ofs := (ofs - 4168) in
                      when ret == ((store_s_list_head sz elem_ofs v (st.(e_vm_list))));
                      (Some (st.[e_vm_list] :< ret)))
                    else (
                      if ((4184 <=? ofs) && (ofs <? 4216))
                      then (
                        let elem_ofs := (ofs - 4184) in
                        when ret == ((store_s_mutex sz elem_ofs v (st.(e______lock))));
                        (Some (st.[e______lock] :< ret)))
                      else (
                        if ((4216 <=? ofs) && (ofs <? 4248))
                        then (
                          let idx := ((ofs - 4216) / 8) in
                          (Some (st.[e_buses] :< ((st.(e_buses)) # idx == v))))
                        else (
                          if ((4248 <=? ofs) && (ofs <? 4320))
                          then (
                            let elem_ofs := (ofs - 4248) in
                            when ret == ((store_s_anon_124 sz elem_ofs v (st.(e_irqfds))));
                            (Some (st.[e_irqfds] :< ret)))
                          else (
                            if ((4320 <=? ofs) && (ofs <? 4336))
                            then (
                              let elem_ofs := (ofs - 4320) in
                              when ret == ((store_s_list_head sz elem_ofs v (st.(e_ioeventfds))));
                              (Some (st.[e_ioeventfds] :< ret)))
                            else (
                              if ((4336 <=? ofs) && (ofs <? 4344))
                              then (
                                let elem_ofs := (ofs - 4336) in
                                when ret == ((store_s_kvm_vm_stat sz elem_ofs v (st.(e_stat))));
                                (Some (st.[e_stat] :< ret)))
                              else (
                                if ((4344 <=? ofs) && (ofs <? 4712))
                                then (
                                  let elem_ofs := (ofs - 4344) in
                                  when ret == ((store_s_kvm_arch sz elem_ofs v (st.(e__arch))));
                                  (Some (st.[e__arch] :< ret)))
                                else (
                                  if ((4712 <=? ofs) && (ofs <? 4716))
                                  then (
                                    let elem_ofs := (ofs - 4712) in
                                    when ret == ((store_s_refcount_struct sz elem_ofs v (st.(e_users_count))));
                                    (Some (st.[e_users_count] :< ret)))
                                  else (
                                    if (ofs =? 4720)
                                    then (Some (st.[e_coalesced_mmio_ring] :< v))
                                    else (
                                      if ((4728 <=? ofs) && (ofs <? 4732))
                                      then (
                                        let elem_ofs := (ofs - 4728) in
                                        when ret == ((store_s_spinlock sz elem_ofs v (st.(e_ring_lock))));
                                        (Some (st.[e_ring_lock] :< ret)))
                                      else (
                                        if ((4736 <=? ofs) && (ofs <? 4752))
                                        then (
                                          let elem_ofs := (ofs - 4736) in
                                          when ret == ((store_s_list_head sz elem_ofs v (st.(e_coalesced_zones))));
                                          (Some (st.[e_coalesced_zones] :< ret)))
                                        else (
                                          if ((4752 <=? ofs) && (ofs <? 4784))
                                          then (
                                            let elem_ofs := (ofs - 4752) in
                                            when ret == ((store_s_mutex sz elem_ofs v (st.(e_irq_lock))));
                                            (Some (st.[e_irq_lock] :< ret)))
                                          else (
                                            if (ofs =? 4784)
                                            then (Some (st.[e_irq_routing] :< v))
                                            else (
                                              if ((4792 <=? ofs) && (ofs <? 4800))
                                              then (
                                                let elem_ofs := (ofs - 4792) in
                                                when ret == ((store_s_hlist_head sz elem_ofs v (st.(e_irq_ack_notifier_list))));
                                                (Some (st.[e_irq_ack_notifier_list] :< ret)))
                                              else (
                                                if ((4800 <=? ofs) && (ofs <? 4856))
                                                then (
                                                  let elem_ofs := (ofs - 4800) in
                                                  when ret == ((store_s_mmu_notifier sz elem_ofs v (st.(e_mmu_notifier))));
                                                  (Some (st.[e_mmu_notifier] :< ret)))
                                                else (
                                                  if (ofs =? 4856)
                                                  then (Some (st.[e_mmu_notifier_seq] :< v))
                                                  else (
                                                    if (ofs =? 4864)
                                                    then (Some (st.[e_mmu_notifier_count] :< v))
                                                    else (
                                                      if (ofs =? 4872)
                                                      then (Some (st.[e_tlbs_dirty] :< v))
                                                      else (
                                                        if ((4880 <=? ofs) && (ofs <? 4896))
                                                        then (
                                                          let elem_ofs := (ofs - 4880) in
                                                          when ret == ((store_s_list_head sz elem_ofs v (st.(e_devices))));
                                                          (Some (st.[e_devices] :< ret)))
                                                        else (
                                                          if (ofs =? 4896)
                                                          then (Some (st.[e_manual_dirty_log_protect] :< v))
                                                          else (
                                                            if (ofs =? 4904)
                                                            then (Some (st.[e_debugfs_dentry] :< v))
                                                            else (
                                                              if (ofs =? 4912)
                                                              then (Some (st.[e_debugfs_stat_data] :< v))
                                                              else (
                                                                if ((4920 <=? ofs) && (ofs <? 6864))
                                                                then (
                                                                  let elem_ofs := (ofs - 4920) in
                                                                  when ret == ((store_s_srcu_struct sz elem_ofs v (st.(e_srcu))));
                                                                  (Some (st.[e_srcu] :< ret)))
                                                                else (
                                                                  if ((6864 <=? ofs) && (ofs <? 8808))
                                                                  then (
                                                                    let elem_ofs := (ofs - 6864) in
                                                                    when ret == ((store_s_srcu_struct sz elem_ofs v (st.(e_irq_srcu))));
                                                                    (Some (st.[e_irq_srcu] :< ret)))
                                                                  else (
                                                                    if (ofs =? 8808)
                                                                    then (Some (st.[e_userspace_pid] :< v))
                                                                    else (
                                                                      if (ofs =? 8812)
                                                                      then (Some (st.[e_verified] :< v))
                                                                      else (
                                                                        if ((8816 <=? ofs) && (ofs <? 8820))
                                                                        then (
                                                                          let elem_ofs := (ofs - 8816) in
                                                                          when ret == ((store_s_spinlock sz elem_ofs v (st.(e_hypsec_lock))));
                                                                          (Some (st.[e_hypsec_lock] :< ret)))
                                                                        else None)))))))))))))))))))))))))))))))))).

  Definition load_s_preempt_notifier (sz: Z) (ofs: Z) (st: s_preempt_notifier) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 16))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_hlist_node sz elem_ofs (st.(e_link))))
    else (
      if (ofs =? 16)
      then (Some (st.(e___ops)))
      else None).

  Definition store_s_preempt_notifier (sz: Z) (ofs: Z) (v: Z) (st: s_preempt_notifier) : (option s_preempt_notifier) :=
    if ((0 <=? ofs) && (ofs <? 16))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_hlist_node sz elem_ofs v (st.(e_link))));
      (Some (st.[e_link] :< ret)))
    else (
      if (ofs =? 16)
      then (Some (st.[e___ops] :< v))
      else None).

  Definition load_s_swait_queue_head (sz: Z) (ofs: Z) (st: s_swait_queue_head) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_raw_spinlock sz elem_ofs (st.(e_______lock))))
    else (
      if ((8 <=? ofs) && (ofs <? 24))
      then (
        let elem_ofs := (ofs - 8) in
        (load_s_list_head sz elem_ofs (st.(e_task_list))))
      else None).

  Definition store_s_swait_queue_head (sz: Z) (ofs: Z) (v: Z) (st: s_swait_queue_head) : (option s_swait_queue_head) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_raw_spinlock sz elem_ofs v (st.(e_______lock))));
      (Some (st.[e_______lock] :< ret)))
    else (
      if ((8 <=? ofs) && (ofs <? 24))
      then (
        let elem_ofs := (ofs - 8) in
        when ret == ((store_s_list_head sz elem_ofs v (st.(e_task_list))));
        (Some (st.[e_task_list] :< ret)))
      else None).

  Definition load_s_sigset_t (sz: Z) (ofs: Z) (st: s_sigset_t) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 8))
    then (
      let idx := ((ofs - 0) / 8) in
      (Some ((st.(e_sig)) @ idx)))
    else None.

  Definition store_s_sigset_t (sz: Z) (ofs: Z) (v: Z) (st: s_sigset_t) : (option s_sigset_t) :=
    if ((0 <=? ofs) && (ofs <? 8))
    then (
      let idx := ((ofs - 0) / 8) in
      (Some (st.[e_sig] :< ((st.(e_sig)) # idx == v))))
    else None.

  Definition load_s_kvm_vcpu_stat (sz: Z) (ofs: Z) (st: s_kvm_vcpu_stat) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_halt_successful_poll)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_halt_attempted_poll)))
      else (
        if (ofs =? 16)
        then (Some (st.(e_halt_poll_invalid)))
        else (
          if (ofs =? 24)
          then (Some (st.(e_halt_wakeup)))
          else (
            if (ofs =? 32)
            then (Some (st.(e_hvc_exit_stat)))
            else (
              if (ofs =? 40)
              then (Some (st.(e_wfe_exit_stat)))
              else (
                if (ofs =? 48)
                then (Some (st.(e_wfi_exit_stat)))
                else (
                  if (ofs =? 56)
                  then (Some (st.(e_mmio_exit_user)))
                  else (
                    if (ofs =? 64)
                    then (Some (st.(e_mmio_exit_kernel)))
                    else (
                      if (ofs =? 72)
                      then (Some (st.(e_exits)))
                      else None))))))))).

  Definition store_s_kvm_vcpu_stat (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_vcpu_stat) : (option s_kvm_vcpu_stat) :=
    if (ofs =? 0)
    then (Some (st.[e_halt_successful_poll] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_halt_attempted_poll] :< v))
      else (
        if (ofs =? 16)
        then (Some (st.[e_halt_poll_invalid] :< v))
        else (
          if (ofs =? 24)
          then (Some (st.[e_halt_wakeup] :< v))
          else (
            if (ofs =? 32)
            then (Some (st.[e_hvc_exit_stat] :< v))
            else (
              if (ofs =? 40)
              then (Some (st.[e_wfe_exit_stat] :< v))
              else (
                if (ofs =? 48)
                then (Some (st.[e_wfi_exit_stat] :< v))
                else (
                  if (ofs =? 56)
                  then (Some (st.[e_mmio_exit_user] :< v))
                  else (
                    if (ofs =? 64)
                    then (Some (st.[e_mmio_exit_kernel] :< v))
                    else (
                      if (ofs =? 72)
                      then (Some (st.[e_exits] :< v))
                      else None))))))))).

  Definition load_s_kvm_mmio_fragment (sz: Z) (ofs: Z) (st: s_kvm_mmio_fragment) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_gpa)))
    else (
      if (ofs =? 8)
      then (Some (st.(e__data)))
      else (
        if (ofs =? 16)
        then (Some (st.(e_len)))
        else None)).

  Definition store_s_kvm_mmio_fragment (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_mmio_fragment) : (option s_kvm_mmio_fragment) :=
    if (ofs =? 0)
    then (Some (st.[e_gpa] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e__data] :< v))
      else (
        if (ofs =? 16)
        then (Some (st.[e_len] :< v))
        else None)).

  Definition load_s_anon_116 (sz: Z) (ofs: Z) (st: s_anon_116) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_in_spin_loop)))
    else (
      if (ofs =? 1)
      then (Some (st.(e_dy_eligible)))
      else None).

  Definition store_s_anon_116 (sz: Z) (ofs: Z) (v: Z) (st: s_anon_116) : (option s_anon_116) :=
    if (ofs =? 0)
    then (Some (st.[e_in_spin_loop] :< v))
    else (
      if (ofs =? 1)
      then (Some (st.[e_dy_eligible] :< v))
      else None).

  Definition load_s_s2_trans (sz: Z) (ofs: Z) (st: s_s2_trans) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_pfn)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_output)))
      else (
        if (ofs =? 16)
        then (Some (st.(e_writable)))
        else (
          if (ofs =? 17)
          then (Some (st.(e_readable)))
          else (
            if (ofs =? 20)
            then (Some (st.(e__level)))
            else (
              if (ofs =? 24)
              then (Some (st.(e_desc)))
              else None))))).

  Definition store_s_s2_trans (sz: Z) (ofs: Z) (v: Z) (st: s_s2_trans) : (option s_s2_trans) :=
    if (ofs =? 0)
    then (Some (st.[e_pfn] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_output] :< v))
      else (
        if (ofs =? 16)
        then (Some (st.[e_writable] :< v))
        else (
          if (ofs =? 17)
          then (Some (st.[e_readable] :< v))
          else (
            if (ofs =? 20)
            then (Some (st.[e__level] :< v))
            else (
              if (ofs =? 24)
              then (Some (st.[e_desc] :< v))
              else None))))).

  Definition load_s_kvm_vcpu_fault_info (sz: Z) (ofs: Z) (st: s_kvm_vcpu_fault_info) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_esr_el2)))
    else (
      if (ofs =? 8)
      then (Some (st.(e__far_el2)))
      else (
        if (ofs =? 16)
        then (Some (st.(e_hpfar_el2)))
        else (
          if (ofs =? 24)
          then (Some (st.(e_disr_el1)))
          else None))).

  Definition store_s_kvm_vcpu_fault_info (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_vcpu_fault_info) : (option s_kvm_vcpu_fault_info) :=
    if (ofs =? 0)
    then (Some (st.[e_esr_el2] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e__far_el2] :< v))
      else (
        if (ofs =? 16)
        then (Some (st.[e_hpfar_el2] :< v))
        else (
          if (ofs =? 24)
          then (Some (st.[e_disr_el1] :< v))
          else None))).

  Definition load_s_kvm_guest_debug_arch (sz: Z) (ofs: Z) (st: s_kvm_guest_debug_arch) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 128))
    then (
      let idx := ((ofs - 0) / 8) in
      (Some ((st.(e_dbg_bcr)) @ idx)))
    else (
      if ((128 <=? ofs) && (ofs <? 256))
      then (
        let idx := ((ofs - 128) / 8) in
        (Some ((st.(e_dbg_bvr)) @ idx)))
      else (
        if ((256 <=? ofs) && (ofs <? 384))
        then (
          let idx := ((ofs - 256) / 8) in
          (Some ((st.(e_dbg_wcr)) @ idx)))
        else (
          if ((384 <=? ofs) && (ofs <? 512))
          then (
            let idx := ((ofs - 384) / 8) in
            (Some ((st.(e_dbg_wvr)) @ idx)))
          else None))).

  Definition store_s_kvm_guest_debug_arch (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_guest_debug_arch) : (option s_kvm_guest_debug_arch) :=
    if ((0 <=? ofs) && (ofs <? 128))
    then (
      let idx := ((ofs - 0) / 8) in
      (Some (st.[e_dbg_bcr] :< ((st.(e_dbg_bcr)) # idx == v))))
    else (
      if ((128 <=? ofs) && (ofs <? 256))
      then (
        let idx := ((ofs - 128) / 8) in
        (Some (st.[e_dbg_bvr] :< ((st.(e_dbg_bvr)) # idx == v))))
      else (
        if ((256 <=? ofs) && (ofs <? 384))
        then (
          let idx := ((ofs - 256) / 8) in
          (Some (st.[e_dbg_wcr] :< ((st.(e_dbg_wcr)) # idx == v))))
        else (
          if ((384 <=? ofs) && (ofs <? 512))
          then (
            let idx := ((ofs - 384) / 8) in
            (Some (st.[e_dbg_wvr] :< ((st.(e_dbg_wvr)) # idx == v))))
          else None))).

  Definition load_s_anon_118 (sz: Z) (ofs: Z) (st: s_anon_118) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 512))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_kvm_guest_debug_arch sz elem_ofs (st.(e____regs))))
    else (
      if (ofs =? 512)
      then (Some (st.(e_pmscr_el1)))
      else None).

  Definition store_s_anon_118 (sz: Z) (ofs: Z) (v: Z) (st: s_anon_118) : (option s_anon_118) :=
    if ((0 <=? ofs) && (ofs <? 512))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_kvm_guest_debug_arch sz elem_ofs v (st.(e____regs))));
      (Some (st.[e____regs] :< ret)))
    else (
      if (ofs =? 512)
      then (Some (st.[e_pmscr_el1] :< v))
      else None).

  Definition load_s_its_vpe (sz: Z) (ofs: Z) (st: s_its_vpe) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_vpt_page)))
    else (
      if (ofs =? 8)
      then (Some (st.(e__its_vm)))
      else (
        if (ofs =? 16)
        then (Some (st.(e_irq)))
        else (
          if (ofs =? 24)
          then (Some (st.(e_vpe_db_lpi)))
          else (
            if (ofs =? 32)
            then (Some (st.(e_vpe_proxy_event)))
            else (
              if (ofs =? 36)
              then (Some (st.(e_col_idx)))
              else (
                if (ofs =? 38)
                then (Some (st.(e_vpe_id)))
                else (
                  if (ofs =? 40)
                  then (Some (st.(e_idai)))
                  else (
                    if (ofs =? 41)
                    then (Some (st.(e_pending_last)))
                    else None)))))))).

  Definition store_s_its_vpe (sz: Z) (ofs: Z) (v: Z) (st: s_its_vpe) : (option s_its_vpe) :=
    if (ofs =? 0)
    then (Some (st.[e_vpt_page] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e__its_vm] :< v))
      else (
        if (ofs =? 16)
        then (Some (st.[e_irq] :< v))
        else (
          if (ofs =? 24)
          then (Some (st.[e_vpe_db_lpi] :< v))
          else (
            if (ofs =? 32)
            then (Some (st.[e_vpe_proxy_event] :< v))
            else (
              if (ofs =? 36)
              then (Some (st.[e_col_idx] :< v))
              else (
                if (ofs =? 38)
                then (Some (st.[e_vpe_id] :< v))
                else (
                  if (ofs =? 40)
                  then (Some (st.[e_idai] :< v))
                  else (
                    if (ofs =? 41)
                    then (Some (st.[e_pending_last] :< v))
                    else None)))))))).

  Definition load_s_vgic_v3_cpu_if (sz: Z) (ofs: Z) (st: s_vgic_v3_cpu_if) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_vgic_hcr)))
    else (
      if (ofs =? 4)
      then (Some (st.(e_vgic_vmcr)))
      else (
        if (ofs =? 8)
        then (Some (st.(e_vgic_sre)))
        else (
          if ((12 <=? ofs) && (ofs <? 28))
          then (
            let idx := ((ofs - 12) / 4) in
            (Some ((st.(e_vgic_ap0r)) @ idx)))
          else (
            if ((28 <=? ofs) && (ofs <? 44))
            then (
              let idx := ((ofs - 28) / 4) in
              (Some ((st.(e_vgic_ap1r)) @ idx)))
            else (
              if ((48 <=? ofs) && (ofs <? 176))
              then (
                let idx := ((ofs - 48) / 8) in
                (Some ((st.(e_vgic_lr)) @ idx)))
              else (
                if ((176 <=? ofs) && (ofs <? 224))
                then (
                  let elem_ofs := (ofs - 176) in
                  (load_s_its_vpe sz elem_ofs (st.(e_its_vpe))))
                else None)))))).

  Definition store_s_vgic_v3_cpu_if (sz: Z) (ofs: Z) (v: Z) (st: s_vgic_v3_cpu_if) : (option s_vgic_v3_cpu_if) :=
    if (ofs =? 0)
    then (Some (st.[e_vgic_hcr] :< v))
    else (
      if (ofs =? 4)
      then (Some (st.[e_vgic_vmcr] :< v))
      else (
        if (ofs =? 8)
        then (Some (st.[e_vgic_sre] :< v))
        else (
          if ((12 <=? ofs) && (ofs <? 28))
          then (
            let idx := ((ofs - 12) / 4) in
            (Some (st.[e_vgic_ap0r] :< ((st.(e_vgic_ap0r)) # idx == v))))
          else (
            if ((28 <=? ofs) && (ofs <? 44))
            then (
              let idx := ((ofs - 28) / 4) in
              (Some (st.[e_vgic_ap1r] :< ((st.(e_vgic_ap1r)) # idx == v))))
            else (
              if ((48 <=? ofs) && (ofs <? 176))
              then (
                let idx := ((ofs - 48) / 8) in
                (Some (st.[e_vgic_lr] :< ((st.(e_vgic_lr)) # idx == v))))
              else (
                if ((176 <=? ofs) && (ofs <? 224))
                then (
                  let elem_ofs := (ofs - 176) in
                  when ret == ((store_s_its_vpe sz elem_ofs v (st.(e_its_vpe))));
                  (Some (st.[e_its_vpe] :< ret)))
                else None)))))).

  Definition load_u_anon_119 (sz: Z) (ofs: Z) (st: u_anon_119) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 224))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_vgic_v3_cpu_if sz elem_ofs (st.(e_))))
    else (
      if ((0 <=? ofs) && (ofs <? 48))
      then (
        let idx := ((ofs - 0) / 1) in
        (Some ((st.(e__)) @ idx)))
      else None).

  Definition store_u_anon_119 (sz: Z) (ofs: Z) (v: Z) (st: u_anon_119) : (option u_anon_119) :=
    if ((0 <=? ofs) && (ofs <? 224))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_vgic_v3_cpu_if sz elem_ofs v (st.(e_))));
      (Some (st.[e_] :< ret)))
    else (
      if ((0 <=? ofs) && (ofs <? 48))
      then (
        let idx := ((ofs - 0) / 1) in
        (Some (st.[e__] :< ((st.(e__)) # idx == v))))
      else None).

  Definition load_s_kref (sz: Z) (ofs: Z) (st: s_kref) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_refcount_struct sz elem_ofs (st.(e_refcount))))
    else None.

  Definition store_s_kref (sz: Z) (ofs: Z) (v: Z) (st: s_kref) : (option s_kref) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_refcount_struct sz elem_ofs v (st.(e_refcount))));
      (Some (st.[e_refcount] :< ret)))
    else None.

  Definition load_u_anon_120 (sz: Z) (ofs: Z) (st: u_anon_120) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_targets)))
    else None.

  Definition store_u_anon_120 (sz: Z) (ofs: Z) (v: Z) (st: u_anon_120) : (option u_anon_120) :=
    if (ofs =? 0)
    then (Some (st.[e_targets] :< v))
    else None.

  Definition load_s_vgic_irq (sz: Z) (ofs: Z) (st: s_vgic_irq) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_raw_spinlock sz elem_ofs (st.(e__irq_lock))))
    else (
      if ((8 <=? ofs) && (ofs <? 24))
      then (
        let elem_ofs := (ofs - 8) in
        (load_s_list_head sz elem_ofs (st.(e_lpi_list))))
      else (
        if ((24 <=? ofs) && (ofs <? 40))
        then (
          let elem_ofs := (ofs - 24) in
          (load_s_list_head sz elem_ofs (st.(e_ap_list))))
        else (
          if (ofs =? 40)
          then (Some (st.(e__vcpu)))
          else (
            if (ofs =? 48)
            then (Some (st.(e_target_vcpu)))
            else (
              if (ofs =? 56)
              then (Some (st.(e_intid)))
              else (
                if (ofs =? 60)
                then (Some (st.(e_line_level)))
                else (
                  if (ofs =? 61)
                  then (Some (st.(e_pending_latch)))
                  else (
                    if (ofs =? 62)
                    then (Some (st.(e_active)))
                    else (
                      if (ofs =? 63)
                      then (Some (st.(e__enabled)))
                      else (
                        if (ofs =? 64)
                        then (Some (st.(e_hw)))
                        else (
                          if ((68 <=? ofs) && (ofs <? 72))
                          then (
                            let elem_ofs := (ofs - 68) in
                            (load_s_kref sz elem_ofs (st.(e__refcount))))
                          else (
                            if (ofs =? 72)
                            then (Some (st.(e_hwintid)))
                            else (
                              if (ofs =? 76)
                              then (Some (st.(e_host_irq)))
                              else (
                                if ((80 <=? ofs) && (ofs <? 84))
                                then (
                                  let elem_ofs := (ofs - 80) in
                                  (load_u_anon_120 sz elem_ofs (st.(e_vgic_irq_14))))
                                else (
                                  if (ofs =? 84)
                                  then (Some (st.(e_source)))
                                  else (
                                    if (ofs =? 85)
                                    then (Some (st.(e_active_source)))
                                    else (
                                      if (ofs =? 86)
                                      then (Some (st.(e_priority)))
                                      else (
                                        if (ofs =? 87)
                                        then (Some (st.(e_group)))
                                        else (
                                          if (ofs =? 88)
                                          then (Some (st.(e_config)))
                                          else (
                                            if (ofs =? 96)
                                            then (Some (st.(e_get_input_level)))
                                            else (
                                              if (ofs =? 104)
                                              then (Some (st.(e__owner)))
                                              else None))))))))))))))))))))).

  Definition store_s_vgic_irq (sz: Z) (ofs: Z) (v: Z) (st: s_vgic_irq) : (option s_vgic_irq) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_raw_spinlock sz elem_ofs v (st.(e__irq_lock))));
      (Some (st.[e__irq_lock] :< ret)))
    else (
      if ((8 <=? ofs) && (ofs <? 24))
      then (
        let elem_ofs := (ofs - 8) in
        when ret == ((store_s_list_head sz elem_ofs v (st.(e_lpi_list))));
        (Some (st.[e_lpi_list] :< ret)))
      else (
        if ((24 <=? ofs) && (ofs <? 40))
        then (
          let elem_ofs := (ofs - 24) in
          when ret == ((store_s_list_head sz elem_ofs v (st.(e_ap_list))));
          (Some (st.[e_ap_list] :< ret)))
        else (
          if (ofs =? 40)
          then (Some (st.[e__vcpu] :< v))
          else (
            if (ofs =? 48)
            then (Some (st.[e_target_vcpu] :< v))
            else (
              if (ofs =? 56)
              then (Some (st.[e_intid] :< v))
              else (
                if (ofs =? 60)
                then (Some (st.[e_line_level] :< v))
                else (
                  if (ofs =? 61)
                  then (Some (st.[e_pending_latch] :< v))
                  else (
                    if (ofs =? 62)
                    then (Some (st.[e_active] :< v))
                    else (
                      if (ofs =? 63)
                      then (Some (st.[e__enabled] :< v))
                      else (
                        if (ofs =? 64)
                        then (Some (st.[e_hw] :< v))
                        else (
                          if ((68 <=? ofs) && (ofs <? 72))
                          then (
                            let elem_ofs := (ofs - 68) in
                            when ret == ((store_s_kref sz elem_ofs v (st.(e__refcount))));
                            (Some (st.[e__refcount] :< ret)))
                          else (
                            if (ofs =? 72)
                            then (Some (st.[e_hwintid] :< v))
                            else (
                              if (ofs =? 76)
                              then (Some (st.[e_host_irq] :< v))
                              else (
                                if ((80 <=? ofs) && (ofs <? 84))
                                then (
                                  let elem_ofs := (ofs - 80) in
                                  when ret == ((store_u_anon_120 sz elem_ofs v (st.(e_vgic_irq_14))));
                                  (Some (st.[e_vgic_irq_14] :< ret)))
                                else (
                                  if (ofs =? 84)
                                  then (Some (st.[e_source] :< v))
                                  else (
                                    if (ofs =? 85)
                                    then (Some (st.[e_active_source] :< v))
                                    else (
                                      if (ofs =? 86)
                                      then (Some (st.[e_priority] :< v))
                                      else (
                                        if (ofs =? 87)
                                        then (Some (st.[e_group] :< v))
                                        else (
                                          if (ofs =? 88)
                                          then (Some (st.[e_config] :< v))
                                          else (
                                            if (ofs =? 96)
                                            then (Some (st.[e_get_input_level] :< v))
                                            else (
                                              if (ofs =? 104)
                                              then (Some (st.[e__owner] :< v))
                                              else None))))))))))))))))))))).

  Definition load_s_vgic_cpu (sz: Z) (ofs: Z) (st: s_vgic_cpu) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 0))
    then (
      let elem_ofs := (ofs - 0) in
      (load_u_anon_119 sz elem_ofs (st.(e_vgic_cpu_0))))
    else (
      if (ofs =? 272)
      then (Some (st.(e_used_lrs)))
      else (
        if ((280 <=? ofs) && (ofs <? 3864))
        then (
          let idx := ((ofs - 280) / 112) in
          let elem_ofs := ((ofs - 280) mod 112) in
          (load_s_vgic_irq sz elem_ofs ((st.(e_private_irqs)) @ idx)))
        else (
          if ((3864 <=? ofs) && (ofs <? 3868))
          then (
            let elem_ofs := (ofs - 3864) in
            (load_s_raw_spinlock sz elem_ofs (st.(e_ap_list_lock))))
          else (
            if ((3872 <=? ofs) && (ofs <? 3888))
            then (
              let elem_ofs := (ofs - 3872) in
              (load_s_list_head sz elem_ofs (st.(e_ap_list_head))))
            else (
              if ((3888 <=? ofs) && (ofs <? 3928))
              then (
                let elem_ofs := (ofs - 3888) in
                (load_s_vgic_io_device sz elem_ofs (st.(e_rd_iodev))))
              else (
                if (ofs =? 3928)
                then (Some (st.(e_rdreg)))
                else (
                  if (ofs =? 3936)
                  then (Some (st.(e_pendbaser)))
                  else (
                    if (ofs =? 3944)
                    then (Some (st.(e_lpis_enabled)))
                    else (
                      if (ofs =? 3948)
                      then (Some (st.(e_num_pri_bits)))
                      else (
                        if (ofs =? 3952)
                        then (Some (st.(e_num_id_bits)))
                        else None)))))))))).

  Definition store_s_vgic_cpu (sz: Z) (ofs: Z) (v: Z) (st: s_vgic_cpu) : (option s_vgic_cpu) :=
    if ((0 <=? ofs) && (ofs <? 0))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_u_anon_119 sz elem_ofs v (st.(e_vgic_cpu_0))));
      (Some (st.[e_vgic_cpu_0] :< ret)))
    else (
      if (ofs =? 272)
      then (Some (st.[e_used_lrs] :< v))
      else (
        if ((280 <=? ofs) && (ofs <? 3864))
        then (
          let idx := ((ofs - 280) / 112) in
          let elem_ofs := ((ofs - 280) mod 112) in
          when ret == ((store_s_vgic_irq sz elem_ofs v ((st.(e_private_irqs)) @ idx)));
          (Some (st.[e_private_irqs] :< ((st.(e_private_irqs)) # idx == ret))))
        else (
          if ((3864 <=? ofs) && (ofs <? 3868))
          then (
            let elem_ofs := (ofs - 3864) in
            when ret == ((store_s_raw_spinlock sz elem_ofs v (st.(e_ap_list_lock))));
            (Some (st.[e_ap_list_lock] :< ret)))
          else (
            if ((3872 <=? ofs) && (ofs <? 3888))
            then (
              let elem_ofs := (ofs - 3872) in
              when ret == ((store_s_list_head sz elem_ofs v (st.(e_ap_list_head))));
              (Some (st.[e_ap_list_head] :< ret)))
            else (
              if ((3888 <=? ofs) && (ofs <? 3928))
              then (
                let elem_ofs := (ofs - 3888) in
                when ret == ((store_s_vgic_io_device sz elem_ofs v (st.(e_rd_iodev))));
                (Some (st.[e_rd_iodev] :< ret)))
              else (
                if (ofs =? 3928)
                then (Some (st.[e_rdreg] :< v))
                else (
                  if (ofs =? 3936)
                  then (Some (st.[e_pendbaser] :< v))
                  else (
                    if (ofs =? 3944)
                    then (Some (st.[e_lpis_enabled] :< v))
                    else (
                      if (ofs =? 3948)
                      then (Some (st.[e_num_pri_bits] :< v))
                      else (
                        if (ofs =? 3952)
                        then (Some (st.[e_num_id_bits] :< v))
                        else None)))))))))).

  Definition load_u_anon_122 (sz: Z) (ofs: Z) (st: u_anon_122) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e__irq)))
    else None.

  Definition store_u_anon_122 (sz: Z) (ofs: Z) (v: Z) (st: u_anon_122) : (option u_anon_122) :=
    if (ofs =? 0)
    then (Some (st.[e__irq] :< v))
    else None.

  Definition load_s_kvm_irq_level (sz: Z) (ofs: Z) (st: s_kvm_irq_level) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      (load_u_anon_122 sz elem_ofs (st.(e_kvm_irq_level_0))))
    else (
      if (ofs =? 4)
      then (Some (st.(e___level)))
      else None).

  Definition store_s_kvm_irq_level (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_irq_level) : (option s_kvm_irq_level) :=
    if ((0 <=? ofs) && (ofs <? 4))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_u_anon_122 sz elem_ofs v (st.(e_kvm_irq_level_0))));
      (Some (st.[e_kvm_irq_level_0] :< ret)))
    else (
      if (ofs =? 4)
      then (Some (st.[e___level] :< v))
      else None).

  Definition load_s_rb_node (sz: Z) (ofs: Z) (st: s_rb_node) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e___rb_parent_color)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_rb_right)))
      else (
        if (ofs =? 16)
        then (Some (st.(e_rb_left)))
        else None)).

  Definition store_s_rb_node (sz: Z) (ofs: Z) (v: Z) (st: s_rb_node) : (option s_rb_node) :=
    if (ofs =? 0)
    then (Some (st.[e___rb_parent_color] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_rb_right] :< v))
      else (
        if (ofs =? 16)
        then (Some (st.[e_rb_left] :< v))
        else None)).

  Definition load_s_timerqueue_node (sz: Z) (ofs: Z) (st: s_timerqueue_node) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 24))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_rb_node sz elem_ofs (st.(e__node))))
    else (
      if (ofs =? 24)
      then (Some (st.(e__expires)))
      else None).

  Definition store_s_timerqueue_node (sz: Z) (ofs: Z) (v: Z) (st: s_timerqueue_node) : (option s_timerqueue_node) :=
    if ((0 <=? ofs) && (ofs <? 24))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_rb_node sz elem_ofs v (st.(e__node))));
      (Some (st.[e__node] :< ret)))
    else (
      if (ofs =? 24)
      then (Some (st.[e__expires] :< v))
      else None).

  Definition load_s_hrtimer (sz: Z) (ofs: Z) (st: s_hrtimer) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 32))
    then (
      let elem_ofs := (ofs - 0) in
      (load_s_timerqueue_node sz elem_ofs (st.(e___node))))
    else (
      if (ofs =? 32)
      then (Some (st.(e__softexpires)))
      else (
        if (ofs =? 40)
        then (Some (st.(e__function)))
        else (
          if (ofs =? 48)
          then (Some (st.(e__base)))
          else (
            if (ofs =? 56)
            then (Some (st.(e___state)))
            else (
              if (ofs =? 57)
              then (Some (st.(e_is_rel)))
              else (
                if (ofs =? 58)
                then (Some (st.(e_is_soft)))
                else (
                  if (ofs =? 59)
                  then (Some (st.(e_is_hard)))
                  else None))))))).

  Definition store_s_hrtimer (sz: Z) (ofs: Z) (v: Z) (st: s_hrtimer) : (option s_hrtimer) :=
    if ((0 <=? ofs) && (ofs <? 32))
    then (
      let elem_ofs := (ofs - 0) in
      when ret == ((store_s_timerqueue_node sz elem_ofs v (st.(e___node))));
      (Some (st.[e___node] :< ret)))
    else (
      if (ofs =? 32)
      then (Some (st.[e__softexpires] :< v))
      else (
        if (ofs =? 40)
        then (Some (st.[e__function] :< v))
        else (
          if (ofs =? 48)
          then (Some (st.[e__base] :< v))
          else (
            if (ofs =? 56)
            then (Some (st.[e___state] :< v))
            else (
              if (ofs =? 57)
              then (Some (st.[e_is_rel] :< v))
              else (
                if (ofs =? 58)
                then (Some (st.[e_is_soft] :< v))
                else (
                  if (ofs =? 59)
                  then (Some (st.[e_is_hard] :< v))
                  else None))))))).

  Definition load_s_arch_timer_context (sz: Z) (ofs: Z) (st: s_arch_timer_context) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e___vcpu)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_cnt_ctl)))
      else (
        if (ofs =? 16)
        then (Some (st.(e_cnt_cval)))
        else (
          if ((24 <=? ofs) && (ofs <? 32))
          then (
            let elem_ofs := (ofs - 24) in
            (load_s_kvm_irq_level sz elem_ofs (st.(e___irq))))
          else (
            if (ofs =? 32)
            then (Some (st.(e_cntvoff)))
            else (
              if ((40 <=? ofs) && (ofs <? 104))
              then (
                let elem_ofs := (ofs - 40) in
                (load_s_hrtimer sz elem_ofs (st.(e_hrtimer))))
              else (
                if (ofs =? 104)
                then (Some (st.(e_loaded)))
                else (
                  if (ofs =? 108)
                  then (Some (st.(e_host_timer_irq)))
                  else (
                    if (ofs =? 112)
                    then (Some (st.(e_host_timer_irq_flags)))
                    else None)))))))).

  Definition store_s_arch_timer_context (sz: Z) (ofs: Z) (v: Z) (st: s_arch_timer_context) : (option s_arch_timer_context) :=
    if (ofs =? 0)
    then (Some (st.[e___vcpu] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_cnt_ctl] :< v))
      else (
        if (ofs =? 16)
        then (Some (st.[e_cnt_cval] :< v))
        else (
          if ((24 <=? ofs) && (ofs <? 32))
          then (
            let elem_ofs := (ofs - 24) in
            when ret == ((store_s_kvm_irq_level sz elem_ofs v (st.(e___irq))));
            (Some (st.[e___irq] :< ret)))
          else (
            if (ofs =? 32)
            then (Some (st.[e_cntvoff] :< v))
            else (
              if ((40 <=? ofs) && (ofs <? 104))
              then (
                let elem_ofs := (ofs - 40) in
                when ret == ((store_s_hrtimer sz elem_ofs v (st.(e_hrtimer))));
                (Some (st.[e_hrtimer] :< ret)))
              else (
                if (ofs =? 104)
                then (Some (st.[e_loaded] :< v))
                else (
                  if (ofs =? 108)
                  then (Some (st.[e_host_timer_irq] :< v))
                  else (
                    if (ofs =? 112)
                    then (Some (st.[e_host_timer_irq_flags] :< v))
                    else None)))))))).

  Definition load_s_arch_timer_cpu (sz: Z) (ofs: Z) (st: s_arch_timer_cpu) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 240))
    then (
      let idx := ((ofs - 0) / 120) in
      let elem_ofs := ((ofs - 0) mod 120) in
      (load_s_arch_timer_context sz elem_ofs ((st.(e_timers)) @ idx)))
    else (
      if ((240 <=? ofs) && (ofs <? 304))
      then (
        let elem_ofs := (ofs - 240) in
        (load_s_hrtimer sz elem_ofs (st.(e_bg_timer))))
      else (
        if (ofs =? 304)
        then (Some (st.(e___enabled)))
        else None)).

  Definition store_s_arch_timer_cpu (sz: Z) (ofs: Z) (v: Z) (st: s_arch_timer_cpu) : (option s_arch_timer_cpu) :=
    if ((0 <=? ofs) && (ofs <? 240))
    then (
      let idx := ((ofs - 0) / 120) in
      let elem_ofs := ((ofs - 0) mod 120) in
      when ret == ((store_s_arch_timer_context sz elem_ofs v ((st.(e_timers)) @ idx)));
      (Some (st.[e_timers] :< ((st.(e_timers)) # idx == ret))))
    else (
      if ((240 <=? ofs) && (ofs <? 304))
      then (
        let elem_ofs := (ofs - 240) in
        when ret == ((store_s_hrtimer sz elem_ofs v (st.(e_bg_timer))));
        (Some (st.[e_bg_timer] :< ret)))
      else (
        if (ofs =? 304)
        then (Some (st.[e___enabled] :< v))
        else None)).

  Definition load_s_kvm_pmc (sz: Z) (ofs: Z) (st: s_kvm_pmc) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_idx)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_perf_event)))
      else None).

  Definition store_s_kvm_pmc (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_pmc) : (option s_kvm_pmc) :=
    if (ofs =? 0)
    then (Some (st.[e_idx] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_perf_event] :< v))
      else None).

  Definition load_s_kvm_pmu (sz: Z) (ofs: Z) (st: s_kvm_pmu) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_irq_num)))
    else (
      if ((8 <=? ofs) && (ofs <? 520))
      then (
        let idx := ((ofs - 8) / 16) in
        let elem_ofs := ((ofs - 8) mod 16) in
        (load_s_kvm_pmc sz elem_ofs ((st.(e_pmc)) @ idx)))
      else (
        if ((520 <=? ofs) && (ofs <? 528))
        then (
          let idx := ((ofs - 520) / 8) in
          (Some ((st.(e_chained)) @ idx)))
        else (
          if (ofs =? 528)
          then (Some (st.(e__ready)))
          else (
            if (ofs =? 529)
            then (Some (st.(e_created)))
            else (
              if (ofs =? 530)
              then (Some (st.(e_irq_level)))
              else None))))).

  Definition store_s_kvm_pmu (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_pmu) : (option s_kvm_pmu) :=
    if (ofs =? 0)
    then (Some (st.[e_irq_num] :< v))
    else (
      if ((8 <=? ofs) && (ofs <? 520))
      then (
        let idx := ((ofs - 8) / 16) in
        let elem_ofs := ((ofs - 8) mod 16) in
        when ret == ((store_s_kvm_pmc sz elem_ofs v ((st.(e_pmc)) @ idx)));
        (Some (st.[e_pmc] :< ((st.(e_pmc)) # idx == ret))))
      else (
        if ((520 <=? ofs) && (ofs <? 528))
        then (
          let idx := ((ofs - 520) / 8) in
          (Some (st.[e_chained] :< ((st.(e_chained)) # idx == v))))
        else (
          if (ofs =? 528)
          then (Some (st.[e__ready] :< v))
          else (
            if (ofs =? 529)
            then (Some (st.[e_created] :< v))
            else (
              if (ofs =? 530)
              then (Some (st.[e_irq_level] :< v))
              else None))))).

  Definition load_s_anon_123 (sz: Z) (ofs: Z) (st: s_anon_123) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_mdscr_el1)))
    else None.

  Definition store_s_anon_123 (sz: Z) (ofs: Z) (v: Z) (st: s_anon_123) : (option s_anon_123) :=
    if (ofs =? 0)
    then (Some (st.[e_mdscr_el1] :< v))
    else None.

  Definition load_s_kvm_decode (sz: Z) (ofs: Z) (st: s_kvm_decode) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_rt)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_sign_extend)))
      else (
        if (ofs =? 9)
        then (Some (st.(e_sixty_four)))
        else None)).

  Definition store_s_kvm_decode (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_decode) : (option s_kvm_decode) :=
    if (ofs =? 0)
    then (Some (st.[e_rt] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_sign_extend] :< v))
      else (
        if (ofs =? 9)
        then (Some (st.[e_sixty_four] :< v))
        else None)).

  Definition load_s_kvm_mmu_memory_cache (sz: Z) (ofs: Z) (st: s_kvm_mmu_memory_cache) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e_nobjs)))
    else (
      if ((8 <=? ofs) && (ofs <? 328))
      then (
        let idx := ((ofs - 8) / 8) in
        (Some ((st.(e_objects)) @ idx)))
      else None).

  Definition store_s_kvm_mmu_memory_cache (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_mmu_memory_cache) : (option s_kvm_mmu_memory_cache) :=
    if (ofs =? 0)
    then (Some (st.[e_nobjs] :< v))
    else (
      if ((8 <=? ofs) && (ofs <? 328))
      then (
        let idx := ((ofs - 8) / 8) in
        (Some (st.[e_objects] :< ((st.(e_objects)) # idx == v))))
      else None).

  Definition load_s_vcpu_reset_state (sz: Z) (ofs: Z) (st: s_vcpu_reset_state) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e__pc)))
    else (
      if (ofs =? 8)
      then (Some (st.(e_r0)))
      else (
        if (ofs =? 16)
        then (Some (st.(e_be)))
        else (
          if (ofs =? 17)
          then (Some (st.(e_reset)))
          else None))).

  Definition store_s_vcpu_reset_state (sz: Z) (ofs: Z) (v: Z) (st: s_vcpu_reset_state) : (option s_vcpu_reset_state) :=
    if (ofs =? 0)
    then (Some (st.[e__pc] :< v))
    else (
      if (ofs =? 8)
      then (Some (st.[e_r0] :< v))
      else (
        if (ofs =? 16)
        then (Some (st.[e_be] :< v))
        else (
          if (ofs =? 17)
          then (Some (st.[e_reset] :< v))
          else None))).

  Definition load_s_kvm_vcpu_arch (sz: Z) (ofs: Z) (st: s_kvm_vcpu_arch) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e________vmid)))
    else (
      if (ofs =? 4)
      then (Some (st.(e_was_preempted)))
      else (
        if ((8 <=? ofs) && (ofs <? 40))
        then (
          let elem_ofs := (ofs - 8) in
          (load_s_s2_trans sz elem_ofs (st.(e_walk_result))))
        else (
          if ((48 <=? ofs) && (ofs <? 1808))
          then (
            let elem_ofs := (ofs - 48) in
            (load_s_kvm_cpu_context sz elem_ofs (st.(e_ctxt))))
          else (
            if (ofs =? 1808)
            then (Some (st.(e_sve_state)))
            else (
              if (ofs =? 1816)
              then (Some (st.(e_sve_max_vl)))
              else (
                if (ofs =? 1824)
                then (Some (st.(e__hcr_el2)))
                else (
                  if (ofs =? 1832)
                  then (Some (st.(e_mdcr_el2)))
                  else (
                    if ((1840 <=? ofs) && (ofs <? 1872))
                    then (
                      let elem_ofs := (ofs - 1840) in
                      (load_s_kvm_vcpu_fault_info sz elem_ofs (st.(e_fault))))
                    else (
                      if (ofs =? 1872)
                      then (Some (st.(e_workaround_flags)))
                      else (
                        if (ofs =? 1880)
                        then (Some (st.(e____flags)))
                        else (
                          if (ofs =? 1888)
                          then (Some (st.(e_debug_ptr)))
                          else (
                            if ((1896 <=? ofs) && (ofs <? 2408))
                            then (
                              let elem_ofs := (ofs - 1896) in
                              (load_s_kvm_guest_debug_arch sz elem_ofs (st.(e_vcpu_debug_state))))
                            else (
                              if ((2408 <=? ofs) && (ofs <? 2920))
                              then (
                                let elem_ofs := (ofs - 2408) in
                                (load_s_kvm_guest_debug_arch sz elem_ofs (st.(e_external_debug_state))))
                              else (
                                if (ofs =? 2920)
                                then (Some (st.(e_host_cpu_context)))
                                else (
                                  if (ofs =? 2928)
                                  then (Some (st.(e_host_thread_info)))
                                  else (
                                    if (ofs =? 2936)
                                    then (Some (st.(e_host_fpsimd_state)))
                                    else (
                                      if ((2944 <=? ofs) && (ofs <? 3464))
                                      then (
                                        let elem_ofs := (ofs - 2944) in
                                        (load_s_anon_118 sz elem_ofs (st.(e_host_debug_state))))
                                      else (
                                        if ((3464 <=? ofs) && (ofs <? 7424))
                                        then (
                                          let elem_ofs := (ofs - 3464) in
                                          (load_s_vgic_cpu sz elem_ofs (st.(e_vgic_cpu))))
                                        else (
                                          if ((7424 <=? ofs) && (ofs <? 7736))
                                          then (
                                            let elem_ofs := (ofs - 7424) in
                                            (load_s_arch_timer_cpu sz elem_ofs (st.(e_timer_cpu))))
                                          else (
                                            if ((7736 <=? ofs) && (ofs <? 8272))
                                            then (
                                              let elem_ofs := (ofs - 7736) in
                                              (load_s_kvm_pmu sz elem_ofs (st.(e_pmu))))
                                            else (
                                              if ((8272 <=? ofs) && (ofs <? 8276))
                                              then (
                                                let elem_ofs := (ofs - 8272) in
                                                (load_s_anon_123 sz elem_ofs (st.(e_guest_debug_preserved))))
                                              else (
                                                if (ofs =? 8276)
                                                then (Some (st.(e_power_off)))
                                                else (
                                                  if (ofs =? 8277)
                                                  then (Some (st.(e_pause)))
                                                  else (
                                                    if ((8280 <=? ofs) && (ofs <? 8296))
                                                    then (
                                                      let elem_ofs := (ofs - 8280) in
                                                      (load_s_kvm_decode sz elem_ofs (st.(e_mmio_decode))))
                                                    else (
                                                      if ((8296 <=? ofs) && (ofs <? 8624))
                                                      then (
                                                        let elem_ofs := (ofs - 8296) in
                                                        (load_s_kvm_mmu_memory_cache sz elem_ofs (st.(e_mmu_page_cache))))
                                                      else (
                                                        if (ofs =? 8624)
                                                        then (Some (st.(e_target)))
                                                        else (
                                                          if ((8632 <=? ofs) && (ofs <? 8640))
                                                          then (
                                                            let idx := ((ofs - 8632) / 8) in
                                                            (Some ((st.(e__features)) @ idx)))
                                                          else (
                                                            if (ofs =? 8640)
                                                            then (Some (st.(e_has_run_once)))
                                                            else (
                                                              if (ofs =? 8648)
                                                              then (Some (st.(e_vsesr_el2)))
                                                              else (
                                                                if ((8656 <=? ofs) && (ofs <? 8680))
                                                                then (
                                                                  let elem_ofs := (ofs - 8656) in
                                                                  (load_s_vcpu_reset_state sz elem_ofs (st.(e_reset_state))))
                                                                else (
                                                                  if (ofs =? 8680)
                                                                  then (Some (st.(e_sysregs_loaded_on_cpu)))
                                                                  else None))))))))))))))))))))))))))))))).

  Definition store_s_kvm_vcpu_arch (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_vcpu_arch) : (option s_kvm_vcpu_arch) :=
    if (ofs =? 0)
    then (Some (st.[e________vmid] :< v))
    else (
      if (ofs =? 4)
      then (Some (st.[e_was_preempted] :< v))
      else (
        if ((8 <=? ofs) && (ofs <? 40))
        then (
          let elem_ofs := (ofs - 8) in
          when ret == ((store_s_s2_trans sz elem_ofs v (st.(e_walk_result))));
          (Some (st.[e_walk_result] :< ret)))
        else (
          if ((48 <=? ofs) && (ofs <? 1808))
          then (
            let elem_ofs := (ofs - 48) in
            when ret == ((store_s_kvm_cpu_context sz elem_ofs v (st.(e_ctxt))));
            (Some (st.[e_ctxt] :< ret)))
          else (
            if (ofs =? 1808)
            then (Some (st.[e_sve_state] :< v))
            else (
              if (ofs =? 1816)
              then (Some (st.[e_sve_max_vl] :< v))
              else (
                if (ofs =? 1824)
                then (Some (st.[e__hcr_el2] :< v))
                else (
                  if (ofs =? 1832)
                  then (Some (st.[e_mdcr_el2] :< v))
                  else (
                    if ((1840 <=? ofs) && (ofs <? 1872))
                    then (
                      let elem_ofs := (ofs - 1840) in
                      when ret == ((store_s_kvm_vcpu_fault_info sz elem_ofs v (st.(e_fault))));
                      (Some (st.[e_fault] :< ret)))
                    else (
                      if (ofs =? 1872)
                      then (Some (st.[e_workaround_flags] :< v))
                      else (
                        if (ofs =? 1880)
                        then (Some (st.[e____flags] :< v))
                        else (
                          if (ofs =? 1888)
                          then (Some (st.[e_debug_ptr] :< v))
                          else (
                            if ((1896 <=? ofs) && (ofs <? 2408))
                            then (
                              let elem_ofs := (ofs - 1896) in
                              when ret == ((store_s_kvm_guest_debug_arch sz elem_ofs v (st.(e_vcpu_debug_state))));
                              (Some (st.[e_vcpu_debug_state] :< ret)))
                            else (
                              if ((2408 <=? ofs) && (ofs <? 2920))
                              then (
                                let elem_ofs := (ofs - 2408) in
                                when ret == ((store_s_kvm_guest_debug_arch sz elem_ofs v (st.(e_external_debug_state))));
                                (Some (st.[e_external_debug_state] :< ret)))
                              else (
                                if (ofs =? 2920)
                                then (Some (st.[e_host_cpu_context] :< v))
                                else (
                                  if (ofs =? 2928)
                                  then (Some (st.[e_host_thread_info] :< v))
                                  else (
                                    if (ofs =? 2936)
                                    then (Some (st.[e_host_fpsimd_state] :< v))
                                    else (
                                      if ((2944 <=? ofs) && (ofs <? 3464))
                                      then (
                                        let elem_ofs := (ofs - 2944) in
                                        when ret == ((store_s_anon_118 sz elem_ofs v (st.(e_host_debug_state))));
                                        (Some (st.[e_host_debug_state] :< ret)))
                                      else (
                                        if ((3464 <=? ofs) && (ofs <? 7424))
                                        then (
                                          let elem_ofs := (ofs - 3464) in
                                          when ret == ((store_s_vgic_cpu sz elem_ofs v (st.(e_vgic_cpu))));
                                          (Some (st.[e_vgic_cpu] :< ret)))
                                        else (
                                          if ((7424 <=? ofs) && (ofs <? 7736))
                                          then (
                                            let elem_ofs := (ofs - 7424) in
                                            when ret == ((store_s_arch_timer_cpu sz elem_ofs v (st.(e_timer_cpu))));
                                            (Some (st.[e_timer_cpu] :< ret)))
                                          else (
                                            if ((7736 <=? ofs) && (ofs <? 8272))
                                            then (
                                              let elem_ofs := (ofs - 7736) in
                                              when ret == ((store_s_kvm_pmu sz elem_ofs v (st.(e_pmu))));
                                              (Some (st.[e_pmu] :< ret)))
                                            else (
                                              if ((8272 <=? ofs) && (ofs <? 8276))
                                              then (
                                                let elem_ofs := (ofs - 8272) in
                                                when ret == ((store_s_anon_123 sz elem_ofs v (st.(e_guest_debug_preserved))));
                                                (Some (st.[e_guest_debug_preserved] :< ret)))
                                              else (
                                                if (ofs =? 8276)
                                                then (Some (st.[e_power_off] :< v))
                                                else (
                                                  if (ofs =? 8277)
                                                  then (Some (st.[e_pause] :< v))
                                                  else (
                                                    if ((8280 <=? ofs) && (ofs <? 8296))
                                                    then (
                                                      let elem_ofs := (ofs - 8280) in
                                                      when ret == ((store_s_kvm_decode sz elem_ofs v (st.(e_mmio_decode))));
                                                      (Some (st.[e_mmio_decode] :< ret)))
                                                    else (
                                                      if ((8296 <=? ofs) && (ofs <? 8624))
                                                      then (
                                                        let elem_ofs := (ofs - 8296) in
                                                        when ret == ((store_s_kvm_mmu_memory_cache sz elem_ofs v (st.(e_mmu_page_cache))));
                                                        (Some (st.[e_mmu_page_cache] :< ret)))
                                                      else (
                                                        if (ofs =? 8624)
                                                        then (Some (st.[e_target] :< v))
                                                        else (
                                                          if ((8632 <=? ofs) && (ofs <? 8640))
                                                          then (
                                                            let idx := ((ofs - 8632) / 8) in
                                                            (Some (st.[e__features] :< ((st.(e__features)) # idx == v))))
                                                          else (
                                                            if (ofs =? 8640)
                                                            then (Some (st.[e_has_run_once] :< v))
                                                            else (
                                                              if (ofs =? 8648)
                                                              then (Some (st.[e_vsesr_el2] :< v))
                                                              else (
                                                                if ((8656 <=? ofs) && (ofs <? 8680))
                                                                then (
                                                                  let elem_ofs := (ofs - 8656) in
                                                                  when ret == ((store_s_vcpu_reset_state sz elem_ofs v (st.(e_reset_state))));
                                                                  (Some (st.[e_reset_state] :< ret)))
                                                                else (
                                                                  if (ofs =? 8680)
                                                                  then (Some (st.[e_sysregs_loaded_on_cpu] :< v))
                                                                  else None))))))))))))))))))))))))))))))).

  Definition load_s_kvm_vcpu (sz: Z) (ofs: Z) (st: s_kvm_vcpu) : (option Z) :=
    if (ofs =? 0)
    then (Some (st.(e__kvm)))
    else (
      if ((8 <=? ofs) && (ofs <? 32))
      then (
        let elem_ofs := (ofs - 8) in
        (load_s_preempt_notifier sz elem_ofs (st.(e_preempt_notifier))))
      else (
        if (ofs =? 32)
        then (Some (st.(e__cpu)))
        else (
          if (ofs =? 36)
          then (Some (st.(e__vcpu_id)))
          else (
            if (ofs =? 40)
            then (Some (st.(e__srcu_idx)))
            else (
              if (ofs =? 44)
              then (Some (st.(e_mode)))
              else (
                if (ofs =? 48)
                then (Some (st.(e_requests)))
                else (
                  if (ofs =? 56)
                  then (Some (st.(e_guest_debug)))
                  else (
                    if (ofs =? 64)
                    then (Some (st.(e_pre_pcpu)))
                    else (
                      if ((72 <=? ofs) && (ofs <? 88))
                      then (
                        let elem_ofs := (ofs - 72) in
                        (load_s_list_head sz elem_ofs (st.(e_blocked_vcpu_list))))
                      else (
                        if ((88 <=? ofs) && (ofs <? 120))
                        then (
                          let elem_ofs := (ofs - 88) in
                          (load_s_mutex sz elem_ofs (st.(e_mutex))))
                        else (
                          if (ofs =? 120)
                          then (Some (st.(e_run)))
                          else (
                            if (ofs =? 128)
                            then (Some (st.(e_guest_xcr0_loaded)))
                            else (
                              if ((136 <=? ofs) && (ofs <? 160))
                              then (
                                let elem_ofs := (ofs - 136) in
                                (load_s_swait_queue_head sz elem_ofs (st.(e__wq))))
                              else (
                                if (ofs =? 160)
                                then (Some (st.(e_pid)))
                                else (
                                  if (ofs =? 168)
                                  then (Some (st.(e_sigset_active)))
                                  else (
                                    if ((176 <=? ofs) && (ofs <? 184))
                                    then (
                                      let elem_ofs := (ofs - 176) in
                                      (load_s_sigset_t sz elem_ofs (st.(e_sigset))))
                                    else (
                                      if ((184 <=? ofs) && (ofs <? 264))
                                      then (
                                        let elem_ofs := (ofs - 184) in
                                        (load_s_kvm_vcpu_stat sz elem_ofs (st.(e__stat))))
                                      else (
                                        if (ofs =? 264)
                                        then (Some (st.(e_halt_poll_ns)))
                                        else (
                                          if (ofs =? 268)
                                          then (Some (st.(e_valid_wakeup)))
                                          else (
                                            if (ofs =? 272)
                                            then (Some (st.(e_mmio_needed)))
                                            else (
                                              if (ofs =? 276)
                                              then (Some (st.(e_mmio_read_completed)))
                                              else (
                                                if (ofs =? 280)
                                                then (Some (st.(e_mmio_is_write)))
                                                else (
                                                  if (ofs =? 284)
                                                  then (Some (st.(e_mmio_cur_fragment)))
                                                  else (
                                                    if (ofs =? 288)
                                                    then (Some (st.(e_mmio_nr_fragments)))
                                                    else (
                                                      if ((296 <=? ofs) && (ofs <? 344))
                                                      then (
                                                        let idx := ((ofs - 296) / 24) in
                                                        let elem_ofs := ((ofs - 296) mod 24) in
                                                        (load_s_kvm_mmio_fragment sz elem_ofs ((st.(e_mmio_fragments)) @ idx)))
                                                      else (
                                                        if ((344 <=? ofs) && (ofs <? 346))
                                                        then (
                                                          let elem_ofs := (ofs - 344) in
                                                          (load_s_anon_116 sz elem_ofs (st.(e_spin_loop))))
                                                        else (
                                                          if (ofs =? 346)
                                                          then (Some (st.(e_preempted)))
                                                          else (
                                                            if (ofs =? 347)
                                                            then (Some (st.(e___ready)))
                                                            else (
                                                              if ((352 <=? ofs) && (ofs <? 9040))
                                                              then (
                                                                let elem_ofs := (ofs - 352) in
                                                                (load_s_kvm_vcpu_arch sz elem_ofs (st.(e___arch))))
                                                              else (
                                                                if (ofs =? 9040)
                                                                then (Some (st.(e__debugfs_dentry)))
                                                                else None)))))))))))))))))))))))))))))).

  Definition store_s_kvm_vcpu (sz: Z) (ofs: Z) (v: Z) (st: s_kvm_vcpu) : (option s_kvm_vcpu) :=
    if (ofs =? 0)
    then (Some (st.[e__kvm] :< v))
    else (
      if ((8 <=? ofs) && (ofs <? 32))
      then (
        let elem_ofs := (ofs - 8) in
        when ret == ((store_s_preempt_notifier sz elem_ofs v (st.(e_preempt_notifier))));
        (Some (st.[e_preempt_notifier] :< ret)))
      else (
        if (ofs =? 32)
        then (Some (st.[e__cpu] :< v))
        else (
          if (ofs =? 36)
          then (Some (st.[e__vcpu_id] :< v))
          else (
            if (ofs =? 40)
            then (Some (st.[e__srcu_idx] :< v))
            else (
              if (ofs =? 44)
              then (Some (st.[e_mode] :< v))
              else (
                if (ofs =? 48)
                then (Some (st.[e_requests] :< v))
                else (
                  if (ofs =? 56)
                  then (Some (st.[e_guest_debug] :< v))
                  else (
                    if (ofs =? 64)
                    then (Some (st.[e_pre_pcpu] :< v))
                    else (
                      if ((72 <=? ofs) && (ofs <? 88))
                      then (
                        let elem_ofs := (ofs - 72) in
                        when ret == ((store_s_list_head sz elem_ofs v (st.(e_blocked_vcpu_list))));
                        (Some (st.[e_blocked_vcpu_list] :< ret)))
                      else (
                        if ((88 <=? ofs) && (ofs <? 120))
                        then (
                          let elem_ofs := (ofs - 88) in
                          when ret == ((store_s_mutex sz elem_ofs v (st.(e_mutex))));
                          (Some (st.[e_mutex] :< ret)))
                        else (
                          if (ofs =? 120)
                          then (Some (st.[e_run] :< v))
                          else (
                            if (ofs =? 128)
                            then (Some (st.[e_guest_xcr0_loaded] :< v))
                            else (
                              if ((136 <=? ofs) && (ofs <? 160))
                              then (
                                let elem_ofs := (ofs - 136) in
                                when ret == ((store_s_swait_queue_head sz elem_ofs v (st.(e__wq))));
                                (Some (st.[e__wq] :< ret)))
                              else (
                                if (ofs =? 160)
                                then (Some (st.[e_pid] :< v))
                                else (
                                  if (ofs =? 168)
                                  then (Some (st.[e_sigset_active] :< v))
                                  else (
                                    if ((176 <=? ofs) && (ofs <? 184))
                                    then (
                                      let elem_ofs := (ofs - 176) in
                                      when ret == ((store_s_sigset_t sz elem_ofs v (st.(e_sigset))));
                                      (Some (st.[e_sigset] :< ret)))
                                    else (
                                      if ((184 <=? ofs) && (ofs <? 264))
                                      then (
                                        let elem_ofs := (ofs - 184) in
                                        when ret == ((store_s_kvm_vcpu_stat sz elem_ofs v (st.(e__stat))));
                                        (Some (st.[e__stat] :< ret)))
                                      else (
                                        if (ofs =? 264)
                                        then (Some (st.[e_halt_poll_ns] :< v))
                                        else (
                                          if (ofs =? 268)
                                          then (Some (st.[e_valid_wakeup] :< v))
                                          else (
                                            if (ofs =? 272)
                                            then (Some (st.[e_mmio_needed] :< v))
                                            else (
                                              if (ofs =? 276)
                                              then (Some (st.[e_mmio_read_completed] :< v))
                                              else (
                                                if (ofs =? 280)
                                                then (Some (st.[e_mmio_is_write] :< v))
                                                else (
                                                  if (ofs =? 284)
                                                  then (Some (st.[e_mmio_cur_fragment] :< v))
                                                  else (
                                                    if (ofs =? 288)
                                                    then (Some (st.[e_mmio_nr_fragments] :< v))
                                                    else (
                                                      if ((296 <=? ofs) && (ofs <? 344))
                                                      then (
                                                        let idx := ((ofs - 296) / 24) in
                                                        let elem_ofs := ((ofs - 296) mod 24) in
                                                        when ret == ((store_s_kvm_mmio_fragment sz elem_ofs v ((st.(e_mmio_fragments)) @ idx)));
                                                        (Some (st.[e_mmio_fragments] :< ((st.(e_mmio_fragments)) # idx == ret))))
                                                      else (
                                                        if ((344 <=? ofs) && (ofs <? 346))
                                                        then (
                                                          let elem_ofs := (ofs - 344) in
                                                          when ret == ((store_s_anon_116 sz elem_ofs v (st.(e_spin_loop))));
                                                          (Some (st.[e_spin_loop] :< ret)))
                                                        else (
                                                          if (ofs =? 346)
                                                          then (Some (st.[e_preempted] :< v))
                                                          else (
                                                            if (ofs =? 347)
                                                            then (Some (st.[e___ready] :< v))
                                                            else (
                                                              if ((352 <=? ofs) && (ofs <? 9040))
                                                              then (
                                                                let elem_ofs := (ofs - 352) in
                                                                when ret == ((store_s_kvm_vcpu_arch sz elem_ofs v (st.(e___arch))));
                                                                (Some (st.[e___arch] :< ret)))
                                                              else (
                                                                if (ofs =? 9040)
                                                                then (Some (st.[e__debugfs_dentry] :< v))
                                                                else None)))))))))))))))))))))))))))))).

  Definition S2PAGE_LOCK  : Z :=
    1.

  Definition ABS_LOCK  : Z :=
    2.

  Definition SMMU_LOCK  : Z :=
    3.

  Definition SMMUPT_LOCK  : Z :=
    4.

  Definition VM_LOCK (vid: Z) : Z :=
    (5 + vid).

  Definition S2PT_LOCK (vid: Z) : Z :=
    ((5 + 19) + vid).

  Definition el2_vm_info_lock_mapping (vid: Z) (ofs: Z) : LOCK_MAP :=
    if (ofs =? 0)
    then (LOCK_PROT (S2PT_LOCK vid))
    else (
      if (ofs =? 728)
      then (LOCK_PROT (S2PT_LOCK vid))
      else (
        if (ofs =? 736)
        then (LOCK_PROT (S2PT_LOCK vid))
        else (
          if (ofs =? 744)
          then (LOCK_PROT (S2PT_LOCK vid))
          else (
            if (ofs =? 752)
            then (LOCK_PROT (S2PT_LOCK vid))
            else (
              if (ofs =? 760)
              then (LOCK_PROT (S2PT_LOCK vid))
              else (
                if ((512 <=? ofs) && (ofs <? 516))
                then (LOCK_IMPL (S2PT_LOCK vid))
                else (
                  if ((516 <=? ofs) && (ofs <? 520))
                  then (LOCK_IMPL (VM_LOCK vid))
                  else (LOCK_PROT (VM_LOCK vid))))))))).

  Definition el2_smmu_cfg_mapping (ofs: Z) : LOCK_MAP :=
    if (ofs =? 0)
    then (LOCK_PROT SMMU_LOCK)
    else PRIVATE.

  Definition el2_data_lock_map (ofs: Z) : LOCK_MAP :=
    if ((1096 <=? ofs) && (ofs <? 1100))
    then (LOCK_IMPL S2PAGE_LOCK)
    else (
      if ((1100 <=? ofs) && (ofs <? 1104))
      then (LOCK_IMPL ABS_LOCK)
      else (
        if ((1112 <=? ofs) && (ofs <? 1116))
        then (LOCK_IMPL SMMU_LOCK)
        else (
          if ((1116 <=? ofs) && (ofs <? 1120))
          then (LOCK_IMPL SMMUPT_LOCK)
          else (
            if ((1128 <=? ofs) && (ofs <? 33555560))
            then (LOCK_PROT S2PAGE_LOCK)
            else (
              if (ofs =? 33701024)
              then (LOCK_PROT ABS_LOCK)
              else (
                if ((33686424 <=? ofs) && (ofs <? 33701016))
                then (
                  let idx := ((ofs - 33686424) / 768) in
                  let elem_ofs := ((ofs - 33686424) mod 768) in
                  (el2_vm_info_lock_mapping idx elem_ofs))
                else (
                  if ((33701032 <=? ofs) && (ofs <? 33701288))
                  then (
                    let idx := ((ofs - 33701032) / 16) in
                    let elem_ofs := ((ofs - 33701032) mod 16) in
                    (el2_smmu_cfg_mapping elem_ofs))
                  else (
                    if (ofs =? 33701484)
                    then (LOCK_PROT ABS_LOCK)
                    else (
                      if (ofs =? 33731104)
                      then (LOCK_PROT SMMUPT_LOCK)
                      else (
                        if (ofs =? 33731112)
                        then (LOCK_PROT SMMUPT_LOCK)
                        else (
                          if (ofs =? 33731120)
                          then (LOCK_PROT SMMUPT_LOCK)
                          else PRIVATE))))))))))).

  Definition load_s_el2_vm_info (sz: Z) (idx: Z) (ofs: Z) (st: RData) : (option Z) :=
    let s2pt := (((st.(shared)).(e_s2pts)) @ idx) in
    let vminfo := (((st.(shared)).(e_vminfos)) @ idx) in
    if (ofs =? 0)
    then (Some (s2pt.(e_vttbr)))
    else (
      if (ofs =? 8)
      then (Some (vminfo.(e___vmid)))
      else (
        if (ofs =? 12)
        then (Some (vminfo.(e_load_info_cnt)))
        else (
          if (ofs =? 16)
          then (Some (vminfo.(e_kvm_pg_cnt)))
          else (
            if (ofs =? 20)
            then (Some (vminfo.(e_inc_exe)))
            else (
              if (ofs =? 24)
              then (Some (vminfo.(e__state)))
              else (
                if ((32 <=? ofs) && (ofs <? 512))
                then (
                  let idx := ((ofs - 32) / 96) in
                  let elem_ofs := ((ofs - 32) mod 96) in
                  (load_s_el2_load_info sz elem_ofs ((vminfo.(e_load_info)) @ idx)))
                else (
                  if (ofs =? 520)
                  then (Some (vminfo.(e_kvm)))
                  else (
                    if ((528 <=? ofs) && (ofs <? 624))
                    then (
                      let idx := ((ofs - 528) / 24) in
                      let elem_ofs := ((ofs - 528) mod 24) in
                      (load_s_int_vcpu sz elem_ofs ((vminfo.(e_int_vcpus)) @ idx)))
                    else (
                      if ((656 <=? ofs) && (ofs <? 672))
                      then (
                        let idx := ((ofs - 656) / 1) in
                        (Some ((vminfo.(e_key)) @ idx)))
                      else (
                        if ((672 <=? ofs) && (ofs <? 688))
                        then (
                          let idx := ((ofs - 672) / 1) in
                          (Some ((vminfo.(e_iv)) @ idx)))
                        else (
                          if ((688 <=? ofs) && (ofs <? 720))
                          then (
                            let idx := ((ofs - 688) / 1) in
                            (Some ((vminfo.(e_public_key)) @ idx)))
                          else (
                            if (ofs =? 720)
                            then (Some (vminfo.(e_powered_on)))
                            else (
                              if (ofs =? 728)
                              then (Some (s2pt.(e_page_pool_start)))
                              else (
                                if (ofs =? 744)
                                then (Some (s2pt.(e_pmd_used_pages)))
                                else (
                                  if (ofs =? 752)
                                  then (Some (s2pt.(e_pud_used_pages)))
                                  else (
                                    if (ofs =? 760)
                                    then (Some (s2pt.(e_pte_used_pages)))
                                    else None)))))))))))))))).

  Definition store_s_el2_vm_info (sz: Z) (idx: Z) (ofs: Z) (v: Z) (st: RData) : (option RData) :=
    let s2pt := (((st.(shared)).(e_s2pts)) @ idx) in
    let vminfo := (((st.(shared)).(e_vminfos)) @ idx) in
    if (ofs =? 0)
    then (Some (st.[shared].[e_s2pts] :< (((st.(shared)).(e_s2pts)) # idx == (s2pt.[e_vttbr] :< v))))
    else (
      if (ofs =? 8)
      then (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # idx == (vminfo.[e___vmid] :< v))))
      else (
        if (ofs =? 12)
        then (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # idx == (vminfo.[e_load_info_cnt] :< v))))
        else (
          if (ofs =? 16)
          then (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # idx == (vminfo.[e_kvm_pg_cnt] :< v))))
          else (
            if (ofs =? 20)
            then (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # idx == (vminfo.[e_inc_exe] :< v))))
            else (
              if (ofs =? 24)
              then (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # idx == (vminfo.[e__state] :< v))))
              else (
                if ((32 <=? ofs) && (ofs <? 512))
                then (
                  let idx' := ((ofs - 32) / 96) in
                  let elem_ofs := ((ofs - 32) mod 96) in
                  when ret == ((store_s_el2_load_info sz elem_ofs v ((vminfo.(e_load_info)) @ idx')));
                  (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # idx == (vminfo.[e_load_info] :< ((vminfo.(e_load_info)) # idx' == ret))))))
                else (
                  if (ofs =? 520)
                  then (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # idx == (vminfo.[e_kvm] :< v))))
                  else (
                    if ((528 <=? ofs) && (ofs <? 624))
                    then (
                      let idx' := ((ofs - 528) / 24) in
                      let elem_ofs := ((ofs - 528) mod 24) in
                      when ret == ((store_s_int_vcpu sz elem_ofs v ((vminfo.(e_int_vcpus)) @ idx')));
                      (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # idx == (vminfo.[e_int_vcpus] :< ((vminfo.(e_int_vcpus)) # idx' == ret))))))
                    else (
                      if ((656 <=? ofs) && (ofs <? 672))
                      then (
                        let idx' := ((ofs - 656) / 1) in
                        (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # idx == (vminfo.[e_key] :< ((vminfo.(e_key)) # idx' == v))))))
                      else (
                        if ((672 <=? ofs) && (ofs <? 688))
                        then (
                          let idx' := ((ofs - 672) / 1) in
                          (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # idx == (vminfo.[e_iv] :< ((vminfo.(e_iv)) # idx' == v))))))
                        else (
                          if ((688 <=? ofs) && (ofs <? 720))
                          then (
                            let idx' := ((ofs - 688) / 1) in
                            (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # idx == (vminfo.[e_public_key] :< ((vminfo.(e_public_key)) # idx' == v))))))
                          else (
                            if (ofs =? 720)
                            then (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # idx == (vminfo.[e_powered_on] :< v))))
                            else (
                              if (ofs =? 728)
                              then (Some (st.[shared].[e_s2pts] :< (((st.(shared)).(e_s2pts)) # idx == (s2pt.[e_page_pool_start] :< v))))
                              else (
                                if (ofs =? 744)
                                then (Some (st.[shared].[e_s2pts] :< (((st.(shared)).(e_s2pts)) # idx == (s2pt.[e_pmd_used_pages] :< v))))
                                else (
                                  if (ofs =? 752)
                                  then (Some (st.[shared].[e_s2pts] :< (((st.(shared)).(e_s2pts)) # idx == (s2pt.[e_pud_used_pages] :< v))))
                                  else (
                                    if (ofs =? 760)
                                    then (Some (st.[shared].[e_s2pts] :< (((st.(shared)).(e_s2pts)) # idx == (s2pt.[e_pte_used_pages] :< v))))
                                    else None)))))))))))))))).

  Definition load_s_el2_smmu_cfg (sz: Z) (smmuid: Z) (ofs: Z) (st: RData) : (option Z) :=
    if (ofs =? 0)
    then (Some (((st.(shared)).(e_smmu_vmid)) @ smmuid))
    else (
      if (ofs =? 8)
      then (Some ((((st.(priv)).(e_smmu_cfg)) @ smmuid).(e_hw_ttbr)))
      else None).

  Definition store_s_el2_smmu_cfg (sz: Z) (smmuid: Z) (ofs: Z) (v: Z) (st: RData) : (option RData) :=
    if (ofs =? 0)
    then (Some (st.[shared].[e_smmu_vmid] :< (((st.(shared)).(e_smmu_vmid)) # smmuid == v)))
    else (
      if (ofs =? 8)
      then (Some (st.[priv].[e_smmu_cfg] :< (((st.(priv)).(e_smmu_cfg)) # smmuid == ((((st.(priv)).(e_smmu_cfg)) @ smmuid).[e_hw_ttbr] :< v))))
      else None).

  Definition load_el2_data (sz: Z) (ofs: Z) (st: RData) : (option Z) :=
    if ((0 <=? ofs) && (ofs <? 768))
    then (
      let idx := ((ofs - 0) / 24) in
      let elem_ofs := ((ofs - 0) mod 24) in
      (load_s_memblock_region sz elem_ofs (((st.(priv)).(e_regions)) @ idx)))
    else (
      if ((768 <=? ofs) && (ofs <? 1024))
      then (
        let idx := ((ofs - 768) / 8) in
        let elem_ofs := ((ofs - 768) mod 8) in
        (load_s_s2_memblock_info sz elem_ofs (((st.(priv)).(e_s2_memblock_info)) @ idx)))
      else (
        if ((1024 <=? ofs) && (ofs <? 1040))
        then (
          let elem_ofs := (ofs - 1024) in
          (load_s_s2_cpu_arch sz elem_ofs ((st.(priv)).(e_arch))))
        else (
          if (ofs =? 1040)
          then (Some ((st.(priv)).(e_regions_cnt)))
          else (
            if (ofs =? 1056)
            then (Some ((st.(priv)).(e_host_vttbr)))
            else (
              if (ofs =? 1080)
              then (Some ((st.(priv)).(e_pl011_base)))
              else (
                if (ofs =? 1088)
                then (Some ((st.(priv)).(e_uart_8250_base)))
                else (
                  if (ofs =? 1120)
                  then (Some ((st.(priv)).(e_ram_start_pfn)))
                  else (
                    if ((1128 <=? ofs) && (ofs <? 33555560))
                    then (
                      let idx := ((ofs - 1128) / 16) in
                      let elem_ofs := ((ofs - 1128) mod 16) in
                      (load_s_s2_page sz elem_ofs (((st.(shared)).(e_s2pages)) @ idx)))
                    else (
                      if ((33555568 <=? ofs) && (ofs <? 33685744))
                      then (
                        let idx := ((ofs - 33555568) / 1808) in
                        let elem_ofs := ((ofs - 33555568) mod 1808) in
                        (load_s_shadow_vcpu_context sz elem_ofs (((st.(priv)).(e_shadow_ctxts)) @ idx)))
                      else (
                        if ((33685752 <=? ofs) && (ofs <? 33686424))
                        then (
                          let idx := ((ofs - 33685752) / 24) in
                          let elem_ofs := ((ofs - 33685752) mod 24) in
                          (load_s_s2_sys_reg_desc sz elem_ofs (((st.(priv)).(e_s2_sys_reg_descs)) @ idx)))
                        else (
                          if ((33686424 <=? ofs) && (ofs <? 33701016))
                          then (
                            let idx := ((ofs - 33686424) / 768) in
                            let elem_ofs := ((ofs - 33686424) mod 768) in
                            (load_s_el2_vm_info sz idx elem_ofs st))
                          else (
                            if (ofs =? 33701024)
                            then (Some (((st.(shared)).(e_core_data)).(e_last_remap_ptr)))
                            else (
                              if ((33701032 <=? ofs) && (ofs <? 33701288))
                              then (
                                let idx := ((ofs - 33701032) / 16) in
                                let elem_ofs := ((ofs - 33701032) mod 16) in
                                (load_s_el2_smmu_cfg sz idx elem_ofs st))
                              else (
                                if ((33701288 <=? ofs) && (ofs <? 33701480))
                                then (
                                  let idx := ((ofs - 33701288) / 96) in
                                  let elem_ofs := ((ofs - 33701288) mod 96) in
                                  (load_s_el2_arm_smmu_device sz elem_ofs (((st.(priv)).(e_smmus)) @ idx)))
                                else (
                                  if (ofs =? 33701480)
                                  then (Some ((st.(priv)).(e_el2_smmu_num)))
                                  else (
                                    if (ofs =? 33701484)
                                    then (Some (((st.(shared)).(e_core_data)).(e_next_vmid)))
                                    else (
                                      if (ofs =? 33701488)
                                      then (Some ((st.(priv)).(e_vgic_cpu_base)))
                                      else (
                                        if (ofs =? 33701496)
                                        then (Some ((st.(priv)).(e_installed)))
                                        else (
                                          if ((33701504 <=? ofs) && (ofs <? 33730176))
                                          then (
                                            let idx := ((ofs - 33701504) / 1792) in
                                            let elem_ofs := ((ofs - 33701504) mod 1792) in
                                            (load_s_el2_per_cpu_data sz elem_ofs (((st.(priv)).(e_per_cpu_data)) @ idx)))
                                          else (
                                            if (ofs =? 33730176)
                                            then (Some ((st.(priv)).(e_core_start)))
                                            else (
                                              if (ofs =? 33730184)
                                              then (Some ((st.(priv)).(e_core_end)))
                                              else (
                                                if ((33730192 <=? ofs) && (ofs <? 33730832))
                                                then (
                                                  let idx := ((ofs - 33730192) / 8) in
                                                  (Some (((st.(priv)).(e_hacl_hash)) @ idx)))
                                                else (
                                                  if ((33730832 <=? ofs) && (ofs <? 33731088))
                                                  then (
                                                    let idx := ((ofs - 33730832) / 4) in
                                                    (Some (((st.(priv)).(e_hacl_hash0)) @ idx)))
                                                  else (
                                                    if ((33731088 <=? ofs) && (ofs <? 33731104))
                                                    then (
                                                      let idx := ((ofs - 33731088) / 1) in
                                                      (Some (((st.(priv)).(e__key)) @ idx)))
                                                    else (
                                                      if (ofs =? 33731104)
                                                      then (Some (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)))
                                                      else (
                                                        if (ofs =? 33731112)
                                                        then (Some (((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)))
                                                        else (
                                                          if (ofs =? 33731120)
                                                          then (Some (((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)))
                                                          else (
                                                            if (ofs =? 33731128)
                                                            then (Some ((st.(priv)).(e_phys_mem_start)))
                                                            else (
                                                              if (ofs =? 33731136)
                                                              then (Some ((st.(priv)).(e_phys_mem_size)))
                                                              else None))))))))))))))))))))))))))))).

  Definition store_el2_data (sz: Z) (ofs: Z) (v: Z) (st: RData) : (option RData) :=
    if ((0 <=? ofs) && (ofs <? 768))
    then (
      let idx := ((ofs - 0) / 24) in
      let elem_ofs := ((ofs - 0) mod 24) in
      when ret == ((store_s_memblock_region sz elem_ofs v (((st.(priv)).(e_regions)) @ idx)));
      (Some (st.[priv].[e_regions] :< (((st.(priv)).(e_regions)) # idx == ret))))
    else (
      if ((768 <=? ofs) && (ofs <? 1024))
      then (
        let idx := ((ofs - 768) / 8) in
        let elem_ofs := ((ofs - 768) mod 8) in
        when ret == ((store_s_s2_memblock_info sz elem_ofs v (((st.(priv)).(e_s2_memblock_info)) @ idx)));
        (Some (st.[priv].[e_s2_memblock_info] :< (((st.(priv)).(e_s2_memblock_info)) # idx == ret))))
      else (
        if ((1024 <=? ofs) && (ofs <? 1040))
        then (
          let elem_ofs := (ofs - 1024) in
          when ret == ((store_s_s2_cpu_arch sz elem_ofs v ((st.(priv)).(e_arch))));
          (Some (st.[priv].[e_arch] :< ret)))
        else (
          if (ofs =? 1040)
          then (Some (st.[priv].[e_regions_cnt] :< v))
          else (
            if (ofs =? 1056)
            then (Some (st.[priv].[e_host_vttbr] :< v))
            else (
              if (ofs =? 1080)
              then (Some (st.[priv].[e_pl011_base] :< v))
              else (
                if (ofs =? 1088)
                then (Some (st.[priv].[e_uart_8250_base] :< v))
                else (
                  if (ofs =? 1120)
                  then (Some (st.[priv].[e_ram_start_pfn] :< v))
                  else (
                    if ((1128 <=? ofs) && (ofs <? 33555560))
                    then (
                      let idx := ((ofs - 1128) / 16) in
                      let elem_ofs := ((ofs - 1128) mod 16) in
                      when ret == ((store_s_s2_page sz elem_ofs v (((st.(shared)).(e_s2pages)) @ idx)));
                      (Some (st.[shared].[e_s2pages] :< (((st.(shared)).(e_s2pages)) # idx == ret))))
                    else (
                      if ((33555568 <=? ofs) && (ofs <? 33685744))
                      then (
                        let idx := ((ofs - 33555568) / 1808) in
                        let elem_ofs := ((ofs - 33555568) mod 1808) in
                        when ret == ((store_s_shadow_vcpu_context sz elem_ofs v (((st.(priv)).(e_shadow_ctxts)) @ idx)));
                        (Some (st.[priv].[e_shadow_ctxts] :< (((st.(priv)).(e_shadow_ctxts)) # idx == ret))))
                      else (
                        if ((33685752 <=? ofs) && (ofs <? 33686424))
                        then (
                          let idx := ((ofs - 33685752) / 24) in
                          let elem_ofs := ((ofs - 33685752) mod 24) in
                          when ret == ((store_s_s2_sys_reg_desc sz elem_ofs v (((st.(priv)).(e_s2_sys_reg_descs)) @ idx)));
                          (Some (st.[priv].[e_s2_sys_reg_descs] :< (((st.(priv)).(e_s2_sys_reg_descs)) # idx == ret))))
                        else (
                          if ((33686424 <=? ofs) && (ofs <? 33701016))
                          then (
                            let idx := ((ofs - 33686424) / 768) in
                            let elem_ofs := ((ofs - 33686424) mod 768) in
                            (store_s_el2_vm_info sz idx elem_ofs v st))
                          else (
                            if (ofs =? 33701024)
                            then (Some (st.[shared].[e_core_data].[e_last_remap_ptr] :< v))
                            else (
                              if ((33701032 <=? ofs) && (ofs <? 33701288))
                              then (
                                let idx := ((ofs - 33701032) / 16) in
                                let elem_ofs := ((ofs - 33701032) mod 16) in
                                (store_s_el2_smmu_cfg sz idx elem_ofs v st))
                              else (
                                if ((33701288 <=? ofs) && (ofs <? 33701480))
                                then (
                                  let idx := ((ofs - 33701288) / 96) in
                                  let elem_ofs := ((ofs - 33701288) mod 96) in
                                  when ret == ((store_s_el2_arm_smmu_device sz elem_ofs v (((st.(priv)).(e_smmus)) @ idx)));
                                  (Some (st.[priv].[e_smmus] :< (((st.(priv)).(e_smmus)) # idx == ret))))
                                else (
                                  if (ofs =? 33701480)
                                  then (Some (st.[priv].[e_el2_smmu_num] :< v))
                                  else (
                                    if (ofs =? 33701484)
                                    then (Some (st.[shared].[e_core_data].[e_next_vmid] :< v))
                                    else (
                                      if (ofs =? 33701488)
                                      then (Some (st.[priv].[e_vgic_cpu_base] :< v))
                                      else (
                                        if (ofs =? 33701496)
                                        then (Some (st.[priv].[e_installed] :< v))
                                        else (
                                          if ((33701504 <=? ofs) && (ofs <? 33730176))
                                          then (
                                            let idx := ((ofs - 33701504) / 1792) in
                                            let elem_ofs := ((ofs - 33701504) mod 1792) in
                                            when ret == ((store_s_el2_per_cpu_data sz elem_ofs v (((st.(priv)).(e_per_cpu_data)) @ idx)));
                                            (Some (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # idx == ret))))
                                          else (
                                            if (ofs =? 33730176)
                                            then (Some (st.[priv].[e_core_start] :< v))
                                            else (
                                              if (ofs =? 33730184)
                                              then (Some (st.[priv].[e_core_end] :< v))
                                              else (
                                                if ((33730192 <=? ofs) && (ofs <? 33730832))
                                                then (
                                                  let idx := ((ofs - 33730192) / 8) in
                                                  (Some (st.[priv].[e_hacl_hash] :< (((st.(priv)).(e_hacl_hash)) # idx == v))))
                                                else (
                                                  if ((33730832 <=? ofs) && (ofs <? 33731088))
                                                  then (
                                                    let idx := ((ofs - 33730832) / 4) in
                                                    (Some (st.[priv].[e_hacl_hash0] :< (((st.(priv)).(e_hacl_hash0)) # idx == v))))
                                                  else (
                                                    if ((33731088 <=? ofs) && (ofs <? 33731104))
                                                    then (
                                                      let idx := ((ofs - 33731088) / 1) in
                                                      (Some (st.[priv].[e__key] :< (((st.(priv)).(e__key)) # idx == v))))
                                                    else (
                                                      if (ofs =? 33731104)
                                                      then (Some (st.[shared].[e_smmupts].[e_smmu_page_pool_start] :< v))
                                                      else (
                                                        if (ofs =? 33731112)
                                                        then (Some (st.[shared].[e_smmupts].[e_smmu_pgd_used_pages] :< v))
                                                        else (
                                                          if (ofs =? 33731120)
                                                          then (Some (st.[shared].[e_smmupts].[e_smmu_pmd_used_pages] :< v))
                                                          else (
                                                            if (ofs =? 33731128)
                                                            then (Some (st.[priv].[e_phys_mem_start] :< v))
                                                            else (
                                                              if (ofs =? 33731136)
                                                              then (Some (st.[priv].[e_phys_mem_size] :< v))
                                                              else None))))))))))))))))))))))))))))).

  Definition load_RData (sz: Z) (p: Ptr) (st: RData) : (option (Z * RData)) :=
    match (((p.(pbase)), (p.(poffset)))) with
    | ("el2_data", ofs) =>
      match ((el2_data_lock_map ofs)) with
      | PRIVATE =>
        when v == ((load_el2_data sz ofs st));
        (Some (v, st))
      | (LOCK_PROT lk) =>
        rely (((((st.(shared)).(e_locks)) @ lk) = (Some CPU_ID)));
        when v == ((load_el2_data sz ofs st));
        (Some (v, st))
      | LOCK_FREE =>
        when st == ((query_oracle st));
        when v == ((load_el2_data sz ofs st));
        let e := (EVT CPU_ID (ALOAD (p.(pbase)) (p.(poffset)) sz)) in
        (Some (v, (st.[log] :< (e :: (st.(log))))))
      | _ => None
      end
    | ("shared_data", ofs) =>
      if ((0 <=? ofs) && (ofs <? 158832))
      then (
        let idx := ((ofs - 0) / 8824) in
        let elem_ofs := ((ofs - 0) mod 8824) in
        when v == ((load_s_kvm sz elem_ofs (((st.(priv)).(e_kvm_pool)) @ idx)));
        (Some (v, st)))
      else (
        if ((158832 <=? ofs) && (ofs <? 810864))
        then (
          let idx := ((ofs - 158832) / 9056) in
          let elem_ofs := ((ofs - 158832) mod 9056) in
          when v == ((load_s_kvm_vcpu sz elem_ofs (((st.(priv)).(e_vcpu_pool)) @ idx)));
          (Some (v, st)))
        else None)
    | _ => None
    end.

  Definition store_RData (sz: Z) (p: Ptr) (v: Z) (st: RData) : (option RData) :=
    match (((p.(pbase)), (p.(poffset)))) with
    | ("el2_data", ofs) =>
      match ((el2_data_lock_map ofs)) with
      | PRIVATE => (store_el2_data sz ofs v st)
      | (LOCK_PROT lk) =>
        rely (((((st.(shared)).(e_locks)) @ lk) = (Some CPU_ID)));
        (store_el2_data sz ofs v st)
      | LOCK_FREE =>
        when st == ((query_oracle st));
        when st == ((store_el2_data sz ofs v st));
        let e := (EVT CPU_ID (ASTORE (p.(pbase)) (p.(poffset)) sz v)) in
        (Some (st.[log] :< (e :: (st.(log)))))
      | _ => None
      end
    | ("shared_data", ofs) =>
      if ((0 <=? ofs) && (ofs <? 158832))
      then (
        let idx := ((ofs - 0) / 8824) in
        let elem_ofs := ((ofs - 0) mod 8824) in
        when ret == ((store_s_kvm sz elem_ofs v (((st.(priv)).(e_kvm_pool)) @ idx)));
        (Some (st.[priv].[e_kvm_pool] :< (((st.(priv)).(e_kvm_pool)) # idx == ret))))
      else (
        if ((158832 <=? ofs) && (ofs <? 810864))
        then (
          let idx := ((ofs - 158832) / 9056) in
          let elem_ofs := ((ofs - 158832) mod 9056) in
          when ret == ((store_s_kvm_vcpu sz elem_ofs v (((st.(priv)).(e_vcpu_pool)) @ idx)));
          (Some (st.[priv].[e_vcpu_pool] :< (((st.(priv)).(e_vcpu_pool)) # idx == ret))))
        else None)
    | _ => None
    end.

  Definition get_reg_RData (r: regset) (st: RData) : (option Z) :=
    match (r) with
    | (Rgpsp (Rgp (Rx0 _))) => (Some ((((st.(priv)).(e_cpu_regs)).(e_regs)) @ 0))
    | (Rgpsp (Rgp (Rx1 _))) => (Some ((((st.(priv)).(e_cpu_regs)).(e_regs)) @ 1))
    | (Rgpsp (Rgp (Rx2 _))) => (Some ((((st.(priv)).(e_cpu_regs)).(e_regs)) @ 2))
    | (Rgpsp (Rgp (Rx3 _))) => (Some ((((st.(priv)).(e_cpu_regs)).(e_regs)) @ 3))
    | (Rgpsp (Rgp (Rx30 _))) => (Some ((((st.(priv)).(e_cpu_regs)).(e_regs)) @ 30))
    | (Rsys Rttbr0_el2) => (Some ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ TTBR0_EL2))
    | (Rsys Rvttbr_el2) => (Some ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ VTTBR_EL2))
    | (Rsys Resr_el2) => (Some ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2))
    | (Rsys Relr_el2) => (Some ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ELR_EL2))
    | (Rsys Rtpidr_el2) => (Some ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ TPIDR_EL2))
    | (Rsys Rhcr_el2) => (Some ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ HCR_EL2))
    | (Rsys Rhpfar_el2) => (Some ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ HPFAR_EL2))
    | (Rsys Rfar_el2) => (Some ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2))
    | _ => None
    end.

  Definition set_reg_RData (r: regset) (v_val: Z) (st: RData) : (option RData) :=
    match (r) with
    | (Rgpsp (Rgp (Rx0 _))) => (Some (st.[priv].[e_cpu_regs].[e_regs] :< ((((st.(priv)).(e_cpu_regs)).(e_regs)) # 0 == v_val)))
    | (Rgpsp (Rgp (Rx1 _))) => (Some (st.[priv].[e_cpu_regs].[e_regs] :< ((((st.(priv)).(e_cpu_regs)).(e_regs)) # 1 == v_val)))
    | (Rgpsp (Rgp (Rx2 _))) => (Some (st.[priv].[e_cpu_regs].[e_regs] :< ((((st.(priv)).(e_cpu_regs)).(e_regs)) # 2 == v_val)))
    | (Rgpsp (Rgp (Rx3 _))) => (Some (st.[priv].[e_cpu_regs].[e_regs] :< ((((st.(priv)).(e_cpu_regs)).(e_regs)) # 3 == v_val)))
    | (Rgpsp (Rgp (Rx4 _))) => (Some (st.[priv].[e_cpu_regs].[e_regs] :< ((((st.(priv)).(e_cpu_regs)).(e_regs)) # 4 == v_val)))
    | (Rgpsp (Rgp (Rx30 _))) => (Some (st.[priv].[e_cpu_regs].[e_regs] :< ((((st.(priv)).(e_cpu_regs)).(e_regs)) # 30 == v_val)))
    | (Rsys Rttbr0_el2) => (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # TTBR0_EL2 == v_val)))
    | (Rsys Rvttbr_el2) => (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # VTTBR_EL2 == v_val)))
    | (Rsys Resr_el2) => (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # ESR_EL2 == v_val)))
    | (Rsys Relr_el2) => (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # ELR_EL2 == v_val)))
    | (Rsys Rtpidr_el2) => (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # TPIDR_EL2 == v_val)))
    | (Rsys Rhcr_el2) => (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # HCR_EL2 == v_val)))
    | (Rsys Rhpfar_el2) => (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # HPFAR_EL2 == v_val)))
    | (Rsys Rfar_el2) => (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # FAR_EL2 == v_val)))
    | _ => None
    end.

End GlobalDefs.

#[global] Hint Unfold CPU_ID: spec.
Opaque query_oracle.
#[global] Hint Unfold HOSTVISOR: spec.
#[global] Hint Unfold COREVISOR: spec.
#[global] Hint Unfold MAX_ADDR: spec.
#[global] Hint Unfold MAX_PADDR: spec.
#[global] Hint Unfold MAX_PFN: spec.
#[global] Hint Unfold SMMU_NUM_CBNDX: spec.
#[global] Hint Unfold SMMU_NUM_DEVICE: spec.
#[global] Hint Unfold MAX_LOAD_IDX: spec.
#[global] Hint Unfold VCPU_PER_VM: spec.
#[global] Hint Unfold smmu_id: spec.
#[global] Hint Unfold context_id: spec.
#[global] Hint Unfold is_vmid: spec.
#[global] Hint Unfold is_vcpuid: spec.
#[global] Hint Unfold is_paddr: spec.
#[global] Hint Unfold is_addr: spec.
#[global] Hint Unfold is_pfn: spec.
#[global] Hint Unfold is_cbndx: spec.
#[global] Hint Unfold is_smmu_index: spec.
#[global] Hint Unfold is_load_idx: spec.
#[global] Hint Unfold is_pgdp: spec.
#[global] Hint Unfold is_pudp: spec.
#[global] Hint Unfold is_pmdp: spec.
#[global] Hint Unfold is_ptep: spec.
#[global] Hint Unfold is_smmu_pgdp: spec.
#[global] Hint Unfold is_smmu_pmdp: spec.
#[global] Hint Unfold is_smmu_ptep: spec.
#[global] Hint Unfold is_smmu_addr: spec.
#[global] Hint Unfold MPIDR_EL1: spec.
#[global] Hint Unfold CSSELR_EL1: spec.
#[global] Hint Unfold SCTLR_EL1: spec.
#[global] Hint Unfold ACTLR_EL1: spec.
#[global] Hint Unfold CPACR_EL1: spec.
#[global] Hint Unfold ZCR_EL1: spec.
#[global] Hint Unfold TTBR0_EL1: spec.
#[global] Hint Unfold TTBR1_EL1: spec.
#[global] Hint Unfold TCR_EL1: spec.
#[global] Hint Unfold ESR_EL1: spec.
#[global] Hint Unfold AFSR0_EL1: spec.
#[global] Hint Unfold AFSR1_EL1: spec.
#[global] Hint Unfold FAR_EL1: spec.
#[global] Hint Unfold MAIR_EL1: spec.
#[global] Hint Unfold VBAR_EL1: spec.
#[global] Hint Unfold CONTEXTIDR_EL1: spec.
#[global] Hint Unfold TPIDR_EL0: spec.
#[global] Hint Unfold TPIDRRO_EL0: spec.
#[global] Hint Unfold TPIDR_EL1: spec.
#[global] Hint Unfold AMAIR_EL1: spec.
#[global] Hint Unfold CNTKCTL_EL1: spec.
#[global] Hint Unfold PAR_EL1: spec.
#[global] Hint Unfold MDSCR_EL1: spec.
#[global] Hint Unfold MDCCINT_EL1: spec.
#[global] Hint Unfold DISR_EL1: spec.
#[global] Hint Unfold PMCR_EL0: spec.
#[global] Hint Unfold PMSELR_EL0: spec.
#[global] Hint Unfold PMEVCNTR0_EL0: spec.
#[global] Hint Unfold PMEVCNTR30_EL0: spec.
#[global] Hint Unfold PMCCNTR_EL0: spec.
#[global] Hint Unfold PMEVTYPER0_EL0: spec.
#[global] Hint Unfold PMEVTYPER30_EL0: spec.
#[global] Hint Unfold PMCCFILTR_EL0: spec.
#[global] Hint Unfold PMCNTENSET_EL0: spec.
#[global] Hint Unfold PMINTENSET_EL1: spec.
#[global] Hint Unfold PMOVSSET_EL0: spec.
#[global] Hint Unfold PMSWINC_EL0: spec.
#[global] Hint Unfold PMUSERENR_EL0: spec.
#[global] Hint Unfold APIAKEYLO_EL1: spec.
#[global] Hint Unfold APIAKEYHI_EL1: spec.
#[global] Hint Unfold APIBKEYLO_EL1: spec.
#[global] Hint Unfold APIBKEYHI_EL1: spec.
#[global] Hint Unfold APDAKEYLO_EL1: spec.
#[global] Hint Unfold APDAKEYHI_EL1: spec.
#[global] Hint Unfold APDBKEYLO_EL1: spec.
#[global] Hint Unfold APDBKEYHI_EL1: spec.
#[global] Hint Unfold APGAKEYLO_EL1: spec.
#[global] Hint Unfold APGAKEYHI_EL1: spec.
#[global] Hint Unfold DACR32_EL2: spec.
#[global] Hint Unfold IFSR32_EL2: spec.
#[global] Hint Unfold FPEXC32_EL2: spec.
#[global] Hint Unfold DBGVCR32_EL2: spec.
#[global] Hint Unfold NR_SYS_REGS: spec.
#[global] Hint Unfold TTBR0_EL2: spec.
#[global] Hint Unfold VTTBR_EL2: spec.
#[global] Hint Unfold ESR_EL2: spec.
#[global] Hint Unfold ELR_EL2: spec.
#[global] Hint Unfold TPIDR_EL2: spec.
#[global] Hint Unfold HCR_EL2: spec.
#[global] Hint Unfold HPFAR_EL2: spec.
#[global] Hint Unfold FAR_EL2: spec.
#[global] Hint Unfold load_s_memblock_region: spec.
#[global] Hint Unfold store_s_memblock_region: spec.
#[global] Hint Unfold load_s_s2_memblock_info: spec.
#[global] Hint Unfold store_s_s2_memblock_info: spec.
#[global] Hint Unfold load_s_s2_cpu_arch: spec.
#[global] Hint Unfold store_s_s2_cpu_arch: spec.
#[global] Hint Unfold load_s_b_arch_spinlock_t: spec.
#[global] Hint Unfold store_s_b_arch_spinlock_t: spec.
#[global] Hint Unfold load_s_s2_page: spec.
#[global] Hint Unfold store_s_s2_page: spec.
#[global] Hint Unfold load_s_user_fpsimd_state: spec.
#[global] Hint Unfold store_s_user_fpsimd_state: spec.
#[global] Hint Unfold load_s_shadow_vcpu_context: spec.
#[global] Hint Unfold store_s_shadow_vcpu_context: spec.
#[global] Hint Unfold load_s_s2_sys_reg_desc: spec.
#[global] Hint Unfold store_s_s2_sys_reg_desc: spec.
#[global] Hint Unfold load_s_el2_load_info: spec.
#[global] Hint Unfold store_s_el2_load_info: spec.
#[global] Hint Unfold load_s_int_vcpu: spec.
#[global] Hint Unfold store_s_int_vcpu: spec.
#[global] Hint Unfold load_s_el2_arm_smmu_device: spec.
#[global] Hint Unfold store_s_el2_arm_smmu_device: spec.
#[global] Hint Unfold load_s_user_pt_regs: spec.
#[global] Hint Unfold store_s_user_pt_regs: spec.
#[global] Hint Unfold load_s_kvm_regs: spec.
#[global] Hint Unfold store_s_kvm_regs: spec.
#[global] Hint Unfold load_s_kvm_cpu_context: spec.
#[global] Hint Unfold store_s_kvm_cpu_context: spec.
#[global] Hint Unfold load_s_el2_per_cpu_data: spec.
#[global] Hint Unfold store_s_el2_per_cpu_data: spec.
#[global] Hint Unfold load_s_atomic_t: spec.
#[global] Hint Unfold store_s_atomic_t: spec.
#[global] Hint Unfold load_u_anon_1: spec.
#[global] Hint Unfold store_u_anon_1: spec.
#[global] Hint Unfold load_s_qspinlock: spec.
#[global] Hint Unfold store_s_qspinlock: spec.
#[global] Hint Unfold load_s_raw_spinlock: spec.
#[global] Hint Unfold store_s_raw_spinlock: spec.
#[global] Hint Unfold load_u_anon_0: spec.
#[global] Hint Unfold store_u_anon_0: spec.
#[global] Hint Unfold load_s_spinlock: spec.
#[global] Hint Unfold store_s_spinlock: spec.
#[global] Hint Unfold load_s_atomic64_t: spec.
#[global] Hint Unfold store_s_atomic64_t: spec.
#[global] Hint Unfold load_s_optimistic_spin_queue: spec.
#[global] Hint Unfold store_s_optimistic_spin_queue: spec.
#[global] Hint Unfold load_s_list_head: spec.
#[global] Hint Unfold store_s_list_head: spec.
#[global] Hint Unfold load_s_mutex: spec.
#[global] Hint Unfold store_s_mutex: spec.
#[global] Hint Unfold load_s_anon_124: spec.
#[global] Hint Unfold store_s_anon_124: spec.
#[global] Hint Unfold load_s_kvm_vm_stat: spec.
#[global] Hint Unfold store_s_kvm_vm_stat: spec.
#[global] Hint Unfold load_s_kvm_vmid: spec.
#[global] Hint Unfold store_s_kvm_vmid: spec.
#[global] Hint Unfold load_u_anon_125: spec.
#[global] Hint Unfold store_u_anon_125: spec.
#[global] Hint Unfold load_u_anon_121: spec.
#[global] Hint Unfold store_u_anon_121: spec.
#[global] Hint Unfold load_s_kvm_io_device: spec.
#[global] Hint Unfold store_s_kvm_io_device: spec.
#[global] Hint Unfold load_s_vgic_io_device: spec.
#[global] Hint Unfold store_s_vgic_io_device: spec.
#[global] Hint Unfold load_s_its_vm: spec.
#[global] Hint Unfold store_s_its_vm: spec.
#[global] Hint Unfold load_s_vgic_dist: spec.
#[global] Hint Unfold store_s_vgic_dist: spec.
#[global] Hint Unfold load_s_kvm_arch: spec.
#[global] Hint Unfold store_s_kvm_arch: spec.
#[global] Hint Unfold load_s_refcount_struct: spec.
#[global] Hint Unfold store_s_refcount_struct: spec.
#[global] Hint Unfold load_s_hlist_head: spec.
#[global] Hint Unfold store_s_hlist_head: spec.
#[global] Hint Unfold load_s_hlist_node: spec.
#[global] Hint Unfold store_s_hlist_node: spec.
#[global] Hint Unfold load_s_callback_head: spec.
#[global] Hint Unfold store_s_callback_head: spec.
#[global] Hint Unfold load_s_mmu_notifier: spec.
#[global] Hint Unfold store_s_mmu_notifier: spec.
#[global] Hint Unfold load_s_srcu_node: spec.
#[global] Hint Unfold store_s_srcu_node: spec.
#[global] Hint Unfold load_s_wait_queue_head: spec.
#[global] Hint Unfold store_s_wait_queue_head: spec.
#[global] Hint Unfold load_s_completion: spec.
#[global] Hint Unfold store_s_completion: spec.
#[global] Hint Unfold load_s_work_struct: spec.
#[global] Hint Unfold store_s_work_struct: spec.
#[global] Hint Unfold load_s_timer_list: spec.
#[global] Hint Unfold store_s_timer_list: spec.
#[global] Hint Unfold load_s_delayed_work: spec.
#[global] Hint Unfold store_s_delayed_work: spec.
#[global] Hint Unfold load_s_srcu_struct: spec.
#[global] Hint Unfold store_s_srcu_struct: spec.
#[global] Hint Unfold load_s_kvm: spec.
#[global] Hint Unfold store_s_kvm: spec.
#[global] Hint Unfold load_s_preempt_notifier: spec.
#[global] Hint Unfold store_s_preempt_notifier: spec.
#[global] Hint Unfold load_s_swait_queue_head: spec.
#[global] Hint Unfold store_s_swait_queue_head: spec.
#[global] Hint Unfold load_s_sigset_t: spec.
#[global] Hint Unfold store_s_sigset_t: spec.
#[global] Hint Unfold load_s_kvm_vcpu_stat: spec.
#[global] Hint Unfold store_s_kvm_vcpu_stat: spec.
#[global] Hint Unfold load_s_kvm_mmio_fragment: spec.
#[global] Hint Unfold store_s_kvm_mmio_fragment: spec.
#[global] Hint Unfold load_s_anon_116: spec.
#[global] Hint Unfold store_s_anon_116: spec.
#[global] Hint Unfold load_s_s2_trans: spec.
#[global] Hint Unfold store_s_s2_trans: spec.
#[global] Hint Unfold load_s_kvm_vcpu_fault_info: spec.
#[global] Hint Unfold store_s_kvm_vcpu_fault_info: spec.
#[global] Hint Unfold load_s_kvm_guest_debug_arch: spec.
#[global] Hint Unfold store_s_kvm_guest_debug_arch: spec.
#[global] Hint Unfold load_s_anon_118: spec.
#[global] Hint Unfold store_s_anon_118: spec.
#[global] Hint Unfold load_s_its_vpe: spec.
#[global] Hint Unfold store_s_its_vpe: spec.
#[global] Hint Unfold load_s_vgic_v3_cpu_if: spec.
#[global] Hint Unfold store_s_vgic_v3_cpu_if: spec.
#[global] Hint Unfold load_u_anon_119: spec.
#[global] Hint Unfold store_u_anon_119: spec.
#[global] Hint Unfold load_s_kref: spec.
#[global] Hint Unfold store_s_kref: spec.
#[global] Hint Unfold load_u_anon_120: spec.
#[global] Hint Unfold store_u_anon_120: spec.
#[global] Hint Unfold load_s_vgic_irq: spec.
#[global] Hint Unfold store_s_vgic_irq: spec.
#[global] Hint Unfold load_s_vgic_cpu: spec.
#[global] Hint Unfold store_s_vgic_cpu: spec.
#[global] Hint Unfold load_u_anon_122: spec.
#[global] Hint Unfold store_u_anon_122: spec.
#[global] Hint Unfold load_s_kvm_irq_level: spec.
#[global] Hint Unfold store_s_kvm_irq_level: spec.
#[global] Hint Unfold load_s_rb_node: spec.
#[global] Hint Unfold store_s_rb_node: spec.
#[global] Hint Unfold load_s_timerqueue_node: spec.
#[global] Hint Unfold store_s_timerqueue_node: spec.
#[global] Hint Unfold load_s_hrtimer: spec.
#[global] Hint Unfold store_s_hrtimer: spec.
#[global] Hint Unfold load_s_arch_timer_context: spec.
#[global] Hint Unfold store_s_arch_timer_context: spec.
#[global] Hint Unfold load_s_arch_timer_cpu: spec.
#[global] Hint Unfold store_s_arch_timer_cpu: spec.
#[global] Hint Unfold load_s_kvm_pmc: spec.
#[global] Hint Unfold store_s_kvm_pmc: spec.
#[global] Hint Unfold load_s_kvm_pmu: spec.
#[global] Hint Unfold store_s_kvm_pmu: spec.
#[global] Hint Unfold load_s_anon_123: spec.
#[global] Hint Unfold store_s_anon_123: spec.
#[global] Hint Unfold load_s_kvm_decode: spec.
#[global] Hint Unfold store_s_kvm_decode: spec.
#[global] Hint Unfold load_s_kvm_mmu_memory_cache: spec.
#[global] Hint Unfold store_s_kvm_mmu_memory_cache: spec.
#[global] Hint Unfold load_s_vcpu_reset_state: spec.
#[global] Hint Unfold store_s_vcpu_reset_state: spec.
#[global] Hint Unfold load_s_kvm_vcpu_arch: spec.
#[global] Hint Unfold store_s_kvm_vcpu_arch: spec.
#[global] Hint Unfold load_s_kvm_vcpu: spec.
#[global] Hint Unfold store_s_kvm_vcpu: spec.
#[global] Hint Unfold S2PAGE_LOCK: spec.
#[global] Hint Unfold ABS_LOCK: spec.
#[global] Hint Unfold SMMU_LOCK: spec.
#[global] Hint Unfold SMMUPT_LOCK: spec.
#[global] Hint Unfold VM_LOCK: spec.
#[global] Hint Unfold S2PT_LOCK: spec.
#[global] Hint Unfold el2_vm_info_lock_mapping: spec.
#[global] Hint Unfold el2_smmu_cfg_mapping: spec.
#[global] Hint Unfold el2_data_lock_map: spec.
#[global] Hint Unfold load_s_el2_vm_info: spec.
#[global] Hint Unfold store_s_el2_vm_info: spec.
#[global] Hint Unfold load_s_el2_smmu_cfg: spec.
#[global] Hint Unfold store_s_el2_smmu_cfg: spec.
#[global] Hint Unfold load_el2_data: spec.
#[global] Hint Unfold store_el2_data: spec.
#[global] Hint Unfold load_RData: spec.
#[global] Hint Unfold store_RData: spec.
#[global] Hint Unfold get_reg_RData: spec.
#[global] Hint Unfold set_reg_RData: spec.
