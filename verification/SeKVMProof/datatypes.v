Include "datatypes_gen.v".

Record CoreData :=
  mkCoreData {
    e_next_vmid : Z;
    e_last_remap_ptr : Z
  }.

Record SMMU_PT :=
  mkSMMU_PT {
    e_smmu_page_pool_start : Z;
    e_smmu_pgd_used_pages : Z;
    e_smmu_pmd_used_pages : Z;

    e_smmu_pgd_pool: ZMap.t Z;
    e_smmu_pmd_pool: ZMap.t Z;
    e_smmu_pte_pool: ZMap.t Z;

    e_smmu_pt: (ZMap.t (ZMap.t (option Z)))
  }.

Record Stage2PT :=
  mkStage2PT {
    e_vttbr : Z;
    e_page_pool_start : Z;
    e_pmd_used_pages : Z;
    e_pud_used_pages : Z;
    e_pte_used_pages : Z;

    e_pgd_pool: ZMap.t Z;
    e_pud_pool: ZMap.t Z;
    e_pmd_pool: ZMap.t Z;
    e_pte_pool: ZMap.t Z;

    e_lv2pt: ZMap.t (option Z);
    e_lv3pt: ZMap.t (option Z)
  }.

Record VMInfo :=
  mkVMInfo {
    e___vmid : Z;
    e_load_info_cnt : Z;
    e_kvm_pg_cnt : Z;
    e_inc_exe : Z;
    e__state : Z;
    e_load_info : (ZMap.t s_el2_load_info);
    e_kvm : Z;
    e_int_vcpus : (ZMap.t s_int_vcpu);
    e_key : (ZMap.t Z);
    e_iv : (ZMap.t Z);
    e_public_key : (ZMap.t Z);
    e_powered_on : Z
  }.

Record Shared :=
  mkShared {
    e_locks: ZMap.t (option Z);
    e_s2pages : ZMap.t s_s2_page;
    e_core_data: CoreData;
    e_s2pts: ZMap.t Stage2PT;
    e_smmupts : SMMU_PT;
    e_smmu_vmid: ZMap.t Z;
    e_vminfos : ZMap.t VMInfo
  }.

Record PrivData :=
  mkPrivData {
    e_regions : (ZMap.t s_memblock_region);
    e_s2_memblock_info : (ZMap.t s_s2_memblock_info);
    e_arch : s_s2_cpu_arch;
    e_regions_cnt : Z;
    e_host_vttbr : Z;
    e_pl011_base : Z;
    e_uart_8250_base : Z;
    e_ram_start_pfn : Z;
    e_shadow_ctxts : (ZMap.t s_shadow_vcpu_context);
    e_s2_sys_reg_descs : (ZMap.t s_s2_sys_reg_desc);
    e_smmu_cfg : (ZMap.t s_el2_smmu_cfg);
    e_smmus : (ZMap.t s_el2_arm_smmu_device);
    e_el2_smmu_num : Z;
    e_vgic_cpu_base : Z;
    e_installed : Z;
    e_per_cpu_data : (ZMap.t s_el2_per_cpu_data);
    e_core_start : Z;
    e_core_end : Z;
    e_hacl_hash : (ZMap.t Z);
    e_hacl_hash0 : (ZMap.t Z);
    e__key : (ZMap.t Z);
    e_phys_mem_start : Z;
    e_phys_mem_size : Z;
    e_kvm_pool : (ZMap.t s_kvm);
    e_vcpu_pool : (ZMap.t s_kvm_vcpu);

    e_cpu_regs: s_shadow_vcpu_context;
    e_host_cpus: ZMap.t s_kvm_cpu_context;
    e_host_ctxt: ZMap.t Z;
    e_umem: ZMap.t Z
  }.

Inductive SharedState :=
| S2PAGE_STATE (s2p: ZMap.t s_s2_page)
| ABS_STATE (score: CoreData)
| SMMU_VMID_STATE (ssmmu_vmid: ZMap.t Z)
| SMMUPT_STATE (ssmmupt: SMMU_PT)
| VMINFO_STATE (svminfo: VMInfo)
| S2PT_STATE (ss2pt: Stage2PT).

Inductive AtomicEvent :=
| ACQ (acq_lock: Z)
| REL (rel_lock: Z) (ss: SharedState)
| ALOAD (load_base: string) (load_off: Z) (load_size: Z)
| ASTORE (store_base: string) (store_off: Z) (store_size: Z) (store_val: Z).

Inductive Event :=
| EVT (cpu: Z) (e: AtomicEvent).

Definition CPU_ID : Z := 0.
Definition Log := list Event.
Definition Oracle := Log -> (Log).

Inductive LOCK_MAP :=
| PRIVATE
| LOCK_FREE
| LOCK_PROT (prot_lock: Z)
| LOCK_IMPL (impl_lock: Z).

Record RData :=
  mkRData {
    shared: Shared;
    priv: PrivData;
    log: Log;
    oracle: Oracle;
    repl: Shared -> (Log -> (option Shared))
  }.

Definition query_oracle (st: RData) : option RData :=
  let L := (st.(oracle) st.(log)) in
  when new_sh == (st.(repl) st.(shared) L);
  Some ((st.[shared] :< new_sh).[log] :< (L ++ (st.(log)))).

Hint NoUnfold query_oracle.