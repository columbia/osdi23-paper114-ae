Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemManager.Spec.
Require Import MemoryOpsAux.Spec.
Require Import S2PTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemoryOps_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition v_grant_stage2_sg_gpa_loop_rank (v_addr_addr_044: Z) (v_len_143: Z) (v_vmid: Z) : Z :=
    v_len_143.

  Definition __clear_vm_stage2_range_loop_rank (v_call2: Z) (v_i_022: Z) (v_vmid: Z) : Z :=
    (v_call2 - v_i_022).

  Definition v_revoke_stage2_sg_gpa_loop_rank (v_addr_addr_044: Z) (v_len_143: Z) (v_vmid: Z) : Z :=
    v_len_143.

  Definition map_page_host_spec (v_addr: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    rely ((((0 - (v_addr >> 12)) <= 0) /\ (((v_addr >> 12) - MAX_PFN) <= 0)));
    if (((((st_2.(shared)).(e_s2pages)) @ (v_addr >> 12)).(e_vmid)) =? (- 1))
    then (
      when st_4 == (
          (query_oracle
            ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))));
      rely (((((st_4.(shared)).(e_locks)) @ 24) = None));
      rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_ADDR) <= 0)));
      rely ((((((st_4.(shared)).(e_s2pts)) @ 0).(e_vttbr)) <> 0));
      when npt' == ((s2pt_set v_addr 3 ((v_addr & 18446744073709547520) + 18014398509483975) (((st_4.(shared)).(e_s2pts)) @ 0)));
      rely ((((((st_4.(shared)).(e_locks)) # 24 == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
      (Some (((st_4.[log] :<
        ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_4.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (REL 24 (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ 24)) :: (st_4.(log)))))).[shared].[e_locks] :<
        ((((st_4.(shared)).(e_locks)) # 24 == None) # S2PAGE_LOCK == None)).[shared].[e_s2pts] :<
        (((st_4.(shared)).(e_s2pts)) # 0 == npt'))))
    else (
      when st_4 == (
          (query_oracle
            ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))));
      rely (((((st_4.(shared)).(e_locks)) @ 24) = None));
      rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_ADDR) <= 0)));
      rely ((((((st_4.(shared)).(e_s2pts)) @ 0).(e_vttbr)) <> 0));
      when npt' == ((s2pt_set v_addr 3 (v_addr |' 4095) (((st_4.(shared)).(e_s2pts)) @ 0)));
      if (
        if (((((st_2.(shared)).(e_s2pages)) @ (v_addr >> 12)).(e_vmid)) =? 0)
        then true
        else (((((st_2.(shared)).(e_s2pages)) @ (v_addr >> 12)).(e_count)) <>? 0))
      then (
        rely ((((((st_4.(shared)).(e_locks)) # 24 == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
        (Some (((st_4.[log] :<
          ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_4.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (REL 24 (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ 24)) :: (st_4.(log)))))).[shared].[e_locks] :<
          ((((st_4.(shared)).(e_locks)) # 24 == None) # S2PAGE_LOCK == None)).[shared].[e_s2pts] :<
          (((st_4.(shared)).(e_s2pts)) # 0 == npt'))))
      else None).

  Definition __kvm_phys_addr_ioremap_spec (v_vmid: Z) (v_gpa: Z) (v_pa: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    rely ((((0 - (v_pa >> 12)) <= 0) /\ (((v_pa >> 12) - MAX_PFN) <= 0)));
    if (((((st_2.(shared)).(e_s2pages)) @ (v_pa >> 12)).(e_vmid)) =? (- 1))
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      when st_3 == (
          (query_oracle
            ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))));
      rely (((((st_3.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
      rely ((((0 - v_gpa) <= 0) /\ ((v_gpa - MAX_ADDR) <= 0)));
      rely ((((((st_3.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) <> 0));
      when npt' == ((s2pt_set v_gpa 3 (v_pa + 18014398509483975) (((st_3.(shared)).(e_s2pts)) @ v_vmid)));
      rely ((((((st_3.(shared)).(e_locks)) # (24 + v_vmid) == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
      (Some (((st_3.[log] :<
        ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_3.(shared)).(e_s2pages))))) ::
          ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_3.(log)))))).[shared].[e_locks] :<
        ((((st_3.(shared)).(e_locks)) # (24 + v_vmid) == None) # S2PAGE_LOCK == None)).[shared].[e_s2pts] :<
        (((st_3.(shared)).(e_s2pts)) # v_vmid == npt'))))
    else (
      (Some ((st_2.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_2.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)))).

  Fixpoint v_grant_stage2_sg_gpa_loop (_N_: nat) (v_addr_addr_044: Z) (v_len_143: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr_addr_044, v_len_143, v_vmid, st))
    | (S _N__0) =>
      match ((v_grant_stage2_sg_gpa_loop _N__0 v_addr_addr_044 v_len_143 v_vmid st)) with
      | (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_0)) =>
        rely ((((0 - v_vmid_0) <= 0) /\ (v_vmid_0 < 19)));
        when st_2 == ((query_oracle st_0));
        rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid_0)) = None));
        rely ((((0 - v_addr_addr_45) <= 0) /\ ((v_addr_addr_45 - MAX_ADDR) <= 0)));
        rely ((((((st_2.(shared)).(e_s2pts)) @ v_vmid_0).(e_vttbr)) <> 0));
        if (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 281474976706560) =? 0)
        then (
          if ((v_len_144 + (- 1)) =? 0)
          then (
            (Some (
              v_addr_addr_45  ,
              v_len_144  ,
              v_vmid_0  ,
              ((st_2.[log] :<
                ((EVT CPU_ID (REL (24 + v_vmid_0) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid_0))) :: (st_2.(log))))).[shared].[e_locks] :<
                (((st_2.(shared)).(e_locks)) # (24 + v_vmid_0) == None))
            )))
          else (
            (Some (
              (v_addr_addr_45 + 4096)  ,
              (v_len_144 + (- 1))  ,
              v_vmid_0  ,
              ((st_2.[log] :<
                ((EVT CPU_ID (REL (24 + v_vmid_0) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid_0))) :: (st_2.(log))))).[shared].[e_locks] :<
                (((st_2.(shared)).(e_locks)) # (24 + v_vmid_0) == None))
            ))))
        else (
          if (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 36028797018963968) =? 0)
          then (
            when st_3 == (
                (grant_vm_page_spec
                  v_vmid_0 
                  (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 281474976706560) >> 12) 
                  ((st_2.[log] :<
                    ((EVT CPU_ID (REL (24 + v_vmid_0) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid_0))) :: (st_2.(log))))).[shared].[e_locks] :<
                    (((st_2.(shared)).(e_locks)) # (24 + v_vmid_0) == None))));
            if ((v_len_144 + (- 1)) =? 0)
            then (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_3))
            else (Some ((v_addr_addr_45 + 4096), (v_len_144 + (- 1)), v_vmid_0, st_3)))
          else (
            when st_3 == (
                (grant_vm_page_spec
                  v_vmid_0 
                  (((v_addr_addr_45 >> 12) & 511) + (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 281474976706560) >> 12)) 
                  ((st_2.[log] :<
                    ((EVT CPU_ID (REL (24 + v_vmid_0) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid_0))) :: (st_2.(log))))).[shared].[e_locks] :<
                    (((st_2.(shared)).(e_locks)) # (24 + v_vmid_0) == None))));
            if ((v_len_144 + (- 1)) =? 0)
            then (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_3))
            else (Some ((v_addr_addr_45 + 4096), (v_len_144 + (- 1)), v_vmid_0, st_3))))
      | None => None
      end
    end.

  Definition v_grant_stage2_sg_gpa_spec (v_vmid: Z) (v_addr: Z) (v_size: Z) (st: RData) : (option RData) :=
    if (
      if (v_size <? 4096)
      then (
        if ((v_size & 4095) <>? 0)
        then false
        else true)
      else (
        if ((v_size & 4095) <>? 0)
        then (((v_size >> 12) + 1) =? 0)
        else ((v_size >> 12) =? 0)))
    then (Some st)
    else (
      if (v_size <? 4096)
      then (
        match ((v_grant_stage2_sg_gpa_loop (z_to_nat 1) v_addr 1 v_vmid st)) with
        | (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_0)) => (Some st_0)
        | None => None
        end)
      else (
        if ((v_size & 4095) <>? 0)
        then (
          match ((v_grant_stage2_sg_gpa_loop (z_to_nat ((v_size >> 12) + 1)) v_addr ((v_size >> 12) + 1) v_vmid st)) with
          | (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_0)) => (Some st_0)
          | None => None
          end)
        else (
          match ((v_grant_stage2_sg_gpa_loop (z_to_nat (v_size >> 12)) v_addr (v_size >> 12) v_vmid st)) with
          | (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_0)) => (Some st_0)
          | None => None
          end))).

  Fixpoint __clear_vm_stage2_range_loop (_N_: nat) (v_call2: Z) (v_i_022: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_call2, v_i_022, v_vmid, st))
    | (S _N__0) =>
      match ((__clear_vm_stage2_range_loop _N__0 v_call2 v_i_022 v_vmid st)) with
      | (Some (v_call2_0, v_i_23, v_vmid_0, st_0)) =>
        rely ((((0 - v_i_23) <= 0) /\ (v_i_23 < 32)));
        if ((((((st_0.(priv)).(e_regions)) @ v_i_23).(e_flags)) & 4) =? 0)
        then (
          if (((((st_0.(priv)).(e_regions)) @ v_i_23).(e_size)) <? 4096)
          then (
            if (((v_i_23 + 1) - v_call2_0) =? 0)
            then (Some (v_call2_0, v_i_23, v_vmid_0, st_0))
            else (Some (v_call2_0, (v_i_23 + 1), v_vmid_0, st_0)))
          else (
            match (
              (__clear_vm_range_loop
                (z_to_nat (((((st_0.(priv)).(e_regions)) @ v_i_23).(e_size)) >> 12)) 
                (((((st_0.(priv)).(e_regions)) @ v_i_23).(e_size)) >> 12) 
                (((((st_0.(priv)).(e_regions)) @ v_i_23).(e_base)) >> 12) 
                v_vmid_0 
                st_0)
            ) with
            | (Some (v_num_8, v_pfn_7, v_vmid_2, st_5)) =>
              if (((v_i_23 + 1) - v_call2_0) =? 0)
              then (Some (v_call2_0, v_i_23, v_vmid_0, st_5))
              else (Some (v_call2_0, (v_i_23 + 1), v_vmid_0, st_5))
            | None => None
            end))
        else (
          if (((v_i_23 + 1) - v_call2_0) =? 0)
          then (Some (v_call2_0, v_i_23, v_vmid_0, st_0))
          else (Some (v_call2_0, (v_i_23 + 1), v_vmid_0, st_0)))
      | None => None
      end
    end.

  Definition __clear_vm_stage2_range_spec (v_vmid: Z) (v_size: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if (
      if (v_size =? 1099511627776)
      then (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_powered_on)) =? 0)
      else false)
    then (
      if (((st_2.(priv)).(e_regions_cnt)) =? 0)
      then (
        (Some ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))))
      else (
        rely ((((st_2.(priv)).(e_regions_cnt)) >= 0));
        match (
          (__clear_vm_stage2_range_loop
            (z_to_nat ((st_2.(priv)).(e_regions_cnt))) 
            ((st_2.(priv)).(e_regions_cnt)) 
            0 
            v_vmid 
            ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)))
        ) with
        | (Some (v_call2_0, v_i_23, v_vmid_0, st_3)) => (Some st_3)
        | None => None
        end))
    else (
      (Some ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)))).

  Fixpoint v_revoke_stage2_sg_gpa_loop (_N_: nat) (v_addr_addr_044: Z) (v_len_143: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr_addr_044, v_len_143, v_vmid, st))
    | (S _N__0) =>
      match ((v_revoke_stage2_sg_gpa_loop _N__0 v_addr_addr_044 v_len_143 v_vmid st)) with
      | (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_0)) =>
        rely ((((0 - v_vmid_0) <= 0) /\ (v_vmid_0 < 19)));
        when st_2 == ((query_oracle st_0));
        rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid_0)) = None));
        rely ((((0 - v_addr_addr_45) <= 0) /\ ((v_addr_addr_45 - MAX_ADDR) <= 0)));
        rely ((((((st_2.(shared)).(e_s2pts)) @ v_vmid_0).(e_vttbr)) <> 0));
        if (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 281474976706560) =? 0)
        then (
          if ((v_len_144 + (- 1)) =? 0)
          then (
            (Some (
              v_addr_addr_45  ,
              v_len_144  ,
              v_vmid_0  ,
              ((st_2.[log] :<
                ((EVT CPU_ID (REL (24 + v_vmid_0) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid_0))) :: (st_2.(log))))).[shared].[e_locks] :<
                (((st_2.(shared)).(e_locks)) # (24 + v_vmid_0) == None))
            )))
          else (
            (Some (
              (v_addr_addr_45 + 4096)  ,
              (v_len_144 + (- 1))  ,
              v_vmid_0  ,
              ((st_2.[log] :<
                ((EVT CPU_ID (REL (24 + v_vmid_0) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid_0))) :: (st_2.(log))))).[shared].[e_locks] :<
                (((st_2.(shared)).(e_locks)) # (24 + v_vmid_0) == None))
            ))))
        else (
          if (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 36028797018963968) =? 0)
          then (
            when st_3 == (
                (revoke_vm_page_spec
                  v_vmid_0 
                  (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 281474976706560) >> 12) 
                  ((st_2.[log] :<
                    ((EVT CPU_ID (REL (24 + v_vmid_0) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid_0))) :: (st_2.(log))))).[shared].[e_locks] :<
                    (((st_2.(shared)).(e_locks)) # (24 + v_vmid_0) == None))));
            if ((v_len_144 + (- 1)) =? 0)
            then (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_3))
            else (Some ((v_addr_addr_45 + 4096), (v_len_144 + (- 1)), v_vmid_0, st_3)))
          else (
            when st_3 == (
                (revoke_vm_page_spec
                  v_vmid_0 
                  (((v_addr_addr_45 >> 12) & 511) + (((s2pt_walk v_addr_addr_45 (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)) & 281474976706560) >> 12)) 
                  ((st_2.[log] :<
                    ((EVT CPU_ID (REL (24 + v_vmid_0) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid_0)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid_0))) :: (st_2.(log))))).[shared].[e_locks] :<
                    (((st_2.(shared)).(e_locks)) # (24 + v_vmid_0) == None))));
            if ((v_len_144 + (- 1)) =? 0)
            then (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_3))
            else (Some ((v_addr_addr_45 + 4096), (v_len_144 + (- 1)), v_vmid_0, st_3))))
      | None => None
      end
    end.

  Definition v_revoke_stage2_sg_gpa_spec (v_vmid: Z) (v_addr: Z) (v_size: Z) (st: RData) : (option RData) :=
    if (
      if (v_size <? 4096)
      then (
        if ((v_size & 4095) <>? 0)
        then false
        else true)
      else (
        if ((v_size & 4095) <>? 0)
        then (((v_size >> 12) + 1) =? 0)
        else ((v_size >> 12) =? 0)))
    then (Some st)
    else (
      if (v_size <? 4096)
      then (
        match ((v_revoke_stage2_sg_gpa_loop (z_to_nat 1) v_addr 1 v_vmid st)) with
        | (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_0)) => (Some st_0)
        | None => None
        end)
      else (
        if ((v_size & 4095) <>? 0)
        then (
          match ((v_revoke_stage2_sg_gpa_loop (z_to_nat ((v_size >> 12) + 1)) v_addr ((v_size >> 12) + 1) v_vmid st)) with
          | (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_0)) => (Some st_0)
          | None => None
          end)
        else (
          match ((v_revoke_stage2_sg_gpa_loop (z_to_nat (v_size >> 12)) v_addr (v_size >> 12) v_vmid st)) with
          | (Some (v_addr_addr_45, v_len_144, v_vmid_0, st_0)) => (Some st_0)
          | None => None
          end))).

  Definition v_post_handle_shadow_s2pt_fault_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    if (((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e_output)) =? 0)
    then (Some st)
    else (
      if (((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e__level)) =? 2)
      then (
        match (
          (prot_and_map_vm_s2pt_loop
            (z_to_nat 512) 
            ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_hpfar)) << 8) & 18446744073709547520) 
            (((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e__level)) =? 2) 
            ((((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_hpfar)) << 8) & 18446744073709547520) >> 12) & 4503599627369984) 
            512 
            ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e_output)) >> 12) & 68719476735) 
            ((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e_output)) 
            v_vmid 
            st)
        ) with
        | (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_1, st_4)) => (Some st_4)
        | None => None
        end)
      else (
        match (
          (prot_and_map_vm_s2pt_loop
            (z_to_nat 1) 
            ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_hpfar)) << 8) & 18446744073709547520) 
            (((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e__level)) =? 2) 
            (((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_hpfar)) << 8) & 18446744073709547520) >> 12) 
            1 
            ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e_output)) >> 12) & 68719476735) 
            ((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e_output)) 
            v_vmid 
            st)
        ) with
        | (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_1, st_4)) => (Some st_4)
        | None => None
        end)).

End MemoryOps_Spec.

#[global] Hint Unfold v_grant_stage2_sg_gpa_loop_rank: spec.
#[global] Hint Unfold __clear_vm_stage2_range_loop_rank: spec.
#[global] Hint Unfold v_revoke_stage2_sg_gpa_loop_rank: spec.
Opaque map_page_host_spec.
Opaque __kvm_phys_addr_ioremap_spec.
#[global] Hint Unfold v_grant_stage2_sg_gpa_loop: spec.
Opaque v_grant_stage2_sg_gpa_spec.
#[global] Hint Unfold __clear_vm_stage2_range_loop: spec.
Opaque __clear_vm_stage2_range_spec.
#[global] Hint Unfold v_revoke_stage2_sg_gpa_loop: spec.
Opaque v_revoke_stage2_sg_gpa_spec.
Opaque v_post_handle_shadow_s2pt_fault_spec.
