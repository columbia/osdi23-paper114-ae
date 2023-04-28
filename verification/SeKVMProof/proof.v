Definition PROJ_NAME: string := "SeKVM".
Definition PROJ_BASE: string := "./coq_proof_gen".

Include "datatypes.v".
Include "constant.v".
Include "load_store.v".

Section Bottom.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_LOAD: string := "load_RData".
  Definition LAYER_STORE: string := "store_RData".
  Definition LAYER_GET_REG: string := "get_reg_RData".
  Definition LAYER_SET_REG: string := "set_reg_RData".
  Definition LAYER_PRIMS: list string := 
      "v_panic" ::
      "__hyp_panic" ::
      "get_el2_data_start" ::
      "get_shared_data_start" ::
      "get_cpuid" ::
      "stage2_spin_lock" ::
      "stage2_spin_unlock" ::
      "pt_load" ::
      "pt_store" ::
      "smmu_pt_load" ::
      "smmu_pt_store" ::
      "smmu_pt_clear" ::
      "hypsec_tlb_flush_local_vmid" ::
      "kvm_tlb_flush_vmid_ipa_host" ::
      "__flush_dcache_area" ::
      "get_shared_kvm" ::
      "get_shared_vcpu" ::
      "get_host_reg" ::
      "get_cur_vcpu_id" ::
      "get_cur_vmid" ::
      "read_cpuid_mpidr" ::
      "set_host_regs" ::
      "clear_phys_page" ::
      "clear_shadow_gp_regs" ::
      "reset_fp_regs" ::
      "reset_sys_regs" ::
      "set_vm_load_signature" ::
      "set_vm_public_key" ::
      "verify_image" ::
      "__guest_enter" ::
      "__populate_fault_info" ::
      "__kvm_timer_set_cntvoff" ::
      "__timer_enable_traps" ::
      "__timer_disable_traps" ::
      "__activate_traps" ::
      "__deactivate_traps" ::
      "__handle_smmu_write" ::
      "__handle_smmu_read" ::
      "host_get_mmio_data" ::
      "host_dabt_get_as" ::
      "host_dabt_is_write" ::
      "__fpsimd_save_state" ::
      "__fpsimd_restore_state" ::
      "__sysreg32_restore_state" ::
      "__sysreg32_save_state" ::
      "__sysreg_save_state_nvhe" ::
      "__sysreg_restore_state_nvhe" ::
      "__vm_sysreg_restore_state_nvhe_opt" ::
      "__vm_sysreg_save_state_nvhe_opt" ::
      "hvc_enable_s2_trans" ::
      "get_vcpu_host_cpu_context" ::
      "set_host_running_vcpu" ::
      "get_core_context" ::
      "iasm_6_isb" ::
      "iasm_10" :: nil.

  Definition v_panic_spec (st: RData) : option RData := 
    None.

  Definition __hyp_panic_spec (st: RData) : option RData := 
    None.

  Definition get_el2_data_start_spec (st: RData) : option (Ptr * RData) := 
    Some (mkPtr "el2_data" 0, st).

  Definition get_shared_data_start_spec (st: RData) : option (Ptr * RData) := 
    Some (mkPtr "shared_data" 0, st).

  Definition get_cpuid_spec (st: RData) : option (Z * RData) := 
    Some (CPU_ID, st).

  Definition stage2_spin_lock_spec (v_lock: Ptr) (st: RData) : option RData :=
    match (v_lock.(pbase), v_lock.(poffset)) with
    | ("el2_data", ofs) =>
      match el2_data_lock_map ofs with
      | LOCK_IMPL lock_id =>
        when st == query_oracle st;
        rely (st.(shared).(e_locks) @ lock_id = None);
        let locks' := st.(shared).(e_locks) # lock_id == (Some CPU_ID) in
        Some ((st.[shared].[e_locks] :< locks').[log] :< ((EVT CPU_ID (ACQ lock_id)) :: st.(log)))
      | _ => None
      end
    | _ => None
    end.

  Definition stage2_spin_unlock_spec (v_lock: Ptr) (st: RData) : option RData :=
    match (v_lock.(pbase), v_lock.(poffset)) with
    | ("el2_data", ofs) =>
      match el2_data_lock_map ofs with
      | LOCK_IMPL lock_id =>
        rely (st.(shared).(e_locks) @ lock_id = Some CPU_ID);
        when evt == (
          if lock_id =? S2PAGE_LOCK then
            Some (EVT CPU_ID (REL lock_id (S2PAGE_STATE st.(shared).(e_s2pages))))
          else if lock_id =? ABS_LOCK then
            Some (EVT CPU_ID (REL lock_id (ABS_STATE st.(shared).(e_core_data))))
          else if lock_id =? SMMU_LOCK then
            Some (EVT CPU_ID (REL lock_id (SMMU_VMID_STATE st.(shared).(e_smmu_vmid))))
          else if lock_id =? SMMUPT_LOCK then
            Some (EVT CPU_ID (REL lock_id (SMMUPT_STATE st.(shared).(e_smmupts))))
          else if (lock_id >=? VM_LOCK 0) && (lock_id <? S2PT_LOCK 0) then
            let vid := lock_id - (VM_LOCK 0) in
            Some (EVT CPU_ID (REL lock_id (VMINFO_STATE (st.(shared).(e_vminfos) @ vid))))
          else
            let vid := lock_id - (S2PT_LOCK 0) in
            Some (EVT CPU_ID (REL lock_id (S2PT_STATE (st.(shared).(e_s2pts) @ vid))))
        );
        let locks' := st.(shared).(e_locks) # lock_id == None in
        Some ((st.[shared].[e_locks] :< locks').[log] :< (evt :: st.(log)))
      | _ => None
      end
    | _ => None
    end.

  Definition pt_load_spec (v_vmid: Z) (v_addr: Z) (st: RData) : option (Z * RData) :=
    rely is_vmid v_vmid;
    rely (st.(shared).(e_locks) @ (S2PT_LOCK v_vmid) = Some CPU_ID);
    let npt := st.(shared).(e_s2pts) @ v_vmid in
    if is_pgdp v_addr npt then
      Some (npt.(e_pgd_pool) @ v_addr, st)
    else if is_pudp v_addr npt then
      Some (npt.(e_pud_pool) @ v_addr, st)
    else if is_pmdp v_addr npt then
      Some (npt.(e_pmd_pool) @ v_addr, st)
    else if is_ptep v_addr npt then
      Some (npt.(e_pte_pool) @ v_addr, st)
    else None.

  Definition pt_store_spec (v_vmid: Z) (v_addr: Z) (v_pte: Z) (st: RData) : option RData :=
    rely is_vmid v_vmid;
    rely (st.(shared).(e_locks) @ (S2PT_LOCK v_vmid) = Some CPU_ID);
    let npt := st.(shared).(e_s2pts) @ v_vmid in
    if is_pgdp v_addr npt then
      let npt' := npt.[e_pgd_pool] :< (npt.(e_pgd_pool) # v_addr == v_pte) in
      Some (st.[shared].[e_s2pts] :< (st.(shared).(e_s2pts) # v_vmid == npt'))
    else if is_pudp v_addr npt then
      let npt' := npt.[e_pud_pool] :< (npt.(e_pud_pool) # v_addr == v_pte) in
      Some (st.[shared].[e_s2pts] :< (st.(shared).(e_s2pts) # v_vmid == npt'))
    else if is_pmdp v_addr npt then
      let npt' := npt.[e_pmd_pool] :< (npt.(e_pmd_pool) # v_addr == v_pte) in
      Some (st.[shared].[e_s2pts] :< (st.(shared).(e_s2pts) # v_vmid == npt'))
    else if is_ptep v_addr npt then
      let npt' := npt.[e_pte_pool] :< (npt.(e_pte_pool) # v_addr == v_pte) in
      Some (st.[shared].[e_s2pts] :< (st.(shared).(e_s2pts) # v_vmid == npt'))
    else None.

  Definition smmu_pt_load_spec (v_addr: Z) (st: RData) : option (Z * RData) :=
    rely (st.(shared).(e_locks) @ SMMUPT_LOCK = Some CPU_ID);
    if is_smmu_pgdp v_addr st.(shared).(e_smmupts) then
      Some (st.(shared).(e_smmupts).(e_smmu_pgd_pool) @ v_addr, st)
    else if is_smmu_pmdp v_addr st.(shared).(e_smmupts) then
      Some (st.(shared).(e_smmupts).(e_smmu_pmd_pool) @ v_addr, st)
    else if is_smmu_ptep v_addr st.(shared).(e_smmupts) then
      Some (st.(shared).(e_smmupts).(e_smmu_pte_pool) @ v_addr, st)
    else None.

  Definition smmu_pt_store_spec (v_addr: Z) (v_pte: Z) (st: RData) : option RData :=
    rely (st.(shared).(e_locks) @ SMMUPT_LOCK = Some CPU_ID);
    if is_smmu_pgdp v_addr st.(shared).(e_smmupts) then
      Some (st.[shared].[e_smmupts].[e_smmu_pgd_pool] :< (st.(shared).(e_smmupts).(e_smmu_pgd_pool) # v_addr == v_pte))
    else if is_smmu_pmdp v_addr st.(shared).(e_smmupts) then
      Some (st.[shared].[e_smmupts].[e_smmu_pmd_pool] :< (st.(shared).(e_smmupts).(e_smmu_pmd_pool) # v_addr == v_pte))
    else if is_smmu_ptep v_addr st.(shared).(e_smmupts) then
      Some (st.[shared].[e_smmupts].[e_smmu_pte_pool] :< (st.(shared).(e_smmupts).(e_smmu_pte_pool) # v_addr == v_pte))
    else None.

  Fixpoint clear_zmap_range (n: nat) (i: Z) (m: ZMap.t Z) : ZMap.t Z :=
    match n with
    | O => m
    | S n' => clear_zmap_range n' (i + 1) (m # i == 0)
    end.

  Definition smmu_pt_clear_spec (v_cbndx: Z) (v_index: Z) (st: RData) : option RData :=
    rely (st.(shared).(e_locks) @ SMMUPT_LOCK = Some CPU_ID);
    let smmuid := smmu_id v_cbndx v_index in
    let ttbr := (st.(priv).(e_smmu_cfg) @ smmuid).(e_hw_ttbr) in
    rely (is_smmu_pgdp ttbr st.(shared).(e_smmupts) = true);
    let pool' := clear_zmap_range (z_to_nat 4096) ttbr st.(shared).(e_smmupts).(e_smmu_pgd_pool) in
    Some (st.[shared].[e_smmupts].[e_smmu_pgd_pool] :< pool').

  Definition set_host_regs_spec (v_nr: Z) (v_value: Z) (st: RData) : option RData :=
    rely (0 <= v_nr /\ v_nr < 32);
    Some (st.[priv].[e_host_ctxt] :< (st.(priv).(e_host_ctxt) # v_nr == v_value)).

  Definition clear_phys_page_spec (v_pfn: Z) (st: RData) : option RData :=
    rely (is_pfn v_pfn);
    Some (st.[priv].[e_umem] :< (st.(priv).(e_umem) # v_pfn == 0)).

  Parameter shared_kvm: Z -> (Z).

  Definition get_shared_kvm_spec (v_vmid: Z) (st: RData) : option (Z * RData) := 
    Some (shared_kvm v_vmid, st).

  Parameter shared_vcpu: Z -> (Z -> (Z)).

  Definition get_shared_vcpu_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : option (Z * RData) := 
    Some (shared_vcpu v_vmid v_vcpuid, st).

  Definition get_host_reg_spec (hr: Ptr) (reg: Z) (st: RData) : option (Z * RData) := 
    rely (hr.(pbase) = "host_regs");
    Some (st.(priv).(e_host_ctxt) @ reg, st).

  Definition read_cpuid_mpidr_spec (st: RData) : option (Z * RData) := 
    Some (st.(priv).(e_cpu_regs).(e_sys_regs) @ MPIDR_EL1, st).
  
  Parameter vm_signature: ZMap.t Z.

  Definition set_vm_load_signature_spec (v_vmid: Z) (v_load_idx: Z) (st: RData) : option RData :=
    rely (is_vmid v_vmid);
    rely (is_load_idx v_load_idx);
    rely (st.(shared).(e_locks) @ (VM_LOCK v_vmid) = Some CPU_ID);
    let load_info' := ((st.(shared).(e_vminfos) @ v_vmid).(e_load_info) @ v_load_idx).[e_signature] :< vm_signature in
    let vm_info' := (st.(shared).(e_vminfos) @ v_vmid).[e_load_info] :< 
                      (st.(shared).(e_vminfos) @ v_vmid).(e_load_info) # v_load_idx == load_info' in
    Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # v_vmid == vm_info')).

  Parameter vm_pubkey: ZMap.t Z.

  Definition set_vm_public_key_spec (v_vmid: Z) (st: RData) : option RData :=
    rely (is_vmid v_vmid);
    rely (st.(shared).(e_locks) @ (VM_LOCK v_vmid) = Some CPU_ID);
    let vm_info' := (st.(shared).(e_vminfos) @ v_vmid).[e_public_key] :< vm_pubkey in
    Some (st.[shared].[e_vminfos] :< (st.(shared).(e_vminfos) # v_vmid == vm_info')).

  Parameter _host_dabt_get_rd: Z -> (Z).

  Definition __handle_smmu_read_spec (v_hsr: Z) (v_fault_ipa: Z) (v_len: Z) (st: RData) : option RData := 
    rely ((v_len = 8) \/ (v_len = 4));
    let rt := _host_dabt_get_rd v_hsr in
    let data := st.(priv).(e_umem) @ v_fault_ipa in
    Some (st.[priv].[e_host_ctxt] :< (st.(priv).(e_host_ctxt) # rt == data)).

  Definition __handle_smmu_write_spec (v_hsr: Z) (v_fault_ipa: Z) (v_len: Z) (v_val: Z) (v_write_val: Z) (st: RData) : option RData :=
    rely ((v_len = 8) \/ (v_len = 4));
    let rt := _host_dabt_get_rd v_hsr in
    let data := st.(priv).(e_host_ctxt) @ rt in
    Some (st.[priv].[e_umem] :< (st.(priv).(e_umem) # v_fault_ipa == data)).

  Parameter _host_dabt_get_as: Z -> (Z).

  Definition host_dabt_get_as_spec (v_hsr: Z) (st: RData) : option (Z * RData) := 
    Some (_host_dabt_get_as v_hsr, st).

  Parameter _host_dabt_is_write: Z -> (bool).

  Definition host_dabt_is_write_spec (v_hsr: Z) (st: RData) : option (bool * RData) := 
    Some (_host_dabt_is_write v_hsr, st).

  Definition clear_shadow_gp_regs_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : option RData :=
    rely (is_vmid v_vmid); rely (is_vcpuid v_vcpuid);
    let ctxtid := context_id v_vmid v_vcpuid in
    let ctxt' := (st.(priv).(e_shadow_ctxts) @ ctxtid).[e_regs] :< (zmap_init 0) in
    Some (st.[priv].[e_shadow_ctxts] :< (st.(priv).(e_shadow_ctxts) # ctxtid == ctxt')).

  Definition reset_fp_regs_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : option RData :=
    rely (is_vmid v_vmid); rely (is_vcpuid v_vcpuid);
    let ctxtid := context_id v_vmid v_vcpuid in
    let h_fp_regs := (st.(priv).(e_host_cpus) @ ctxtid).(e_gp_regs).(e__fp_regs) in
    let ctxt' := (st.(priv).(e_shadow_ctxts) @ ctxtid).[e_fp_regs] :< h_fp_regs in
    Some (st.[priv].[e_shadow_ctxts] :< (st.(priv).(e_shadow_ctxts) # ctxtid == ctxt')).

  Definition reset_sys_regs_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : option RData :=
    rely (is_vmid v_vmid); rely (is_vcpuid v_vcpuid);
    let ctxtid := context_id v_vmid v_vcpuid in
    let h_sys_regs := (st.(priv).(e_host_cpus) @ ctxtid).(e__sys_regs) in
    let ctxt' := (st.(priv).(e_shadow_ctxts) @ ctxtid).[e_sys_regs] :< h_sys_regs in
    Some (st.[priv].[e_shadow_ctxts] :< (st.(priv).(e_shadow_ctxts) # ctxtid == ctxt')).

  Definition __guest_enter_spec (sh_ctxt: Ptr) (core_ctxt: Ptr) (st: RData) : option (Z * RData) := 
    Some (0, st).

  Definition __populate_fault_info_spec (v_vmid: Z) (v_vcpuid: Z) (v_esr: Z) (st: RData) : option (bool * RData) :=
    let far := st.(priv).(e_cpu_regs).(e_far_el2) in
    let hpfar_el2 := st.(priv).(e_cpu_regs).(e_sysregs_el2) @ HPFAR_EL2 in
    let ctxtid := context_id v_vmid v_vcpuid in
    let vcpu' := ((st.(priv).(e_vcpu_pool) @ ctxtid).[e___arch].[e_fault].[e__far_el2] :< far)
                    .[e___arch].[e_fault].[e_hpfar_el2] :< hpfar_el2 in
    let shctxt' := ((st.(priv).(e_shadow_ctxts) @ ctxtid).[e_far_el2] :< far).[e_hpfar] :< hpfar_el2 in
    let st' := (st.[priv].[e_vcpu_pool] :< (st.(priv).(e_vcpu_pool) # ctxtid == vcpu')
                ).[priv].[e_shadow_ctxts] :< (st.(priv).(e_shadow_ctxts) # ctxtid == shctxt') in
    Some (true, st').

  Definition host_get_mmio_data_spec (v_hsr: Z) (st: RData) : option (Z * RData) := 
    let rt := _host_dabt_get_rd v_hsr in
    let data := st.(priv).(e_host_ctxt) @ rt in
    Some (data, st).

  Definition __fpsimd_save_state_spec (v_fpreg_p: Ptr) (st: RData) : option RData :=
    match (v_fpreg_p.(pbase), v_fpreg_p.(poffset)) with
    | ("el2_data", ofs)  =>
      let idx := (ofs - 33555568) / 1808 in
      let elem_ofs := (ofs - 33555568) mod (1808) in
      rely (elem_ofs = 1264);
      let ctxt' := (st.(priv).(e_shadow_ctxts) @ idx).[e_fp_regs] :< (st.(priv).(e_cpu_regs).(e_fp_regs)) in
      Some (st.[priv].[e_shadow_ctxts] :< (st.(priv).(e_shadow_ctxts) # idx == ctxt'))
    | ("host_cpus", ofs) =>
      let idx := ofs / 9056 in
      let elem_ofs := ofs mod 9056 in
      rely (elem_ofs = 336);
      let vcpu' := ((st.(priv).(e_host_cpus) @ idx).[e_gp_regs].[e__fp_regs] :< (st.(priv).(e_cpu_regs).(e_fp_regs))) in
      Some (st.[priv].[e_host_cpus] :< (st.(priv).(e_host_cpus) # idx == vcpu'))
    | _ => None
    end.

  Definition __fpsimd_restore_state_spec (v_fpreg_p: Ptr) (st: RData) : option RData :=
    match (v_fpreg_p.(pbase), v_fpreg_p.(poffset)) with
    | ("el2_data", ofs)  =>
      let idx := (ofs - 33555568) / 1808 in
      let elem_ofs := (ofs - 33555568) mod (1808) in
      rely (elem_ofs = 1264);
      Some (st.[priv].[e_cpu_regs].[e_fp_regs] :< (st.(priv).(e_shadow_ctxts) @ idx).(e_fp_regs))
    | ("host_cpus", ofs) =>
      let idx := ofs / 9056 in
      let elem_ofs := ofs mod 9056 in
      rely (elem_ofs = 336);
      Some (st.[priv].[e_cpu_regs].[e_fp_regs] :< (st.(priv).(e_host_cpus) @ idx).(e_gp_regs).(e__fp_regs))
    | _ => None
    end.

  Definition __sysreg32_restore_state_spec (v_sysreg_p: Ptr) (st: RData) : option RData :=
    match (v_sysreg_p.(pbase), v_sysreg_p.(poffset)) with
    | ("el2_data", ofs)  =>
      let idx := (ofs - 33555568) / 1808 in
      let elem_ofs := (ofs - 33555568) mod (1808) in
      rely (elem_ofs = 1264);
      Some (st.[priv].[e_cpu_regs].[e_sys_regs] :< (st.(priv).(e_shadow_ctxts) @ idx).(e_sys_regs))
    | _ => None
    end.

  Definition __sysreg32_save_state_spec (v_sysreg_p: Ptr) (st: RData) : option RData :=
    match (v_sysreg_p.(pbase), v_sysreg_p.(poffset)) with
    | ("el2_data", ofs)  =>
      let idx := (ofs - 33555568) / 1808 in
      let elem_ofs := (ofs - 33555568) mod (1808) in
      rely (elem_ofs = 1264);
      let ctxt' := (st.(priv).(e_shadow_ctxts) @ idx).[e_sys_regs] :< (st.(priv).(e_cpu_regs).(e_sys_regs)) in
      Some (st.[priv].[e_shadow_ctxts] :< (st.(priv).(e_shadow_ctxts) # idx == ctxt'))
    | _ => None
    end.

  Definition __sysreg_save_state_nvhe_spec (v_sysreg_p: Ptr) (st: RData) : option RData :=
    match (v_sysreg_p.(pbase), v_sysreg_p.(poffset)) with
    | ("host_cpus", ofs) =>
      let idx := ofs / 9056 in
      let elem_ofs := ofs mod 9056 in
      rely (elem_ofs = 864);
      let vcpu' := ((st.(priv).(e_host_cpus) @ idx).[e__sys_regs] :< (st.(priv).(e_cpu_regs).(e_sys_regs))) in
      Some (st.[priv].[e_host_cpus] :< (st.(priv).(e_host_cpus) # idx == vcpu'))
    | _ => None
    end.

  Definition __sysreg_restore_state_nvhe_spec (v_sysreg_p: Ptr) (st: RData) : option RData :=
    match (v_sysreg_p.(pbase), v_sysreg_p.(poffset)) with
    | ("host_cpus", ofs) =>
      let idx := ofs / 9056 in
      let elem_ofs := ofs mod 9056 in
      rely (elem_ofs = 864);
      Some (st.[priv].[e_cpu_regs].[e_sys_regs] :< (st.(priv).(e_host_cpus) @ idx).(e__sys_regs))
    | _ => None
    end.

  Definition __vm_sysreg_save_state_nvhe_opt_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : option RData :=
    rely (is_vmid v_vmid); rely (is_vcpuid v_vcpuid);
    let idx := context_id v_vmid v_vcpuid in
    let ctxt' := (st.(priv).(e_shadow_ctxts) @ idx).[e_sys_regs] :< (st.(priv).(e_cpu_regs).(e_sys_regs)) in
    Some (st.[priv].[e_shadow_ctxts] :< (st.(priv).(e_shadow_ctxts) # idx == ctxt')).

  Definition __vm_sysreg_restore_state_nvhe_opt_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : option RData :=
    rely (is_vmid v_vmid); rely (is_vcpuid v_vcpuid);
    let idx := context_id v_vmid v_vcpuid in
    Some (st.[priv].[e_cpu_regs].[e_sys_regs] :< (st.(priv).(e_shadow_ctxts) @ idx).(e_sys_regs)).

  Definition get_vcpu_host_cpu_context_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : option (Ptr * RData) :=
    let idx := context_id v_vmid v_vcpuid in
    Some (mkPtr "host_cpus" (9056 * idx), st).

  Definition get_core_context_spec (st: RData) : option (Ptr * RData) := 
    Some (mkPtr "core_ctxt" 0, st).

  Definition hypsec_tlb_flush_local_vmid_spec (st: RData) : option RData := Some st.
  Definition kvm_tlb_flush_vmid_ipa_host_spec (v_ipa: Z) (st: RData) : option RData := Some st.
  Definition __flush_dcache_area_spec (v_addr: Ptr) (v_size: Z) (st: RData) : option RData := Some st.
  Definition verify_image_spec (v_vmid: Z) (v_load_idx: Z) (st: RData) : option (Z * RData) := Some (1, st).
  Definition __kvm_timer_set_cntvoff_spec (v_n: Z) (v_m: Z) (st: RData) : option RData := Some st.
  Definition __timer_enable_traps_spec (v_kvm: Ptr) (st: RData) : option RData := Some st.
  Definition __timer_disable_traps_spec (v_kvm: Ptr) (st: RData) : option RData := Some st.
  Definition __activate_traps_spec (v_vcpu: Ptr) (st: RData) : option RData := Some st.
  Definition __deactivate_traps_spec (st: RData) : option RData := Some st.
  Definition hvc_enable_s2_trans_spec (st: RData) : option RData := Some st.
  Definition set_host_running_vcpu_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : option RData := Some st. 
  Definition iasm_6_isb_spec (st: RData) : option RData := Some st.
  Definition iasm_10_spec (st: RData) : option RData := Some st.

End Bottom.

Section InlineAsms.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_LOAD: string := "load_RData".
  Definition LAYER_STORE: string := "store_RData".
  Definition LAYER_GET_REG: string := "get_reg_RData".
  Definition LAYER_SET_REG: string := "set_reg_RData".
  Definition LAYER_PRIMS: list string :=
    "iasm_get_ttbr0_el2" ::
    "iasm_set_vttbr_el2" ::
    "iasm_get_esr_el2" ::
    "iasm_get_elr_el2" ::
    "iasm_set_elr_el2" ::
    "iasm_set_tpidr_el2" ::
    "iasm_set_hcr_el2" ::
    "iasm_get_hpfar_el2" ::
    "iasm_get_far_el2" ::
    nil.

End InlineAsms.

Section Accessors.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_LOAD: string := "load_RData".
  Definition LAYER_STORE: string := "store_RData".
  Definition LAYER_PRIMS: list string :=
    "get_esr_el2" ::
    "get_int_esr" ::
    "get_int_gpr" ::
    "get_int_new_level" ::
    "get_int_new_pte" ::
    "get_int_pc" ::
    "get_int_pstate" ::
    "get_mem_region_base" ::
    "get_mem_region_cnt" ::
    "get_mem_region_flag" ::
    "get_mem_region_index" ::
    "get_mem_region_size" ::
    "get_next_vmid" ::
    "get_next_remap_ptr" ::
    "get_pgd_next" ::
    "get_pmd_next" ::
    "get_pt_vttbr" ::
    "get_pud_next" ::
    "get_s2_page_count" ::
    "get_s2_page_gfn" ::
    "get_s2_page_vmid" ::
    "get_shadow_ctxt" ::
    "get_shadow_dirty_bit" ::
    "get_shadow_esr" ::
    "get_smmu_cfg_hw_ttbr" ::
    "get_smmu_cfg_vmid" ::
    "get_smmu_num_context_banks" ::
    "get_smmu_pgd_next" ::
    "get_smmu_pmd_next" ::
    "get_vcpu_state" ::
    "get_vm_load_addr" ::
    "get_vm_load_size" ::
    "get_vm_mapped_pages" ::
    "get_vm_next_load_idx" ::
    "get_vm_power" ::
    "get_vm_remap_addr" ::
    "get_vm_state" ::
    "hypsec_vcpu_id_to_shadow_ctxt" ::
    "hypsec_vcpu_id_to_vcpu" ::
    "pgd_pool_end" ::
    "pmd_pool_end" ::
    "pool_start" ::
    "pud_pool_end" ::
    "set_hcr_el2" ::
    "set_int_gpr" ::
    "set_next_remap_ptr" ::
    "set_next_vmid" ::
    "set_per_cpu" ::
    "set_per_cpu_host_regs" ::
    "set_pgd_next" ::
    "set_pmd_next" ::
    "set_pt_vttbr" ::
    "set_pud_next" ::
    "set_s2_page_count" ::
    "set_s2_page_gfn" ::
    "set_s2_page_vmid" ::
    "set_shadow_ctxt" ::
    "set_shadow_dirty_bit" ::
    "set_smmu_cfg_vmid" ::
    "set_smmu_pgd_next" ::
    "set_smmu_pmd_next" ::
    "set_tpidr_el2" ::
    "set_vcpu_state" ::
    "set_vm_inc_exe" ::
    "set_vm_kvm" ::
    "set_vm_load_addr" ::
    "set_vm_load_size" ::
    "set_vm_mapped_pages" ::
    "set_vm_next_load_idx" ::
    "set_vm_power" ::
    "set_vm_remap_addr" ::
    "set_vm_state" ::
    "set_vm_vcpu" ::
    "set_vttbr_el2" ::
    "smmu_pgd_end" ::
    "smmu_pmd_end" ::
    "vmid_to_vm_info" ::
    "smmu_init_pte" ::
    "get_smmu_size" ::
    "get_smmu_num" ::
    "get_smmu_base" ::
    "get_smmu_hyp_base" ::
    "smmu_get_cbndx" ::
    "get_vcpu_was_preempted" ::
    "set_vcpu_was_preempted" ::
    "set_shadow_ctxt_esr" ::
    "set_vcpu_esr_el2" ::
    "get_host_vttbr" ::
    "get_cur_vcpu_id" ::
    "get_cur_vmid" ::
    nil.

End Accessors.

Section Locks.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "acquire_lock_core" ::
    "acquire_lock_pt" ::
    "acquire_lock_s2page" ::
    "acquire_lock_smmu" ::
    "acquire_lock_spt" ::
    "acquire_lock_vm" ::
    "release_lock_core" ::
    "release_lock_pt" ::
    "release_lock_s2page" ::
    "release_lock_smmu" ::
    "release_lock_spt" ::
    "release_lock_vm" ::
    nil.

End Locks.

Section S2PTAlloc.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "alloc_s2pt_pgd" ::
    "alloc_s2pt_pud" ::
    "alloc_s2pt_pmd" ::
    nil.

End S2PTAlloc.

Section S2PTWalk.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "walk_pgd" ::
    "walk_pmd" ::
    "walk_pud" ::
    "walk_pte" ::
    "v_set_pmd" ::
    "v_set_pte" ::
    nil.

End S2PTWalk.

Section S2PTTreeOps.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "init_npt" ::
    "walk_npt" ::
    "set_npt" ::
    nil.
 
  Definition s2pt_walk (v_addr: Z) (npt: Stage2PT) : Z :=
    let v_gfn := v_addr / 4096 in
    let v_gfn512 := v_gfn / 512 in
    match npt.(e_lv2pt) @ v_gfn512 with
    | Some v_pte => v_pte
    | None => 
      match npt.(e_lv3pt) @ v_gfn with
      | Some v_pte => v_pte
      | None => 0 
      end
    end.

  Hint NoUnfold s2pt_walk.

  Definition walk_npt_spec (v_vmid: Z) (v_addr: Z) (st: RData) : option (Z * RData) :=
    rely (is_vmid v_vmid); rely (is_addr v_addr);
    rely (st.(shared).(e_locks) @ (S2PT_LOCK v_vmid) = Some CPU_ID);
    let npt := (st.(shared).(e_s2pts) @ v_vmid) in
    rely (npt.(e_vttbr) <> 0);
    Some (s2pt_walk v_addr npt, st).

  Definition alloc_pt (npt: Stage2PT) : option Stage2PT :=
    let npt := ((npt.[e_pud_used_pages] :< (npt.(e_pud_used_pages) + 1))
                    .[e_pmd_used_pages] :< (npt.(e_pmd_used_pages) + 1))
                    .[e_pte_used_pages] :< (npt.(e_pte_used_pages) + 1) in
    rely ((npt.(e_pud_used_pages) <= 16) /\ (npt.(e_pmd_used_pages) <= 495) /\ (npt.(e_pte_used_pages) <= 1536));
    Some npt.

  Definition s2pt_set (v_addr: Z) (v_level: Z) (v_pte: Z) (npt: Stage2PT) : option Stage2PT :=
    let v_gfn := v_addr / 4096 in
    let v_gfn512 := v_gfn / 512 in
    when npt == alloc_pt npt;
    if v_level =? 2 then
      rely (v_pte & 3 <> 3);
      rely (forall (addr: Z), (is_addr addr -> addr / 4096 / 512 = v_addr / 4096 / 512 -> (((npt.(e_lv3pt)) @ (addr / 4096)) = None)));
      (Some (npt.[e_lv2pt] :< ((npt.(e_lv2pt)) # v_gfn512 == (Some (v_pte |' 36028797018963968)))))
    else
      rely ((((npt.(e_lv2pt)) @ v_gfn512) = None));
      (Some (npt.[e_lv3pt] :< ((npt.(e_lv3pt)) # v_gfn == (Some (v_pte |' 72057594037927936))))).

  Hint NoUnfold s2pt_set.

  Definition set_npt_spec (v_vmid: Z) (v_addr: Z) (v_level: Z) (v_pte: Z) (st: RData) : option RData :=
    rely (is_vmid v_vmid); rely (is_addr v_addr);
    rely (st.(shared).(e_locks) @ (S2PT_LOCK v_vmid) = Some CPU_ID);
    let npt := (st.(shared).(e_s2pts) @ v_vmid) in
    rely (npt.(e_vttbr) <> 0);
    when npt' == s2pt_set v_addr v_level v_pte npt;
    Some (st.[shared].[e_s2pts] :< (st.(shared).(e_s2pts) # v_vmid == npt')).

End S2PTTreeOps.

Section S2PTOps.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "init_s2pt" ::
    "clear_pfn_host" ::
    "mmap_s2pt" ::
    "walk_s2pt" ::
    nil.

End S2PTOps.

Section SmmuPTAlloc.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "alloc_smmu_pgd_page" ::
    "alloc_smmu_pmd_page" ::
    nil.

End SmmuPTAlloc.

Section SmmuPTWalk.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "walk_smmu_pgd" ::
    "walk_smmu_pmd" ::
    "walk_smmu_pte" ::
    "set_smmu_pte" ::
    nil.

End SmmuPTWalk.

Section SmmuPTTreeOps.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "init_smmu_pt" ::
    "walk_smmu_pt" ::
    "set_smmu_pt" ::
    nil.

  Parameter init_smmupt: ZMap.t (option Z).

  Definition init_smmu_pt_spec (v_cbndx: Z) (v_index: Z) (st: RData) : option RData :=
    rely (is_cbndx v_cbndx); rely (is_smmu_index v_index);
    rely (st.(shared).(e_locks) @ SMMUPT_LOCK = Some CPU_ID);
    let smmuid := smmu_id v_cbndx v_index in
    let spt' := (st.(shared).(e_smmupts)).[e_smmu_pt] :< ((st.(shared).(e_smmupts).(e_smmu_pt) # smmuid == init_smmupt)) in
    Some (st.[shared].[e_smmupts] :< spt').

  Definition smmupt_walk (smmuid: Z) (v_addr: Z) (spts: SMMU_PT) : Z :=
    let v_gfn := v_addr / 4096 in
    match (spts.(e_smmu_pt) @ smmuid) @ v_gfn with
    | Some v_pte => v_pte
    | None => 0
    end.

  Hint NoUnfold smmupt_walk.

  Definition walk_smmu_pt_spec (v_cbndx: Z) (v_index: Z) (v_addr: Z) (st: RData) : option (Z * RData) :=
    rely (is_cbndx v_cbndx); rely (is_smmu_index v_index); rely (is_paddr v_addr);
    rely (st.(shared).(e_locks) @ SMMUPT_LOCK = Some CPU_ID);
    let smmuid := smmu_id v_cbndx v_index in
    Some (smmupt_walk smmuid v_addr st.(shared).(e_smmupts), st).

  Definition alloc_spt (spt: SMMU_PT) : option SMMU_PT :=
    let spt := (spt.[e_smmu_pgd_used_pages] :< (spt.(e_smmu_pgd_used_pages) + 1))
                   .[e_smmu_pmd_used_pages] :< (spt.(e_smmu_pmd_used_pages) + 1) in
    rely ((spt.(e_smmu_pgd_used_pages) <= 16) /\ (spt.(e_smmu_pmd_used_pages) <= 495));
    Some spt.

  Definition smmupt_set (smmuid: Z) (v_addr: Z) (v_pte: Z) (spts: SMMU_PT) : option SMMU_PT :=
    let v_gfn := v_addr / 4096 in
    when spts == alloc_spt spts;
    let spt' := (spts.(e_smmu_pt) @ smmuid) # v_gfn == (if v_pte <>? 0 then (Some v_pte) else None) in
    let spts' := spts.[e_smmu_pt] :< (spts.(e_smmu_pt) # smmuid == spt') in
    Some spts'.
  
  Hint NoUnfold smmupt_set.

  Definition set_smmu_pt_spec (v_cbndx: Z) (v_index: Z) (v_addr: Z) (v_pte: Z) (st: RData) : option RData :=
    rely (is_cbndx v_cbndx); rely (is_smmu_index v_index); rely (is_paddr v_addr);
    rely (st.(shared).(e_locks) @ SMMUPT_LOCK = Some CPU_ID);
    let smmuid := smmu_id v_cbndx v_index in
    when spts' == smmupt_set smmuid v_addr v_pte st.(shared).(e_smmupts);
    Some (st.[shared].[e_smmupts] :< spts').

End SmmuPTTreeOps.

Section SmmuPTOps.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "init_spt" ::
    "walk_spt" ::
    "map_spt" ::
    "unmap_spt" ::
    nil.

End SmmuPTOps.

Section MemRegion.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "mem_region_search" ::
    nil.

  Definition mem_region_search_loop_rank (v_addr: Z) (v_call: Z) (v_i_019: Z) (v_res_018: Z) : Z :=
    v_call - v_i_019.

End MemRegion.

Section PageIndex.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "get_s2_page_index" ::
    nil.

End PageIndex.

Section PageManager.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "get_pfn_count" ::
    "get_pfn_map" ::
    "get_pfn_owner" ::
    "set_pfn_count" ::
    "set_pfn_map" ::
    "set_pfn_owner" ::
    nil.

  Definition get_pfn_owner_spec (v_pfn: Z) (st: RData) : option (Z * RData) :=
    rely (is_pfn v_pfn);
    rely (st.(shared).(e_locks) @ S2PAGE_LOCK = Some CPU_ID);
    Some ((st.(shared).(e_s2pages) @ v_pfn).(e_vmid), st).

  Definition set_pfn_owner_spec (v_pfn: Z) (v_vmid: Z) (st: RData) : option RData :=
    rely (v_vmid <> (-1));
    rely (is_pfn v_pfn);
    rely (st.(shared).(e_locks) @ S2PAGE_LOCK = Some CPU_ID);
    rely ((st.(shared).(e_s2pages) @ v_pfn).(e_vmid) <> (-1));
    let s2page' := (st.(shared).(e_s2pages) @ v_pfn).[e_vmid] :< v_vmid in
    Some (st.[shared].[e_s2pages] :< ((st.(shared).(e_s2pages) # v_pfn == s2page'))).

  Definition get_pfn_count_spec (v_pfn: Z) (st: RData) : option (Z * RData) :=
    rely (is_pfn v_pfn);
    rely (st.(shared).(e_locks) @ S2PAGE_LOCK = Some CPU_ID);
    Some ((st.(shared).(e_s2pages) @ v_pfn).(e_count), st).

  Definition set_pfn_count_spec (v_pfn: Z) (v_count: Z) (st: RData) : option RData :=
    rely (is_pfn v_pfn);
    rely (st.(shared).(e_locks) @ S2PAGE_LOCK = Some CPU_ID);
    rely ((st.(shared).(e_s2pages) @ v_pfn).(e_vmid) <> (-1));
    let s2page' := (st.(shared).(e_s2pages) @ v_pfn).[e_count] :< v_count in
    Some (st.[shared].[e_s2pages] :< ((st.(shared).(e_s2pages) # v_pfn == s2page'))).

  Definition get_pfn_map_spec (v_pfn: Z) (st: RData) : option (Z * RData) :=
    rely (is_pfn v_pfn);
    rely (st.(shared).(e_locks) @ S2PAGE_LOCK = Some CPU_ID);
    Some ((st.(shared).(e_s2pages) @ v_pfn).(e_gfn), st).

  Definition set_pfn_map_spec (v_pfn: Z) (v_gfn: Z) (st: RData) : option RData :=
    rely (is_pfn v_pfn);
    rely (st.(shared).(e_locks) @ S2PAGE_LOCK = Some CPU_ID);
    rely ((st.(shared).(e_s2pages) @ v_pfn).(e_vmid) <> (-1));
    let s2page' := (st.(shared).(e_s2pages) @ v_pfn).[e_gfn] :< v_gfn in
    Some (st.[shared].[e_s2pages] :< ((st.(shared).(e_s2pages) # v_pfn == s2page'))).

End PageManager.

Section MemManager.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "assign_pfn_to_vm" ::
    "map_pfn_vm" ::
    "revoke_vm_page" ::
    "grant_vm_page" ::
    "clear_vm_page" ::
    nil.

  Hint NoUnfold map_pfn_vm_spec.
  Hint NoUnfold assign_pfn_to_vm_spec.
  Hint NoUnfold grant_vm_page_spec.
  Hint NoUnfold revoke_vm_page_spec.
  Hint NoUnfold clear_vm_page_spec.

End MemManager.

Section MemoryOpsAux.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "__clear_vm_range" ::
    "prot_and_map_vm_s2pt" ::
    nil.

  Definition __clear_vm_range_loop_rank (v_num_07: Z) (v_pfn_06: Z) (v_vmid: Z) : Z := 
    v_num_07.

  Definition prot_and_map_vm_s2pt_loop_rank (v_addr: Z) (v_cmp3: bool) (v_gfn_126: Z) (v_num_127: Z) (v_pfn_025: Z) (v_pte: Z) (v_vmid: Z) : Z :=
    v_num_127.

End MemoryOpsAux.

Section VMOpsAux.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "get_vm_poweron" ::
    "set_vm_poweroff" ::
    "alloc_remap_addr" ::
    "gen_vmid" ::
    "unmap_and_load_vm_image" ::
    nil.

  Definition unmap_and_load_vm_image_loop_rank (v_mb_num_029: Z) (v_remap_addr_addr_032: Z) (v_start_030: Z) (v_target_addr_addr_033: Z) (v_vmid: Z) : Z :=
    v_mb_num_029.
  
End VMOpsAux.

Section MemoryOps.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "map_page_host" ::
    "__clear_vm_stage2_range" ::
    "v_revoke_stage2_sg_gpa" ::
    "v_grant_stage2_sg_gpa" ::
    "__kvm_phys_addr_ioremap" ::
    "v_post_handle_shadow_s2pt_fault" ::
    nil.

    Definition v_grant_stage2_sg_gpa_loop_rank (v_addr_addr_044: Z) (v_len_143: Z) (v_vmid: Z) : Z :=
      v_len_143.

    Definition __clear_vm_stage2_range_loop_rank (v_call2: Z) (v_i_022: Z) (v_vmid: Z) : Z :=
      v_call2 - v_i_022.

    Definition v_revoke_stage2_sg_gpa_loop_rank (v_addr_addr_044: Z) (v_len_143: Z) (v_vmid: Z) : Z :=
      v_len_143.

    Hint NoUnfold map_page_host_spec.
    Hint NoUnfold __clear_vm_stage2_range_spec.
    Hint NoUnfold v_revoke_stage2_sg_gpa_spec.
    Hint NoUnfold v_grant_stage2_sg_gpa_spec.
    Hint NoUnfold __kvm_phys_addr_ioremap_spec.
    Hint NoUnfold v_post_handle_shadow_s2pt_fault_spec.

End MemoryOps.

Section VMOps.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "set_boot_info" ::
    "verify_and_load_images" ::
    "register_kvm" ::
    "register_vcpu" ::
    "remap_vm_image" ::
    "hypsec_set_vcpu_active" ::
    "hypsec_set_vcpu_state" ::
    "v_search_load_info" ::
    nil.

    Definition v_search_load_info_loop_rank (v_addr: Z) (v_call: Z) (v_load_idx_029: Z) (v_ret_028: Z) (v_vmid: Z) : Z :=
      v_call - v_load_idx_029.

    Definition verify_and_load_images_loop_rank (v_call1: Z) (v_load_idx_032: Z) (v_vmid: Z) : Z :=
      v_call1 - v_load_idx_032.

  Hint NoUnfold register_kvm_spec.
  Hint NoUnfold register_vcpu_spec.
  Hint NoUnfold set_boot_info_spec.
  Hint NoUnfold remap_vm_image_spec.
  Hint NoUnfold verify_and_load_images_spec.

End VMOps.

Section SmmuMemOpsAux.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "assign_pfn_to_smmu" ::
    "unmap_smmu_page" ::
    "update_smmu_page" ::
    nil.

  Hint NoUnfold assign_pfn_to_smmu_spec.
  Hint NoUnfold unmap_smmu_page_spec.
  Hint NoUnfold update_smmu_page_spec.

End SmmuMemOpsAux.

Section SmmuMemOps.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "__el2_alloc_smmu_pgd" ::
    "__el2_free_smmu_pgd" ::
    "assign_smmu" ::
    "clear_smmu" ::
    "map_io" ::
    "map_smmu" ::
    "is_smmu_range" ::
    nil.

  Definition is_smmu_range_loop_rank (v_addr: Z) (v_indvars_iv: Z) (v_res_018: Z) (v_wide_trip_count: Z) : Z :=
    v_wide_trip_count - v_indvars_iv.

  Hint NoUnfold __el2_alloc_smmu_pgd_spec.
  Hint NoUnfold __el2_free_smmu_pgd_spec.

End SmmuMemOps.

Section SmmuAccess.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "handle_smmu_cb_access" ::
    "handle_smmu_global_access" ::
    nil.

End SmmuAccess.

Section SmmuReadWrite.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "handle_smmu_read" ::
    "handle_smmu_write" ::
    nil.

  Hint NoUnfold handle_smmu_write_spec.

End SmmuReadWrite.

Section SmmuOpsAux.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "handle_host_mmio" ::
    "smmu_assign_page" ::
    "smmu_map_page" ::
    nil.

  Hint NoUnfold smmu_assign_page_spec.
  Hint NoUnfold smmu_map_page_spec.

End SmmuOpsAux.

Section SmmuOps.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "v_el2_arm_lpae_map" ::
    "__el2_arm_lpae_clear" ::
    "__el2_arm_lpae_iova_to_phys" ::
    "v_kvm_phys_addr_ioremap" ::
    "emulate_mmio" ::
    nil.

  Definition v_kvm_phys_addr_ioremap_loop_rank (v_gpa_addr_010: Z) (v_n_011: Z) (v_pa_addr_09: Z) (v_vmid: Z) : Z :=
    v_n_011.

  Hint NoUnfold v_el2_arm_lpae_map_spec.
  Hint NoUnfold __el2_arm_lpae_iova_to_phys_spec.
  Hint NoUnfold __el2_arm_lpae_clear_spec.
  Hint NoUnfold v_kvm_phys_addr_ioremap_spec.
  Hint NoUnfold emulate_mmio_spec.

End SmmuOps.

Section VCPUOpsAux.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "reset_gp_regs" ::
    "sync_dirty_to_shadow" ::
    "v_update_exception_gp_regs" ::
    nil.

  Definition sync_dirty_to_shadow_loop_rank (v_call: Z) (v_i_016: Z) (v_vcpuid: Z) (v_vmid: Z) : Z :=
    31 - v_i_016.

End VCPUOpsAux.

Section VCPUPrep.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "prep_hvc" ::
    "prep_wfx" ::
    "prep_abort" ::
    nil.

  Hint NoUnfold prep_hvc_spec.
  Hint NoUnfold prep_abort_spec.

End VCPUPrep.

Section VCPUOps.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "restore_shadow_kvm_regs" ::
    "save_shadow_kvm_regs" ::
    nil.

    Hint NoTrans restore_shadow_kvm_regs_spec.
    Hint NoTrans restore_shadow_kvm_regs_spec_mid.

End VCPUOps.

Section CtxtSwitch.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "__activate_vm" ::
    "__host_el2_restore_state" ::
    nil.

End CtxtSwitch.

Section GuestHandler.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "handle_pvops" ::
    nil.

End GuestHandler.

Section GuestExit.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "fixup_guest_exit" ::
    nil.

End GuestExit.

Section VCPURun.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "__kvm_vcpu_run_nvhe" ::
    nil.

  Definition __kvm_vcpu_run_nvhe_loop_rank (v_0: Ptr) (v_call1: Ptr) (v_call4: Ptr) (v_fp_regs: Ptr) (v_fp_regs8: Ptr) (v_vcpu_id: Z) (v_vmid: Z) : Z :=
    1.

    Hint NoUnfold __kvm_vcpu_run_nvhe_spec.
    Hint NoTrans __kvm_vcpu_run_nvhe_loop.
    Hint NoTrans __kvm_vcpu_run_nvhe_loop_mid.
    Hint NoTrans __kvm_vcpu_run_nvhe_spec.
    Hint NoTrans __kvm_vcpu_run_nvhe_spec_mid.

End VCPURun.

Section TrapHandler.

  Definition LAYER_DATA := RData.
  Definition LAYER_CODE: string := "./SeKVM.json".
  Definition LAYER_PRIMS: list string :=
    "handle_host_hvc" ::
    "handle_host_stage2_fault" ::
    nil.

End TrapHandler.

