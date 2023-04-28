Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_mem_region_flag.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_mem_region_flag_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_mem_region_flag_spec_mid (v_index: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 32)));
    (anno (((33731152 * 0) = 0));
    (anno (((16 + 0) = 16));
    (anno ((((24 * v_index) + 16) = (8 * ((3 * v_index) + 2))));
    (anno (((8 * ((3 * v_index) + 2)) = (16 + (24 * v_index))));
    (anno (((0 + (16 + (24 * v_index))) = (16 + (24 * v_index))));
    (anno ((((16 + (24 * v_index)) - 0) = (16 + (24 * v_index))));
    (anno ((((16 + (24 * v_index)) / 24) = v_index));
    (Some (((((st.(priv)).(e_regions)) @ v_index).(e_flags)), st))))))))).

  Hint Unfold get_mem_region_flag_spec_mid: spec.

  Lemma f_get_mem_region_flag_refine_mid:
    forall v_index lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_mem_region_flag_spec_mid v_index hst = Some (res, hst')),
      exists lst', get_mem_region_flag_spec_low v_index lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_mem_region_flag_refine_high:
    forall v_index lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_mem_region_flag_spec v_index hst = Some (res, hst')),
      exists lst', get_mem_region_flag_spec_mid v_index lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_mem_region_flag_refine:
    forall v_index lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_mem_region_flag_spec v_index hst = Some (res, hst')),
      exists lst', get_mem_region_flag_spec_low v_index lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_mem_region_flag_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_mem_region_flag_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_mem_region_flag_RefProof.

