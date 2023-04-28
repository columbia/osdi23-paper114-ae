Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import PageManager.Spec.
Require Import S2PTOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemManager_revoke_vm_page_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition revoke_vm_page_spec_low (v_vmid: Z) (v_pfn: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_s2page_spec st));
    when v_call, st == ((get_pfn_owner_spec v_pfn st));
    when v_call1, st == ((get_pfn_count_spec v_pfn st));
    let v_cmp := (v_call =? v_vmid) in
    let v_cmp2 := (v_call1 <>? 0) in
    let v_or_cond := (
        if v_cmp
        then v_cmp2
        else false) in
    when st == (
        if v_or_cond
        then (
          let v_sub := (v_call1 + (- 1)) in
          when st == ((set_pfn_count_spec v_pfn v_sub st));
          let v_cmp3 := (v_call1 =? 1) in
          when st == (
              if v_cmp3
              then (
                when st == ((clear_pfn_host_spec v_pfn st));
                (Some st))
              else (Some st));
          (Some st))
        else (Some st));
    when st == ((release_lock_s2page_spec st));
    let __return__ := true in
    (Some st).

End MemManager_revoke_vm_page_LowSpec.

#[global] Hint Unfold revoke_vm_page_spec_low: spec.
