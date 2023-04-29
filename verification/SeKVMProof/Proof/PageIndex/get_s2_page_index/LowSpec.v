Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemRegion.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section PageIndex_get_s2_page_index_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_s2_page_index_spec_low (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((mem_region_search_spec v_addr st));
    let v_cmp_not := (v_call =? (- 1)) in
    when v_ret_1, st == (
        let v_ret_1 := 0 in
        if v_cmp_not
        then (
          let v_ret_1 := (- 1) in
          (Some (v_ret_1, st)))
        else (
          when v_call1, st == ((get_mem_region_index_spec v_call st));
          let v_cmp2_not := (v_call1 =? (- 1)) in
          when v_ret_1, st == (
              let v_ret_1 := 0 in
              if v_cmp2_not
              then (
                let v_ret_1 := (- 1) in
                (Some (v_ret_1, st)))
              else (
                when v_call4, st == ((get_mem_region_base_spec v_call st));
                let v_sub := (v_addr - v_call4) in
                let v_div := (v_sub >> 12) in
                let v_add := (v_div + v_call1) in
                let v_ret_1 := v_add in
                (Some (v_ret_1, st))));
          (Some (v_ret_1, st))));
    let __return__ := true in
    let __retval__ := v_ret_1 in
    (Some (__retval__, st)).

End PageIndex_get_s2_page_index_LowSpec.

#[global] Hint Unfold get_s2_page_index_spec_low: spec.
