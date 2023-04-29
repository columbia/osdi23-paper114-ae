Require Import Bottom.Layer.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import InlineAsms.RefineRel.
Require Import InlineAsms.Spec.
Require Import InlineAsms.iasm_get_far_el2.LowSpec.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section InlineAsms_iasm_get_far_el2_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition iasm_get_far_el2_spec_mid (st: RData) : (option (Z * RData)) :=
    (Some (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2), st)).

  Hint Unfold iasm_get_far_el2_spec_mid: spec.

  Lemma f_iasm_get_far_el2_refine_mid:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: iasm_get_far_el2_spec_mid hst = Some (res, hst')),
      exists lst', iasm_get_far_el2_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_iasm_get_far_el2_refine_high:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: iasm_get_far_el2_spec hst = Some (res, hst')),
      exists lst', iasm_get_far_el2_spec_mid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_iasm_get_far_el2_refine:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: iasm_get_far_el2_spec hst = Some (res, hst')),
      exists lst', iasm_get_far_el2_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_iasm_get_far_el2_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_iasm_get_far_el2_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End InlineAsms_iasm_get_far_el2_RefProof.

