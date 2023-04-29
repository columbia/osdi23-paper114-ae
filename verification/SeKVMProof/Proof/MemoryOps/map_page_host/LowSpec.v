Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import PageManager.Spec.
Require Import S2PTOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemoryOps_map_page_host_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition map_page_host_spec_low (v_addr: Z) (st: RData) : (option RData) :=
    let v_div := (v_addr >> 12) in
    when st == ((acquire_lock_s2page_spec st));
    when v_call, st == ((get_pfn_owner_spec v_div st));
    when v_call1, st == ((get_pfn_count_spec v_div st));
    let v_cmp := (v_call =? (- 1)) in
    when st == (
        if v_cmp
        then (
          let v_and := (v_addr & 18446744073709547520) in
          let v_add := (v_and + 18014398509483975) in
          when st == ((mmap_s2pt_spec 0 v_addr 3 v_add st));
          (Some st))
        else (
          let v_cmp2 := (v_call =? 0) in
          let v_cmp3 := (v_call1 <>? 0) in
          let v_or_cond := (
              if v_cmp2
              then true
              else v_cmp3) in
          let v_add5 := (v_addr |' 4095) in
          when st == ((mmap_s2pt_spec 0 v_addr 3 v_add5 st));
          when st == (
              if v_or_cond
              then (Some st)
              else (
                when st == ((v_panic_spec st));
                (Some st)));
          (Some st)));
    when st == ((release_lock_s2page_spec st));
    let __return__ := true in
    (Some st).

End MemoryOps_map_page_host_LowSpec.

#[global] Hint Unfold map_page_host_spec_low: spec.
