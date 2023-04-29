Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import InlineAsms.Spec.
Require Import Locks.Spec.
Require Import MemoryOps.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuOpsAux.Spec.
Require Import SmmuPTOps.Spec.
Require Import VMOps.Spec.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Parameter SmmuOpsAux_init: RData.

Section SmmuOpsAux_Layer.

  Context `{int_ptr: IntPtrCast}.

  Definition SmmuOpsAux_load (size: Z) (p: Ptr) (st: RData) : option (Z * RData) := None.

  Definition SmmuOpsAux_store (size: Z) (p: Ptr) (val: Z) (st: RData) : option RData := None.

  Definition SmmuOpsAux_alloca (size: Z) (align: Z) (st: RData) : option (Ptr * RData) := None.

  Definition SmmuOpsAux_free (p: Ptr) (st: RData) : option RData := None.

  Definition SmmuOpsAux_get_reg (reg: regset) (st: RData) : option Z := None.

  Definition SmmuOpsAux_set_reg (reg: regset) (val: Z) (st: RData) : option RData := None.

  Definition SmmuOpsAux_get_flag (f: flag) (st: RData) : bool := false.

  Definition SmmuOpsAux_set_flag (f: flag) (val: bool) (st: RData) : option RData := None.

  Definition SmmuOpsAux_layer :=
    {|
      State := RData;
      Init := SmmuOpsAux_init;
      Load := SmmuOpsAux_load;
      Store := SmmuOpsAux_store;
      Alloca := SmmuOpsAux_alloca;
      Free := SmmuOpsAux_free;
      GetReg := SmmuOpsAux_get_reg;
      SetReg := SmmuOpsAux_set_reg;
      GetFlag := SmmuOpsAux_get_flag;
      SetFlag := SmmuOpsAux_set_flag;
      PrimCall :=
          ("__populate_fault_info", prim __populate_fault_info_spec)
          :: ("map_page_host", prim map_page_host_spec)
          :: ("get_esr_el2", prim get_esr_el2_spec)
          :: ("__sysreg_restore_state_nvhe", prim __sysreg_restore_state_nvhe_spec)
          :: ("get_shadow_esr", prim get_shadow_esr_spec)
          :: ("hypsec_set_vcpu_state", prim hypsec_set_vcpu_state_spec)
          :: ("acquire_lock_smmu", prim acquire_lock_smmu_spec)
          :: ("get_int_esr", prim get_int_esr_spec)
          :: ("get_host_vttbr", prim get_host_vttbr_spec)
          :: ("iasm_get_hpfar_el2", prim iasm_get_hpfar_el2_spec)
          :: ("hypsec_vcpu_id_to_shadow_ctxt", prim hypsec_vcpu_id_to_shadow_ctxt_spec)
          :: ("set_int_gpr", prim set_int_gpr_spec)
          :: ("hypsec_vcpu_id_to_vcpu", prim hypsec_vcpu_id_to_vcpu_spec)
          :: ("set_host_regs", prim set_host_regs_spec)
          :: ("get_cpuid", prim get_cpuid_spec)
          :: ("__vm_sysreg_save_state_nvhe_opt", prim __vm_sysreg_save_state_nvhe_opt_spec)
          :: ("__deactivate_traps", prim __deactivate_traps_spec)
          :: ("remap_vm_image", prim remap_vm_image_spec)
          :: ("__sysreg32_save_state", prim __sysreg32_save_state_spec)
          :: ("set_vcpu_esr_el2", prim set_vcpu_esr_el2_spec)
          :: ("get_int_pstate", prim get_int_pstate_spec)
          :: ("__fpsimd_restore_state", prim __fpsimd_restore_state_spec)
          :: ("get_int_pc", prim get_int_pc_spec)
          :: ("get_core_context", prim get_core_context_spec)
          :: ("v_revoke_stage2_sg_gpa", prim v_revoke_stage2_sg_gpa_spec)
          :: ("map_io", prim map_io_spec)
          :: ("__vm_sysreg_restore_state_nvhe_opt", prim __vm_sysreg_restore_state_nvhe_opt_spec)
          :: ("handle_host_mmio", prim handle_host_mmio_spec)
          :: ("reset_sys_regs", prim reset_sys_regs_spec)
          :: ("__el2_free_smmu_pgd", prim __el2_free_smmu_pgd_spec)
          :: ("iasm_set_elr_el2", prim iasm_set_elr_el2_spec)
          :: ("smmu_map_page", prim smmu_map_page_spec)
          :: ("set_tpidr_el2", prim set_tpidr_el2_spec)
          :: ("__timer_enable_traps", prim __timer_enable_traps_spec)
          :: ("get_el2_data_start", prim get_el2_data_start_spec)
          :: ("walk_spt", prim walk_spt_spec)
          :: ("hypsec_set_vcpu_active", prim hypsec_set_vcpu_active_spec)
          :: ("__el2_alloc_smmu_pgd", prim __el2_alloc_smmu_pgd_spec)
          :: ("smmu_assign_page", prim smmu_assign_page_spec)
          :: ("get_cur_vmid", prim get_cur_vmid_spec)
          :: ("__sysreg_save_state_nvhe", prim __sysreg_save_state_nvhe_spec)
          :: ("hypsec_tlb_flush_local_vmid", prim hypsec_tlb_flush_local_vmid_spec)
          :: ("set_shadow_ctxt_esr", prim set_shadow_ctxt_esr_spec)
          :: ("v_panic", prim v_panic_spec)
          :: ("verify_and_load_images", prim verify_and_load_images_spec)
          :: ("get_smmu_cfg_vmid", prim get_smmu_cfg_vmid_spec)
          :: ("reset_fp_regs", prim reset_fp_regs_spec)
          :: ("__timer_disable_traps", prim __timer_disable_traps_spec)
          :: ("register_kvm", prim register_kvm_spec)
          :: ("v_grant_stage2_sg_gpa", prim v_grant_stage2_sg_gpa_spec)
          :: ("get_host_reg", prim get_host_reg_spec)
          :: ("set_per_cpu_host_regs", prim set_per_cpu_host_regs_spec)
          :: ("__clear_vm_stage2_range", prim __clear_vm_stage2_range_spec)
          :: ("iasm_get_elr_el2", prim iasm_get_elr_el2_spec)
          :: ("set_shadow_ctxt", prim set_shadow_ctxt_spec)
          :: ("set_shadow_dirty_bit", prim set_shadow_dirty_bit_spec)
          :: ("v_search_load_info", prim v_search_load_info_spec)
          :: ("is_smmu_range", prim is_smmu_range_spec)
          :: ("__activate_traps", prim __activate_traps_spec)
          :: ("get_pt_vttbr", prim get_pt_vttbr_spec)
          :: ("set_vcpu_was_preempted", prim set_vcpu_was_preempted_spec)
          :: ("__fpsimd_save_state", prim __fpsimd_save_state_spec)
          :: ("get_vcpu_host_cpu_context", prim get_vcpu_host_cpu_context_spec)
          :: ("iasm_get_esr_el2", prim iasm_get_esr_el2_spec)
          :: ("get_vcpu_was_preempted", prim get_vcpu_was_preempted_spec)
          :: ("clear_smmu", prim clear_smmu_spec)
          :: ("get_int_gpr", prim get_int_gpr_spec)
          :: ("set_boot_info", prim set_boot_info_spec)
          :: ("get_cur_vcpu_id", prim get_cur_vcpu_id_spec)
          :: ("smmu_init_pte", prim smmu_init_pte_spec)
          :: ("release_lock_smmu", prim release_lock_smmu_spec)
          :: ("register_vcpu", prim register_vcpu_spec)
          :: ("v_post_handle_shadow_s2pt_fault", prim v_post_handle_shadow_s2pt_fault_spec)
          :: ("set_host_running_vcpu", prim set_host_running_vcpu_spec)
          :: ("__guest_enter", prim __guest_enter_spec)
          :: ("clear_shadow_gp_regs", prim clear_shadow_gp_regs_spec)
          :: ("__kvm_timer_set_cntvoff", prim __kvm_timer_set_cntvoff_spec)
          :: ("set_hcr_el2", prim set_hcr_el2_spec)
          :: ("get_shadow_dirty_bit", prim get_shadow_dirty_bit_spec)
          :: ("get_shadow_ctxt", prim get_shadow_ctxt_spec)
          :: ("hvc_enable_s2_trans", prim hvc_enable_s2_trans_spec)
          :: ("__sysreg32_restore_state", prim __sysreg32_restore_state_spec)
          :: ("set_per_cpu", prim set_per_cpu_spec)
          :: ("set_vttbr_el2", prim set_vttbr_el2_spec)
          :: ("set_vm_poweroff", prim set_vm_poweroff_spec)
          :: nil
    |}.

End SmmuOpsAux_Layer.
