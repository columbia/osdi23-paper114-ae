Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import InlineAsms.Spec.
Require Import MemoryOps.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuOps.Spec.
Require Import VCPURun.Spec.
Require Import VMOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Parameter VCPURun_init: RData.

Section VCPURun_Layer.

  Context `{int_ptr: IntPtrCast}.

  Definition VCPURun_load (size: Z) (p: Ptr) (st: RData) : option (Z * RData) := None.

  Definition VCPURun_store (size: Z) (p: Ptr) (val: Z) (st: RData) : option RData := None.

  Definition VCPURun_alloca (size: Z) (align: Z) (st: RData) : option (Ptr * RData) := None.

  Definition VCPURun_free (p: Ptr) (st: RData) : option RData := None.

  Definition VCPURun_get_reg (reg: regset) (st: RData) : option Z := None.

  Definition VCPURun_set_reg (reg: regset) (val: Z) (st: RData) : option RData := None.

  Definition VCPURun_get_flag (f: flag) (st: RData) : bool := false.

  Definition VCPURun_set_flag (f: flag) (val: bool) (st: RData) : option RData := None.

  Definition VCPURun_layer :=
    {|
      State := RData;
      Init := VCPURun_init;
      Load := VCPURun_load;
      Store := VCPURun_store;
      Alloca := VCPURun_alloca;
      Free := VCPURun_free;
      GetReg := VCPURun_get_reg;
      SetReg := VCPURun_set_reg;
      GetFlag := VCPURun_get_flag;
      SetFlag := VCPURun_set_flag;
      PrimCall :=
          ("verify_and_load_images", prim verify_and_load_images_spec)
          :: ("map_page_host", prim map_page_host_spec)
          :: ("iasm_get_esr_el2", prim iasm_get_esr_el2_spec)
          :: ("set_boot_info", prim set_boot_info_spec)
          :: ("register_kvm", prim register_kvm_spec)
          :: ("get_host_reg", prim get_host_reg_spec)
          :: ("__el2_free_smmu_pgd", prim __el2_free_smmu_pgd_spec)
          :: ("set_per_cpu_host_regs", prim set_per_cpu_host_regs_spec)
          :: ("__clear_vm_stage2_range", prim __clear_vm_stage2_range_spec)
          :: ("iasm_get_hpfar_el2", prim iasm_get_hpfar_el2_spec)
          :: ("register_vcpu", prim register_vcpu_spec)
          :: ("__kvm_vcpu_run_nvhe", prim __kvm_vcpu_run_nvhe_spec)
          :: ("__kvm_timer_set_cntvoff", prim __kvm_timer_set_cntvoff_spec)
          :: ("__el2_alloc_smmu_pgd", prim __el2_alloc_smmu_pgd_spec)
          :: ("v_kvm_phys_addr_ioremap", prim v_kvm_phys_addr_ioremap_spec)
          :: ("set_host_regs", prim set_host_regs_spec)
          :: ("emulate_mmio", prim emulate_mmio_spec)
          :: ("v_el2_arm_lpae_map", prim v_el2_arm_lpae_map_spec)
          :: ("remap_vm_image", prim remap_vm_image_spec)
          :: ("hvc_enable_s2_trans", prim hvc_enable_s2_trans_spec)
          :: ("__el2_arm_lpae_clear", prim __el2_arm_lpae_clear_spec)
          :: ("__el2_arm_lpae_iova_to_phys", prim __el2_arm_lpae_iova_to_phys_spec)
          :: nil
    |}.

End VCPURun_Layer.
