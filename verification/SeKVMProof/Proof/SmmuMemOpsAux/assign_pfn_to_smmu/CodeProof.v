Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import PageManager.Spec.
Require Import S2PTOps.Spec.
Require Import SmmuMemOpsAux.assign_pfn_to_smmu.LowSpec.
Require Import VMOps.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuMemOpsAux_assign_pfn_to_smmu_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_pfn_map_spec.
  Local Opaque get_pfn_count_spec.
  Local Opaque acquire_lock_s2page_spec.
  Local Opaque release_lock_s2page_spec.
  Local Opaque set_pfn_count_spec.
  Local Opaque clear_pfn_host_spec.
  Local Opaque get_pfn_owner_spec.
  Local Opaque v_panic_spec.
  Local Opaque set_pfn_map_spec.
  Local Opaque set_pfn_owner_spec.

    Lemma f_assign_pfn_to_smmu_correct:
      forall v_vmid v_gfn v_pfn st st'
             (Hspec: assign_pfn_to_smmu_spec_low v_vmid v_gfn v_pfn st = Some st'),
        exec_func VMOps_layer code "assign_pfn_to_smmu"
                  [VInt v_vmid; VInt v_gfn; VInt v_pfn]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuMemOpsAux_assign_pfn_to_smmu_CodeProof.

