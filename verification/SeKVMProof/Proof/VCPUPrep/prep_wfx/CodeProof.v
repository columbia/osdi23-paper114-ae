Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import VCPUOpsAux.Layer.
Require Import VCPUPrep.prep_wfx.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUPrep_prep_wfx_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque set_shadow_dirty_bit_spec.

    Lemma f_prep_wfx_correct:
      forall v_vmid v_vcpuid st st'
             (Hspec: prep_wfx_spec_low v_vmid v_vcpuid st = Some st'),
        exec_func VCPUOpsAux_layer code "prep_wfx"
                  [VInt v_vmid; VInt v_vcpuid]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VCPUPrep_prep_wfx_CodeProof.

