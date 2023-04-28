Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Parameter Bottom_init: RData.

Section Bottom_Layer.

  Context `{int_ptr: IntPtrCast}.

  Definition Bottom_alloca (size: Z) (align: Z) (st: RData) : option (Ptr * RData) := None.

  Definition Bottom_free (p: Ptr) (st: RData) : option RData := None.

  Definition Bottom_get_flag (f: flag) (st: RData) : bool := false.

  Definition Bottom_set_flag (f: flag) (val: bool) (st: RData) : option RData := None.

  Definition Bottom_layer :=
    {|
      State := RData;
      Init := Bottom_init;
      Load := load_RData;
      Store := store_RData;
      Alloca := Bottom_alloca;
      Free := Bottom_free;
      GetReg := get_reg_RData;
      SetReg := set_reg_RData;
      GetFlag := Bottom_get_flag;
      SetFlag := Bottom_set_flag;
      PrimCall :=
          ("__populate_fault_info", prim __populate_fault_info_spec)
          :: ("reset_fp_regs", prim reset_fp_regs_spec)
          :: ("__sysreg_restore_state_nvhe", prim __sysreg_restore_state_nvhe_spec)
          :: ("__timer_disable_traps", prim __timer_disable_traps_spec)
          :: ("clear_phys_page", prim clear_phys_page_spec)
          :: ("get_shared_vcpu", prim get_shared_vcpu_spec)
          :: ("smmu_pt_store", prim smmu_pt_store_spec)
          :: ("get_shared_data_start", prim get_shared_data_start_spec)
          :: ("host_dabt_get_as", prim host_dabt_get_as_spec)
          :: ("set_vm_public_key", prim set_vm_public_key_spec)
          :: ("get_host_reg", prim get_host_reg_spec)
          :: ("pt_store", prim pt_store_spec)
          :: ("smmu_pt_clear", prim smmu_pt_clear_spec)
          :: ("iasm_6_isb", prim iasm_6_isb_spec)
          :: ("set_host_regs", prim set_host_regs_spec)
          :: ("get_cpuid", prim get_cpuid_spec)
          :: ("__activate_traps", prim __activate_traps_spec)
          :: ("__vm_sysreg_save_state_nvhe_opt", prim __vm_sysreg_save_state_nvhe_opt_spec)
          :: ("stage2_spin_lock", prim stage2_spin_lock_spec)
          :: ("__deactivate_traps", prim __deactivate_traps_spec)
          :: ("host_get_mmio_data", prim host_get_mmio_data_spec)
          :: ("__fpsimd_save_state", prim __fpsimd_save_state_spec)
          :: ("__handle_smmu_read", prim __handle_smmu_read_spec)
          :: ("get_vcpu_host_cpu_context", prim get_vcpu_host_cpu_context_spec)
          :: ("__sysreg32_save_state", prim __sysreg32_save_state_spec)
          :: ("__fpsimd_restore_state", prim __fpsimd_restore_state_spec)
          :: ("get_core_context", prim get_core_context_spec)
          :: ("__flush_dcache_area", prim __flush_dcache_area_spec)
          :: ("__handle_smmu_write", prim __handle_smmu_write_spec)
          :: ("verify_image", prim verify_image_spec)
          :: ("__vm_sysreg_restore_state_nvhe_opt", prim __vm_sysreg_restore_state_nvhe_opt_spec)
          :: ("__hyp_panic", prim __hyp_panic_spec)
          :: ("smmu_pt_load", prim smmu_pt_load_spec)
          :: ("host_dabt_is_write", prim host_dabt_is_write_spec)
          :: ("get_shared_kvm", prim get_shared_kvm_spec)
          :: ("reset_sys_regs", prim reset_sys_regs_spec)
          :: ("kvm_tlb_flush_vmid_ipa_host", prim kvm_tlb_flush_vmid_ipa_host_spec)
          :: ("set_vm_load_signature", prim set_vm_load_signature_spec)
          :: ("get_el2_data_start", prim get_el2_data_start_spec)
          :: ("__timer_enable_traps", prim __timer_enable_traps_spec)
          :: ("set_host_running_vcpu", prim set_host_running_vcpu_spec)
          :: ("stage2_spin_unlock", prim stage2_spin_unlock_spec)
          :: ("__guest_enter", prim __guest_enter_spec)
          :: ("clear_shadow_gp_regs", prim clear_shadow_gp_regs_spec)
          :: ("__kvm_timer_set_cntvoff", prim __kvm_timer_set_cntvoff_spec)
          :: ("__sysreg_save_state_nvhe", prim __sysreg_save_state_nvhe_spec)
          :: ("iasm_10", prim iasm_10_spec)
          :: ("hypsec_tlb_flush_local_vmid", prim hypsec_tlb_flush_local_vmid_spec)
          :: ("hvc_enable_s2_trans", prim hvc_enable_s2_trans_spec)
          :: ("__sysreg32_restore_state", prim __sysreg32_restore_state_spec)
          :: ("pt_load", prim pt_load_spec)
          :: ("v_panic", prim v_panic_spec)
          :: nil
    |}.

End Bottom_Layer.
