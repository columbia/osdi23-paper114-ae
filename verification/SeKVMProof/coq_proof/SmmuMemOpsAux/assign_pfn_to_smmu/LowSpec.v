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

Section SmmuMemOpsAux_assign_pfn_to_smmu_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition assign_pfn_to_smmu_spec_low (v_vmid: Z) (v_gfn: Z) (v_pfn: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_s2page_spec st));
    when v_call, st == ((get_pfn_owner_spec v_pfn st));
    when v_call1, st == ((get_pfn_count_spec v_pfn st));
    when v_call2, st == ((get_pfn_map_spec v_pfn st));
    let v_cmp := (v_call =? 0) in
    when st == (
        if v_cmp
        then (
          let v_cmp3 := (v_call1 =? 0) in
          when st == (
              if v_cmp3
              then (
                when st == ((clear_pfn_host_spec v_pfn st));
                when st == ((set_pfn_owner_spec v_pfn v_vmid st));
                when st == ((set_pfn_map_spec v_pfn v_gfn st));
                when st == ((set_pfn_count_spec v_pfn (- 1) st));
                (Some st))
              else (
                when st == ((v_panic_spec st));
                (Some st)));
          (Some st))
        else (
          let v_cmp6 := (v_call <>? v_vmid) in
          let v_cmp8 := (v_call <>? (- 1)) in
          let v_or_cond := (v_cmp6 && v_cmp8) in
          when st == (
              if v_or_cond
              then (
                let v_conv := v_vmid in
                let v_conv10 := v_call in
                when st == ((v_panic_spec st));
                (Some st))
              else (Some st));
          (Some st)));
    when st == ((release_lock_s2page_spec st));
    let __return__ := true in
    (Some st).

End SmmuMemOpsAux_assign_pfn_to_smmu_LowSpec.

#[global] Hint Unfold assign_pfn_to_smmu_spec_low: spec.
