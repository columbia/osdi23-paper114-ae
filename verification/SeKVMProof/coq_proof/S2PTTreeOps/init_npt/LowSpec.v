Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTTreeOps_init_npt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition init_npt_spec_low (v_vmid: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_pt_vttbr_spec v_vmid st));
    let v_cmp := (v_call =? 0) in
    when st == (
        if v_cmp
        then (
          when v_call1, st == ((pool_start_spec v_vmid st));
          let v_and := (v_vmid & 255) in
          let v_conv := v_and in
          let v_shl := (v_conv << 48) in
          let v_or := (v_call1 |' v_shl) in
          when st == ((set_pt_vttbr_spec v_vmid v_or st));
          (Some st))
        else (Some st));
    let __return__ := true in
    (Some st).

End S2PTTreeOps_init_npt_LowSpec.

#[global] Hint Unfold init_npt_spec_low: spec.
