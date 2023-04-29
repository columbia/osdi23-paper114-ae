Require Import Accessors.set_shadow_dirty_bit.LowSpec.
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

Section Accessors_set_shadow_dirty_bit_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque load_RData.
  Local Opaque get_el2_data_start_spec.
  Local Opaque store_RData.

    Lemma f_set_shadow_dirty_bit_correct:
      forall v_vmid v_vcpuid v_value st st'
             (Hspec: set_shadow_dirty_bit_spec_low v_vmid v_vcpuid v_value st = Some st'),
        exec_func InlineAsms_layer code "set_shadow_dirty_bit"
                  [VInt v_vmid; VInt v_vcpuid; VInt v_value]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_set_shadow_dirty_bit_CodeProof.

