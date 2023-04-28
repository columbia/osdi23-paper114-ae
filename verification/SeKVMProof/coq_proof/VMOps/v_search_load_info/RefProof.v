Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemoryOps.Layer.
Require Import VMOps.Layer.
Require Import VMOps.RefineRel.
Require Import VMOps.Spec.
Require Import VMOps.v_search_load_info.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOps_v_search_load_info_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint v_search_load_info_loop_mid (_N_: nat) (v_addr: Z) (v_call: Z) (v_load_idx_029: Z) (v_ret_028: Z) (v_ret_0_lcssa: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr, v_call, v_load_idx_029, v_ret_028, v_ret_0_lcssa, v_vmid, st))
    | (S _N__0) =>
      match ((v_search_load_info_loop_mid _N__0 v_addr v_call v_load_idx_029 v_ret_028 v_ret_0_lcssa v_vmid st)) with
      | (Some (v_addr_0, v_call_0, v_load_idx_30, v_ret_29, v_ret_0_lcssa_0, v_vmid_0, st_0)) =>
        rely ((((0 - v_load_idx_30) <= 0) /\ (v_load_idx_30 < 5)));
        rely ((((0 - v_vmid_0) <= 0) /\ (v_vmid_0 < 19)));
        rely (((((st_0.(shared)).(e_locks)) @ (5 + v_vmid_0)) = (Some CPU_ID)));
        if (((v_load_idx_30 + 1) - v_call_0) =? 0)
        then (
          if (
            if ((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_load_addr)) - v_addr_0) <=? 0)
            then (
              (((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e__size)) +
                ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_load_addr))) -
                v_addr_0) >?
                0))
            else false)
          then (
            (Some (
              v_addr_0  ,
              v_call_0  ,
              v_load_idx_30  ,
              v_ret_29  ,
              ((v_addr_0 - ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_load_addr))) +
                ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_el2_remap_addr)))  ,
              v_vmid_0  ,
              st_0
            )))
          else (Some (v_addr_0, v_call_0, v_load_idx_30, v_ret_29, v_ret_29, v_vmid_0, st_0)))
        else (
          if (
            if ((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_load_addr)) - v_addr_0) <=? 0)
            then (
              (((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e__size)) +
                ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_load_addr))) -
                v_addr_0) >?
                0))
            else false)
          then (
            (Some (
              v_addr_0  ,
              v_call_0  ,
              (v_load_idx_30 + 1)  ,
              ((v_addr_0 - ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_load_addr))) +
                ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_el2_remap_addr)))  ,
              v_ret_0_lcssa_0  ,
              v_vmid_0  ,
              st_0
            )))
          else (Some (v_addr_0, v_call_0, (v_load_idx_30 + 1), v_ret_29, v_ret_0_lcssa_0, v_vmid_0, st_0)))
      | None => None
      end
    end.

  Hint Unfold v_search_load_info_loop_mid: spec.

  Definition v_search_load_info_spec_mid (v_vmid: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) =? 0)
    then (
      (Some (
        0  ,
        ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))
      )))
    else (
      (anno (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) - 0) = ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))));
      rely ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) >= 0));
      (anno (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) - 0) = ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))));
      match (
        (v_search_load_info_loop_mid
          (z_to_nat ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))) 
          v_addr 
          ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) 
          0 
          0 
          0 
          v_vmid 
          ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID))))
      ) with
      | (Some (v_addr_0, v_call_0, v_load_idx_30, v_ret_29, v_ret_0_lcssa_0, v_vmid_0, st_3)) =>
        rely (((((st_3.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
        (Some (
          v_ret_0_lcssa_0  ,
          ((st_3.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ v_vmid)))) :: (st_3.(log)))).[shared].[e_locks] :<
            (((st_3.(shared)).(e_locks)) # (5 + v_vmid) == None))
        ))
      | None => None
      end))).

  Hint Unfold v_search_load_info_spec_mid: spec.

  Lemma f_v_search_load_info_loop_refine_mid:
    forall _N_ v_addr v_addr' v_call v_call' v_load_idx_029 v_load_idx_029' v_ret_028 v_ret_028' v_ret_0_lcssa v_ret_0_lcssa' v_vmid v_vmid' lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: v_search_load_info_loop_mid _N_ v_addr v_call v_load_idx_029 v_ret_028 v_ret_0_lcssa v_vmid hst = Some (v_addr', v_call', v_load_idx_029', v_ret_028', v_ret_0_lcssa', v_vmid', hst')),
    exists lst', v_search_load_info_loop_low _N_ v_addr v_call v_load_idx_029 v_ret_028 v_ret_0_lcssa v_vmid lst = Some (v_addr', v_call', v_load_idx_029', v_ret_028', v_ret_0_lcssa', v_vmid', lst') /\ refrel hst' lst'.
  Proof.
    induction _N_. simpl. intros. inv Hrel. repeat eexists. assumption.
    intros; inv Hrel.
    simpl in *. Local Opaque v_search_load_info_loop_mid v_search_load_info_loop_low.
    simpl_hyp Hspec. repeat destruct p. eapply IH_N_ in C.
    destruct C as (lst' & Hloop & Hrel). rewrite Hloop. inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    constructor.
  Qed.

  Lemma f_v_search_load_info_refine_mid:
    forall v_vmid v_addr lst hst hst' res
      (Hrel: refrel hst lst)
      (Hspec: v_search_load_info_spec_mid v_vmid v_addr hst = Some (res, hst')),
    exists lst', v_search_load_info_spec_low v_vmid v_addr lst = Some (res, lst') /\ refrel hst' lst'.
  Proof.
    intros; inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    eapply f_v_search_load_info_loop_refine_mid in Hcond1.
    destruct Hcond1 as (lst' & Hloop & Hrel).
    rewrite Hloop. inv Hrel.
    repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    constructor.
  Qed.

  Lemma f_v_search_load_info_loop_refine_high:
    forall _N_ v_addr v_addr' v_call v_call' v_load_idx_029 v_load_idx_029' v_ret_028 v_ret_028' v_ret_0_lcssa v_ret_0_lcssa' v_vmid v_vmid' lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: v_search_load_info_loop _N_ v_addr v_call v_load_idx_029 v_ret_028 v_ret_0_lcssa v_vmid hst = Some (v_addr', v_call', v_load_idx_029', v_ret_028', v_ret_0_lcssa', v_vmid', hst')),
    exists lst', v_search_load_info_loop_mid _N_ v_addr v_call v_load_idx_029 v_ret_028 v_ret_0_lcssa v_vmid lst = Some (v_addr', v_call', v_load_idx_029', v_ret_028', v_ret_0_lcssa', v_vmid', lst') /\ refrel hst' lst'.
  Proof.
    Local Transparent v_search_load_info_loop_mid.
    induction _N_. simpl. intros. inv Hrel. repeat eexists. assumption.
    intros; inv Hrel.
    simpl in *. Local Opaque v_search_load_info_loop_mid v_search_load_info_loop.
    simpl_hyp Hspec. repeat destruct p. eapply IH_N_ in C.
    destruct C as (lst' & Hloop & Hrel). rewrite Hloop. inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    constructor.
  Qed.

  Lemma f_v_search_load_info_refine_high:
    forall v_vmid v_addr lst hst hst' res
      (Hrel: refrel hst lst)
      (Hspec: v_search_load_info_spec v_vmid v_addr hst = Some (res, hst')),
    exists lst', v_search_load_info_spec_mid v_vmid v_addr lst = Some (res, lst') /\ refrel hst' lst'.
  Proof.
    intros; inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
      repeat eexists; try unfold refrel; solve_equality.
  Qed.

  Lemma f_v_search_load_info_refine:
    forall v_vmid v_addr lst hst hst' res
      (Hrel: refrel hst lst)
      (Hspec: v_search_load_info_spec v_vmid v_addr hst = Some (res, hst')),
    exists lst', v_search_load_info_spec_low v_vmid v_addr lst = Some (res, lst') /\ refrel hst' lst'.
  Proof.
    intros; inv Hrel.
    eapply f_v_search_load_info_refine_high in Hspec; try unfold refrel; try reflexivity.
    destruct Hspec as (lst' & Hspec & Hrel).
    inv Hrel; try unfold refrel; try reflexivity.
    eapply f_v_search_load_info_refine_mid; try unfold refrel; try reflexivity; try eassumption.
  Qed.

End VMOps_v_search_load_info_RefProof.

