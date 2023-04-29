Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemRegion.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemRegion_mem_region_search_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint mem_region_search_loop_low (_N_: nat) (v_addr: Z) (v_call: Z) (v_i_019: Z) (v_res_018: Z) (v_res_0_lcssa: Z) (st: RData) : (option (Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr, v_call, v_i_019, v_res_018, v_res_0_lcssa, st))
    | (S _N_) =>
      match ((mem_region_search_loop_low _N_ v_addr v_call v_i_019 v_res_018 v_res_0_lcssa st)) with
      | (Some (v_addr, v_call, v_i_019, v_res_018, v_res_0_lcssa, st)) =>
        when v_call1, st == ((get_mem_region_base_spec v_i_019 st));
        when v_call2, st == ((get_mem_region_size_spec v_i_019 st));
        let v_cmp3_not := (v_call1 <=? v_addr) in
        let v_add := (v_call2 + v_call1) in
        let v_cmp4 := (v_add >? v_addr) in
        let v_or_cond := (
            if v_cmp3_not
            then v_cmp4
            else false) in
        let v_res_1 := (
            if v_or_cond
            then v_i_019
            else v_res_018) in
        let v_add5 := (v_i_019 + 1) in
        let v_exitcond_not := (v_add5 =? v_call) in
        match (
          let __continue__ := false in
          let __break__ := false in
          if v_exitcond_not
          then (
            let v_res_0_lcssa := v_res_1 in
            let __break__ := true in
            (Some (__break__, __continue__, v_i_019, v_res_018, v_res_0_lcssa, st)))
          else (
            let v_i_019 := v_add5 in
            let v_res_018 := v_res_1 in
            let __continue__ := true in
            (Some (__break__, __continue__, v_i_019, v_res_018, v_res_0_lcssa, st)))
        ) with
        | (Some (__break__, __continue__, v_i_019, v_res_018, v_res_0_lcssa, st)) =>
          if __break__
          then (Some (v_addr, v_call, v_i_019, v_res_018, v_res_0_lcssa, st))
          else (
            if __continue__
            then (Some (v_addr, v_call, v_i_019, v_res_018, v_res_0_lcssa, st))
            else (Some (v_addr, v_call, v_i_019, v_res_018, v_res_0_lcssa, st)))
        | None => None
        end
      | None => None
      end
    end.

  Definition mem_region_search_spec_low (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_mem_region_cnt_spec st));
    let v_cmp17_not := (v_call =? 0) in
    when v_res_0_lcssa, st == (
        let v_res_0_lcssa := 0 in
        if v_cmp17_not
        then (
          let v_res_0_lcssa := (- 1) in
          (Some (v_res_0_lcssa, st)))
        else (
          let v_i_019 := 0 in
          let v_res_018 := (- 1) in
          rely (((mem_region_search_loop_rank v_addr v_call v_i_019 v_res_018) >= 0));
          match ((mem_region_search_loop_low (z_to_nat (mem_region_search_loop_rank v_addr v_call v_i_019 v_res_018)) v_addr v_call v_i_019 v_res_018 0 st)) with
          | (Some (v_addr, v_call, v_i_019, v_res_018, v_res_0_lcssa, st)) => (Some (v_res_0_lcssa, st))
          | None => None
          end));
    let __return__ := true in
    let __retval__ := v_res_0_lcssa in
    (Some (__retval__, st)).

End MemRegion_mem_region_search_LowSpec.

#[global] Hint Unfold mem_region_search_loop_low: spec.
#[global] Hint Unfold mem_region_search_spec_low: spec.
