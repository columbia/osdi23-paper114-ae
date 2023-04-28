Require Import Accessors.get_cur_vcpu_id.LowSpec.
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

Section Accessors_get_cur_vcpu_id_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque load_RData.
  Local Opaque get_cpuid_spec.
  Local Opaque get_el2_data_start_spec.

    Lemma f_get_cur_vcpu_id_correct:
      forall st st' res
             (Hspec: get_cur_vcpu_id_spec_low st = Some (res, st')),
        exec_func InlineAsms_layer code "get_cur_vcpu_id"
                  []
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_get_cur_vcpu_id_CodeProof.

