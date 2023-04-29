Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_get_esr_el2_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_esr_el2_spec_low (st: RData) : (option (Z * RData)) :=
    when v_0, st == ((iasm_get_esr_el2_spec st));
    let __return__ := true in
    let __retval__ := v_0 in
    (Some (__retval__, st)).

End Accessors_get_esr_el2_LowSpec.

#[global] Hint Unfold get_esr_el2_spec_low: spec.
