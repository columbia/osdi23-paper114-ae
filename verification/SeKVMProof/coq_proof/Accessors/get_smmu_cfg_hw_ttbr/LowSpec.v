Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_get_smmu_cfg_hw_ttbr_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_smmu_cfg_hw_ttbr_spec_low (v_cbndx: Z) (v_num: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_mul := (v_num << 3) in
    let v_add := (v_mul + v_cbndx) in
    let v_idxprom := v_add in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 16)));
    let v_hw_ttbr := (ptr_offset v_call ((33731152 * 0) + (33701032 + ((16 * v_idxprom) + (8 + 0))))) in
    when v_0, st == ((load_RData 8 v_hw_ttbr st));
    let __return__ := true in
    let __retval__ := v_0 in
    (Some (__retval__, st)).

End Accessors_get_smmu_cfg_hw_ttbr_LowSpec.

#[global] Hint Unfold get_smmu_cfg_hw_ttbr_spec_low: spec.
