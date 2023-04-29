Require Import Accessors.set_int_gpr.LowSpec.
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

Section Accessors_set_int_gpr_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque store_RData.
  Local Opaque get_shared_data_start_spec.

    Lemma f_set_int_gpr_correct:
      forall v_vmid v_vcpuid v_index v_value st st'
             (Hspec: set_int_gpr_spec_low v_vmid v_vcpuid v_index v_value st = Some st'),
        exec_func InlineAsms_layer code "set_int_gpr"
                  [VInt v_vmid; VInt v_vcpuid; VInt v_index; VInt v_value]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_set_int_gpr_CodeProof.

