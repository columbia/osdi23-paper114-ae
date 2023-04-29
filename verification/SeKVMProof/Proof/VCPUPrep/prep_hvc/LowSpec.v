Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VCPUPrep_prep_hvc_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition prep_hvc_spec_low (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 0 st));
    let v_and := (v_call & 4294967295) in
    when v_call1, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 0 st));
    when st == ((set_int_gpr_spec v_vmid v_vcpuid 0 v_call1 st));
    let v_cmp := (v_and =? 3288334339) in
    when st == (
        if v_cmp
        then (
          when st == ((set_shadow_dirty_bit_spec v_vmid v_vcpuid 1 st));
          when v_call2, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 1 st));
          when st == ((set_int_gpr_spec v_vmid v_vcpuid 1 v_call2 st));
          when v_call3, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 2 st));
          when st == ((set_int_gpr_spec v_vmid v_vcpuid 2 v_call3 st));
          when v_call4, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 3 st));
          when st == ((set_int_gpr_spec v_vmid v_vcpuid 3 v_call4 st));
          (Some st))
        else (
          let v_0 := (v_call & 3221225471) in
          let v_1 := (v_0 =? 2214592516) in
          when st == (
              if v_1
              then (
                when st == ((set_shadow_dirty_bit_spec v_vmid v_vcpuid 1 st));
                when v_call8, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 1 st));
                when st == ((set_int_gpr_spec v_vmid v_vcpuid 1 v_call8 st));
                when v_call9, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 2 st));
                when st == ((set_int_gpr_spec v_vmid v_vcpuid 2 v_call9 st));
                (Some st))
              else (
                let v_cmp11 := (v_and =? 2214592520) in
                when st == (
                    if v_cmp11
                    then (
                      when st == ((set_shadow_dirty_bit_spec v_vmid v_vcpuid 1 st));
                      when st == ((set_vm_poweroff_spec v_vmid st));
                      (Some st))
                    else (Some st));
                (Some st)));
          (Some st)));
    let __return__ := true in
    (Some st).

End VCPUPrep_prep_hvc_LowSpec.

#[global] Hint Unfold prep_hvc_spec_low: spec.
