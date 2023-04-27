Include "load_store_gen.v".

Definition S2PAGE_LOCK: Z := 1.
Definition ABS_LOCK: Z := 2.
Definition SMMU_LOCK: Z := 3.
Definition SMMUPT_LOCK: Z := 4.
Definition VM_LOCK (vid: Z): Z := (5 + vid).
Definition S2PT_LOCK (vid: Z): Z := (5 + 19 + vid).

Definition el2_vm_info_lock_mapping (vid: Z) (ofs: Z) : LOCK_MAP :=
  if (ofs =? 0) then (LOCK_PROT (S2PT_LOCK vid)) else
  if (ofs =? 728) then (LOCK_PROT (S2PT_LOCK vid)) else
  if (ofs =? 736) then (LOCK_PROT (S2PT_LOCK vid)) else
  if (ofs =? 744) then (LOCK_PROT (S2PT_LOCK vid)) else
  if (ofs =? 752) then (LOCK_PROT (S2PT_LOCK vid)) else
  if (ofs =? 760) then (LOCK_PROT (S2PT_LOCK vid)) else
  if (512 <=? ofs) && (ofs <? 516) then (LOCK_IMPL (S2PT_LOCK vid)) else
  if (516 <=? ofs) && (ofs <? 520) then (LOCK_IMPL (VM_LOCK vid)) else
  (LOCK_PROT (VM_LOCK vid)).

Definition el2_smmu_cfg_mapping (ofs: Z) : LOCK_MAP :=
  if ofs =? 0 then (LOCK_PROT SMMU_LOCK) else
  PRIVATE.

Definition el2_data_lock_map (ofs: Z) : LOCK_MAP :=
  if (1096 <=? ofs) && (ofs <? 1100) then (LOCK_IMPL S2PAGE_LOCK) else
  if (1100 <=? ofs) && (ofs <? 1104) then (LOCK_IMPL ABS_LOCK) else
  if (1112 <=? ofs) && (ofs <? 1116) then (LOCK_IMPL SMMU_LOCK) else
  if (1116 <=? ofs) && (ofs <? 1120) then (LOCK_IMPL SMMUPT_LOCK) else
  if (1128 <=? ofs) && (ofs <? 33555560) then (LOCK_PROT S2PAGE_LOCK) else
  if (ofs =? 33701024) then (LOCK_PROT ABS_LOCK) else
  if (33686424 <=? ofs) && (ofs <? 33701016) then (
    let idx := (ofs - 33686424) / 768 in
    let elem_ofs := (ofs - 33686424) mod 768 in
    el2_vm_info_lock_mapping idx elem_ofs) else
  if (33701032 <=? ofs) && (ofs <? 33701288) then (
    let idx := (ofs - 33701032) / 16 in
    let elem_ofs := (ofs - 33701032) mod 16 in
    el2_smmu_cfg_mapping elem_ofs) else
  if (ofs =? 33701484) then (LOCK_PROT ABS_LOCK) else
  if (ofs =? 33731104) then (LOCK_PROT SMMUPT_LOCK) else
  if (ofs =? 33731112) then (LOCK_PROT SMMUPT_LOCK) else
  if (ofs =? 33731120) then (LOCK_PROT SMMUPT_LOCK) else
  PRIVATE.

Definition load_s_el2_vm_info (sz: Z) (idx: Z) (ofs: Z) (st: RData) : option Z :=
  let s2pt := st.(shared).(e_s2pts) @ idx in
  let vminfo := st.(shared).(e_vminfos) @ idx in
  if (ofs =? 0) then Some (s2pt.(e_vttbr)) else
  if (ofs =? 8) then Some (vminfo.(e___vmid)) else
  if (ofs =? 12) then Some (vminfo.(e_load_info_cnt)) else
  if (ofs =? 16) then Some (vminfo.(e_kvm_pg_cnt)) else
  if (ofs =? 20) then Some (vminfo.(e_inc_exe)) else
  if (ofs =? 24) then Some (vminfo.(e__state)) else
  if (32 <=? ofs) && (ofs <? 512) then (
    let idx := (ofs - 32) / 96 in
    let elem_ofs := (ofs - 32) mod 96 in
    load_s_el2_load_info sz elem_ofs (vminfo.(e_load_info) @ idx)) else
  if (ofs =? 520) then Some (vminfo.(e_kvm)) else
  if (528 <=? ofs) && (ofs <? 624) then (
    let idx := (ofs - 528) / 24 in
    let elem_ofs := (ofs - 528) mod 24 in
    load_s_int_vcpu sz elem_ofs (vminfo.(e_int_vcpus) @ idx)) else
  if (656 <=? ofs) && (ofs <? 672) then (
    let idx := (ofs - 656) / 1 in
    Some (vminfo.(e_key) @ idx)) else
  if (672 <=? ofs) && (ofs <? 688) then (
    let idx := (ofs - 672) / 1 in
    Some (vminfo.(e_iv) @ idx)) else
  if (688 <=? ofs) && (ofs <? 720) then (
    let idx := (ofs - 688) / 1 in
    Some (vminfo.(e_public_key) @ idx)) else
  if (ofs =? 720) then Some (vminfo.(e_powered_on)) else
  if (ofs =? 728) then Some (s2pt.(e_page_pool_start)) else
  if (ofs =? 744) then Some (s2pt.(e_pmd_used_pages)) else
  if (ofs =? 752) then Some (s2pt.(e_pud_used_pages)) else
  if (ofs =? 760) then Some (s2pt.(e_pte_used_pages)) else
  None.

Definition store_s_el2_vm_info (sz: Z) (idx: Z) (ofs: Z) (v: Z) (st: RData) : option RData :=
  let s2pt := st.(shared).(e_s2pts) @ idx in
  let vminfo := st.(shared).(e_vminfos) @ idx in
  if (ofs =? 0) then Some (st.[shared].[e_s2pts] :< (st.(shared).(e_s2pts) # idx == (s2pt.[e_vttbr] :< v))) else
  if (ofs =? 8) then Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # idx == (vminfo.[e___vmid] :< v))) else
  if (ofs =? 12) then Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # idx == (vminfo.[e_load_info_cnt] :< v))) else
  if (ofs =? 16) then Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # idx == (vminfo.[e_kvm_pg_cnt] :< v))) else
  if (ofs =? 20) then Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # idx == (vminfo.[e_inc_exe] :< v))) else
  if (ofs =? 24) then Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # idx == (vminfo.[e__state] :< v))) else
  if (32 <=? ofs) && (ofs <? 512) then (
    let idx' := (ofs - 32) / 96 in
    let elem_ofs := (ofs - 32) mod 96 in
    when ret == store_s_el2_load_info sz elem_ofs v (vminfo.(e_load_info) @ idx');
    Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # idx == (vminfo.[e_load_info] :< (vminfo.(e_load_info) # idx' == ret))))) else
  if (ofs =? 520) then Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # idx == (vminfo.[e_kvm] :< v))) else
  if (528 <=? ofs) && (ofs <? 624) then (
    let idx' := (ofs - 528) / 24 in
    let elem_ofs := (ofs - 528) mod 24 in
    when ret == store_s_int_vcpu sz elem_ofs v (vminfo.(e_int_vcpus) @ idx');
    Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # idx == (vminfo.[e_int_vcpus] :< (vminfo.(e_int_vcpus) # idx' == ret))))) else
  if (656 <=? ofs) && (ofs <? 672) then (
    let idx' := (ofs - 656) / 1 in
    Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # idx == (vminfo.[e_key] :< (vminfo.(e_key) # idx' == v))))) else
  if (672 <=? ofs) && (ofs <? 688) then (
    let idx' := (ofs - 672) / 1 in
    Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # idx == (vminfo.[e_iv] :< (vminfo.(e_iv) # idx' == v))))) else
  if (688 <=? ofs) && (ofs <? 720) then (
    let idx' := (ofs - 688) / 1 in
    Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # idx == (vminfo.[e_public_key] :< (vminfo.(e_public_key) # idx' == v))))) else
  if (ofs =? 720) then Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # idx == (vminfo.[e_powered_on] :< v))) else
  if (ofs =? 728) then Some (st.[shared].[e_s2pts] :< (st.(shared).(e_s2pts) # idx == (s2pt.[e_page_pool_start] :< v))) else
  if (ofs =? 744) then Some (st.[shared].[e_s2pts] :< (st.(shared).(e_s2pts) # idx == (s2pt.[e_pmd_used_pages] :< v))) else
  if (ofs =? 752) then Some (st.[shared].[e_s2pts] :< (st.(shared).(e_s2pts) # idx == (s2pt.[e_pud_used_pages] :< v))) else
  if (ofs =? 760) then Some (st.[shared].[e_s2pts] :< (st.(shared).(e_s2pts) # idx == (s2pt.[e_pte_used_pages] :< v))) else
  None.

Definition load_s_el2_smmu_cfg (sz: Z) (smmuid: Z) (ofs: Z) (st: RData) : option Z :=
  if ofs =? 0 then Some (st.(shared).(e_smmu_vmid) @ smmuid) else
  if ofs =? 8 then Some (st.(priv).(e_smmu_cfg) @ smmuid).(e_hw_ttbr) else
  None.

Definition store_s_el2_smmu_cfg (sz: Z) (smmuid: Z) (ofs: Z) (v: Z) (st: RData) : option RData :=
  if ofs =? 0 then Some (st.[shared].[e_smmu_vmid] :< (st.(shared).(e_smmu_vmid) # smmuid == v)) else
  if ofs =? 8 then 
    Some (st.[priv].[e_smmu_cfg] :< (st.(priv).(e_smmu_cfg) # smmuid == ((st.(priv).(e_smmu_cfg) @ smmuid).[e_hw_ttbr] :< v)))
  else None.

Definition load_el2_data (sz: Z) (ofs: Z) (st: RData) : option Z :=
  if (0 <=? ofs) && (ofs <? 768) then (
    let idx := (ofs - 0) / 24 in
    let elem_ofs := (ofs - 0) mod 24 in
    load_s_memblock_region sz elem_ofs (st.(priv).(e_regions) @ idx)) else
  if (768 <=? ofs) && (ofs <? 1024) then (
    let idx := (ofs - 768) / 8 in
    let elem_ofs := (ofs - 768) mod 8 in
    load_s_s2_memblock_info sz elem_ofs (st.(priv).(e_s2_memblock_info) @ idx)) else
  if (1024 <=? ofs) && (ofs <? 1040) then (
    let elem_ofs := ofs - 1024 in
    load_s_s2_cpu_arch sz elem_ofs (st.(priv).(e_arch))) else
  if (ofs =? 1040) then Some (st.(priv).(e_regions_cnt)) else
  if (ofs =? 1056) then Some (st.(priv).(e_host_vttbr)) else
  if (ofs =? 1080) then Some (st.(priv).(e_pl011_base)) else
  if (ofs =? 1088) then Some (st.(priv).(e_uart_8250_base)) else
  if (ofs =? 1120) then Some (st.(priv).(e_ram_start_pfn)) else
  if (1128 <=? ofs) && (ofs <? 33555560) then (
    let idx := (ofs - 1128) / 16 in
    let elem_ofs := (ofs - 1128) mod 16 in
    load_s_s2_page sz elem_ofs (st.(shared).(e_s2pages) @ idx)) else
  if (33555568 <=? ofs) && (ofs <? 33685744) then (
    let idx := (ofs - 33555568) / 1808 in
    let elem_ofs := (ofs - 33555568) mod 1808 in
    load_s_shadow_vcpu_context sz elem_ofs (st.(priv).(e_shadow_ctxts) @ idx)) else
  if (33685752 <=? ofs) && (ofs <? 33686424) then (
    let idx := (ofs - 33685752) / 24 in
    let elem_ofs := (ofs - 33685752) mod 24 in
    load_s_s2_sys_reg_desc sz elem_ofs (st.(priv).(e_s2_sys_reg_descs) @ idx)) else
  if (33686424 <=? ofs) && (ofs <? 33701016) then (
    let idx := (ofs - 33686424) / 768 in
    let elem_ofs := (ofs - 33686424) mod 768 in
    load_s_el2_vm_info sz idx elem_ofs st) else
  if (ofs =? 33701024) then Some (st.(shared).(e_core_data).(e_last_remap_ptr)) else
  if (33701032 <=? ofs) && (ofs <? 33701288) then (
    let idx := (ofs - 33701032) / 16 in
    let elem_ofs := (ofs - 33701032) mod 16 in
    load_s_el2_smmu_cfg sz idx elem_ofs st) else
  if (33701288 <=? ofs) && (ofs <? 33701480) then (
    let idx := (ofs - 33701288) / 96 in
    let elem_ofs := (ofs - 33701288) mod 96 in
    load_s_el2_arm_smmu_device sz elem_ofs (st.(priv).(e_smmus) @ idx)) else
  if (ofs =? 33701480) then Some (st.(priv).(e_el2_smmu_num)) else
  if (ofs =? 33701484) then Some (st.(shared).(e_core_data).(e_next_vmid)) else
  if (ofs =? 33701488) then Some (st.(priv).(e_vgic_cpu_base)) else
  if (ofs =? 33701496) then Some (st.(priv).(e_installed)) else
  if (33701504 <=? ofs) && (ofs <? 33730176) then (
    let idx := (ofs - 33701504) / 1792 in
    let elem_ofs := (ofs - 33701504) mod 1792 in
    load_s_el2_per_cpu_data sz elem_ofs (st.(priv).(e_per_cpu_data) @ idx)) else
  if (ofs =? 33730176) then Some (st.(priv).(e_core_start)) else
  if (ofs =? 33730184) then Some (st.(priv).(e_core_end)) else
  if (33730192 <=? ofs) && (ofs <? 33730832) then (
    let idx := (ofs - 33730192) / 8 in
    Some (st.(priv).(e_hacl_hash) @ idx)) else
  if (33730832 <=? ofs) && (ofs <? 33731088) then (
    let idx := (ofs - 33730832) / 4 in
    Some (st.(priv).(e_hacl_hash0) @ idx)) else
  if (33731088 <=? ofs) && (ofs <? 33731104) then (
    let idx := (ofs - 33731088) / 1 in
    Some (st.(priv).(e__key) @ idx)) else
  if (ofs =? 33731104) then Some (st.(shared).(e_smmupts).(e_smmu_page_pool_start)) else
  if (ofs =? 33731112) then Some (st.(shared).(e_smmupts).(e_smmu_pgd_used_pages)) else
  if (ofs =? 33731120) then Some (st.(shared).(e_smmupts).(e_smmu_pmd_used_pages)) else
  if (ofs =? 33731128) then Some (st.(priv).(e_phys_mem_start)) else
  if (ofs =? 33731136) then Some (st.(priv).(e_phys_mem_size)) else
  None.

Definition store_el2_data (sz: Z) (ofs: Z) (v: Z) (st: RData) : option RData :=
  if (0 <=? ofs) && (ofs <? 768) then (
    let idx := (ofs - 0) / 24 in
    let elem_ofs := (ofs - 0) mod 24 in
    when ret == store_s_memblock_region sz elem_ofs v (st.(priv).(e_regions) @ idx);
    Some (st.[priv].[e_regions] :< (st.(priv).(e_regions) # idx == ret))) else
  if (768 <=? ofs) && (ofs <? 1024) then (
    let idx := (ofs - 768) / 8 in
    let elem_ofs := (ofs - 768) mod 8 in
    when ret == store_s_s2_memblock_info sz elem_ofs v (st.(priv).(e_s2_memblock_info) @ idx);
    Some (st.[priv].[e_s2_memblock_info] :< (st.(priv).(e_s2_memblock_info) # idx == ret))) else
  if (1024 <=? ofs) && (ofs <? 1040) then (
    let elem_ofs := ofs - 1024 in
    when ret == store_s_s2_cpu_arch sz elem_ofs v st.(priv).(e_arch);
    Some (st.[priv].[e_arch] :< ret)) else
  if (ofs =? 1040) then Some (st.[priv].[e_regions_cnt] :< v) else
  if (ofs =? 1056) then Some (st.[priv].[e_host_vttbr] :< v) else
  if (ofs =? 1080) then Some (st.[priv].[e_pl011_base] :< v) else
  if (ofs =? 1088) then Some (st.[priv].[e_uart_8250_base] :< v) else
  if (ofs =? 1120) then Some (st.[priv].[e_ram_start_pfn] :< v) else
  if (1128 <=? ofs) && (ofs <? 33555560) then (
    let idx := (ofs - 1128) / 16 in
    let elem_ofs := (ofs - 1128) mod 16 in
    when ret == store_s_s2_page sz elem_ofs v (st.(shared).(e_s2pages) @ idx);
    Some (st.[shared].[e_s2pages] :< (st.(shared).(e_s2pages) # idx == ret))) else
  if (33555568 <=? ofs) && (ofs <? 33685744) then (
    let idx := (ofs - 33555568) / 1808 in
    let elem_ofs := (ofs - 33555568) mod 1808 in
    when ret == store_s_shadow_vcpu_context sz elem_ofs v (st.(priv).(e_shadow_ctxts) @ idx);
    Some (st.[priv].[e_shadow_ctxts] :< (st.(priv).(e_shadow_ctxts) # idx == ret))) else
  if (33685752 <=? ofs) && (ofs <? 33686424) then (
    let idx := (ofs - 33685752) / 24 in
    let elem_ofs := (ofs - 33685752) mod 24 in
    when ret == store_s_s2_sys_reg_desc sz elem_ofs v (st.(priv).(e_s2_sys_reg_descs) @ idx);
    Some (st.[priv].[e_s2_sys_reg_descs] :< (st.(priv).(e_s2_sys_reg_descs) # idx == ret))) else
  if (33686424 <=? ofs) && (ofs <? 33701016) then (
    let idx := (ofs - 33686424) / 768 in
    let elem_ofs := (ofs - 33686424) mod 768 in
    store_s_el2_vm_info sz idx elem_ofs v st) else
  if (ofs =? 33701024) then Some (st.[shared].[e_core_data].[e_last_remap_ptr] :< v) else
  if (33701032 <=? ofs) && (ofs <? 33701288) then (
    let idx := (ofs - 33701032) / 16 in
    let elem_ofs := (ofs - 33701032) mod 16 in
    store_s_el2_smmu_cfg sz idx elem_ofs v st) else
  if (33701288 <=? ofs) && (ofs <? 33701480) then (
    let idx := (ofs - 33701288) / 96 in
    let elem_ofs := (ofs - 33701288) mod 96 in
    when ret == store_s_el2_arm_smmu_device sz elem_ofs v (st.(priv).(e_smmus) @ idx);
    Some (st.[priv].[e_smmus] :< (st.(priv).(e_smmus) # idx == ret))) else
  if (ofs =? 33701480) then Some (st.[priv].[e_el2_smmu_num] :< v) else
  if (ofs =? 33701484) then Some (st.[shared].[e_core_data].[e_next_vmid] :< v) else
  if (ofs =? 33701488) then Some (st.[priv].[e_vgic_cpu_base] :< v) else
  if (ofs =? 33701496) then Some (st.[priv].[e_installed] :< v) else
  if (33701504 <=? ofs) && (ofs <? 33730176) then (
    let idx := (ofs - 33701504) / 1792 in
    let elem_ofs := (ofs - 33701504) mod 1792 in
    when ret == store_s_el2_per_cpu_data sz elem_ofs v (st.(priv).(e_per_cpu_data) @ idx);
    Some (st.[priv].[e_per_cpu_data] :< (st.(priv).(e_per_cpu_data) # idx == ret))) else
  if (ofs =? 33730176) then Some (st.[priv].[e_core_start] :< v) else
  if (ofs =? 33730184) then Some (st.[priv].[e_core_end] :< v) else
  if (33730192 <=? ofs) && (ofs <? 33730832) then (
    let idx := (ofs - 33730192) / 8 in
    Some (st.[priv].[e_hacl_hash] :< (st.(priv).(e_hacl_hash) # idx == v))) else
  if (33730832 <=? ofs) && (ofs <? 33731088) then (
    let idx := (ofs - 33730832) / 4 in
    Some (st.[priv].[e_hacl_hash0] :< (st.(priv).(e_hacl_hash0) # idx == v))) else
  if (33731088 <=? ofs) && (ofs <? 33731104) then (
    let idx := (ofs - 33731088) / 1 in
    Some (st.[priv].[e__key] :< (st.(priv).(e__key) # idx == v))) else
  if (ofs =? 33731104) then Some (st.[shared].[e_smmupts].[e_smmu_page_pool_start] :< v) else
  if (ofs =? 33731112) then Some (st.[shared].[e_smmupts].[e_smmu_pgd_used_pages] :< v) else
  if (ofs =? 33731120) then Some (st.[shared].[e_smmupts].[e_smmu_pmd_used_pages] :< v) else
  if (ofs =? 33731128) then Some (st.[priv].[e_phys_mem_start] :< v) else
  if (ofs =? 33731136) then Some (st.[priv].[e_phys_mem_size] :< v) else
  None.

Definition load_RData (sz: Z) (p: Ptr) (st: RData) : option (Z * RData) :=
  match (p.(pbase), p.(poffset)) with
  | ("el2_data", ofs) =>
    match el2_data_lock_map ofs with
    | PRIVATE =>
      when v == load_el2_data sz ofs st;
      Some (v, st)
    | LOCK_PROT lk =>
      rely (st.(shared).(e_locks) @ lk = Some CPU_ID);
      when v == load_el2_data sz ofs st;
      Some (v, st)
    | LOCK_FREE =>
      when st == query_oracle st;
      when v == load_el2_data sz ofs st;
      let e := EVT CPU_ID (ALOAD p.(pbase) p.(poffset) sz) in
      Some (v, st.[log] :< (e :: st.(log)))
    | _ => None
    end
  | ("shared_data", ofs) =>  
    if (0 <=? ofs) && (ofs <? 158832) then (
      let idx := (ofs - 0) / 8824 in
      let elem_ofs := (ofs - 0) mod 8824 in
      when v == load_s_kvm sz elem_ofs (st.(priv).(e_kvm_pool) @ idx);
      Some (v, st)) else
    if (158832 <=? ofs) && (ofs <? 810864) then (
      let idx := (ofs - 158832) / 9056 in
      let elem_ofs := (ofs - 158832) mod 9056 in
      when v == load_s_kvm_vcpu sz elem_ofs (st.(priv).(e_vcpu_pool) @ idx);
      Some (v, st)) else
    None
  | _ => None
  end.

Definition store_RData (sz: Z) (p: Ptr) (v: Z) (st: RData) : option RData :=
  match (p.(pbase), p.(poffset)) with
  | ("el2_data", ofs) =>
    match el2_data_lock_map ofs with
    | PRIVATE =>
      store_el2_data sz ofs v st
    | LOCK_PROT lk =>
      rely (st.(shared).(e_locks) @ lk = Some CPU_ID);
      store_el2_data sz ofs v st
    | LOCK_FREE =>
      when st == query_oracle st;
      when st == store_el2_data sz ofs v st;
      let e := EVT CPU_ID (ASTORE p.(pbase) p.(poffset) sz v) in
      Some (st.[log] :< (e :: st.(log)))
    | _ => None
    end
  | ("shared_data", ofs) =>  
    if (0 <=? ofs) && (ofs <? 158832) then (
      let idx := (ofs - 0) / 8824 in
      let elem_ofs := (ofs - 0) mod 8824 in
      when ret == store_s_kvm sz elem_ofs v (st.(priv).(e_kvm_pool) @ idx);
      Some (st.[priv].[e_kvm_pool] :< (st.(priv).(e_kvm_pool) # idx == ret))) else
    if (158832 <=? ofs) && (ofs <? 810864) then (
      let idx := (ofs - 158832) / 9056 in
      let elem_ofs := (ofs - 158832) mod 9056 in
      when ret == store_s_kvm_vcpu sz elem_ofs v (st.(priv).(e_vcpu_pool) @ idx);
      Some (st.[priv].[e_vcpu_pool] :< (st.(priv).(e_vcpu_pool) # idx == ret))) else
    None
  | _ => None
  end.

Definition get_reg_RData (r: regset) (st: RData) : option Z :=
  match r with
  | Rgpsp (Rgp (Rx0 _)) => Some (st.(priv).(e_cpu_regs).(e_regs) @ 0)
  | Rgpsp (Rgp (Rx1 _)) => Some (st.(priv).(e_cpu_regs).(e_regs) @ 1)
  | Rgpsp (Rgp (Rx2 _)) => Some (st.(priv).(e_cpu_regs).(e_regs) @ 2)
  | Rgpsp (Rgp (Rx3 _)) => Some (st.(priv).(e_cpu_regs).(e_regs) @ 3)
  | Rgpsp (Rgp (Rx30 _)) => Some (st.(priv).(e_cpu_regs).(e_regs) @ 30)
  | Rsys Rttbr0_el2 => Some (st.(priv).(e_cpu_regs).(e_sysregs_el2) @ TTBR0_EL2)
  | Rsys Rvttbr_el2 => Some (st.(priv).(e_cpu_regs).(e_sysregs_el2) @ VTTBR_EL2)
  | Rsys Resr_el2 => Some (st.(priv).(e_cpu_regs).(e_sysregs_el2) @ ESR_EL2)
  | Rsys Relr_el2 => Some (st.(priv).(e_cpu_regs).(e_sysregs_el2) @ ELR_EL2)
  | Rsys Rtpidr_el2 => Some (st.(priv).(e_cpu_regs).(e_sysregs_el2) @ TPIDR_EL2)
  | Rsys Rhcr_el2 => Some (st.(priv).(e_cpu_regs).(e_sysregs_el2) @ HCR_EL2)
  | Rsys Rhpfar_el2 => Some (st.(priv).(e_cpu_regs).(e_sysregs_el2) @ HPFAR_EL2)
  | Rsys Rfar_el2 => Some (st.(priv).(e_cpu_regs).(e_sysregs_el2) @ FAR_EL2)
  | _ => None
  end.

Definition set_reg_RData (r: regset) (v_val: Z) (st: RData) : option RData :=
  match r with
  | Rgpsp (Rgp (Rx0 _)) => Some (st.[priv].[e_cpu_regs].[e_regs] :< (st.(priv).(e_cpu_regs).(e_regs) # 0 == v_val))
  | Rgpsp (Rgp (Rx1 _)) => Some (st.[priv].[e_cpu_regs].[e_regs] :< (st.(priv).(e_cpu_regs).(e_regs) # 1 == v_val))
  | Rgpsp (Rgp (Rx2 _)) => Some (st.[priv].[e_cpu_regs].[e_regs] :< (st.(priv).(e_cpu_regs).(e_regs) # 2 == v_val))
  | Rgpsp (Rgp (Rx3 _)) => Some (st.[priv].[e_cpu_regs].[e_regs] :< (st.(priv).(e_cpu_regs).(e_regs) # 3 == v_val))
  | Rgpsp (Rgp (Rx4 _)) => Some (st.[priv].[e_cpu_regs].[e_regs] :< (st.(priv).(e_cpu_regs).(e_regs) # 4 == v_val))
  | Rgpsp (Rgp (Rx30 _)) => Some (st.[priv].[e_cpu_regs].[e_regs] :< (st.(priv).(e_cpu_regs).(e_regs) # 30 == v_val))
  | Rsys Rttbr0_el2 => Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< (st.(priv).(e_cpu_regs).(e_sysregs_el2) # TTBR0_EL2 == v_val))
  | Rsys Rvttbr_el2 => Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< (st.(priv).(e_cpu_regs).(e_sysregs_el2) # VTTBR_EL2 == v_val))
  | Rsys Resr_el2 => Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< (st.(priv).(e_cpu_regs).(e_sysregs_el2) # ESR_EL2 == v_val))
  | Rsys Relr_el2 => Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< (st.(priv).(e_cpu_regs).(e_sysregs_el2) # ELR_EL2 == v_val))
  | Rsys Rtpidr_el2 => Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< (st.(priv).(e_cpu_regs).(e_sysregs_el2) # TPIDR_EL2 == v_val))
  | Rsys Rhcr_el2 => Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< (st.(priv).(e_cpu_regs).(e_sysregs_el2) # HCR_EL2 == v_val))
  | Rsys Rhpfar_el2 => Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< (st.(priv).(e_cpu_regs).(e_sysregs_el2) # HPFAR_EL2 == v_val))
  | Rsys Rfar_el2 => Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< (st.(priv).(e_cpu_regs).(e_sysregs_el2) # FAR_EL2 == v_val))
  | _ => None
  end.
