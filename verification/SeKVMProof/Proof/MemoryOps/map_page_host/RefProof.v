Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemoryOps.Layer.
Require Import MemoryOps.RefineRel.
Require Import MemoryOps.Spec.
Require Import MemoryOps.map_page_host.LowSpec.
Require Import PageManager.Spec.
Require Import S2PTOps.Spec.
Require Import S2PTTreeOps.Spec.
Require Import VMOpsAux.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemoryOps_map_page_host_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition map_page_host_spec_mid (v_addr: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    rely ((((0 - (v_addr >> 12)) <= 0) /\ (((v_addr >> 12) - MAX_PFN) <= 0)));
    if (((((st_2.(shared)).(e_s2pages)) @ (v_addr >> 12)).(e_vmid)) =? (- 1))
    then (
      (anno (((0 - 0) = 0));
      when st_4 == (
          (query_oracle
            ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))));
      (anno (((24 + 0) = 24));
      rely (((((st_4.(shared)).(e_locks)) @ 24) = None));
      rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_ADDR) <= 0)));
      rely ((((((st_4.(shared)).(e_s2pts)) @ 0).(e_vttbr)) <> 0));
      when npt' == ((s2pt_set v_addr 3 ((v_addr & 18446744073709547520) + 18014398509483975) (((st_4.(shared)).(e_s2pts)) @ 0)));
      (anno (((24 + 0) = 24));
      rely ((((((st_4.(shared)).(e_locks)) # 24 == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
      (Some (((st_4.[log] :<
        ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_4.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (REL 24 (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ 24)) :: (st_4.(log)))))).[shared].[e_locks] :<
        ((((st_4.(shared)).(e_locks)) # 24 == None) # S2PAGE_LOCK == None)).[shared].[e_s2pts] :<
        (((st_4.(shared)).(e_s2pts)) # 0 == npt')))))))
    else (
      (anno (((0 - 0) = 0));
      when st_4 == (
          (query_oracle
            ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))));
      (anno (((24 + 0) = 24));
      rely (((((st_4.(shared)).(e_locks)) @ 24) = None));
      rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_ADDR) <= 0)));
      rely ((((((st_4.(shared)).(e_s2pts)) @ 0).(e_vttbr)) <> 0));
      when npt' == ((s2pt_set v_addr 3 (v_addr |' 4095) (((st_4.(shared)).(e_s2pts)) @ 0)));
      (anno (((24 + 0) = 24));
      if (
        if (((((st_2.(shared)).(e_s2pages)) @ (v_addr >> 12)).(e_vmid)) =? 0)
        then true
        else (((((st_2.(shared)).(e_s2pages)) @ (v_addr >> 12)).(e_count)) <>? 0))
      then (
        rely ((((((st_4.(shared)).(e_locks)) # 24 == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
        (Some (((st_4.[log] :<
          ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_4.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (REL 24 (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ 24)) :: (st_4.(log)))))).[shared].[e_locks] :<
          ((((st_4.(shared)).(e_locks)) # 24 == None) # S2PAGE_LOCK == None)).[shared].[e_s2pts] :<
          (((st_4.(shared)).(e_s2pts)) # 0 == npt'))))
      else None)))).

  Hint Unfold map_page_host_spec_mid: spec.

  Lemma f_map_page_host_refine_mid:
    forall v_addr lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: map_page_host_spec_mid v_addr hst = Some hst'),
      exists lst', map_page_host_spec_low v_addr lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_map_page_host_refine_high:
    forall v_addr lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: map_page_host_spec v_addr hst = Some hst'),
      exists lst', map_page_host_spec_mid v_addr lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent map_page_host_spec.
      unfold map_page_host_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_map_page_host_refine:
    forall v_addr lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: map_page_host_spec v_addr hst = Some hst'),
      exists lst', map_page_host_spec_low v_addr lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent map_page_host_spec.
      unfold map_page_host_spec.
      intros; inv Hrel.
      eapply f_map_page_host_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_map_page_host_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End MemoryOps_map_page_host_RefProof.

