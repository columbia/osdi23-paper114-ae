Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOps.Spec.
Require Import VCPUOpsAux.Spec.
Require Import VCPUPrep.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VCPUOps_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition restore_shadow_kvm_regs_spec (st: RData) : (option RData) :=
    when v_call, st == ((get_cur_vmid_spec st));
    when v_call1, st == ((get_cur_vcpu_id_spec st));
    when v_call2, st == ((get_shadow_ctxt_spec v_call v_call1 45 st));
    let v_cmp := (v_call2 =? (- 1)) in
    when st == (
        if v_cmp
        then (
          when st == ((reset_gp_regs_spec v_call v_call1 st));
          when st == ((reset_sys_regs_spec v_call v_call1 st));
          when st == ((set_shadow_dirty_bit_spec v_call v_call1 0 st));
          (Some st))
        else (
          when v_call3, st == ((get_shadow_ctxt_spec v_call v_call1 44 st));
          let v_cmp4 := (v_call3 =? 2) in
          let v_tobool := (v_call2 <>? 0) in
          let v_or_cond := (
              if v_cmp4
              then v_tobool
              else false) in
          when st == (
              if v_or_cond
              then (
                when st == ((sync_dirty_to_shadow_spec v_call v_call1 st));
                (Some st))
              else (Some st));
          let v_and := (v_call2 & 60129542144) in
          let v_tobool6_not := (v_and =? 0) in
          when st == (
              if v_tobool6_not
              then (Some st)
              else (
                when st == ((v_update_exception_gp_regs_spec v_call v_call1 st));
                (Some st)));
          let v_and9 := (v_call2 & 4294967296) in
          let v_tobool10_not := (v_and9 =? 0) in
          when st == (
              if v_tobool10_not
              then (Some st)
              else (
                when v_call12, st == ((get_shadow_ctxt_spec v_call v_call1 32 st));
                let v_add := (v_call12 + 4) in
                when st == ((set_shadow_ctxt_spec v_call v_call1 32 v_add st));
                (Some st)));
          when st == ((set_shadow_dirty_bit_spec v_call v_call1 0 st));
          when st == ((set_shadow_ctxt_spec v_call v_call1 41 0 st));
          when v_call14, st == ((get_shadow_ctxt_spec v_call v_call1 46 st));
          let v_and15 := (v_call14 & 2) in
          let v_tobool16_not := (v_and15 =? 0) in
          when st == (
              if v_tobool16_not
              then (Some st)
              else (
                when st == ((v_post_handle_shadow_s2pt_fault_spec v_call v_call1 st));
                (Some st)));
          when st == ((set_shadow_ctxt_spec v_call v_call1 46 0 st));
          (Some st)));
    let __return__ := true in
    (Some st).

  Definition save_shadow_kvm_regs_spec (st: RData) : (option RData) :=
    rely (
      (((0 - ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))) <= 0) /\
        (((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id))) < 72)));
    if (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_ec)) =? 2)
    then (
      if (
        ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_esr)) >> 26) =?
          60))
      then (
        (Some (st.[priv].[e_shadow_ctxts] :<
          (((st.(priv)).(e_shadow_ctxts)) #
            ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id))) ==
            ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).[e_dirty] :<
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_dirty)) |'
                4294967296))))))
      else (
        if (
          ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_esr)) >> 26) =?
            1))
        then (
          (Some (st.[priv].[e_shadow_ctxts] :<
            (((st.(priv)).(e_shadow_ctxts)) #
              ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id))) ==
              ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).[e_dirty] :<
                (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_dirty)) |'
                  4294967296))))))
        else (
          if (
            ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_esr)) >> 26) =?
              18))
          then (
            when st_4 == ((prep_hvc_spec ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid)) ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)) st));
            (Some st_4))
          else (
            if (
              ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_esr)) >> 26) =?
                22))
            then (
              when st_4 == ((prep_hvc_spec ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid)) ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)) st));
              (Some st_4))
            else (
              if (
                ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_esr)) >> 26) =?
                  32))
              then (
                when st_4 == ((prep_abort_spec ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid)) ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)) st));
                (Some st_4))
              else (
                if (
                  ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_esr)) >> 26) =?
                    36))
                then (
                  when st_4 == ((prep_abort_spec ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid)) ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)) st));
                  (Some st_4))
                else None))))))
    else (Some st).

End VCPUOps_Spec.

#[global] Hint Unfold restore_shadow_kvm_regs_spec: spec.
#[global] Hint Unfold save_shadow_kvm_regs_spec: spec.
