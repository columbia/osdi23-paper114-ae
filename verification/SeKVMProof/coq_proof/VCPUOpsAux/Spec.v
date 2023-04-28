Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import VMOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VCPUOpsAux_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition sync_dirty_to_shadow_loop_rank (v_call: Z) (v_i_016: Z) (v_vcpuid: Z) (v_vmid: Z) : Z :=
    (31 - v_i_016).

  Definition v_update_exception_gp_regs_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (st.[priv].[e_shadow_ctxts] :<
      (((st.(priv)).(e_shadow_ctxts)) #
        ((4 * v_vmid) + v_vcpuid) ==
        (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_regs] :<
          ((((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) # 35 == (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 32)) #
            32 ==
            0) #
            33 ==
            11) #
            8 ==
            (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 33))).[e_sys_regs] :<
          (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_sys_regs)) # 4 == 0))))).

  Fixpoint sync_dirty_to_shadow_loop (_N_: nat) (__return__: bool) (v_call: Z) (v_i_016: Z) (v_vcpuid: Z) (v_vmid: Z) (st: RData) : (option (bool * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (__return__, v_call, v_i_016, v_vcpuid, v_vmid, st))
    | (S _N__0) =>
      match ((sync_dirty_to_shadow_loop _N__0 __return__ v_call v_i_016 v_vcpuid v_vmid st)) with
      | (Some (__return___0, v_call_0, v_i_17, v_vcpuid_0, v_vmid_0, st_0)) =>
        if (((1 << v_i_17) & v_call_0) =? 0)
        then (
          if ((v_i_17 + 1) =? 31)
          then (Some (true, v_call_0, v_i_17, v_vcpuid_0, v_vmid_0, st_0))
          else (Some (__return___0, v_call_0, (v_i_17 + 1), v_vcpuid_0, v_vmid_0, st_0)))
        else (
          rely ((((0 - v_i_17) <= 0) /\ (v_i_17 < 31)));
          rely ((((0 - ((4 * v_vmid_0) + v_vcpuid_0)) <= 0) /\ (((4 * v_vmid_0) + v_vcpuid_0) < 72)));
          if ((v_i_17 + 1) =? 31)
          then (
            (Some (
              true  ,
              v_call_0  ,
              v_i_17  ,
              v_vcpuid_0  ,
              v_vmid_0  ,
              (st_0.[priv].[e_shadow_ctxts] :<
                (((st_0.(priv)).(e_shadow_ctxts)) #
                  ((4 * v_vmid_0) + v_vcpuid_0) ==
                  ((((st_0.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid_0) + v_vcpuid_0)).[e_regs] :<
                    (((((st_0.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid_0) + v_vcpuid_0)).(e_regs)) #
                      v_i_17 ==
                      (((((((((st_0.(priv)).(e_vcpu_pool)) @ ((8 * (((50 + (4528 * v_vmid_0)) + (1132 * v_vcpuid_0)) + v_i_17)) / 9056)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) @ v_i_17)))))
            )))
          else (
            (Some (
              __return___0  ,
              v_call_0  ,
              (v_i_17 + 1)  ,
              v_vcpuid_0  ,
              v_vmid_0  ,
              (st_0.[priv].[e_shadow_ctxts] :<
                (((st_0.(priv)).(e_shadow_ctxts)) #
                  ((4 * v_vmid_0) + v_vcpuid_0) ==
                  ((((st_0.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid_0) + v_vcpuid_0)).[e_regs] :<
                    (((((st_0.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid_0) + v_vcpuid_0)).(e_regs)) #
                      v_i_17 ==
                      (((((((((st_0.(priv)).(e_vcpu_pool)) @ ((8 * (((50 + (4528 * v_vmid_0)) + (1132 * v_vcpuid_0)) + v_i_17)) / 9056)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) @ v_i_17)))))
            ))))
      | None => None
      end
    end.

  Definition sync_dirty_to_shadow_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    match ((sync_dirty_to_shadow_loop (z_to_nat 31) false ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) 0 v_vcpuid v_vmid st)) with
    | (Some (__return__, v_call_0, v_i_17, v_vcpuid_0, v_vmid_0, st_1)) => (Some st_1)
    | None => None
    end.

  Definition reset_gp_regs_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) =? 0)
    then None
    else (
      rely ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) >= 0));
      match (
        (v_search_load_info_loop
          (z_to_nat ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))) 
          ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e_pc)) 
          ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) 
          0 
          0 
          0 
          v_vmid 
          ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID))))
      ) with
      | (Some (v_addr_0, v_call_0, v_load_idx_30, v_ret_29, v_ret_0_lcssa_0, v_vmid_1, st_3)) =>
        rely (((((st_3.(shared)).(e_locks)) @ (5 + v_vmid_1)) = (Some CPU_ID)));
        if (v_ret_0_lcssa_0 =? 0)
        then None
        else (
          rely ((((0 - v_vcpuid) <= 0) /\ (((- 4) + v_vcpuid) < 0)));
          (Some (((st_3.[log] :< ((EVT CPU_ID (REL (5 + v_vmid_1) (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ v_vmid_1)))) :: (st_3.(log)))).[priv].[e_shadow_ctxts] :<
            (((st_3.(priv)).(e_shadow_ctxts)) #
              ((4 * v_vmid) + v_vcpuid) ==
              (((((st_3.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_fp_regs] :<
                (((((st_3.(priv)).(e_host_cpus)) @ ((4 * v_vmid) + v_vcpuid)).(e_gp_regs)).(e__fp_regs))).[e_regs] :<
                (((zmap_init 0) # 33 == ((((((((st_3.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e_pstate))) #
                  32 ==
                  ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e_pc)))))).[shared].[e_locks] :<
            (((st_3.(shared)).(e_locks)) # (5 + v_vmid_1) == None))))
      | None => None
      end).

End VCPUOpsAux_Spec.

#[global] Hint Unfold sync_dirty_to_shadow_loop_rank: spec.
#[global] Hint Unfold v_update_exception_gp_regs_spec: spec.
#[global] Hint Unfold sync_dirty_to_shadow_loop: spec.
#[global] Hint Unfold sync_dirty_to_shadow_spec: spec.
#[global] Hint Unfold reset_gp_regs_spec: spec.
