Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import S2PTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTOps_init_s2pt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition init_s2pt_spec_low (v_vmid: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_pt_spec v_vmid st));
    when st == ((init_npt_spec v_vmid st));
    when st == ((release_lock_pt_spec v_vmid st));
    let __return__ := true in
    (Some st).

End S2PTOps_init_s2pt_LowSpec.

#[global] Hint Unfold init_s2pt_spec_low: spec.
