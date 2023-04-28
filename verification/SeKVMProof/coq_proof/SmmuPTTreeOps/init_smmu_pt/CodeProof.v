Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuPTTreeOps.init_smmu_pt.LowSpec.
Require Import SmmuPTWalk.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTTreeOps_init_smmu_pt_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque smmu_pt_clear_spec.

    Lemma f_init_smmu_pt_correct:
      forall v_cbndx v_num st st'
             (Hspec: init_smmu_pt_spec_low v_cbndx v_num st = Some st'),
        exec_func SmmuPTWalk_layer code "init_smmu_pt"
                  [VInt v_cbndx; VInt v_num]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuPTTreeOps_init_smmu_pt_CodeProof.

