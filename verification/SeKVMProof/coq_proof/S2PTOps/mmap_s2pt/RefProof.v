Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import S2PTOps.Layer.
Require Import S2PTOps.RefineRel.
Require Import S2PTOps.Spec.
Require Import S2PTOps.mmap_s2pt.LowSpec.
Require Import S2PTTreeOps.Layer.
Require Import S2PTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTOps_mmap_s2pt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition mmap_s2pt_spec_mid (v_vmid: Z) (v_addr: Z) (v_level: Z) (v_pte: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
    rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_ADDR) <= 0)));
    (anno (((5 + 19) = 24));
    rely ((((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) <> 0));
    when npt' == ((s2pt_set v_addr v_level v_pte (((st_2.(shared)).(e_s2pts)) @ v_vmid)));
    (Some (((st_2.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
      (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)).[shared].[e_s2pts] :<
      (((st_2.(shared)).(e_s2pts)) # v_vmid == npt')))).

  Hint Unfold mmap_s2pt_spec_mid: spec.

  Lemma f_mmap_s2pt_refine_mid:
    forall v_vmid v_addr v_level v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: mmap_s2pt_spec_mid v_vmid v_addr v_level v_pte hst = Some hst'),
      exists lst', mmap_s2pt_spec_low v_vmid v_addr v_level v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_mmap_s2pt_refine_high:
    forall v_vmid v_addr v_level v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: mmap_s2pt_spec v_vmid v_addr v_level v_pte hst = Some hst'),
      exists lst', mmap_s2pt_spec_mid v_vmid v_addr v_level v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_mmap_s2pt_refine:
    forall v_vmid v_addr v_level v_pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: mmap_s2pt_spec v_vmid v_addr v_level v_pte hst = Some hst'),
      exists lst', mmap_s2pt_spec_low v_vmid v_addr v_level v_pte lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_mmap_s2pt_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_mmap_s2pt_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End S2PTOps_mmap_s2pt_RefProof.

