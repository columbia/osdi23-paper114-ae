Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuMemOps.__el2_free_smmu_pgd.LowSpec.
Require Import SmmuMemOpsAux.Layer.
Require Import VMOpsAux.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuMemOps___el2_free_smmu_pgd_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque acquire_lock_smmu_spec.
  Local Opaque get_smmu_cfg_vmid_spec.
  Local Opaque release_lock_smmu_spec.
  Local Opaque v_panic_spec.
  Local Opaque set_smmu_cfg_vmid_spec.
  Local Opaque get_vm_poweron_spec.

    Lemma f___el2_free_smmu_pgd_correct:
      forall v_cbndx v_index st st'
             (Hspec: __el2_free_smmu_pgd_spec_low v_cbndx v_index st = Some st'),
        exec_func SmmuMemOpsAux_layer code "__el2_free_smmu_pgd"
                  [VInt v_cbndx; VInt v_index]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuMemOps___el2_free_smmu_pgd_CodeProof.

