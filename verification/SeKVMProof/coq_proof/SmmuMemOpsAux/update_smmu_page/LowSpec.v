Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import PageManager.Spec.
Require Import SmmuPTOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuMemOpsAux_update_smmu_page_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition update_smmu_page_spec_low (v_vmid: Z) (v_cbndx: Z) (v_index: Z) (v_iova: Z) (v_pte: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_s2page_spec st));
    let v_and1 := (v_pte >> 12) in
    let v_div := (v_and1 & 68719476735) in
    let v_div2 := (v_iova >> 12) in
    when v_call, st == ((get_pfn_owner_spec v_div st));
    when v_call3, st == ((get_pfn_map_spec v_div st));
    let v_cmp := (v_call =? 0) in
    when v_map_0_in, st == (
        let v_map_0_in := 0 in
        if v_cmp
        then (
          when v_call5, st == ((get_pfn_count_spec v_div st));
          let v_add := (v_call5 + 1) in
          when st == ((set_pfn_count_spec v_div v_add st));
          let v_add6 := (v_div + 1000000000) in
          let v_map_0_in := v_add6 in
          (Some (v_map_0_in, st)))
        else (
          let v_map_0_in := v_call3 in
          (Some (v_map_0_in, st))));
    let v_cmp8 := (v_call =? (- 1)) in
    when __return__, st == (
        let __return__ := false in
        if v_cmp8
        then (Some (__return__, st))
        else (
          let v_cmp10 := (v_call =? v_vmid) in
          let v_conv12 := (v_map_0_in & 4294967295) in
          let v_cmp13 := (v_div2 =? v_conv12) in
          let v_or_cond := (
              if v_cmp10
              then v_cmp13
              else false) in
          when __return__, st == (
              let __return__ := false in
              if v_or_cond
              then (Some (__return__, st))
              else (
                when st == ((release_lock_s2page_spec st));
                let __return__ := true in
                (Some (__return__, st))));
          if __return__
          then (Some (__return__, st))
          else (Some (__return__, st))));
    if __return__
    then (Some st)
    else (
      when st == ((map_spt_spec v_cbndx v_index v_iova v_pte st));
      when st == ((release_lock_s2page_spec st));
      let __return__ := true in
      (Some st)).

End SmmuMemOpsAux_update_smmu_page_LowSpec.

#[global] Hint Unfold update_smmu_page_spec_low: spec.
