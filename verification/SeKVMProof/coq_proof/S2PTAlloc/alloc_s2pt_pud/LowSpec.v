Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTAlloc_alloc_s2pt_pud_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition alloc_s2pt_pud_spec_low (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_pud_next_spec v_vmid st));
    when v_call1, st == ((pud_pool_end_spec v_vmid st));
    let v_add := (v_call + 4096) in
    let v_cmp_not := (v_add >? v_call1) in
    when st == (
        if v_cmp_not
        then (
          let v_conv := v_vmid in
          when st == ((v_panic_spec st));
          (Some st))
        else (
          when st == ((set_pud_next_spec v_vmid st));
          (Some st)));
    let __return__ := true in
    let __retval__ := v_call in
    (Some (__retval__, st)).

End S2PTAlloc_alloc_s2pt_pud_LowSpec.

#[global] Hint Unfold alloc_s2pt_pud_spec_low: spec.
