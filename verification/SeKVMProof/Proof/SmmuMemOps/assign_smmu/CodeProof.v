Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuMemOps.assign_smmu.LowSpec.
Require Import SmmuMemOpsAux.Layer.
Require Import SmmuMemOpsAux.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuMemOps_assign_smmu_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque assign_pfn_to_smmu_spec.
  Local Opaque acquire_lock_vm_spec.
  Local Opaque v_panic_spec.
  Local Opaque release_lock_vm_spec.
  Local Opaque get_vm_state_spec.

    Lemma f_assign_smmu_correct:
      forall v_vmid v_pfn v_gfn st st'
             (Hspec: assign_smmu_spec_low v_vmid v_pfn v_gfn st = Some st'),
        exec_func SmmuMemOpsAux_layer code "assign_smmu"
                  [VInt v_vmid; VInt v_pfn; VInt v_gfn]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuMemOps_assign_smmu_CodeProof.

