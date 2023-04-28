Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import SmmuMemOps.Layer.
Require Import SmmuMemOps.RefineRel.
Require Import SmmuMemOps.Spec.
Require Import SmmuMemOps.__el2_alloc_smmu_pgd.LowSpec.
Require Import SmmuMemOpsAux.Layer.
Require Import SmmuPTOps.Spec.
Require Import SmmuPTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuMemOps___el2_alloc_smmu_pgd_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition __el2_alloc_smmu_pgd_spec_mid (v_cbndx: Z) (v_vmid: Z) (v_index: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMU_LOCK) = None));
    rely ((((0 - v_index) <= 0) /\ (v_index < 2)));
    if ((((((st_2.(priv)).(e_smmus)) @ v_index).(e_num_context_banks)) - v_cbndx) >? 0)
    then (
      rely ((((0 - ((8 * v_index) + v_cbndx)) <= 0) /\ (((8 * v_index) + v_cbndx) < 16)));
      if ((((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) =? (- 1))
      then (
        when st_5 == (
            (query_oracle
              (((st_2.[log] :< ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # SMMU_LOCK == (Some CPU_ID))).[shared].[e_smmu_vmid] :<
                (((st_2.(shared)).(e_smmu_vmid)) # ((8 * v_index) + v_cbndx) == v_vmid))));
        rely (((((st_5.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
        (anno (((- 8) = (- 8)));
        rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
        (anno (((- 2) = (- 2)));
        rely ((((((st_5.(shared)).(e_locks)) # SMMUPT_LOCK == None) @ SMMU_LOCK) = (Some CPU_ID)));
        (Some (((st_5.[log] :<
          ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_5.(shared)).(e_smmu_vmid))))) ::
            ((EVT
              CPU_ID 
              (REL
                SMMUPT_LOCK 
                (SMMUPT_STATE (((st_5.(shared)).(e_smmupts)).[e_smmu_pt] :< ((((st_5.(shared)).(e_smmupts)).(e_smmu_pt)) # ((8 * v_index) + v_cbndx) == init_smmupt))))) ::
              ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_5.(log)))))).[shared].[e_locks] :<
          ((((st_5.(shared)).(e_locks)) # SMMUPT_LOCK == None) # SMMU_LOCK == None)).[shared].[e_smmupts].[e_smmu_pt] :<
          ((((st_5.(shared)).(e_smmupts)).(e_smmu_pt)) # ((8 * v_index) + v_cbndx) == init_smmupt))))))
      else (
        (Some ((st_2.[log] :< ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_2.(shared)).(e_smmu_vmid))))) :: ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # SMMU_LOCK == None)))))
    else None.

  Hint Unfold __el2_alloc_smmu_pgd_spec_mid: spec.

  Lemma f___el2_alloc_smmu_pgd_refine_mid:
    forall v_cbndx v_vmid v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __el2_alloc_smmu_pgd_spec_mid v_cbndx v_vmid v_index hst = Some hst'),
      exists lst', __el2_alloc_smmu_pgd_spec_low v_cbndx v_vmid v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___el2_alloc_smmu_pgd_refine_high:
    forall v_cbndx v_vmid v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __el2_alloc_smmu_pgd_spec v_cbndx v_vmid v_index hst = Some hst'),
      exists lst', __el2_alloc_smmu_pgd_spec_mid v_cbndx v_vmid v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent __el2_alloc_smmu_pgd_spec.
      unfold __el2_alloc_smmu_pgd_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___el2_alloc_smmu_pgd_refine:
    forall v_cbndx v_vmid v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __el2_alloc_smmu_pgd_spec v_cbndx v_vmid v_index hst = Some hst'),
      exists lst', __el2_alloc_smmu_pgd_spec_low v_cbndx v_vmid v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent __el2_alloc_smmu_pgd_spec.
      unfold __el2_alloc_smmu_pgd_spec.
      intros; inv Hrel.
      eapply f___el2_alloc_smmu_pgd_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f___el2_alloc_smmu_pgd_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuMemOps___el2_alloc_smmu_pgd_RefProof.

