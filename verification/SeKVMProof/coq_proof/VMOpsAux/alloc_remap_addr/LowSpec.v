Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOpsAux_alloc_remap_addr_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition alloc_remap_addr_spec_low (v_pgnum: Z) (st: RData) : (option (Z * RData)) :=
    when st == ((acquire_lock_core_spec st));
    when v_call, st == ((get_next_remap_ptr_spec st));
    let v_mul := (v_pgnum << 12) in
    let v_add := (v_call + v_mul) in
    let v_cmp := (v_add <? 5497558138880) in
    when st == (
        if v_cmp
        then (
          when st == ((set_next_remap_ptr_spec v_add st));
          (Some st))
        else (
          when st == ((v_panic_spec st));
          (Some st)));
    when st == ((release_lock_core_spec st));
    let __return__ := true in
    let __retval__ := v_call in
    (Some (__retval__, st)).

End VMOpsAux_alloc_remap_addr_LowSpec.

#[global] Hint Unfold alloc_remap_addr_spec_low: spec.
