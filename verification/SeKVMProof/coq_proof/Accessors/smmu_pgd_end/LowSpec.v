Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_smmu_pgd_end_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition smmu_pgd_end_spec_low (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_smmu_page_pool_start := (ptr_offset v_call ((33731152 * 0) + (33731104 + 0))) in
    when v_0, st == ((load_RData 8 v_smmu_page_pool_start st));
    let v_add := (v_0 + 1048576) in
    let __return__ := true in
    let __retval__ := v_add in
    (Some (__retval__, st)).

End Accessors_smmu_pgd_end_LowSpec.

#[global] Hint Unfold smmu_pgd_end_spec_low: spec.
