Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import VCPUOpsAux.Layer.
Require Import VCPUPrep.prep_abort.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUPrep_prep_abort_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_int_esr_spec.
  Local Opaque set_shadow_dirty_bit_spec.
  Local Opaque set_int_gpr_spec.
  Local Opaque get_shadow_ctxt_spec.

    Lemma f_prep_abort_correct:
      forall v_vmid v_vcpuid st st'
             (Hspec: prep_abort_spec_low v_vmid v_vcpuid st = Some st'),
        exec_func VCPUOpsAux_layer code "prep_abort"
                  [VInt v_vmid; VInt v_vcpuid]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VCPUPrep_prep_abort_CodeProof.

