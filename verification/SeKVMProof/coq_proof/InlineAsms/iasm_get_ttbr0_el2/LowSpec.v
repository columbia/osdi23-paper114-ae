Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section InlineAsms_iasm_get_ttbr0_el2_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition iasm_get_ttbr0_el2_spec_low (st: RData) : (option (Z * RData)) :=
    when v_val == ((get_reg_RData (Rsys Rttbr0_el2) st));
    (Some (v_val, st)).

End InlineAsms_iasm_get_ttbr0_el2_LowSpec.

#[global] Hint Unfold iasm_get_ttbr0_el2_spec_low: spec.
