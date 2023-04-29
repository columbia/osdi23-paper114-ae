Require Import Accessors.hypsec_vcpu_id_to_vcpu.LowSpec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_hypsec_vcpu_id_to_vcpu_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque __hyp_panic_spec.
  Local Opaque get_shared_data_start_spec.

    Lemma f_hypsec_vcpu_id_to_vcpu_correct:
      forall v_vmid v_vcpu_id st st' res
             (Hspec: hypsec_vcpu_id_to_vcpu_spec_low v_vmid v_vcpu_id st = Some (res, st')),
        exec_func InlineAsms_layer code "hypsec_vcpu_id_to_vcpu"
                  [VInt v_vmid; VInt v_vcpu_id]
                  st st' (Some (VPtr res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_hypsec_vcpu_id_to_vcpu_CodeProof.

