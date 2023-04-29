Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTTreeOps.Spec.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOps_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition v_search_load_info_loop_rank (v_addr: Z) (v_call: Z) (v_load_idx_029: Z) (v_ret_028: Z) (v_vmid: Z) : Z :=
    (v_call - v_load_idx_029).

  Definition verify_and_load_images_loop_rank (v_call1: Z) (v_load_idx_032: Z) (v_vmid: Z) : Z :=
    (v_call1 - v_load_idx_032).

  Definition hypsec_set_vcpu_active_spec (v_vmid: Z) (v_vcpu_id: Z) (st: RData) : (option (Z * RData)) :=
    if (v_vmid <? 18)
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      when st_2 == ((query_oracle st));
      rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
      if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e__state)) =? 3)
      then (
        rely ((((0 - v_vcpu_id) <= 0) /\ (v_vcpu_id < 4)));
        if (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpu_id).(e_state)) =? 2)
        then (
          (Some (
            1  ,
            (((st_2.[log] :<
              ((EVT
                CPU_ID 
                (REL
                  (5 + v_vmid) 
                  (VMINFO_STATE
                    ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_int_vcpus] :<
                      (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) #
                        v_vcpu_id ==
                        ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpu_id).[e_state] :< 4)))))) ::
                ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
              (((st_2.(shared)).(e_vminfos)) #
                v_vmid ==
                ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_int_vcpus] :<
                  (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) #
                    v_vcpu_id ==
                    ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpu_id).[e_state] :< 4)))))
          )))
        else (
          (Some (
            0  ,
            ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))
          ))))
      else (
        (Some (
          0  ,
          ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
            (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))
        ))))
    else None.

  Definition register_vcpu_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    rely ((((0 - v_vcpuid) <= 0) /\ (v_vcpuid < 4)));
    if (
      if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e__state)) =? 2)
      then true
      else (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpuid).(e_state)) =? 0))
    then (
      rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
      (Some (
        0  ,
        ((((st_2.[log] :<
          ((EVT
            CPU_ID 
            (REL
              (5 + v_vmid) 
              (VMINFO_STATE
                ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_int_vcpus] :<
                  (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) #
                    v_vcpuid ==
                    (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpuid).[e_state] :< 2).[e_vcpu] :< (shared_vcpu v_vmid v_vcpuid))))))) ::
            ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[priv].[e_shadow_ctxts] :<
          (((st_2.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st_2.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< (- 1)))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
          (((st_2.(shared)).(e_vminfos)) #
            v_vmid ==
            ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_int_vcpus] :<
              (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) #
                v_vcpuid ==
                (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpuid).[e_state] :< 2).[e_vcpu] :< (shared_vcpu v_vmid v_vcpuid))))))
      )))
    else None.

  Definition hypsec_set_vcpu_state_spec (v_vmid: Z) (v_vcpu_id: Z) (v_state: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    rely ((((0 - v_vcpu_id) <= 0) /\ (v_vcpu_id < 4)));
    (Some (((st_2.[log] :<
      ((EVT
        CPU_ID 
        (REL
          (5 + v_vmid) 
          (VMINFO_STATE
            ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_int_vcpus] :<
              (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) #
                v_vcpu_id ==
                ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpu_id).[e_state] :< v_state)))))) ::
        ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
      (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
      (((st_2.(shared)).(e_vminfos)) #
        v_vmid ==
        ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_int_vcpus] :<
          (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) #
            v_vcpu_id ==
            ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpu_id).[e_state] :< v_state)))))).

  Fixpoint v_search_load_info_loop (_N_: nat) (v_addr: Z) (v_call: Z) (v_load_idx_029: Z) (v_ret_028: Z) (v_ret_0_lcssa: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr, v_call, v_load_idx_029, v_ret_028, v_ret_0_lcssa, v_vmid, st))
    | (S _N__0) =>
      match ((v_search_load_info_loop _N__0 v_addr v_call v_load_idx_029 v_ret_028 v_ret_0_lcssa v_vmid st)) with
      | (Some (v_addr_0, v_call_0, v_load_idx_30, v_ret_29, v_ret_0_lcssa_0, v_vmid_0, st_0)) =>
        rely ((((0 - v_load_idx_30) <= 0) /\ (v_load_idx_30 < 5)));
        rely ((((0 - v_vmid_0) <= 0) /\ (v_vmid_0 < 19)));
        rely (((((st_0.(shared)).(e_locks)) @ (5 + v_vmid_0)) = (Some CPU_ID)));
        if (((v_load_idx_30 + 1) - v_call_0) =? 0)
        then (
          if (
            if ((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_load_addr)) - v_addr_0) <=? 0)
            then (
              (((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e__size)) +
                ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_load_addr))) -
                v_addr_0) >?
                0))
            else false)
          then (
            (Some (
              v_addr_0  ,
              v_call_0  ,
              v_load_idx_30  ,
              v_ret_29  ,
              ((v_addr_0 - ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_load_addr))) +
                ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_el2_remap_addr)))  ,
              v_vmid_0  ,
              st_0
            )))
          else (Some (v_addr_0, v_call_0, v_load_idx_30, v_ret_29, v_ret_29, v_vmid_0, st_0)))
        else (
          if (
            if ((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_load_addr)) - v_addr_0) <=? 0)
            then (
              (((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e__size)) +
                ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_load_addr))) -
                v_addr_0) >?
                0))
            else false)
          then (
            (Some (
              v_addr_0  ,
              v_call_0  ,
              (v_load_idx_30 + 1)  ,
              ((v_addr_0 - ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_load_addr))) +
                ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_30).(e_el2_remap_addr)))  ,
              v_ret_0_lcssa_0  ,
              v_vmid_0  ,
              st_0
            )))
          else (Some (v_addr_0, v_call_0, (v_load_idx_30 + 1), v_ret_29, v_ret_0_lcssa_0, v_vmid_0, st_0)))
      | None => None
      end
    end.

  Definition v_search_load_info_spec (v_vmid: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) =? 0)
    then (
      (Some (
        0  ,
        ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))
      )))
    else (
      rely ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) >= 0));
      match (
        (v_search_load_info_loop
          (z_to_nat ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))) 
          v_addr 
          ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) 
          0 
          0 
          0 
          v_vmid 
          ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID))))
      ) with
      | (Some (v_addr_0, v_call_0, v_load_idx_30, v_ret_29, v_ret_0_lcssa_0, v_vmid_0, st_3)) =>
        rely (((((st_3.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
        (Some (
          v_ret_0_lcssa_0  ,
          ((st_3.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ v_vmid)))) :: (st_3.(log)))).[shared].[e_locks] :<
            (((st_3.(shared)).(e_locks)) # (5 + v_vmid) == None))
        ))
      | None => None
      end).

  Definition remap_vm_image_spec (v_vmid: Z) (v_pfn: Z) (v_load_idx: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e__state)) =? 2)
    then (
      if ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) - v_load_idx) >? 0)
      then (
        rely ((((0 - v_load_idx) <= 0) /\ (v_load_idx < 5)));
        if (
          ((((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_mapped_pages)) -
            ((((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e__size)) + 4095) >> 12)) <?
            0))
        then (
          when st_7 == (
              (query_oracle
                ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID)))));
          rely (((((st_7.(shared)).(e_locks)) @ 42) = None));
          rely (
            (((0 -
              (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_remap_addr)) +
                (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_mapped_pages)) << 12))) <=
              0) /\
              (((((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_remap_addr)) +
                (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_mapped_pages)) << 12)) -
                MAX_ADDR) <=
                0)));
          rely ((((((st_7.(shared)).(e_s2pts)) @ 18).(e_vttbr)) <> 0));
          when npt' == (
              (s2pt_set
                (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_remap_addr)) +
                  (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_mapped_pages)) << 12)) 
                3 
                ((v_pfn << 12) + 18014398509483859) 
                (((st_7.(shared)).(e_s2pts)) @ 18)));
          rely ((((((st_7.(shared)).(e_locks)) # 42 == None) @ (5 + v_vmid)) = (Some CPU_ID)));
          (Some ((((st_7.[log] :<
            ((EVT
              CPU_ID 
              (REL
                (5 + v_vmid) 
                (VMINFO_STATE
                  ((((st_7.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :<
                    (((((st_7.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) #
                      v_load_idx ==
                      ((((((st_7.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).[e_el2_mapped_pages] :<
                        (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_mapped_pages)) + 1))))))) ::
              ((EVT CPU_ID (REL 42 (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ 42)) :: (st_7.(log)))))).[shared].[e_locks] :<
            ((((st_7.(shared)).(e_locks)) # 42 == None) # (5 + v_vmid) == None)).[shared].[e_s2pts] :<
            (((st_7.(shared)).(e_s2pts)) # 18 == npt')).[shared].[e_vminfos] :<
            (((st_7.(shared)).(e_vminfos)) #
              v_vmid ==
              ((((st_7.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :<
                (((((st_7.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) #
                  v_load_idx ==
                  ((((((st_7.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).[e_el2_mapped_pages] :<
                    (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_mapped_pages)) + 1))))))))
        else (
          (Some ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
            (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)))))
      else (
        (Some ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)))))
    else None.

  Definition set_boot_info_spec (v_vmid: Z) (v_load_addr: Z) (v_size: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e__state)) =? 2)
    then (
      if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) <? 5)
      then (
        when st_5 == (
            (query_oracle
              (((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID))).[shared].[e_vminfos] :<
                (((st_2.(shared)).(e_vminfos)) #
                  v_vmid ==
                  ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_load_info_cnt] :< (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) + 1))))));
        rely (((((st_5.(shared)).(e_locks)) @ ABS_LOCK) = None));
        if ((((((st_5.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296) + (((v_size + 4095) >> 12) << 12)) <? 5497558138880)
        then (
          rely ((((0 - ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))) <= 0) /\ (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) < 5)));
          rely ((((((st_5.(shared)).(e_locks)) # ABS_LOCK == None) @ (5 + v_vmid)) = (Some CPU_ID)));
          (Some (
            ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))  ,
            ((((st_5.[log] :<
              ((EVT
                CPU_ID 
                (REL
                  (5 + v_vmid) 
                  (VMINFO_STATE
                    ((((st_5.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :<
                      (((((st_5.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) #
                        ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) ==
                        ((((((((((st_5.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))).[e__size] :< v_size).[e_el2_mapped_pages] :<
                          0).[e_el2_remap_addr] :<
                          ((((st_5.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296)).[e_load_addr] :<
                          v_load_addr).[e_signature] :<
                          vm_signature)))))) ::
                ((EVT
                  CPU_ID 
                  (REL
                    ABS_LOCK 
                    (ABS_STATE
                      (((st_5.(shared)).(e_core_data)).[e_last_remap_ptr] :< (((((st_5.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296) + (((v_size + 4095) >> 12) << 12)))))) ::
                  ((EVT CPU_ID (ACQ ABS_LOCK)) :: (st_5.(log)))))).[shared].[e_core_data].[e_last_remap_ptr] :<
              (((((st_5.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296) + (((v_size + 4095) >> 12) << 12))).[shared].[e_locks] :<
              ((((st_5.(shared)).(e_locks)) # ABS_LOCK == None) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
              (((st_5.(shared)).(e_vminfos)) #
                v_vmid ==
                ((((st_5.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :<
                  (((((st_5.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) #
                    ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) ==
                    ((((((((((st_5.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))).[e__size] :< v_size).[e_el2_mapped_pages] :<
                      0).[e_el2_remap_addr] :<
                      ((((st_5.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296)).[e_load_addr] :<
                      v_load_addr).[e_signature] :<
                      vm_signature)))))
          )))
        else None)
      else (
        (Some (
          ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))  ,
          ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
            (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))
        ))))
    else (
      (Some (
        (- 1)  ,
        ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))
      ))).

  Fixpoint verify_and_load_images_loop (_N_: nat) (v_call1: Z) (v_load_idx_032: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_call1, v_load_idx_032, v_vmid, st))
    | (S _N__0) =>
      match ((verify_and_load_images_loop _N__0 v_call1 v_load_idx_032 v_vmid st)) with
      | (Some (v_call1_0, v_load_idx_33, v_vmid_0, st_0)) =>
        rely ((((0 - v_load_idx_33) <= 0) /\ (v_load_idx_33 < 5)));
        rely ((((0 - v_vmid_0) <= 0) /\ (v_vmid_0 < 19)));
        rely (((((st_0.(shared)).(e_locks)) @ (5 + v_vmid_0)) = (Some CPU_ID)));
        if (
          ((((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) + 2097151) -
            (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) & 18446744073707454464)) +
            (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_el2_mapped_pages)) << 12)) <?
            2097152))
        then (
          if (((v_load_idx_33 + 1) - v_call1_0) =? 0)
          then (Some (v_call1_0, v_load_idx_33, v_vmid_0, st_0))
          else (Some (v_call1_0, (v_load_idx_33 + 1), v_vmid_0, st_0)))
        else (
          match (
            (unmap_and_load_vm_image_loop
              (z_to_nat
                ((((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) + 2097151) -
                  (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) & 18446744073707454464)) +
                  (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_el2_mapped_pages)) << 12)) >>
                  21)) 
              ((((((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) + 2097151) -
                (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) & 18446744073707454464)) +
                (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_el2_mapped_pages)) << 12)) >>
                21) 
              ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_el2_remap_addr)) 
              (((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) & 18446744073707454464) 
              ((((((st_0.(shared)).(e_vminfos)) @ v_vmid_0).(e_load_info)) @ v_load_idx_33).(e_load_addr)) 
              v_vmid_0 
              st_0)
          ) with
          | (Some (v_mb_num_30, v_remap_addr_addr_33, v_start_31, v_target_addr_addr_34, v_vmid_2, st_5)) =>
            if (((v_load_idx_33 + 1) - v_call1_0) =? 0)
            then (Some (v_call1_0, v_load_idx_33, v_vmid_0, st_5))
            else (Some (v_call1_0, (v_load_idx_33 + 1), v_vmid_0, st_5))
          | None => None
          end)
      | None => None
      end
    end.

  Definition verify_and_load_images_spec (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e__state)) =? 2)
    then (
      if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) =? 0)
      then (
        (Some (((st_2.[log] :<
          ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e__state] :< 3)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
          (((st_2.(shared)).(e_vminfos)) # v_vmid == ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e__state] :< 3)))))
      else (
        rely ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) >= 0));
        match (
          (verify_and_load_images_loop
            (z_to_nat ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))) 
            ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) 
            0 
            v_vmid 
            ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID))))
        ) with
        | (Some (v_call1_0, v_load_idx_33, v_vmid_0, st_4)) =>
          rely (((((st_4.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
          (Some (((st_4.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE ((((st_4.(shared)).(e_vminfos)) @ v_vmid).[e__state] :< 3)))) :: (st_4.(log)))).[shared].[e_locks] :<
            (((st_4.(shared)).(e_locks)) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
            (((st_4.(shared)).(e_vminfos)) # v_vmid == ((((st_4.(shared)).(e_vminfos)) @ v_vmid).[e__state] :< 3))))
        | None => None
        end))
    else None.

  Definition register_kvm_spec (st: RData) : (option (Z * RData)) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ ABS_LOCK) = None));
    if ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) <? 33)
    then (
      rely ((((0 - (((st_2.(shared)).(e_core_data)).(e_next_vmid))) <= 0) /\ ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) < 19)));
      when st_3 == (
          (query_oracle
            (((st_2.[log] :<
              ((EVT CPU_ID (REL ABS_LOCK (ABS_STATE (((st_2.(shared)).(e_core_data)).[e_next_vmid] :< ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) + 1))))) ::
                ((EVT CPU_ID (ACQ ABS_LOCK)) :: (st_2.(log))))).[shared].[e_core_data].[e_next_vmid] :<
              ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) + 1)).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # ABS_LOCK == None))));
      rely (((((st_3.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) = None));
      if (((((st_3.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).(e__state)) =? 0)
      then (
        when st_7 == (
            (query_oracle
              (((st_3.[log] :< ((EVT CPU_ID (ACQ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))))) :: (st_3.(log)))).[shared].[e_locks] :<
                (((st_3.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == (Some CPU_ID))).[shared].[e_vminfos] :<
                (((st_3.(shared)).(e_vminfos)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  (((((st_3.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e_inc_exe] :< 0).[e_kvm] :<
                    (shared_kvm (((st_2.(shared)).(e_core_data)).(e_next_vmid))))))));
        rely (((((st_7.(shared)).(e_locks)) @ (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) = None));
        if ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) <? 18)
        then (
          if (((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).(e_vttbr)) =? 0)
          then (
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            (Some (
              (((st_2.(shared)).(e_core_data)).(e_next_vmid))  ,
              ((((st_7.[log] :<
                ((EVT
                  CPU_ID 
                  (REL
                    (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) 
                    (VMINFO_STATE (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))) ::
                  ((EVT
                    CPU_ID 
                    (REL
                      (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) 
                      (S2PT_STATE
                        ((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e_vttbr] :<
                          (((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).(e_page_pool_start)) |'
                            (((((st_2.(shared)).(e_core_data)).(e_next_vmid)) & 255) << 48)))))) ::
                    ((EVT CPU_ID (ACQ (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))))) :: (st_7.(log)))))).[shared].[e_locks] :<
                ((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) # (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None)).[shared].[e_s2pts] :<
                (((st_7.(shared)).(e_s2pts)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  ((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e_vttbr] :<
                    (((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).(e_page_pool_start)) |'
                      (((((st_2.(shared)).(e_core_data)).(e_next_vmid)) & 255) << 48))))).[shared].[e_vminfos] :<
                (((st_7.(shared)).(e_vminfos)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))
            )))
          else (
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            (Some (
              (((st_2.(shared)).(e_core_data)).(e_next_vmid))  ,
              (((st_7.[log] :<
                ((EVT
                  CPU_ID 
                  (REL
                    (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) 
                    (VMINFO_STATE (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))) ::
                  ((EVT
                    CPU_ID 
                    (REL (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) (S2PT_STATE (((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid)))))) ::
                    ((EVT CPU_ID (ACQ (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))))) :: (st_7.(log)))))).[shared].[e_locks] :<
                ((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) # (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None)).[shared].[e_vminfos] :<
                (((st_7.(shared)).(e_vminfos)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))
            ))))
        else (
          if (((((st_7.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ TTBR0_EL2) =? 0)
          then (
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            (Some (
              (((st_2.(shared)).(e_core_data)).(e_next_vmid))  ,
              ((((st_7.[log] :<
                ((EVT
                  CPU_ID 
                  (REL
                    (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) 
                    (VMINFO_STATE (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))) ::
                  ((EVT
                    CPU_ID 
                    (REL
                      (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) 
                      (S2PT_STATE
                        ((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e_vttbr] :<
                          (((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).(e_page_pool_start)) |'
                            (((((st_2.(shared)).(e_core_data)).(e_next_vmid)) & 255) << 48)))))) ::
                    ((EVT CPU_ID (ACQ (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))))) :: (st_7.(log)))))).[shared].[e_locks] :<
                ((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) # (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None)).[shared].[e_s2pts] :<
                (((st_7.(shared)).(e_s2pts)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  ((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e_vttbr] :<
                    (((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).(e_page_pool_start)) |'
                      (((((st_2.(shared)).(e_core_data)).(e_next_vmid)) & 255) << 48))))).[shared].[e_vminfos] :<
                (((st_7.(shared)).(e_vminfos)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))
            )))
          else (
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            (Some (
              (((st_2.(shared)).(e_core_data)).(e_next_vmid))  ,
              (((st_7.[log] :<
                ((EVT
                  CPU_ID 
                  (REL
                    (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) 
                    (VMINFO_STATE (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))) ::
                  ((EVT
                    CPU_ID 
                    (REL (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) (S2PT_STATE (((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid)))))) ::
                    ((EVT CPU_ID (ACQ (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))))) :: (st_7.(log)))))).[shared].[e_locks] :<
                ((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) # (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None)).[shared].[e_vminfos] :<
                (((st_7.(shared)).(e_vminfos)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))
            )))))
      else None)
    else (
      when st_3 == (
          (query_oracle
            ((st_2.[log] :< ((EVT CPU_ID (REL ABS_LOCK (ABS_STATE ((st_2.(shared)).(e_core_data))))) :: ((EVT CPU_ID (ACQ ABS_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # ABS_LOCK == None))));
      rely (((((st_3.(shared)).(e_locks)) @ 5) = None));
      if (((((st_3.(shared)).(e_vminfos)) @ 0).(e__state)) =? 0)
      then (
        when st_7 == (
            (query_oracle
              (((st_3.[log] :< ((EVT CPU_ID (ACQ 5)) :: (st_3.(log)))).[shared].[e_locks] :< (((st_3.(shared)).(e_locks)) # 5 == (Some CPU_ID))).[shared].[e_vminfos] :<
                (((st_3.(shared)).(e_vminfos)) # 0 == (((((st_3.(shared)).(e_vminfos)) @ 0).[e_inc_exe] :< 0).[e_kvm] :< (shared_kvm 0))))));
        rely (((((st_7.(shared)).(e_locks)) @ 24) = None));
        if (((((st_7.(shared)).(e_s2pts)) @ 0).(e_vttbr)) =? 0)
        then (
          rely (((((st_7.(shared)).(e_locks)) @ 5) = (Some CPU_ID)));
          rely (((((st_7.(shared)).(e_locks)) @ 5) = (Some CPU_ID)));
          rely (((((st_7.(shared)).(e_locks)) @ 5) = (Some CPU_ID)));
          (Some (
            0  ,
            ((((st_7.[log] :<
              ((EVT CPU_ID (REL 5 (VMINFO_STATE (((((st_7.(shared)).(e_vminfos)) @ 0).[e__state] :< 2).[e_public_key] :< vm_pubkey)))) ::
                ((EVT CPU_ID (REL 24 (S2PT_STATE ((((st_7.(shared)).(e_s2pts)) @ 0).[e_vttbr] :< (((((st_7.(shared)).(e_s2pts)) @ 0).(e_page_pool_start)) |' 0))))) ::
                  ((EVT CPU_ID (ACQ 24)) :: (st_7.(log)))))).[shared].[e_locks] :<
              ((((st_7.(shared)).(e_locks)) # 24 == None) # 5 == None)).[shared].[e_s2pts] :<
              (((st_7.(shared)).(e_s2pts)) # 0 == ((((st_7.(shared)).(e_s2pts)) @ 0).[e_vttbr] :< (((((st_7.(shared)).(e_s2pts)) @ 0).(e_page_pool_start)) |' 0)))).[shared].[e_vminfos] :<
              (((st_7.(shared)).(e_vminfos)) # 0 == (((((st_7.(shared)).(e_vminfos)) @ 0).[e__state] :< 2).[e_public_key] :< vm_pubkey)))
          )))
        else (
          rely (((((st_7.(shared)).(e_locks)) @ 5) = (Some CPU_ID)));
          rely (((((st_7.(shared)).(e_locks)) @ 5) = (Some CPU_ID)));
          rely (((((st_7.(shared)).(e_locks)) @ 5) = (Some CPU_ID)));
          (Some (
            0  ,
            (((st_7.[log] :<
              ((EVT CPU_ID (REL 5 (VMINFO_STATE (((((st_7.(shared)).(e_vminfos)) @ 0).[e__state] :< 2).[e_public_key] :< vm_pubkey)))) ::
                ((EVT CPU_ID (REL 24 (S2PT_STATE (((st_7.(shared)).(e_s2pts)) @ 0)))) :: ((EVT CPU_ID (ACQ 24)) :: (st_7.(log)))))).[shared].[e_locks] :<
              ((((st_7.(shared)).(e_locks)) # 24 == None) # 5 == None)).[shared].[e_vminfos] :<
              (((st_7.(shared)).(e_vminfos)) # 0 == (((((st_7.(shared)).(e_vminfos)) @ 0).[e__state] :< 2).[e_public_key] :< vm_pubkey)))
          ))))
      else None).

End VMOps_Spec.

#[global] Hint Unfold v_search_load_info_loop_rank: spec.
#[global] Hint Unfold verify_and_load_images_loop_rank: spec.
#[global] Hint Unfold hypsec_set_vcpu_active_spec: spec.
Opaque register_vcpu_spec.
#[global] Hint Unfold hypsec_set_vcpu_state_spec: spec.
#[global] Hint Unfold v_search_load_info_loop: spec.
#[global] Hint Unfold v_search_load_info_spec: spec.
Opaque remap_vm_image_spec.
Opaque set_boot_info_spec.
#[global] Hint Unfold verify_and_load_images_loop: spec.
Opaque verify_and_load_images_spec.
Opaque register_kvm_spec.
