Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_mem_region_cnt.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_mem_region_cnt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_mem_region_cnt_spec_mid (st: RData) : (option (Z * RData)) :=
    (anno (((33731152 * 0) = 0));
    (anno (((1040 + 0) = 1040));
    (anno (((0 + 1040) = 1040));
    (anno (((1096 - 1040) = 56));
    (anno (((1100 - 1040) = 60));
    (anno (((1112 - 1040) = 72));
    (anno (((1116 - 1040) = 76));
    (anno (((1128 - 1040) = 88));
    (anno (((33686424 - 1040) = 33685384));
    (anno (((33701032 - 1040) = 33699992));
    (anno (((0 - 1040) = (- 1040)));
    (anno (((768 - 1040) = (- 272)));
    (anno (((1024 - 1040) = (- 16)));
    (Some (((st.(priv)).(e_regions_cnt)), st))))))))))))))).

  Hint Unfold get_mem_region_cnt_spec_mid: spec.

  Lemma f_get_mem_region_cnt_refine_mid:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_mem_region_cnt_spec_mid hst = Some (res, hst')),
      exists lst', get_mem_region_cnt_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_mem_region_cnt_refine_high:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_mem_region_cnt_spec hst = Some (res, hst')),
      exists lst', get_mem_region_cnt_spec_mid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_mem_region_cnt_refine:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_mem_region_cnt_spec hst = Some (res, hst')),
      exists lst', get_mem_region_cnt_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_mem_region_cnt_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_mem_region_cnt_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_mem_region_cnt_RefProof.

