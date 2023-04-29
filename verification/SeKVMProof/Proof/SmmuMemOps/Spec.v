Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOps.Spec.
Require Import SmmuMemOpsAux.Spec.
Require Import SmmuPTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuMemOps_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition is_smmu_range_loop_rank (v_addr: Z) (v_indvars_iv: Z) (v_res_018: Z) (v_wide_trip_count: Z) : Z :=
    (v_wide_trip_count - v_indvars_iv).

  Fixpoint is_smmu_range_loop (_N_: nat) (v_addr: Z) (v_indvars_iv: Z) (v_res_018: Z) (v_res_0_lcssa: Z) (v_wide_trip_count: Z) (st: RData) : (option (Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr, v_indvars_iv, v_res_018, v_res_0_lcssa, v_wide_trip_count, st))
    | (S _N__0) =>
      match ((is_smmu_range_loop _N__0 v_addr v_indvars_iv v_res_018 v_res_0_lcssa v_wide_trip_count st)) with
      | (Some (v_addr_0, v_indvars_iv_0, v_res_19, v_res_0_lcssa_0, v_wide_trip_count_0, st_0)) =>
        rely ((((0 - v_indvars_iv_0) <= 0) /\ (v_indvars_iv_0 < 2)));
        if (((v_indvars_iv_0 + 1) - v_wide_trip_count_0) =? 0)
        then (
          if (
            if ((((((st_0.(priv)).(e_smmus)) @ v_indvars_iv_0).(e_phys_base)) - v_addr_0) <=? 0)
            then (((((((st_0.(priv)).(e_smmus)) @ v_indvars_iv_0).(e___size)) + ((((st_0.(priv)).(e_smmus)) @ v_indvars_iv_0).(e_phys_base))) - v_addr_0) >? 0)
            else false)
          then (Some (v_addr_0, v_indvars_iv_0, v_res_19, v_indvars_iv_0, v_wide_trip_count_0, st_0))
          else (Some (v_addr_0, v_indvars_iv_0, v_res_19, v_res_19, v_wide_trip_count_0, st_0)))
        else (
          if (
            if ((((((st_0.(priv)).(e_smmus)) @ v_indvars_iv_0).(e_phys_base)) - v_addr_0) <=? 0)
            then (((((((st_0.(priv)).(e_smmus)) @ v_indvars_iv_0).(e___size)) + ((((st_0.(priv)).(e_smmus)) @ v_indvars_iv_0).(e_phys_base))) - v_addr_0) >? 0)
            else false)
          then (Some (v_addr_0, (v_indvars_iv_0 + 1), v_indvars_iv_0, v_res_0_lcssa_0, v_wide_trip_count_0, st_0))
          else (Some (v_addr_0, (v_indvars_iv_0 + 1), v_res_19, v_res_0_lcssa_0, v_wide_trip_count_0, st_0)))
      | None => None
      end
    end.

  Definition is_smmu_range_spec (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    if (((st.(priv)).(e_el2_smmu_num)) =? 0)
    then (Some ((- 1), st))
    else (
      rely ((((st.(priv)).(e_el2_smmu_num)) >= 0));
      match ((is_smmu_range_loop (z_to_nat ((st.(priv)).(e_el2_smmu_num))) v_addr 0 (- 1) 0 ((st.(priv)).(e_el2_smmu_num)) st)) with
      | (Some (v_addr_0, v_indvars_iv_0, v_res_19, v_res_0_lcssa_0, v_wide_trip_count_0, st_1)) => (Some (v_res_0_lcssa_0, st_1))
      | None => None
      end).

  Definition __el2_alloc_smmu_pgd_spec (v_cbndx: Z) (v_vmid: Z) (v_index: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMU_LOCK) = None));
    rely ((((0 - v_index) <= 0) /\ (v_index < 2)));
    if ((((((st_2.(priv)).(e_smmus)) @ v_index).(e_num_context_banks)) - v_cbndx) >? 0)
    then (
      rely ((((0 - ((8 * v_index) + v_cbndx)) <= 0) /\ (((8 * v_index) + v_cbndx) < 16)));
      if ((((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) =? (- 1))
      then (
        when st_5 == (
            (query_oracle
              (((st_2.[log] :< ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # SMMU_LOCK == (Some CPU_ID))).[shared].[e_smmu_vmid] :<
                (((st_2.(shared)).(e_smmu_vmid)) # ((8 * v_index) + v_cbndx) == v_vmid))));
        rely (((((st_5.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
        rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
        rely ((((((st_5.(shared)).(e_locks)) # SMMUPT_LOCK == None) @ SMMU_LOCK) = (Some CPU_ID)));
        (Some (((st_5.[log] :<
          ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_5.(shared)).(e_smmu_vmid))))) ::
            ((EVT
              CPU_ID 
              (REL
                SMMUPT_LOCK 
                (SMMUPT_STATE (((st_5.(shared)).(e_smmupts)).[e_smmu_pt] :< ((((st_5.(shared)).(e_smmupts)).(e_smmu_pt)) # ((8 * v_index) + v_cbndx) == init_smmupt))))) ::
              ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_5.(log)))))).[shared].[e_locks] :<
          ((((st_5.(shared)).(e_locks)) # SMMUPT_LOCK == None) # SMMU_LOCK == None)).[shared].[e_smmupts].[e_smmu_pt] :<
          ((((st_5.(shared)).(e_smmupts)).(e_smmu_pt)) # ((8 * v_index) + v_cbndx) == init_smmupt))))
      else (
        (Some ((st_2.[log] :< ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st_2.(shared)).(e_smmu_vmid))))) :: ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # SMMU_LOCK == None)))))
    else None.

  Definition __el2_free_smmu_pgd_spec (v_cbndx: Z) (v_index: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMU_LOCK) = None));
    rely ((((0 - ((8 * v_index) + v_cbndx)) <= 0) /\ (((8 * v_index) + v_cbndx) < 16)));
    rely ((((0 - (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) <= 0) /\ ((((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)) < 19)));
    when st_3 == ((query_oracle ((st_2.[log] :< ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # SMMU_LOCK == (Some CPU_ID)))));
    rely (((((st_3.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))) = None));
    if (((((st_3.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))).(e_powered_on)) =? 0)
    then (
      rely ((((((st_3.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) @ SMMU_LOCK) = (Some CPU_ID)));
      (Some (((st_3.[log] :<
        ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE (((st_3.(shared)).(e_smmu_vmid)) # ((8 * v_index) + v_cbndx) == (- 1))))) ::
          ((EVT
            CPU_ID 
            (REL
              (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) 
              (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx)))))) ::
            ((EVT CPU_ID (ACQ (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))))) :: (st_3.(log)))))).[shared].[e_locks] :<
        ((((st_3.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_smmu_vmid)) @ ((8 * v_index) + v_cbndx))) == None) # SMMU_LOCK == None)).[shared].[e_smmu_vmid] :<
        (((st_3.(shared)).(e_smmu_vmid)) # ((8 * v_index) + v_cbndx) == (- 1)))))
    else None.

  Definition map_io_spec (v_vmid: Z) (v_gpa: Z) (v_pa: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    when st_3 == (
        (__kvm_phys_addr_ioremap_spec
          v_vmid 
          v_gpa 
          v_pa 
          ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID)))));
    rely (((((st_3.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some ((st_3.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ v_vmid)))) :: (st_3.(log)))).[shared].[e_locks] :<
      (((st_3.(shared)).(e_locks)) # (5 + v_vmid) == None))).

  Definition assign_smmu_spec (v_vmid: Z) (v_pfn: Z) (v_gfn: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if ((v_vmid + (- 1)) <? 17)
    then (
      if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e__state)) =? 3)
      then None
      else (
        when st_3 == (
            (assign_pfn_to_smmu_spec
              v_vmid 
              v_gfn 
              v_pfn 
              ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID)))));
        rely (((((st_3.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
        (Some ((st_3.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ v_vmid)))) :: (st_3.(log)))).[shared].[e_locks] :<
          (((st_3.(shared)).(e_locks)) # (5 + v_vmid) == None)))))
    else (
      (Some ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)))).

  Definition map_smmu_spec (v_vmid: Z) (v_cbndx: Z) (v_index: Z) (v_iova: Z) (v_pte: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if ((v_vmid + (- 1)) <? 17)
    then (
      if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e__state)) =? 3)
      then None
      else (
        when st_4 == (
            (update_smmu_page_spec
              v_vmid 
              v_cbndx 
              v_index 
              v_iova 
              v_pte 
              ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID)))));
        rely (((((st_4.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
        (Some ((st_4.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_4.(shared)).(e_vminfos)) @ v_vmid)))) :: (st_4.(log)))).[shared].[e_locks] :<
          (((st_4.(shared)).(e_locks)) # (5 + v_vmid) == None)))))
    else (
      when st_3 == (
          (update_smmu_page_spec
            v_vmid 
            v_cbndx 
            v_index 
            v_iova 
            v_pte 
            ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID)))));
      rely (((((st_3.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
      (Some ((st_3.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ v_vmid)))) :: (st_3.(log)))).[shared].[e_locks] :<
        (((st_3.(shared)).(e_locks)) # (5 + v_vmid) == None)))).

  Definition clear_smmu_spec (v_vmid: Z) (v_cbndx: Z) (v_index: Z) (v_iova: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    when st_1 == (
        (unmap_smmu_page_spec
          v_cbndx 
          v_index 
          v_iova 
          ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID)))));
    rely (((((st_1.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some ((st_1.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_1.(shared)).(e_vminfos)) @ v_vmid)))) :: (st_1.(log)))).[shared].[e_locks] :<
      (((st_1.(shared)).(e_locks)) # (5 + v_vmid) == None))).

End SmmuMemOps_Spec.

#[global] Hint Unfold is_smmu_range_loop_rank: spec.
#[global] Hint Unfold is_smmu_range_loop: spec.
#[global] Hint Unfold is_smmu_range_spec: spec.
Opaque __el2_alloc_smmu_pgd_spec.
Opaque __el2_free_smmu_pgd_spec.
#[global] Hint Unfold map_io_spec: spec.
#[global] Hint Unfold assign_smmu_spec: spec.
#[global] Hint Unfold map_smmu_spec: spec.
#[global] Hint Unfold clear_smmu_spec: spec.
