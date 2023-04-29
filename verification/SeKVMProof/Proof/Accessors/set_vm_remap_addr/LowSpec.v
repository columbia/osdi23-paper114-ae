Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_set_vm_remap_addr_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vm_remap_addr_spec_low (v_vmid: Z) (v_load_idx: Z) (v_remap_addr: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_el2_data_start_spec st));
    let v_idxprom := v_vmid in
    let v_idxprom1 := v_load_idx in
    rely (((0 <= v_idxprom1) /\ (v_idxprom1 < 5)));
    rely (((0 <= v_idxprom) /\ (v_idxprom < 19)));
    let v_el2_remap_addr := (ptr_offset v_call ((33731152 * 0) + (33686424 + ((768 * v_idxprom) + (32 + ((96 * v_idxprom1) + (16 + 0))))))) in
    when st == ((store_RData 8 v_el2_remap_addr v_remap_addr st));
    let __return__ := true in
    (Some st).

End Accessors_set_vm_remap_addr_LowSpec.

#[global] Hint Unfold set_vm_remap_addr_spec_low: spec.
