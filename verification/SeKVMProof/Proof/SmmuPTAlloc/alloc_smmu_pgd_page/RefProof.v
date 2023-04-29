Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import S2PTOps.Layer.
Require Import SmmuPTAlloc.Layer.
Require Import SmmuPTAlloc.RefineRel.
Require Import SmmuPTAlloc.Spec.
Require Import SmmuPTAlloc.alloc_smmu_pgd_page.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTAlloc_alloc_smmu_pgd_page_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition alloc_smmu_pgd_page_spec_mid (st: RData) : (option (Z * RData)) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    (anno (
      ((((((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12) + (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start))) + 4096) -
        ((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576)) =
        ((- 1044480) + ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12))));
    if (((- 1044480) + ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12)) >? 0)
    then None
    else (
      (Some (
        (((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12) + (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)))  ,
        (st.[shared].[e_smmupts].[e_smmu_pgd_used_pages] :< ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) + 1))
      )))).

  Hint Unfold alloc_smmu_pgd_page_spec_mid: spec.

  Lemma f_alloc_smmu_pgd_page_refine_mid:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: alloc_smmu_pgd_page_spec_mid hst = Some (res, hst')),
      exists lst', alloc_smmu_pgd_page_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_alloc_smmu_pgd_page_refine_high:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: alloc_smmu_pgd_page_spec hst = Some (res, hst')),
      exists lst', alloc_smmu_pgd_page_spec_mid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_alloc_smmu_pgd_page_refine:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: alloc_smmu_pgd_page_spec hst = Some (res, hst')),
      exists lst', alloc_smmu_pgd_page_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_alloc_smmu_pgd_page_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_alloc_smmu_pgd_page_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuPTAlloc_alloc_smmu_pgd_page_RefProof.
