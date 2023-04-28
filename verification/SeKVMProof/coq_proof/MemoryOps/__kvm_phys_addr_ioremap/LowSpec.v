Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import PageManager.Spec.
Require Import S2PTOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemoryOps___kvm_phys_addr_ioremap_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition __kvm_phys_addr_ioremap_spec_low (v_vmid: Z) (v_gpa: Z) (v_pa: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_s2page_spec st));
    let v_shr := (v_pa >> 12) in
    when v_call, st == ((get_pfn_owner_spec v_shr st));
    let v_cmp := (v_call =? (- 1)) in
    when st == (
        if v_cmp
        then (
          let v_add := (v_pa + 18014398509483975) in
          when st == ((mmap_s2pt_spec v_vmid v_gpa 3 v_add st));
          (Some st))
        else (Some st));
    when st == ((release_lock_s2page_spec st));
    let __return__ := true in
    (Some st).

End MemoryOps___kvm_phys_addr_ioremap_LowSpec.

#[global] Hint Unfold __kvm_phys_addr_ioremap_spec_low: spec.
