Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_per_cpu_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_per_cpu_spec_low (v_vmid: Z) (v_vcpu_id: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    when v_call1, st == ((get_cpuid_spec st));
    let v_idxprom := v_call1 in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 16)));
    let v_vmid2 := (ptr_offset v_call ((33731152 * 0) + (33701504 + ((1792 * v_idxprom) + (0 + 0))))) in
    when st == ((store_RData 4 v_vmid2 v_vmid st));
    rely (((0 <= v_idxprom) /\ (v_idxprom < 16)));
    let v_vcpu_id6 := (ptr_offset v_call ((33731152 * 0) + (33701504 + ((1792 * v_idxprom) + (4 + 0))))) in
    when st == ((store_RData 4 v_vcpu_id6 v_vcpu_id st));
    let __return__ := true in
    (Some st).

End Accessors_set_per_cpu_LowSpec.

#[global] Hint Unfold set_per_cpu_spec_low: spec.
