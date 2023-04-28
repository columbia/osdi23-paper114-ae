Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section GuestHandler_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_pvops_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    if ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0) =? 532480)
    then (
      when st_3 == (
          (v_revoke_stage2_sg_gpa_spec
            v_vmid 
            (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 1) 
            (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 2) 
            st));
      (Some (1, st_3)))
    else (
      if ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0) =? 528384)
      then (
        when st_3 == (
            (v_grant_stage2_sg_gpa_spec
              v_vmid 
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 1) 
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 2) 
              st));
        (Some (1, st_3)))
      else (Some ((- 22), st))).

End GuestHandler_Spec.

#[global] Hint Unfold handle_pvops_spec: spec.
