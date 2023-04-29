Require Import Accessors.set_vcpu_was_preempted.LowSpec.
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

Section Accessors_set_vcpu_was_preempted_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque store_RData.
  Local Opaque get_shared_data_start_spec.

    Lemma f_set_vcpu_was_preempted_correct:
      forall v_vmid v_vcpuid st st'
             (Hspec: set_vcpu_was_preempted_spec_low v_vmid v_vcpuid st = Some st'),
        exec_func InlineAsms_layer code "set_vcpu_was_preempted"
                  [VInt v_vmid; VInt v_vcpuid]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_set_vcpu_was_preempted_CodeProof.

