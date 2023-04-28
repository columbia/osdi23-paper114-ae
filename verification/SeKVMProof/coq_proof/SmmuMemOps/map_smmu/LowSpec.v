Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuMemOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuMemOps_map_smmu_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition map_smmu_spec_low (v_vmid: Z) (v_cbndx: Z) (v_index: Z) (v_iova: Z) (v_pte: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_vm_spec v_vmid st));
    let v_0 := (v_vmid + (- 1)) in
    let v_1 := (v_0 <? 17) in
    when st == (
        if v_1
        then (
          when v_call, st == ((get_vm_state_spec v_vmid st));
          let v_cmp2 := (v_call =? 3) in
          when st == (
              if v_cmp2
              then (
                when st == ((v_panic_spec st));
                (Some st))
              else (Some st));
          (Some st))
        else (Some st));
    when st == ((update_smmu_page_spec v_vmid v_cbndx v_index v_iova v_pte st));
    when st == ((release_lock_vm_spec v_vmid st));
    let __return__ := true in
    (Some st).

End SmmuMemOps_map_smmu_LowSpec.

#[global] Hint Unfold map_smmu_spec_low: spec.
