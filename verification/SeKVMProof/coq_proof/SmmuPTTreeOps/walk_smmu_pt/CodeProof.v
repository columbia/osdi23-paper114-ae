Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuPTTreeOps.walk_smmu_pt.LowSpec.
Require Import SmmuPTWalk.Layer.
Require Import SmmuPTWalk.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTTreeOps_walk_smmu_pt_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque walk_smmu_pgd_spec.
  Local Opaque walk_smmu_pte_spec.
  Local Opaque walk_smmu_pmd_spec.
  Local Opaque get_smmu_cfg_hw_ttbr_spec.

    Lemma f_walk_smmu_pt_correct:
      forall v_cbndx v_num v_addr st st' res
             (Hspec: walk_smmu_pt_spec_low v_cbndx v_num v_addr st = Some (res, st')),
        exec_func SmmuPTWalk_layer code "walk_smmu_pt"
                  [VInt v_cbndx; VInt v_num; VInt v_addr]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuPTTreeOps_walk_smmu_pt_CodeProof.

