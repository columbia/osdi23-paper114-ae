Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Spec.
Require Import MemoryOps.Spec.
Require Import SmmuOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section TrapHandler_handle_host_stage2_fault_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_host_stage2_fault_spec_low (v_host_lr: Z) (v_host_regs: Ptr) (st: RData) : (option RData) :=
    when v_0, st == ((iasm_get_hpfar_el2_spec st));
    let v_and := (v_0 << 8) in
    let v_shl := (v_and & 18446744073709547520) in
    let v_1 := (ptr_to_int v_host_regs) in
    when st == ((set_per_cpu_host_regs_spec v_1 st));
    when v_2, st == ((iasm_get_esr_el2_spec st));
    let v_conv := v_2 in
    when v_call, st == ((emulate_mmio_spec v_shl v_conv st));
    let v_cmp := (v_call =? (- 1)) in
    when st == (
        if v_cmp
        then (
          when st == ((map_page_host_spec v_shl st));
          (Some st))
        else (Some st));
    let __return__ := true in
    (Some st).

End TrapHandler_handle_host_stage2_fault_LowSpec.

#[global] Hint Unfold handle_host_stage2_fault_spec_low: spec.
