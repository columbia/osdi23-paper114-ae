Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.set_smmu_pgd_next.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_smmu_pgd_next_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_smmu_pgd_next_spec_mid (st: RData) : (option RData) :=
    (anno (((33731152 * 0) = 0));
    (anno (((33731112 + 0) = 33731112));
    (anno (((0 + 33731112) = 33731112));
    (anno (((1096 - 33731112) = (- 33730016)));
    (anno (((1100 - 33731112) = (- 33730012)));
    (anno (((1112 - 33731112) = (- 33730000)));
    (anno (((1116 - 33731112) = (- 33729996)));
    (anno (((1128 - 33731112) = (- 33729984)));
    (anno (((33686424 - 33731112) = (- 44688)));
    (anno (((33701032 - 33731112) = (- 30080)));
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    (anno (((33731152 * 0) = 0));
    (anno (((33731112 + 0) = 33731112));
    (anno (((0 + 33731112) = 33731112));
    (anno (((1096 - 33731112) = (- 33730016)));
    (anno (((1100 - 33731112) = (- 33730012)));
    (anno (((1112 - 33731112) = (- 33730000)));
    (anno (((1116 - 33731112) = (- 33729996)));
    (anno (((0 - 33731112) = (- 33731112)));
    (anno (((768 - 33731112) = (- 33730344)));
    (anno (((1024 - 33731112) = (- 33730088)));
    (anno (((1128 - 33731112) = (- 33729984)));
    (anno (((33555568 - 33731112) = (- 175544)));
    (anno (((33685752 - 33731112) = (- 45360)));
    (anno (((33686424 - 33731112) = (- 44688)));
    (anno (((33701032 - 33731112) = (- 30080)));
    (anno (((33701288 - 33731112) = (- 29824)));
    (anno (((33701504 - 33731112) = (- 29608)));
    (anno (((33730192 - 33731112) = (- 920)));
    (anno (((33730832 - 33731112) = (- 280)));
    (anno (((33731088 - 33731112) = (- 24)));
    (Some (st.[shared].[e_smmupts].[e_smmu_pgd_used_pages] :< ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) + 1))))))))))))))))))))))))))))))))).

  Hint Unfold set_smmu_pgd_next_spec_mid: spec.

  Lemma f_set_smmu_pgd_next_refine_mid:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_smmu_pgd_next_spec_mid hst = Some hst'),
      exists lst', set_smmu_pgd_next_spec_low lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_smmu_pgd_next_refine_high:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_smmu_pgd_next_spec hst = Some hst'),
      exists lst', set_smmu_pgd_next_spec_mid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_smmu_pgd_next_refine:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_smmu_pgd_next_spec hst = Some hst'),
      exists lst', set_smmu_pgd_next_spec_low lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_smmu_pgd_next_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_smmu_pgd_next_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_set_smmu_pgd_next_RefProof.

