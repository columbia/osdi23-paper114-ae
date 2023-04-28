Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import S2PTOps.Layer.
Require Import S2PTOps.RefineRel.
Require Import S2PTOps.Spec.
Require Import S2PTOps.clear_pfn_host.LowSpec.
Require Import S2PTTreeOps.Layer.
Require Import S2PTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTOps_clear_pfn_host_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition clear_pfn_host_spec_mid (v_pfn: Z) (st: RData) : (option RData) :=
    (anno (((0 - 0) = 0));
    when st_2 == ((query_oracle st));
    (anno (((24 + 0) = 24));
    rely (((((st_2.(shared)).(e_locks)) @ 24) = None));
    (anno (((24 + 0) = 24));
    (anno (((0 - (v_pfn << 12)) = ((- 4096) * v_pfn)));
    rely (((((- 4096) * v_pfn) <= 0) /\ (((v_pfn << 12) - MAX_ADDR) <= 0)));
    (anno (((5 + 19) = 24));
    (anno (((24 + 0) = 24));
    rely ((((((st_2.(shared)).(e_s2pts)) @ 0).(e_vttbr)) <> 0));
    if ((s2pt_walk (v_pfn << 12) (((st_2.(shared)).(e_s2pts)) @ 0)) =? 0)
    then (
      (anno (((0 - 0) = 0));
      (anno (((24 + 0) = 24));
      (Some ((st_2.[log] :< ((EVT CPU_ID (REL 24 (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ 0)))) :: ((EVT CPU_ID (ACQ 24)) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # 24 == None))))))
    else (
      (anno (((5 + 19) = 24));
      (anno (((24 + 0) = 24));
      when npt' == ((s2pt_set (v_pfn << 12) 3 144115188075855872 (((st_2.(shared)).(e_s2pts)) @ 0)));
      (anno (((0 - 0) = 0));
      (anno (((24 + 0) = 24));
      (Some (((st_2.[log] :< ((EVT CPU_ID (REL 24 (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ 24)) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # 24 == None)).[shared].[e_s2pts] :<
        (((st_2.(shared)).(e_s2pts)) # 0 == npt')))))))))))))).

  Hint Unfold clear_pfn_host_spec_mid: spec.

  Lemma f_clear_pfn_host_refine_mid:
    forall v_pfn lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: clear_pfn_host_spec_mid v_pfn hst = Some hst'),
      exists lst', clear_pfn_host_spec_low v_pfn lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_clear_pfn_host_refine_high:
    forall v_pfn lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: clear_pfn_host_spec v_pfn hst = Some hst'),
      exists lst', clear_pfn_host_spec_mid v_pfn lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_clear_pfn_host_refine:
    forall v_pfn lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: clear_pfn_host_spec v_pfn hst = Some hst'),
      exists lst', clear_pfn_host_spec_low v_pfn lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_clear_pfn_host_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_clear_pfn_host_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End S2PTOps_clear_pfn_host_RefProof.

