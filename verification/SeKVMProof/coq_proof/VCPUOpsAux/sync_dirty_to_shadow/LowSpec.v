Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import VCPUOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VCPUOpsAux_sync_dirty_to_shadow_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint sync_dirty_to_shadow_loop_low (_N_: nat) (__return__: bool) (v_call: Z) (v_i_016: Z) (v_vcpuid: Z) (v_vmid: Z) (st: RData) : (option (bool * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (__return__, v_call, v_i_016, v_vcpuid, v_vmid, st))
    | (S _N_) =>
      match ((sync_dirty_to_shadow_loop_low _N_ __return__ v_call v_i_016 v_vcpuid v_vmid st)) with
      | (Some (__return__, v_call, v_i_016, v_vcpuid, v_vmid, st)) =>
        let v_shl := (1 << v_i_016) in
        let v_and15 := (v_shl & v_call) in
        let v_tobool_not := (v_and15 =? 0) in
        when st == (
            if v_tobool_not
            then (Some st)
            else (
              when v_call3, st == ((get_int_gpr_spec v_vmid v_vcpuid v_i_016 st));
              when st == ((set_shadow_ctxt_spec v_vmid v_vcpuid v_i_016 v_call3 st));
              (Some st)));
        let v_add := (v_i_016 + 1) in
        let v_exitcond_not := (v_add =? 31) in
        match (
          if v_exitcond_not
          then (
            let __return__ := true in
            (Some (__return__, v_i_016, st)))
          else (
            let v_i_016 := v_add in
            (Some (__return__, v_i_016, st)))
        ) with
        | (Some (__return__, v_i_016, st)) =>
          if __return__
          then (Some (__return__, v_call, v_i_016, v_vcpuid, v_vmid, st))
          else (
            let __continue__ := true in
            (Some (__return__, v_call, v_i_016, v_vcpuid, v_vmid, st)))
        | None => None
        end
      | None => None
      end
    end.

  Definition sync_dirty_to_shadow_spec_low (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    when v_call, st == ((get_shadow_dirty_bit_spec v_vmid v_vcpuid st));
    let v_i_016 := 0 in
    rely (((sync_dirty_to_shadow_loop_rank v_call v_i_016 v_vcpuid v_vmid) >= 0));
    match ((sync_dirty_to_shadow_loop_low (z_to_nat (sync_dirty_to_shadow_loop_rank v_call v_i_016 v_vcpuid v_vmid)) false v_call v_i_016 v_vcpuid v_vmid st)) with
    | (Some (__return__, v_call, v_i_016, v_vcpuid, v_vmid, st)) =>
      if __return__
      then (Some st)
      else (Some st)
    | None => None
    end.

End VCPUOpsAux_sync_dirty_to_shadow_LowSpec.

#[global] Hint Unfold sync_dirty_to_shadow_loop_low: spec.
#[global] Hint Unfold sync_dirty_to_shadow_spec_low: spec.
