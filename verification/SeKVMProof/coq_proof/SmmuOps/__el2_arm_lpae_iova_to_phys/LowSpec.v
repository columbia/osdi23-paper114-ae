Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuPTOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuOps___el2_arm_lpae_iova_to_phys_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition __el2_arm_lpae_iova_to_phys_spec_low (v_iova: Z) (v_cbndx: Z) (v_index: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((walk_spt_spec v_cbndx v_index v_iova st));
    let v_cmp := (v_call =? 0) in
    let v_and1 := (v_call & 281474976706560) in
    let v_rem := (v_iova & 4095) in
    let v_or := (v_and1 |' v_rem) in
    let v_ret_0 := (
        if v_cmp
        then 0
        else v_or) in
    let __return__ := true in
    let __retval__ := v_ret_0 in
    (Some (__retval__, st)).

End SmmuOps___el2_arm_lpae_iova_to_phys_LowSpec.

#[global] Hint Unfold __el2_arm_lpae_iova_to_phys_spec_low: spec.
