Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import VCPUOps.save_shadow_kvm_regs.LowSpec.
Require Import VCPUPrep.Layer.
Require Import VCPUPrep.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUOps_save_shadow_kvm_regs_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque prep_hvc_spec.
  Local Opaque get_cur_vcpu_id_spec.
  Local Opaque prep_wfx_spec.
  Local Opaque get_shadow_esr_spec.
  Local Opaque get_shadow_ctxt_spec.
  Local Opaque prep_abort_spec.
  Local Opaque v_panic_spec.
  Local Opaque get_cur_vmid_spec.

    Lemma f_save_shadow_kvm_regs_correct:
      forall st st'
             (Hspec: save_shadow_kvm_regs_spec_low st = Some st'),
        exec_func VCPUPrep_layer code "save_shadow_kvm_regs"
                  []
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VCPUOps_save_shadow_kvm_regs_CodeProof.

