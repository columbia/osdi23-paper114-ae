Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_shadow_ctxt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_shadow_ctxt_spec_low (v_vmid: Z) (v_vcpuid: Z) (v_index: Z) (v_value: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_mul := (v_vmid << 2) in
    let v_add := (v_mul + v_vcpuid) in
    let v_cmp := (v_index <? 41) in
    when st == (
        if v_cmp
        then (
          let v_idxprom := v_add in
          let v_idxprom1 := v_index in
          rely (((0 <= v_idxprom1) /\ (v_idxprom1 < 41)));
          rely (((0 <= v_idxprom) /\ (v_idxprom < 72)));
          let v_arrayidx2 := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom) + (0 + ((8 * v_idxprom1) + 0)))))) in
          when st == ((store_RData 8 v_arrayidx2 v_value st));
          (Some st))
        else (
          when st == (
              if (v_index =? 46)
              then (
                let v_idxprom36 := v_add in
                rely (((0 <= v_idxprom36) /\ (v_idxprom36 < 72)));
                let v_flags := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom36) + (368 + 0))))) in
                when st == ((store_RData 8 v_flags v_value st));
                (Some st))
              else (
                when st == (
                    if (v_index =? 41)
                    then (
                      let v_idxprom6 := v_add in
                      rely (((0 <= v_idxprom6) /\ (v_idxprom6 < 72)));
                      let v_far_el2 := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom6) + (328 + 0))))) in
                      when st == ((store_RData 8 v_far_el2 v_value st));
                      (Some st))
                    else (
                      when st == (
                          if (v_index =? 42)
                          then (
                            let v_idxprom12 := v_add in
                            rely (((0 <= v_idxprom12) /\ (v_idxprom12 < 72)));
                            let v_hpfar := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom12) + (336 + 0))))) in
                            when st == ((store_RData 8 v_hpfar v_value st));
                            (Some st))
                          else (
                            when st == (
                                if (v_index =? 43)
                                then (
                                  let v_idxprom18 := v_add in
                                  rely (((0 <= v_idxprom18) /\ (v_idxprom18 < 72)));
                                  let v_hcr_el2 := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom18) + (344 + 0))))) in
                                  when st == ((store_RData 8 v_hcr_el2 v_value st));
                                  (Some st))
                                else (
                                  when st == (
                                      if (v_index =? 44)
                                      then (
                                        let v_idxprom24 := v_add in
                                        rely (((0 <= v_idxprom24) /\ (v_idxprom24 < 72)));
                                        let v_ec := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom24) + (352 + 0))))) in
                                        when st == ((store_RData 8 v_ec v_value st));
                                        (Some st))
                                      else (
                                        when st == (
                                            if (v_index =? 45)
                                            then (
                                              let v_idxprom30 := v_add in
                                              rely (((0 <= v_idxprom30) /\ (v_idxprom30 < 72)));
                                              let v_dirty := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom30) + (360 + 0))))) in
                                              when st == ((store_RData 8 v_dirty v_value st));
                                              (Some st))
                                            else (
                                              let v_sub := (v_index + (- 47)) in
                                              let v_idxprom42 := v_add in
                                              let v_idxprom44 := v_sub in
                                              rely (((0 <= v_idxprom44) /\ (v_idxprom44 < 111)));
                                              rely (((0 <= v_idxprom42) /\ (v_idxprom42 < 72)));
                                              let v_arrayidx45 := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom42) + (376 + (0 + ((8 * v_idxprom44) + 0))))))) in
                                              when st == ((store_RData 8 v_arrayidx45 v_value st));
                                              (Some st)));
                                        (Some st)));
                                  (Some st)));
                            (Some st)));
                      (Some st)));
                (Some st)));
          (Some st)));
    let __return__ := true in
    (Some st).

End Accessors_set_shadow_ctxt_LowSpec.

#[global] Hint Unfold set_shadow_ctxt_spec_low: spec.
