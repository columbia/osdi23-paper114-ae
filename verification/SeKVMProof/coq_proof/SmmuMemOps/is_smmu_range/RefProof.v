Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import SmmuMemOps.Layer.
Require Import SmmuMemOps.RefineRel.
Require Import SmmuMemOps.Spec.
Require Import SmmuMemOps.is_smmu_range.LowSpec.
Require Import SmmuMemOpsAux.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuMemOps_is_smmu_range_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint is_smmu_range_loop_mid (_N_: nat) (v_addr: Z) (v_indvars_iv: Z) (v_res_018: Z) (v_res_0_lcssa: Z) (v_wide_trip_count: Z) (st: RData) : (option (Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr, v_indvars_iv, v_res_018, v_res_0_lcssa, v_wide_trip_count, st))
    | (S _N__0) =>
      match ((is_smmu_range_loop_mid _N__0 v_addr v_indvars_iv v_res_018 v_res_0_lcssa v_wide_trip_count st)) with
      | (Some (v_addr_0, v_indvars_iv_0, v_res_19, v_res_0_lcssa_0, v_wide_trip_count_0, st_0)) =>
        rely ((((0 - v_indvars_iv_0) <= 0) /\ (v_indvars_iv_0 < 2)));
        if (((v_indvars_iv_0 + 1) - v_wide_trip_count_0) =? 0)
        then (
          if (
            if ((((((st_0.(priv)).(e_smmus)) @ v_indvars_iv_0).(e_phys_base)) - v_addr_0) <=? 0)
            then (((((((st_0.(priv)).(e_smmus)) @ v_indvars_iv_0).(e___size)) + ((((st_0.(priv)).(e_smmus)) @ v_indvars_iv_0).(e_phys_base))) - v_addr_0) >? 0)
            else false)
          then (Some (v_addr_0, v_indvars_iv_0, v_res_19, v_indvars_iv_0, v_wide_trip_count_0, st_0))
          else (Some (v_addr_0, v_indvars_iv_0, v_res_19, v_res_19, v_wide_trip_count_0, st_0)))
        else (
          if (
            if ((((((st_0.(priv)).(e_smmus)) @ v_indvars_iv_0).(e_phys_base)) - v_addr_0) <=? 0)
            then (((((((st_0.(priv)).(e_smmus)) @ v_indvars_iv_0).(e___size)) + ((((st_0.(priv)).(e_smmus)) @ v_indvars_iv_0).(e_phys_base))) - v_addr_0) >? 0)
            else false)
          then (Some (v_addr_0, (v_indvars_iv_0 + 1), v_indvars_iv_0, v_res_0_lcssa_0, v_wide_trip_count_0, st_0))
          else (Some (v_addr_0, (v_indvars_iv_0 + 1), v_res_19, v_res_0_lcssa_0, v_wide_trip_count_0, st_0)))
      | None => None
      end
    end.

  Hint Unfold is_smmu_range_loop_mid: spec.

  Definition is_smmu_range_spec_mid (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    if (((st.(priv)).(e_el2_smmu_num)) =? 0)
    then (Some ((- 1), st))
    else (
      (anno (((((st.(priv)).(e_el2_smmu_num)) - 0) = ((st.(priv)).(e_el2_smmu_num))));
      rely ((((st.(priv)).(e_el2_smmu_num)) >= 0));
      (anno (((((st.(priv)).(e_el2_smmu_num)) - 0) = ((st.(priv)).(e_el2_smmu_num))));
      match ((is_smmu_range_loop_mid (z_to_nat ((st.(priv)).(e_el2_smmu_num))) v_addr 0 (- 1) 0 ((st.(priv)).(e_el2_smmu_num)) st)) with
      | (Some (v_addr_0, v_indvars_iv_0, v_res_19, v_res_0_lcssa_0, v_wide_trip_count_0, st_1)) => (Some (v_res_0_lcssa_0, st_1))
      | None => None
      end))).

  Hint Unfold is_smmu_range_spec_mid: spec.

  Lemma f_is_smmu_range_loop_refine_mid:
    forall _N_ v_addr v_addr' v_indvars_iv v_indvars_iv' v_res_018 v_res_018' v_res_0_lcssa v_res_0_lcssa' v_wide_trip_count v_wide_trip_count' lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: is_smmu_range_loop_mid _N_ v_addr v_indvars_iv v_res_018 v_res_0_lcssa v_wide_trip_count hst = Some (v_addr', v_indvars_iv', v_res_018', v_res_0_lcssa', v_wide_trip_count', hst')),
    exists lst', is_smmu_range_loop_low _N_ v_addr v_indvars_iv v_res_018 v_res_0_lcssa v_wide_trip_count lst = Some (v_addr', v_indvars_iv', v_res_018', v_res_0_lcssa', v_wide_trip_count', lst') /\ refrel hst' lst'.
  Proof.
    induction _N_. simpl. intros. inv Hrel. repeat eexists. assumption.
    intros; inv Hrel.
    simpl in *. Local Opaque is_smmu_range_loop_mid is_smmu_range_loop_low.
    simpl_hyp Hspec. repeat destruct p. eapply IH_N_ in C.
    destruct C as (lst' & Hloop & Hrel). rewrite Hloop. inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    constructor.
  Qed.

  Lemma f_is_smmu_range_refine_mid:
    forall v_addr lst hst hst' res
      (Hrel: refrel hst lst)
      (Hspec: is_smmu_range_spec_mid v_addr hst = Some (res, hst')),
    exists lst', is_smmu_range_spec_low v_addr lst = Some (res, lst') /\ refrel hst' lst'.
  Proof.
    intros; inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    eapply f_is_smmu_range_loop_refine_mid in Hcond0.
    destruct Hcond0 as (lst' & Hloop & Hrel).
    rewrite Hloop. inv Hrel. reflexivity. constructor.
  Qed.

  Lemma f_is_smmu_range_loop_refine_high:
    forall _N_ v_addr v_addr' v_indvars_iv v_indvars_iv' v_res_018 v_res_018' v_res_0_lcssa v_res_0_lcssa' v_wide_trip_count v_wide_trip_count' lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: is_smmu_range_loop _N_ v_addr v_indvars_iv v_res_018 v_res_0_lcssa v_wide_trip_count hst = Some (v_addr', v_indvars_iv', v_res_018', v_res_0_lcssa', v_wide_trip_count', hst')),
    exists lst', is_smmu_range_loop_mid _N_ v_addr v_indvars_iv v_res_018 v_res_0_lcssa v_wide_trip_count lst = Some (v_addr', v_indvars_iv', v_res_018', v_res_0_lcssa', v_wide_trip_count', lst') /\ refrel hst' lst'.
  Proof.

    Local Transparent is_smmu_range_loop_mid.
    induction _N_. simpl. intros. inv Hrel. repeat eexists. assumption.
    intros; inv Hrel.
    simpl in *. Local Opaque is_smmu_range_loop_mid is_smmu_range_loop.
    simpl_hyp Hspec. repeat destruct p. eapply IH_N_ in C.
    destruct C as (lst' & Hloop & Hrel). rewrite Hloop. inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    constructor.
  Qed.

  Lemma f_is_smmu_range_refine_high:
    forall v_addr lst hst hst' res
      (Hrel: refrel hst lst)
      (Hspec: is_smmu_range_spec v_addr hst = Some (res, hst')),
    exists lst', is_smmu_range_spec_mid v_addr lst = Some (res, lst') /\ refrel hst' lst'.
  Proof.
    intros; inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
      repeat eexists; try unfold refrel; solve_equality.
  Qed.

  Lemma f_is_smmu_range_refine:
    forall v_addr lst hst hst' res
      (Hrel: refrel hst lst)
      (Hspec: is_smmu_range_spec v_addr hst = Some (res, hst')),
    exists lst', is_smmu_range_spec_low v_addr lst = Some (res, lst') /\ refrel hst' lst'.
  Proof.
    intros; inv Hrel.
    eapply f_is_smmu_range_refine_high in Hspec; try unfold refrel; try reflexivity.
    destruct Hspec as (lst' & Hspec & Hrel).
    inv Hrel; try unfold refrel; try reflexivity.
    eapply f_is_smmu_range_refine_mid; try unfold refrel; try reflexivity; try eassumption.
  Qed.

End SmmuMemOps_is_smmu_range_RefProof.

