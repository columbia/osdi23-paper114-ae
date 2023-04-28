Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import S2PTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTOps_mmap_s2pt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition mmap_s2pt_spec_low (v_vmid: Z) (v_addr: Z) (v_level: Z) (v_pte: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_pt_spec v_vmid st));
    when st == ((set_npt_spec v_vmid v_addr v_level v_pte st));
    when st == ((release_lock_pt_spec v_vmid st));
    let __return__ := true in
    (Some st).

End S2PTOps_mmap_s2pt_LowSpec.

#[global] Hint Unfold mmap_s2pt_spec_low: spec.
