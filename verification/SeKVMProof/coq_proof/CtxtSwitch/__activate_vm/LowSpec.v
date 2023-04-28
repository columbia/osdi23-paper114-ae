Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section CtxtSwitch___activate_vm_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition __activate_vm_spec_low (v_vmid: Z) (st: RData) : (option RData) :=
    let v_conv := v_vmid in
    when v_call, st == ((get_pt_vttbr_spec v_conv st));
    when st == ((set_vttbr_el2_spec v_call st));
    let __return__ := true in
    (Some st).

End CtxtSwitch___activate_vm_LowSpec.

#[global] Hint Unfold __activate_vm_spec_low: spec.
