Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_smmu_get_cbndx_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition smmu_get_cbndx_spec_low (v_offset: Z) (st: RData) : (option (Z * RData)) :=
    let v_sub := (v_offset + 18446744073709518848) in
    let v_shr := (v_sub >> 12) in
    let __return__ := true in
    let __retval__ := v_shr in
    (Some (__retval__, st)).

End Accessors_smmu_get_cbndx_LowSpec.

#[global] Hint Unfold smmu_get_cbndx_spec_low: spec.
