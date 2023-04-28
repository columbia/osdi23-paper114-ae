Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuPTWalk_walk_smmu_pte_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition walk_smmu_pte_spec_low (v_pmd: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    let v_and1 := (v_pmd & 281474976706560) in
    let v_cmp_not := (v_and1 =? 0) in
    when v_ret_0, st == (
        let v_ret_0 := 0 in
        if v_cmp_not
        then (
          let v_ret_0 := 0 in
          (Some (v_ret_0, st)))
        else (
          let v_0 := (v_addr >> 9) in
          let v_mul := (v_0 & 4088) in
          let v_or := (v_mul |' v_and1) in
          when v_call, st == ((smmu_pt_load_spec v_or st));
          let v_ret_0 := v_call in
          (Some (v_ret_0, st))));
    let __return__ := true in
    let __retval__ := v_ret_0 in
    (Some (__retval__, st)).

End SmmuPTWalk_walk_smmu_pte_LowSpec.

#[global] Hint Unfold walk_smmu_pte_spec_low: spec.
