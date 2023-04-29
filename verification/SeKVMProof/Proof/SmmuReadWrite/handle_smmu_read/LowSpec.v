Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuReadWrite_handle_smmu_read_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_smmu_read_spec_low (v_hsr: Z) (v_fault_ipa: Z) (v_len: Z) (st: RData) : (option RData) :=
    when st == ((__handle_smmu_read_spec v_hsr v_fault_ipa v_len st));
    let __return__ := true in
    (Some st).

End SmmuReadWrite_handle_smmu_read_LowSpec.

#[global] Hint Unfold handle_smmu_read_spec_low: spec.
