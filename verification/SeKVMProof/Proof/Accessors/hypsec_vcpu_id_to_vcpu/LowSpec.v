Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_hypsec_vcpu_id_to_vcpu_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition hypsec_vcpu_id_to_vcpu_spec_low (v_vmid: Z) (v_vcpu_id: Z) (st: RData) : (option (Ptr * RData)) :=
    let v_cmp := (v_vcpu_id >? 3) in
    match (
      let __retval__ := (mkPtr "#" 0) in
      let __return__ := false in
      if v_cmp
      then (
        when st == ((__hyp_panic_spec st));
        (Some (__return__, __retval__, st)))
      else (
        when v_call, st == ((get_shared_data_start_spec st));
        let v_mul := (v_vmid << 2) in
        let v_add := (v_mul + v_vcpu_id) in
        let v_idxprom := v_add in
        rely (((0 <= v_idxprom) /\ (v_idxprom < 72)));
        let v_arrayidx := (ptr_offset v_call ((810864 * 0) + (158832 + ((9056 * v_idxprom) + 0)))) in
        let __return__ := true in
        let __retval__ := v_arrayidx in
        (Some (__return__, __retval__, st)))
    ) with
    | (Some (__return__, __retval__, st)) =>
      if __return__
      then (Some (__retval__, st))
      else (Some (__retval__, st))
    | None => None
    end.

End Accessors_hypsec_vcpu_id_to_vcpu_LowSpec.

#[global] Hint Unfold hypsec_vcpu_id_to_vcpu_spec_low: spec.
