Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import CtxtSwitch.Spec.
Require Import DataTypes.
Require Import InlineAsms.Spec.
Require Import MemoryOps.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuOps.Spec.
Require Import VCPUOps.Spec.
Require Import VMOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Parameter CtxtSwitch_init: RData.

Section CtxtSwitch_Layer.

  Context `{int_ptr: IntPtrCast}.

  Definition CtxtSwitch_load (size: Z) (p: Ptr) (st: RData) : option (Z * RData) := None.

  Definition CtxtSwitch_store (size: Z) (p: Ptr) (val: Z) (st: RData) : option RData := None.

  Definition CtxtSwitch_alloca (size: Z) (align: Z) (st: RData) : option (Ptr * RData) := None.

  Definition CtxtSwitch_free (p: Ptr) (st: RData) : option RData := None.

  Definition CtxtSwitch_get_reg (reg: regset) (st: RData) : option Z := None.

  Definition CtxtSwitch_set_reg (reg: regset) (val: Z) (st: RData) : option RData := None.

  Definition CtxtSwitch_get_flag (f: flag) (st: RData) : bool := false.

  Definition CtxtSwitch_set_flag (f: flag) (val: bool) (st: RData) : option RData := None.

  Definition CtxtSwitch_layer :=
    {|
      State := RData;
      Init := CtxtSwitch_init;
      Load := CtxtSwitch_load;
      Store := CtxtSwitch_store;
      Alloca := CtxtSwitch_alloca;
      Free := CtxtSwitch_free;
      GetReg := CtxtSwitch_get_reg;
      SetReg := CtxtSwitch_set_reg;
      GetFlag := CtxtSwitch_get_flag;
      SetFlag := CtxtSwitch_set_flag;
      PrimCall :=
          ("verify_and_load_images", prim verify_and_load_images_spec)
          :: ("__populate_fault_info", prim __populate_fault_info_spec)
          :: ("map_page_host", prim map_page_host_spec)
          :: ("get_esr_el2", prim get_esr_el2_spec)
          :: ("__sysreg_restore_state_nvhe", prim __sysreg_restore_state_nvhe_spec)
          :: ("__timer_disable_traps", prim __timer_disable_traps_spec)
          :: ("register_kvm", prim register_kvm_spec)
          :: ("v_grant_stage2_sg_gpa", prim v_grant_stage2_sg_gpa_spec)
          :: ("hypsec_set_vcpu_state", prim hypsec_set_vcpu_state_spec)
          :: ("get_host_reg", prim get_host_reg_spec)
          :: ("set_per_cpu_host_regs", prim set_per_cpu_host_regs_spec)
          :: ("__clear_vm_stage2_range", prim __clear_vm_stage2_range_spec)
          :: ("iasm_get_elr_el2", prim iasm_get_elr_el2_spec)
          :: ("iasm_get_hpfar_el2", prim iasm_get_hpfar_el2_spec)
          :: ("hypsec_vcpu_id_to_shadow_ctxt", prim hypsec_vcpu_id_to_shadow_ctxt_spec)
          :: ("hypsec_vcpu_id_to_vcpu", prim hypsec_vcpu_id_to_vcpu_spec)
          :: ("set_shadow_ctxt", prim set_shadow_ctxt_spec)
          :: ("v_kvm_phys_addr_ioremap", prim v_kvm_phys_addr_ioremap_spec)
          :: ("set_host_regs", prim set_host_regs_spec)
          :: ("__activate_traps", prim __activate_traps_spec)
          :: ("get_cpuid", prim get_cpuid_spec)
          :: ("v_el2_arm_lpae_map", prim v_el2_arm_lpae_map_spec)
          :: ("__deactivate_traps", prim __deactivate_traps_spec)
          :: ("__vm_sysreg_save_state_nvhe_opt", prim __vm_sysreg_save_state_nvhe_opt_spec)
          :: ("remap_vm_image", prim remap_vm_image_spec)
          :: ("set_vcpu_was_preempted", prim set_vcpu_was_preempted_spec)
          :: ("__fpsimd_save_state", prim __fpsimd_save_state_spec)
          :: ("__el2_arm_lpae_clear", prim __el2_arm_lpae_clear_spec)
          :: ("get_vcpu_host_cpu_context", prim get_vcpu_host_cpu_context_spec)
          :: ("__sysreg32_save_state", prim __sysreg32_save_state_spec)
          :: ("set_vcpu_esr_el2", prim set_vcpu_esr_el2_spec)
          :: ("__fpsimd_restore_state", prim __fpsimd_restore_state_spec)
          :: ("get_core_context", prim get_core_context_spec)
          :: ("iasm_get_esr_el2", prim iasm_get_esr_el2_spec)
          :: ("v_revoke_stage2_sg_gpa", prim v_revoke_stage2_sg_gpa_spec)
          :: ("get_vcpu_was_preempted", prim get_vcpu_was_preempted_spec)
          :: ("__activate_vm", prim __activate_vm_spec)
          :: ("set_boot_info", prim set_boot_info_spec)
          :: ("__vm_sysreg_restore_state_nvhe_opt", prim __vm_sysreg_restore_state_nvhe_opt_spec)
          :: ("save_shadow_kvm_regs", prim save_shadow_kvm_regs_spec)
          :: ("restore_shadow_kvm_regs", prim restore_shadow_kvm_regs_spec)
          :: ("__el2_free_smmu_pgd", prim __el2_free_smmu_pgd_spec)
          :: ("iasm_set_elr_el2", prim iasm_set_elr_el2_spec)
          :: ("register_vcpu", prim register_vcpu_spec)
          :: ("get_el2_data_start", prim get_el2_data_start_spec)
          :: ("set_tpidr_el2", prim set_tpidr_el2_spec)
          :: ("__timer_enable_traps", prim __timer_enable_traps_spec)
          :: ("__kvm_timer_set_cntvoff", prim __kvm_timer_set_cntvoff_spec)
          :: ("__el2_alloc_smmu_pgd", prim __el2_alloc_smmu_pgd_spec)
          :: ("emulate_mmio", prim emulate_mmio_spec)
          :: ("set_host_running_vcpu", prim set_host_running_vcpu_spec)
          :: ("hypsec_set_vcpu_active", prim hypsec_set_vcpu_active_spec)
          :: ("__guest_enter", prim __guest_enter_spec)
          :: ("__sysreg_save_state_nvhe", prim __sysreg_save_state_nvhe_spec)
          :: ("get_shadow_ctxt", prim get_shadow_ctxt_spec)
          :: ("hypsec_tlb_flush_local_vmid", prim hypsec_tlb_flush_local_vmid_spec)
          :: ("hvc_enable_s2_trans", prim hvc_enable_s2_trans_spec)
          :: ("set_per_cpu", prim set_per_cpu_spec)
          :: ("__sysreg32_restore_state", prim __sysreg32_restore_state_spec)
          :: ("set_shadow_ctxt_esr", prim set_shadow_ctxt_esr_spec)
          :: ("__el2_arm_lpae_iova_to_phys", prim __el2_arm_lpae_iova_to_phys_spec)
          :: ("__host_el2_restore_state", prim __host_el2_restore_state_spec)
          :: nil
    |}.

End CtxtSwitch_Layer.
