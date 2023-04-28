Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTOps_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition clear_pfn_host_spec (v_pfn: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ 24) = None));
    rely (((((- 4096) * v_pfn) <= 0) /\ (((v_pfn << 12) - MAX_ADDR) <= 0)));
    rely ((((((st_2.(shared)).(e_s2pts)) @ 0).(e_vttbr)) <> 0));
    if ((s2pt_walk (v_pfn << 12) (((st_2.(shared)).(e_s2pts)) @ 0)) =? 0)
    then (
      (Some ((st_2.[log] :< ((EVT CPU_ID (REL 24 (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ 0)))) :: ((EVT CPU_ID (ACQ 24)) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # 24 == None))))
    else (
      when npt' == ((s2pt_set (v_pfn << 12) 3 144115188075855872 (((st_2.(shared)).(e_s2pts)) @ 0)));
      (Some (((st_2.[log] :< ((EVT CPU_ID (REL 24 (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ 24)) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # 24 == None)).[shared].[e_s2pts] :<
        (((st_2.(shared)).(e_s2pts)) # 0 == npt')))).

  Definition mmap_s2pt_spec (v_vmid: Z) (v_addr: Z) (v_level: Z) (v_pte: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
    rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_ADDR) <= 0)));
    rely ((((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) <> 0));
    when npt' == ((s2pt_set v_addr v_level v_pte (((st_2.(shared)).(e_s2pts)) @ v_vmid)));
    (Some (((st_2.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
      (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)).[shared].[e_s2pts] :<
      (((st_2.(shared)).(e_s2pts)) # v_vmid == npt'))).

  Definition walk_s2pt_spec (v_vmid: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
    rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_ADDR) <= 0)));
    rely ((((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) <> 0));
    (Some (
      (s2pt_walk v_addr (((st_2.(shared)).(e_s2pts)) @ v_vmid))  ,
      ((st_2.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None))
    )).

  Definition init_s2pt_spec (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
    if (v_vmid <? 18)
    then (
      if (((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) =? 0)
      then (
        (Some (((st_2.[log] :<
          ((EVT
            CPU_ID 
            (REL
              (24 + v_vmid) 
              (S2PT_STATE ((((st_2.(shared)).(e_s2pts)) @ v_vmid).[e_vttbr] :< (((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) |' ((v_vmid & 255) << 48)))))) ::
            ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)).[shared].[e_s2pts] :<
          (((st_2.(shared)).(e_s2pts)) #
            v_vmid ==
            ((((st_2.(shared)).(e_s2pts)) @ v_vmid).[e_vttbr] :< (((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) |' ((v_vmid & 255) << 48)))))))
      else (
        (Some ((st_2.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)))))
    else (
      if (((((st_2.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ TTBR0_EL2) =? 0)
      then (
        (Some (((st_2.[log] :<
          ((EVT
            CPU_ID 
            (REL
              (24 + v_vmid) 
              (S2PT_STATE ((((st_2.(shared)).(e_s2pts)) @ v_vmid).[e_vttbr] :< (((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) |' ((v_vmid & 255) << 48)))))) ::
            ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None)).[shared].[e_s2pts] :<
          (((st_2.(shared)).(e_s2pts)) #
            v_vmid ==
            ((((st_2.(shared)).(e_s2pts)) @ v_vmid).[e_vttbr] :< (((((st_2.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) |' ((v_vmid & 255) << 48)))))))
      else (
        (Some ((st_2.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == None))))).

End S2PTOps_Spec.

#[global] Hint Unfold clear_pfn_host_spec: spec.
#[global] Hint Unfold mmap_s2pt_spec: spec.
#[global] Hint Unfold walk_s2pt_spec: spec.
#[global] Hint Unfold init_s2pt_spec: spec.
