Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import VMOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VCPUOpsAux_reset_gp_regs_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition reset_gp_regs_spec_low (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_int_pc_spec v_vmid v_vcpuid st));
    when v_call1, st == ((v_search_load_info_spec v_vmid v_call st));
    let v_tobool_not := (v_call1 =? 0) in
    when st == (
        if v_tobool_not
        then (
          when st == ((v_panic_spec st));
          (Some st))
        else (
          when st == ((clear_shadow_gp_regs_spec v_vmid v_vcpuid st));
          when v_call2, st == ((get_int_pstate_spec v_vmid v_vcpuid st));
          when st == ((set_shadow_ctxt_spec v_vmid v_vcpuid 33 v_call2 st));
          when st == ((set_shadow_ctxt_spec v_vmid v_vcpuid 32 v_call st));
          when st == ((reset_fp_regs_spec v_vmid v_vcpuid st));
          (Some st)));
    let __return__ := true in
    (Some st).

End VCPUOpsAux_reset_gp_regs_LowSpec.

#[global] Hint Unfold reset_gp_regs_spec_low: spec.
