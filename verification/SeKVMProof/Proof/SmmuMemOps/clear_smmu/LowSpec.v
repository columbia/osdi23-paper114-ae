Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuMemOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuMemOps_clear_smmu_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition clear_smmu_spec_low (v_vmid: Z) (v_cbndx: Z) (v_index: Z) (v_iova: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_vm_spec v_vmid st));
    when st == ((unmap_smmu_page_spec v_cbndx v_index v_iova st));
    when st == ((release_lock_vm_spec v_vmid st));
    let __return__ := true in
    (Some st).

End SmmuMemOps_clear_smmu_LowSpec.

#[global] Hint Unfold clear_smmu_spec_low: spec.
