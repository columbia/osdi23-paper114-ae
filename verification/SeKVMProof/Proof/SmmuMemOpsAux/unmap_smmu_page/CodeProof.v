Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import PageManager.Spec.
Require Import SmmuMemOpsAux.unmap_smmu_page.LowSpec.
Require Import SmmuPTOps.Spec.
Require Import VMOps.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuMemOpsAux_unmap_smmu_page_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_pfn_count_spec.
  Local Opaque acquire_lock_s2page_spec.
  Local Opaque release_lock_s2page_spec.
  Local Opaque set_pfn_count_spec.
  Local Opaque get_pfn_owner_spec.
  Local Opaque unmap_spt_spec.

    Lemma f_unmap_smmu_page_correct:
      forall v_cbndx v_index v_iova st st'
             (Hspec: unmap_smmu_page_spec_low v_cbndx v_index v_iova st = Some st'),
        exec_func VMOps_layer code "unmap_smmu_page"
                  [VInt v_cbndx; VInt v_index; VInt v_iova]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuMemOpsAux_unmap_smmu_page_CodeProof.

