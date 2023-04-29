Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemManager.Layer.
Require Import MemManager.RefineRel.
Require Import MemManager.Spec.
Require Import MemManager.map_pfn_vm.LowSpec.
Require Import PageManager.Layer.
Require Import S2PTOps.Spec.
Require Import S2PTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemManager_map_pfn_vm_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition map_pfn_vm_spec_mid (v_vmid: Z) (v_addr: Z) (v_pte: Z) (v_level: Z) (st: RData) : (option RData) :=
    if (v_level =? 3)
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      when st_2 == ((query_oracle st));
      rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
      rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_ADDR) <= 0)));
      rely ((((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) <> 0));
      when npt' == ((s2pt_set v_addr v_level ((v_pte & 281474976706560) |' 4095) (((st_2.(shared)).(e_s2pts)) @ v_vmid)));
      (Some (((st_2.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)).[shared].[e_s2pts] :<
        (((st_2.(shared)).(e_s2pts)) # v_vmid == npt'))))
    else (
      if (v_level =? 2)
      then (
        rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
        when st_2 == ((query_oracle st));
        rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
        rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_ADDR) <= 0)));
        rely ((((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) <> 0));
        when npt' == ((s2pt_set v_addr v_level ((v_pte & 281474976706560) |' 4093) (((st_2.(shared)).(e_s2pts)) @ v_vmid)));
        (Some (((st_2.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)).[shared].[e_s2pts] :<
          (((st_2.(shared)).(e_s2pts)) # v_vmid == npt'))))
      else (
        rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
        when st_2 == ((query_oracle st));
        rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
        rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_ADDR) <= 0)));
        rely ((((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) <> 0));
        when npt' == ((s2pt_set v_addr v_level v_pte (((st_2.(shared)).(e_s2pts)) @ v_vmid)));
        (Some (((st_2.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)).[shared].[e_s2pts] :<
          (((st_2.(shared)).(e_s2pts)) # v_vmid == npt'))))).

  Hint Unfold map_pfn_vm_spec_mid: spec.

  Lemma f_map_pfn_vm_refine_mid:
    forall v_vmid v_addr v_pte v_level lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: map_pfn_vm_spec_mid v_vmid v_addr v_pte v_level hst = Some hst'),
      exists lst', map_pfn_vm_spec_low v_vmid v_addr v_pte v_level lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_map_pfn_vm_refine_high:
    forall v_vmid v_addr v_pte v_level lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: map_pfn_vm_spec v_vmid v_addr v_pte v_level hst = Some hst'),
      exists lst', map_pfn_vm_spec_mid v_vmid v_addr v_pte v_level lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent map_pfn_vm_spec.
      unfold map_pfn_vm_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_map_pfn_vm_refine:
    forall v_vmid v_addr v_pte v_level lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: map_pfn_vm_spec v_vmid v_addr v_pte v_level hst = Some hst'),
      exists lst', map_pfn_vm_spec_low v_vmid v_addr v_pte v_level lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent map_pfn_vm_spec.
      unfold map_pfn_vm_spec.
      intros; inv Hrel.
      eapply f_map_pfn_vm_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_map_pfn_vm_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End MemManager_map_pfn_vm_RefProof.

