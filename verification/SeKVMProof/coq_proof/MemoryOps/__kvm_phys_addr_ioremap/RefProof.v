Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemoryOps.Layer.
Require Import MemoryOps.RefineRel.
Require Import MemoryOps.Spec.
Require Import MemoryOps.__kvm_phys_addr_ioremap.LowSpec.
Require Import PageManager.Spec.
Require Import S2PTOps.Spec.
Require Import S2PTTreeOps.Spec.
Require Import VMOpsAux.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemoryOps___kvm_phys_addr_ioremap_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition __kvm_phys_addr_ioremap_spec_mid (v_vmid: Z) (v_gpa: Z) (v_pa: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    rely ((((0 - (v_pa >> 12)) <= 0) /\ (((v_pa >> 12) - MAX_PFN) <= 0)));
    if (((((st_2.(shared)).(e_s2pages)) @ (v_pa >> 12)).(e_vmid)) =? (- 1))
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      when st_3 == (
          (query_oracle
            ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))));
      rely (((((st_3.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
      rely ((((0 - v_gpa) <= 0) /\ ((v_gpa - MAX_ADDR) <= 0)));
      rely ((((((st_3.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) <> 0));
      when npt' == ((s2pt_set v_gpa 3 (v_pa + 18014398509483975) (((st_3.(shared)).(e_s2pts)) @ v_vmid)));
      rely ((((((st_3.(shared)).(e_locks)) # (24 + v_vmid) == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
      (Some (((st_3.[log] :<
        ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_3.(shared)).(e_s2pages))))) ::
          ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_3.(log)))))).[shared].[e_locks] :<
        ((((st_3.(shared)).(e_locks)) # (24 + v_vmid) == None) # S2PAGE_LOCK == None)).[shared].[e_s2pts] :<
        (((st_3.(shared)).(e_s2pts)) # v_vmid == npt'))))
    else (
      (Some ((st_2.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_2.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)))).

  Hint Unfold __kvm_phys_addr_ioremap_spec_mid: spec.

  Lemma f___kvm_phys_addr_ioremap_refine_mid:
    forall v_vmid v_gpa v_pa lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __kvm_phys_addr_ioremap_spec_mid v_vmid v_gpa v_pa hst = Some hst'),
      exists lst', __kvm_phys_addr_ioremap_spec_low v_vmid v_gpa v_pa lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___kvm_phys_addr_ioremap_refine_high:
    forall v_vmid v_gpa v_pa lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __kvm_phys_addr_ioremap_spec v_vmid v_gpa v_pa hst = Some hst'),
      exists lst', __kvm_phys_addr_ioremap_spec_mid v_vmid v_gpa v_pa lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent __kvm_phys_addr_ioremap_spec.
      unfold __kvm_phys_addr_ioremap_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___kvm_phys_addr_ioremap_refine:
    forall v_vmid v_gpa v_pa lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __kvm_phys_addr_ioremap_spec v_vmid v_gpa v_pa hst = Some hst'),
      exists lst', __kvm_phys_addr_ioremap_spec_low v_vmid v_gpa v_pa lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent __kvm_phys_addr_ioremap_spec.
      unfold __kvm_phys_addr_ioremap_spec.
      intros; inv Hrel.
      eapply f___kvm_phys_addr_ioremap_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f___kvm_phys_addr_ioremap_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End MemoryOps___kvm_phys_addr_ioremap_RefProof.

