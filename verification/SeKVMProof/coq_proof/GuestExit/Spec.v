Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section GuestExit_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition fixup_guest_exit_spec (v_vmid: Z) (v_vcpuid: Z) (v_exit_code: Z) (st: RData) : (option (bool * RData)) :=
    if ((v_exit_code & 2147483647) =? 0)
    then (
      if (v_exit_code =? 2)
      then (Some (false, st))
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
              (Some (
                false  ,
                ((st.[priv].[e_shadow_ctxts] :<
                  (((st.(priv)).(e_shadow_ctxts)) #
                    ((4 * v_vmid) + v_vcpuid) ==
                    ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_esr] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2)))).[priv].[e_vcpu_pool] :<
                  (((st.(priv)).(e_vcpu_pool)) #
                    ((4 * v_vmid) + v_vcpuid) ==
                    ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_fault].[e_esr_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2))))
              )))))
        else (
          if ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2) & 3959422976) =? 2147483648)
          then (
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
            )))
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

End GuestExit_Spec.

#[global] Hint Unfold fixup_guest_exit_spec: spec.
