Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemManager_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition grant_vm_page_spec (v_vmid: Z) (v_pfn: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    rely ((((0 - v_pfn) <= 0) /\ ((v_pfn - MAX_PFN) <= 0)));
    if (
      if ((((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) - v_vmid) =? 0)
      then (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) <? 100)
      else false)
    then (
      rely (((1 + ((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid))) <> 0));
      (Some (((st_2.[log] :<
        ((EVT
          CPU_ID 
          (REL
            S2PAGE_LOCK 
            (S2PAGE_STATE
              (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) + 1)))))) ::
          ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
        (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) + 1))))))
    else (
      (Some ((st_2.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_2.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)))).

  Definition clear_vm_page_spec (v_vmid: Z) (v_pfn: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    rely ((((0 - v_pfn) <= 0) /\ ((v_pfn - MAX_PFN) <= 0)));
    if ((((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) - v_vmid) =? 0)
    then (
      rely (((1 + ((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid))) <> 0));
      (Some ((((st_2.[log] :<
        ((EVT
          CPU_ID 
          (REL
            S2PAGE_LOCK 
            (S2PAGE_STATE (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< 0).[e_gfn] :< 0).[e_vmid] :< 0))))) ::
          ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[priv].[e_umem] :<
        (((st_2.(priv)).(e_umem)) # v_pfn == 0)).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
        (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< 0).[e_gfn] :< 0).[e_vmid] :< 0)))))
    else (
      (Some ((st_2.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_2.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)))).

  Definition map_pfn_vm_spec (v_vmid: Z) (v_addr: Z) (v_pte: Z) (v_level: Z) (st: RData) : (option RData) :=
    if (v_level =? 3)
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      when st_2 == ((query_oracle st));
      rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
      rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_ADDR) <= 0)));
      rely ((((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) <> 0));
      when npt' == ((s2pt_set v_addr v_level ((v_pte & 281474976706560) |' 4095) (((st_2.(shared)).(e_s2pts)) @ v_vmid)));
      (Some (((st_2.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)).[shared].[e_s2pts] :<
        (((st_2.(shared)).(e_s2pts)) # v_vmid == npt'))))
    else (
      if (v_level =? 2)
      then (
        rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
        when st_2 == ((query_oracle st));
        rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
        rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_ADDR) <= 0)));
        rely ((((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) <> 0));
        when npt' == ((s2pt_set v_addr v_level ((v_pte & 281474976706560) |' 4093) (((st_2.(shared)).(e_s2pts)) @ v_vmid)));
        (Some (((st_2.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)).[shared].[e_s2pts] :<
          (((st_2.(shared)).(e_s2pts)) # v_vmid == npt'))))
      else (
        rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
        when st_2 == ((query_oracle st));
        rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
        rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_ADDR) <= 0)));
        rely ((((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) <> 0));
        when npt' == ((s2pt_set v_addr v_level v_pte (((st_2.(shared)).(e_s2pts)) @ v_vmid)));
        (Some (((st_2.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)).[shared].[e_s2pts] :<
          (((st_2.(shared)).(e_s2pts)) # v_vmid == npt'))))).

  Definition assign_pfn_to_vm_spec (v_vmid: Z) (v_gfn: Z) (v_pfn: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    rely ((((0 - v_pfn) <= 0) /\ ((v_pfn - MAX_PFN) <= 0)));
    if (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) =? 0)
    then (
      if (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) =? 0)
      then (
        rely (((1 + v_vmid) <> 0));
        when st_5 == (
            (query_oracle
              (((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID))).[shared].[e_s2pages] :<
                (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_vmid] :< v_vmid)))));
        rely (((((st_5.(shared)).(e_locks)) @ 24) = None));
        rely (((((- 4096) * v_pfn) <= 0) /\ (((v_pfn << 12) - MAX_ADDR) <= 0)));
        rely ((((((st_5.(shared)).(e_s2pts)) @ 0).(e_vttbr)) <> 0));
        if ((s2pt_walk (v_pfn << 12) (((st_5.(shared)).(e_s2pts)) @ 0)) =? 0)
        then (
          rely ((((((st_5.(shared)).(e_locks)) # 24 == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
          rely (((1 + ((((st_5.(shared)).(e_s2pages)) @ v_pfn).(e_vmid))) <> 0));
          (Some (((st_5.[log] :<
            ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE (((st_5.(shared)).(e_s2pages)) # v_pfn == ((((st_5.(shared)).(e_s2pages)) @ v_pfn).[e_gfn] :< v_gfn))))) ::
              ((EVT CPU_ID (REL 24 (S2PT_STATE (((st_5.(shared)).(e_s2pts)) @ 0)))) :: ((EVT CPU_ID (ACQ 24)) :: (st_5.(log)))))).[shared].[e_locks] :<
            ((((st_5.(shared)).(e_locks)) # 24 == None) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
            (((st_5.(shared)).(e_s2pages)) # v_pfn == ((((st_5.(shared)).(e_s2pages)) @ v_pfn).[e_gfn] :< v_gfn)))))
        else (
          when npt' == ((s2pt_set (v_pfn << 12) 3 144115188075855872 (((st_5.(shared)).(e_s2pts)) @ 0)));
          rely ((((((st_5.(shared)).(e_locks)) # 24 == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
          rely (((1 + ((((st_5.(shared)).(e_s2pages)) @ v_pfn).(e_vmid))) <> 0));
          (Some ((((st_5.[log] :<
            ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE (((st_5.(shared)).(e_s2pages)) # v_pfn == ((((st_5.(shared)).(e_s2pages)) @ v_pfn).[e_gfn] :< v_gfn))))) ::
              ((EVT CPU_ID (REL 24 (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ 24)) :: (st_5.(log)))))).[shared].[e_locks] :<
            ((((st_5.(shared)).(e_locks)) # 24 == None) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
            (((st_5.(shared)).(e_s2pages)) # v_pfn == ((((st_5.(shared)).(e_s2pages)) @ v_pfn).[e_gfn] :< v_gfn))).[shared].[e_s2pts] :<
            (((st_5.(shared)).(e_s2pts)) # 0 == npt')))))
      else None)
    else (
      if ((((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) - v_vmid) =? 0)
      then (
        if ((((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_gfn)) - v_gfn) =? 0)
        then (
          if (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) =? (- 1))
          then (
            rely (((1 + ((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid))) <> 0));
            (Some (((st_2.[log] :<
              ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< 0))))) ::
                ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
              (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< 0)))))
          else (
            (Some ((st_2.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_2.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)))))
        else None)
      else (
        (Some ((st_2.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_2.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None))))).

  Definition revoke_vm_page_spec (v_vmid: Z) (v_pfn: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    rely ((((0 - v_pfn) <= 0) /\ ((v_pfn - MAX_PFN) <= 0)));
    if (
      if ((((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) - v_vmid) =? 0)
      then (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) <>? 0)
      else false)
    then (
      rely (((1 + ((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid))) <> 0));
      if (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) =? 1)
      then (
        when st_5 == (
            (query_oracle
              (((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID))).[shared].[e_s2pages] :<
                (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) + (- 1)))))));
        rely (((((st_5.(shared)).(e_locks)) @ 24) = None));
        rely (((((- 4096) * v_pfn) <= 0) /\ (((v_pfn << 12) - MAX_ADDR) <= 0)));
        rely ((((((st_5.(shared)).(e_s2pts)) @ 0).(e_vttbr)) <> 0));
        if ((s2pt_walk (v_pfn << 12) (((st_5.(shared)).(e_s2pts)) @ 0)) =? 0)
        then (
          rely ((((((st_5.(shared)).(e_locks)) # 24 == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
          (Some ((st_5.[log] :<
            ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_5.(shared)).(e_s2pages))))) ::
              ((EVT CPU_ID (REL 24 (S2PT_STATE (((st_5.(shared)).(e_s2pts)) @ 0)))) :: ((EVT CPU_ID (ACQ 24)) :: (st_5.(log)))))).[shared].[e_locks] :<
            ((((st_5.(shared)).(e_locks)) # 24 == None) # S2PAGE_LOCK == None))))
        else (
          when npt' == ((s2pt_set (v_pfn << 12) 3 144115188075855872 (((st_5.(shared)).(e_s2pts)) @ 0)));
          rely ((((((st_5.(shared)).(e_locks)) # 24 == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
          (Some (((st_5.[log] :<
            ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_5.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (REL 24 (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ 24)) :: (st_5.(log)))))).[shared].[e_locks] :<
            ((((st_5.(shared)).(e_locks)) # 24 == None) # S2PAGE_LOCK == None)).[shared].[e_s2pts] :<
            (((st_5.(shared)).(e_s2pts)) # 0 == npt')))))
      else (
        (Some (((st_2.[log] :<
          ((EVT
            CPU_ID 
            (REL
              S2PAGE_LOCK 
              (S2PAGE_STATE
                (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) + (- 1))))))) ::
            ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
          (((st_2.(shared)).(e_s2pages)) # v_pfn == ((((st_2.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) + (- 1))))))))
    else (
      (Some ((st_2.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_2.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)))).

End MemManager_Spec.

Opaque grant_vm_page_spec.
Opaque clear_vm_page_spec.
Opaque map_pfn_vm_spec.
Opaque assign_pfn_to_vm_spec.
Opaque revoke_vm_page_spec.
