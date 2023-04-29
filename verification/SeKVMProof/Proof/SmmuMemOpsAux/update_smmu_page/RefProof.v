Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import PageManager.Spec.
Require Import SmmuMemOpsAux.Layer.
Require Import SmmuMemOpsAux.RefineRel.
Require Import SmmuMemOpsAux.Spec.
Require Import SmmuMemOpsAux.update_smmu_page.LowSpec.
Require Import SmmuPTOps.Spec.
Require Import SmmuPTTreeOps.Spec.
Require Import VMOps.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuMemOpsAux_update_smmu_page_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition update_smmu_page_spec_mid (v_vmid: Z) (v_cbndx: Z) (v_index: Z) (v_iova: Z) (v_pte: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    rely ((((0 - ((v_pte >> 12) & 68719476735)) <= 0) /\ ((((v_pte >> 12) & 68719476735) - MAX_PFN) <= 0)));
    if (((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_vmid)) =? 0)
    then (
      (anno (((- 1) = (- 1)));
      if (
        if ((((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_vmid)) - v_vmid) =? 0)
        then (((v_iova >> 12) - ((((v_pte >> 12) & 68719476735) + 1000000000) & 4294967295)) =? 0)
        else false)
      then (
        when st_6 == (
            (query_oracle
              (((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID))).[shared].[e_s2pages] :<
                (((st_2.(shared)).(e_s2pages)) #
                  ((v_pte >> 12) & 68719476735) ==
                  ((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).[e_count] :< (((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_count)) + 1))))));
        rely (((((st_6.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
        (anno (((- 8) = (- 8)));
        rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
        (anno (((- 2) = (- 2)));
        rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
        rely ((((0 - v_iova) <= 0) /\ ((v_iova - MAX_PADDR) <= 0)));
        when spts' == ((smmupt_set ((8 * v_index) + v_cbndx) v_iova v_pte ((st_6.(shared)).(e_smmupts))));
        rely ((((((st_6.(shared)).(e_locks)) # SMMUPT_LOCK == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
        (Some (((st_6.[log] :<
          ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_6.(shared)).(e_s2pages))))) ::
            ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_6.(log)))))).[shared].[e_locks] :<
          ((((st_6.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_smmupts] :<
          spts')))))
      else (
        (Some (((st_2.[log] :<
          ((EVT
            CPU_ID 
            (REL
              S2PAGE_LOCK 
              (S2PAGE_STATE
                (((st_2.(shared)).(e_s2pages)) #
                  ((v_pte >> 12) & 68719476735) ==
                  ((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).[e_count] :< (((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_count)) + 1)))))) ::
            ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
          (((st_2.(shared)).(e_s2pages)) #
            ((v_pte >> 12) & 68719476735) ==
            ((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).[e_count] :< (((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_count)) + 1))))))))
    else (
      if (((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_vmid)) =? (- 1))
      then (
        when st_4 == (
            (query_oracle
              ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))));
        rely (((((st_4.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
        (anno (((- 8) = (- 8)));
        rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
        (anno (((- 2) = (- 2)));
        rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
        rely ((((0 - v_iova) <= 0) /\ ((v_iova - MAX_PADDR) <= 0)));
        when spts' == ((smmupt_set ((8 * v_index) + v_cbndx) v_iova v_pte ((st_4.(shared)).(e_smmupts))));
        rely ((((((st_4.(shared)).(e_locks)) # SMMUPT_LOCK == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
        (Some (((st_4.[log] :<
          ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_4.(shared)).(e_s2pages))))) ::
            ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_4.(log)))))).[shared].[e_locks] :<
          ((((st_4.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_smmupts] :<
          spts')))))
      else (
        if (
          if ((((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_vmid)) - v_vmid) =? 0)
          then (((v_iova >> 12) - (((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_gfn)) & 4294967295)) =? 0)
          else false)
        then (
          when st_4 == (
              (query_oracle
                ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))));
          rely (((((st_4.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
          (anno (((- 8) = (- 8)));
          rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
          (anno (((- 2) = (- 2)));
          rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
          rely ((((0 - v_iova) <= 0) /\ ((v_iova - MAX_PADDR) <= 0)));
          when spts' == ((smmupt_set ((8 * v_index) + v_cbndx) v_iova v_pte ((st_4.(shared)).(e_smmupts))));
          rely ((((((st_4.(shared)).(e_locks)) # SMMUPT_LOCK == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
          (Some (((st_4.[log] :<
            ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_4.(shared)).(e_s2pages))))) ::
              ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_4.(log)))))).[shared].[e_locks] :<
            ((((st_4.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_smmupts] :<
            spts')))))
        else (
          (Some ((st_2.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_2.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
            (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)))))).

  Hint Unfold update_smmu_page_spec_mid: spec.

  Lemma f_update_smmu_page_refine_mid:
    forall v_vmid v_cbndx v_index v_iova v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: update_smmu_page_spec_mid v_vmid v_cbndx v_index v_iova v_pte hst = Some hst'),
      exists lst', update_smmu_page_spec_low v_vmid v_cbndx v_index v_iova v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_update_smmu_page_refine_high:
    forall v_vmid v_cbndx v_index v_iova v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: update_smmu_page_spec v_vmid v_cbndx v_index v_iova v_pte hst = Some hst'),
      exists lst', update_smmu_page_spec_mid v_vmid v_cbndx v_index v_iova v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent update_smmu_page_spec.
      unfold update_smmu_page_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_update_smmu_page_refine:
    forall v_vmid v_cbndx v_index v_iova v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: update_smmu_page_spec v_vmid v_cbndx v_index v_iova v_pte hst = Some hst'),
      exists lst', update_smmu_page_spec_low v_vmid v_cbndx v_index v_iova v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent update_smmu_page_spec.
      unfold update_smmu_page_spec.
      intros; inv Hrel.
      eapply f_update_smmu_page_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_update_smmu_page_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuMemOpsAux_update_smmu_page_RefProof.

