Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import VCPUPrep.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section VCPUOps_save_shadow_kvm_regs_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition save_shadow_kvm_regs_spec_low (st: RData) : (option RData) :=
    when v_call, st == ((get_cur_vmid_spec st));
    when v_call1, st == ((get_cur_vcpu_id_spec st));
    when v_call2, st == ((get_shadow_ctxt_spec v_call v_call1 44 st));
    let v_cmp := (v_call2 =? 2) in
    when st == (
        if v_cmp
        then (
          when v_call3, st == ((get_shadow_esr_spec v_call v_call1 st));
          let v_0 := (v_call3 >> 26) in
          when st == (
              if (v_0 =? 60)
              then (
                when st == ((prep_wfx_spec v_call v_call1 st));
                (Some st))
              else (
                when st == (
                    if (v_0 =? 1)
                    then (
                      when st == ((prep_wfx_spec v_call v_call1 st));
                      (Some st))
                    else (
                      when st == (
                          if (v_0 =? 18)
                          then (
                            when st == ((prep_hvc_spec v_call v_call1 st));
                            (Some st))
                          else (
                            when st == (
                                if (v_0 =? 22)
                                then (
                                  when st == ((prep_hvc_spec v_call v_call1 st));
                                  (Some st))
                                else (
                                  when st == (
                                      if (v_0 =? 32)
                                      then (
                                        when st == ((prep_abort_spec v_call v_call1 st));
                                        (Some st))
                                      else (
                                        when st == (
                                            if (v_0 =? 36)
                                            then (
                                              when st == ((prep_abort_spec v_call v_call1 st));
                                              (Some st))
                                            else (
                                              when st == ((v_panic_spec st));
                                              (Some st)));
                                        (Some st)));
                                  (Some st)));
                            (Some st)));
                      (Some st)));
                (Some st)));
          (Some st))
        else (Some st));
    let __return__ := true in
    (Some st).

End VCPUOps_save_shadow_kvm_regs_LowSpec.

#[global] Hint Unfold save_shadow_kvm_regs_spec_low: spec.
