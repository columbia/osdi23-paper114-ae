Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import InlineAsms.Spec.
Require Import Locks.Spec.
Require Import MemManager.Spec.
Require Import MemoryOpsAux.Spec.
Require Import PageManager.Spec.
Require Import S2PTOps.Spec.
Require Import SmmuPTOps.Spec.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Parameter VMOpsAux_init: RData.

Section VMOpsAux_Layer.

  Context `{int_ptr: IntPtrCast}.

  Definition VMOpsAux_load (size: Z) (p: Ptr) (st: RData) : option (Z * RData) := None.

  Definition VMOpsAux_store (size: Z) (p: Ptr) (val: Z) (st: RData) : option RData := None.

  Definition VMOpsAux_alloca (size: Z) (align: Z) (st: RData) : option (Ptr * RData) := None.

  Definition VMOpsAux_free (p: Ptr) (st: RData) : option RData := None.

  Definition VMOpsAux_get_reg (reg: regset) (st: RData) : option Z := None.

  Definition VMOpsAux_set_reg (reg: regset) (val: Z) (st: RData) : option RData := None.

  Definition VMOpsAux_get_flag (f: flag) (st: RData) : bool := false.

  Definition VMOpsAux_set_flag (f: flag) (val: bool) (st: RData) : option RData := None.

  Definition VMOpsAux_layer :=
    {|
      State := RData;
      Init := VMOpsAux_init;
      Load := VMOpsAux_load;
      Store := VMOpsAux_store;
      Alloca := VMOpsAux_alloca;
      Free := VMOpsAux_free;
      GetReg := VMOpsAux_get_reg;
      SetReg := VMOpsAux_set_reg;
      GetFlag := VMOpsAux_get_flag;
      SetFlag := VMOpsAux_set_flag;
      PrimCall :=
          ("__populate_fault_info", prim __populate_fault_info_spec)
          :: ("mmap_s2pt", prim mmap_s2pt_spec)
          :: ("set_vm_inc_exe", prim set_vm_inc_exe_spec)
          :: ("vmid_to_vm_info", prim vmid_to_vm_info_spec)
          :: ("get_shadow_esr", prim get_shadow_esr_spec)
          :: ("host_dabt_get_as", prim host_dabt_get_as_spec)
          :: ("set_vm_public_key", prim set_vm_public_key_spec)
          :: ("acquire_lock_smmu", prim acquire_lock_smmu_spec)
          :: ("get_int_esr", prim get_int_esr_spec)
          :: ("hypsec_vcpu_id_to_vcpu", prim hypsec_vcpu_id_to_vcpu_spec)
          :: ("unmap_and_load_vm_image", prim unmap_and_load_vm_image_spec)
          :: ("set_host_regs", prim set_host_regs_spec)
          :: ("set_pfn_owner", prim set_pfn_owner_spec)
          :: ("__vm_sysreg_save_state_nvhe_opt", prim __vm_sysreg_save_state_nvhe_opt_spec)
          :: ("host_get_mmio_data", prim host_get_mmio_data_spec)
          :: ("get_smmu_hyp_base", prim get_smmu_hyp_base_spec)
          :: ("set_smmu_cfg_vmid", prim set_smmu_cfg_vmid_spec)
          :: ("set_vcpu_esr_el2", prim set_vcpu_esr_el2_spec)
          :: ("get_int_pstate", prim get_int_pstate_spec)
          :: ("set_pfn_map", prim set_pfn_map_spec)
          :: ("get_smmu_base", prim get_smmu_base_spec)
          :: ("set_vm_state", prim set_vm_state_spec)
          :: ("map_spt", prim map_spt_spec)
          :: ("init_s2pt", prim init_s2pt_spec)
          :: ("reset_sys_regs", prim reset_sys_regs_spec)
          :: ("set_vm_vcpu", prim set_vm_vcpu_spec)
          :: ("get_vm_remap_addr", prim get_vm_remap_addr_spec)
          :: ("set_tpidr_el2", prim set_tpidr_el2_spec)
          :: ("__timer_enable_traps", prim __timer_enable_traps_spec)
          :: ("iasm_10", prim iasm_10_spec)
          :: ("hypsec_tlb_flush_local_vmid", prim hypsec_tlb_flush_local_vmid_spec)
          :: ("iasm_get_far_el2", prim iasm_get_far_el2_spec)
          :: ("set_vcpu_state", prim set_vcpu_state_spec)
          :: ("__handle_smmu_read", prim __handle_smmu_read_spec)
          :: ("alloc_remap_addr", prim alloc_remap_addr_spec)
          :: ("get_smmu_cfg_vmid", prim get_smmu_cfg_vmid_spec)
          :: ("reset_fp_regs", prim reset_fp_regs_spec)
          :: ("__timer_disable_traps", prim __timer_disable_traps_spec)
          :: ("get_smmu_size", prim get_smmu_size_spec)
          :: ("iasm_get_elr_el2", prim iasm_get_elr_el2_spec)
          :: ("set_shadow_ctxt", prim set_shadow_ctxt_spec)
          :: ("set_shadow_dirty_bit", prim set_shadow_dirty_bit_spec)
          :: ("__fpsimd_save_state", prim __fpsimd_save_state_spec)
          :: ("get_mem_region_base", prim get_mem_region_base_spec)
          :: ("get_vcpu_host_cpu_context", prim get_vcpu_host_cpu_context_spec)
          :: ("gen_vmid", prim gen_vmid_spec)
          :: ("iasm_get_esr_el2", prim iasm_get_esr_el2_spec)
          :: ("get_vcpu_was_preempted", prim get_vcpu_was_preempted_spec)
          :: ("get_vm_next_load_idx", prim get_vm_next_load_idx_spec)
          :: ("__handle_smmu_write", prim __handle_smmu_write_spec)
          :: ("prot_and_map_vm_s2pt", prim prot_and_map_vm_s2pt_spec)
          :: ("release_lock_smmu", prim release_lock_smmu_spec)
          :: ("walk_s2pt", prim walk_s2pt_spec)
          :: ("set_vm_load_signature", prim set_vm_load_signature_spec)
          :: ("set_host_running_vcpu", prim set_host_running_vcpu_spec)
          :: ("__guest_enter", prim __guest_enter_spec)
          :: ("clear_shadow_gp_regs", prim clear_shadow_gp_regs_spec)
          :: ("init_spt", prim init_spt_spec)
          :: ("set_hcr_el2", prim set_hcr_el2_spec)
          :: ("get_mem_region_cnt", prim get_mem_region_cnt_spec)
          :: ("get_shadow_ctxt", prim get_shadow_ctxt_spec)
          :: ("hvc_enable_s2_trans", prim hvc_enable_s2_trans_spec)
          :: ("__sysreg32_restore_state", prim __sysreg32_restore_state_spec)
          :: ("set_vttbr_el2", prim set_vttbr_el2_spec)
          :: ("get_int_new_level", prim get_int_new_level_spec)
          :: ("set_vm_load_size", prim set_vm_load_size_spec)
          :: ("set_vm_remap_addr", prim set_vm_remap_addr_spec)
          :: ("set_vm_kvm", prim set_vm_kvm_spec)
          :: ("get_esr_el2", prim get_esr_el2_spec)
          :: ("get_smmu_cfg_hw_ttbr", prim get_smmu_cfg_hw_ttbr_spec)
          :: ("__sysreg_restore_state_nvhe", prim __sysreg_restore_state_nvhe_spec)
          :: ("get_smmu_num_context_banks", prim get_smmu_num_context_banks_spec)
          :: ("get_mem_region_size", prim get_mem_region_size_spec)
          :: ("get_pfn_count", prim get_pfn_count_spec)
          :: ("unmap_spt", prim unmap_spt_spec)
          :: ("get_host_vttbr", prim get_host_vttbr_spec)
          :: ("__clear_vm_range", prim __clear_vm_range_spec)
          :: ("iasm_get_hpfar_el2", prim iasm_get_hpfar_el2_spec)
          :: ("hypsec_vcpu_id_to_shadow_ctxt", prim hypsec_vcpu_id_to_shadow_ctxt_spec)
          :: ("release_lock_vm", prim release_lock_vm_spec)
          :: ("set_int_gpr", prim set_int_gpr_spec)
          :: ("get_cpuid", prim get_cpuid_spec)
          :: ("__deactivate_traps", prim __deactivate_traps_spec)
          :: ("get_vm_load_addr", prim get_vm_load_addr_spec)
          :: ("get_smmu_num", prim get_smmu_num_spec)
          :: ("__sysreg32_save_state", prim __sysreg32_save_state_spec)
          :: ("get_vcpu_state", prim get_vcpu_state_spec)
          :: ("__fpsimd_restore_state", prim __fpsimd_restore_state_spec)
          :: ("get_int_pc", prim get_int_pc_spec)
          :: ("get_core_context", prim get_core_context_spec)
          :: ("get_vm_mapped_pages", prim get_vm_mapped_pages_spec)
          :: ("verify_image", prim verify_image_spec)
          :: ("__vm_sysreg_restore_state_nvhe_opt", prim __vm_sysreg_restore_state_nvhe_opt_spec)
          :: ("smmu_get_cbndx", prim smmu_get_cbndx_spec)
          :: ("get_int_new_pte", prim get_int_new_pte_spec)
          :: ("set_vm_mapped_pages", prim set_vm_mapped_pages_spec)
          :: ("iasm_set_elr_el2", prim iasm_set_elr_el2_spec)
          :: ("set_vm_next_load_idx", prim set_vm_next_load_idx_spec)
          :: ("get_el2_data_start", prim get_el2_data_start_spec)
          :: ("walk_spt", prim walk_spt_spec)
          :: ("get_cur_vmid", prim get_cur_vmid_spec)
          :: ("__sysreg_save_state_nvhe", prim __sysreg_save_state_nvhe_spec)
          :: ("set_shadow_ctxt_esr", prim set_shadow_ctxt_esr_spec)
          :: ("get_vm_state", prim get_vm_state_spec)
          :: ("set_vm_load_addr", prim set_vm_load_addr_spec)
          :: ("v_panic", prim v_panic_spec)
          :: ("acquire_lock_s2page", prim acquire_lock_s2page_spec)
          :: ("acquire_lock_vm", prim acquire_lock_vm_spec)
          :: ("get_shared_vcpu", prim get_shared_vcpu_spec)
          :: ("grant_vm_page", prim grant_vm_page_spec)
          :: ("get_host_reg", prim get_host_reg_spec)
          :: ("get_pfn_owner", prim get_pfn_owner_spec)
          :: ("set_per_cpu_host_regs", prim set_per_cpu_host_regs_spec)
          :: ("get_mem_region_flag", prim get_mem_region_flag_spec)
          :: ("release_lock_s2page", prim release_lock_s2page_spec)
          :: ("get_vm_load_size", prim get_vm_load_size_spec)
          :: ("__activate_traps", prim __activate_traps_spec)
          :: ("get_pt_vttbr", prim get_pt_vttbr_spec)
          :: ("set_vcpu_was_preempted", prim set_vcpu_was_preempted_spec)
          :: ("clear_pfn_host", prim clear_pfn_host_spec)
          :: ("get_pfn_map", prim get_pfn_map_spec)
          :: ("set_pfn_count", prim set_pfn_count_spec)
          :: ("get_vm_poweron", prim get_vm_poweron_spec)
          :: ("get_int_gpr", prim get_int_gpr_spec)
          :: ("get_cur_vcpu_id", prim get_cur_vcpu_id_spec)
          :: ("smmu_init_pte", prim smmu_init_pte_spec)
          :: ("host_dabt_is_write", prim host_dabt_is_write_spec)
          :: ("get_shared_kvm", prim get_shared_kvm_spec)
          :: ("revoke_vm_page", prim revoke_vm_page_spec)
          :: ("__kvm_timer_set_cntvoff", prim __kvm_timer_set_cntvoff_spec)
          :: ("get_shadow_dirty_bit", prim get_shadow_dirty_bit_spec)
          :: ("set_per_cpu", prim set_per_cpu_spec)
          :: ("set_vm_poweroff", prim set_vm_poweroff_spec)
          :: nil
    |}.

End VMOpsAux_Layer.
