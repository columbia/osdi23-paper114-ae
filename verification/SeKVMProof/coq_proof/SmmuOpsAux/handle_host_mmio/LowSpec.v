Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Spec.
Require Import SmmuReadWrite.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuOpsAux_handle_host_mmio_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_host_mmio_spec_low (v_index: Z) (v_hsr: Z) (st: RData) : (option RData) :=
    let v_conv := v_index in
    when v_call, st == ((get_smmu_hyp_base_spec v_conv st));
    when v_0, st == ((iasm_get_far_el2_spec st));
    let v_and := (v_0 & 65535) in
    let v_or := (v_and |' v_call) in
    when v_call1, st == ((host_dabt_get_as_spec v_hsr st));
    when v_call2, st == ((host_dabt_is_write_spec v_hsr st));
    when st == (
        if v_call2
        then (
          when st == ((handle_smmu_write_spec v_hsr v_or v_call1 v_conv st));
          (Some st))
        else (
          when st == ((handle_smmu_read_spec v_hsr v_or v_call1 st));
          (Some st)));
    when v_1, st == ((iasm_get_elr_el2_spec st));
    when st == ((iasm_10_spec st));
    let v_add := (v_1 + 4) in
    when st == ((iasm_set_elr_el2_spec v_add st));
    let __return__ := true in
    (Some st).

End SmmuOpsAux_handle_host_mmio_LowSpec.

#[global] Hint Unfold handle_host_mmio_spec_low: spec.
