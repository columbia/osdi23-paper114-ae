Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuAccess_handle_smmu_global_access_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_smmu_global_access_spec_low (v_hsr: Z) (v_offset: Z) (v_smmu_index: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((host_get_mmio_data_spec v_hsr st));
    let v_cmp1 := (v_offset <? 4096) in
    when v_ret_2, st == (
        let v_ret_2 := 0 in
        if v_cmp1
        then (
          when v_ret_2, st == (
              let v_ret_2 := 0 in
              if (v_offset =? 8)
              then (
                let v_and9 := (v_call & 255) in
                let v_cmp10 := (v_and9 =? 0) in
                let v__60 := (bool_to_int v_cmp10) in
                let v_ret_2 := v__60 in
                (Some (v_ret_2, st)))
              else (
                when v_ret_2, st == (
                    let v_ret_2 := 0 in
                    if (v_offset =? 0)
                    then (
                      let v_0 := v_call in
                      let v_1 := (v_0 >> 21) in
                      let v_2 := (v_1 & 1) in
                      let v_ret_2 := v_2 in
                      (Some (v_ret_2, st)))
                    else (
                      let v_ret_2 := 1 in
                      (Some (v_ret_2, st))));
                (Some (v_ret_2, st))));
          (Some (v_ret_2, st)))
        else (
          let v_cmp20 := (v_offset <? 6144) in
          when v_ret_2, st == (
              let v_ret_2 := 0 in
              if v_cmp20
              then (
                let v_sub := (v_offset + 17179865088) in
                let v_div := (v_sub >> 2) in
                let v_conv := v_div in
                when v_call22, st == ((get_smmu_cfg_vmid_spec v_conv v_smmu_index st));
                let v_cmp26 := (v_call22 =? 0) in
                when v_ret_2, st == (
                    let v_ret_2 := 0 in
                    if v_cmp26
                    then (
                      let v_ret_2 := 1 in
                      (Some (v_ret_2, st)))
                    else (
                      let v_and25 := (v_call & 255) in
                      let v_conv23 := v_call22 in
                      let v_cmp30 := (v_call <? 65536) in
                      let v_cmp33 := (v_and25 =? v_conv23) in
                      let v_or_cond := (
                          if v_cmp30
                          then v_cmp33
                          else false) in
                      let v_spec_select := (bool_to_int v_or_cond) in
                      let v_ret_2 := v_spec_select in
                      (Some (v_ret_2, st))));
                (Some (v_ret_2, st)))
              else (
                let v_ret_2 := 1 in
                (Some (v_ret_2, st))));
          (Some (v_ret_2, st))));
    let __return__ := true in
    let __retval__ := v_ret_2 in
    (Some (__retval__, st)).

End SmmuAccess_handle_smmu_global_access_LowSpec.

#[global] Hint Unfold handle_smmu_global_access_spec_low: spec.
