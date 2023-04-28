Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import VCPUOpsAux.Layer.
Require Import VCPUPrep.Layer.
Require Import VCPUPrep.RefineRel.
Require Import VCPUPrep.Spec.
Require Import VCPUPrep.prep_abort.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUPrep_prep_abort_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition prep_abort_spec_mid (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    if ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_hpfar)) & 72057594033733632) =? 0)
    then (
      if ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) & 192) =? 0)
      then (
        if ((1 << ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31)) =? 0)
        then (
          (Some (st.[priv].[e_shadow_ctxts] :<
            (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< 0)))))
        else (
          (Some (st.[priv].[e_shadow_ctxts] :<
            (((st.(priv)).(e_shadow_ctxts)) #
              ((4 * v_vmid) + v_vcpuid) ==
              ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :<
                ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' 4294967296) |'
                  (1 << ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31)))))))))
      else (
        rely (((((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31) <? 41) = true));
        rely (
          (((0 - ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31)) <= 0) /\
            (((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31) < 41)));
        rely (
          (((0 - ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31)) <= 0) /\
            (((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31) < 31)));
        (anno (((50 + (4528 * v_vmid)) = (2 * (25 + (2264 * v_vmid)))));
        (anno ((((2 * (25 + (2264 * v_vmid))) + (1132 * v_vcpuid)) = (2 * ((1 * (25 + (2264 * v_vmid))) + (566 * v_vcpuid)))));
        (anno (((1 * (25 + (2264 * v_vmid))) = (25 + (2264 * v_vmid))));
        (anno (((2 * ((25 + (2264 * v_vmid)) + (566 * v_vcpuid))) = ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
        (anno (
          (((8 *
            (((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31))) /
            9056) =
            ((4 * v_vmid) + v_vcpuid)));
        (Some ((st.[priv].[e_shadow_ctxts] :<
          (((st.(priv)).(e_shadow_ctxts)) #
            ((4 * v_vmid) + v_vcpuid) ==
            ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :<
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' 4294967296)))).[priv].[e_vcpu_pool] :<
          (((st.(priv)).(e_vcpu_pool)) #
            ((4 * v_vmid) + v_vcpuid) ==
            ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e__regs] :<
              (((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) #
                ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31) ==
                (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31))))))))))))))
    else (Some st).

  Hint Unfold prep_abort_spec_mid: spec.

  Lemma f_prep_abort_refine_mid:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prep_abort_spec_mid v_vmid v_vcpuid hst = Some hst'),
      exists lst', prep_abort_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_prep_abort_refine_high:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prep_abort_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', prep_abort_spec_mid v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent prep_abort_spec.
      unfold prep_abort_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_prep_abort_refine:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prep_abort_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', prep_abort_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent prep_abort_spec.
      unfold prep_abort_spec.
      intros; inv Hrel.
      eapply f_prep_abort_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_prep_abort_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VCPUPrep_prep_abort_RefProof.

