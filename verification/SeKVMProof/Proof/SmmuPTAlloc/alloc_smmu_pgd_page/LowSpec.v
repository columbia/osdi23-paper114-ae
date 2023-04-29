Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuPTAlloc_alloc_smmu_pgd_page_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition alloc_smmu_pgd_page_spec_low (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_smmu_pgd_next_spec st));
    when v_call1, st == ((smmu_pgd_end_spec st));
    let v_add := (v_call + 4096) in
    let v_cmp_not := (v_add >? v_call1) in
    when st == (
        if v_cmp_not
        then (
          when st == ((v_panic_spec st));
          (Some st))
        else (
          when st == ((set_smmu_pgd_next_spec st));
          (Some st)));
    let __return__ := true in
    let __retval__ := v_call in
    (Some (__retval__, st)).

End SmmuPTAlloc_alloc_smmu_pgd_page_LowSpec.

#[global] Hint Unfold alloc_smmu_pgd_page_spec_low: spec.
