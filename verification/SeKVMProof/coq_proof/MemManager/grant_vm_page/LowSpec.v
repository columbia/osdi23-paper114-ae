Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import PageManager.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemManager_grant_vm_page_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition grant_vm_page_spec_low (v_vmid: Z) (v_pfn: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_s2page_spec st));
    when v_call, st == ((get_pfn_owner_spec v_pfn st));
    when v_call1, st == ((get_pfn_count_spec v_pfn st));
    let v_cmp := (v_call =? v_vmid) in
    let v_cmp2 := (v_call1 <? 100) in
    let v_or_cond := (
        if v_cmp
        then v_cmp2
        else false) in
    when st == (
        if v_or_cond
        then (
          let v_add := (v_call1 + 1) in
          when st == ((set_pfn_count_spec v_pfn v_add st));
          (Some st))
        else (Some st));
    when st == ((release_lock_s2page_spec st));
    let __return__ := true in
    (Some st).

End MemManager_grant_vm_page_LowSpec.

#[global] Hint Unfold grant_vm_page_spec_low: spec.
