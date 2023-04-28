Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_int_pc.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_int_pc_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_int_pc_spec_mid (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    (anno (((v_vmid << 2) = (4 * v_vmid)));
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (anno (((810864 * 0) = 0));
    (anno (((256 + 0) = 256));
    (anno (((0 + 256) = 256));
    (anno (((48 + 256) = 304));
    (anno (((352 + 304) = 656));
    (anno ((((9056 * ((v_vmid << 2) + v_vcpuid)) + 656) = (16 * ((566 * ((v_vmid << 2) + v_vcpuid)) + 41))));
    (anno (((158832 + (16 * ((566 * ((v_vmid << 2) + v_vcpuid)) + 41))) = (16 * (9927 + (1 * ((566 * ((v_vmid << 2) + v_vcpuid)) + 41))))));
    (anno (((v_vmid << 2) = (4 * v_vmid)));
    (anno (((1 * ((566 * ((4 * v_vmid) + v_vcpuid)) + 41)) = ((566 * ((4 * v_vmid) + v_vcpuid)) + 41)));
    (anno (((9927 + ((566 * ((4 * v_vmid) + v_vcpuid)) + 41)) = ((9968 + (2264 * v_vmid)) + (566 * v_vcpuid))));
    (anno (((16 * ((9968 + (2264 * v_vmid)) + (566 * v_vcpuid))) = ((159488 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
    (anno (((0 + ((159488 + (36224 * v_vmid)) + (9056 * v_vcpuid))) = ((159488 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
    (anno (((((159488 + (36224 * v_vmid)) + (9056 * v_vcpuid)) - 158832) = ((656 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
    (anno (((((656 + (36224 * v_vmid)) + (9056 * v_vcpuid)) / 9056) = (((656 + (36224 * v_vmid)) / 9056) + ((9056 * v_vcpuid) / 9056))));
    (anno (((656 + (36224 * v_vmid)) = (16 * (41 + (2264 * v_vmid)))));
    (anno (((16 * (41 + (2264 * v_vmid))) = (656 + (36224 * v_vmid))));
    (anno ((((656 + (36224 * v_vmid)) / 9056) = ((656 / 9056) + ((36224 * v_vmid) / 9056))));
    (anno ((((9056 * v_vcpuid) / 9056) = v_vcpuid));
    (anno (((((656 / 9056) + ((36224 * v_vmid) / 9056)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
    (Some (((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e_pc)), st)))))))))))))))))))))).

  Hint Unfold get_int_pc_spec_mid: spec.

  Lemma f_get_int_pc_refine_mid:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_int_pc_spec_mid v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', get_int_pc_spec_low v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_int_pc_refine_high:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_int_pc_spec v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', get_int_pc_spec_mid v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_int_pc_refine:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_int_pc_spec v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', get_int_pc_spec_low v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_int_pc_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_int_pc_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_int_pc_RefProof.

