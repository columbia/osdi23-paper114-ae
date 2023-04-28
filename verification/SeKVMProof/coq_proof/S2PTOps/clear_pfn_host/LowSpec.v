Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import S2PTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTOps_clear_pfn_host_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition clear_pfn_host_spec_low (v_pfn: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_pt_spec 0 st));
    let v_mul := (v_pfn << 12) in
    when v_call, st == ((walk_npt_spec 0 v_mul st));
    let v_cmp_not := (v_call =? 0) in
    when st == (
        if v_cmp_not
        then (Some st)
        else (
          when st == ((set_npt_spec 0 v_mul 3 144115188075855872 st));
          when st == ((kvm_tlb_flush_vmid_ipa_host_spec v_mul st));
          (Some st)));
    when st == ((release_lock_pt_spec 0 st));
    let __return__ := true in
    (Some st).

End S2PTOps_clear_pfn_host_LowSpec.

#[global] Hint Unfold clear_pfn_host_spec_low: spec.
