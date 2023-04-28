Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuPTWalk_set_smmu_pte_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_smmu_pte_spec_low (v_pmd: Z) (v_addr: Z) (v_pte: Z) (st: RData) : (option RData) :=
    let v_and1 := (v_pmd & 281474976706560) in
    let v_0 := (v_addr >> 9) in
    let v_mul := (v_0 & 4088) in
    let v_or := (v_mul |' v_and1) in
    when st == ((smmu_pt_store_spec v_or v_pte st));
    let __return__ := true in
    (Some st).

End SmmuPTWalk_set_smmu_pte_LowSpec.

#[global] Hint Unfold set_smmu_pte_spec_low: spec.
