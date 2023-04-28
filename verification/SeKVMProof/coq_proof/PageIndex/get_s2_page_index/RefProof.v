Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemRegion.Layer.
Require Import MemRegion.Spec.
Require Import PageIndex.Layer.
Require Import PageIndex.RefineRel.
Require Import PageIndex.Spec.
Require Import PageIndex.get_s2_page_index.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section PageIndex_get_s2_page_index_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_s2_page_index_spec_mid (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    if (((st.(priv)).(e_regions_cnt)) =? 0)
    then (
      (anno (((- 1) = (- 1)));
      (anno ((((- 1) - (- 1)) = 0));
      (Some ((- 1), st)))))
    else (
      rely ((((st.(priv)).(e_regions_cnt)) >= 0));
      (anno (((- 1) = (- 1)));
      match ((mem_region_search_loop (z_to_nat ((st.(priv)).(e_regions_cnt))) v_addr ((st.(priv)).(e_regions_cnt)) 0 (- 1) 0 st)) with
      | (Some (v_addr_1, v_call_0, v_i_20, v_res_19, v_res_0_lcssa_0, st_1)) =>
        if (v_res_0_lcssa_0 =? (- 1))
        then (Some ((- 1), st_1))
        else (
          rely ((((0 - v_res_0_lcssa_0) <= 0) /\ (v_res_0_lcssa_0 < 32)));
          if (((((st_1.(priv)).(e_s2_memblock_info)) @ v_res_0_lcssa_0).(e_index)) =? (- 1))
          then (Some ((- 1), st_1))
          else (Some ((((v_addr - ((((st_1.(priv)).(e_regions)) @ v_res_0_lcssa_0).(e_base))) >> 12) + ((((st_1.(priv)).(e_s2_memblock_info)) @ v_res_0_lcssa_0).(e_index))), st_1)))
      | None => None
      end)).

  Hint Unfold get_s2_page_index_spec_mid: spec.

  Lemma f_get_s2_page_index_refine_mid:
    forall v_addr lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_s2_page_index_spec_mid v_addr hst = Some (res, hst')),
      exists lst', get_s2_page_index_spec_low v_addr lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_s2_page_index_refine_high:
    forall v_addr lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_s2_page_index_spec v_addr hst = Some (res, hst')),
      exists lst', get_s2_page_index_spec_mid v_addr lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_s2_page_index_refine:
    forall v_addr lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_s2_page_index_spec v_addr hst = Some (res, hst')),
      exists lst', get_s2_page_index_spec_low v_addr lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_s2_page_index_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_s2_page_index_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End PageIndex_get_s2_page_index_RefProof.

