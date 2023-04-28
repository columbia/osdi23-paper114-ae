Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuOps.__el2_arm_lpae_clear.LowSpec.
Require Import SmmuOpsAux.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuOps___el2_arm_lpae_clear_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque clear_smmu_spec.
  Local Opaque release_lock_smmu_spec.
  Local Opaque acquire_lock_smmu_spec.
  Local Opaque get_smmu_cfg_vmid_spec.

    Lemma f___el2_arm_lpae_clear_correct:
      forall v_iova v_cbndx v_index st st'
             (Hspec: __el2_arm_lpae_clear_spec_low v_iova v_cbndx v_index st = Some st'),
        exec_func SmmuOpsAux_layer code "__el2_arm_lpae_clear"
                  [VInt v_iova; VInt v_cbndx; VInt v_index]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuOps___el2_arm_lpae_clear_CodeProof.

