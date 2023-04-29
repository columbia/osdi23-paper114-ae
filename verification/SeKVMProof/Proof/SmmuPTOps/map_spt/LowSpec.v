Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuPTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuPTOps_map_spt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition map_spt_spec_low (v_cbndx: Z) (v_index: Z) (v_addr: Z) (v_pte: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_spt_spec st));
    when st == ((set_smmu_pt_spec v_cbndx v_index v_addr v_pte st));
    when st == ((release_lock_spt_spec st));
    let __return__ := true in
    (Some st).

End SmmuPTOps_map_spt_LowSpec.

#[global] Hint Unfold map_spt_spec_low: spec.
