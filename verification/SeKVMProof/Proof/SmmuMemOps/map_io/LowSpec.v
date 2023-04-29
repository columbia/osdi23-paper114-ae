Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemoryOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuMemOps_map_io_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition map_io_spec_low (v_vmid: Z) (v_gpa: Z) (v_pa: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_vm_spec v_vmid st));
    when v_call, st == ((get_vm_state_spec v_vmid st));
    when st == ((__kvm_phys_addr_ioremap_spec v_vmid v_gpa v_pa st));
    when st == ((release_lock_vm_spec v_vmid st));
    let __return__ := true in
    (Some st).

End SmmuMemOps_map_io_LowSpec.

#[global] Hint Unfold map_io_spec_low: spec.
