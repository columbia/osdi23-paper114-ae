Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOps.Spec.
Require Import VCPUOps.restore_shadow_kvm_regs.LowSpec.
Require Import VCPUOpsAux.Spec.
Require Import VCPUPrep.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUOps_restore_shadow_kvm_regs_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque sync_dirty_to_shadow_spec.
  Local Opaque get_cur_vcpu_id_spec.
  Local Opaque reset_sys_regs_spec.
  Local Opaque set_shadow_dirty_bit_spec.
  Local Opaque v_post_handle_shadow_s2pt_fault_spec.
  Local Opaque reset_gp_regs_spec.
  Local Opaque set_shadow_ctxt_spec.
  Local Opaque v_update_exception_gp_regs_spec.
  Local Opaque get_shadow_ctxt_spec.
  Local Opaque get_cur_vmid_spec.

    Lemma f_restore_shadow_kvm_regs_correct:
      forall st st'
             (Hspec: restore_shadow_kvm_regs_spec_low st = Some st'),
        exec_func VCPUPrep_layer code "restore_shadow_kvm_regs"
                  []
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VCPUOps_restore_shadow_kvm_regs_CodeProof.

