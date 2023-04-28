Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import S2PTTreeOps.Layer.
Require Import S2PTTreeOps.RefineRel.
Require Import S2PTTreeOps.Spec.
Require Import S2PTTreeOps.init_npt.LowSpec.
Require Import S2PTWalk.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTTreeOps_init_npt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition init_npt_spec_mid (v_vmid: Z) (st: RData) : (option RData) :=
    if (v_vmid <? 18)
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
      if (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) =? 0)
      then (
        (Some (st.[shared].[e_s2pts] :<
          (((st.(shared)).(e_s2pts)) #
            v_vmid ==
            ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_vttbr] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) |' ((v_vmid & 255) << 48)))))))
      else (Some st))
    else (
      if (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ TTBR0_EL2) =? 0)
      then (
        rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
        rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
        (Some (st.[shared].[e_s2pts] :<
          (((st.(shared)).(e_s2pts)) #
            v_vmid ==
            ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_vttbr] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) |' ((v_vmid & 255) << 48)))))))
      else (Some st)).

  Hint Unfold init_npt_spec_mid: spec.

  Lemma f_init_npt_refine_mid:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: init_npt_spec_mid v_vmid hst = Some hst'),
      exists lst', init_npt_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_init_npt_refine_high:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: init_npt_spec v_vmid hst = Some hst'),
      exists lst', init_npt_spec_mid v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_init_npt_refine:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: init_npt_spec v_vmid hst = Some hst'),
      exists lst', init_npt_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_init_npt_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_init_npt_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End S2PTTreeOps_init_npt_RefProof.

