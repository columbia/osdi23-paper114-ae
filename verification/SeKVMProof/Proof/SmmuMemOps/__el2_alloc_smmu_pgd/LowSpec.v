Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuPTOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuMemOps___el2_alloc_smmu_pgd_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition __el2_alloc_smmu_pgd_spec_low (v_cbndx: Z) (v_vmid: Z) (v_index: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_smmu_spec st));
    when v_call, st == ((get_smmu_num_context_banks_spec v_index st));
    let v_cmp_not := (v_call >? v_cbndx) in
    when st == (
        if v_cmp_not
        then (
          when v_call1, st == ((get_smmu_cfg_vmid_spec v_cbndx v_index st));
          let v_cmp2 := (v_call1 =? (- 1)) in
          when st == (
              if v_cmp2
              then (
                let v_conv := v_vmid in
                when st == ((set_smmu_cfg_vmid_spec v_cbndx v_index v_vmid st));
                when st == ((init_spt_spec v_cbndx v_index st));
                (Some st))
              else (Some st));
          (Some st))
        else (
          when st == ((v_panic_spec st));
          (Some st)));
    when st == ((release_lock_smmu_spec st));
    let __return__ := true in
    (Some st).

End SmmuMemOps___el2_alloc_smmu_pgd_LowSpec.

#[global] Hint Unfold __el2_alloc_smmu_pgd_spec_low: spec.
