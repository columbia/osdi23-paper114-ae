Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_get_shadow_ctxt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_shadow_ctxt_spec_low (v_vmid: Z) (v_vcpuid: Z) (v_index: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_mul := (v_vmid << 2) in
    let v_add := (v_mul + v_vcpuid) in
    let v_cmp := (v_index <? 41) in
    when v_val_0_in, st == (
        let v_val_0_in := (mkPtr "#" 0) in
        if v_cmp
        then (
          let v_idxprom := v_add in
          let v_idxprom1 := v_index in
          rely (((0 <= v_idxprom1) /\ (v_idxprom1 < 41)));
          rely (((0 <= v_idxprom) /\ (v_idxprom < 72)));
          let v_arrayidx2 := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom) + (0 + ((8 * v_idxprom1) + 0)))))) in
          let v_val_0_in := v_arrayidx2 in
          (Some (v_val_0_in, st)))
        else (
          when v_val_0_in, st == (
              let v_val_0_in := (mkPtr "#" 0) in
              if (v_index =? 45)
              then (
                let v_idxprom30 := v_add in
                rely (((0 <= v_idxprom30) /\ (v_idxprom30 < 72)));
                let v_dirty := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom30) + (360 + 0))))) in
                let v_val_0_in := v_dirty in
                (Some (v_val_0_in, st)))
              else (
                when v_val_0_in, st == (
                    let v_val_0_in := (mkPtr "#" 0) in
                    if (v_index =? 41)
                    then (
                      let v_idxprom6 := v_add in
                      rely (((0 <= v_idxprom6) /\ (v_idxprom6 < 72)));
                      let v_far_el2 := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom6) + (328 + 0))))) in
                      let v_val_0_in := v_far_el2 in
                      (Some (v_val_0_in, st)))
                    else (
                      when v_val_0_in, st == (
                          let v_val_0_in := (mkPtr "#" 0) in
                          if (v_index =? 42)
                          then (
                            let v_idxprom12 := v_add in
                            rely (((0 <= v_idxprom12) /\ (v_idxprom12 < 72)));
                            let v_hpfar := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom12) + (336 + 0))))) in
                            let v_val_0_in := v_hpfar in
                            (Some (v_val_0_in, st)))
                          else (
                            when v_val_0_in, st == (
                                let v_val_0_in := (mkPtr "#" 0) in
                                if (v_index =? 43)
                                then (
                                  let v_idxprom18 := v_add in
                                  rely (((0 <= v_idxprom18) /\ (v_idxprom18 < 72)));
                                  let v_hcr_el2 := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom18) + (344 + 0))))) in
                                  let v_val_0_in := v_hcr_el2 in
                                  (Some (v_val_0_in, st)))
                                else (
                                  when v_val_0_in, st == (
                                      let v_val_0_in := (mkPtr "#" 0) in
                                      if (v_index =? 44)
                                      then (
                                        let v_idxprom24 := v_add in
                                        rely (((0 <= v_idxprom24) /\ (v_idxprom24 < 72)));
                                        let v_ec := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom24) + (352 + 0))))) in
                                        let v_val_0_in := v_ec in
                                        (Some (v_val_0_in, st)))
                                      else (
                                        let v_idxprom36 := v_add in
                                        rely (((0 <= v_idxprom36) /\ (v_idxprom36 < 72)));
                                        let v_flags := (ptr_offset v_call ((33731152 * 0) + (33555568 + ((1808 * v_idxprom36) + (368 + 0))))) in
                                        let v_val_0_in := v_flags in
                                        (Some (v_val_0_in, st))));
                                  (Some (v_val_0_in, st))));
                            (Some (v_val_0_in, st))));
                      (Some (v_val_0_in, st))));
                (Some (v_val_0_in, st))));
          (Some (v_val_0_in, st))));
    when v_val_0, st == ((load_RData 8 v_val_0_in st));
    let __return__ := true in
    let __retval__ := v_val_0 in
    (Some (__retval__, st)).

End Accessors_get_shadow_ctxt_LowSpec.

#[global] Hint Unfold get_shadow_ctxt_spec_low: spec.
