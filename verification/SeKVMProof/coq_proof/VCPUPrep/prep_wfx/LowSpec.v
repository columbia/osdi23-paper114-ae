Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VCPUPrep_prep_wfx_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition prep_wfx_spec_low (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    when st == ((set_shadow_dirty_bit_spec v_vmid v_vcpuid 4294967296 st));
    let __return__ := true in
    (Some st).

End VCPUPrep_prep_wfx_LowSpec.

#[global] Hint Unfold prep_wfx_spec_low: spec.
