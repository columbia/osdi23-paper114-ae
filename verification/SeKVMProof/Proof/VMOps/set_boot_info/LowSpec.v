Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOps_set_boot_info_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_boot_info_spec_low (v_vmid: Z) (v_load_addr: Z) (v_size: Z) (st: RData) : (option (Z * RData)) :=
    when st == ((acquire_lock_vm_spec v_vmid st));
    when v_call, st == ((get_vm_state_spec v_vmid st));
    let v_cmp := (v_call =? 2) in
    when v_load_idx_0, st == (
        let v_load_idx_0 := 0 in
        if v_cmp
        then (
          when v_call1, st == ((get_vm_next_load_idx_spec v_vmid st));
          let v_cmp2 := (v_call1 <? 5) in
          when v_load_idx_0, st == (
              let v_load_idx_0 := 0 in
              if v_cmp2
              then (
                let v_add := (v_call1 + 1) in
                when st == ((set_vm_next_load_idx_spec v_vmid v_add st));
                let v_sub := (v_size + 4095) in
                let v_div := (v_sub >> 12) in
                when v_call5, st == ((alloc_remap_addr_spec v_div st));
                when st == ((set_vm_load_addr_spec v_vmid v_call1 v_load_addr st));
                when st == ((set_vm_load_size_spec v_vmid v_call1 v_size st));
                when st == ((set_vm_remap_addr_spec v_vmid v_call1 v_call5 st));
                when st == ((set_vm_mapped_pages_spec v_vmid v_call1 0 st));
                when st == ((set_vm_load_signature_spec v_vmid v_call1 st));
                let v_load_idx_0 := v_call1 in
                (Some (v_load_idx_0, st)))
              else (
                let v_load_idx_0 := v_call1 in
                (Some (v_load_idx_0, st))));
          (Some (v_load_idx_0, st)))
        else (
          let v_load_idx_0 := (- 1) in
          (Some (v_load_idx_0, st))));
    when st == ((release_lock_vm_spec v_vmid st));
    let __return__ := true in
    let __retval__ := v_load_idx_0 in
    (Some (__retval__, st)).

End VMOps_set_boot_info_LowSpec.

#[global] Hint Unfold set_boot_info_spec_low: spec.
