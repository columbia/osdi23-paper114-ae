Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOpsAux_gen_vmid_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition gen_vmid_spec_low (st: RData) : (option (Z * RData)) :=
    when st == ((acquire_lock_core_spec st));
    when v_call, st == ((get_next_vmid_spec st));
    let v_cmp := (v_call <? 33) in
    when v_vmid_0, st == (
        let v_vmid_0 := 0 in
        if v_cmp
        then (
          let v_add := (v_call + 1) in
          when st == ((set_next_vmid_spec v_add st));
          let v_vmid_0 := v_call in
          (Some (v_vmid_0, st)))
        else (
          let v_vmid_0 := 0 in
          (Some (v_vmid_0, st))));
    when st == ((release_lock_core_spec st));
    let __return__ := true in
    let __retval__ := v_vmid_0 in
    (Some (__retval__, st)).

End VMOpsAux_gen_vmid_LowSpec.

#[global] Hint Unfold gen_vmid_spec_low: spec.
