Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuMemOpsAux.Spec.
Require Import SmmuOpsAux.Layer.
Require Import SmmuOpsAux.RefineRel.
Require Import SmmuOpsAux.Spec.
Require Import SmmuOpsAux.smmu_map_page.LowSpec.
Require Import SmmuReadWrite.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuOpsAux_smmu_map_page_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition smmu_map_page_spec_mid (v_cbndx: Z) (v_index: Z) (v_iova: Z) (v_pte: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMU_LOCK) = None));
    rely ((((0 - ((8 * v_index) + v_cbndx)) <= 0) /\ (((8 * v_index) + v_cbndx) < 16)));
    rely ((((0 - (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) <= 0) /\ ((((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) < 19)));
    when st_3 == ((query_oracle ((st_2.[log] :< ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # SMMU_LOCK == (Some CPU_ID)))));
    rely (((((st_3.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))) = None));
    (anno (((- 1) = (- 1)));
    if (((((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) + (- 1)) <? 17)
    then (
      if (((((st_3.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))).(e__state)) =? 3)
      then None
      else (
        when st_4 == (
            (update_smmu_page_spec
              (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) 
              v_cbndx 
              v_index 
              v_iova 
              v_pte 
              ((st_3.[log] :< ((EVT CPU_ID (ACQ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))))) :: (st_3.(log)))).[shared].[e_locks] :<
                (((st_3.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == (Some CPU_ID)))));
        rely (((((st_4.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))) = (Some CPU_ID)));
        rely ((((((st_4.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) @ SMMU_LOCK) = (Some CPU_ID)));
        (Some ((st_4.[log] :<
          ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_4.(shared)).(e_smmu_vmid))))) ::
            ((EVT
              CPU_ID 
              (REL
                (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) 
                (VMINFO_STATE (((st_4.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))))) ::
              (st_4.(log))))).[shared].[e_locks] :<
          ((((st_4.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) # SMMU_LOCK == None)))))
    else (
      when st_4 == (
          (update_smmu_page_spec
            (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) 
            v_cbndx 
            v_index 
            v_iova 
            v_pte 
            ((st_3.[log] :< ((EVT CPU_ID (ACQ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))))) :: (st_3.(log)))).[shared].[e_locks] :<
              (((st_3.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == (Some CPU_ID)))));
      rely (((((st_4.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))) = (Some CPU_ID)));
      rely ((((((st_4.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) @ SMMU_LOCK) = (Some CPU_ID)));
      (Some ((st_4.[log] :<
        ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_4.(shared)).(e_smmu_vmid))))) ::
          ((EVT
            CPU_ID 
            (REL
              (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) 
              (VMINFO_STATE (((st_4.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))))) ::
            (st_4.(log))))).[shared].[e_locks] :<
        ((((st_4.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) # SMMU_LOCK == None))))).

  Hint Unfold smmu_map_page_spec_mid: spec.

  Lemma f_smmu_map_page_refine_mid:
    forall v_cbndx v_index v_iova v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: smmu_map_page_spec_mid v_cbndx v_index v_iova v_pte hst = Some hst'),
      exists lst', smmu_map_page_spec_low v_cbndx v_index v_iova v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_smmu_map_page_refine_high:
    forall v_cbndx v_index v_iova v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: smmu_map_page_spec v_cbndx v_index v_iova v_pte hst = Some hst'),
      exists lst', smmu_map_page_spec_mid v_cbndx v_index v_iova v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent smmu_map_page_spec.
      unfold smmu_map_page_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_smmu_map_page_refine:
    forall v_cbndx v_index v_iova v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: smmu_map_page_spec v_cbndx v_index v_iova v_pte hst = Some hst'),
      exists lst', smmu_map_page_spec_low v_cbndx v_index v_iova v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent smmu_map_page_spec.
      unfold smmu_map_page_spec.
      intros; inv Hrel.
      eapply f_smmu_map_page_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_smmu_map_page_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuOpsAux_smmu_map_page_RefProof.

