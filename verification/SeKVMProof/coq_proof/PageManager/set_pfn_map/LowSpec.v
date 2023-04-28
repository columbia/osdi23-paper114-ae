Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import PageIndex.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section PageManager_set_pfn_map_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_pfn_map_spec_low (v_pfn: Z) (v_gfn: Z) (st: RData) : (option RData) :=
    let v_mul := (v_pfn << 12) in
    when v_call, st == ((get_s2_page_index_spec v_mul st));
    let v_cmp_not := (v_call =? (- 1)) in
    when st == (
        if v_cmp_not
        then (Some st)
        else (
          when st == ((set_s2_page_gfn_spec v_call v_gfn st));
          (Some st)));
    let __return__ := true in
    (Some st).

End PageManager_set_pfn_map_LowSpec.

#[global] Hint Unfold set_pfn_map_spec_low: spec.
