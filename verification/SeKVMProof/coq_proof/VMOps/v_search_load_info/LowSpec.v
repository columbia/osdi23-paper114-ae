Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import VMOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOps_v_search_load_info_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint v_search_load_info_loop_low (_N_: nat) (v_addr: Z) (v_call: Z) (v_load_idx_029: Z) (v_ret_028: Z) (v_ret_0_lcssa: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr, v_call, v_load_idx_029, v_ret_028, v_ret_0_lcssa, v_vmid, st))
    | (S _N_) =>
      match ((v_search_load_info_loop_low _N_ v_addr v_call v_load_idx_029 v_ret_028 v_ret_0_lcssa v_vmid st)) with
      | (Some (v_addr, v_call, v_load_idx_029, v_ret_028, v_ret_0_lcssa, v_vmid, st)) =>
        when v_call1, st == ((get_vm_load_addr_spec v_vmid v_load_idx_029 st));
        when v_call2, st == ((get_vm_load_size_spec v_vmid v_load_idx_029 st));
        when v_call3, st == ((get_vm_remap_addr_spec v_vmid v_load_idx_029 st));
        let v_cmp4_not := (v_call1 <=? v_addr) in
        let v_add := (v_call2 + v_call1) in
        let v_cmp5 := (v_add >? v_addr) in
        let v_or_cond := (
            if v_cmp4_not
            then v_cmp5
            else false) in
        let v_sub := (v_addr - v_call1) in
        let v_add6 := (v_sub + v_call3) in
        let v_ret_1 := (
            if v_or_cond
            then v_add6
            else v_ret_028) in
        let v_add7 := (v_load_idx_029 + 1) in
        let v_exitcond_not := (v_add7 =? v_call) in
        match (
          let __continue__ := false in
          let __break__ := false in
          if v_exitcond_not
          then (
            let v_ret_0_lcssa := v_ret_1 in
            let __break__ := true in
            (Some (__break__, __continue__, v_load_idx_029, v_ret_028, v_ret_0_lcssa, st)))
          else (
            let v_load_idx_029 := v_add7 in
            let v_ret_028 := v_ret_1 in
            let __continue__ := true in
            (Some (__break__, __continue__, v_load_idx_029, v_ret_028, v_ret_0_lcssa, st)))
        ) with
        | (Some (__break__, __continue__, v_load_idx_029, v_ret_028, v_ret_0_lcssa, st)) =>
          if __break__
          then (Some (v_addr, v_call, v_load_idx_029, v_ret_028, v_ret_0_lcssa, v_vmid, st))
          else (
            if __continue__
            then (Some (v_addr, v_call, v_load_idx_029, v_ret_028, v_ret_0_lcssa, v_vmid, st))
            else (Some (v_addr, v_call, v_load_idx_029, v_ret_028, v_ret_0_lcssa, v_vmid, st)))
        | None => None
        end
      | None => None
      end
    end.

  Definition v_search_load_info_spec_low (v_vmid: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    when st == ((acquire_lock_vm_spec v_vmid st));
    when v_call, st == ((get_vm_next_load_idx_spec v_vmid st));
    let v_cmp27_not := (v_call =? 0) in
    when v_ret_0_lcssa, st == (
        let v_ret_0_lcssa := 0 in
        if v_cmp27_not
        then (
          let v_ret_0_lcssa := 0 in
          (Some (v_ret_0_lcssa, st)))
        else (
          let v_load_idx_029 := 0 in
          let v_ret_028 := 0 in
          rely (((v_search_load_info_loop_rank v_addr v_call v_load_idx_029 v_ret_028 v_vmid) >= 0));
          match (
            (v_search_load_info_loop_low
              (z_to_nat (v_search_load_info_loop_rank v_addr v_call v_load_idx_029 v_ret_028 v_vmid)) 
              v_addr 
              v_call 
              v_load_idx_029 
              v_ret_028 
              0 
              v_vmid 
              st)
          ) with
          | (Some (v_addr, v_call, v_load_idx_029, v_ret_028, v_ret_0_lcssa, v_vmid, st)) => (Some (v_ret_0_lcssa, st))
          | None => None
          end));
    when st == ((release_lock_vm_spec v_vmid st));
    let __return__ := true in
    let __retval__ := v_ret_0_lcssa in
    (Some (__retval__, st)).

End VMOps_v_search_load_info_LowSpec.

#[global] Hint Unfold v_search_load_info_loop_low: spec.
#[global] Hint Unfold v_search_load_info_spec_low: spec.
