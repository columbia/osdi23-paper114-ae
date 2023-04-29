Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Spec.
Require Import MemoryOps.Spec.
Require Import SmmuOps.Spec.
Require Import TrapHandler.handle_host_stage2_fault.LowSpec.
Require Import VCPURun.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section TrapHandler_handle_host_stage2_fault_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque iasm_get_hpfar_el2_spec.
  Local Opaque set_per_cpu_host_regs_spec.
  Local Opaque emulate_mmio_spec.
  Local Opaque iasm_get_esr_el2_spec.
  Local Opaque map_page_host_spec.

    Lemma f_handle_host_stage2_fault_correct:
      forall v_host_lr v_host_regs st st'
             (Hspec: handle_host_stage2_fault_spec_low v_host_lr v_host_regs st = Some st'),
        exec_func VCPURun_layer code "handle_host_stage2_fault"
                  [VInt v_host_lr; VPtr v_host_regs]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End TrapHandler_handle_host_stage2_fault_CodeProof.

