Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemoryOps.Layer.
Require Import VMOps.Layer.
Require Import VMOps.RefineRel.
Require Import VMOps.Spec.
Require Import VMOps.verify_and_load_images.LowSpec.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOps_verify_and_load_images_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint verify_and_load_images_loop_mid (_N_: nat) (v_call1: Z) (v_load_idx_032: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_call1, v_load_idx_032, v_vmid, st))
    | (S _N__0) =>
      match ((verify_and_load_images_loop_mid _N__0 v_call1 v_load_idx_032 v_vmid st)) with
      | (Some (v_call1_0, v_load_idx_33, v_vmid_0, st_0)) =>
        rely ((((0 - v_load_idx_33) <= 0) /\ (v_load_idx_33 < 5)));
        rely ((((0 - v_vmid_0) <= 0) /\ (v_vmid_0 < 19)));
        rely (((((st_0.(shared)).(e_locks)) @ (5 + v_vmid_0)) = (Some CPU_ID)));
        if (
          ((((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) + 2097151) -
            (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) & 18446744073707454464)) +
            (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_el2_mapped_pages)) << 12)) <?
            2097152))
        then (
          if (((v_load_idx_33 + 1) - v_call1_0) =? 0)
          then (Some (v_call1_0, v_load_idx_33, v_vmid_0, st_0))
          else (Some (v_call1_0, (v_load_idx_33 + 1), v_vmid_0, st_0)))
        else (
          match (
            (unmap_and_load_vm_image_loop
              (z_to_nat
                ((((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) + 2097151) -
                  (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) & 18446744073707454464)) +
                  (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_el2_mapped_pages)) << 12)) >>
                  21)) 
              ((((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) + 2097151) -
                (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) & 18446744073707454464)) +
                (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_el2_mapped_pages)) << 12)) >>
                21) 
              ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_el2_remap_addr)) 
              (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) & 18446744073707454464) 
              ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) 
              v_vmid_0 
              st_0)
          ) with
          | (Some (v_mb_num_30, v_remap_addr_addr_33, v_start_31, v_target_addr_addr_34, v_vmid_2, st_5)) =>
            if (((v_load_idx_33 + 1) - v_call1_0) =? 0)
            then (Some (v_call1_0, v_load_idx_33, v_vmid_0, st_5))
            else (Some (v_call1_0, (v_load_idx_33 + 1), v_vmid_0, st_5))
          | None => None
          end)
      | None => None
      end
    end.

  Hint Unfold verify_and_load_images_loop_mid: spec.

  Definition verify_and_load_images_spec_mid (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e__state)) =? 2)
    then (
      if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) =? 0)
      then (
        (Some (((st_2.[log] :<
          ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e__state] :< 3)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
          (((st_2.(shared)).(e_vminfos)) # v_vmid == ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e__state] :< 3)))))
      else (
        (anno (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) - 0) = ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))));
        rely ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) >= 0));
        (anno (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) - 0) = ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))));
        match (
          (verify_and_load_images_loop_mid
            (z_to_nat ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))) 
            ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) 
            0 
            v_vmid 
            ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID))))
        ) with
        | (Some (v_call1_0, v_load_idx_33, v_vmid_0, st_4)) =>
          rely (((((st_4.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
          (Some (((st_4.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE ((((st_4.(shared)).(e_vminfos)) @ v_vmid).[e__state] :< 3)))) :: (st_4.(log)))).[shared].[e_locks] :<
            (((st_4.(shared)).(e_locks)) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
            (((st_4.(shared)).(e_vminfos)) # v_vmid == ((((st_4.(shared)).(e_vminfos)) @ v_vmid).[e__state] :< 3))))
        | None => None
        end))))
    else None.

  Hint Unfold verify_and_load_images_spec_mid: spec.

  Lemma f_verify_and_load_images_loop_refine_mid:
    forall _N_ v_call1 v_call1' v_load_idx_032 v_load_idx_032' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: verify_and_load_images_loop_mid _N_ v_call1 v_load_idx_032 v_vmid hst = Some (v_call1', v_load_idx_032', v_vmid', hst')),
      exists lst', verify_and_load_images_loop_low _N_ v_call1 v_load_idx_032 v_vmid lst = Some (v_call1', v_load_idx_032', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_verify_and_load_images_refine_mid:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: verify_and_load_images_spec_mid v_vmid hst = Some hst'),
      exists lst', verify_and_load_images_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_verify_and_load_images_loop_refine_high:
    forall _N_ v_call1 v_call1' v_load_idx_032 v_load_idx_032' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: verify_and_load_images_loop _N_ v_call1 v_load_idx_032 v_vmid hst = Some (v_call1', v_load_idx_032', v_vmid', hst')),
      exists lst', verify_and_load_images_loop_mid _N_ v_call1 v_load_idx_032 v_vmid lst = Some (v_call1', v_load_idx_032', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_verify_and_load_images_refine_high:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: verify_and_load_images_spec v_vmid hst = Some hst'),
      exists lst', verify_and_load_images_spec_mid v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent verify_and_load_images_spec.
      unfold verify_and_load_images_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_verify_and_load_images_refine:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: verify_and_load_images_spec v_vmid hst = Some hst'),
      exists lst', verify_and_load_images_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent verify_and_load_images_spec.
      unfold verify_and_load_images_spec.
      intros; inv Hrel.
      eapply f_verify_and_load_images_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_verify_and_load_images_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VMOps_verify_and_load_images_RefProof.

