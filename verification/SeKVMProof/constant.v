Definition HOSTVISOR: Z := 0.
Definition COREVISOR: Z := 18.
Definition MAX_ADDR: Z := (1 << 48) - 1.
Definition MAX_PADDR: Z := (1 << 40) - 1.
Definition MAX_PFN: Z := (1 << 28) - 1.
Definition SMMU_NUM_CBNDX: Z := 8.
Definition SMMU_NUM_DEVICE: Z := 2.
Definition MAX_LOAD_IDX: Z := 5.
Definition VCPU_PER_VM: Z := 4.

Definition smmu_id (cbndx: Z) (index: Z) : Z := index * SMMU_NUM_CBNDX + cbndx.
Definition context_id (v_vmid: Z) (v_vcpuid: Z) : Z := v_vmid * VCPU_PER_VM + v_vcpuid.

Definition is_vmid (v_vmid: Z): Prop := (HOSTVISOR <= v_vmid) /\ (v_vmid <= COREVISOR).
Definition is_vcpuid (v_vcpuid: Z): Prop := (0 <= v_vcpuid) /\ (v_vcpuid < VCPU_PER_VM).
Definition is_paddr (v_addr: Z): Prop := (0 <= v_addr) /\ (v_addr <= MAX_PADDR).
Definition is_addr (v_addr: Z): Prop := (0 <= v_addr) /\ (v_addr <= MAX_ADDR).
Definition is_pfn (v_pfn: Z): Prop := (0 <= v_pfn) /\ (v_pfn <= MAX_PFN).
Definition is_cbndx (v_cbndx: Z): Prop := (0 <= v_cbndx) /\ (v_cbndx < SMMU_NUM_CBNDX).
Definition is_smmu_index (v_index: Z): Prop := (0 <= v_index) /\ (v_index < SMMU_NUM_DEVICE).
Definition is_load_idx (v_load_idx: Z): Prop := (0 <= v_load_idx) /\ (v_load_idx < MAX_LOAD_IDX).

Definition is_pgdp (v_addr: Z) (npt: Stage2PT): bool := 
  (npt.(e_page_pool_start) <=? v_addr) && (v_addr <? npt.(e_page_pool_start) + 4096).
Definition is_pudp (v_addr: Z) (npt: Stage2PT): bool := 
  (npt.(e_page_pool_start) + 4096 <=? v_addr) && (v_addr <? npt.(e_page_pool_start) + 17 * 4096).
Definition is_pmdp (v_addr: Z) (npt: Stage2PT): bool :=
  (npt.(e_page_pool_start) + 17 * 4096 <=? v_addr) && (v_addr <? npt.(e_page_pool_start) + 512 * 4096).
Definition is_ptep (v_addr: Z) (npt: Stage2PT): bool :=
  (npt.(e_page_pool_start) + 512 * 4096  <=? v_addr) && (v_addr <? npt.(e_page_pool_start) + 2048 * 4096).
Definition is_smmu_pgdp (v_addr: Z) (spts: SMMU_PT): bool := 
  v_addr <? spts.(e_smmu_page_pool_start).
Definition is_smmu_pmdp (v_addr: Z) (spts: SMMU_PT): bool :=
  (spts.(e_smmu_page_pool_start) <=? v_addr) && (v_addr <? spts.(e_smmu_page_pool_start) + 256 * 4096).
Definition is_smmu_ptep (v_addr: Z) (spts: SMMU_PT): bool :=
  (spts.(e_smmu_page_pool_start) + 256 * 4096 <=? v_addr) && (v_addr <? spts.(e_smmu_page_pool_start) + 4096 * 4096).
Definition is_smmu_addr (v_addr: Z) (v_base: Z): bool :=
  (v_addr >=? v_base) && (v_addr <? v_base + 65536).

Definition MPIDR_EL1 : Z := 1.
Definition CSSELR_EL1 : Z := 2.
Definition SCTLR_EL1 : Z := 3.
Definition ACTLR_EL1 : Z := 4.
Definition CPACR_EL1 : Z := 5.
Definition ZCR_EL1 : Z := 6.
Definition TTBR0_EL1 : Z := 7.
Definition TTBR1_EL1 : Z := 8.
Definition TCR_EL1 : Z := 9.
Definition ESR_EL1 : Z := 10.
Definition AFSR0_EL1 : Z := 11.
Definition AFSR1_EL1 : Z := 12.
Definition FAR_EL1 : Z := 13.
Definition MAIR_EL1 : Z := 14.
Definition VBAR_EL1 : Z := 15.
Definition CONTEXTIDR_EL1 : Z := 16.
Definition TPIDR_EL0 : Z := 17.
Definition TPIDRRO_EL0 : Z := 18.
Definition TPIDR_EL1 : Z := 19.
Definition AMAIR_EL1 : Z := 20.
Definition CNTKCTL_EL1 : Z := 21.
Definition PAR_EL1 : Z := 22.
Definition MDSCR_EL1 : Z := 23.
Definition MDCCINT_EL1 : Z := 23.
Definition DISR_EL1 : Z := 24.
Definition PMCR_EL0 : Z := 25.
Definition PMSELR_EL0 : Z := 26.
Definition PMEVCNTR0_EL0 : Z := 27.
Definition PMEVCNTR30_EL0 : Z := 57.
Definition PMCCNTR_EL0 : Z := 58.
Definition PMEVTYPER0_EL0 : Z := 59.
Definition PMEVTYPER30_EL0 : Z := 89.
Definition PMCCFILTR_EL0 : Z := 90.
Definition PMCNTENSET_EL0 : Z := 91.
Definition PMINTENSET_EL1 : Z := 92.
Definition PMOVSSET_EL0 : Z := 93.
Definition PMSWINC_EL0 : Z := 94.
Definition PMUSERENR_EL0 : Z := 95.
Definition APIAKEYLO_EL1 : Z := 96.
Definition APIAKEYHI_EL1 : Z := 97.
Definition APIBKEYLO_EL1 : Z := 98.
Definition APIBKEYHI_EL1 : Z := 99.
Definition APDAKEYLO_EL1 : Z := 100.
Definition APDAKEYHI_EL1 : Z := 101.
Definition APDBKEYLO_EL1 : Z := 102.
Definition APDBKEYHI_EL1 : Z := 103.
Definition APGAKEYLO_EL1 : Z := 104.
Definition APGAKEYHI_EL1 : Z := 105.
Definition DACR32_EL2 : Z := 106.
Definition IFSR32_EL2 : Z := 107.
Definition FPEXC32_EL2 : Z := 108.
Definition DBGVCR32_EL2 : Z := 109.
Definition NR_SYS_REGS : Z := 110.

Definition TTBR0_EL2 : Z := 1.
Definition VTTBR_EL2 : Z := 2.
Definition ESR_EL2 : Z := 3.
Definition ELR_EL2 : Z := 4.
Definition TPIDR_EL2 : Z := 5.
Definition HCR_EL2 : Z := 6.
Definition HPFAR_EL2 : Z := 7.
Definition FAR_EL2 : Z := 8.