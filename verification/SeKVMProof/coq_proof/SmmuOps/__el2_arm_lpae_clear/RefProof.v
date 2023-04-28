Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuMemOpsAux.Spec.
Require Import SmmuOps.Layer.
Require Import SmmuOps.RefineRel.
Require Import SmmuOps.Spec.
Require Import SmmuOps.__el2_arm_lpae_clear.LowSpec.
Require Import SmmuOpsAux.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuOps___el2_arm_lpae_clear_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition __el2_arm_lpae_clear_spec_mid (v_iova: Z) (v_cbndx: Z) (v_index: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMU_LOCK) = None));
    rely ((((0 - ((8 * v_index) + v_cbndx)) <= 0) /\ (((8 * v_index) + v_cbndx) < 16)));
    rely ((((0 - (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) <= 0) /\ ((((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) < 19)));
    when st_3 == ((query_oracle ((st_2.[log] :< ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # SMMU_LOCK == (Some CPU_ID)))));
    rely (((((st_3.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))) = None));
    when st_4 == (
        (unmap_smmu_page_spec
          v_cbndx 
          v_index 
          v_iova 
          ((st_3.[log] :< ((EVT CPU_ID (ACQ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))))) :: (st_3.(log)))).[shared].[e_locks] :<
            (((st_3.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == (Some CPU_ID)))));
    rely (((((st_4.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))) = (Some CPU_ID)));
    rely ((((((st_4.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) @ SMMU_LOCK) = (Some CPU_ID)));
    (Some ((st_4.[log] :<
      ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_4.(shared)).(e_smmu_vmid))))) ::
        ((EVT
          CPU_ID 
          (REL
            (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) 
            (VMINFO_STATE (((st_4.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))))) ::
          (st_4.(log))))).[shared].[e_locks] :<
      ((((st_4.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) # SMMU_LOCK == None))).

  Hint Unfold __el2_arm_lpae_clear_spec_mid: spec.

  Lemma f___el2_arm_lpae_clear_refine_mid:
    forall v_iova v_cbndx v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __el2_arm_lpae_clear_spec_mid v_iova v_cbndx v_index hst = Some hst'),
      exists lst', __el2_arm_lpae_clear_spec_low v_iova v_cbndx v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___el2_arm_lpae_clear_refine_high:
    forall v_iova v_cbndx v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __el2_arm_lpae_clear_spec v_iova v_cbndx v_index hst = Some hst'),
      exists lst', __el2_arm_lpae_clear_spec_mid v_iova v_cbndx v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent __el2_arm_lpae_clear_spec.
      unfold __el2_arm_lpae_clear_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___el2_arm_lpae_clear_refine:
    forall v_iova v_cbndx v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __el2_arm_lpae_clear_spec v_iova v_cbndx v_index hst = Some hst'),
      exists lst', __el2_arm_lpae_clear_spec_low v_iova v_cbndx v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent __el2_arm_lpae_clear_spec.
      unfold __el2_arm_lpae_clear_spec.
      intros; inv Hrel.
      eapply f___el2_arm_lpae_clear_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f___el2_arm_lpae_clear_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuOps___el2_arm_lpae_clear_RefProof.

