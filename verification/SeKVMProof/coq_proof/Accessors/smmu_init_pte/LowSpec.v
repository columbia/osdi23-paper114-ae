Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_smmu_init_pte_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition smmu_init_pte_spec_low (v_prot: Z) (v_paddr: Z) (st: RData) : (option (Z * RData)) :=
    let v_and := (v_paddr & 281474976706560) in
    let v_or := (v_and |' v_prot) in
    let v_or2 := (v_or |' 1795) in
    let __return__ := true in
    let __retval__ := v_or2 in
    (Some (__retval__, st)).

End Accessors_smmu_init_pte_LowSpec.

#[global] Hint Unfold smmu_init_pte_spec_low: spec.
