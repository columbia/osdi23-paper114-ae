Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section CtxtSwitch___host_el2_restore_state_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition __host_el2_restore_state_spec_low (st: RData) : (option RData) :=
    when v_call, st == ((get_host_vttbr_spec st));
    when st == ((set_vttbr_el2_spec v_call st));
    when st == ((set_hcr_el2_spec 2147483681 st));
    when st == ((set_tpidr_el2_spec 0 st));
    let __return__ := true in
    (Some st).

End CtxtSwitch___host_el2_restore_state_LowSpec.

#[global] Hint Unfold __host_el2_restore_state_spec_low: spec.
