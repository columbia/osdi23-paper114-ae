Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import SmmuOps.Layer.
Require Import VCPUOpsAux.Layer.
Require Import VCPUOpsAux.RefineRel.
Require Import VCPUOpsAux.Spec.
Require Import VCPUOpsAux.v_update_exception_gp_regs.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUOpsAux_v_update_exception_gp_regs_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition v_update_exception_gp_regs_spec_mid (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    (anno (((0 - 33) = (- 33)));
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (anno (((0 - 35) = (- 35)));
    (anno (((0 - 32) = (- 32)));
    (anno (((0 - 33) = (- 33)));
    (anno (((0 - 8) = (- 8)));
    (anno (((- 47) = (- 47)));
    (anno (((51 + (- 47)) = 4));
    (anno (((0 - 4) = (- 4)));
    (anno (((51 - 47) = 4));
    (Some (st.[priv].[e_shadow_ctxts] :<
      (((st.(priv)).(e_shadow_ctxts)) #
        ((4 * v_vmid) + v_vcpuid) ==
        (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_regs] :<
          ((((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) # 35 == (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 32)) #
            32 ==
            0) #
            33 ==
            11) #
            8 ==
            (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 33))).[e_sys_regs] :<
          (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_sys_regs)) # 4 == 0)))))))))))))).

  Hint Unfold v_update_exception_gp_regs_spec_mid: spec.

  Lemma f_v_update_exception_gp_regs_refine_mid:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_update_exception_gp_regs_spec_mid v_vmid v_vcpuid hst = Some hst'),
      exists lst', v_update_exception_gp_regs_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_update_exception_gp_regs_refine_high:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_update_exception_gp_regs_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', v_update_exception_gp_regs_spec_mid v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_update_exception_gp_regs_refine:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_update_exception_gp_regs_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', v_update_exception_gp_regs_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_v_update_exception_gp_regs_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_v_update_exception_gp_regs_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VCPUOpsAux_v_update_exception_gp_regs_RefProof.

