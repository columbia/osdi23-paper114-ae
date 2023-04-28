Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.set_per_cpu_host_regs.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_per_cpu_host_regs_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_per_cpu_host_regs_spec_mid (v_hr: Z) (st: RData) : (option RData) :=
    (anno (((33731152 * 0) = 0));
    (anno (((1776 + 0) = 1776));
    (anno ((((1792 * CPU_ID) + 1776) = (16 * ((112 * CPU_ID) + 111))));
    (anno (((33701504 + (16 * ((112 * CPU_ID) + 111))) = (16 * (2106344 + (1 * ((112 * CPU_ID) + 111))))));
    (anno (((112 * CPU_ID) = 0));
    (anno (((0 + 111) = 111));
    (anno (((1 * 111) = 111));
    (anno (((2106344 + 111) = 2106455));
    (anno (((16 * 2106455) = 33703280));
    (anno (((0 + 33703280) = 33703280));
    (anno (((33703280 - 33701504) = 1776));
    (anno (((1776 / 1792) = 0));
    (Some (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< v_hr)))))))))))))))).

  Hint Unfold set_per_cpu_host_regs_spec_mid: spec.

  Lemma f_set_per_cpu_host_regs_refine_mid:
    forall v_hr lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_per_cpu_host_regs_spec_mid v_hr hst = Some hst'),
      exists lst', set_per_cpu_host_regs_spec_low v_hr lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_per_cpu_host_regs_refine_high:
    forall v_hr lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_per_cpu_host_regs_spec v_hr hst = Some hst'),
      exists lst', set_per_cpu_host_regs_spec_mid v_hr lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_per_cpu_host_regs_refine:
    forall v_hr lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_per_cpu_host_regs_spec v_hr hst = Some hst'),
      exists lst', set_per_cpu_host_regs_spec_low v_hr lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_per_cpu_host_regs_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_per_cpu_host_regs_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_set_per_cpu_host_regs_RefProof.

