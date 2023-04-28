Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import GuestHandler.Spec.
Require Import InlineAsms.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section GuestExit_fixup_guest_exit_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition fixup_guest_exit_spec_low (v_vmid: Z) (v_vcpuid: Z) (v_exit_code: Z) (st: RData) : (option (bool * RData)) :=
    let v_and := (v_exit_code & 2147483647) in
    let v_cmp_not := (v_and =? 0) in
    when v_esr_el2_0, st == (
        let v_esr_el2_0 := 0 in
        if v_cmp_not
        then (
          let v_esr_el2_0 := 0 in
          (Some (v_esr_el2_0, st)))
        else (
          when v_call, st == ((get_esr_el2_spec st));
          let v_conv := v_call in
          when st == ((set_vcpu_esr_el2_spec v_vmid v_vcpuid v_conv st));
          when st == ((set_shadow_ctxt_esr_spec v_vmid v_vcpuid v_conv st));
          let v_esr_el2_0 := v_conv in
          (Some (v_esr_el2_0, st))));
    let v_cmp1_not := (v_exit_code =? 2) in
    match (
      let __retval__ := false in
      let __return__ := false in
      if v_cmp1_not
      then (
        let v_0 := (v_esr_el2_0 >> 26) in
        let v_cmp9 := (v_0 =? 22) in
        match (
          let __retval__ := false in
          let __return__ := false in
          if v_cmp9
          then (
            when v_call12, st == ((handle_pvops_spec v_vmid v_vcpuid st));
            let v_cmp13 := (v_call12 >? 0) in
            let v_retval_0 := v_cmp13 in
            let __return__ := true in
            let __retval__ := v_retval_0 in
            (Some (__return__, __retval__, st)))
          else (
            let v_1 := (v_esr_el2_0 & 3959422976) in
            let v_2 := (v_1 =? 2147483648) in
            match (
              let __retval__ := false in
              let __return__ := false in
              if v_2
              then (
                when v_call24, st == ((__populate_fault_info_spec v_vmid v_vcpuid v_esr_el2_0 st));
                match (
                  let __retval__ := false in
                  let __return__ := false in
                  if v_call24
                  then (Some (__return__, __retval__, st))
                  else (
                    let v_retval_0 := true in
                    let __return__ := true in
                    let __retval__ := v_retval_0 in
                    (Some (__return__, __retval__, st)))
                ) with
                | (Some (__return__, __retval__, st)) =>
                  if __return__
                  then (Some (__return__, __retval__, st))
                  else (Some (__return__, __retval__, st))
                | None => None
                end)
              else (
                let v_cmp29 := (v_0 =? 24) in
                match (
                  let __retval__ := false in
                  let __return__ := false in
                  if v_cmp29
                  then (
                    when v_3, st == ((iasm_get_elr_el2_spec st));
                    let v_add := (v_3 + 4) in
                    when st == ((iasm_set_elr_el2_spec v_add st));
                    let v_retval_0 := true in
                    let __return__ := true in
                    let __retval__ := v_retval_0 in
                    (Some (__return__, __retval__, st)))
                  else (Some (__return__, __retval__, st))
                ) with
                | (Some (__return__, __retval__, st)) =>
                  if __return__
                  then (Some (__return__, __retval__, st))
                  else (Some (__return__, __retval__, st))
                | None => None
                end)
            ) with
            | (Some (__return__, __retval__, st)) =>
              if __return__
              then (Some (__return__, __retval__, st))
              else (Some (__return__, __retval__, st))
            | None => None
            end)
        ) with
        | (Some (__return__, __retval__, st)) =>
          if __return__
          then (Some (__return__, __retval__, st))
          else (Some (__return__, __retval__, st))
        | None => None
        end)
      else (Some (__return__, __retval__, st))
    ) with
    | (Some (__return__, __retval__, st)) =>
      if __return__
      then (Some (__retval__, st))
      else (
        let v_retval_0 := false in
        let __return__ := true in
        let __retval__ := v_retval_0 in
        (Some (__retval__, st)))
    | None => None
    end.

End GuestExit_fixup_guest_exit_LowSpec.

#[global] Hint Unfold fixup_guest_exit_spec_low: spec.
