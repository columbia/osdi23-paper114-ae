Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuPTAlloc.Layer.
Require Import SmmuPTAlloc.Spec.
Require Import SmmuPTWalk.walk_smmu_pgd.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTWalk_walk_smmu_pgd_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque smmu_pt_store_spec.
  Local Opaque alloc_smmu_pgd_page_spec.
  Local Opaque smmu_pt_load_spec.

    Lemma f_walk_smmu_pgd_correct:
      forall v_ttbr v_addr v_alloc st st' res
             (Hspec: walk_smmu_pgd_spec_low v_ttbr v_addr v_alloc st = Some (res, st')),
        exec_func SmmuPTAlloc_layer code "walk_smmu_pgd"
                  [VInt v_ttbr; VInt v_addr; VInt v_alloc]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuPTWalk_walk_smmu_pgd_CodeProof.

