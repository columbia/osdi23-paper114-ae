Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuPTAlloc.Layer.
Require Import SmmuPTWalk.set_smmu_pte.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTWalk_set_smmu_pte_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque smmu_pt_store_spec.

    Lemma f_set_smmu_pte_correct:
      forall v_pmd v_addr v_pte st st'
             (Hspec: set_smmu_pte_spec_low v_pmd v_addr v_pte st = Some st'),
        exec_func SmmuPTAlloc_layer code "set_smmu_pte"
                  [VInt v_pmd; VInt v_addr; VInt v_pte]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuPTWalk_set_smmu_pte_CodeProof.

