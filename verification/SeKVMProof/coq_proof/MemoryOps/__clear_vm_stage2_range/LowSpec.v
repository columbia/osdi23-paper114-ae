Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOps.Spec.
Require Import MemoryOpsAux.Spec.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemoryOps___clear_vm_stage2_range_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint __clear_vm_stage2_range_loop_low (_N_: nat) (v_call2: Z) (v_i_022: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_call2, v_i_022, v_vmid, st))
    | (S _N_) =>
      match ((__clear_vm_stage2_range_loop_low _N_ v_call2 v_i_022 v_vmid st)) with
      | (Some (v_call2, v_i_022, v_vmid, st)) =>
        when v_call4, st == ((get_mem_region_base_spec v_i_022 st));
        when v_call5, st == ((get_mem_region_size_spec v_i_022 st));
        when v_call6, st == ((get_mem_region_flag_spec v_i_022 st));
        let v_and := (v_call6 & 4) in
        let v_cmp7 := (v_and =? 0) in
        when st == (
            if v_cmp7
            then (
              when st == ((__clear_vm_range_spec v_vmid v_call4 v_call5 st));
              (Some st))
            else (Some st));
        let v_inc := (v_i_022 + 1) in
        let v_exitcond_not := (v_inc =? v_call2) in
        match (
          let __continue__ := false in
          let __break__ := false in
          if v_exitcond_not
          then (
            let __break__ := true in
            (Some (__break__, __continue__, v_i_022, st)))
          else (
            let v_i_022 := v_inc in
            let __continue__ := true in
            (Some (__break__, __continue__, v_i_022, st)))
        ) with
        | (Some (__break__, __continue__, v_i_022, st)) =>
          if __break__
          then (Some (v_call2, v_i_022, v_vmid, st))
          else (
            if __continue__
            then (Some (v_call2, v_i_022, v_vmid, st))
            else (Some (v_call2, v_i_022, v_vmid, st)))
        | None => None
        end
      | None => None
      end
    end.

  Definition __clear_vm_stage2_range_spec_low (v_vmid: Z) (v_size: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_vm_poweron_spec v_vmid st));
    let v_cmp := (v_size =? 1099511627776) in
    let v_cmp1 := (v_call =? 0) in
    let v_or_cond := (
        if v_cmp
        then v_cmp1
        else false) in
    when st == (
        if v_or_cond
        then (
          when v_call2, st == ((get_mem_region_cnt_spec st));
          let v_cmp321_not := (v_call2 =? 0) in
          when st == (
              if v_cmp321_not
              then (Some st)
              else (
                let v_i_022 := 0 in
                rely (((__clear_vm_stage2_range_loop_rank v_call2 v_i_022 v_vmid) >= 0));
                match ((__clear_vm_stage2_range_loop_low (z_to_nat (__clear_vm_stage2_range_loop_rank v_call2 v_i_022 v_vmid)) v_call2 v_i_022 v_vmid st)) with
                | (Some (v_call2, v_i_022, v_vmid, st)) => (Some st)
                | None => None
                end));
          (Some st))
        else (Some st));
    let __return__ := true in
    (Some st).

End MemoryOps___clear_vm_stage2_range_LowSpec.

#[global] Hint Unfold __clear_vm_stage2_range_loop_low: spec.
#[global] Hint Unfold __clear_vm_stage2_range_spec_low: spec.
