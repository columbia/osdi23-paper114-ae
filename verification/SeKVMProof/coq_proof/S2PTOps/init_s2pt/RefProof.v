Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import S2PTOps.Layer.
Require Import S2PTOps.RefineRel.
Require Import S2PTOps.Spec.
Require Import S2PTOps.init_s2pt.LowSpec.
Require Import S2PTTreeOps.Layer.
Require Import S2PTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTOps_init_s2pt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition init_s2pt_spec_mid (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
    if (v_vmid <? 18)
    then (
      if (((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) =? 0)
      then (
        (Some (((st_2.[log] :<
          ((EVT
            CPU_ID 
            (REL
              (24 + v_vmid) 
              (S2PT_STATE ((((st_2.(shared)).(e_s2pts)) @ v_vmid).[e_vttbr] :< (((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) |' ((v_vmid & 255) << 48)))))) ::
            ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)).[shared].[e_s2pts] :<
          (((st_2.(shared)).(e_s2pts)) #
            v_vmid ==
            ((((st_2.(shared)).(e_s2pts)) @ v_vmid).[e_vttbr] :< (((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) |' ((v_vmid & 255) << 48)))))))
      else (
        (Some ((st_2.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)))))
    else (
      if (((((st_2.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ TTBR0_EL2) =? 0)
      then (
        (Some (((st_2.[log] :<
          ((EVT
            CPU_ID 
            (REL
              (24 + v_vmid) 
              (S2PT_STATE ((((st_2.(shared)).(e_s2pts)) @ v_vmid).[e_vttbr] :< (((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) |' ((v_vmid & 255) << 48)))))) ::
            ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)).[shared].[e_s2pts] :<
          (((st_2.(shared)).(e_s2pts)) #
            v_vmid ==
            ((((st_2.(shared)).(e_s2pts)) @ v_vmid).[e_vttbr] :< (((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) |' ((v_vmid & 255) << 48)))))))
      else (
        (Some ((st_2.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None))))).

  Hint Unfold init_s2pt_spec_mid: spec.

  Lemma f_init_s2pt_refine_mid:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: init_s2pt_spec_mid v_vmid hst = Some hst'),
      exists lst', init_s2pt_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_init_s2pt_refine_high:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: init_s2pt_spec v_vmid hst = Some hst'),
      exists lst', init_s2pt_spec_mid v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_init_s2pt_refine:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: init_s2pt_spec v_vmid hst = Some hst'),
      exists lst', init_s2pt_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_init_s2pt_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_init_s2pt_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End S2PTOps_init_s2pt_RefProof.

