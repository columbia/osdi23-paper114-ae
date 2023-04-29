Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuMemOpsAux.Spec.
Require Import SmmuReadWrite.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuOpsAux_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_host_mmio_spec (v_index: Z) (v_hsr: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 2)));
    if (_host_dabt_is_write v_hsr)
    then (
      when st_4 == (
          (handle_smmu_write_spec
            v_hsr 
            ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) |' ((((st.(priv)).(e_smmus)) @ v_index).(e_hyp_base))) 
            (_host_dabt_get_as v_hsr) 
            v_index 
            st));
      (Some (st_4.[priv].[e_cpu_regs].[e_sysregs_el2] :<
        ((((st_4.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # ELR_EL2 == (((((st_4.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ELR_EL2) + 4)))))
    else (
      rely ((((_host_dabt_get_as v_hsr) = 8) \/ ((_host_dabt_get_as v_hsr) = 4)));
      (Some ((st.[priv].[e_cpu_regs].[e_sysregs_el2] :<
        ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # ELR_EL2 == (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ELR_EL2) + 4))).[priv].[e_host_ctxt] :<
        (((st.(priv)).(e_host_ctxt)) #
          (_host_dabt_get_rd v_hsr) ==
          (((st.(priv)).(e_umem)) @ ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) |' ((((st.(priv)).(e_smmus)) @ v_index).(e_hyp_base)))))))).

  Definition smmu_assign_page_spec (v_cbndx: Z) (v_index: Z) (v_pfn: Z) (v_gfn: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMU_LOCK) = None));
    rely ((((0 - ((8 * v_index) + v_cbndx)) <= 0) /\ (((8 * v_index) + v_cbndx) < 16)));
    rely ((((0 - (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) <= 0) /\ ((((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) < 19)));
    when st_3 == ((query_oracle ((st_2.[log] :< ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # SMMU_LOCK == (Some CPU_ID)))));
    rely (((((st_3.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))) = None));
    if (((((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) + (- 1)) <? 17)
    then (
      if (((((st_3.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))).(e__state)) =? 3)
      then None
      else (
        when st_4 == (
            (assign_pfn_to_smmu_spec
              (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) 
              v_gfn 
              v_pfn 
              ((st_3.[log] :< ((EVT CPU_ID (ACQ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))))) :: (st_3.(log)))).[shared].[e_locks] :<
                (((st_3.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == (Some CPU_ID)))));
        rely (((((st_4.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))) = (Some CPU_ID)));
        rely ((((((st_4.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) @ SMMU_LOCK) = (Some CPU_ID)));
        (Some ((st_4.[log] :<
          ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_4.(shared)).(e_smmu_vmid))))) ::
            ((EVT
              CPU_ID 
              (REL
                (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) 
                (VMINFO_STATE (((st_4.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))))) ::
              (st_4.(log))))).[shared].[e_locks] :<
          ((((st_4.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) # SMMU_LOCK == None)))))
    else (
      rely ((((((st_3.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) @ SMMU_LOCK) = (Some CPU_ID)));
      (Some ((st_3.[log] :<
        ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_3.(shared)).(e_smmu_vmid))))) ::
          ((EVT
            CPU_ID 
            (REL
              (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) 
              (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))))) ::
            ((EVT CPU_ID (ACQ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))))) :: (st_3.(log)))))).[shared].[e_locks] :<
        ((((st_3.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) # SMMU_LOCK == None)))).

  Definition smmu_map_page_spec (v_cbndx: Z) (v_index: Z) (v_iova: Z) (v_pte: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMU_LOCK) = None));
    rely ((((0 - ((8 * v_index) + v_cbndx)) <= 0) /\ (((8 * v_index) + v_cbndx) < 16)));
    rely ((((0 - (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) <= 0) /\ ((((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) < 19)));
    when st_3 == ((query_oracle ((st_2.[log] :< ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # SMMU_LOCK == (Some CPU_ID)))));
    rely (((((st_3.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))) = None));
    if (((((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) + (- 1)) <? 17)
    then (
      if (((((st_3.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))).(e__state)) =? 3)
      then None
      else (
        when st_4 == (
            (update_smmu_page_spec
              (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) 
              v_cbndx 
              v_index 
              v_iova 
              v_pte 
              ((st_3.[log] :< ((EVT CPU_ID (ACQ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))))) :: (st_3.(log)))).[shared].[e_locks] :<
                (((st_3.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == (Some CPU_ID)))));
        rely (((((st_4.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))) = (Some CPU_ID)));
        rely ((((((st_4.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) @ SMMU_LOCK) = (Some CPU_ID)));
        (Some ((st_4.[log] :<
          ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_4.(shared)).(e_smmu_vmid))))) ::
            ((EVT
              CPU_ID 
              (REL
                (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) 
                (VMINFO_STATE (((st_4.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))))) ::
              (st_4.(log))))).[shared].[e_locks] :<
          ((((st_4.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) # SMMU_LOCK == None)))))
    else (
      when st_4 == (
          (update_smmu_page_spec
            (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) 
            v_cbndx 
            v_index 
            v_iova 
            v_pte 
            ((st_3.[log] :< ((EVT CPU_ID (ACQ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))))) :: (st_3.(log)))).[shared].[e_locks] :<
              (((st_3.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == (Some CPU_ID)))));
      rely (((((st_4.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))) = (Some CPU_ID)));
      rely ((((((st_4.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) @ SMMU_LOCK) = (Some CPU_ID)));
      (Some ((st_4.[log] :<
        ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_4.(shared)).(e_smmu_vmid))))) ::
          ((EVT
            CPU_ID 
            (REL
              (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) 
              (VMINFO_STATE (((st_4.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))))) ::
            (st_4.(log))))).[shared].[e_locks] :<
        ((((st_4.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) # SMMU_LOCK == None)))).

End SmmuOpsAux_Spec.

#[global] Hint Unfold handle_host_mmio_spec: spec.
Opaque smmu_assign_page_spec.
Opaque smmu_map_page_spec.
