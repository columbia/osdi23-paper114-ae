Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import CtxtSwitch.Spec.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import GuestExit.Layer.
Require Import GuestExit.Spec.
Require Import VCPUOps.Spec.
Require Import VCPURun.Spec.
Require Import VCPURun.__kvm_vcpu_run_nvhe.LowSpec.
Require Import VMOps.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPURun___kvm_vcpu_run_nvhe_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque __sysreg_save_state_nvhe_spec.
  Local Opaque hypsec_set_vcpu_active_spec.
  Local Opaque get_el2_data_start_spec.
  Local Opaque __timer_enable_traps_spec.
  Local Opaque set_vcpu_was_preempted_spec.
  Local Opaque get_core_context_spec.
  Local Opaque hypsec_set_vcpu_state_spec.
  Local Opaque hypsec_tlb_flush_local_vmid_spec.
  Local Opaque set_tpidr_el2_spec.
  Local Opaque __timer_disable_traps_spec.
  Local Opaque __sysreg_restore_state_nvhe_spec.
  Local Opaque __activate_vm_spec.
  Local Opaque hypsec_vcpu_id_to_shadow_ctxt_spec.
  Local Opaque __fpsimd_restore_state_spec.
  Local Opaque get_vcpu_host_cpu_context_spec.
  Local Opaque __sysreg32_save_state_spec.
  Local Opaque __guest_enter_spec.
  Local Opaque set_per_cpu_spec.
  Local Opaque restore_shadow_kvm_regs_spec.
  Local Opaque set_shadow_ctxt_spec.
  Local Opaque set_host_running_vcpu_spec.
  Local Opaque save_shadow_kvm_regs_spec.
  Local Opaque __activate_traps_spec.
  Local Opaque __vm_sysreg_save_state_nvhe_opt_spec.
  Local Opaque __vm_sysreg_restore_state_nvhe_opt_spec.
  Local Opaque fixup_guest_exit_spec.
  Local Opaque __deactivate_traps_spec.
  Local Opaque get_cpuid_spec.
  Local Opaque __sysreg32_restore_state_spec.
  Local Opaque get_vcpu_was_preempted_spec.
  Local Opaque hypsec_vcpu_id_to_vcpu_spec.
  Local Opaque __host_el2_restore_state_spec.
  Local Opaque __fpsimd_save_state_spec.

    Lemma f___kvm_vcpu_run_nvhe_correct:
      forall v_vmid v_vcpu_id st st' res
             (Hspec: __kvm_vcpu_run_nvhe_spec_low v_vmid v_vcpu_id st = Some (res, st')),
        exec_func GuestExit_layer code "__kvm_vcpu_run_nvhe"
                  [VInt v_vmid; VInt v_vcpu_id]
                  st st' (Some (VInt res)).
    Proof.
      intros; simpl_func Hspec; simpl in *; try solve[try_solve].
        try solve[ eapply exec_func_call; try reflexivity; vcgen].
      autounfold with sem in *.
      destruct_spec C30.
      assert(z2 = 0).
      Local Transparent __guest_enter_spec fixup_guest_exit_spec.
      simpl_func Hcond1. reflexivity. subst.
      simpl_func Hcond3.
      Local Opaque __guest_enter_spec fixup_guest_exit_spec.
      eapply exec_func_call; try reflexivity; vcgen.
      eapply exec_loop_break. vcgen. 2: intro; contra. intro.
      vcgen.
      autounfold with sem in *.
      destruct_spec C27.
      assert(z2 = 0).
      Local Transparent __guest_enter_spec fixup_guest_exit_spec.
      simpl_func Hcond1. reflexivity. subst.
      simpl_func Hcond3.
      Local Opaque __guest_enter_spec fixup_guest_exit_spec.
      eapply exec_func_call; try reflexivity; vcgen.
      eapply exec_loop_break. vcgen. 2: intro; contra. intro.
      vcgen.
    Qed.

End VCPURun___kvm_vcpu_run_nvhe_CodeProof.

