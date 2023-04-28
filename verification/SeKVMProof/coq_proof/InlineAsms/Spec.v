Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section InlineAsms_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition iasm_get_ttbr0_el2_spec (st: RData) : (option (Z * RData)) :=
    (Some (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ TTBR0_EL2), st)).

  Definition iasm_set_vttbr_el2_spec (v_val: Z) (st: RData) : (option RData) :=
    (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # VTTBR_EL2 == v_val))).

  Definition iasm_get_esr_el2_spec (st: RData) : (option (Z * RData)) :=
    (Some (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2), st)).

  Definition iasm_get_elr_el2_spec (st: RData) : (option (Z * RData)) :=
    (Some (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ELR_EL2), st)).

  Definition iasm_set_elr_el2_spec (v_val: Z) (st: RData) : (option RData) :=
    (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # ELR_EL2 == v_val))).

  Definition iasm_set_tpidr_el2_spec (v_val: Z) (st: RData) : (option RData) :=
    (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # TPIDR_EL2 == v_val))).

  Definition iasm_set_hcr_el2_spec (v_val: Z) (st: RData) : (option RData) :=
    (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # HCR_EL2 == v_val))).

  Definition iasm_get_hpfar_el2_spec (st: RData) : (option (Z * RData)) :=
    (Some (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ HPFAR_EL2), st)).

  Definition iasm_get_far_el2_spec (st: RData) : (option (Z * RData)) :=
    (Some (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2), st)).

End InlineAsms_Spec.

#[global] Hint Unfold iasm_get_ttbr0_el2_spec: spec.
#[global] Hint Unfold iasm_set_vttbr_el2_spec: spec.
#[global] Hint Unfold iasm_get_esr_el2_spec: spec.
#[global] Hint Unfold iasm_get_elr_el2_spec: spec.
#[global] Hint Unfold iasm_set_elr_el2_spec: spec.
#[global] Hint Unfold iasm_set_tpidr_el2_spec: spec.
#[global] Hint Unfold iasm_set_hcr_el2_spec: spec.
#[global] Hint Unfold iasm_get_hpfar_el2_spec: spec.
#[global] Hint Unfold iasm_get_far_el2_spec: spec.
