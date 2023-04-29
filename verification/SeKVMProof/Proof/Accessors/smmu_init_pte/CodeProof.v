Require Import Accessors.smmu_init_pte.LowSpec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_smmu_init_pte_CodeProof.

  Context `{int_ptr: IntPtrCast}.


    Lemma f_smmu_init_pte_correct:
      forall v_prot v_paddr st st' res
             (Hspec: smmu_init_pte_spec_low v_prot v_paddr st = Some (res, st')),
        exec_func InlineAsms_layer code "smmu_init_pte"
                  [VInt v_prot; VInt v_paddr]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_smmu_init_pte_CodeProof.

