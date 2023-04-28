Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemoryOps_v_post_handle_shadow_s2pt_fault_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition v_post_handle_shadow_s2pt_fault_spec_low (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_shadow_ctxt_spec v_vmid v_vcpuid 42 st));
    let v_and := (v_call << 8) in
    let v_mul := (v_and & 18446744073709547520) in
    when v_call1, st == ((get_int_new_pte_spec v_vmid v_vcpuid st));
    when v_call2, st == ((get_int_new_level_spec v_vmid v_vcpuid st));
    when st == ((prot_and_map_vm_s2pt_spec v_vmid v_mul v_call1 v_call2 st));
    let __return__ := true in
    (Some st).

End MemoryOps_v_post_handle_shadow_s2pt_fault_LowSpec.

#[global] Hint Unfold v_post_handle_shadow_s2pt_fault_spec_low: spec.
