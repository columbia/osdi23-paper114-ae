Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import PageIndex.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section PageManager_get_pfn_count_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_pfn_count_spec_low (v_pfn: Z) (st: RData) : (option (Z * RData)) :=
    let v_mul := (v_pfn << 12) in
    when v_call, st == ((get_s2_page_index_spec v_mul st));
    let v_cmp_not := (v_call =? (- 1)) in
    when v_ret_0, st == (
        let v_ret_0 := 0 in
        if v_cmp_not
        then (
          let v_ret_0 := (- 1) in
          (Some (v_ret_0, st)))
        else (
          when v_call1, st == ((get_s2_page_count_spec v_call st));
          let v_ret_0 := v_call1 in
          (Some (v_ret_0, st))));
    let __return__ := true in
    let __retval__ := v_ret_0 in
    (Some (__retval__, st)).

End PageManager_get_pfn_count_LowSpec.

#[global] Hint Unfold get_pfn_count_spec_low: spec.
