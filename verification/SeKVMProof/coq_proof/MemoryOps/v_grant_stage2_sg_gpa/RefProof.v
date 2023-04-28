Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemManager.Spec.
Require Import MemoryOps.Layer.
Require Import MemoryOps.RefineRel.
Require Import MemoryOps.Spec.
Require Import MemoryOps.v_grant_stage2_sg_gpa.LowSpec.
Require Import S2PTOps.Spec.
Require Import S2PTTreeOps.Spec.
Require Import VMOpsAux.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemoryOps_v_grant_stage2_sg_gpa_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint v_grant_stage2_sg_gpa_loop_mid (_N_: nat) (v_addr_addr_044: Z) (v_len_143: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr_addr_044, v_len_143, v_vmid, st))
    | (S _N__0) =>
      match ((v_grant_stage2_sg_gpa_loop_mid _N__0 v_addr_addr_044 v_len_143 v_vmid st)) with
      | (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_0)) =>
        rely ((((0 - v_vmid_0) <= 0) /\ (v_vmid_0 < 19)));
        when st_2 == ((query_oracle st_0));
        rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid_0)) = None));
        rely ((((0 - v_addr_addr_45) <= 0) /\ ((v_addr_addr_45 - MAX_ADDR) <= 0)));
        rely ((((((st_2.(shared)).(e_s2pts)) @ v_vmid_0).(e_vttbr)) <> 0));
        if (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 281474976706560) =? 0)
        then (
          if ((v_len_144 + (- 1)) =? 0)
          then (
            (Some (
              v_addr_addr_45  ,
              v_len_144  ,
              v_vmid_0  ,
              ((st_2.[log] :<
                ((EVT CPU_ID (REL (24 + v_vmid_0) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid_0))) :: (st_2.(log))))).[shared].[e_locks] :<
                (((st_2.(shared)).(e_locks)) # (24 + v_vmid_0) == None))
            )))
          else (
            (Some (
              (v_addr_addr_45 + 4096)  ,
              (v_len_144 + (- 1))  ,
              v_vmid_0  ,
              ((st_2.[log] :<
                ((EVT CPU_ID (REL (24 + v_vmid_0) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid_0))) :: (st_2.(log))))).[shared].[e_locks] :<
                (((st_2.(shared)).(e_locks)) # (24 + v_vmid_0) == None))
            ))))
        else (
          if (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 36028797018963968) =? 0)
          then (
            (anno (
              ((0 + (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 281474976706560) >> 12)) =
                (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 281474976706560) >> 12)));
            when st_3 == (
                (grant_vm_page_spec
                  v_vmid_0 
                  (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 281474976706560) >> 12) 
                  ((st_2.[log] :<
                    ((EVT CPU_ID (REL (24 + v_vmid_0) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid_0))) :: (st_2.(log))))).[shared].[e_locks] :<
                    (((st_2.(shared)).(e_locks)) # (24 + v_vmid_0) == None))));
            if ((v_len_144 + (- 1)) =? 0)
            then (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_3))
            else (Some ((v_addr_addr_45 + 4096), (v_len_144 + (- 1)), v_vmid_0, st_3))))
          else (
            when st_3 == (
                (grant_vm_page_spec
                  v_vmid_0 
                  (((v_addr_addr_45 >> 12) & 511) + (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 281474976706560) >> 12)) 
                  ((st_2.[log] :<
                    ((EVT CPU_ID (REL (24 + v_vmid_0) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid_0))) :: (st_2.(log))))).[shared].[e_locks] :<
                    (((st_2.(shared)).(e_locks)) # (24 + v_vmid_0) == None))));
            if ((v_len_144 + (- 1)) =? 0)
            then (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_3))
            else (Some ((v_addr_addr_45 + 4096), (v_len_144 + (- 1)), v_vmid_0, st_3))))
      | None => None
      end
    end.

  Hint Unfold v_grant_stage2_sg_gpa_loop_mid: spec.

  Definition v_grant_stage2_sg_gpa_spec_mid (v_vmid: Z) (v_addr: Z) (v_size: Z) (st: RData) : (option RData) :=
    if (
      if (v_size <? 4096)
      then (
        if ((v_size & 4095) <>? 0)
        then (
          (anno (((0 + 1) = 1));
          false))
        else (
          (anno (((0 + 0) = 0));
          true)))
      else (
        if ((v_size & 4095) <>? 0)
        then (((v_size >> 12) + 1) =? 0)
        else (
          (anno ((((v_size >> 12) + 0) = (v_size >> 12)));
          ((v_size >> 12) =? 0)))))
    then (Some st)
    else (
      if (v_size <? 4096)
      then (
        (anno (((0 + 1) = 1));
        match ((v_grant_stage2_sg_gpa_loop_mid (z_to_nat 1) v_addr 1 v_vmid st)) with
        | (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_0)) => (Some st_0)
        | None => None
        end))
      else (
        if ((v_size & 4095) <>? 0)
        then (
          match ((v_grant_stage2_sg_gpa_loop_mid (z_to_nat ((v_size >> 12) + 1)) v_addr ((v_size >> 12) + 1) v_vmid st)) with
          | (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_0)) => (Some st_0)
          | None => None
          end)
        else (
          (anno ((((v_size >> 12) + 0) = (v_size >> 12)));
          match ((v_grant_stage2_sg_gpa_loop_mid (z_to_nat (v_size >> 12)) v_addr (v_size >> 12) v_vmid st)) with
          | (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_0)) => (Some st_0)
          | None => None
          end)))).

  Hint Unfold v_grant_stage2_sg_gpa_spec_mid: spec.

  Lemma f_v_grant_stage2_sg_gpa_loop_refine_mid:
    forall _N_ v_addr_addr_044 v_addr_addr_044' v_len_143 v_len_143' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_grant_stage2_sg_gpa_loop_mid _N_ v_addr_addr_044 v_len_143 v_vmid hst = Some (v_addr_addr_044', v_len_143', v_vmid', hst')),
      exists lst', v_grant_stage2_sg_gpa_loop_low _N_ v_addr_addr_044 v_len_143 v_vmid lst = Some (v_addr_addr_044', v_len_143', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_grant_stage2_sg_gpa_refine_mid:
    forall v_vmid v_addr v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_grant_stage2_sg_gpa_spec_mid v_vmid v_addr v_size hst = Some hst'),
      exists lst', v_grant_stage2_sg_gpa_spec_low v_vmid v_addr v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_grant_stage2_sg_gpa_loop_refine_high:
    forall _N_ v_addr_addr_044 v_addr_addr_044' v_len_143 v_len_143' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_grant_stage2_sg_gpa_loop _N_ v_addr_addr_044 v_len_143 v_vmid hst = Some (v_addr_addr_044', v_len_143', v_vmid', hst')),
      exists lst', v_grant_stage2_sg_gpa_loop_mid _N_ v_addr_addr_044 v_len_143 v_vmid lst = Some (v_addr_addr_044', v_len_143', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_grant_stage2_sg_gpa_refine_high:
    forall v_vmid v_addr v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_grant_stage2_sg_gpa_spec v_vmid v_addr v_size hst = Some hst'),
      exists lst', v_grant_stage2_sg_gpa_spec_mid v_vmid v_addr v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent v_grant_stage2_sg_gpa_spec.
      unfold v_grant_stage2_sg_gpa_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_grant_stage2_sg_gpa_refine:
    forall v_vmid v_addr v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_grant_stage2_sg_gpa_spec v_vmid v_addr v_size hst = Some hst'),
      exists lst', v_grant_stage2_sg_gpa_spec_low v_vmid v_addr v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent v_grant_stage2_sg_gpa_spec.
      unfold v_grant_stage2_sg_gpa_spec.
      intros; inv Hrel.
      eapply f_v_grant_stage2_sg_gpa_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_v_grant_stage2_sg_gpa_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End MemoryOps_v_grant_stage2_sg_gpa_RefProof.

