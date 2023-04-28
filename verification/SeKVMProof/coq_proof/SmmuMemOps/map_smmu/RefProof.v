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
Require Import SmmuMemOps.map_smmu.LowSpec.
Require Import SmmuMemOpsAux.Layer.
Require Import SmmuMemOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuMemOps_map_smmu_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition map_smmu_spec_mid (v_vmid: Z) (v_cbndx: Z) (v_index: Z) (v_iova: Z) (v_pte: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if ((v_vmid + (- 1)) <? 17)
    then (
      if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e__state)) =? 3)
      then None
      else (
        when st_4 == (
            (update_smmu_page_spec
              v_vmid 
              v_cbndx 
              v_index 
              v_iova 
              v_pte 
              ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID)))));
        rely (((((st_4.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
        (Some ((st_4.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_4.(shared)).(e_vminfos)) @ v_vmid)))) :: (st_4.(log)))).[shared].[e_locks] :<
          (((st_4.(shared)).(e_locks)) # (5 + v_vmid) == None)))))
    else (
      when st_3 == (
          (update_smmu_page_spec
            v_vmid 
            v_cbndx 
            v_index 
            v_iova 
            v_pte 
            ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID)))));
      rely (((((st_3.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
      (Some ((st_3.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ v_vmid)))) :: (st_3.(log)))).[shared].[e_locks] :<
        (((st_3.(shared)).(e_locks)) # (5 + v_vmid) == None)))).

  Hint Unfold map_smmu_spec_mid: spec.

  Lemma f_map_smmu_refine_mid:
    forall v_vmid v_cbndx v_index v_iova v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: map_smmu_spec_mid v_vmid v_cbndx v_index v_iova v_pte hst = Some hst'),
      exists lst', map_smmu_spec_low v_vmid v_cbndx v_index v_iova v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_map_smmu_refine_high:
    forall v_vmid v_cbndx v_index v_iova v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: map_smmu_spec v_vmid v_cbndx v_index v_iova v_pte hst = Some hst'),
      exists lst', map_smmu_spec_mid v_vmid v_cbndx v_index v_iova v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_map_smmu_refine:
    forall v_vmid v_cbndx v_index v_iova v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: map_smmu_spec v_vmid v_cbndx v_index v_iova v_pte hst = Some hst'),
      exists lst', map_smmu_spec_low v_vmid v_cbndx v_index v_iova v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_map_smmu_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_map_smmu_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuMemOps_map_smmu_RefProof.

