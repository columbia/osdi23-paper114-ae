Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemRegion_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition mem_region_search_loop_rank (v_addr: Z) (v_call: Z) (v_i_019: Z) (v_res_018: Z) : Z :=
    (v_call - v_i_019).

  Fixpoint mem_region_search_loop (_N_: nat) (v_addr: Z) (v_call: Z) (v_i_019: Z) (v_res_018: Z) (v_res_0_lcssa: Z) (st: RData) : (option (Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr, v_call, v_i_019, v_res_018, v_res_0_lcssa, st))
    | (S _N__0) =>
      match ((mem_region_search_loop _N__0 v_addr v_call v_i_019 v_res_018 v_res_0_lcssa st)) with
      | (Some (v_addr_0, v_call_0, v_i_20, v_res_19, v_res_0_lcssa_0, st_0)) =>
        rely ((((0 - v_i_20) <= 0) /\ (v_i_20 < 32)));
        if (((v_i_20 + 1) - v_call_0) =? 0)
        then (
          if (
            if ((((((st_0.(priv)).(e_regions)) @ v_i_20).(e_base)) - v_addr_0) <=? 0)
            then (((((((st_0.(priv)).(e_regions)) @ v_i_20).(e_size)) + ((((st_0.(priv)).(e_regions)) @ v_i_20).(e_base))) - v_addr_0) >? 0)
            else false)
          then (Some (v_addr_0, v_call_0, v_i_20, v_res_19, v_i_20, st_0))
          else (Some (v_addr_0, v_call_0, v_i_20, v_res_19, v_res_19, st_0)))
        else (
          if (
            if ((((((st_0.(priv)).(e_regions)) @ v_i_20).(e_base)) - v_addr_0) <=? 0)
            then (((((((st_0.(priv)).(e_regions)) @ v_i_20).(e_size)) + ((((st_0.(priv)).(e_regions)) @ v_i_20).(e_base))) - v_addr_0) >? 0)
            else false)
          then (Some (v_addr_0, v_call_0, (v_i_20 + 1), v_i_20, v_res_0_lcssa_0, st_0))
          else (Some (v_addr_0, v_call_0, (v_i_20 + 1), v_res_19, v_res_0_lcssa_0, st_0)))
      | None => None
      end
    end.

  Definition mem_region_search_spec (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    if (((st.(priv)).(e_regions_cnt)) =? 0)
    then (Some ((- 1), st))
    else (
      rely ((((st.(priv)).(e_regions_cnt)) >= 0));
      match ((mem_region_search_loop (z_to_nat ((st.(priv)).(e_regions_cnt))) v_addr ((st.(priv)).(e_regions_cnt)) 0 (- 1) 0 st)) with
      | (Some (v_addr_0, v_call_0, v_i_20, v_res_19, v_res_0_lcssa_0, st_1)) => (Some (v_res_0_lcssa_0, st_1))
      | None => None
      end).

End MemRegion_Spec.

#[global] Hint Unfold mem_region_search_loop_rank: spec.
#[global] Hint Unfold mem_region_search_loop: spec.
#[global] Hint Unfold mem_region_search_spec: spec.
