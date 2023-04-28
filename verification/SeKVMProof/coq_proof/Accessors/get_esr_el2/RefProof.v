Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_esr_el2.LowSpec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import InlineAsms.Spec.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_esr_el2_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_esr_el2_spec_mid (st: RData) : (option (Z * RData)) :=
    (Some (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2), st)).

  Hint Unfold get_esr_el2_spec_mid: spec.

  Lemma f_get_esr_el2_refine_mid:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_esr_el2_spec_mid hst = Some (res, hst')),
      exists lst', get_esr_el2_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_esr_el2_refine_high:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_esr_el2_spec hst = Some (res, hst')),
      exists lst', get_esr_el2_spec_mid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_esr_el2_refine:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_esr_el2_spec hst = Some (res, hst')),
      exists lst', get_esr_el2_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_esr_el2_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_esr_el2_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_esr_el2_RefProof.

