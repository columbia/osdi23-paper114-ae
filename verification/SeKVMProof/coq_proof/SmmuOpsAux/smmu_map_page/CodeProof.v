Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuOpsAux.smmu_map_page.LowSpec.
Require Import SmmuReadWrite.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuOpsAux_smmu_map_page_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque release_lock_smmu_spec.
  Local Opaque acquire_lock_smmu_spec.
  Local Opaque get_smmu_cfg_vmid_spec.
  Local Opaque map_smmu_spec.

    Lemma f_smmu_map_page_correct:
      forall v_cbndx v_index v_iova v_pte st st'
             (Hspec: smmu_map_page_spec_low v_cbndx v_index v_iova v_pte st = Some st'),
        exec_func SmmuReadWrite_layer code "smmu_map_page"
                  [VInt v_cbndx; VInt v_index; VInt v_iova; VInt v_pte]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuOpsAux_smmu_map_page_CodeProof.

