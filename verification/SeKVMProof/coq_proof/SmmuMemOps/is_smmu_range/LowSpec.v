Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuMemOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuMemOps_is_smmu_range_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint is_smmu_range_loop_low (_N_: nat) (v_addr: Z) (v_indvars_iv: Z) (v_res_018: Z) (v_res_0_lcssa: Z) (v_wide_trip_count: Z) (st: RData) : (option (Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr, v_indvars_iv, v_res_018, v_res_0_lcssa, v_wide_trip_count, st))
    | (S _N_) =>
      match ((is_smmu_range_loop_low _N_ v_addr v_indvars_iv v_res_018 v_res_0_lcssa v_wide_trip_count st)) with
      | (Some (v_addr, v_indvars_iv, v_res_018, v_res_0_lcssa, v_wide_trip_count, st)) =>
        let v_0 := v_indvars_iv in
        when v_call1, st == ((get_smmu_base_spec v_0 st));
        let v_1 := v_indvars_iv in
        when v_call2, st == ((get_smmu_size_spec v_1 st));
        let v_cmp3_not := (v_call1 <=? v_addr) in
        let v_add := (v_call2 + v_call1) in
        let v_cmp4 := (v_add >? v_addr) in
        let v_or_cond := (
            if v_cmp3_not
            then v_cmp4
            else false) in
        let v_res_1 := (
            if v_or_cond
            then v_indvars_iv
            else v_res_018) in
        let v_indvars_iv_next := (v_indvars_iv + 1) in
        let v_exitcond_not := (v_indvars_iv_next =? v_wide_trip_count) in
        match (
          let __continue__ := false in
          let __break__ := false in
          if v_exitcond_not
          then (
            let v_res_0_lcssa := v_res_1 in
            let __break__ := true in
            (Some (__break__, __continue__, v_indvars_iv, v_res_018, v_res_0_lcssa, st)))
          else (
            let v_indvars_iv := v_indvars_iv_next in
            let v_res_018 := v_res_1 in
            let __continue__ := true in
            (Some (__break__, __continue__, v_indvars_iv, v_res_018, v_res_0_lcssa, st)))
        ) with
        | (Some (__break__, __continue__, v_indvars_iv, v_res_018, v_res_0_lcssa, st)) =>
          if __break__
          then (Some (v_addr, v_indvars_iv, v_res_018, v_res_0_lcssa, v_wide_trip_count, st))
          else (
            if __continue__
            then (Some (v_addr, v_indvars_iv, v_res_018, v_res_0_lcssa, v_wide_trip_count, st))
            else (Some (v_addr, v_indvars_iv, v_res_018, v_res_0_lcssa, v_wide_trip_count, st)))
        | None => None
        end
      | None => None
      end
    end.

  Definition is_smmu_range_spec_low (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_smmu_num_spec st));
    let v_cmp17_not := (v_call =? 0) in
    when v_res_0_lcssa, st == (
        let v_res_0_lcssa := 0 in
        if v_cmp17_not
        then (
          let v_res_0_lcssa := (- 1) in
          (Some (v_res_0_lcssa, st)))
        else (
          let v_wide_trip_count := v_call in
          let v_indvars_iv := 0 in
          let v_res_018 := (- 1) in
          rely (((is_smmu_range_loop_rank v_addr v_indvars_iv v_res_018 v_wide_trip_count) >= 0));
          match (
            (is_smmu_range_loop_low
              (z_to_nat (is_smmu_range_loop_rank v_addr v_indvars_iv v_res_018 v_wide_trip_count)) 
              v_addr 
              v_indvars_iv 
              v_res_018 
              0 
              v_wide_trip_count 
              st)
          ) with
          | (Some (v_addr, v_indvars_iv, v_res_018, v_res_0_lcssa, v_wide_trip_count, st)) => (Some (v_res_0_lcssa, st))
          | None => None
          end));
    let __return__ := true in
    let __retval__ := v_res_0_lcssa in
    (Some (__retval__, st)).

End SmmuMemOps_is_smmu_range_LowSpec.

#[global] Hint Unfold is_smmu_range_loop_low: spec.
#[global] Hint Unfold is_smmu_range_spec_low: spec.
