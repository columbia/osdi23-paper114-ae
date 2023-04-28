Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemRegion.Layer.
Require Import MemRegion.RefineRel.
Require Import MemRegion.Spec.
Require Import MemRegion.mem_region_search.LowSpec.
Require Import SmmuPTOps.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemRegion_mem_region_search_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint mem_region_search_loop_mid (_N_: nat) (v_addr: Z) (v_call: Z) (v_i_019: Z) (v_res_018: Z) (v_res_0_lcssa: Z) (st: RData) : (option (Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr, v_call, v_i_019, v_res_018, v_res_0_lcssa, st))
    | (S _N__0) =>
      match ((mem_region_search_loop_mid _N__0 v_addr v_call v_i_019 v_res_018 v_res_0_lcssa st)) with
      | (Some (v_addr_0, v_call_0, v_i_20, v_res_19, v_res_0_lcssa_0, st_0)) =>
        rely ((((0 - v_i_20) <= 0) /\ (v_i_20 < 32)));
        if (((v_i_20 + 1) - v_call_0) =? 0)
        then (
          if (
            if ((((((st_0.(priv)).(e_regions)) @ v_i_20).(e_base)) - v_addr_0) <=? 0)
            then (((((((st_0.(priv)).(e_regions)) @ v_i_20).(e_size)) + ((((st_0.(priv)).(e_regions)) @ v_i_20).(e_base))) - v_addr_0) >? 0)
            else false)
          then (Some (v_addr_0, v_call_0, v_i_20, v_res_19, v_i_20, st_0))
          else (Some (v_addr_0, v_call_0, v_i_20, v_res_19, v_res_19, st_0)))
        else (
          if (
            if ((((((st_0.(priv)).(e_regions)) @ v_i_20).(e_base)) - v_addr_0) <=? 0)
            then (((((((st_0.(priv)).(e_regions)) @ v_i_20).(e_size)) + ((((st_0.(priv)).(e_regions)) @ v_i_20).(e_base))) - v_addr_0) >? 0)
            else false)
          then (Some (v_addr_0, v_call_0, (v_i_20 + 1), v_i_20, v_res_0_lcssa_0, st_0))
          else (Some (v_addr_0, v_call_0, (v_i_20 + 1), v_res_19, v_res_0_lcssa_0, st_0)))
      | None => None
      end
    end.

  Hint Unfold mem_region_search_loop_mid: spec.

  Definition mem_region_search_spec_mid (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    if (((st.(priv)).(e_regions_cnt)) =? 0)
    then (Some ((- 1), st))
    else (
      (anno (((((st.(priv)).(e_regions_cnt)) - 0) = ((st.(priv)).(e_regions_cnt))));
      rely ((((st.(priv)).(e_regions_cnt)) >= 0));
      (anno (((((st.(priv)).(e_regions_cnt)) - 0) = ((st.(priv)).(e_regions_cnt))));
      match ((mem_region_search_loop_mid (z_to_nat ((st.(priv)).(e_regions_cnt))) v_addr ((st.(priv)).(e_regions_cnt)) 0 (- 1) 0 st)) with
      | (Some (v_addr_0, v_call_0, v_i_20, v_res_19, v_res_0_lcssa_0, st_1)) => (Some (v_res_0_lcssa_0, st_1))
      | None => None
      end))).

  Hint Unfold mem_region_search_spec_mid: spec.

  Lemma f_mem_region_search_loop_refine_mid:
    forall _N_ v_addr v_addr' v_call v_call' v_i_019 v_i_019' v_res_018 v_res_018' v_res_0_lcssa v_res_0_lcssa' lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: mem_region_search_loop_mid _N_ v_addr v_call v_i_019 v_res_018 v_res_0_lcssa hst = Some (v_addr', v_call', v_i_019', v_res_018', v_res_0_lcssa', hst')),
    exists lst', mem_region_search_loop_low _N_ v_addr v_call v_i_019 v_res_018 v_res_0_lcssa lst = Some (v_addr', v_call', v_i_019', v_res_018', v_res_0_lcssa', lst') /\ refrel hst' lst'.
  Proof.
    induction _N_. simpl. intros. inv Hrel. repeat eexists. assumption.
    intros; inv Hrel.
    simpl in *. Local Opaque mem_region_search_loop_mid mem_region_search_loop_low.
    simpl_hyp Hspec. repeat destruct p. eapply IH_N_ in C.
    destruct C as (lst' & Hloop & Hrel). rewrite Hloop. inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    constructor.
  Qed.

  Lemma f_mem_region_search_refine_mid:
    forall v_addr lst hst hst' res
      (Hrel: refrel hst lst)
      (Hspec: mem_region_search_spec_mid v_addr hst = Some (res, hst')),
    exists lst', mem_region_search_spec_low v_addr lst = Some (res, lst') /\ refrel hst' lst'.
  Proof.
    intros; inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    eapply f_mem_region_search_loop_refine_mid in Hcond0.
    destruct Hcond0 as (lst' & Hloop & Hrel).
    rewrite Hloop. inv Hrel. reflexivity. constructor.
  Qed.

  Lemma f_mem_region_search_loop_refine_high:
    forall _N_ v_addr v_addr' v_call v_call' v_i_019 v_i_019' v_res_018 v_res_018' v_res_0_lcssa v_res_0_lcssa' lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: mem_region_search_loop _N_ v_addr v_call v_i_019 v_res_018 v_res_0_lcssa hst = Some (v_addr', v_call', v_i_019', v_res_018', v_res_0_lcssa', hst')),
    exists lst', mem_region_search_loop_mid _N_ v_addr v_call v_i_019 v_res_018 v_res_0_lcssa lst = Some (v_addr', v_call', v_i_019', v_res_018', v_res_0_lcssa', lst') /\ refrel hst' lst'.
  Proof.
    Local Transparent mem_region_search_loop_mid.
    induction _N_. simpl. intros. inv Hrel. repeat eexists. assumption.
    intros; inv Hrel.
    simpl in *. Local Opaque mem_region_search_loop_mid mem_region_search_loop.
    simpl_hyp Hspec. repeat destruct p. eapply IH_N_ in C.
    destruct C as (lst' & Hloop & Hrel). rewrite Hloop. inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    constructor.
  Qed.

  Lemma f_mem_region_search_refine_high:
    forall v_addr lst hst hst' res
      (Hrel: refrel hst lst)
      (Hspec: mem_region_search_spec v_addr hst = Some (res, hst')),
    exists lst', mem_region_search_spec_mid v_addr lst = Some (res, lst') /\ refrel hst' lst'.
  Proof.
    intros; inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    repeat rewrite annotation_eq. reflexivity.
  Qed.

  Lemma f_mem_region_search_refine:
    forall v_addr lst hst hst' res
      (Hrel: refrel hst lst)
      (Hspec: mem_region_search_spec v_addr hst = Some (res, hst')),
    exists lst', mem_region_search_spec_low v_addr lst = Some (res, lst') /\ refrel hst' lst'.
  Proof.
    intros; inv Hrel.
    eapply f_mem_region_search_refine_high in Hspec; try unfold refrel; try reflexivity.
    destruct Hspec as (lst' & Hspec & Hrel).
    inv Hrel; try unfold refrel; try reflexivity.
    eapply f_mem_region_search_refine_mid; try unfold refrel; try reflexivity; try eassumption.
  Qed.

End MemRegion_mem_region_search_RefProof.

