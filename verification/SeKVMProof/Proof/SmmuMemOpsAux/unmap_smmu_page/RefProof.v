Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import PageManager.Spec.
Require Import SmmuMemOpsAux.Layer.
Require Import SmmuMemOpsAux.RefineRel.
Require Import SmmuMemOpsAux.Spec.
Require Import SmmuMemOpsAux.unmap_smmu_page.LowSpec.
Require Import SmmuPTOps.Spec.
Require Import SmmuPTTreeOps.Spec.
Require Import VMOps.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuMemOpsAux_unmap_smmu_page_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition unmap_smmu_page_spec_mid (v_cbndx: Z) (v_index: Z) (v_iova: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    when st_3 == (
        (query_oracle
          ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))));
    rely (((((st_3.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
    (anno (((- 8) = (- 8)));
    rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
    (anno (((- 2) = (- 2)));
    rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
    rely ((((0 - v_iova) <= 0) /\ ((v_iova - MAX_PADDR) <= 0)));
    if ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) =? 0)
    then (
      (anno ((((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) = (smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts)))));
      rely (
        (((0 - ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)) <= 0) /\
          ((((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735) - MAX_PFN) <= 0)));
      rely ((((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
      (anno ((((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) = (smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts)))));
      if (((((st_3.(shared)).(e_s2pages)) @ ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)).(e_vmid)) =? 0)
      then (
        (anno ((((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) = (smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts)))));
        if (((((st_3.(shared)).(e_s2pages)) @ ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)).(e_count)) =? 0)
        then (
          (Some ((st_3.[log] :<
            ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_3.(shared)).(e_s2pages))))) ::
              ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE ((st_3.(shared)).(e_smmupts))))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_3.(log)))))).[shared].[e_locks] :<
            ((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None))))
        else (
          (anno (((- 1) = (- 1)));
          (anno ((((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) = (smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts)))));
          (Some (((st_3.[log] :<
            ((EVT
              CPU_ID 
              (REL
                S2PAGE_LOCK 
                (S2PAGE_STATE
                  (((st_3.(shared)).(e_s2pages)) #
                    ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735) ==
                    ((((st_3.(shared)).(e_s2pages)) @ ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)).[e_count] :<
                      (((((st_3.(shared)).(e_s2pages)) @ ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)).(e_count)) + (- 1))))))) ::
              ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE ((st_3.(shared)).(e_smmupts))))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_3.(log)))))).[shared].[e_locks] :<
            ((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
            (((st_3.(shared)).(e_s2pages)) #
              ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735) ==
              ((((st_3.(shared)).(e_s2pages)) @ ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)).[e_count] :<
                (((((st_3.(shared)).(e_s2pages)) @ ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)).(e_count)) + (- 1)))))))))))
      else (
        (Some ((st_3.[log] :<
          ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_3.(shared)).(e_s2pages))))) ::
            ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE ((st_3.(shared)).(e_smmupts))))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_3.(log)))))).[shared].[e_locks] :<
          ((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)))))))
    else (
      when spts' == ((smmupt_set ((8 * v_index) + v_cbndx) v_iova 0 ((st_3.(shared)).(e_smmupts))));
      rely (
        (((0 - (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)) <= 0) /\
          (((((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735) - MAX_PFN) <= 0)));
      rely ((((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
      if (((((st_3.(shared)).(e_s2pages)) @ (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)).(e_vmid)) =? 0)
      then (
        if (((((st_3.(shared)).(e_s2pages)) @ (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)).(e_count)) =? 0)
        then (
          (Some (((st_3.[log] :<
            ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_3.(shared)).(e_s2pages))))) ::
              ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_3.(log)))))).[shared].[e_locks] :<
            ((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_smmupts] :<
            spts')))
        else (
          (anno (((- 1) = (- 1)));
          (Some ((((st_3.[log] :<
            ((EVT
              CPU_ID 
              (REL
                S2PAGE_LOCK 
                (S2PAGE_STATE
                  (((st_3.(shared)).(e_s2pages)) #
                    (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735) ==
                    ((((st_3.(shared)).(e_s2pages)) @ (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)).[e_count] :<
                      (((((st_3.(shared)).(e_s2pages)) @ (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)).(e_count)) + (- 1))))))) ::
              ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_3.(log)))))).[shared].[e_locks] :<
            ((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
            (((st_3.(shared)).(e_s2pages)) #
              (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735) ==
              ((((st_3.(shared)).(e_s2pages)) @ (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)).[e_count] :<
                (((((st_3.(shared)).(e_s2pages)) @ (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)).(e_count)) + (- 1))))).[shared].[e_smmupts] :<
            spts')))))
      else (
        (Some (((st_3.[log] :<
          ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_3.(shared)).(e_s2pages))))) ::
            ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_3.(log)))))).[shared].[e_locks] :<
          ((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_smmupts] :<
          spts')))))).

  Hint Unfold unmap_smmu_page_spec_mid: spec.

  Lemma f_unmap_smmu_page_refine_mid:
    forall v_cbndx v_index v_iova lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: unmap_smmu_page_spec_mid v_cbndx v_index v_iova hst = Some hst'),
      exists lst', unmap_smmu_page_spec_low v_cbndx v_index v_iova lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_unmap_smmu_page_refine_high:
    forall v_cbndx v_index v_iova lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: unmap_smmu_page_spec v_cbndx v_index v_iova hst = Some hst'),
      exists lst', unmap_smmu_page_spec_mid v_cbndx v_index v_iova lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent unmap_smmu_page_spec.
      unfold unmap_smmu_page_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_unmap_smmu_page_refine:
    forall v_cbndx v_index v_iova lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: unmap_smmu_page_spec v_cbndx v_index v_iova hst = Some hst'),
      exists lst', unmap_smmu_page_spec_low v_cbndx v_index v_iova lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent unmap_smmu_page_spec.
      unfold unmap_smmu_page_spec.
      intros; inv Hrel.
      eapply f_unmap_smmu_page_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_unmap_smmu_page_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuMemOpsAux_unmap_smmu_page_RefProof.

