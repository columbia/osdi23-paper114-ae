Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import GuestExit.Layer.
Require Import GuestExit.RefineRel.
Require Import GuestExit.Spec.
Require Import GuestExit.fixup_guest_exit.LowSpec.
Require Import GuestHandler.Layer.
Require Import GuestHandler.Spec.
Require Import InlineAsms.Spec.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemoryOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section GuestExit_fixup_guest_exit_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition fixup_guest_exit_spec_mid (v_vmid: Z) (v_vcpuid: Z) (v_exit_code: Z) (st: RData) : (option (bool * RData)) :=
    if ((v_exit_code & 2147483647) =? 0)
    then (
      if (v_exit_code =? 2)
      then (
        (anno (((0 & 3959422976) = 0));
        (anno (((0 >> 26) = 0));
        (Some (false, st)))))
      else (Some (false, st)))
    else (
      rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
      if (v_exit_code =? 2)
      then (
        if ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2) >> 26) =? 22)
        then (
          if ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0) =? 532480)
          then (
            when st_4 == (
                (v_revoke_stage2_sg_gpa_spec
                  v_vmid 
                  (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 1) 
                  (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 2) 
                  ((st.[priv].[e_shadow_ctxts] :<
                    (((st.(priv)).(e_shadow_ctxts)) #
                      ((4 * v_vmid) + v_vcpuid) ==
                      ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_esr] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2)))).[priv].[e_vcpu_pool] :<
                    (((st.(priv)).(e_vcpu_pool)) #
                      ((4 * v_vmid) + v_vcpuid) ==
                      ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_fault].[e_esr_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2))))));
            (Some (true, st_4)))
          else (
            if ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0) =? 528384)
            then (
              when st_4 == (
                  (v_grant_stage2_sg_gpa_spec
                    v_vmid 
                    (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 1) 
                    (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 2) 
                    ((st.[priv].[e_shadow_ctxts] :<
                      (((st.(priv)).(e_shadow_ctxts)) #
                        ((4 * v_vmid) + v_vcpuid) ==
                        ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_esr] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2)))).[priv].[e_vcpu_pool] :<
                      (((st.(priv)).(e_vcpu_pool)) #
                        ((4 * v_vmid) + v_vcpuid) ==
                        ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_fault].[e_esr_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2))))));
              (Some (true, st_4)))
            else (
              (anno (((- 22) = (- 22)));
              (Some (
                false  ,
                ((st.[priv].[e_shadow_ctxts] :<
                  (((st.(priv)).(e_shadow_ctxts)) #
                    ((4 * v_vmid) + v_vcpuid) ==
                    ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_esr] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2)))).[priv].[e_vcpu_pool] :<
                  (((st.(priv)).(e_vcpu_pool)) #
                    ((4 * v_vmid) + v_vcpuid) ==
                    ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_fault].[e_esr_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2))))
              ))))))
        else (
          if ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2) & 3959422976) =? 2147483648)
          then (
            (anno (((v_vmid * VCPU_PER_VM) = (4 * v_vmid)));
            (Some (
              false  ,
              ((st.[priv].[e_shadow_ctxts] :<
                (((st.(priv)).(e_shadow_ctxts)) #
                  ((4 * v_vmid) + v_vcpuid) ==
                  ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_esr] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2)).[e_far_el2] :<
                    (((st.(priv)).(e_cpu_regs)).(e_far_el2))).[e_hpfar] :<
                    ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ HPFAR_EL2)))).[priv].[e_vcpu_pool] :<
                (((st.(priv)).(e_vcpu_pool)) #
                  ((4 * v_vmid) + v_vcpuid) ==
                  ((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_fault].[e__far_el2] :< (((st.(priv)).(e_cpu_regs)).(e_far_el2))).[e___arch].[e_fault].[e_esr_el2] :<
                    ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2)).[e___arch].[e_fault].[e_hpfar_el2] :<
                    ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ HPFAR_EL2))))
            ))))
          else (
            if ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2) >> 26) =? 24)
            then (
              (Some (
                true  ,
                (((st.[priv].[e_cpu_regs].[e_sysregs_el2] :<
                  ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # ELR_EL2 == (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ELR_EL2) + 4))).[priv].[e_shadow_ctxts] :<
                  (((st.(priv)).(e_shadow_ctxts)) #
                    ((4 * v_vmid) + v_vcpuid) ==
                    ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_esr] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2)))).[priv].[e_vcpu_pool] :<
                  (((st.(priv)).(e_vcpu_pool)) #
                    ((4 * v_vmid) + v_vcpuid) ==
                    ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_fault].[e_esr_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2))))
              )))
            else (
              (Some (
                false  ,
                ((st.[priv].[e_shadow_ctxts] :<
                  (((st.(priv)).(e_shadow_ctxts)) #
                    ((4 * v_vmid) + v_vcpuid) ==
                    ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_esr] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2)))).[priv].[e_vcpu_pool] :<
                  (((st.(priv)).(e_vcpu_pool)) #
                    ((4 * v_vmid) + v_vcpuid) ==
                    ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_fault].[e_esr_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2))))
              ))))))
      else (
        (Some (
          false  ,
          ((st.[priv].[e_shadow_ctxts] :<
            (((st.(priv)).(e_shadow_ctxts)) #
              ((4 * v_vmid) + v_vcpuid) ==
              ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_esr] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2)))).[priv].[e_vcpu_pool] :<
            (((st.(priv)).(e_vcpu_pool)) #
              ((4 * v_vmid) + v_vcpuid) ==
              ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_fault].[e_esr_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2))))
        )))).

  Hint Unfold fixup_guest_exit_spec_mid: spec.

  Lemma f_fixup_guest_exit_refine_mid:
    forall v_vmid v_vcpuid v_exit_code lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: fixup_guest_exit_spec_mid v_vmid v_vcpuid v_exit_code hst = Some (res, hst')),
      exists lst', fixup_guest_exit_spec_low v_vmid v_vcpuid v_exit_code lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_fixup_guest_exit_refine_high:
    forall v_vmid v_vcpuid v_exit_code lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: fixup_guest_exit_spec v_vmid v_vcpuid v_exit_code hst = Some (res, hst')),
      exists lst', fixup_guest_exit_spec_mid v_vmid v_vcpuid v_exit_code lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_fixup_guest_exit_refine:
    forall v_vmid v_vcpuid v_exit_code lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: fixup_guest_exit_spec v_vmid v_vcpuid v_exit_code hst = Some (res, hst')),
      exists lst', fixup_guest_exit_spec_low v_vmid v_vcpuid v_exit_code lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_fixup_guest_exit_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_fixup_guest_exit_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End GuestExit_fixup_guest_exit_RefProof.

