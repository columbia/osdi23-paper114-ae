Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemoryOps.Layer.
Require Import MemoryOps.RefineRel.
Require Import MemoryOps.Spec.
Require Import MemoryOps.__clear_vm_stage2_range.LowSpec.
Require Import MemoryOpsAux.Spec.
Require Import VMOpsAux.Layer.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemoryOps___clear_vm_stage2_range_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint __clear_vm_stage2_range_loop_mid (_N_: nat) (v_call2: Z) (v_i_022: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_call2, v_i_022, v_vmid, st))
    | (S _N__0) =>
      match ((__clear_vm_stage2_range_loop_mid _N__0 v_call2 v_i_022 v_vmid st)) with
      | (Some (v_call2_0, v_i_23, v_vmid_0, st_0)) =>
        rely ((((0 - v_i_23) <= 0) /\ (v_i_23 < 32)));
        if ((((((st_0.(priv)).(e_regions)) @ v_i_23).(e_flags)) & 4) =? 0)
        then (
          if (((((st_0.(priv)).(e_regions)) @ v_i_23).(e_size)) <? 4096)
          then (
            if (((v_i_23 + 1) - v_call2_0) =? 0)
            then (Some (v_call2_0, v_i_23, v_vmid_0, st_0))
            else (Some (v_call2_0, (v_i_23 + 1), v_vmid_0, st_0)))
          else (
            match (
              (__clear_vm_range_loop
                (z_to_nat (((((st_0.(priv)).(e_regions)) @ v_i_23).(e_size)) >> 12)) 
                (((((st_0.(priv)).(e_regions)) @ v_i_23).(e_size)) >> 12) 
                (((((st_0.(priv)).(e_regions)) @ v_i_23).(e_base)) >> 12) 
                v_vmid_0 
                st_0)
            ) with
            | (Some (v_num_8, v_pfn_7, v_vmid_2, st_5)) =>
              if (((v_i_23 + 1) - v_call2_0) =? 0)
              then (Some (v_call2_0, v_i_23, v_vmid_0, st_5))
              else (Some (v_call2_0, (v_i_23 + 1), v_vmid_0, st_5))
            | None => None
            end))
        else (
          if (((v_i_23 + 1) - v_call2_0) =? 0)
          then (Some (v_call2_0, v_i_23, v_vmid_0, st_0))
          else (Some (v_call2_0, (v_i_23 + 1), v_vmid_0, st_0)))
      | None => None
      end
    end.

  Hint Unfold __clear_vm_stage2_range_loop_mid: spec.

  Definition __clear_vm_stage2_range_spec_mid (v_vmid: Z) (v_size: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if (
      if (v_size =? 1099511627776)
      then (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_powered_on)) =? 0)
      else false)
    then (
      if (((st_2.(priv)).(e_regions_cnt)) =? 0)
      then (
        (Some ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))))
      else (
        (anno (((((st_2.(priv)).(e_regions_cnt)) - 0) = ((st_2.(priv)).(e_regions_cnt))));
        rely ((((st_2.(priv)).(e_regions_cnt)) >= 0));
        (anno (((((st_2.(priv)).(e_regions_cnt)) - 0) = ((st_2.(priv)).(e_regions_cnt))));
        match (
          (__clear_vm_stage2_range_loop_mid
            (z_to_nat ((st_2.(priv)).(e_regions_cnt))) 
            ((st_2.(priv)).(e_regions_cnt)) 
            0 
            v_vmid 
            ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)))
        ) with
        | (Some (v_call2_0, v_i_23, v_vmid_0, st_3)) => (Some st_3)
        | None => None
        end))))
    else (
      (Some ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)))).

  Hint Unfold __clear_vm_stage2_range_spec_mid: spec.

  Lemma f___clear_vm_stage2_range_loop_refine_mid:
    forall _N_ v_call2 v_call2' v_i_022 v_i_022' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __clear_vm_stage2_range_loop_mid _N_ v_call2 v_i_022 v_vmid hst = Some (v_call2', v_i_022', v_vmid', hst')),
      exists lst', __clear_vm_stage2_range_loop_low _N_ v_call2 v_i_022 v_vmid lst = Some (v_call2', v_i_022', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___clear_vm_stage2_range_refine_mid:
    forall v_vmid v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __clear_vm_stage2_range_spec_mid v_vmid v_size hst = Some hst'),
      exists lst', __clear_vm_stage2_range_spec_low v_vmid v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___clear_vm_stage2_range_loop_refine_high:
    forall _N_ v_call2 v_call2' v_i_022 v_i_022' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __clear_vm_stage2_range_loop _N_ v_call2 v_i_022 v_vmid hst = Some (v_call2', v_i_022', v_vmid', hst')),
      exists lst', __clear_vm_stage2_range_loop_mid _N_ v_call2 v_i_022 v_vmid lst = Some (v_call2', v_i_022', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___clear_vm_stage2_range_refine_high:
    forall v_vmid v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __clear_vm_stage2_range_spec v_vmid v_size hst = Some hst'),
      exists lst', __clear_vm_stage2_range_spec_mid v_vmid v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent __clear_vm_stage2_range_spec.
      unfold __clear_vm_stage2_range_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___clear_vm_stage2_range_refine:
    forall v_vmid v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __clear_vm_stage2_range_spec v_vmid v_size hst = Some hst'),
      exists lst', __clear_vm_stage2_range_spec_low v_vmid v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent __clear_vm_stage2_range_spec.
      unfold __clear_vm_stage2_range_spec.
      intros; inv Hrel.
      eapply f___clear_vm_stage2_range_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f___clear_vm_stage2_range_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End MemoryOps___clear_vm_stage2_range_RefProof.

