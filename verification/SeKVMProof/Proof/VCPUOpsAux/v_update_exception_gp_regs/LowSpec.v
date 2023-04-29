Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VCPUOpsAux_v_update_exception_gp_regs_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition v_update_exception_gp_regs_spec_low (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 33 st));
    when v_call1, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 32 st));
    when st == ((set_shadow_ctxt_spec v_vmid v_vcpuid 35 v_call1 st));
    when st == ((set_shadow_ctxt_spec v_vmid v_vcpuid 32 0 st));
    when st == ((set_shadow_ctxt_spec v_vmid v_vcpuid 33 11 st));
    when st == ((set_shadow_ctxt_spec v_vmid v_vcpuid 8 v_call st));
    when st == ((set_shadow_ctxt_spec v_vmid v_vcpuid 51 0 st));
    let __return__ := true in
    (Some st).

End VCPUOpsAux_v_update_exception_gp_regs_LowSpec.

#[global] Hint Unfold v_update_exception_gp_regs_spec_low: spec.
