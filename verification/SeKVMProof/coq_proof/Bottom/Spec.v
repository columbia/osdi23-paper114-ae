Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Parameter shared_kvm : Z -> Z.

Parameter shared_vcpu : Z -> Z -> Z.

Parameter vm_signature : (ZMap.t Z).

Parameter vm_pubkey : (ZMap.t Z).

Parameter _host_dabt_get_rd : Z -> Z.

Parameter _host_dabt_get_as : Z -> Z.

Parameter _host_dabt_is_write : Z -> bool.

Section Bottom_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition v_panic_spec (st: RData) : (option RData) :=
    None.

  Definition __hyp_panic_spec (st: RData) : (option RData) :=
    None.

  Definition get_el2_data_start_spec (st: RData) : (option (Ptr * RData)) :=
    (Some ((mkPtr "el2_data" 0), st)).

  Definition get_shared_data_start_spec (st: RData) : (option (Ptr * RData)) :=
    (Some ((mkPtr "shared_data" 0), st)).

  Definition get_cpuid_spec (st: RData) : (option (Z * RData)) :=
    (Some (CPU_ID, st)).

  Definition stage2_spin_lock_spec (v_lock: Ptr) (st: RData) : (option RData) :=
    match (((v_lock.(pbase)), (v_lock.(poffset)))) with
    | ("el2_data", ofs) =>
      match ((el2_data_lock_map ofs)) with
      | (LOCK_IMPL lock_id) =>
        when st == ((query_oracle st));
        rely (((((st.(shared)).(e_locks)) @ lock_id) = None));
        let locks' := (((st.(shared)).(e_locks)) # lock_id == (Some CPU_ID)) in
        (Some ((st.[shared].[e_locks] :< locks').[log] :< ((EVT CPU_ID (ACQ lock_id)) :: (st.(log)))))
      | _ => None
      end
    | _ => None
    end.

  Definition stage2_spin_unlock_spec (v_lock: Ptr) (st: RData) : (option RData) :=
    match (((v_lock.(pbase)), (v_lock.(poffset)))) with
    | ("el2_data", ofs) =>
      match ((el2_data_lock_map ofs)) with
      | (LOCK_IMPL lock_id) =>
        rely (((((st.(shared)).(e_locks)) @ lock_id) = (Some CPU_ID)));
        when evt == (
            if (lock_id =? S2PAGE_LOCK)
            then (Some (EVT CPU_ID (REL lock_id (S2PAGE_STATE ((st.(shared)).(e_s2pages))))))
            else (
              if (lock_id =? ABS_LOCK)
              then (Some (EVT CPU_ID (REL lock_id (ABS_STATE ((st.(shared)).(e_core_data))))))
              else (
                if (lock_id =? SMMU_LOCK)
                then (Some (EVT CPU_ID (REL lock_id (SMMU_VMID_STATE ((st.(shared)).(e_smmu_vmid))))))
                else (
                  if (lock_id =? SMMUPT_LOCK)
                  then (Some (EVT CPU_ID (REL lock_id (SMMUPT_STATE ((st.(shared)).(e_smmupts))))))
                  else (
                    if ((lock_id >=? (VM_LOCK 0)) && (lock_id <? (S2PT_LOCK 0)))
                    then (
                      let vid := (lock_id - (VM_LOCK 0)) in
                      (Some (EVT CPU_ID (REL lock_id (VMINFO_STATE (((st.(shared)).(e_vminfos)) @ vid))))))
                    else (
                      let vid := (lock_id - (S2PT_LOCK 0)) in
                      (Some (EVT CPU_ID (REL lock_id (S2PT_STATE (((st.(shared)).(e_s2pts)) @ vid)))))))))));
        let locks' := (((st.(shared)).(e_locks)) # lock_id == None) in
        (Some ((st.[shared].[e_locks] :< locks').[log] :< (evt :: (st.(log)))))
      | _ => None
      end
    | _ => None
    end.

  Definition pt_load_spec (v_vmid: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    rely ((is_vmid v_vmid));
    rely (((((st.(shared)).(e_locks)) @ (S2PT_LOCK v_vmid)) = (Some CPU_ID)));
    let npt := (((st.(shared)).(e_s2pts)) @ v_vmid) in
    if (is_pgdp v_addr npt)
    then (Some (((npt.(e_pgd_pool)) @ v_addr), st))
    else (
      if (is_pudp v_addr npt)
      then (Some (((npt.(e_pud_pool)) @ v_addr), st))
      else (
        if (is_pmdp v_addr npt)
        then (Some (((npt.(e_pmd_pool)) @ v_addr), st))
        else (
          if (is_ptep v_addr npt)
          then (Some (((npt.(e_pte_pool)) @ v_addr), st))
          else None))).

  Definition pt_store_spec (v_vmid: Z) (v_addr: Z) (v_pte: Z) (st: RData) : (option RData) :=
    rely ((is_vmid v_vmid));
    rely (((((st.(shared)).(e_locks)) @ (S2PT_LOCK v_vmid)) = (Some CPU_ID)));
    let npt := (((st.(shared)).(e_s2pts)) @ v_vmid) in
    if (is_pgdp v_addr npt)
    then (
      let npt' := (npt.[e_pgd_pool] :< ((npt.(e_pgd_pool)) # v_addr == v_pte)) in
      (Some (st.[shared].[e_s2pts] :< (((st.(shared)).(e_s2pts)) # v_vmid == npt'))))
    else (
      if (is_pudp v_addr npt)
      then (
        let npt' := (npt.[e_pud_pool] :< ((npt.(e_pud_pool)) # v_addr == v_pte)) in
        (Some (st.[shared].[e_s2pts] :< (((st.(shared)).(e_s2pts)) # v_vmid == npt'))))
      else (
        if (is_pmdp v_addr npt)
        then (
          let npt' := (npt.[e_pmd_pool] :< ((npt.(e_pmd_pool)) # v_addr == v_pte)) in
          (Some (st.[shared].[e_s2pts] :< (((st.(shared)).(e_s2pts)) # v_vmid == npt'))))
        else (
          if (is_ptep v_addr npt)
          then (
            let npt' := (npt.[e_pte_pool] :< ((npt.(e_pte_pool)) # v_addr == v_pte)) in
            (Some (st.[shared].[e_s2pts] :< (((st.(shared)).(e_s2pts)) # v_vmid == npt'))))
          else None))).

  Definition smmu_pt_load_spec (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    if (is_smmu_pgdp v_addr ((st.(shared)).(e_smmupts)))
    then (Some (((((st.(shared)).(e_smmupts)).(e_smmu_pgd_pool)) @ v_addr), st))
    else (
      if (is_smmu_pmdp v_addr ((st.(shared)).(e_smmupts)))
      then (Some (((((st.(shared)).(e_smmupts)).(e_smmu_pmd_pool)) @ v_addr), st))
      else (
        if (is_smmu_ptep v_addr ((st.(shared)).(e_smmupts)))
        then (Some (((((st.(shared)).(e_smmupts)).(e_smmu_pte_pool)) @ v_addr), st))
        else None)).

  Definition smmu_pt_store_spec (v_addr: Z) (v_pte: Z) (st: RData) : (option RData) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    if (is_smmu_pgdp v_addr ((st.(shared)).(e_smmupts)))
    then (Some (st.[shared].[e_smmupts].[e_smmu_pgd_pool] :< ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_pool)) # v_addr == v_pte)))
    else (
      if (is_smmu_pmdp v_addr ((st.(shared)).(e_smmupts)))
      then (Some (st.[shared].[e_smmupts].[e_smmu_pmd_pool] :< ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_pool)) # v_addr == v_pte)))
      else (
        if (is_smmu_ptep v_addr ((st.(shared)).(e_smmupts)))
        then (Some (st.[shared].[e_smmupts].[e_smmu_pte_pool] :< ((((st.(shared)).(e_smmupts)).(e_smmu_pte_pool)) # v_addr == v_pte)))
        else None)).

  Fixpoint clear_zmap_range (n: nat) (i: Z) (m: (ZMap.t Z)) : (ZMap.t Z) :=
    match (n) with
    | O => m
    | (S n') => (clear_zmap_range n' (i + 1) (m # i == 0))
    end.

  Definition smmu_pt_clear_spec (v_cbndx: Z) (v_index: Z) (st: RData) : (option RData) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    let smmuid := (smmu_id v_cbndx v_index) in
    let ttbr := ((((st.(priv)).(e_smmu_cfg)) @ smmuid).(e_hw_ttbr)) in
    rely (((is_smmu_pgdp ttbr ((st.(shared)).(e_smmupts))) = true));
    let pool' := (clear_zmap_range (z_to_nat 4096) ttbr (((st.(shared)).(e_smmupts)).(e_smmu_pgd_pool))) in
    (Some (st.[shared].[e_smmupts].[e_smmu_pgd_pool] :< pool')).

  Definition set_host_regs_spec (v_nr: Z) (v_value: Z) (st: RData) : (option RData) :=
    rely (((0 <= v_nr) /\ (v_nr < 32)));
    (Some (st.[priv].[e_host_ctxt] :< (((st.(priv)).(e_host_ctxt)) # v_nr == v_value))).

  Definition clear_phys_page_spec (v_pfn: Z) (st: RData) : (option RData) :=
    rely ((is_pfn v_pfn));
    (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_pfn == 0))).

  Definition get_shared_kvm_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    (Some ((shared_kvm v_vmid), st)).

  Definition get_shared_vcpu_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    (Some ((shared_vcpu v_vmid v_vcpuid), st)).

  Definition get_host_reg_spec (hr: Ptr) (reg: Z) (st: RData) : (option (Z * RData)) :=
    rely (((hr.(pbase)) = "host_regs"));
    (Some ((((st.(priv)).(e_host_ctxt)) @ reg), st)).

  Definition read_cpuid_mpidr_spec (st: RData) : (option (Z * RData)) :=
    (Some (((((st.(priv)).(e_cpu_regs)).(e_sys_regs)) @ MPIDR_EL1), st)).

  Definition set_vm_load_signature_spec (v_vmid: Z) (v_load_idx: Z) (st: RData) : (option RData) :=
    rely ((is_vmid v_vmid));
    rely ((is_load_idx v_load_idx));
    rely (((((st.(shared)).(e_locks)) @ (VM_LOCK v_vmid)) = (Some CPU_ID)));
    let load_info' := ((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).[e_signature] :< vm_signature) in
    let vm_info' := ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :< (((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) # v_load_idx == load_info')) in
    (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # v_vmid == vm_info'))).

  Definition set_vm_public_key_spec (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((is_vmid v_vmid));
    rely (((((st.(shared)).(e_locks)) @ (VM_LOCK v_vmid)) = (Some CPU_ID)));
    let vm_info' := ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_public_key] :< vm_pubkey) in
    (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # v_vmid == vm_info'))).

  Definition __handle_smmu_read_spec (v_hsr: Z) (v_fault_ipa: Z) (v_len: Z) (st: RData) : (option RData) :=
    rely (((v_len = 8) \/ (v_len = 4)));
    let rt := (_host_dabt_get_rd v_hsr) in
    let data := (((st.(priv)).(e_umem)) @ v_fault_ipa) in
    (Some (st.[priv].[e_host_ctxt] :< (((st.(priv)).(e_host_ctxt)) # rt == data))).

  Definition __handle_smmu_write_spec (v_hsr: Z) (v_fault_ipa: Z) (v_len: Z) (v_val: Z) (v_write_val: Z) (st: RData) : (option RData) :=
    rely (((v_len = 8) \/ (v_len = 4)));
    let rt := (_host_dabt_get_rd v_hsr) in
    let data := (((st.(priv)).(e_host_ctxt)) @ rt) in
    (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == data))).

  Definition host_dabt_get_as_spec (v_hsr: Z) (st: RData) : (option (Z * RData)) :=
    (Some ((_host_dabt_get_as v_hsr), st)).

  Definition host_dabt_is_write_spec (v_hsr: Z) (st: RData) : (option (bool * RData)) :=
    (Some ((_host_dabt_is_write v_hsr), st)).

  Definition clear_shadow_gp_regs_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((is_vmid v_vmid));
    rely ((is_vcpuid v_vcpuid));
    let ctxtid := (context_id v_vmid v_vcpuid) in
    let ctxt' := ((((st.(priv)).(e_shadow_ctxts)) @ ctxtid).[e_regs] :< (zmap_init 0)) in
    (Some (st.[priv].[e_shadow_ctxts] :< (((st.(priv)).(e_shadow_ctxts)) # ctxtid == ctxt'))).

  Definition reset_fp_regs_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((is_vmid v_vmid));
    rely ((is_vcpuid v_vcpuid));
    let ctxtid := (context_id v_vmid v_vcpuid) in
    let h_fp_regs := (((((st.(priv)).(e_host_cpus)) @ ctxtid).(e_gp_regs)).(e__fp_regs)) in
    let ctxt' := ((((st.(priv)).(e_shadow_ctxts)) @ ctxtid).[e_fp_regs] :< h_fp_regs) in
    (Some (st.[priv].[e_shadow_ctxts] :< (((st.(priv)).(e_shadow_ctxts)) # ctxtid == ctxt'))).

  Definition reset_sys_regs_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((is_vmid v_vmid));
    rely ((is_vcpuid v_vcpuid));
    let ctxtid := (context_id v_vmid v_vcpuid) in
    let h_sys_regs := ((((st.(priv)).(e_host_cpus)) @ ctxtid).(e__sys_regs)) in
    let ctxt' := ((((st.(priv)).(e_shadow_ctxts)) @ ctxtid).[e_sys_regs] :< h_sys_regs) in
    (Some (st.[priv].[e_shadow_ctxts] :< (((st.(priv)).(e_shadow_ctxts)) # ctxtid == ctxt'))).

  Definition __guest_enter_spec (sh_ctxt: Ptr) (core_ctxt: Ptr) (st: RData) : (option (Z * RData)) :=
    (Some (0, st)).

  Definition __populate_fault_info_spec (v_vmid: Z) (v_vcpuid: Z) (v_esr: Z) (st: RData) : (option (bool * RData)) :=
    let far := (((st.(priv)).(e_cpu_regs)).(e_far_el2)) in
    let hpfar_el2 := ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ HPFAR_EL2) in
    let ctxtid := (context_id v_vmid v_vcpuid) in
    let vcpu' := (((((st.(priv)).(e_vcpu_pool)) @ ctxtid).[e___arch].[e_fault].[e__far_el2] :< far).[e___arch].[e_fault].[e_hpfar_el2] :< hpfar_el2) in
    let shctxt' := (((((st.(priv)).(e_shadow_ctxts)) @ ctxtid).[e_far_el2] :< far).[e_hpfar] :< hpfar_el2) in
    let st' := ((st.[priv].[e_vcpu_pool] :< (((st.(priv)).(e_vcpu_pool)) # ctxtid == vcpu')).[priv].[e_shadow_ctxts] :< (((st.(priv)).(e_shadow_ctxts)) # ctxtid == shctxt')) in
    (Some (true, st')).

  Definition host_get_mmio_data_spec (v_hsr: Z) (st: RData) : (option (Z * RData)) :=
    let rt := (_host_dabt_get_rd v_hsr) in
    let data := (((st.(priv)).(e_host_ctxt)) @ rt) in
    (Some (data, st)).

  Definition __fpsimd_save_state_spec (v_fpreg_p: Ptr) (st: RData) : (option RData) :=
    match (((v_fpreg_p.(pbase)), (v_fpreg_p.(poffset)))) with
    | ("el2_data", ofs) =>
      let idx := ((ofs - 33555568) / 1808) in
      let elem_ofs := ((ofs - 33555568) mod 1808) in
      rely ((elem_ofs = 1264));
      let ctxt' := ((((st.(priv)).(e_shadow_ctxts)) @ idx).[e_fp_regs] :< (((st.(priv)).(e_cpu_regs)).(e_fp_regs))) in
      (Some (st.[priv].[e_shadow_ctxts] :< (((st.(priv)).(e_shadow_ctxts)) # idx == ctxt')))
    | ("host_cpus", ofs) =>
      let idx := (ofs / 9056) in
      let elem_ofs := (ofs mod 9056) in
      rely ((elem_ofs = 336));
      let vcpu' := ((((st.(priv)).(e_host_cpus)) @ idx).[e_gp_regs].[e__fp_regs] :< (((st.(priv)).(e_cpu_regs)).(e_fp_regs))) in
      (Some (st.[priv].[e_host_cpus] :< (((st.(priv)).(e_host_cpus)) # idx == vcpu')))
    | _ => None
    end.

  Definition __fpsimd_restore_state_spec (v_fpreg_p: Ptr) (st: RData) : (option RData) :=
    match (((v_fpreg_p.(pbase)), (v_fpreg_p.(poffset)))) with
    | ("el2_data", ofs) =>
      let idx := ((ofs - 33555568) / 1808) in
      let elem_ofs := ((ofs - 33555568) mod 1808) in
      rely ((elem_ofs = 1264));
      (Some (st.[priv].[e_cpu_regs].[e_fp_regs] :< ((((st.(priv)).(e_shadow_ctxts)) @ idx).(e_fp_regs))))
    | ("host_cpus", ofs) =>
      let idx := (ofs / 9056) in
      let elem_ofs := (ofs mod 9056) in
      rely ((elem_ofs = 336));
      (Some (st.[priv].[e_cpu_regs].[e_fp_regs] :< (((((st.(priv)).(e_host_cpus)) @ idx).(e_gp_regs)).(e__fp_regs))))
    | _ => None
    end.

  Definition __sysreg32_restore_state_spec (v_sysreg_p: Ptr) (st: RData) : (option RData) :=
    match (((v_sysreg_p.(pbase)), (v_sysreg_p.(poffset)))) with
    | ("el2_data", ofs) =>
      let idx := ((ofs - 33555568) / 1808) in
      let elem_ofs := ((ofs - 33555568) mod 1808) in
      rely ((elem_ofs = 1264));
      (Some (st.[priv].[e_cpu_regs].[e_sys_regs] :< ((((st.(priv)).(e_shadow_ctxts)) @ idx).(e_sys_regs))))
    | _ => None
    end.

  Definition __sysreg32_save_state_spec (v_sysreg_p: Ptr) (st: RData) : (option RData) :=
    match (((v_sysreg_p.(pbase)), (v_sysreg_p.(poffset)))) with
    | ("el2_data", ofs) =>
      let idx := ((ofs - 33555568) / 1808) in
      let elem_ofs := ((ofs - 33555568) mod 1808) in
      rely ((elem_ofs = 1264));
      let ctxt' := ((((st.(priv)).(e_shadow_ctxts)) @ idx).[e_sys_regs] :< (((st.(priv)).(e_cpu_regs)).(e_sys_regs))) in
      (Some (st.[priv].[e_shadow_ctxts] :< (((st.(priv)).(e_shadow_ctxts)) # idx == ctxt')))
    | _ => None
    end.

  Definition __sysreg_save_state_nvhe_spec (v_sysreg_p: Ptr) (st: RData) : (option RData) :=
    match (((v_sysreg_p.(pbase)), (v_sysreg_p.(poffset)))) with
    | ("host_cpus", ofs) =>
      let idx := (ofs / 9056) in
      let elem_ofs := (ofs mod 9056) in
      rely ((elem_ofs = 864));
      let vcpu' := ((((st.(priv)).(e_host_cpus)) @ idx).[e__sys_regs] :< (((st.(priv)).(e_cpu_regs)).(e_sys_regs))) in
      (Some (st.[priv].[e_host_cpus] :< (((st.(priv)).(e_host_cpus)) # idx == vcpu')))
    | _ => None
    end.

  Definition __sysreg_restore_state_nvhe_spec (v_sysreg_p: Ptr) (st: RData) : (option RData) :=
    match (((v_sysreg_p.(pbase)), (v_sysreg_p.(poffset)))) with
    | ("host_cpus", ofs) =>
      let idx := (ofs / 9056) in
      let elem_ofs := (ofs mod 9056) in
      rely ((elem_ofs = 864));
      (Some (st.[priv].[e_cpu_regs].[e_sys_regs] :< ((((st.(priv)).(e_host_cpus)) @ idx).(e__sys_regs))))
    | _ => None
    end.

  Definition __vm_sysreg_save_state_nvhe_opt_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((is_vmid v_vmid));
    rely ((is_vcpuid v_vcpuid));
    let idx := (context_id v_vmid v_vcpuid) in
    let ctxt' := ((((st.(priv)).(e_shadow_ctxts)) @ idx).[e_sys_regs] :< (((st.(priv)).(e_cpu_regs)).(e_sys_regs))) in
    (Some (st.[priv].[e_shadow_ctxts] :< (((st.(priv)).(e_shadow_ctxts)) # idx == ctxt'))).

  Definition __vm_sysreg_restore_state_nvhe_opt_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((is_vmid v_vmid));
    rely ((is_vcpuid v_vcpuid));
    let idx := (context_id v_vmid v_vcpuid) in
    (Some (st.[priv].[e_cpu_regs].[e_sys_regs] :< ((((st.(priv)).(e_shadow_ctxts)) @ idx).(e_sys_regs)))).

  Definition get_vcpu_host_cpu_context_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Ptr * RData)) :=
    let idx := (context_id v_vmid v_vcpuid) in
    (Some ((mkPtr "host_cpus" (9056 * idx)), st)).

  Definition get_core_context_spec (st: RData) : (option (Ptr * RData)) :=
    (Some ((mkPtr "core_ctxt" 0), st)).

  Definition hypsec_tlb_flush_local_vmid_spec (st: RData) : (option RData) :=
    (Some st).

  Definition kvm_tlb_flush_vmid_ipa_host_spec (v_ipa: Z) (st: RData) : (option RData) :=
    (Some st).

  Definition __flush_dcache_area_spec (v_addr: Ptr) (v_size: Z) (st: RData) : (option RData) :=
    (Some st).

  Definition verify_image_spec (v_vmid: Z) (v_load_idx: Z) (st: RData) : (option (Z * RData)) :=
    (Some (1, st)).

  Definition __kvm_timer_set_cntvoff_spec (v_n: Z) (v_m: Z) (st: RData) : (option RData) :=
    (Some st).

  Definition __timer_enable_traps_spec (v_kvm: Ptr) (st: RData) : (option RData) :=
    (Some st).

  Definition __timer_disable_traps_spec (v_kvm: Ptr) (st: RData) : (option RData) :=
    (Some st).

  Definition __activate_traps_spec (v_vcpu: Ptr) (st: RData) : (option RData) :=
    (Some st).

  Definition __deactivate_traps_spec (st: RData) : (option RData) :=
    (Some st).

  Definition hvc_enable_s2_trans_spec (st: RData) : (option RData) :=
    (Some st).

  Definition set_host_running_vcpu_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    (Some st).

  Definition iasm_6_isb_spec (st: RData) : (option RData) :=
    (Some st).

  Definition iasm_10_spec (st: RData) : (option RData) :=
    (Some st).

End Bottom_Spec.

#[global] Hint Unfold v_panic_spec: spec.
#[global] Hint Unfold __hyp_panic_spec: spec.
#[global] Hint Unfold get_el2_data_start_spec: spec.
#[global] Hint Unfold get_shared_data_start_spec: spec.
#[global] Hint Unfold get_cpuid_spec: spec.
#[global] Hint Unfold stage2_spin_lock_spec: spec.
#[global] Hint Unfold stage2_spin_unlock_spec: spec.
#[global] Hint Unfold pt_load_spec: spec.
#[global] Hint Unfold pt_store_spec: spec.
#[global] Hint Unfold smmu_pt_load_spec: spec.
#[global] Hint Unfold smmu_pt_store_spec: spec.
#[global] Hint Unfold clear_zmap_range: spec.
#[global] Hint Unfold smmu_pt_clear_spec: spec.
#[global] Hint Unfold set_host_regs_spec: spec.
#[global] Hint Unfold clear_phys_page_spec: spec.
#[global] Hint Unfold get_shared_kvm_spec: spec.
#[global] Hint Unfold get_shared_vcpu_spec: spec.
#[global] Hint Unfold get_host_reg_spec: spec.
#[global] Hint Unfold read_cpuid_mpidr_spec: spec.
#[global] Hint Unfold set_vm_load_signature_spec: spec.
#[global] Hint Unfold set_vm_public_key_spec: spec.
#[global] Hint Unfold __handle_smmu_read_spec: spec.
#[global] Hint Unfold __handle_smmu_write_spec: spec.
#[global] Hint Unfold host_dabt_get_as_spec: spec.
#[global] Hint Unfold host_dabt_is_write_spec: spec.
#[global] Hint Unfold clear_shadow_gp_regs_spec: spec.
#[global] Hint Unfold reset_fp_regs_spec: spec.
#[global] Hint Unfold reset_sys_regs_spec: spec.
#[global] Hint Unfold __guest_enter_spec: spec.
#[global] Hint Unfold __populate_fault_info_spec: spec.
#[global] Hint Unfold host_get_mmio_data_spec: spec.
#[global] Hint Unfold __fpsimd_save_state_spec: spec.
#[global] Hint Unfold __fpsimd_restore_state_spec: spec.
#[global] Hint Unfold __sysreg32_restore_state_spec: spec.
#[global] Hint Unfold __sysreg32_save_state_spec: spec.
#[global] Hint Unfold __sysreg_save_state_nvhe_spec: spec.
#[global] Hint Unfold __sysreg_restore_state_nvhe_spec: spec.
#[global] Hint Unfold __vm_sysreg_save_state_nvhe_opt_spec: spec.
#[global] Hint Unfold __vm_sysreg_restore_state_nvhe_opt_spec: spec.
#[global] Hint Unfold get_vcpu_host_cpu_context_spec: spec.
#[global] Hint Unfold get_core_context_spec: spec.
#[global] Hint Unfold hypsec_tlb_flush_local_vmid_spec: spec.
#[global] Hint Unfold kvm_tlb_flush_vmid_ipa_host_spec: spec.
#[global] Hint Unfold __flush_dcache_area_spec: spec.
#[global] Hint Unfold verify_image_spec: spec.
#[global] Hint Unfold __kvm_timer_set_cntvoff_spec: spec.
#[global] Hint Unfold __timer_enable_traps_spec: spec.
#[global] Hint Unfold __timer_disable_traps_spec: spec.
#[global] Hint Unfold __activate_traps_spec: spec.
#[global] Hint Unfold __deactivate_traps_spec: spec.
#[global] Hint Unfold hvc_enable_s2_trans_spec: spec.
#[global] Hint Unfold set_host_running_vcpu_spec: spec.
#[global] Hint Unfold iasm_6_isb_spec: spec.
#[global] Hint Unfold iasm_10_spec: spec.
