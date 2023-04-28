Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuAccess_handle_smmu_cb_access_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_smmu_cb_access_spec_low (v_offset: Z) (st: RData) : (option (Z * RData)) :=
    let v_and := (v_offset & 4095) in
    when v_ret_0, st == (
        let v_ret_0 := 0 in
        if (v_and =? 48)
        then (
          let v_ret_0 := 3 in
          (Some (v_ret_0, st)))
        else (
          when v_ret_0, st == (
              let v_ret_0 := 0 in
              if (v_and =? 32)
              then (
                let v_ret_0 := 2 in
                (Some (v_ret_0, st)))
              else (
                when v_ret_0, st == (
                    let v_ret_0 := 0 in
                    if (v_and =? 52)
                    then (
                      let v_ret_0 := 0 in
                      (Some (v_ret_0, st)))
                    else (
                      let v_ret_0 := 1 in
                      (Some (v_ret_0, st))));
                (Some (v_ret_0, st))));
          (Some (v_ret_0, st))));
    let __return__ := true in
    let __retval__ := v_ret_0 in
    (Some (__retval__, st)).

End SmmuAccess_handle_smmu_cb_access_LowSpec.

#[global] Hint Unfold handle_smmu_cb_access_spec_low: spec.
