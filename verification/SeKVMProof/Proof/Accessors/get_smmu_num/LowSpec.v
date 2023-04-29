Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_get_smmu_num_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_smmu_num_spec_low (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_el2_smmu_num := (ptr_offset v_call ((33731152 * 0) + (33701480 + 0))) in
    when v_0, st == ((load_RData 4 v_el2_smmu_num st));
    let __return__ := true in
    let __retval__ := v_0 in
    (Some (__retval__, st)).

End Accessors_get_smmu_num_LowSpec.

#[global] Hint Unfold get_smmu_num_spec_low: spec.
