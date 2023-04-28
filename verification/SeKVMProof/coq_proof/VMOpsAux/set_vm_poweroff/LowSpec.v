Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOpsAux_set_vm_poweroff_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vm_poweroff_spec_low (v_vmid: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_vm_spec v_vmid st));
    when st == ((set_vm_power_spec v_vmid st));
    when st == ((release_lock_vm_spec v_vmid st));
    let __return__ := true in
    (Some st).

End VMOpsAux_set_vm_poweroff_LowSpec.

#[global] Hint Unfold set_vm_poweroff_spec_low: spec.
