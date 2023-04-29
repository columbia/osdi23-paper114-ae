Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import SmmuPTOps.Layer.
Require Import SmmuPTOps.RefineRel.
Require Import SmmuPTOps.Spec.
Require Import SmmuPTOps.init_spt.LowSpec.
Require Import SmmuPTTreeOps.Layer.
Require Import SmmuPTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTOps_init_spt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition init_spt_spec_mid (v_cbndx: Z) (v_index: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
    (anno (((v_cbndx - SMMU_NUM_CBNDX) = ((- 8) + v_cbndx)));
    rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
    (anno (((v_index - SMMU_NUM_DEVICE) = ((- 2) + v_index)));
    rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
    (anno (((v_index * SMMU_NUM_CBNDX) = (8 * v_index)));
    (Some (((st_2.[log] :<
      ((EVT
        CPU_ID 
        (REL
          SMMUPT_LOCK 
          (SMMUPT_STATE (((st_2.(shared)).(e_smmupts)).[e_smmu_pt] :< ((((st_2.(shared)).(e_smmupts)).(e_smmu_pt)) # ((8 * v_index) + v_cbndx) == init_smmupt))))) ::
        ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
      (((st_2.(shared)).(e_locks)) # SMMUPT_LOCK == None)).[shared].[e_smmupts].[e_smmu_pt] :<
      ((((st_2.(shared)).(e_smmupts)).(e_smmu_pt)) # ((8 * v_index) + v_cbndx) == init_smmupt)))))).

  Hint Unfold init_spt_spec_mid: spec.

  Lemma f_init_spt_refine_mid:
    forall v_cbndx v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: init_spt_spec_mid v_cbndx v_index hst = Some hst'),
      exists lst', init_spt_spec_low v_cbndx v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_init_spt_refine_high:
    forall v_cbndx v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: init_spt_spec v_cbndx v_index hst = Some hst'),
      exists lst', init_spt_spec_mid v_cbndx v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_init_spt_refine:
    forall v_cbndx v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: init_spt_spec v_cbndx v_index hst = Some hst'),
      exists lst', init_spt_spec_low v_cbndx v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_init_spt_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_init_spt_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuPTOps_init_spt_RefProof.

