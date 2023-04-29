Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_smmu_pgd_next_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_smmu_pgd_next_spec_low (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_smmu_pgd_used_pages := (ptr_offset v_call ((33731152 * 0) + (33731112 + 0))) in
    when v_0, st == ((load_RData 8 v_smmu_pgd_used_pages st));
    let v_add := (v_0 + 1) in
    when st == ((store_RData 8 v_smmu_pgd_used_pages v_add st));
    let __return__ := true in
    (Some st).

End Accessors_set_smmu_pgd_next_LowSpec.

#[global] Hint Unfold set_smmu_pgd_next_spec_low: spec.
