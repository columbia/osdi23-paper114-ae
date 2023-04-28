Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_get_cur_vcpu_id_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_cur_vcpu_id_spec_low (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    when v_call1, st == ((get_cpuid_spec st));
    let v_idxprom := v_call1 in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 16)));
    let v_vcpu_id := (ptr_offset v_call ((33731152 * 0) + (33701504 + ((1792 * v_idxprom) + (4 + 0))))) in
    when v_0, st == ((load_RData 4 v_vcpu_id st));
    let __return__ := true in
    let __retval__ := v_0 in
    (Some (__retval__, st)).

End Accessors_get_cur_vcpu_id_LowSpec.

#[global] Hint Unfold get_cur_vcpu_id_spec_low: spec.
