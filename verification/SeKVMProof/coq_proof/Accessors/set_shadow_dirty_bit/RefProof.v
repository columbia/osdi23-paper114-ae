Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.set_shadow_dirty_bit.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_shadow_dirty_bit_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_shadow_dirty_bit_spec_mid (v_vmid: Z) (v_vcpuid: Z) (v_value: Z) (st: RData) : (option RData) :=
    (anno (((v_vmid << 2) = (4 * v_vmid)));
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    if (v_value =? 0)
    then (
      (anno (((33731152 * 0) = 0));
      (anno (((360 + 0) = 360));
      (anno ((((1808 * ((v_vmid << 2) + v_vcpuid)) + 360) = (8 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 45))));
      (anno (((33555568 + (8 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 45))) = (8 * (4194446 + (1 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 45))))));
      (anno (((v_vmid << 2) = (4 * v_vmid)));
      (anno (((1 * ((226 * ((4 * v_vmid) + v_vcpuid)) + 45)) = ((226 * ((4 * v_vmid) + v_vcpuid)) + 45)));
      (anno (((4194446 + ((226 * ((4 * v_vmid) + v_vcpuid)) + 45)) = ((4194491 + (904 * v_vmid)) + (226 * v_vcpuid))));
      (anno (((8 * ((4194491 + (904 * v_vmid)) + (226 * v_vcpuid))) = ((33555928 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
      (anno (((0 + ((33555928 + (7232 * v_vmid)) + (1808 * v_vcpuid))) = ((33555928 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
      (anno (((((33555928 + (7232 * v_vmid)) + (1808 * v_vcpuid)) - 33555568) = ((360 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
      (anno (((((360 + (7232 * v_vmid)) + (1808 * v_vcpuid)) / 1808) = (((360 + (7232 * v_vmid)) / 1808) + ((1808 * v_vcpuid) / 1808))));
      (anno (((360 + (7232 * v_vmid)) = (8 * (45 + (904 * v_vmid)))));
      (anno (((8 * (45 + (904 * v_vmid))) = (360 + (7232 * v_vmid))));
      (anno ((((360 + (7232 * v_vmid)) / 1808) = ((360 / 1808) + ((7232 * v_vmid) / 1808))));
      (anno ((((1808 * v_vcpuid) / 1808) = v_vcpuid));
      (anno (((((360 / 1808) + ((7232 * v_vmid) / 1808)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
      (Some (st.[priv].[e_shadow_ctxts] :<
        (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< 0)))))))))))))))))))))
    else (
      (anno (((33731152 * 0) = 0));
      (anno (((360 + 0) = 360));
      (anno ((((1808 * ((v_vmid << 2) + v_vcpuid)) + 360) = (8 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 45))));
      (anno (((33555568 + (8 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 45))) = (8 * (4194446 + (1 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 45))))));
      (anno (((v_vmid << 2) = (4 * v_vmid)));
      (anno (((1 * ((226 * ((4 * v_vmid) + v_vcpuid)) + 45)) = ((226 * ((4 * v_vmid) + v_vcpuid)) + 45)));
      (anno (((4194446 + ((226 * ((4 * v_vmid) + v_vcpuid)) + 45)) = ((4194491 + (904 * v_vmid)) + (226 * v_vcpuid))));
      (anno (((8 * ((4194491 + (904 * v_vmid)) + (226 * v_vcpuid))) = ((33555928 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
      (anno (((0 + ((33555928 + (7232 * v_vmid)) + (1808 * v_vcpuid))) = ((33555928 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
      (anno (((((33555928 + (7232 * v_vmid)) + (1808 * v_vcpuid)) - 33555568) = ((360 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
      (anno (((((360 + (7232 * v_vmid)) + (1808 * v_vcpuid)) / 1808) = (((360 + (7232 * v_vmid)) / 1808) + ((1808 * v_vcpuid) / 1808))));
      (anno (((360 + (7232 * v_vmid)) = (8 * (45 + (904 * v_vmid)))));
      (anno (((8 * (45 + (904 * v_vmid))) = (360 + (7232 * v_vmid))));
      (anno ((((360 + (7232 * v_vmid)) / 1808) = ((360 / 1808) + ((7232 * v_vmid) / 1808))));
      (anno ((((1808 * v_vcpuid) / 1808) = v_vcpuid));
      (anno (((((360 / 1808) + ((7232 * v_vmid) / 1808)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
      (Some (st.[priv].[e_shadow_ctxts] :<
        (((st.(priv)).(e_shadow_ctxts)) #
          ((4 * v_vmid) + v_vcpuid) ==
          ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :<
            (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' v_value))))))))))))))))))))))).

  Hint Unfold set_shadow_dirty_bit_spec_mid: spec.

  Lemma f_set_shadow_dirty_bit_refine_mid:
    forall v_vmid v_vcpuid v_value lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_shadow_dirty_bit_spec_mid v_vmid v_vcpuid v_value hst = Some hst'),
      exists lst', set_shadow_dirty_bit_spec_low v_vmid v_vcpuid v_value lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_shadow_dirty_bit_refine_high:
    forall v_vmid v_vcpuid v_value lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_shadow_dirty_bit_spec v_vmid v_vcpuid v_value hst = Some hst'),
      exists lst', set_shadow_dirty_bit_spec_mid v_vmid v_vcpuid v_value lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_shadow_dirty_bit_refine:
    forall v_vmid v_vcpuid v_value lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_shadow_dirty_bit_spec v_vmid v_vcpuid v_value hst = Some hst'),
      exists lst', set_shadow_dirty_bit_spec_low v_vmid v_vcpuid v_value lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_shadow_dirty_bit_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_shadow_dirty_bit_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_set_shadow_dirty_bit_RefProof.

