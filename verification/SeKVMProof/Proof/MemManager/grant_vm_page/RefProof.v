Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemManager.Layer.
Require Import MemManager.RefineRel.
Require Import MemManager.Spec.
Require Import MemManager.grant_vm_page.LowSpec.
Require Import PageManager.Layer.
Require Import PageManager.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemManager_grant_vm_page_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition grant_vm_page_spec_mid (v_vmid: Z) (v_pfn: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    rely ((((0 - v_pfn) <= 0) /\ ((v_pfn - MAX_PFN) <= 0)));
    if (
      if ((((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) - v_vmid) =? 0)
      then (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) <? 100)
      else false)
    then (
      (anno (((- 1) = (- 1)));
      (anno (((((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) - (- 1)) = (1 + ((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)))));
      rely (((1 + ((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid))) <> 0));
      (Some (((st_2.[log] :<
        ((EVT
          CPU_ID 
          (REL
            S2PAGE_LOCK 
            (S2PAGE_STATE
              (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) + 1)))))) ::
          ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
        (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) + 1))))))))
    else (
      (Some ((st_2.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_2.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)))).

  Hint Unfold grant_vm_page_spec_mid: spec.

  Lemma f_grant_vm_page_refine_mid:
    forall v_vmid v_pfn lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: grant_vm_page_spec_mid v_vmid v_pfn hst = Some hst'),
      exists lst', grant_vm_page_spec_low v_vmid v_pfn lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_grant_vm_page_refine_high:
    forall v_vmid v_pfn lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: grant_vm_page_spec v_vmid v_pfn hst = Some hst'),
      exists lst', grant_vm_page_spec_mid v_vmid v_pfn lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent grant_vm_page_spec.
      unfold grant_vm_page_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_grant_vm_page_refine:
    forall v_vmid v_pfn lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: grant_vm_page_spec v_vmid v_pfn hst = Some hst'),
      exists lst', grant_vm_page_spec_low v_vmid v_pfn lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent grant_vm_page_spec.
      unfold grant_vm_page_spec.
      intros; inv Hrel.
      eapply f_grant_vm_page_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_grant_vm_page_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End MemManager_grant_vm_page_RefProof.

