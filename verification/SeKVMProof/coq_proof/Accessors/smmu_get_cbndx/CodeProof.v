Require Import Accessors.smmu_get_cbndx.LowSpec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_smmu_get_cbndx_CodeProof.

  Context `{int_ptr: IntPtrCast}.


    Lemma f_smmu_get_cbndx_correct:
      forall v_offset st st' res
             (Hspec: smmu_get_cbndx_spec_low v_offset st = Some (res, st')),
        exec_func InlineAsms_layer code "smmu_get_cbndx"
                  [VInt v_offset]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_smmu_get_cbndx_CodeProof.

