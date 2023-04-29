Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section CtxtSwitch_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition __host_el2_restore_state_spec (st: RData) : (option RData) :=
    (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :<
      ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # VTTBR_EL2 == ((st.(priv)).(e_host_vttbr))) # HCR_EL2 == 2147483681) # TPIDR_EL2 == 0))).

  Definition __activate_vm_spec (v_vmid: Z) (st: RData) : (option RData) :=
    if (v_vmid <? 18)
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
      (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # VTTBR_EL2 == ((((st.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr))))))
    else (
      (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :<
        ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # VTTBR_EL2 == ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ TTBR0_EL2))))).

End CtxtSwitch_Spec.

#[global] Hint Unfold __host_el2_restore_state_spec: spec.
#[global] Hint Unfold __activate_vm_spec: spec.
