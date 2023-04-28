Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemRegion.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section PageIndex_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_s2_page_index_spec (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    if (((st.(priv)).(e_regions_cnt)) =? 0)
    then (Some ((- 1), st))
    else (
      rely ((((st.(priv)).(e_regions_cnt)) >= 0));
      match ((mem_region_search_loop (z_to_nat ((st.(priv)).(e_regions_cnt))) v_addr ((st.(priv)).(e_regions_cnt)) 0 (- 1) 0 st)) with
      | (Some (v_addr_1, v_call_0, v_i_20, v_res_19, v_res_0_lcssa_0, st_1)) =>
        if (v_res_0_lcssa_0 =? (- 1))
        then (Some ((- 1), st_1))
        else (
          rely ((((0 - v_res_0_lcssa_0) <= 0) /\ (v_res_0_lcssa_0 < 32)));
          if (((((st_1.(priv)).(e_s2_memblock_info)) @ v_res_0_lcssa_0).(e_index)) =? (- 1))
          then (Some ((- 1), st_1))
          else (Some ((((v_addr - ((((st_1.(priv)).(e_regions)) @ v_res_0_lcssa_0).(e_base))) >> 12) + ((((st_1.(priv)).(e_s2_memblock_info)) @ v_res_0_lcssa_0).(e_index))), st_1)))
      | None => None
      end).

End PageIndex_Spec.

#[global] Hint Unfold get_s2_page_index_spec: spec.
