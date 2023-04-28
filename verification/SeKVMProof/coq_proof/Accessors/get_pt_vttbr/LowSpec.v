Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_get_pt_vttbr_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_pt_vttbr_spec_low (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_cmp := (v_vmid <? 18) in
    when v_retval_0, st == (
        let v_retval_0 := 0 in
        if v_cmp
        then (
          let v_idxprom := v_vmid in
          rely (((0 <= v_idxprom) /\ (v_idxprom < 19)));
          let v_vttbr := (ptr_offset v_call ((33731152 * 0) + (33686424 + ((768 * v_idxprom) + (0 + 0))))) in
          when v_0, st == ((load_RData 8 v_vttbr st));
          let v_retval_0 := v_0 in
          (Some (v_retval_0, st)))
        else (
          when v_1, st == ((iasm_get_ttbr0_el2_spec st));
          let v_retval_0 := v_1 in
          (Some (v_retval_0, st))));
    let __return__ := true in
    let __retval__ := v_retval_0 in
    (Some (__retval__, st)).

End Accessors_get_pt_vttbr_LowSpec.

#[global] Hint Unfold get_pt_vttbr_spec_low: spec.
