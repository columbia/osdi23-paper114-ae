Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_smmu_cfg_vmid_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_smmu_cfg_vmid_spec_low (v_cbndx: Z) (v_num: Z) (v_vmid: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_mul := (v_num << 3) in
    let v_add := (v_mul + v_cbndx) in
    let v_idxprom := v_add in
    rely (((0 <= v_idxprom) /\ (v_idxprom < 16)));
    let v_vmid1 := (ptr_offset v_call ((33731152 * 0) + (33701032 + ((16 * v_idxprom) + (0 + 0))))) in
    when st == ((store_RData 4 v_vmid1 v_vmid st));
    let __return__ := true in
    (Some st).

End Accessors_set_smmu_cfg_vmid_LowSpec.

#[global] Hint Unfold set_smmu_cfg_vmid_spec_low: spec.
