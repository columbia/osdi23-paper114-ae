Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import SmmuPTAlloc.Layer.
Require Import SmmuPTWalk.Layer.
Require Import SmmuPTWalk.RefineRel.
Require Import SmmuPTWalk.Spec.
Require Import SmmuPTWalk.set_smmu_pte.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTWalk_set_smmu_pte_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_smmu_pte_spec_mid (v_pmd: Z) (v_addr: Z) (v_pte: Z) (st: RData) : (option RData) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    if (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start))) <? 0)
    then (
      (Some (st.[shared].[e_smmupts].[e_smmu_pgd_pool] :<
        ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_pool)) # (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) == v_pte))))
    else (
      (anno (((256 * 4096) = 1048576));
      if (
        ((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
          (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - ((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576)) <? 0)))
      then (
        (Some (st.[shared].[e_smmupts].[e_smmu_pmd_pool] :<
          ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_pool)) # (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) == v_pte))))
      else (
        (anno (((256 * 4096) = 1048576));
        (anno (((4096 * 4096) = 16777216));
        if (
          (((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
            (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - ((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 16777216)) <? 0)))
        then (
          (Some (st.[shared].[e_smmupts].[e_smmu_pte_pool] :<
            ((((st.(shared)).(e_smmupts)).(e_smmu_pte_pool)) # (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) == v_pte))))
        else None))))).

  Hint Unfold set_smmu_pte_spec_mid: spec.

  Lemma f_set_smmu_pte_refine_mid:
    forall v_pmd v_addr v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_smmu_pte_spec_mid v_pmd v_addr v_pte hst = Some hst'),
      exists lst', set_smmu_pte_spec_low v_pmd v_addr v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_smmu_pte_refine_high:
    forall v_pmd v_addr v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_smmu_pte_spec v_pmd v_addr v_pte hst = Some hst'),
      exists lst', set_smmu_pte_spec_mid v_pmd v_addr v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_smmu_pte_refine:
    forall v_pmd v_addr v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_smmu_pte_spec v_pmd v_addr v_pte hst = Some hst'),
      exists lst', set_smmu_pte_spec_low v_pmd v_addr v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_smmu_pte_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_smmu_pte_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuPTWalk_set_smmu_pte_RefProof.

