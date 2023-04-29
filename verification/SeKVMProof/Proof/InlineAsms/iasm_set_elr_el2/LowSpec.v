Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section InlineAsms_iasm_set_elr_el2_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition iasm_set_elr_el2_spec_low (v_val: Z) (st: RData) : (option RData) :=
    (set_reg_RData (Rsys Relr_el2) v_val st).

End InlineAsms_iasm_set_elr_el2_LowSpec.

#[global] Hint Unfold iasm_set_elr_el2_spec_low: spec.
