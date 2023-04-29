Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import VMOps.Spec.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOps_verify_and_load_images_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint verify_and_load_images_loop_low (_N_: nat) (v_call1: Z) (v_load_idx_032: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_call1, v_load_idx_032, v_vmid, st))
    | (S _N_) =>
      match ((verify_and_load_images_loop_low _N_ v_call1 v_load_idx_032 v_vmid st)) with
      | (Some (v_call1, v_load_idx_032, v_vmid, st)) =>
        when v_call3, st == ((get_vm_load_addr_spec v_vmid v_load_idx_032 st));
        when v_call4, st == ((get_vm_remap_addr_spec v_vmid v_load_idx_032 st));
        when v_call5, st == ((get_vm_mapped_pages_spec v_vmid v_load_idx_032 st));
        when st == ((unmap_and_load_vm_image_spec v_vmid v_call3 v_call4 v_call5 st));
        when v_call6, st == ((verify_image_spec v_vmid v_load_idx_032 st));
        let v_add := (v_load_idx_032 + 1) in
        let v_exitcond_not := (v_add =? v_call1) in
        match (
          let __continue__ := false in
          let __break__ := false in
          if v_exitcond_not
          then (
            let __break__ := true in
            (Some (__break__, __continue__, v_load_idx_032, st)))
          else (
            let v_load_idx_032 := v_add in
            let __continue__ := true in
            (Some (__break__, __continue__, v_load_idx_032, st)))
        ) with
        | (Some (__break__, __continue__, v_load_idx_032, st)) =>
          if __break__
          then (Some (v_call1, v_load_idx_032, v_vmid, st))
          else (
            if __continue__
            then (Some (v_call1, v_load_idx_032, v_vmid, st))
            else (Some (v_call1, v_load_idx_032, v_vmid, st)))
        | None => None
        end
      | None => None
      end
    end.

  Definition verify_and_load_images_spec_low (v_vmid: Z) (st: RData) : (option RData) :=
    when st == ((acquire_lock_vm_spec v_vmid st));
    when v_call, st == ((get_vm_state_spec v_vmid st));
    let v_cmp := (v_call =? 2) in
    when st == (
        if v_cmp
        then (
          when v_call1, st == ((get_vm_next_load_idx_spec v_vmid st));
          let v_cmp231_not := (v_call1 =? 0) in
          when st == (
              if v_cmp231_not
              then (Some st)
              else (
                let v_load_idx_032 := 0 in
                rely (((verify_and_load_images_loop_rank v_call1 v_load_idx_032 v_vmid) >= 0));
                match ((verify_and_load_images_loop_low (z_to_nat (verify_and_load_images_loop_rank v_call1 v_load_idx_032 v_vmid)) v_call1 v_load_idx_032 v_vmid st)) with
                | (Some (v_call1, v_load_idx_032, v_vmid, st)) => (Some st)
                | None => None
                end));
          when st == ((set_vm_state_spec v_vmid 3 st));
          (Some st))
        else (
          when st == ((v_panic_spec st));
          (Some st)));
    when st == ((release_lock_vm_spec v_vmid st));
    let __return__ := true in
    (Some st).

End VMOps_verify_and_load_images_LowSpec.

#[global] Hint Unfold verify_and_load_images_loop_low: spec.
#[global] Hint Unfold verify_and_load_images_spec_low: spec.
