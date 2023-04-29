Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_vcpu_state.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_vcpu_state_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_vcpu_state_spec_mid (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vcpuid) <= 0) /\ (v_vcpuid < 4)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    (anno (((33731152 * 0) = 0));
    (anno (((12 + 0) = 12));
    (anno ((((24 * v_vcpuid) + 12) = (12 * ((2 * v_vcpuid) + 1))));
    (anno (((528 + (12 * ((2 * v_vcpuid) + 1))) = (12 * (44 + (1 * ((2 * v_vcpuid) + 1))))));
    (anno ((((768 * v_vmid) + (12 * (44 + (1 * ((2 * v_vcpuid) + 1))))) = (12 * ((64 * v_vmid) + (1 * (44 + (1 * ((2 * v_vcpuid) + 1))))))));
    (anno (((33686424 + (12 * ((64 * v_vmid) + (1 * (44 + (1 * ((2 * v_vcpuid) + 1))))))) = (12 * (2807202 + (1 * ((64 * v_vmid) + (1 * (44 + (1 * ((2 * v_vcpuid) + 1))))))))));
    (anno (((1 * ((2 * v_vcpuid) + 1)) = ((2 * v_vcpuid) + 1)));
    (anno (((44 + ((2 * v_vcpuid) + 1)) = (45 + (2 * v_vcpuid))));
    (anno (((1 * (45 + (2 * v_vcpuid))) = (45 + (2 * v_vcpuid))));
    (anno (((1 * ((64 * v_vmid) + (45 + (2 * v_vcpuid)))) = ((64 * v_vmid) + (45 + (2 * v_vcpuid)))));
    (anno (((2807202 + ((64 * v_vmid) + (45 + (2 * v_vcpuid)))) = ((2807247 + (64 * v_vmid)) + (2 * v_vcpuid))));
    (anno (((12 * ((2807247 + (64 * v_vmid)) + (2 * v_vcpuid))) = ((33686964 + (768 * v_vmid)) + (24 * v_vcpuid))));
    (anno (((0 + ((33686964 + (768 * v_vmid)) + (24 * v_vcpuid))) = ((33686964 + (768 * v_vmid)) + (24 * v_vcpuid))));
    (anno (((((33686964 + (768 * v_vmid)) + (24 * v_vcpuid)) - 33686424) = ((540 + (768 * v_vmid)) + (24 * v_vcpuid))));
    (anno (((((540 + (768 * v_vmid)) + (24 * v_vcpuid)) / 768) = v_vmid));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (anno (((((540 + (768 * v_vmid)) + (24 * v_vcpuid)) / 768) = v_vmid));
    (anno (((1 * ((2 * v_vcpuid) + 1)) = ((2 * v_vcpuid) + 1)));
    (anno (((44 + ((2 * v_vcpuid) + 1)) = (45 + (2 * v_vcpuid))));
    (anno (((1 * (45 + (2 * v_vcpuid))) = (45 + (2 * v_vcpuid))));
    (anno (((1 * ((64 * v_vmid) + (45 + (2 * v_vcpuid)))) = ((64 * v_vmid) + (45 + (2 * v_vcpuid)))));
    (anno (((2807202 + ((64 * v_vmid) + (45 + (2 * v_vcpuid)))) = ((2807247 + (64 * v_vmid)) + (2 * v_vcpuid))));
    (anno (((12 * ((2807247 + (64 * v_vmid)) + (2 * v_vcpuid))) = ((33686964 + (768 * v_vmid)) + (24 * v_vcpuid))));
    (anno (((0 + ((33686964 + (768 * v_vmid)) + (24 * v_vcpuid))) = ((33686964 + (768 * v_vmid)) + (24 * v_vcpuid))));
    (anno (((((33686964 + (768 * v_vmid)) + (24 * v_vcpuid)) - 33686424) = ((540 + (768 * v_vmid)) + (24 * v_vcpuid))));
    (anno (((((((540 + (768 * v_vmid)) + (24 * v_vcpuid)) mod 768) - 528) / 24) = v_vcpuid));
    (Some (((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpuid).(e_state)), st))))))))))))))))))))))))))).

  Hint Unfold get_vcpu_state_spec_mid: spec.

  Lemma f_get_vcpu_state_refine_mid:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_vcpu_state_spec_mid v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', get_vcpu_state_spec_low v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_vcpu_state_refine_high:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_vcpu_state_spec v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', get_vcpu_state_spec_mid v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_vcpu_state_refine:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_vcpu_state_spec v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', get_vcpu_state_spec_low v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_vcpu_state_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_vcpu_state_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_vcpu_state_RefProof.

