Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOpsAux.Spec.
Require Import S2PTOps.Spec.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOpsAux_unmap_and_load_vm_image_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint unmap_and_load_vm_image_loop_low (_N_: nat) (v_mb_num_029: Z) (v_remap_addr_addr_032: Z) (v_start_030: Z) (v_target_addr_addr_033: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_mb_num_029, v_remap_addr_addr_032, v_start_030, v_target_addr_addr_033, v_vmid, st))
    | (S _N_) =>
      match ((unmap_and_load_vm_image_loop_low _N_ v_mb_num_029 v_remap_addr_addr_032 v_start_030 v_target_addr_addr_033 v_vmid st)) with
      | (Some (v_mb_num_029, v_remap_addr_addr_032, v_start_030, v_target_addr_addr_033, v_vmid, st)) =>
        when v_call, st == ((walk_s2pt_spec 18 v_remap_addr_addr_032 st));
        let v_and4 := (v_call >> 12) in
        let v_div5 := (v_and4 & 68719476224) in
        let v_cmp6 := (v_div5 =? 0) in
        when st == (
            if v_cmp6
            then (
              when st == ((v_panic_spec st));
              (Some st))
            else (
              let v_mul8 := (v_div5 << 12) in
              when st == ((prot_and_map_vm_s2pt_spec v_vmid v_start_030 v_mul8 2 st));
              (Some st)));
        let v_add9 := (v_start_030 + 2097152) in
        let v_sub10 := (v_remap_addr_addr_032 + v_add9) in
        let v_add11 := (v_sub10 - v_target_addr_addr_033) in
        let v_dec := (v_mb_num_029 + (- 1)) in
        let v_cmp_not := (v_dec =? 0) in
        match (
          let __continue__ := false in
          let __break__ := false in
          if v_cmp_not
          then (
            let __break__ := true in
            (Some (__break__, __continue__, v_mb_num_029, v_remap_addr_addr_032, v_start_030, v_target_addr_addr_033, st)))
          else (
            let v_target_addr_addr_033 := v_add9 in
            let v_remap_addr_addr_032 := v_add11 in
            let v_start_030 := v_add9 in
            let v_mb_num_029 := v_dec in
            let __continue__ := true in
            (Some (__break__, __continue__, v_mb_num_029, v_remap_addr_addr_032, v_start_030, v_target_addr_addr_033, st)))
        ) with
        | (Some (__break__, __continue__, v_mb_num_029, v_remap_addr_addr_032, v_start_030, v_target_addr_addr_033, st)) =>
          if __break__
          then (Some (v_mb_num_029, v_remap_addr_addr_032, v_start_030, v_target_addr_addr_033, v_vmid, st))
          else (
            if __continue__
            then (Some (v_mb_num_029, v_remap_addr_addr_032, v_start_030, v_target_addr_addr_033, v_vmid, st))
            else (Some (v_mb_num_029, v_remap_addr_addr_032, v_start_030, v_target_addr_addr_033, v_vmid, st)))
        | None => None
        end
      | None => None
      end
    end.

  Definition unmap_and_load_vm_image_spec_low (v_vmid: Z) (v_target_addr: Z) (v_remap_addr: Z) (v_num: Z) (st: RData) : (option RData) :=
    let v_and := (v_target_addr & 18446744073707454464) in
    let v_mul := (v_num << 12) in
    let v_add := (v_target_addr + 2097151) in
    let v_sub := (v_add - v_and) in
    let v_add1 := (v_sub + v_mul) in
    let v_cmp_not28 := (v_add1 <? 2097152) in
    when st == (
        if v_cmp_not28
        then (Some st)
        else (
          let v_div := (v_add1 >> 21) in
          let v_target_addr_addr_033 := v_target_addr in
          let v_remap_addr_addr_032 := v_remap_addr in
          let v_start_030 := v_and in
          let v_mb_num_029 := v_div in
          rely (((unmap_and_load_vm_image_loop_rank v_mb_num_029 v_remap_addr_addr_032 v_start_030 v_target_addr_addr_033 v_vmid) >= 0));
          match (
            (unmap_and_load_vm_image_loop_low
              (z_to_nat (unmap_and_load_vm_image_loop_rank v_mb_num_029 v_remap_addr_addr_032 v_start_030 v_target_addr_addr_033 v_vmid)) 
              v_mb_num_029 
              v_remap_addr_addr_032 
              v_start_030 
              v_target_addr_addr_033 
              v_vmid 
              st)
          ) with
          | (Some (v_mb_num_029, v_remap_addr_addr_032, v_start_030, v_target_addr_addr_033, v_vmid, st)) => (Some st)
          | None => None
          end));
    let __return__ := true in
    (Some st).

End VMOpsAux_unmap_and_load_vm_image_LowSpec.

#[global] Hint Unfold unmap_and_load_vm_image_loop_low: spec.
#[global] Hint Unfold unmap_and_load_vm_image_spec_low: spec.
