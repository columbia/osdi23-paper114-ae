Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuMemOps.clear_smmu.LowSpec.
Require Import SmmuMemOpsAux.Layer.
Require Import SmmuMemOpsAux.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuMemOps_clear_smmu_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque acquire_lock_vm_spec.
  Local Opaque release_lock_vm_spec.
  Local Opaque unmap_smmu_page_spec.

    Lemma f_clear_smmu_correct:
      forall v_vmid v_cbndx v_index v_iova st st'
             (Hspec: clear_smmu_spec_low v_vmid v_cbndx v_index v_iova st = Some st'),
        exec_func SmmuMemOpsAux_layer code "clear_smmu"
                  [VInt v_vmid; VInt v_cbndx; VInt v_index; VInt v_iova]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuMemOps_clear_smmu_CodeProof.

