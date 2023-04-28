Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import VCPUOpsAux.Layer.
Require Import VCPUPrep.Layer.
Require Import VCPUPrep.RefineRel.
Require Import VCPUPrep.Spec.
Require Import VCPUPrep.prep_wfx.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUPrep_prep_wfx_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition prep_wfx_spec_mid (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (st.[priv].[e_shadow_ctxts] :<
      (((st.(priv)).(e_shadow_ctxts)) #
        ((4 * v_vmid) + v_vcpuid) ==
        ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :<
          (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' 4294967296))))).

  Hint Unfold prep_wfx_spec_mid: spec.

  Lemma f_prep_wfx_refine_mid:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prep_wfx_spec_mid v_vmid v_vcpuid hst = Some hst'),
      exists lst', prep_wfx_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_prep_wfx_refine_high:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prep_wfx_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', prep_wfx_spec_mid v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_prep_wfx_refine:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prep_wfx_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', prep_wfx_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_prep_wfx_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_prep_wfx_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VCPUPrep_prep_wfx_RefProof.

