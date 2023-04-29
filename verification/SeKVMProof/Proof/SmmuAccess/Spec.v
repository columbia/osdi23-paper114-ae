Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuAccess_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_smmu_cb_access_spec (v_offset: Z) (st: RData) : (option (Z * RData)) :=
    if ((v_offset & 4095) =? 48)
    then (Some (3, st))
    else (
      if ((v_offset & 4095) =? 32)
      then (Some (2, st))
      else (
        if ((v_offset & 4095) =? 52)
        then (Some (0, st))
        else (Some (1, st)))).

  Definition handle_smmu_global_access_spec (v_hsr: Z) (v_offset: Z) (v_smmu_index: Z) (st: RData) : (option (Z * RData)) :=
    if (v_offset <? 4096)
    then (
      if (v_offset =? 8)
      then (
        if (((((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)) & 255) =? 0)
        then (Some (1, st))
        else (Some (0, st)))
      else (
        if (v_offset =? 0)
        then (Some ((((((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)) >> 21) & 1), st))
        else (Some (1, st))))
    else (
      if (v_offset <? 6144)
      then (
        rely ((((0 - ((8 * v_smmu_index) + (4294966272 + (v_offset / 4)))) <= 0) /\ (((8 * v_smmu_index) + (4294966272 + (v_offset / 4))) < 16)));
        rely (((((st.(shared)).(e_locks)) @ SMMU_LOCK) = (Some CPU_ID)));
        if ((((st.(shared)).(e_smmu_vmid)) @ ((8 * v_smmu_index) + (4294966272 + (v_offset / 4)))) =? 0)
        then (Some (1, st))
        else (
          if ((((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)) <? 65536)
          then (
            if ((((((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)) & 255) - (((st.(shared)).(e_smmu_vmid)) @ ((8 * v_smmu_index) + (4294966272 + (v_offset / 4))))) =? 0)
            then (Some (1, st))
            else (Some (0, st)))
          else (Some (0, st))))
      else (Some (1, st))).

End SmmuAccess_Spec.

#[global] Hint Unfold handle_smmu_cb_access_spec: spec.
#[global] Hint Unfold handle_smmu_global_access_spec: spec.
