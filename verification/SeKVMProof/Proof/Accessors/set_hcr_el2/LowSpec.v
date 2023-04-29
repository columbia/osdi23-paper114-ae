Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_hcr_el2_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_hcr_el2_spec_low (v_val: Z) (st: RData) : (option RData) :=
    when st == ((iasm_set_hcr_el2_spec v_val st));
    let __return__ := true in
    (Some st).

End Accessors_set_hcr_el2_LowSpec.

#[global] Hint Unfold set_hcr_el2_spec_low: spec.
