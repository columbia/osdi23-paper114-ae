Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOpsAux.Spec.
Require Import S2PTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VMOpsAux_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition unmap_and_load_vm_image_loop_rank (v_mb_num_029: Z) (v_remap_addr_addr_032: Z) (v_start_030: Z) (v_target_addr_addr_033: Z) (v_vmid: Z) : Z :=
    v_mb_num_029.

  Definition alloc_remap_addr_spec (v_pgnum: Z) (st: RData) : (option (Z * RData)) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ ABS_LOCK) = None));
    if ((((((st_2.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296) + (v_pgnum << 12)) <? 5497558138880)
    then (
      (Some (
        ((((st_2.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296)  ,
        (((st_2.[log] :<
          ((EVT
            CPU_ID 
            (REL
              ABS_LOCK 
              (ABS_STATE (((st_2.(shared)).(e_core_data)).[e_last_remap_ptr] :< (((((st_2.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296) + (v_pgnum << 12)))))) ::
            ((EVT CPU_ID (ACQ ABS_LOCK)) :: (st_2.(log))))).[shared].[e_core_data].[e_last_remap_ptr] :<
          (((((st_2.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296) + (v_pgnum << 12))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # ABS_LOCK == None))
      )))
    else None.

  Definition gen_vmid_spec (st: RData) : (option (Z * RData)) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ ABS_LOCK) = None));
    if ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) <? 33)
    then (
      (Some (
        (((st_2.(shared)).(e_core_data)).(e_next_vmid))  ,
        (((st_2.[log] :<
          ((EVT CPU_ID (REL ABS_LOCK (ABS_STATE (((st_2.(shared)).(e_core_data)).[e_next_vmid] :< ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) + 1))))) ::
            ((EVT CPU_ID (ACQ ABS_LOCK)) :: (st_2.(log))))).[shared].[e_core_data].[e_next_vmid] :<
          ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) + 1)).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # ABS_LOCK == None))
      )))
    else (
      (Some (
        0  ,
        ((st_2.[log] :< ((EVT CPU_ID (REL ABS_LOCK (ABS_STATE ((st_2.(shared)).(e_core_data))))) :: ((EVT CPU_ID (ACQ ABS_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # ABS_LOCK == None))
      ))).

  Definition get_vm_poweron_spec (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    (Some (
      ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_powered_on))  ,
      ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))
    )).

  Definition set_vm_poweroff_spec (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    (Some (((st_2.[log] :<
      ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_powered_on] :< 0)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
      (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
      (((st_2.(shared)).(e_vminfos)) # v_vmid == ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_powered_on] :< 0)))).

  Fixpoint unmap_and_load_vm_image_loop (_N_: nat) (v_mb_num_029: Z) (v_remap_addr_addr_032: Z) (v_start_030: Z) (v_target_addr_addr_033: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_mb_num_029, v_remap_addr_addr_032, v_start_030, v_target_addr_addr_033, v_vmid, st))
    | (S _N__0) =>
      match ((unmap_and_load_vm_image_loop _N__0 v_mb_num_029 v_remap_addr_addr_032 v_start_030 v_target_addr_addr_033 v_vmid st)) with
      | (Some (v_mb_num_30, v_remap_addr_addr_33, v_start_31, v_target_addr_addr_34, v_vmid_0, st_0)) =>
        when st_2 == ((query_oracle st_0));
        rely (((((st_2.(shared)).(e_locks)) @ 42) = None));
        rely ((((0 - v_remap_addr_addr_33) <= 0) /\ ((v_remap_addr_addr_33 - MAX_ADDR) <= 0)));
        rely ((((((st_2.(shared)).(e_s2pts)) @ 18).(e_vttbr)) <> 0));
        if ((((s2pt_walk v_remap_addr_addr_33 (((st_2.(shared)).(e_s2pts)) @ 18)) >> 12) & 68719476224) =? 0)
        then None
        else (
          match (
            (prot_and_map_vm_s2pt_loop
              (z_to_nat 512) 
              v_start_31 
              true 
              ((v_start_31 >> 12) & 4503599627369984) 
              512 
              ((((s2pt_walk v_remap_addr_addr_33 (((st_2.(shared)).(e_s2pts)) @ 18)) >> 12) & 68719476224) & 68719476735) 
              ((((s2pt_walk v_remap_addr_addr_33 (((st_2.(shared)).(e_s2pts)) @ 18)) >> 12) & 68719476224) << 12) 
              v_vmid_0 
              ((st_2.[log] :< ((EVT CPU_ID (REL 42 (S2PT_STATE (((st_2.(shared)).(e_s2pts)) @ 18)))) :: ((EVT CPU_ID (ACQ 42)) :: (st_2.(log))))).[shared].[e_locks] :<
                (((st_2.(shared)).(e_locks)) # 42 == None)))
          ) with
          | (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_2, st_3)) =>
            if ((v_mb_num_30 + (- 1)) =? 0)
            then (Some (v_mb_num_30, v_remap_addr_addr_33, v_start_31, v_target_addr_addr_34, v_vmid_0, st_3))
            else (
              (Some (
                (v_mb_num_30 + (- 1))  ,
                ((v_remap_addr_addr_33 + (v_start_31 + 2097152)) - v_target_addr_addr_34)  ,
                (v_start_31 + 2097152)  ,
                (v_start_31 + 2097152)  ,
                v_vmid_0  ,
                st_3
              )))
          | None => None
          end)
      | None => None
      end
    end.

  Definition unmap_and_load_vm_image_spec (v_vmid: Z) (v_target_addr: Z) (v_remap_addr: Z) (v_num: Z) (st: RData) : (option RData) :=
    if ((((v_target_addr + 2097151) - (v_target_addr & 18446744073707454464)) + (v_num << 12)) <? 2097152)
    then (Some st)
    else (
      match (
        (unmap_and_load_vm_image_loop
          (z_to_nat ((((v_target_addr + 2097151) - (v_target_addr & 18446744073707454464)) + (v_num << 12)) >> 21)) 
          ((((v_target_addr + 2097151) - (v_target_addr & 18446744073707454464)) + (v_num << 12)) >> 21) 
          v_remap_addr 
          (v_target_addr & 18446744073707454464) 
          v_target_addr 
          v_vmid 
          st)
      ) with
      | (Some (v_mb_num_30, v_remap_addr_addr_33, v_start_31, v_target_addr_addr_34, v_vmid_0, st_0)) => (Some st_0)
      | None => None
      end).

End VMOpsAux_Spec.

#[global] Hint Unfold unmap_and_load_vm_image_loop_rank: spec.
#[global] Hint Unfold alloc_remap_addr_spec: spec.
#[global] Hint Unfold gen_vmid_spec: spec.
#[global] Hint Unfold get_vm_poweron_spec: spec.
#[global] Hint Unfold set_vm_poweroff_spec: spec.
#[global] Hint Unfold unmap_and_load_vm_image_loop: spec.
#[global] Hint Unfold unmap_and_load_vm_image_spec: spec.
