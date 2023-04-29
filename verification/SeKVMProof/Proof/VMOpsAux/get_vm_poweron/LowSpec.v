Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOpsAux_get_vm_poweron_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_vm_poweron_spec_low (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    when st == ((acquire_lock_vm_spec v_vmid st));
    when v_call, st == ((get_vm_power_spec v_vmid st));
    when st == ((release_lock_vm_spec v_vmid st));
    let __return__ := true in
    let __retval__ := v_call in
    (Some (__retval__, st)).

End VMOpsAux_get_vm_poweron_LowSpec.

#[global] Hint Unfold get_vm_poweron_spec_low: spec.
