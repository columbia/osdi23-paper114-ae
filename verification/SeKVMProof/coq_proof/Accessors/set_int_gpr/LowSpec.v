Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_int_gpr_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_int_gpr_spec_low (v_vmid: Z) (v_vcpuid: Z) (v_index: Z) (v_value: Z) (st: RData) : (option RData) :=
    let v_mul := (v_vmid << 2) in
    let v_add := (v_mul + v_vcpuid) in
    when v_call, st == ((get_shared_data_start_spec st));
    let v_idxprom := v_add in
    let v_idxprom2 := v_index in
    rely (((0 <= v_idxprom2) /\ (v_idxprom2 < 31)));
    rely (((0 <= v_idxprom) /\ (v_idxprom < 72)));
    let v_arrayidx3 := (ptr_offset v_call ((810864 * 0) + (158832 + ((9056 * v_idxprom) + (352 + (48 + (0 + (0 + (0 + ((8 * v_idxprom2) + 0)))))))))) in
    when st == ((store_RData 8 v_arrayidx3 v_value st));
    let __return__ := true in
    (Some st).

End Accessors_set_int_gpr_LowSpec.

#[global] Hint Unfold set_int_gpr_spec_low: spec.
