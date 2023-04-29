Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemManager.Layer.
Require Import MemManager.RefineRel.
Require Import MemManager.Spec.
Require Import MemManager.assign_pfn_to_vm.LowSpec.
Require Import PageManager.Layer.
Require Import PageManager.Spec.
Require Import S2PTOps.Spec.
Require Import S2PTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemManager_assign_pfn_to_vm_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition assign_pfn_to_vm_spec_mid (v_vmid: Z) (v_gfn: Z) (v_pfn: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    rely ((((0 - v_pfn) <= 0) /\ ((v_pfn - MAX_PFN) <= 0)));
    if (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) =? 0)
    then (
      if (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) =? 0)
      then (
        (anno (((- 1) = (- 1)));
        (anno (((v_vmid - (- 1)) = (1 + v_vmid)));
        rely (((1 + v_vmid) <> 0));
        (anno (((- 1) = (- 1)));
        when st_5 == (
            (query_oracle
              (((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID))).[shared].[e_s2pages] :<
                (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_vmid] :< v_vmid)))));
        rely (((((st_5.(shared)).(e_locks)) @ 24) = None));
        (anno (((- 4096) = (- 4096)));
        rely (((((- 4096) * v_pfn) <= 0) /\ (((v_pfn << 12) - MAX_ADDR) <= 0)));
        rely ((((((st_5.(shared)).(e_s2pts)) @ 0).(e_vttbr)) <> 0));
        if ((s2pt_walk (v_pfn << 12) (((st_5.(shared)).(e_s2pts)) @ 0)) =? 0)
        then (
          rely ((((((st_5.(shared)).(e_locks)) # 24 == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
          (anno (((- 1) = (- 1)));
          (anno (((((((st_5.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) - (- 1)) = (1 + ((((st_5.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)))));
          rely (((1 + ((((st_5.(shared)).(e_s2pages)) @ v_pfn).(e_vmid))) <> 0));
          (Some (((st_5.[log] :<
            ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE (((st_5.(shared)).(e_s2pages)) # v_pfn == ((((st_5.(shared)).(e_s2pages)) @ v_pfn).[e_gfn] :< v_gfn))))) ::
              ((EVT CPU_ID (REL 24 (S2PT_STATE (((st_5.(shared)).(e_s2pts)) @ 0)))) :: ((EVT CPU_ID (ACQ 24)) :: (st_5.(log)))))).[shared].[e_locks] :<
            ((((st_5.(shared)).(e_locks)) # 24 == None) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
            (((st_5.(shared)).(e_s2pages)) # v_pfn == ((((st_5.(shared)).(e_s2pages)) @ v_pfn).[e_gfn] :< v_gfn)))))))
        else (
          when npt' == ((s2pt_set (v_pfn << 12) 3 144115188075855872 (((st_5.(shared)).(e_s2pts)) @ 0)));
          rely ((((((st_5.(shared)).(e_locks)) # 24 == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
          (anno (((- 1) = (- 1)));
          (anno (((((((st_5.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) - (- 1)) = (1 + ((((st_5.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)))));
          rely (((1 + ((((st_5.(shared)).(e_s2pages)) @ v_pfn).(e_vmid))) <> 0));
          (Some ((((st_5.[log] :<
            ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE (((st_5.(shared)).(e_s2pages)) # v_pfn == ((((st_5.(shared)).(e_s2pages)) @ v_pfn).[e_gfn] :< v_gfn))))) ::
              ((EVT CPU_ID (REL 24 (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ 24)) :: (st_5.(log)))))).[shared].[e_locks] :<
            ((((st_5.(shared)).(e_locks)) # 24 == None) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
            (((st_5.(shared)).(e_s2pages)) # v_pfn == ((((st_5.(shared)).(e_s2pages)) @ v_pfn).[e_gfn] :< v_gfn))).[shared].[e_s2pts] :<
            (((st_5.(shared)).(e_s2pts)) # 0 == npt')))))))))))
      else None)
    else (
      if ((((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) - v_vmid) =? 0)
      then (
        if ((((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_gfn)) - v_gfn) =? 0)
        then (
          if (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) =? (- 1))
          then (
            (anno (((- 1) = (- 1)));
            (anno (((((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) - (- 1)) = (1 + ((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)))));
            rely (((1 + ((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid))) <> 0));
            (Some (((st_2.[log] :<
              ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< 0))))) ::
                ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
              (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< 0)))))))
          else (
            (Some ((st_2.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_2.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)))))
        else None)
      else (
        (Some ((st_2.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_2.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None))))).

  Hint Unfold assign_pfn_to_vm_spec_mid: spec.

  Lemma f_assign_pfn_to_vm_refine_mid:
    forall v_vmid v_gfn v_pfn lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: assign_pfn_to_vm_spec_mid v_vmid v_gfn v_pfn hst = Some hst'),
      exists lst', assign_pfn_to_vm_spec_low v_vmid v_gfn v_pfn lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_assign_pfn_to_vm_refine_high:
    forall v_vmid v_gfn v_pfn lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: assign_pfn_to_vm_spec v_vmid v_gfn v_pfn hst = Some hst'),
      exists lst', assign_pfn_to_vm_spec_mid v_vmid v_gfn v_pfn lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent assign_pfn_to_vm_spec.
      unfold assign_pfn_to_vm_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_assign_pfn_to_vm_refine:
    forall v_vmid v_gfn v_pfn lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: assign_pfn_to_vm_spec v_vmid v_gfn v_pfn hst = Some hst'),
      exists lst', assign_pfn_to_vm_spec_low v_vmid v_gfn v_pfn lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent assign_pfn_to_vm_spec.
      unfold assign_pfn_to_vm_spec.
      intros; inv Hrel.
      eapply f_assign_pfn_to_vm_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_assign_pfn_to_vm_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End MemManager_assign_pfn_to_vm_RefProof.

