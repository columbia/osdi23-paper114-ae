Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section GuestHandler_handle_pvops_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_pvops_spec_low (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 0 st));
    when v_call1, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 1 st));
    when v_call2, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 2 st));
    when v_retval_0, st == (
        let v_retval_0 := 0 in
        if (v_call =? 532480)
        then (
          when st == ((v_revoke_stage2_sg_gpa_spec v_vmid v_call1 v_call2 st));
          let v_retval_0 := 1 in
          (Some (v_retval_0, st)))
        else (
          when v_retval_0, st == (
              let v_retval_0 := 0 in
              if (v_call =? 528384)
              then (
                when st == ((v_grant_stage2_sg_gpa_spec v_vmid v_call1 v_call2 st));
                let v_retval_0 := 1 in
                (Some (v_retval_0, st)))
              else (
                let v_retval_0 := (- 22) in
                (Some (v_retval_0, st))));
          (Some (v_retval_0, st))));
    let __return__ := true in
    let __retval__ := v_retval_0 in
    (Some (__retval__, st)).

End GuestHandler_handle_pvops_LowSpec.

#[global] Hint Unfold handle_pvops_spec_low: spec.
