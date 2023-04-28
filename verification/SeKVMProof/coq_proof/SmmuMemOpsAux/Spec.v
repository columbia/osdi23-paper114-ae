Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTTreeOps.Spec.
Require Import SmmuPTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuMemOpsAux_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition assign_pfn_to_smmu_spec (v_vmid: Z) (v_gfn: Z) (v_pfn: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    rely ((((0 - v_pfn) <= 0) /\ ((v_pfn - MAX_PFN) <= 0)));
    if (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) =? 0)
    then (
      if (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_count)) =? 0)
      then (
        when st_5 == (
            (query_oracle
              ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))));
        rely (((((st_5.(shared)).(e_locks)) @ 24) = None));
        rely (((((- 4096) * v_pfn) <= 0) /\ (((v_pfn << 12) - MAX_ADDR) <= 0)));
        rely ((((((st_5.(shared)).(e_s2pts)) @ 0).(e_vttbr)) <> 0));
        if ((s2pt_walk (v_pfn << 12) (((st_5.(shared)).(e_s2pts)) @ 0)) =? 0)
        then (
          rely (((1 + v_vmid) <> 0));
          rely ((((((st_5.(shared)).(e_locks)) # 24 == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
          rely (((1 + ((((st_5.(shared)).(e_s2pages)) @ v_pfn).(e_vmid))) <> 0));
          (Some (((st_5.[log] :<
            ((EVT
              CPU_ID 
              (REL
                S2PAGE_LOCK 
                (S2PAGE_STATE (((st_5.(shared)).(e_s2pages)) # v_pfn == ((((((st_5.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< (- 1)).[e_gfn] :< v_gfn).[e_vmid] :< v_vmid))))) ::
              ((EVT CPU_ID (REL 24 (S2PT_STATE (((st_5.(shared)).(e_s2pts)) @ 0)))) :: ((EVT CPU_ID (ACQ 24)) :: (st_5.(log)))))).[shared].[e_locks] :<
            ((((st_5.(shared)).(e_locks)) # 24 == None) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
            (((st_5.(shared)).(e_s2pages)) # v_pfn == ((((((st_5.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< (- 1)).[e_gfn] :< v_gfn).[e_vmid] :< v_vmid)))))
        else (
          when npt' == ((s2pt_set (v_pfn << 12) 3 144115188075855872 (((st_5.(shared)).(e_s2pts)) @ 0)));
          rely (((1 + v_vmid) <> 0));
          rely ((((((st_5.(shared)).(e_locks)) # 24 == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
          rely (((1 + ((((st_5.(shared)).(e_s2pages)) @ v_pfn).(e_vmid))) <> 0));
          (Some ((((st_5.[log] :<
            ((EVT
              CPU_ID 
              (REL
                S2PAGE_LOCK 
                (S2PAGE_STATE (((st_5.(shared)).(e_s2pages)) # v_pfn == ((((((st_5.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< (- 1)).[e_gfn] :< v_gfn).[e_vmid] :< v_vmid))))) ::
              ((EVT CPU_ID (REL 24 (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ 24)) :: (st_5.(log)))))).[shared].[e_locks] :<
            ((((st_5.(shared)).(e_locks)) # 24 == None) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
            (((st_5.(shared)).(e_s2pages)) # v_pfn == ((((((st_5.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< (- 1)).[e_gfn] :< v_gfn).[e_vmid] :< v_vmid))).[shared].[e_s2pts] :<
            (((st_5.(shared)).(e_s2pts)) # 0 == npt')))))
      else None)
    else (
      if (((((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) - v_vmid) <>? 0) && (((((st_2.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) <>? (- 1)))
      then None
      else (
        (Some ((st_2.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_2.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None))))).

  Definition update_smmu_page_spec (v_vmid: Z) (v_cbndx: Z) (v_index: Z) (v_iova: Z) (v_pte: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    rely ((((0 - ((v_pte >> 12) & 68719476735)) <= 0) /\ ((((v_pte >> 12) & 68719476735) - MAX_PFN) <= 0)));
    if (((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_vmid)) =? 0)
    then (
      if (
        if ((((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_vmid)) - v_vmid) =? 0)
        then (((v_iova >> 12) - ((((v_pte >> 12) & 68719476735) + 1000000000) & 4294967295)) =? 0)
        else false)
      then (
        when st_6 == (
            (query_oracle
              (((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID))).[shared].[e_s2pages] :<
                (((st_2.(shared)).(e_s2pages)) #
                  ((v_pte >> 12) & 68719476735) ==
                  ((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).[e_count] :< (((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_count)) + 1))))));
        rely (((((st_6.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
        rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
        rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
        rely ((((0 - v_iova) <= 0) /\ ((v_iova - MAX_PADDR) <= 0)));
        when spts' == ((smmupt_set ((8 * v_index) + v_cbndx) v_iova v_pte ((st_6.(shared)).(e_smmupts))));
        rely ((((((st_6.(shared)).(e_locks)) # SMMUPT_LOCK == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
        (Some (((st_6.[log] :<
          ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_6.(shared)).(e_s2pages))))) ::
            ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_6.(log)))))).[shared].[e_locks] :<
          ((((st_6.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_smmupts] :<
          spts')))
      else (
        (Some (((st_2.[log] :<
          ((EVT
            CPU_ID 
            (REL
              S2PAGE_LOCK 
              (S2PAGE_STATE
                (((st_2.(shared)).(e_s2pages)) #
                  ((v_pte >> 12) & 68719476735) ==
                  ((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).[e_count] :< (((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_count)) + 1)))))) ::
            ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
          (((st_2.(shared)).(e_s2pages)) #
            ((v_pte >> 12) & 68719476735) ==
            ((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).[e_count] :< (((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_count)) + 1)))))))
    else (
      if (((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_vmid)) =? (- 1))
      then (
        when st_4 == (
            (query_oracle
              ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))));
        rely (((((st_4.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
        rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
        rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
        rely ((((0 - v_iova) <= 0) /\ ((v_iova - MAX_PADDR) <= 0)));
        when spts' == ((smmupt_set ((8 * v_index) + v_cbndx) v_iova v_pte ((st_4.(shared)).(e_smmupts))));
        rely ((((((st_4.(shared)).(e_locks)) # SMMUPT_LOCK == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
        (Some (((st_4.[log] :<
          ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_4.(shared)).(e_s2pages))))) ::
            ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_4.(log)))))).[shared].[e_locks] :<
          ((((st_4.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_smmupts] :<
          spts')))
      else (
        if (
          if ((((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_vmid)) - v_vmid) =? 0)
          then (((v_iova >> 12) - (((((st_2.(shared)).(e_s2pages)) @ ((v_pte >> 12) & 68719476735)).(e_gfn)) & 4294967295)) =? 0)
          else false)
        then (
          when st_4 == (
              (query_oracle
                ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))));
          rely (((((st_4.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
          rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
          rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
          rely ((((0 - v_iova) <= 0) /\ ((v_iova - MAX_PADDR) <= 0)));
          when spts' == ((smmupt_set ((8 * v_index) + v_cbndx) v_iova v_pte ((st_4.(shared)).(e_smmupts))));
          rely ((((((st_4.(shared)).(e_locks)) # SMMUPT_LOCK == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
          (Some (((st_4.[log] :<
            ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_4.(shared)).(e_s2pages))))) ::
              ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_4.(log)))))).[shared].[e_locks] :<
            ((((st_4.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_smmupts] :<
            spts')))
        else (
          (Some ((st_2.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_2.(shared)).(e_s2pages))))) :: ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
            (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == None)))))).

  Definition unmap_smmu_page_spec (v_cbndx: Z) (v_index: Z) (v_iova: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    when st_3 == (
        (query_oracle
          ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))));
    rely (((((st_3.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
    rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
    rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
    rely ((((0 - v_iova) <= 0) /\ ((v_iova - MAX_PADDR) <= 0)));
    if ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) =? 0)
    then (
      rely (
        (((0 - ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)) <= 0) /\
          ((((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735) - MAX_PFN) <= 0)));
      rely ((((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
      if (((((st_3.(shared)).(e_s2pages)) @ ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)).(e_vmid)) =? 0)
      then (
        if (((((st_3.(shared)).(e_s2pages)) @ ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)).(e_count)) =? 0)
        then (
          (Some ((st_3.[log] :<
            ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_3.(shared)).(e_s2pages))))) ::
              ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE ((st_3.(shared)).(e_smmupts))))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_3.(log)))))).[shared].[e_locks] :<
            ((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None))))
        else (
          (Some (((st_3.[log] :<
            ((EVT
              CPU_ID 
              (REL
                S2PAGE_LOCK 
                (S2PAGE_STATE
                  (((st_3.(shared)).(e_s2pages)) #
                    ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735) ==
                    ((((st_3.(shared)).(e_s2pages)) @ ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)).[e_count] :<
                      (((((st_3.(shared)).(e_s2pages)) @ ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)).(e_count)) + (- 1))))))) ::
              ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE ((st_3.(shared)).(e_smmupts))))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_3.(log)))))).[shared].[e_locks] :<
            ((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
            (((st_3.(shared)).(e_s2pages)) #
              ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735) ==
              ((((st_3.(shared)).(e_s2pages)) @ ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)).[e_count] :<
                (((((st_3.(shared)).(e_s2pages)) @ ((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) & 68719476735)).(e_count)) + (- 1))))))))
      else (
        (Some ((st_3.[log] :<
          ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_3.(shared)).(e_s2pages))))) ::
            ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE ((st_3.(shared)).(e_smmupts))))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_3.(log)))))).[shared].[e_locks] :<
          ((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)))))
    else (
      when spts' == ((smmupt_set ((8 * v_index) + v_cbndx) v_iova 0 ((st_3.(shared)).(e_smmupts))));
      rely (
        (((0 - (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)) <= 0) /\
          (((((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735) - MAX_PFN) <= 0)));
      rely ((((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) @ S2PAGE_LOCK) = (Some CPU_ID)));
      if (((((st_3.(shared)).(e_s2pages)) @ (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)).(e_vmid)) =? 0)
      then (
        if (((((st_3.(shared)).(e_s2pages)) @ (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)).(e_count)) =? 0)
        then (
          (Some (((st_3.[log] :<
            ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_3.(shared)).(e_s2pages))))) ::
              ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_3.(log)))))).[shared].[e_locks] :<
            ((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_smmupts] :<
            spts')))
        else (
          (Some ((((st_3.[log] :<
            ((EVT
              CPU_ID 
              (REL
                S2PAGE_LOCK 
                (S2PAGE_STATE
                  (((st_3.(shared)).(e_s2pages)) #
                    (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735) ==
                    ((((st_3.(shared)).(e_s2pages)) @ (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)).[e_count] :<
                      (((((st_3.(shared)).(e_s2pages)) @ (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)).(e_count)) + (- 1))))))) ::
              ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_3.(log)))))).[shared].[e_locks] :<
            ((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_s2pages] :<
            (((st_3.(shared)).(e_s2pages)) #
              (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735) ==
              ((((st_3.(shared)).(e_s2pages)) @ (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)).[e_count] :<
                (((((st_3.(shared)).(e_s2pages)) @ (((smmupt_walk ((8 * v_index) + v_cbndx) v_iova ((st_3.(shared)).(e_smmupts))) >> 12) & 68719476735)).(e_count)) + (- 1))))).[shared].[e_smmupts] :<
            spts'))))
      else (
        (Some (((st_3.[log] :<
          ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st_3.(shared)).(e_s2pages))))) ::
            ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_3.(log)))))).[shared].[e_locks] :<
          ((((st_3.(shared)).(e_locks)) # SMMUPT_LOCK == None) # S2PAGE_LOCK == None)).[shared].[e_smmupts] :<
          spts')))).

End SmmuMemOpsAux_Spec.

Opaque assign_pfn_to_smmu_spec.
Opaque update_smmu_page_spec.
Opaque unmap_smmu_page_spec.
