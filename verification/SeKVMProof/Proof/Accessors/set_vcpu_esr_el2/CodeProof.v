Require Import Accessors.set_vcpu_esr_el2.LowSpec.
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

Section Accessors_set_vcpu_esr_el2_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque store_RData.
  Local Opaque get_shared_data_start_spec.

    Lemma f_set_vcpu_esr_el2_correct:
      forall v_vmid v_vcpuid v_esr_el2 st st'
             (Hspec: set_vcpu_esr_el2_spec_low v_vmid v_vcpuid v_esr_el2 st = Some st'),
        exec_func InlineAsms_layer code "set_vcpu_esr_el2"
                  [VInt v_vmid; VInt v_vcpuid; VInt v_esr_el2]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_set_vcpu_esr_el2_CodeProof.

