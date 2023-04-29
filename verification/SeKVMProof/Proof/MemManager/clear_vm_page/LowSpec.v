Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import PageManager.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemManager_clear_vm_page_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition clear_vm_page_spec_low (v_vmid: Z) (v_pfn: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_s2page_spec st));
    when v_call, st == ((get_pfn_owner_spec v_pfn st));
    let v_cmp := (v_call =? v_vmid) in
    when st == (
        if v_cmp
        then (
          when st == ((set_pfn_owner_spec v_pfn 0 st));
          when st == ((set_pfn_count_spec v_pfn 0 st));
          when st == ((set_pfn_map_spec v_pfn 0 st));
          when st == ((clear_phys_page_spec v_pfn st));
          (Some st))
        else (Some st));
    when st == ((release_lock_s2page_spec st));
    let __return__ := true in
    (Some st).

End MemManager_clear_vm_page_LowSpec.

#[global] Hint Unfold clear_vm_page_spec_low: spec.
