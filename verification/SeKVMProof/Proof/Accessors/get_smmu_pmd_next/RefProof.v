Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_smmu_pmd_next.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_smmu_pmd_next_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_smmu_pmd_next_spec_mid (st: RData) : (option (Z * RData)) :=
    (anno (((33731152 * 0) = 0));
    (anno (((33731104 + 0) = 33731104));
    (anno (((0 + 33731104) = 33731104));
    (anno (((1096 - 33731104) = (- 33730008)));
    (anno (((1100 - 33731104) = (- 33730004)));
    (anno (((1112 - 33731104) = (- 33729992)));
    (anno (((1116 - 33731104) = (- 33729988)));
    (anno (((1128 - 33731104) = (- 33729976)));
    (anno (((33686424 - 33731104) = (- 44680)));
    (anno (((33701032 - 33731104) = (- 30072)));
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    (anno (((0 - 33731104) = (- 33731104)));
    (anno (((768 - 33731104) = (- 33730336)));
    (anno (((1024 - 33731104) = (- 33730080)));
    (anno (((1128 - 33731104) = (- 33729976)));
    (anno (((33555568 - 33731104) = (- 175536)));
    (anno (((33685752 - 33731104) = (- 45352)));
    (anno (((33686424 - 33731104) = (- 44680)));
    (anno (((33701032 - 33731104) = (- 30072)));
    (anno (((33701288 - 33731104) = (- 29816)));
    (anno (((33701504 - 33731104) = (- 29600)));
    (anno (((33730192 - 33731104) = (- 912)));
    (anno (((33730832 - 33731104) = (- 272)));
    (anno (((33731088 - 33731104) = (- 16)));
    (anno (((33731152 * 0) = 0));
    (anno (((33731120 + 0) = 33731120));
    (anno (((0 + 33731120) = 33731120));
    (anno (((1096 - 33731120) = (- 33730024)));
    (anno (((1100 - 33731120) = (- 33730020)));
    (anno (((1112 - 33731120) = (- 33730008)));
    (anno (((1116 - 33731120) = (- 33730004)));
    (anno (((0 - 33731120) = (- 33731120)));
    (anno (((768 - 33731120) = (- 33730352)));
    (anno (((1024 - 33731120) = (- 33730096)));
    (anno (((1128 - 33731120) = (- 33729992)));
    (anno (((33555568 - 33731120) = (- 175552)));
    (anno (((33685752 - 33731120) = (- 45368)));
    (anno (((33686424 - 33731120) = (- 44696)));
    (anno (((33701032 - 33731120) = (- 30088)));
    (anno (((33701288 - 33731120) = (- 29832)));
    (anno (((33701504 - 33731120) = (- 29616)));
    (anno (((33730192 - 33731120) = (- 928)));
    (anno (((33730832 - 33731120) = (- 288)));
    (anno (((33731088 - 33731120) = (- 32)));
    (Some ((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) + ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) << 12)), st))))))))))))))))))))))))))))))))))))))))))))).

  Hint Unfold get_smmu_pmd_next_spec_mid: spec.

  Lemma f_get_smmu_pmd_next_refine_mid:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_smmu_pmd_next_spec_mid hst = Some (res, hst')),
      exists lst', get_smmu_pmd_next_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_smmu_pmd_next_refine_high:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_smmu_pmd_next_spec hst = Some (res, hst')),
      exists lst', get_smmu_pmd_next_spec_mid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_smmu_pmd_next_refine:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_smmu_pmd_next_spec hst = Some (res, hst')),
      exists lst', get_smmu_pmd_next_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_smmu_pmd_next_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_smmu_pmd_next_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_smmu_pmd_next_RefProof.

