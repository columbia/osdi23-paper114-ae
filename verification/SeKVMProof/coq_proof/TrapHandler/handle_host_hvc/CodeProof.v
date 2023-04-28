Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOps.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuOps.Spec.
Require Import TrapHandler.handle_host_hvc.LowSpec.
Require Import VCPURun.Layer.
Require Import VCPURun.Spec.
Require Import VMOps.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section TrapHandler_handle_host_hvc_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_host_reg_spec.
  Local Opaque __clear_vm_stage2_range_spec.
  Local Opaque verify_and_load_images_spec.
  Local Opaque __el2_alloc_smmu_pgd_spec.
  Local Opaque set_boot_info_spec.
  Local Opaque register_vcpu_spec.
  Local Opaque register_kvm_spec.
  Local Opaque remap_vm_image_spec.
  Local Opaque set_per_cpu_host_regs_spec.
  Local Opaque __kvm_timer_set_cntvoff_spec.
  Local Opaque __el2_arm_lpae_iova_to_phys_spec.
  Local Opaque __el2_arm_lpae_clear_spec.
  Local Opaque __kvm_vcpu_run_nvhe_spec.
  Local Opaque hvc_enable_s2_trans_spec.
  Local Opaque set_host_regs_spec.
  Local Opaque v_el2_arm_lpae_map_spec.
  Local Opaque v_kvm_phys_addr_ioremap_spec.
  Local Opaque __el2_free_smmu_pgd_spec.

    Lemma f_handle_host_hvc_correct:
      forall v_hr st st'
             (Hspec: handle_host_hvc_spec_low v_hr st = Some st'),
        exec_func VCPURun_layer code "handle_host_hvc"
                  [VPtr v_hr]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End TrapHandler_handle_host_hvc_CodeProof.

