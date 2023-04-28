Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_vmid_to_vm_info_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition vmid_to_vm_info_spec_low (v_vmid: Z) (st: RData) : (option (Ptr * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_cmp := (v_vmid <? 18) in
    match (
      let __retval__ := (mkPtr "#" 0) in
      let __return__ := false in
      if v_cmp
      then (
        let v_idxprom := v_vmid in
        rely (((0 <= v_idxprom) /\ (v_idxprom < 19)));
        let v_arrayidx := (ptr_offset v_call ((33731152 * 0) + (33686424 + ((768 * v_idxprom) + 0)))) in
        let __return__ := true in
        let __retval__ := v_arrayidx in
        (Some (__return__, __retval__, st)))
      else (
        when st == ((__hyp_panic_spec st));
        (Some (__return__, __retval__, st)))
    ) with
    | (Some (__return__, __retval__, st)) =>
      if __return__
      then (Some (__retval__, st))
      else (Some (__retval__, st))
    | None => None
    end.

End Accessors_vmid_to_vm_info_LowSpec.

#[global] Hint Unfold vmid_to_vm_info_spec_low: spec.
