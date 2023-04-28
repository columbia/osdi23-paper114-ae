Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import CtxtSwitch.__host_el2_restore_state.LowSpec.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import VCPUOps.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section CtxtSwitch___host_el2_restore_state_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque set_tpidr_el2_spec.
  Local Opaque set_hcr_el2_spec.
  Local Opaque get_host_vttbr_spec.
  Local Opaque set_vttbr_el2_spec.

    Lemma f___host_el2_restore_state_correct:
      forall st st'
             (Hspec: __host_el2_restore_state_spec_low st = Some st'),
        exec_func VCPUOps_layer code "__host_el2_restore_state"
                  []
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End CtxtSwitch___host_el2_restore_state_CodeProof.

