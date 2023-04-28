Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuOps.Layer.
Require Import VCPUOpsAux.v_update_exception_gp_regs.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUOpsAux_v_update_exception_gp_regs_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque set_shadow_ctxt_spec.
  Local Opaque get_shadow_ctxt_spec.

    Lemma f_v_update_exception_gp_regs_correct:
      forall v_vmid v_vcpuid st st'
             (Hspec: v_update_exception_gp_regs_spec_low v_vmid v_vcpuid st = Some st'),
        exec_func SmmuOps_layer code "v_update_exception_gp_regs"
                  [VInt v_vmid; VInt v_vcpuid]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VCPUOpsAux_v_update_exception_gp_regs_CodeProof.

