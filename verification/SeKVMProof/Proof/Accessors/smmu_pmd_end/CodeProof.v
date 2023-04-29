Require Import Accessors.smmu_pmd_end.LowSpec.
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

Section Accessors_smmu_pmd_end_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque load_RData.
  Local Opaque get_el2_data_start_spec.

    Lemma f_smmu_pmd_end_correct:
      forall st st' res
             (Hspec: smmu_pmd_end_spec_low st = Some (res, st')),
        exec_func InlineAsms_layer code "smmu_pmd_end"
                  []
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_smmu_pmd_end_CodeProof.

