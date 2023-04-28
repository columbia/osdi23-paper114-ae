Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import S2PTOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOps_remap_vm_image_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition remap_vm_image_spec_low (v_vmid: Z) (v_pfn: Z) (v_load_idx: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_vm_spec v_vmid st));
    when v_call, st == ((get_vm_state_spec v_vmid st));
    let v_cmp := (v_call =? 2) in
    when st == (
        if v_cmp
        then (
          when v_call1, st == ((get_vm_next_load_idx_spec v_vmid st));
          let v_cmp2 := (v_call1 >? v_load_idx) in
          when st == (
              if v_cmp2
              then (
                when v_call4, st == ((get_vm_load_size_spec v_vmid v_load_idx st));
                let v_sub := (v_call4 + 4095) in
                let v_div := (v_sub >> 12) in
                when v_call5, st == ((get_vm_mapped_pages_spec v_vmid v_load_idx st));
                when v_call6, st == ((get_vm_remap_addr_spec v_vmid v_load_idx st));
                let v_cmp8 := (v_call5 <? v_div) in
                when st == (
                    if v_cmp8
                    then (
                      let v_mul := (v_call5 << 12) in
                      let v_add7 := (v_call6 + v_mul) in
                      let v_mul10 := (v_pfn << 12) in
                      let v_add11 := (v_mul10 + 18014398509483859) in
                      when st == ((mmap_s2pt_spec 18 v_add7 3 v_add11 st));
                      let v_add12 := (v_call5 + 1) in
                      when st == ((set_vm_mapped_pages_spec v_vmid v_load_idx v_add12 st));
                      (Some st))
                    else (Some st));
                (Some st))
              else (Some st));
          (Some st))
        else (
          when st == ((v_panic_spec st));
          (Some st)));
    when st == ((release_lock_vm_spec v_vmid st));
    let __return__ := true in
    (Some st).

End VMOps_remap_vm_image_LowSpec.

#[global] Hint Unfold remap_vm_image_spec_low: spec.
