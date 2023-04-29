Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuPTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuPTOps_unmap_spt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition unmap_spt_spec_low (v_cbndx: Z) (v_index: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    when st == ((acquire_lock_spt_spec st));
    when v_call, st == ((walk_smmu_pt_spec v_cbndx v_index v_addr st));
    let v_cmp_not := (v_call =? 0) in
    when st == (
        if v_cmp_not
        then (Some st)
        else (
          when st == ((set_smmu_pt_spec v_cbndx v_index v_addr 0 st));
          (Some st)));
    when st == ((release_lock_spt_spec st));
    let __return__ := true in
    let __retval__ := v_call in
    (Some (__retval__, st)).

End SmmuPTOps_unmap_spt_LowSpec.

#[global] Hint Unfold unmap_spt_spec_low: spec.
