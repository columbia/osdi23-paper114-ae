Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTWalk.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTTreeOps_walk_npt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition walk_npt_spec_low (v_vmid: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_pt_vttbr_spec v_vmid st));
    when v_call1, st == ((walk_pgd_spec v_vmid v_call v_addr 0 st));
    when v_call2, st == ((walk_pud_spec v_vmid v_call1 v_addr 0 st));
    when v_call3, st == ((walk_pmd_spec v_vmid v_call2 v_addr 0 st));
    let v_and := (v_call3 & 3) in
    let v_cmp := (v_and =? 3) in
    when v_ret_0, st == (
        let v_ret_0 := 0 in
        if v_cmp
        then (
          when v_call4, st == ((walk_pte_spec v_vmid v_call3 v_addr st));
          let v_ret_0 := v_call4 in
          (Some (v_ret_0, st)))
        else (
          let v_ret_0 := v_call3 in
          (Some (v_ret_0, st))));
    let __return__ := true in
    let __retval__ := v_ret_0 in
    (Some (__retval__, st)).

End S2PTTreeOps_walk_npt_LowSpec.

#[global] Hint Unfold walk_npt_spec_low: spec.
