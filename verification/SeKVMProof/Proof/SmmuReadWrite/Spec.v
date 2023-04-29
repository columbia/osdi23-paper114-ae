Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuReadWrite_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_smmu_read_spec (v_hsr: Z) (v_fault_ipa: Z) (v_len: Z) (st: RData) : (option RData) :=
    rely (((v_len = 8) \/ (v_len = 4)));
    (Some (st.[priv].[e_host_ctxt] :< (((st.(priv)).(e_host_ctxt)) # (_host_dabt_get_rd v_hsr) == (((st.(priv)).(e_umem)) @ v_fault_ipa)))).

  Definition handle_smmu_write_spec (v_hsr: Z) (v_fault_ipa: Z) (v_len: Z) (v_index: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 2)));
    if (((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) - (((((st.(priv)).(e_smmus)) @ v_index).(e___size)) / 2)) <? 0)
    then (
      if ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) <? 4096)
      then (
        if ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) =? 8)
        then (
          if (((((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)) & 255) =? 0)
          then (
            rely (((v_len = 8) \/ (v_len = 4)));
            (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr))))))
          else None)
        else (
          if ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) =? 0)
          then (
            if ((((((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)) >> 21) & 1) =? 0)
            then None
            else (
              rely (((v_len = 8) \/ (v_len = 4)));
              (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)))))))
          else (
            rely (((v_len = 8) \/ (v_len = 4)));
            (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr))))))))
      else (
        rely ((((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) <? 6144) = false));
        rely (((v_len = 8) \/ (v_len = 4)));
        (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr)))))))
    else (
      if (((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) & 4095) =? 48)
      then (
        rely (((v_len = 8) \/ (v_len = 4)));
        (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr))))))
      else (
        if (((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) & 4095) =? 32)
        then (
          rely (
            (((0 - ((8 * v_index) + (4503599627370488 + ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) / 4096)))) <= 0) /\
              (((8 * v_index) + (4503599627370488 + ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) / 4096))) < 16)));
          rely (((v_len = 8) \/ (v_len = 4)));
          (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr))))))
        else (
          if (((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) & 4095) =? 52)
          then None
          else (
            rely (((v_len = 8) \/ (v_len = 4)));
            (Some (st.[priv].[e_umem] :< (((st.(priv)).(e_umem)) # v_fault_ipa == (((st.(priv)).(e_host_ctxt)) @ (_host_dabt_get_rd v_hsr))))))))).

End SmmuReadWrite_Spec.

#[global] Hint Unfold handle_smmu_read_spec: spec.
Opaque handle_smmu_write_spec.
