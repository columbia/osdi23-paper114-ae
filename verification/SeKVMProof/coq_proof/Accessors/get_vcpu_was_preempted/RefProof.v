Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_vcpu_was_preempted.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_vcpu_was_preempted_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_vcpu_was_preempted_spec_mid (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (bool * RData)) :=
    (anno (((v_vmid << 2) = (4 * v_vmid)));
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (anno (((810864 * 0) = 0));
    (anno (((4 + 0) = 4));
    (anno (((352 + 4) = 356));
    (anno ((((9056 * ((v_vmid << 2) + v_vcpuid)) + 356) = (4 * ((2264 * ((v_vmid << 2) + v_vcpuid)) + 89))));
    (anno (((158832 + (4 * ((2264 * ((v_vmid << 2) + v_vcpuid)) + 89))) = (4 * (39708 + (1 * ((2264 * ((v_vmid << 2) + v_vcpuid)) + 89))))));
    (anno (((v_vmid << 2) = (4 * v_vmid)));
    (anno (((1 * ((2264 * ((4 * v_vmid) + v_vcpuid)) + 89)) = ((2264 * ((4 * v_vmid) + v_vcpuid)) + 89)));
    (anno (((39708 + ((2264 * ((4 * v_vmid) + v_vcpuid)) + 89)) = ((39797 + (9056 * v_vmid)) + (2264 * v_vcpuid))));
    (anno (((4 * ((39797 + (9056 * v_vmid)) + (2264 * v_vcpuid))) = ((159188 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
    (anno (((0 + ((159188 + (36224 * v_vmid)) + (9056 * v_vcpuid))) = ((159188 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
    (anno (((((159188 + (36224 * v_vmid)) + (9056 * v_vcpuid)) - 158832) = ((356 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
    (anno (((((356 + (36224 * v_vmid)) + (9056 * v_vcpuid)) / 9056) = (((356 + (36224 * v_vmid)) / 9056) + ((9056 * v_vcpuid) / 9056))));
    (anno (((356 + (36224 * v_vmid)) = (4 * (89 + (9056 * v_vmid)))));
    (anno (((4 * (89 + (9056 * v_vmid))) = (356 + (36224 * v_vmid))));
    (anno ((((356 + (36224 * v_vmid)) / 9056) = ((356 / 9056) + ((36224 * v_vmid) / 9056))));
    (anno ((((9056 * v_vcpuid) / 9056) = v_vcpuid));
    (anno (((((356 / 9056) + ((36224 * v_vmid) / 9056)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
    (Some (((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_was_preempted)) <>? 0), st)))))))))))))))))))).

  Hint Unfold get_vcpu_was_preempted_spec_mid: spec.

  Lemma f_get_vcpu_was_preempted_refine_mid:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_vcpu_was_preempted_spec_mid v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', get_vcpu_was_preempted_spec_low v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_vcpu_was_preempted_refine_high:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_vcpu_was_preempted_spec v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', get_vcpu_was_preempted_spec_mid v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_vcpu_was_preempted_refine:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_vcpu_was_preempted_spec v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', get_vcpu_was_preempted_spec_low v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_vcpu_was_preempted_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_vcpu_was_preempted_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_vcpu_was_preempted_RefProof.

