Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import CtxtSwitch.Layer.
Require Import CtxtSwitch.RefineRel.
Require Import CtxtSwitch.Spec.
Require Import CtxtSwitch.__host_el2_restore_state.LowSpec.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import VCPUOps.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section CtxtSwitch___host_el2_restore_state_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition __host_el2_restore_state_spec_mid (st: RData) : (option RData) :=
    (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :<
      ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # VTTBR_EL2 == ((st.(priv)).(e_host_vttbr))) # HCR_EL2 == 2147483681) # TPIDR_EL2 == 0))).

  Hint Unfold __host_el2_restore_state_spec_mid: spec.

  Lemma f___host_el2_restore_state_refine_mid:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __host_el2_restore_state_spec_mid hst = Some hst'),
      exists lst', __host_el2_restore_state_spec_low lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___host_el2_restore_state_refine_high:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __host_el2_restore_state_spec hst = Some hst'),
      exists lst', __host_el2_restore_state_spec_mid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___host_el2_restore_state_refine:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __host_el2_restore_state_spec hst = Some hst'),
      exists lst', __host_el2_restore_state_spec_low lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f___host_el2_restore_state_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f___host_el2_restore_state_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End CtxtSwitch___host_el2_restore_state_RefProof.

