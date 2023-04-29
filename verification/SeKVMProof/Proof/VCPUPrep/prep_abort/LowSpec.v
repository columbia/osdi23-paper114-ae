Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VCPUPrep_prep_abort_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition prep_abort_spec_low (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_int_esr_spec v_vmid v_vcpuid st));
    let v_div := (v_call >> 16) in
    let v_rem := (v_div & 31) in
    when v_call2, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 42 st));
    let v_0 := (v_call2 & 72057594033733632) in
    let v_cmp := (v_0 =? 0) in
    when st == (
        if v_cmp
        then (
          when st == ((set_shadow_dirty_bit_spec v_vmid v_vcpuid 4294967296 st));
          let v_1 := (v_call & 192) in
          let v__not := (v_1 =? 0) in
          when st == (
              if v__not
              then (
                let v_shl := (1 << v_rem) in
                let v_conv10 := v_shl in
                when st == ((set_shadow_dirty_bit_spec v_vmid v_vcpuid v_conv10 st));
                (Some st))
              else (
                when v_call11, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid v_rem st));
                when st == ((set_int_gpr_spec v_vmid v_vcpuid v_rem v_call11 st));
                (Some st)));
          (Some st))
        else (Some st));
    let __return__ := true in
    (Some st).

End VCPUPrep_prep_abort_LowSpec.

#[global] Hint Unfold prep_abort_spec_low: spec.
