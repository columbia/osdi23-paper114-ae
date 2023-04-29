Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTWalk.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTTreeOps_set_npt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_npt_spec_low (v_vmid: Z) (v_addr: Z) (v_level: Z) (v_pte: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_pt_vttbr_spec v_vmid st));
    when v_call1, st == ((walk_pgd_spec v_vmid v_call v_addr 1 st));
    when v_call2, st == ((walk_pud_spec v_vmid v_call1 v_addr 1 st));
    let v_cmp := (v_level =? 2) in
    when st == (
        if v_cmp
        then (
          when v_call3, st == ((walk_pmd_spec v_vmid v_call2 v_addr 0 st));
          let v_and := (v_call3 & 3) in
          let v_cmp4 := (v_and =? 3) in
          when st == (
              if v_cmp4
              then (
                when st == ((v_panic_spec st));
                (Some st))
              else (
                when st == ((v_set_pmd_spec v_vmid v_call2 v_addr v_pte st));
                (Some st)));
          (Some st))
        else (
          when v_call7, st == ((walk_pmd_spec v_vmid v_call2 v_addr 1 st));
          let v_and8 := (v_call7 & 3) in
          let v_cmp9 := (v_and8 =? 3) in
          when st == (
              if v_cmp9
              then (
                when st == ((v_set_pte_spec v_vmid v_call7 v_addr v_pte st));
                (Some st))
              else (
                when st == ((v_panic_spec st));
                (Some st)));
          (Some st)));
    let __return__ := true in
    (Some st).

End S2PTTreeOps_set_npt_LowSpec.

#[global] Hint Unfold set_npt_spec_low: spec.
