Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOps_hypsec_set_vcpu_active_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition hypsec_set_vcpu_active_spec_low (v_vmid: Z) (v_vcpu_id: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((vmid_to_vm_info_spec v_vmid st));
    when st == ((acquire_lock_vm_spec v_vmid st));
    when v_call1, st == ((get_vm_state_spec v_vmid st));
    let v_cmp_not := (v_call1 =? 3) in
    when v_ret_0, st == (
        let v_ret_0 := 0 in
        if v_cmp_not
        then (
          when v_call3, st == ((get_vcpu_state_spec v_vmid v_vcpu_id st));
          let v_cmp4 := (v_call3 =? 2) in
          when v_ret_0, st == (
              let v_ret_0 := 0 in
              if v_cmp4
              then (
                when st == ((set_vcpu_state_spec v_vmid v_vcpu_id 4 st));
                let v_ret_0 := 1 in
                (Some (v_ret_0, st)))
              else (
                let v_ret_0 := 0 in
                (Some (v_ret_0, st))));
          (Some (v_ret_0, st)))
        else (
          let v_ret_0 := 0 in
          (Some (v_ret_0, st))));
    when st == ((release_lock_vm_spec v_vmid st));
    let __return__ := true in
    let __retval__ := v_ret_0 in
    (Some (__retval__, st)).

End VMOps_hypsec_set_vcpu_active_LowSpec.

#[global] Hint Unfold hypsec_set_vcpu_active_spec_low: spec.
