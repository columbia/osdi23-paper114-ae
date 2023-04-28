Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import SmmuOps.Layer.
Require Import SmmuOps.RefineRel.
Require Import SmmuOps.Spec.
Require Import SmmuOps.__el2_arm_lpae_iova_to_phys.LowSpec.
Require Import SmmuOpsAux.Layer.
Require Import SmmuPTOps.Spec.
Require Import SmmuPTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuOps___el2_arm_lpae_iova_to_phys_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition __el2_arm_lpae_iova_to_phys_spec_mid (v_iova: Z) (v_cbndx: Z) (v_index: Z) (st: RData) : (option (Z * RData)) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
    (anno (((- 8) = (- 8)));
    rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
    (anno (((- 2) = (- 2)));
    rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
    rely ((((0 - v_iova) <= 0) /\ ((v_iova - MAX_PADDR) <= 0)));
    if ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_2.(shared)).(e_smmupts))) =? 0)
    then (
      (Some (
        0  ,
        ((st_2.[log] :< ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE ((st_2.(shared)).(e_smmupts))))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # SMMUPT_LOCK == None))
      )))
    else (
      (Some (
        (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_2.(shared)).(e_smmupts))) & 281474976706560) |' (v_iova & 4095))  ,
        ((st_2.[log] :< ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE ((st_2.(shared)).(e_smmupts))))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # SMMUPT_LOCK == None))
      ))))).

  Hint Unfold __el2_arm_lpae_iova_to_phys_spec_mid: spec.

  Lemma f___el2_arm_lpae_iova_to_phys_refine_mid:
    forall v_iova v_cbndx v_index lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: __el2_arm_lpae_iova_to_phys_spec_mid v_iova v_cbndx v_index hst = Some (res, hst')),
      exists lst', __el2_arm_lpae_iova_to_phys_spec_low v_iova v_cbndx v_index lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___el2_arm_lpae_iova_to_phys_refine_high:
    forall v_iova v_cbndx v_index lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: __el2_arm_lpae_iova_to_phys_spec v_iova v_cbndx v_index hst = Some (res, hst')),
      exists lst', __el2_arm_lpae_iova_to_phys_spec_mid v_iova v_cbndx v_index lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      Local Transparent __el2_arm_lpae_iova_to_phys_spec.
      unfold __el2_arm_lpae_iova_to_phys_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___el2_arm_lpae_iova_to_phys_refine:
    forall v_iova v_cbndx v_index lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: __el2_arm_lpae_iova_to_phys_spec v_iova v_cbndx v_index hst = Some (res, hst')),
      exists lst', __el2_arm_lpae_iova_to_phys_spec_low v_iova v_cbndx v_index lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      Local Transparent __el2_arm_lpae_iova_to_phys_spec.
      unfold __el2_arm_lpae_iova_to_phys_spec.
      intros; inv Hrel.
      eapply f___el2_arm_lpae_iova_to_phys_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f___el2_arm_lpae_iova_to_phys_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuOps___el2_arm_lpae_iova_to_phys_RefProof.

