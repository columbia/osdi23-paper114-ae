Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VCPUPrep_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition prep_wfx_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (Some (st.[priv].[e_shadow_ctxts] :<
      (((st.(priv)).(e_shadow_ctxts)) #
        ((4 * v_vmid) + v_vcpuid) ==
        ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :<
          (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' 4294967296))))).

  Definition prep_abort_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    if ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_hpfar)) & 72057594033733632) =? 0)
    then (
      if ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) & 192) =? 0)
      then (
        if ((1 << ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31)) =? 0)
        then (
          (Some (st.[priv].[e_shadow_ctxts] :<
            (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< 0)))))
        else (
          (Some (st.[priv].[e_shadow_ctxts] :<
            (((st.(priv)).(e_shadow_ctxts)) #
              ((4 * v_vmid) + v_vcpuid) ==
              ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :<
                ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' 4294967296) |'
                  (1 << ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31)))))))))
      else (
        rely (((((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31) <? 41) = true));
        rely (
          (((0 - ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31)) <= 0) /\
            (((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31) < 41)));
        rely (
          (((0 - ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31)) <= 0) /\
            (((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31) < 31)));
        (Some ((st.[priv].[e_shadow_ctxts] :<
          (((st.(priv)).(e_shadow_ctxts)) #
            ((4 * v_vmid) + v_vcpuid) ==
            ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :<
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' 4294967296)))).[priv].[e_vcpu_pool] :<
          (((st.(priv)).(e_vcpu_pool)) #
            ((4 * v_vmid) + v_vcpuid) ==
            ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e__regs] :<
              (((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) #
                ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31) ==
                (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_fault)).(e_esr_el2)) >> 16) & 31)))))))))
    else (Some st).

  Definition prep_hvc_spec (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    if (((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0) & 4294967295) =? 3288334339)
    then (
      (Some ((st.[priv].[e_shadow_ctxts] :<
        (((st.(priv)).(e_shadow_ctxts)) #
          ((4 * v_vmid) + v_vcpuid) ==
          ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' 1)))).[priv].[e_vcpu_pool] :<
        (((st.(priv)).(e_vcpu_pool)) #
          ((4 * v_vmid) + v_vcpuid) ==
          ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e__regs] :<
            ((((((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) #
              0 ==
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0)) #
              1 ==
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 1)) #
              2 ==
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 2)) #
              3 ==
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 3)))))))
    else (
      if (((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0) & 3221225471) =? 2214592516)
      then (
        (Some ((st.[priv].[e_shadow_ctxts] :<
          (((st.(priv)).(e_shadow_ctxts)) #
            ((4 * v_vmid) + v_vcpuid) ==
            ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' 1)))).[priv].[e_vcpu_pool] :<
          (((st.(priv)).(e_vcpu_pool)) #
            ((4 * v_vmid) + v_vcpuid) ==
            ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e__regs] :<
              (((((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) #
                0 ==
                (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0)) #
                1 ==
                (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 1)) #
                2 ==
                (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 2)))))))
      else (
        if (((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0) & 4294967295) =? 2214592520)
        then (
          rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
          when st_5 == (
              (query_oracle
                ((st.[priv].[e_shadow_ctxts] :<
                  (((st.(priv)).(e_shadow_ctxts)) #
                    ((4 * v_vmid) + v_vcpuid) ==
                    ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' 1)))).[priv].[e_vcpu_pool] :<
                  (((st.(priv)).(e_vcpu_pool)) #
                    ((4 * v_vmid) + v_vcpuid) ==
                    ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e__regs] :<
                      (((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) #
                        0 ==
                        (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0)))))));
          rely (((((st_5.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
          (Some (((st_5.[log] :<
            ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE ((((st_5.(shared)).(e_vminfos)) @ v_vmid).[e_powered_on] :< 0)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_5.(log))))).[shared].[e_locks] :<
            (((st_5.(shared)).(e_locks)) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
            (((st_5.(shared)).(e_vminfos)) # v_vmid == ((((st_5.(shared)).(e_vminfos)) @ v_vmid).[e_powered_on] :< 0)))))
        else (
          (Some (st.[priv].[e_vcpu_pool] :<
            (((st.(priv)).(e_vcpu_pool)) #
              ((4 * v_vmid) + v_vcpuid) ==
              ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e__regs] :<
                (((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) #
                  0 ==
                  (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0))))))))).

End VCPUPrep_Spec.

#[global] Hint Unfold prep_wfx_spec: spec.
Opaque prep_abort_spec.
Opaque prep_hvc_spec.
