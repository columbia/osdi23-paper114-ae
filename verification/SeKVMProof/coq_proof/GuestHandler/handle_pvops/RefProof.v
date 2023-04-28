Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import CtxtSwitch.Layer.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import GuestHandler.Layer.
Require Import GuestHandler.RefineRel.
Require Import GuestHandler.Spec.
Require Import GuestHandler.handle_pvops.LowSpec.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemoryOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section GuestHandler_handle_pvops_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_pvops_spec_mid (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    (anno (((0 - 0) = 0));
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (anno (((0 - 1) = (- 1)));
    (anno (((0 - 2) = (- 2)));
    if ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0) =? 532480)
    then (
      when st_3 == (
          (v_revoke_stage2_sg_gpa_spec
            v_vmid 
            (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 1) 
            (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 2) 
            st));
      (Some (1, st_3)))
    else (
      if ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0) =? 528384)
      then (
        when st_3 == (
            (v_grant_stage2_sg_gpa_spec
              v_vmid 
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 1) 
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 2) 
              st));
        (Some (1, st_3)))
      else (Some ((- 22), st)))))).

  Hint Unfold handle_pvops_spec_mid: spec.

  Lemma f_handle_pvops_refine_mid:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: handle_pvops_spec_mid v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', handle_pvops_spec_low v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_pvops_refine_high:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: handle_pvops_spec v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', handle_pvops_spec_mid v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_pvops_refine:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: handle_pvops_spec v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', handle_pvops_spec_low v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_handle_pvops_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_handle_pvops_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End GuestHandler_handle_pvops_RefProof.

