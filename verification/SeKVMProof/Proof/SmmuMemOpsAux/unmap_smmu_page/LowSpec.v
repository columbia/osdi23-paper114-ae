Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import PageManager.Spec.
Require Import SmmuPTOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuMemOpsAux_unmap_smmu_page_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition unmap_smmu_page_spec_low (v_cbndx: Z) (v_index: Z) (v_iova: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_s2page_spec st));
    when v_call, st == ((unmap_spt_spec v_cbndx v_index v_iova st));
    let v_and1 := (v_call >> 12) in
    let v_div := (v_and1 & 68719476735) in
    when v_call2, st == ((get_pfn_owner_spec v_div st));
    let v_cmp := (v_call2 =? 0) in
    when st == (
        if v_cmp
        then (
          when v_call3, st == ((get_pfn_count_spec v_div st));
          let v_cmp4_not := (v_call3 =? 0) in
          when st == (
              if v_cmp4_not
              then (Some st)
              else (
                let v_sub := (v_call3 + (- 1)) in
                when st == ((set_pfn_count_spec v_div v_sub st));
                (Some st)));
          (Some st))
        else (Some st));
    when st == ((release_lock_s2page_spec st));
    let __return__ := true in
    (Some st).

End SmmuMemOpsAux_unmap_smmu_page_LowSpec.

#[global] Hint Unfold unmap_smmu_page_spec_low: spec.
