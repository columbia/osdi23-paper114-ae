Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.set_vcpu_esr_el2.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_vcpu_esr_el2_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vcpu_esr_el2_spec_mid (v_vmid: Z) (v_vcpuid: Z) (v_esr_el2: Z) (st: RData) : (option RData) :=
    (anno (((v_vmid << 2) = (4 * v_vmid)));
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (anno (((810864 * 0) = 0));
    (anno (((0 + 0) = 0));
    (anno (((1840 + 0) = 1840));
    (anno (((352 + 1840) = 2192));
    (anno ((((9056 * ((v_vmid << 2) + v_vcpuid)) + 2192) = (16 * ((566 * ((v_vmid << 2) + v_vcpuid)) + 137))));
    (anno (((158832 + (16 * ((566 * ((v_vmid << 2) + v_vcpuid)) + 137))) = (16 * (9927 + (1 * ((566 * ((v_vmid << 2) + v_vcpuid)) + 137))))));
    (anno (((v_vmid << 2) = (4 * v_vmid)));
    (anno (((1 * ((566 * ((4 * v_vmid) + v_vcpuid)) + 137)) = ((566 * ((4 * v_vmid) + v_vcpuid)) + 137)));
    (anno (((9927 + ((566 * ((4 * v_vmid) + v_vcpuid)) + 137)) = ((10064 + (2264 * v_vmid)) + (566 * v_vcpuid))));
    (anno (((16 * ((10064 + (2264 * v_vmid)) + (566 * v_vcpuid))) = ((161024 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
    (anno (((0 + ((161024 + (36224 * v_vmid)) + (9056 * v_vcpuid))) = ((161024 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
    (anno (((((161024 + (36224 * v_vmid)) + (9056 * v_vcpuid)) - 158832) = ((2192 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
    (anno (((((2192 + (36224 * v_vmid)) + (9056 * v_vcpuid)) / 9056) = (((2192 + (36224 * v_vmid)) / 9056) + ((9056 * v_vcpuid) / 9056))));
    (anno (((2192 + (36224 * v_vmid)) = (16 * (137 + (2264 * v_vmid)))));
    (anno (((16 * (137 + (2264 * v_vmid))) = (2192 + (36224 * v_vmid))));
    (anno ((((2192 + (36224 * v_vmid)) / 9056) = ((2192 / 9056) + ((36224 * v_vmid) / 9056))));
    (anno ((((9056 * v_vcpuid) / 9056) = v_vcpuid));
    (anno (((((2192 / 9056) + ((36224 * v_vmid) / 9056)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
    (Some (st.[priv].[e_vcpu_pool] :<
      (((st.(priv)).(e_vcpu_pool)) #
        ((4 * v_vmid) + v_vcpuid) ==
        ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_fault].[e_esr_el2] :< v_esr_el2))))))))))))))))))))))).

  Hint Unfold set_vcpu_esr_el2_spec_mid: spec.

  Lemma f_set_vcpu_esr_el2_refine_mid:
    forall v_vmid v_vcpuid v_esr_el2 lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vcpu_esr_el2_spec_mid v_vmid v_vcpuid v_esr_el2 hst = Some hst'),
      exists lst', set_vcpu_esr_el2_spec_low v_vmid v_vcpuid v_esr_el2 lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_vcpu_esr_el2_refine_high:
    forall v_vmid v_vcpuid v_esr_el2 lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vcpu_esr_el2_spec v_vmid v_vcpuid v_esr_el2 hst = Some hst'),
      exists lst', set_vcpu_esr_el2_spec_mid v_vmid v_vcpuid v_esr_el2 lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_vcpu_esr_el2_refine:
    forall v_vmid v_vcpuid v_esr_el2 lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vcpu_esr_el2_spec v_vmid v_vcpuid v_esr_el2 hst = Some hst'),
      exists lst', set_vcpu_esr_el2_spec_low v_vmid v_vcpuid v_esr_el2 lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_vcpu_esr_el2_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_vcpu_esr_el2_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_set_vcpu_esr_el2_RefProof.

