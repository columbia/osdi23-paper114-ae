Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import S2PTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTOps_walk_s2pt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition walk_s2pt_spec_low (v_vmid: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    when st == ((acquire_lock_pt_spec v_vmid st));
    when v_call, st == ((walk_npt_spec v_vmid v_addr st));
    when st == ((release_lock_pt_spec v_vmid st));
    let __return__ := true in
    let __retval__ := v_call in
    (Some (__retval__, st)).

End S2PTOps_walk_s2pt_LowSpec.

#[global] Hint Unfold walk_s2pt_spec_low: spec.
