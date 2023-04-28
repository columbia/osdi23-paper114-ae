Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemoryOpsAux.Layer.
Require Import MemoryOpsAux.Spec.
Require Import S2PTOps.Spec.
Require Import S2PTTreeOps.Spec.
Require Import VMOpsAux.Layer.
Require Import VMOpsAux.RefineRel.
Require Import VMOpsAux.Spec.
Require Import VMOpsAux.unmap_and_load_vm_image.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOpsAux_unmap_and_load_vm_image_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint unmap_and_load_vm_image_loop_mid (_N_: nat) (v_mb_num_029: Z) (v_remap_addr_addr_032: Z) (v_start_030: Z) (v_target_addr_addr_033: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_mb_num_029, v_remap_addr_addr_032, v_start_030, v_target_addr_addr_033, v_vmid, st))
    | (S _N__0) =>
      match ((unmap_and_load_vm_image_loop_mid _N__0 v_mb_num_029 v_remap_addr_addr_032 v_start_030 v_target_addr_addr_033 v_vmid st)) with
      | (Some (v_mb_num_30, v_remap_addr_addr_33, v_start_31, v_target_addr_addr_34, v_vmid_0, st_0)) =>
        (anno (((0 - 18) = (- 18)));
        when st_2 == ((query_oracle st_0));
        (anno (((24 + 18) = 42));
        rely (((((st_2.(shared)).(e_locks)) @ 42) = None));
        rely ((((0 - v_remap_addr_addr_33) <= 0) /\ ((v_remap_addr_addr_33 - MAX_ADDR) <= 0)));
        rely ((((((st_2.(shared)).(e_s2pts)) @ 18).(e_vttbr)) <> 0));
        (anno (((24 + 18) = 42));
        if ((((s2pt_walk v_remap_addr_addr_33 (((st_2.(shared)).(e_s2pts)) @ 18)) >> 12) & 68719476224) =? 0)
        then None
        else (
          (anno (
            ((((((s2pt_walk v_remap_addr_addr_33 (((st_2.(shared)).(e_s2pts)) @ 18)) >> 12) & 68719476224) << 12) >> 12) =
              (((s2pt_walk v_remap_addr_addr_33 (((st_2.(shared)).(e_s2pts)) @ 18)) >> 12) & 68719476224)));
          match (
            (prot_and_map_vm_s2pt_loop
              (z_to_nat 512) 
              v_start_31 
              true 
              ((v_start_31 >> 12) & 4503599627369984) 
              512 
              ((((s2pt_walk v_remap_addr_addr_33 (((st_2.(shared)).(e_s2pts)) @ 18)) >> 12) & 68719476224) & 68719476735) 
              ((((s2pt_walk v_remap_addr_addr_33 (((st_2.(shared)).(e_s2pts)) @ 18)) >> 12) & 68719476224) << 12) 
              v_vmid_0 
              ((st_2.[log] :< ((EVT CPU_ID (REL 42 (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ 18)))) :: ((EVT CPU_ID (ACQ 42)) :: (st_2.(log))))).[shared].[e_locks] :<
                (((st_2.(shared)).(e_locks)) # 42 == None)))
          ) with
          | (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_2, st_3)) =>
            if ((v_mb_num_30 + (- 1)) =? 0)
            then (Some (v_mb_num_30, v_remap_addr_addr_33, v_start_31, v_target_addr_addr_34, v_vmid_0, st_3))
            else (
              (Some (
                (v_mb_num_30 + (- 1))  ,
                ((v_remap_addr_addr_33 + (v_start_31 + 2097152)) - v_target_addr_addr_34)  ,
                (v_start_31 + 2097152)  ,
                (v_start_31 + 2097152)  ,
                v_vmid_0  ,
                st_3
              )))
          | None => None
          end)))))
      | None => None
      end
    end.

  Hint Unfold unmap_and_load_vm_image_loop_mid: spec.

  Definition unmap_and_load_vm_image_spec_mid (v_vmid: Z) (v_target_addr: Z) (v_remap_addr: Z) (v_num: Z) (st: RData) : (option RData) :=
    if ((((v_target_addr + 2097151) - (v_target_addr & 18446744073707454464)) + (v_num << 12)) <? 2097152)
    then (Some st)
    else (
      match (
        (unmap_and_load_vm_image_loop_mid
          (z_to_nat ((((v_target_addr + 2097151) - (v_target_addr & 18446744073707454464)) + (v_num << 12)) >> 21)) 
          ((((v_target_addr + 2097151) - (v_target_addr & 18446744073707454464)) + (v_num << 12)) >> 21) 
          v_remap_addr 
          (v_target_addr & 18446744073707454464) 
          v_target_addr 
          v_vmid 
          st)
      ) with
      | (Some (v_mb_num_30, v_remap_addr_addr_33, v_start_31, v_target_addr_addr_34, v_vmid_0, st_0)) => (Some st_0)
      | None => None
      end).

  Hint Unfold unmap_and_load_vm_image_spec_mid: spec.

  Local Opaque prot_and_map_vm_s2pt_loop.
  Local Opaque z_to_nat.

  Lemma f_unmap_and_load_vm_image_loop_refine_mid:
    forall _N_ v_mb_num_029 v_mb_num_029' v_remap_addr_addr_032 v_remap_addr_addr_032' v_start_030 v_start_030' v_target_addr_addr_033 v_target_addr_addr_033' v_vmid v_vmid' lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: unmap_and_load_vm_image_loop_mid _N_ v_mb_num_029 v_remap_addr_addr_032 v_start_030 v_target_addr_addr_033 v_vmid hst = Some (v_mb_num_029', v_remap_addr_addr_032', v_start_030', v_target_addr_addr_033', v_vmid', hst')),
    exists lst', unmap_and_load_vm_image_loop_low _N_ v_mb_num_029 v_remap_addr_addr_032 v_start_030 v_target_addr_addr_033 v_vmid lst = Some (v_mb_num_029', v_remap_addr_addr_032', v_start_030', v_target_addr_addr_033', v_vmid', lst') /\ refrel hst' lst'.
  Proof.
    induction _N_. simpl. intros. inv Hrel. repeat eexists. assumption.
    intros; inv Hrel.
    simpl in *. Local Opaque unmap_and_load_vm_image_loop_mid unmap_and_load_vm_image_loop_low.
    simpl_hyp Hspec. repeat destruct p. eapply IH_N_ in C.
    destruct C as (lst' & Hloop & Hrel). rewrite Hloop. inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    constructor.
  Qed.

  Lemma f_unmap_and_load_vm_image_refine_mid:
    forall v_vmid v_target_addr v_remap_addr v_num lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: unmap_and_load_vm_image_spec_mid v_vmid v_target_addr v_remap_addr v_num hst = Some hst'),
    exists lst', unmap_and_load_vm_image_spec_low v_vmid v_target_addr v_remap_addr v_num lst = Some lst' /\ refrel hst' lst'.
  Proof.
    intros; inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    eapply f_unmap_and_load_vm_image_loop_refine_mid in Hcond0.
    destruct Hcond0 as (lst' & Hloop & Hrel).
    rewrite Hloop. inv Hrel.
    repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    constructor.
  Qed.

  Lemma f_unmap_and_load_vm_image_loop_refine_high:
    forall _N_ v_mb_num_029 v_mb_num_029' v_remap_addr_addr_032 v_remap_addr_addr_032' v_start_030 v_start_030' v_target_addr_addr_033 v_target_addr_addr_033' v_vmid v_vmid' lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: unmap_and_load_vm_image_loop _N_ v_mb_num_029 v_remap_addr_addr_032 v_start_030 v_target_addr_addr_033 v_vmid hst = Some (v_mb_num_029', v_remap_addr_addr_032', v_start_030', v_target_addr_addr_033', v_vmid', hst')),
    exists lst', unmap_and_load_vm_image_loop_mid _N_ v_mb_num_029 v_remap_addr_addr_032 v_start_030 v_target_addr_addr_033 v_vmid lst = Some (v_mb_num_029', v_remap_addr_addr_032', v_start_030', v_target_addr_addr_033', v_vmid', lst') /\ refrel hst' lst'.
  Proof.
    Local Transparent unmap_and_load_vm_image_loop_mid.
    induction _N_. simpl. intros. inv Hrel. repeat eexists. assumption.
    intros; inv Hrel.
    simpl in *. Local Opaque unmap_and_load_vm_image_loop_mid unmap_and_load_vm_image_loop.
    simpl_hyp Hspec. repeat destruct p. eapply IH_N_ in C.
    destruct C as (lst' & Hloop & Hrel). rewrite Hloop. inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat solve_refproof;
      repeat eexists; try unfold refrel; solve_equality.
    repeat rewrite annotation_eq. reflexivity.
    repeat rewrite annotation_eq. reflexivity.
    constructor.
  Qed.

  Lemma f_unmap_and_load_vm_image_refine_high:
    forall v_vmid v_target_addr v_remap_addr v_num lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: unmap_and_load_vm_image_spec v_vmid v_target_addr v_remap_addr v_num hst = Some hst'),
    exists lst', unmap_and_load_vm_image_spec_mid v_vmid v_target_addr v_remap_addr v_num lst = Some lst' /\ refrel hst' lst'.
  Proof.
    intros; inv Hrel.
    autounfold with spec in *; autounfold with sem in *; simpl in *.
    destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
      repeat eexists; try unfold refrel; solve_equality.
    eapply f_unmap_and_load_vm_image_loop_refine_high in Hcond0.
    destruct Hcond0 as (lst' & Hloop & Hrel).
    erewrite Hloop. inv Hrel. reflexivity. constructor.
  Qed.

  Lemma f_unmap_and_load_vm_image_refine:
    forall v_vmid v_target_addr v_remap_addr v_num lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: unmap_and_load_vm_image_spec v_vmid v_target_addr v_remap_addr v_num hst = Some hst'),
    exists lst', unmap_and_load_vm_image_spec_low v_vmid v_target_addr v_remap_addr v_num lst = Some lst' /\ refrel hst' lst'.
  Proof.
    intros; inv Hrel.
    eapply f_unmap_and_load_vm_image_refine_high in Hspec; try unfold refrel; try reflexivity.
    destruct Hspec as (lst' & Hspec & Hrel).
    inv Hrel; try unfold refrel; try reflexivity.
    eapply f_unmap_and_load_vm_image_refine_mid; try unfold refrel; try reflexivity; try eassumption.
  Qed.

End VMOpsAux_unmap_and_load_vm_image_RefProof.

