Require Import Accessors.get_pt_vttbr.LowSpec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import InlineAsms.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_pt_vttbr_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque load_RData.
  Local Opaque iasm_get_ttbr0_el2_spec.
  Local Opaque get_el2_data_start_spec.

    Lemma f_get_pt_vttbr_correct:
      forall v_vmid st st' res
             (Hspec: get_pt_vttbr_spec_low v_vmid st = Some (res, st')),
        exec_func InlineAsms_layer code "get_pt_vttbr"
                  [VInt v_vmid]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_get_pt_vttbr_CodeProof.

