Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOps.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuMemOpsAux.Spec.
Require Import SmmuOpsAux.Spec.
Require Import SmmuPTTreeOps.Spec.
Require Import SmmuReadWrite.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuOps_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition v_kvm_phys_addr_ioremap_loop_rank (v_gpa_addr_010: Z) (v_n_011: Z) (v_pa_addr_09: Z) (v_vmid: Z) : Z :=
    v_n_011.

  Definition __el2_arm_lpae_iova_to_phys_spec (v_iova: Z) (v_cbndx: Z) (v_index: Z) (st: RData) : (option (Z * RData)) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
    rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
    rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
    rely ((((0 - v_iova) <= 0) /\ ((v_iova - MAX_PADDR) <= 0)));
    if ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_2.(shared)).(e_smmupts))) =? 0)
    then (
      (Some (
        0  ,
        ((st_2.[log] :< ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE ((st_2.(shared)).(e_smmupts))))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # SMMUPT_LOCK == None))
      )))
    else (
      (Some (
        (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_2.(shared)).(e_smmupts))) & 281474976706560) |' (v_iova & 4095))  ,
        ((st_2.[log] :< ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE ((st_2.(shared)).(e_smmupts))))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # SMMUPT_LOCK == None))
      ))).

  Definition emulate_mmio_spec (v_addr: Z) (v_hsr: Z) (st: RData) : (option (Z * RData)) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMU_LOCK) = None));
    if (((st_2.(priv)).(e_el2_smmu_num)) =? 0)
    then (
      (Some (
        (- 1)  ,
        ((st_2.[log] :< ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_2.(shared)).(e_smmu_vmid))))) :: ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # SMMU_LOCK == None))
      )))
    else (
      rely ((((st_2.(priv)).(e_el2_smmu_num)) >= 0));
      match (
        (is_smmu_range_loop
          (z_to_nat ((st_2.(priv)).(e_el2_smmu_num))) 
          v_addr 
          0 
          (- 1) 
          0 
          ((st_2.(priv)).(e_el2_smmu_num)) 
          ((st_2.[log] :< ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # SMMU_LOCK == (Some CPU_ID))))
      ) with
      | (Some (v_addr_1, v_indvars_iv_0, v_res_19, v_res_0_lcssa_0, v_wide_trip_count_0, st_3)) =>
        if (v_res_0_lcssa_0 =? (- 1))
        then (
          rely (((((st_3.(shared)).(e_locks)) @ SMMU_LOCK) = (Some CPU_ID)));
          (Some (
            v_res_0_lcssa_0  ,
            ((st_3.[log] :< ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_3.(shared)).(e_smmu_vmid))))) :: (st_3.(log)))).[shared].[e_locks] :<
              (((st_3.(shared)).(e_locks)) # SMMU_LOCK == None))
          )))
        else (
          rely ((((0 - v_res_0_lcssa_0) <= 0) /\ (v_res_0_lcssa_0 < 2)));
          if (_host_dabt_is_write v_hsr)
          then (
            when st_4 == (
                (handle_smmu_write_spec
                  v_hsr 
                  ((((((st_3.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) |' ((((st_3.(priv)).(e_smmus)) @ v_res_0_lcssa_0).(e_hyp_base))) 
                  (_host_dabt_get_as v_hsr) 
                  v_res_0_lcssa_0 
                  st_3));
            rely (((((st_4.(shared)).(e_locks)) @ SMMU_LOCK) = (Some CPU_ID)));
            (Some (
              v_res_0_lcssa_0  ,
              (((st_4.[log] :< ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_4.(shared)).(e_smmu_vmid))))) :: (st_4.(log)))).[priv].[e_cpu_regs].[e_sysregs_el2] :<
                ((((st_4.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # ELR_EL2 == (((((st_4.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ELR_EL2) + 4))).[shared].[e_locks] :<
                (((st_4.(shared)).(e_locks)) # SMMU_LOCK == None))
            )))
          else (
            rely ((((_host_dabt_get_as v_hsr) = 8) \/ ((_host_dabt_get_as v_hsr) = 4)));
            rely (((((st_3.(shared)).(e_locks)) @ SMMU_LOCK) = (Some CPU_ID)));
            (Some (
              v_res_0_lcssa_0  ,
              ((((st_3.[log] :< ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_3.(shared)).(e_smmu_vmid))))) :: (st_3.(log)))).[priv].[e_cpu_regs].[e_sysregs_el2] :<
                ((((st_3.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # ELR_EL2 == (((((st_3.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ELR_EL2) + 4))).[priv].[e_host_ctxt] :<
                (((st_3.(priv)).(e_host_ctxt)) #
                  (_host_dabt_get_rd v_hsr) ==
                  (((st_3.(priv)).(e_umem)) @ ((((((st_3.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) |' ((((st_3.(priv)).(e_smmus)) @ v_res_0_lcssa_0).(e_hyp_base)))))).[shared].[e_locks] :<
                (((st_3.(shared)).(e_locks)) # SMMU_LOCK == None))
            ))))
      | None => None
      end).

  Fixpoint v_kvm_phys_addr_ioremap_loop (_N_: nat) (v_gpa_addr_010: Z) (v_n_011: Z) (v_pa_addr_09: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_gpa_addr_010, v_n_011, v_pa_addr_09, v_vmid, st))
    | (S _N__0) =>
      match ((v_kvm_phys_addr_ioremap_loop _N__0 v_gpa_addr_010 v_n_011 v_pa_addr_09 v_vmid st)) with
      | (Some (v_gpa_addr_11, v_n_12, v_pa_addr_10, v_vmid_0, st_0)) =>
        rely ((((0 - v_vmid_0) <= 0) /\ (v_vmid_0 < 19)));
        when st_2 == ((query_oracle st_0));
        rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid_0)) = None));
        when st_3 == (
            (__kvm_phys_addr_ioremap_spec
              v_vmid_0 
              v_gpa_addr_11 
              v_pa_addr_10 
              ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid_0))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid_0) == (Some CPU_ID)))));
        rely (((((st_3.(shared)).(e_locks)) @ (5 + v_vmid_0)) = (Some CPU_ID)));
        if ((v_n_12 + (- 1)) =? 0)
        then (
          (Some (
            v_gpa_addr_11  ,
            v_n_12  ,
            v_pa_addr_10  ,
            v_vmid_0  ,
            ((st_3.[log] :< ((EVT CPU_ID (REL (5 + v_vmid_0) (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ v_vmid_0)))) :: (st_3.(log)))).[shared].[e_locks] :<
              (((st_3.(shared)).(e_locks)) # (5 + v_vmid_0) == None))
          )))
        else (
          (Some (
            (v_gpa_addr_11 + 4096)  ,
            (v_n_12 + (- 1))  ,
            (v_pa_addr_10 + 4096)  ,
            v_vmid_0  ,
            ((st_3.[log] :< ((EVT CPU_ID (REL (5 + v_vmid_0) (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ v_vmid_0)))) :: (st_3.(log)))).[shared].[e_locks] :<
              (((st_3.(shared)).(e_locks)) # (5 + v_vmid_0) == None))
          )))
      | None => None
      end
    end.

  Definition v_kvm_phys_addr_ioremap_spec (v_vmid: Z) (v_gpa: Z) (v_pa: Z) (v_size: Z) (st: RData) : (option RData) :=
    if ((v_size + 4095) <? 4096)
    then (Some st)
    else (
      match ((v_kvm_phys_addr_ioremap_loop (z_to_nat ((v_size + 4095) >> 12)) v_gpa ((v_size + 4095) >> 12) v_pa v_vmid st)) with
      | (Some (v_gpa_addr_11, v_n_12, v_pa_addr_10, v_vmid_0, st_0)) => (Some st_0)
      | None => None
      end).

  Definition v_el2_arm_lpae_map_spec (v_iova: Z) (v_paddr: Z) (v_prot: Z) (v_cbndx: Z) (v_index: Z) (st: RData) : (option RData) :=
    when st_1 == ((smmu_assign_page_spec v_cbndx v_index (v_paddr >> 12) (v_iova >> 12) st));
    when st_2 == ((smmu_map_page_spec v_cbndx v_index v_iova (((v_paddr & 281474976706560) |' v_prot) |' 1795) st_1));
    (Some st_2).

  Definition __el2_arm_lpae_clear_spec (v_iova: Z) (v_cbndx: Z) (v_index: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMU_LOCK) = None));
    rely ((((0 - ((8 * v_index) + v_cbndx)) <= 0) /\ (((8 * v_index) + v_cbndx) < 16)));
    rely ((((0 - (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) <= 0) /\ ((((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) < 19)));
    when st_3 == ((query_oracle ((st_2.[log] :< ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # SMMU_LOCK == (Some CPU_ID)))));
    rely (((((st_3.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))) = None));
    when st_4 == (
        (unmap_smmu_page_spec
          v_cbndx 
          v_index 
          v_iova 
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
      ((((st_4.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) # SMMU_LOCK == None))).

End SmmuOps_Spec.

#[global] Hint Unfold v_kvm_phys_addr_ioremap_loop_rank: spec.
Opaque __el2_arm_lpae_iova_to_phys_spec.
Opaque emulate_mmio_spec.
#[global] Hint Unfold v_kvm_phys_addr_ioremap_loop: spec.
Opaque v_kvm_phys_addr_ioremap_spec.
Opaque v_el2_arm_lpae_map_spec.
Opaque __el2_arm_lpae_clear_spec.
