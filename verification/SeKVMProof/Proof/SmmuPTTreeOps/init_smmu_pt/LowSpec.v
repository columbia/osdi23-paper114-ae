Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuPTTreeOps_init_smmu_pt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition init_smmu_pt_spec_low (v_cbndx: Z) (v_num: Z) (st: RData) : (option RData) :=
    when st == ((smmu_pt_clear_spec v_cbndx v_num st));
    let __return__ := true in
    (Some st).

End SmmuPTTreeOps_init_smmu_pt_LowSpec.

#[global] Hint Unfold init_smmu_pt_spec_low: spec.
