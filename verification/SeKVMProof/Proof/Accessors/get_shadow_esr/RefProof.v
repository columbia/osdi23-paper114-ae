Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_shadow_esr.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_shadow_esr_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_shadow_esr_spec_mid (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    (anno (((v_vmid << 2) = (4 * v_vmid)));
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (anno (((33731152 * 0) = 0));
    (anno (((1792 + 0) = 1792));
    (anno ((((1808 * ((v_vmid << 2) + v_vcpuid)) + 1792) = (16 * ((113 * ((v_vmid << 2) + v_vcpuid)) + 112))));
    (anno (((33555568 + (16 * ((113 * ((v_vmid << 2) + v_vcpuid)) + 112))) = (16 * (2097223 + (1 * ((113 * ((v_vmid << 2) + v_vcpuid)) + 112))))));
    (anno (((v_vmid << 2) = (4 * v_vmid)));
    (anno (((1 * ((113 * ((4 * v_vmid) + v_vcpuid)) + 112)) = ((113 * ((4 * v_vmid) + v_vcpuid)) + 112)));
    (anno (((2097223 + ((113 * ((4 * v_vmid) + v_vcpuid)) + 112)) = ((2097335 + (452 * v_vmid)) + (113 * v_vcpuid))));
    (anno (((16 * ((2097335 + (452 * v_vmid)) + (113 * v_vcpuid))) = ((33557360 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
    (anno (((0 + ((33557360 + (7232 * v_vmid)) + (1808 * v_vcpuid))) = ((33557360 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
    (anno (((((33557360 + (7232 * v_vmid)) + (1808 * v_vcpuid)) - 33555568) = ((1792 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
    (anno (((((1792 + (7232 * v_vmid)) + (1808 * v_vcpuid)) / 1808) = (((1792 + (7232 * v_vmid)) / 1808) + ((1808 * v_vcpuid) / 1808))));
    (anno (((1792 + (7232 * v_vmid)) = (64 * (28 + (113 * v_vmid)))));
    (anno (((64 * (28 + (113 * v_vmid))) = (1792 + (7232 * v_vmid))));
    (anno ((((1792 + (7232 * v_vmid)) / 1808) = ((1792 / 1808) + ((7232 * v_vmid) / 1808))));
    (anno ((((1808 * v_vcpuid) / 1808) = v_vcpuid));
    (anno (((((1792 / 1808) + ((7232 * v_vmid) / 1808)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
    (Some (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_esr)), st))))))))))))))))))).

  Hint Unfold get_shadow_esr_spec_mid: spec.

  Lemma f_get_shadow_esr_refine_mid:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_shadow_esr_spec_mid v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', get_shadow_esr_spec_low v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_shadow_esr_refine_high:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_shadow_esr_spec v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', get_shadow_esr_spec_mid v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_shadow_esr_refine:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_shadow_esr_spec v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', get_shadow_esr_spec_low v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_shadow_esr_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_shadow_esr_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_shadow_esr_RefProof.

