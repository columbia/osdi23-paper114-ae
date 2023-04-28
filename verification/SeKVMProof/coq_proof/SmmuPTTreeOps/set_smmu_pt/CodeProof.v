Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuPTTreeOps.set_smmu_pt.LowSpec.
Require Import SmmuPTWalk.Layer.
Require Import SmmuPTWalk.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTTreeOps_set_smmu_pt_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque set_smmu_pte_spec.
  Local Opaque walk_smmu_pgd_spec.
  Local Opaque v_panic_spec.
  Local Opaque walk_smmu_pmd_spec.
  Local Opaque get_smmu_cfg_hw_ttbr_spec.

    Lemma f_set_smmu_pt_correct:
      forall v_cbndx v_num v_addr v_pte st st'
             (Hspec: set_smmu_pt_spec_low v_cbndx v_num v_addr v_pte st = Some st'),
        exec_func SmmuPTWalk_layer code "set_smmu_pt"
                  [VInt v_cbndx; VInt v_num; VInt v_addr; VInt v_pte]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuPTTreeOps_set_smmu_pt_CodeProof.

