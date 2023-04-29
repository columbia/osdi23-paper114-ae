Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_get_smmu_base_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_smmu_base_spec_low (v_num: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_idxprom := v_num in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 2)));
    let v_phys_base := (ptr_offset v_call ((33731152 * 0) + (33701288 + ((96 * v_idxprom) + (0 + 0))))) in
    when v_0, st == ((load_RData 8 v_phys_base st));
    let __return__ := true in
    let __retval__ := v_0 in
    (Some (__retval__, st)).

End Accessors_get_smmu_base_LowSpec.

#[global] Hint Unfold get_smmu_base_spec_low: spec.
