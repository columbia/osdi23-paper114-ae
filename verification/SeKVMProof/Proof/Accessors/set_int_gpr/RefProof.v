Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.set_int_gpr.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_int_gpr_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_int_gpr_spec_mid (v_vmid: Z) (v_vcpuid: Z) (v_index: Z) (v_value: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 31)));
    (anno (((v_vmid << 2) = (4 * v_vmid)));
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (anno (((810864 * 0) = 0));
    (anno (((v_vmid << 2) = (4 * v_vmid)));
    (anno ((((8 * v_index) + 0) = (8 * v_index)));
    (anno (((0 + (8 * v_index)) = (8 * v_index)));
    (anno (((352 + (48 + (8 * v_index))) = (400 + (8 * v_index))));
    (anno (((158832 + ((9056 * ((4 * v_vmid) + v_vcpuid)) + (400 + (8 * v_index)))) = (((159232 + (36224 * v_vmid)) + (9056 * v_vcpuid)) + (8 * v_index))));
    (anno (((0 + (((159232 + (36224 * v_vmid)) + (9056 * v_vcpuid)) + (8 * v_index))) = (((159232 + (36224 * v_vmid)) + (9056 * v_vcpuid)) + (8 * v_index))));
    (anno ((((((159232 + (36224 * v_vmid)) + (9056 * v_vcpuid)) + (8 * v_index)) - 158832) = (((400 + (36224 * v_vmid)) + (9056 * v_vcpuid)) + (8 * v_index))));
    (anno ((((((((400 + (36224 * v_vmid)) + (9056 * v_vcpuid)) + (8 * v_index)) mod 9056) - 352) - 48) = (8 * v_index)));
    (anno ((((8 * v_index) - 0) = (8 * v_index)));
    (anno ((((8 * v_index) / 8) = v_index));
    (anno (((400 + (36224 * v_vmid)) = (16 * (25 + (2264 * v_vmid)))));
    (anno ((((16 * (25 + (2264 * v_vmid))) + (9056 * v_vcpuid)) = (16 * ((1 * (25 + (2264 * v_vmid))) + (566 * v_vcpuid)))));
    (anno ((((16 * ((1 * (25 + (2264 * v_vmid))) + (566 * v_vcpuid))) + (8 * v_index)) = (8 * ((2 * ((1 * (25 + (2264 * v_vmid))) + (566 * v_vcpuid))) + (1 * v_index)))));
    (anno (((1 * v_index) = v_index));
    (anno (((50 + (4528 * v_vmid)) = (2 * (25 + (2264 * v_vmid)))));
    (anno ((((2 * (25 + (2264 * v_vmid))) + (1132 * v_vcpuid)) = (2 * ((1 * (25 + (2264 * v_vmid))) + (566 * v_vcpuid)))));
    (anno (((1 * (25 + (2264 * v_vmid))) = (25 + (2264 * v_vmid))));
    (anno (((2 * ((25 + (2264 * v_vmid)) + (566 * v_vcpuid))) = ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
    (Some (st.[priv].[e_vcpu_pool] :<
      (((st.(priv)).(e_vcpu_pool)) #
        ((8 * (((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + v_index)) / 9056) ==
        ((((st.(priv)).(e_vcpu_pool)) @ ((8 * (((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + v_index)) / 9056)).[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e__regs] :<
          (((((((((st.(priv)).(e_vcpu_pool)) @ ((8 * (((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + v_index)) / 9056)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) #
            v_index ==
            v_value))))))))))))))))))))))))).

  Hint Unfold set_int_gpr_spec_mid: spec.

  Lemma f_set_int_gpr_refine_mid:
    forall v_vmid v_vcpuid v_index v_value lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_int_gpr_spec_mid v_vmid v_vcpuid v_index v_value hst = Some hst'),
      exists lst', set_int_gpr_spec_low v_vmid v_vcpuid v_index v_value lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_int_gpr_refine_high:
    forall v_vmid v_vcpuid v_index v_value lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_int_gpr_spec v_vmid v_vcpuid v_index v_value hst = Some hst'),
      exists lst', set_int_gpr_spec_mid v_vmid v_vcpuid v_index v_value lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_int_gpr_refine:
    forall v_vmid v_vcpuid v_index v_value lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_int_gpr_spec v_vmid v_vcpuid v_index v_value hst = Some hst'),
      exists lst', set_int_gpr_spec_low v_vmid v_vcpuid v_index v_value lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_int_gpr_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_int_gpr_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_set_int_gpr_RefProof.

