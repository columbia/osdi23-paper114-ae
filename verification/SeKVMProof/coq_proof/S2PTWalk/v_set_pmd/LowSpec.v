Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTWalk_v_set_pmd_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition v_set_pmd_spec_low (v_vmid: Z) (v_pgd: Z) (v_addr: Z) (v_pmd: Z) (st: RData) : (option RData) :=
    let v_and1 := (v_pgd & 281474976706560) in
    let v_or := (v_pmd |' 36028797018963968) in
    let v_0 := (v_addr >> 18) in
    let v_mul := (v_0 & 4088) in
    let v_add := (v_mul |' v_and1) in
    when st == ((pt_store_spec v_vmid v_add v_or st));
    let __return__ := true in
    (Some st).

End S2PTWalk_v_set_pmd_LowSpec.

#[global] Hint Unfold v_set_pmd_spec_low: spec.
