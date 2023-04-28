Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Accessors_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_int_esr_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)), st)).

  Definition get_int_new_level_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e__level)), st)).

  Definition get_int_new_pte_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e_output)), st)).

  Definition get_mem_region_base_spec (v_index: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 32)));
    (Some (((((st.(priv)).(e_regions)) @ v_index).(e_base)), st)).

  Definition get_int_gpr_spec (v_vmid: Z) (v_vcpuid: Z) (v_index: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 31)));
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (
      (((((((((st.(priv)).(e_vcpu_pool)) @ ((8 * (((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + v_index)) / 9056)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) @ v_index)  ,
      st
    )).

  Definition get_int_pc_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e_pc)), st)).

  Definition get_int_pstate_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e_pstate)), st)).

  Definition get_mem_region_flag_spec (v_index: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 32)));
    (Some (((((st.(priv)).(e_regions)) @ v_index).(e_flags)), st)).

  Definition get_mem_region_cnt_spec (st: RData) : (option (Z * RData)) :=
    (Some (((st.(priv)).(e_regions_cnt)), st)).

  Definition get_mem_region_index_spec (v_index: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 32)));
    (Some (((((st.(priv)).(e_s2_memblock_info)) @ v_index).(e_index)), st)).

  Definition get_mem_region_size_spec (v_index: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 32)));
    (Some (((((st.(priv)).(e_regions)) @ v_index).(e_size)), st)).

  Definition get_next_vmid_spec (st: RData) : (option (Z * RData)) :=
    rely (((((st.(shared)).(e_locks)) @ ABS_LOCK) = (Some CPU_ID)));
    (Some ((((st.(shared)).(e_core_data)).(e_next_vmid)), st)).

  Definition get_next_remap_ptr_spec (st: RData) : (option (Z * RData)) :=
    rely (((((st.(shared)).(e_locks)) @ ABS_LOCK) = (Some CPU_ID)));
    (Some (((((st.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296), st)).

  Definition get_s2_page_count_spec (v_index: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 2097152)));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    (Some (((((st.(shared)).(e_s2pages)) @ v_index).(e_count)), st)).

  Definition get_pgd_next_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    (Some (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)), st)).

  Definition get_pmd_next_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    (Some (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) << 12)), st)).

  Definition get_s2_page_gfn_spec (v_index: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 2097152)));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    (Some (((((st.(shared)).(e_s2pages)) @ v_index).(e_gfn)), st)).

  Definition get_pud_next_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    (Some (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) << 12)), st)).

  Definition get_s2_page_vmid_spec (v_index: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 2097152)));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    (Some (((((st.(shared)).(e_s2pages)) @ v_index).(e_vmid)), st)).

  Definition get_shadow_dirty_bit_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)), st)).

  Definition get_shadow_esr_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_esr)), st)).

  Definition get_smmu_cfg_hw_ttbr_spec (v_cbndx: Z) (v_num: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - ((8 * v_num) + v_cbndx)) <= 0) /\ (((8 * v_num) + v_cbndx) < 16)));
    (Some (((((st.(priv)).(e_smmu_cfg)) @ ((8 * v_num) + v_cbndx)).(e_hw_ttbr)), st)).

  Definition get_smmu_cfg_vmid_spec (v_cbndx: Z) (v_num: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - ((8 * v_num) + v_cbndx)) <= 0) /\ (((8 * v_num) + v_cbndx) < 16)));
    rely (((((st.(shared)).(e_locks)) @ SMMU_LOCK) = (Some CPU_ID)));
    (Some ((((st.(shared)).(e_smmu_vmid)) @ ((8 * v_num) + v_cbndx)), st)).

  Definition get_smmu_num_context_banks_spec (v_num: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_num) <= 0) /\ (v_num < 2)));
    (Some (((((st.(priv)).(e_smmus)) @ v_num).(e_num_context_banks)), st)).

  Definition get_vcpu_state_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vcpuid) <= 0) /\ (v_vcpuid < 4)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpuid).(e_state)), st)).

  Definition get_smmu_pgd_next_spec (st: RData) : (option (Z * RData)) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    (Some ((((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) << 12) + (((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start))), st)).

  Definition get_smmu_pmd_next_spec (st: RData) : (option (Z * RData)) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    (Some ((((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576) + ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) << 12)), st)).

  Definition get_vm_load_addr_spec (v_vmid: Z) (v_load_idx: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_load_idx) <= 0) /\ (v_load_idx < 5)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_load_addr)), st)).

  Definition get_vm_next_load_idx_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)), st)).

  Definition get_vm_load_size_spec (v_vmid: Z) (v_load_idx: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_load_idx) <= 0) /\ (v_load_idx < 5)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e__size)), st)).

  Definition get_vm_mapped_pages_spec (v_vmid: Z) (v_load_idx: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_load_idx) <= 0) /\ (v_load_idx < 5)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_mapped_pages)), st)).

  Definition get_vm_power_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (((((st.(shared)).(e_vminfos)) @ v_vmid).(e_powered_on)), st)).

  Definition hypsec_vcpu_id_to_shadow_ctxt_spec (v_vmid: Z) (v_vcpu_id: Z) (st: RData) : (option (Ptr * RData)) :=
    if (v_vcpu_id >? 3)
    then None
    else (
      rely ((((0 - ((4 * v_vmid) + v_vcpu_id)) <= 0) /\ (((4 * v_vmid) + v_vcpu_id) < 72)));
      (Some ((mkPtr "el2_data" ((33555568 + (7232 * v_vmid)) + (1808 * v_vcpu_id))), st))).

  Definition get_vm_state_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (((((st.(shared)).(e_vminfos)) @ v_vmid).(e__state)), st)).

  Definition hypsec_vcpu_id_to_vcpu_spec (v_vmid: Z) (v_vcpu_id: Z) (st: RData) : (option (Ptr * RData)) :=
    if (v_vcpu_id >? 3)
    then None
    else (
      rely ((((0 - ((4 * v_vmid) + v_vcpu_id)) <= 0) /\ (((4 * v_vmid) + v_vcpu_id) < 72)));
      (Some ((mkPtr "shared_data" (16 * (9927 + (566 * ((4 * v_vmid) + v_vcpu_id))))), st))).

  Definition get_vm_remap_addr_spec (v_vmid: Z) (v_load_idx: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_load_idx) <= 0) /\ (v_load_idx < 5)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_remap_addr)), st)).

  Definition pgd_pool_end_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632), st)).

  Definition pmd_pool_end_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    if ((v_vmid =? 18) || (v_vmid =? 0))
    then (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 33554432), st))
    else (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 8388608), st)).

  Definition pool_start_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    (Some (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)), st)).

  Definition get_shadow_ctxt_spec (v_vmid: Z) (v_vcpuid: Z) (v_index: Z) (st: RData) : (option (Z * RData)) :=
    if (v_index <? 41)
    then (
      rely ((((0 - v_index) <= 0) /\ (v_index < 41)));
      rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
      (Some ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ v_index), st)))
    else (
      if (v_index =? 45)
      then (
        rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
        (Some (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)), st)))
      else (
        if (v_index =? 41)
        then (
          rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
          (Some (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_far_el2)), st)))
        else (
          if (v_index =? 42)
          then (
            rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
            (Some (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_hpfar)), st)))
          else (
            if (v_index =? 43)
            then (
              rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
              (Some (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_hcr_el2)), st)))
            else (
              if (v_index =? 44)
              then (
                rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
                (Some (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_ec)), st)))
              else (
                rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
                (Some (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e__flags)), st)))))))).

  Definition pud_pool_end_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152), st)).

  Definition set_next_remap_ptr_spec (v_remap: Z) (st: RData) : (option RData) :=
    rely (((((st.(shared)).(e_locks)) @ ABS_LOCK) = (Some CPU_ID)));
    (Some (st.[shared].[e_core_data].[e_last_remap_ptr] :< v_remap)).

  Definition set_next_vmid_spec (v_vmid: Z) (st: RData) : (option RData) :=
    rely (((((st.(shared)).(e_locks)) @ ABS_LOCK) = (Some CPU_ID)));
    (Some (st.[shared].[e_core_data].[e_next_vmid] :< v_vmid)).

  Definition set_per_cpu_host_regs_spec (v_hr: Z) (st: RData) : (option RData) :=
    (Some (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< v_hr)))).

  Definition set_per_cpu_spec (v_vmid: Z) (v_vcpu_id: Z) (st: RData) : (option RData) :=
    (Some (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == (((((st.(priv)).(e_per_cpu_data)) @ 0).[e_____vmid] :< v_vmid).[e_vcpu_id] :< v_vcpu_id)))).

  Definition set_int_gpr_spec (v_vmid: Z) (v_vcpuid: Z) (v_index: Z) (v_value: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 31)));
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (st.[priv].[e_vcpu_pool] :<
      (((st.(priv)).(e_vcpu_pool)) #
        ((8 * (((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + v_index)) / 9056) ==
        ((((st.(priv)).(e_vcpu_pool)) @ ((8 * (((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + v_index)) / 9056)).[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e__regs] :<
          (((((((((st.(priv)).(e_vcpu_pool)) @ ((8 * (((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + v_index)) / 9056)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) #
            v_index ==
            v_value))))).

  Definition set_pt_vttbr_spec (v_vmid: Z) (v_vttbr: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_s2pts] :< (((st.(shared)).(e_s2pts)) # v_vmid == ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_vttbr] :< v_vttbr)))).

  Definition set_pgd_next_spec (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_s2pts] :<
      (((st.(shared)).(e_s2pts)) #
        v_vmid ==
        ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pud_used_pages] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) + 1))))).

  Definition set_s2_page_count_spec (v_index: Z) (v_count: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 2097152)));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    (Some (st.[shared].[e_s2pages] :< (((st.(shared)).(e_s2pages)) # v_index == ((((st.(shared)).(e_s2pages)) @ v_index).[e_count] :< v_count)))).

  Definition set_pmd_next_spec (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_s2pts] :<
      (((st.(shared)).(e_s2pts)) #
        v_vmid ==
        ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pte_used_pages] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_used_pages)) + 1))))).

  Definition set_s2_page_gfn_spec (v_index: Z) (v_gfn: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 2097152)));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    (Some (st.[shared].[e_s2pages] :< (((st.(shared)).(e_s2pages)) # v_index == ((((st.(shared)).(e_s2pages)) @ v_index).[e_gfn] :< v_gfn)))).

  Definition set_pud_next_spec (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_s2pts] :<
      (((st.(shared)).(e_s2pts)) #
        v_vmid ==
        ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pmd_used_pages] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_used_pages)) + 1))))).

  Definition set_s2_page_vmid_spec (v_index: Z) (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 2097152)));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    (Some (st.[shared].[e_s2pages] :< (((st.(shared)).(e_s2pages)) # v_index == ((((st.(shared)).(e_s2pages)) @ v_index).[e_vmid] :< v_vmid)))).

  Definition set_smmu_cfg_vmid_spec (v_cbndx: Z) (v_num: Z) (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((8 * v_num) + v_cbndx)) <= 0) /\ (((8 * v_num) + v_cbndx) < 16)));
    rely (((((st.(shared)).(e_locks)) @ SMMU_LOCK) = (Some CPU_ID)));
    (Some (st.[shared].[e_smmu_vmid] :< (((st.(shared)).(e_smmu_vmid)) # ((8 * v_num) + v_cbndx) == v_vmid))).

  Definition set_smmu_pgd_next_spec (st: RData) : (option RData) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    (Some (st.[shared].[e_smmupts].[e_smmu_pgd_used_pages] :< ((((st.(shared)).(e_smmupts)).(e_smmu_pgd_used_pages)) + 1))).

  Definition set_shadow_dirty_bit_spec (v_vmid: Z) (v_vcpuid: Z) (v_value: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    if (v_value =? 0)
    then (
      (Some (st.[priv].[e_shadow_ctxts] :<
        (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< 0)))))
    else (
      (Some (st.[priv].[e_shadow_ctxts] :<
        (((st.(priv)).(e_shadow_ctxts)) #
          ((4 * v_vmid) + v_vcpuid) ==
          ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :<
            (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' v_value)))))).

  Definition set_smmu_pmd_next_spec (st: RData) : (option RData) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    (Some (st.[shared].[e_smmupts].[e_smmu_pmd_used_pages] :< ((((st.(shared)).(e_smmupts)).(e_smmu_pmd_used_pages)) + 1))).

  Definition set_vm_inc_exe_spec (v_vmid: Z) (v_inc_exe: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    if (v_inc_exe <>? 0)
    then (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # v_vmid == ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_inc_exe] :< 1))))
    else (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # v_vmid == ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_inc_exe] :< 0)))).

  Definition set_vcpu_state_spec (v_vmid: Z) (v_vcpuid: Z) (v_state: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vcpuid) <= 0) /\ (v_vcpuid < 4)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_vminfos] :<
      (((st.(shared)).(e_vminfos)) #
        v_vmid ==
        ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_int_vcpus] :<
          (((((st.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) #
            v_vcpuid ==
            ((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpuid).[e_state] :< v_state)))))).

  Definition set_vm_kvm_spec (v_vmid: Z) (v_kvm: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # v_vmid == ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_kvm] :< v_kvm)))).

  Definition set_vm_load_addr_spec (v_vmid: Z) (v_load_idx: Z) (v_load_addr: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_load_idx) <= 0) /\ (v_load_idx < 5)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_vminfos] :<
      (((st.(shared)).(e_vminfos)) #
        v_vmid ==
        ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :<
          (((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) #
            v_load_idx ==
            ((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).[e_load_addr] :< v_load_addr)))))).

  Definition set_vm_load_size_spec (v_vmid: Z) (v_load_idx: Z) (v_size: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_load_idx) <= 0) /\ (v_load_idx < 5)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_vminfos] :<
      (((st.(shared)).(e_vminfos)) #
        v_vmid ==
        ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :<
          (((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) #
            v_load_idx ==
            ((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).[e__size] :< v_size)))))).

  Definition set_vm_mapped_pages_spec (v_vmid: Z) (v_load_idx: Z) (v_mapped: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_load_idx) <= 0) /\ (v_load_idx < 5)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_vminfos] :<
      (((st.(shared)).(e_vminfos)) #
        v_vmid ==
        ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :<
          (((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) #
            v_load_idx ==
            ((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).[e_el2_mapped_pages] :< v_mapped)))))).

  Definition set_vm_next_load_idx_spec (v_vmid: Z) (v_load_idx: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # v_vmid == ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_load_info_cnt] :< v_load_idx)))).

  Definition set_vm_power_spec (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # v_vmid == ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_powered_on] :< 0)))).

  Definition set_vm_state_spec (v_vmid: Z) (v_state: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # v_vmid == ((((st.(shared)).(e_vminfos)) @ v_vmid).[e__state] :< v_state)))).

  Definition set_vm_remap_addr_spec (v_vmid: Z) (v_load_idx: Z) (v_remap_addr: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_load_idx) <= 0) /\ (v_load_idx < 5)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_vminfos] :<
      (((st.(shared)).(e_vminfos)) #
        v_vmid ==
        ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :<
          (((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) #
            v_load_idx ==
            ((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).[e_el2_remap_addr] :< v_remap_addr)))))).

  Definition set_vm_vcpu_spec (v_vmid: Z) (v_vcpuid: Z) (v_vcpu: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vcpuid) <= 0) /\ (v_vcpuid < 4)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some (st.[shared].[e_vminfos] :<
      (((st.(shared)).(e_vminfos)) #
        v_vmid ==
        ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_int_vcpus] :<
          (((((st.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) # v_vcpuid == ((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpuid).[e_vcpu] :< v_vcpu)))))).

  Definition vmid_to_vm_info_spec (v_vmid: Z) (st: RData) : (option (Ptr * RData)) :=
    if (v_vmid <? 18)
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      (Some ((mkPtr "el2_data" (33686424 + (768 * v_vmid))), st)))
    else None.

  Definition smmu_init_pte_spec (v_prot: Z) (v_paddr: Z) (st: RData) : (option (Z * RData)) :=
    (Some ((((v_paddr & 281474976706560) |' v_prot) |' 1795), st)).

  Definition smmu_pgd_end_spec (st: RData) : (option (Z * RData)) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    (Some (((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 1048576), st)).

  Definition smmu_pmd_end_spec (st: RData) : (option (Z * RData)) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    (Some (((((st.(shared)).(e_smmupts)).(e_smmu_page_pool_start)) + 16777216), st)).

  Definition get_smmu_size_spec (v_num: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_num) <= 0) /\ (v_num < 2)));
    (Some (((((st.(priv)).(e_smmus)) @ v_num).(e___size)), st)).

  Definition get_smmu_num_spec (st: RData) : (option (Z * RData)) :=
    (Some (((st.(priv)).(e_el2_smmu_num)), st)).

  Definition get_smmu_base_spec (v_num: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_num) <= 0) /\ (v_num < 2)));
    (Some (((((st.(priv)).(e_smmus)) @ v_num).(e_phys_base)), st)).

  Definition smmu_get_cbndx_spec (v_offset: Z) (st: RData) : (option (Z * RData)) :=
    (Some ((4503599627370488 + (v_offset / 4096)), st)).

  Definition get_smmu_hyp_base_spec (v_num: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_num) <= 0) /\ (v_num < 2)));
    (Some (((((st.(priv)).(e_smmus)) @ v_num).(e_hyp_base)), st)).

  Definition set_shadow_ctxt_spec (v_vmid: Z) (v_vcpuid: Z) (v_index: Z) (v_value: Z) (st: RData) : (option RData) :=
    if (v_index <? 41)
    then (
      rely ((((0 - v_index) <= 0) /\ (v_index < 41)));
      rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
      (Some (st.[priv].[e_shadow_ctxts] :<
        (((st.(priv)).(e_shadow_ctxts)) #
          ((4 * v_vmid) + v_vcpuid) ==
          ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_regs] :<
            (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) # v_index == v_value))))))
    else (
      if (v_index =? 46)
      then (
        rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
        (Some (st.[priv].[e_shadow_ctxts] :<
          (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e__flags] :< v_value)))))
      else (
        if (v_index =? 41)
        then (
          rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
          (Some (st.[priv].[e_shadow_ctxts] :<
            (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_far_el2] :< v_value)))))
        else (
          if (v_index =? 42)
          then (
            rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
            (Some (st.[priv].[e_shadow_ctxts] :<
              (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_hpfar] :< v_value)))))
          else (
            if (v_index =? 43)
            then (
              rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
              (Some (st.[priv].[e_shadow_ctxts] :<
                (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_hcr_el2] :< v_value)))))
            else (
              if (v_index =? 44)
              then (
                rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
                (Some (st.[priv].[e_shadow_ctxts] :<
                  (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_ec] :< v_value)))))
              else (
                if (v_index =? 45)
                then (
                  rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
                  (Some (st.[priv].[e_shadow_ctxts] :<
                    (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< v_value)))))
                else (
                  rely ((((0 - (v_index + (- 47))) <= 0) /\ ((v_index + (- 47)) < 111)));
                  rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
                  (Some (st.[priv].[e_shadow_ctxts] :<
                    (((st.(priv)).(e_shadow_ctxts)) #
                      ((4 * v_vmid) + v_vcpuid) ==
                      ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_sys_regs] :<
                        (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_sys_regs)) # (v_index - 47) == v_value)))))))))))).

  Definition get_vcpu_was_preempted_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (bool * RData)) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_was_preempted)) <>? 0), st)).

  Definition set_shadow_ctxt_esr_spec (v_vmid: Z) (v_vcpuid: Z) (v_value: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (st.[priv].[e_shadow_ctxts] :<
      (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_esr] :< v_value)))).

  Definition set_vcpu_was_preempted_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (st.[priv].[e_vcpu_pool] :<
      (((st.(priv)).(e_vcpu_pool)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_was_preempted] :< 0)))).

  Definition get_cur_vcpu_id_spec (st: RData) : (option (Z * RData)) :=
    (Some (((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)), st)).

  Definition get_host_vttbr_spec (st: RData) : (option (Z * RData)) :=
    (Some (((st.(priv)).(e_host_vttbr)), st)).

  Definition get_cur_vmid_spec (st: RData) : (option (Z * RData)) :=
    (Some (((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid)), st)).

  Definition set_vcpu_esr_el2_spec (v_vmid: Z) (v_vcpuid: Z) (v_esr_el2: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (st.[priv].[e_vcpu_pool] :<
      (((st.(priv)).(e_vcpu_pool)) #
        ((4 * v_vmid) + v_vcpuid) ==
        ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_fault].[e_esr_el2] :< v_esr_el2)))).

  Definition set_vttbr_el2_spec (v_val: Z) (st: RData) : (option RData) :=
    (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # VTTBR_EL2 == v_val))).

  Definition get_esr_el2_spec (st: RData) : (option (Z * RData)) :=
    (Some (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2), st)).

  Definition set_tpidr_el2_spec (v_val: Z) (st: RData) : (option RData) :=
    (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # TPIDR_EL2 == v_val))).

  Definition set_hcr_el2_spec (v_val: Z) (st: RData) : (option RData) :=
    (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # HCR_EL2 == v_val))).

  Definition get_pt_vttbr_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    if (v_vmid <? 18)
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
      (Some (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)), st)))
    else (Some (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ TTBR0_EL2), st)).

End Accessors_Spec.

#[global] Hint Unfold get_int_esr_spec: spec.
#[global] Hint Unfold get_int_new_level_spec: spec.
#[global] Hint Unfold get_int_new_pte_spec: spec.
#[global] Hint Unfold get_mem_region_base_spec: spec.
#[global] Hint Unfold get_int_gpr_spec: spec.
#[global] Hint Unfold get_int_pc_spec: spec.
#[global] Hint Unfold get_int_pstate_spec: spec.
#[global] Hint Unfold get_mem_region_flag_spec: spec.
#[global] Hint Unfold get_mem_region_cnt_spec: spec.
#[global] Hint Unfold get_mem_region_index_spec: spec.
#[global] Hint Unfold get_mem_region_size_spec: spec.
#[global] Hint Unfold get_next_vmid_spec: spec.
#[global] Hint Unfold get_next_remap_ptr_spec: spec.
#[global] Hint Unfold get_s2_page_count_spec: spec.
#[global] Hint Unfold get_pgd_next_spec: spec.
#[global] Hint Unfold get_pmd_next_spec: spec.
#[global] Hint Unfold get_s2_page_gfn_spec: spec.
#[global] Hint Unfold get_pud_next_spec: spec.
#[global] Hint Unfold get_s2_page_vmid_spec: spec.
#[global] Hint Unfold get_shadow_dirty_bit_spec: spec.
#[global] Hint Unfold get_shadow_esr_spec: spec.
#[global] Hint Unfold get_smmu_cfg_hw_ttbr_spec: spec.
#[global] Hint Unfold get_smmu_cfg_vmid_spec: spec.
#[global] Hint Unfold get_smmu_num_context_banks_spec: spec.
#[global] Hint Unfold get_vcpu_state_spec: spec.
#[global] Hint Unfold get_smmu_pgd_next_spec: spec.
#[global] Hint Unfold get_smmu_pmd_next_spec: spec.
#[global] Hint Unfold get_vm_load_addr_spec: spec.
#[global] Hint Unfold get_vm_next_load_idx_spec: spec.
#[global] Hint Unfold get_vm_load_size_spec: spec.
#[global] Hint Unfold get_vm_mapped_pages_spec: spec.
#[global] Hint Unfold get_vm_power_spec: spec.
#[global] Hint Unfold hypsec_vcpu_id_to_shadow_ctxt_spec: spec.
#[global] Hint Unfold get_vm_state_spec: spec.
#[global] Hint Unfold hypsec_vcpu_id_to_vcpu_spec: spec.
#[global] Hint Unfold get_vm_remap_addr_spec: spec.
#[global] Hint Unfold pgd_pool_end_spec: spec.
#[global] Hint Unfold pmd_pool_end_spec: spec.
#[global] Hint Unfold pool_start_spec: spec.
#[global] Hint Unfold get_shadow_ctxt_spec: spec.
#[global] Hint Unfold pud_pool_end_spec: spec.
#[global] Hint Unfold set_next_remap_ptr_spec: spec.
#[global] Hint Unfold set_next_vmid_spec: spec.
#[global] Hint Unfold set_per_cpu_host_regs_spec: spec.
#[global] Hint Unfold set_per_cpu_spec: spec.
#[global] Hint Unfold set_int_gpr_spec: spec.
#[global] Hint Unfold set_pt_vttbr_spec: spec.
#[global] Hint Unfold set_pgd_next_spec: spec.
#[global] Hint Unfold set_s2_page_count_spec: spec.
#[global] Hint Unfold set_pmd_next_spec: spec.
#[global] Hint Unfold set_s2_page_gfn_spec: spec.
#[global] Hint Unfold set_pud_next_spec: spec.
#[global] Hint Unfold set_s2_page_vmid_spec: spec.
#[global] Hint Unfold set_smmu_cfg_vmid_spec: spec.
#[global] Hint Unfold set_smmu_pgd_next_spec: spec.
#[global] Hint Unfold set_shadow_dirty_bit_spec: spec.
#[global] Hint Unfold set_smmu_pmd_next_spec: spec.
#[global] Hint Unfold set_vm_inc_exe_spec: spec.
#[global] Hint Unfold set_vcpu_state_spec: spec.
#[global] Hint Unfold set_vm_kvm_spec: spec.
#[global] Hint Unfold set_vm_load_addr_spec: spec.
#[global] Hint Unfold set_vm_load_size_spec: spec.
#[global] Hint Unfold set_vm_mapped_pages_spec: spec.
#[global] Hint Unfold set_vm_next_load_idx_spec: spec.
#[global] Hint Unfold set_vm_power_spec: spec.
#[global] Hint Unfold set_vm_state_spec: spec.
#[global] Hint Unfold set_vm_remap_addr_spec: spec.
#[global] Hint Unfold set_vm_vcpu_spec: spec.
#[global] Hint Unfold vmid_to_vm_info_spec: spec.
#[global] Hint Unfold smmu_init_pte_spec: spec.
#[global] Hint Unfold smmu_pgd_end_spec: spec.
#[global] Hint Unfold smmu_pmd_end_spec: spec.
#[global] Hint Unfold get_smmu_size_spec: spec.
#[global] Hint Unfold get_smmu_num_spec: spec.
#[global] Hint Unfold get_smmu_base_spec: spec.
#[global] Hint Unfold smmu_get_cbndx_spec: spec.
#[global] Hint Unfold get_smmu_hyp_base_spec: spec.
#[global] Hint Unfold set_shadow_ctxt_spec: spec.
#[global] Hint Unfold get_vcpu_was_preempted_spec: spec.
#[global] Hint Unfold set_shadow_ctxt_esr_spec: spec.
#[global] Hint Unfold set_vcpu_was_preempted_spec: spec.
#[global] Hint Unfold get_cur_vcpu_id_spec: spec.
#[global] Hint Unfold get_host_vttbr_spec: spec.
#[global] Hint Unfold get_cur_vmid_spec: spec.
#[global] Hint Unfold set_vcpu_esr_el2_spec: spec.
#[global] Hint Unfold set_vttbr_el2_spec: spec.
#[global] Hint Unfold get_esr_el2_spec: spec.
#[global] Hint Unfold set_tpidr_el2_spec: spec.
#[global] Hint Unfold set_hcr_el2_spec: spec.
#[global] Hint Unfold get_pt_vttbr_spec: spec.
