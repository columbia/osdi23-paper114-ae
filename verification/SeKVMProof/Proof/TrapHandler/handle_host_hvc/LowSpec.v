Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOps.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuOps.Spec.
Require Import VCPURun.Spec.
Require Import VMOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section TrapHandler_handle_host_hvc_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_host_hvc_spec_low (v_hr: Ptr) (st: RData) : (option RData) :=
    when v_call, st == ((get_host_reg_spec v_hr 0 st));
    let v_0 := (ptr_to_int v_hr) in
    when st == ((set_per_cpu_host_regs_spec v_0 st));
    when st == (
        if (v_call =? 28)
        then (
          when v_call76, st == ((get_host_reg_spec v_hr 1 st));
          let v_conv77 := v_call76 in
          when v_call78, st == ((get_host_reg_spec v_hr 2 st));
          when v_call79, st == ((get_host_reg_spec v_hr 3 st));
          when v_call80, st == ((get_host_reg_spec v_hr 4 st));
          when st == ((v_kvm_phys_addr_ioremap_spec v_conv77 v_call78 v_call79 v_call80 st));
          (Some st))
        else (
          when st == (
              if (v_call =? 6)
              then (
                when st == ((hvc_enable_s2_trans_spec st));
                (Some st))
              else (
                when st == (
                    if (v_call =? 8)
                    then (
                      when v_call2, st == ((get_host_reg_spec v_hr 1 st));
                      let v_conv := v_call2 in
                      when v_call3, st == ((get_host_reg_spec v_hr 2 st));
                      let v_conv4 := v_call3 in
                      when v_call5, st == ((__kvm_vcpu_run_nvhe_spec v_conv v_conv4 st));
                      let v_conv6 := v_call5 in
                      when st == ((set_host_regs_spec 0 v_conv6 st));
                      (Some st))
                    else (
                      when st == (
                          if (v_call =? 7)
                          then (
                            when v_call8, st == ((get_host_reg_spec v_hr 1 st));
                            let v_conv9 := v_call8 in
                            when v_call10, st == ((get_host_reg_spec v_hr 2 st));
                            let v_conv11 := v_call10 in
                            when st == ((__kvm_timer_set_cntvoff_spec v_conv9 v_conv11 st));
                            (Some st))
                          else (
                            when st == (
                                if (v_call =? 9)
                                then (
                                  when v_call13, st == ((get_host_reg_spec v_hr 1 st));
                                  let v_conv14 := v_call13 in
                                  when v_call15, st == ((get_host_reg_spec v_hr 3 st));
                                  when st == ((__clear_vm_stage2_range_spec v_conv14 v_call15 st));
                                  (Some st))
                                else (
                                  when st == (
                                      if (v_call =? 10)
                                      then (
                                        when v_call17, st == ((get_host_reg_spec v_hr 1 st));
                                        let v_conv18 := v_call17 in
                                        when v_call19, st == ((get_host_reg_spec v_hr 2 st));
                                        when v_call20, st == ((get_host_reg_spec v_hr 3 st));
                                        when v_call21, st == ((set_boot_info_spec v_conv18 v_call19 v_call20 st));
                                        let v_conv22 := v_call21 in
                                        when st == ((set_host_regs_spec 0 v_conv22 st));
                                        (Some st))
                                      else (
                                        when st == (
                                            if (v_call =? 11)
                                            then (
                                              when v_call24, st == ((get_host_reg_spec v_hr 1 st));
                                              let v_conv25 := v_call24 in
                                              when v_call26, st == ((get_host_reg_spec v_hr 2 st));
                                              when v_call27, st == ((get_host_reg_spec v_hr 3 st));
                                              let v_conv28 := v_call27 in
                                              when st == ((remap_vm_image_spec v_conv25 v_call26 v_conv28 st));
                                              (Some st))
                                            else (
                                              when st == (
                                                  if (v_call =? 12)
                                                  then (
                                                    when v_call30, st == ((get_host_reg_spec v_hr 1 st));
                                                    let v_conv31 := v_call30 in
                                                    when st == ((verify_and_load_images_spec v_conv31 st));
                                                    when st == ((set_host_regs_spec 0 1 st));
                                                    (Some st))
                                                  else (
                                                    when st == (
                                                        if (v_call =? 23)
                                                        then (
                                                          when v_call33, st == ((get_host_reg_spec v_hr 1 st));
                                                          let v_conv34 := v_call33 in
                                                          when v_call35, st == ((get_host_reg_spec v_hr 2 st));
                                                          let v_conv36 := v_call35 in
                                                          when st == ((__el2_free_smmu_pgd_spec v_conv34 v_conv36 st));
                                                          (Some st))
                                                        else (
                                                          when st == (
                                                              if (v_call =? 24)
                                                              then (
                                                                when v_call38, st == ((get_host_reg_spec v_hr 1 st));
                                                                let v_conv39 := v_call38 in
                                                                when v_call40, st == ((get_host_reg_spec v_hr 2 st));
                                                                let v_conv41 := v_call40 in
                                                                when v_call42, st == ((get_host_reg_spec v_hr 3 st));
                                                                let v_conv43 := v_call42 in
                                                                when st == ((__el2_alloc_smmu_pgd_spec v_conv39 v_conv41 v_conv43 st));
                                                                (Some st))
                                                              else (
                                                                when st == (
                                                                    if (v_call =? 25)
                                                                    then (
                                                                      when v_call45, st == ((get_host_reg_spec v_hr 1 st));
                                                                      when v_call46, st == ((get_host_reg_spec v_hr 2 st));
                                                                      when v_call47, st == ((get_host_reg_spec v_hr 3 st));
                                                                      when v_call48, st == ((get_host_reg_spec v_hr 4 st));
                                                                      let v_conv49 := v_call48 in
                                                                      when v_call50, st == ((get_host_reg_spec v_hr 5 st));
                                                                      let v_conv51 := v_call50 in
                                                                      when st == ((v_el2_arm_lpae_map_spec v_call45 v_call46 v_call47 v_conv49 v_conv51 st));
                                                                      (Some st))
                                                                    else (
                                                                      when st == (
                                                                          if (v_call =? 26)
                                                                          then (
                                                                            when v_call53, st == ((get_host_reg_spec v_hr 1 st));
                                                                            when v_call54, st == ((get_host_reg_spec v_hr 2 st));
                                                                            let v_conv55 := v_call54 in
                                                                            when v_call56, st == ((get_host_reg_spec v_hr 3 st));
                                                                            let v_conv57 := v_call56 in
                                                                            when v_call58, st == ((__el2_arm_lpae_iova_to_phys_spec v_call53 v_conv55 v_conv57 st));
                                                                            when st == ((set_host_regs_spec 0 v_call58 st));
                                                                            (Some st))
                                                                          else (
                                                                            when st == (
                                                                                if (v_call =? 27)
                                                                                then (
                                                                                  when v_call60, st == ((get_host_reg_spec v_hr 1 st));
                                                                                  when v_call61, st == ((get_host_reg_spec v_hr 2 st));
                                                                                  let v_conv62 := v_call61 in
                                                                                  when v_call63, st == ((get_host_reg_spec v_hr 3 st));
                                                                                  let v_conv64 := v_call63 in
                                                                                  when st == ((__el2_arm_lpae_clear_spec v_call60 v_conv62 v_conv64 st));
                                                                                  (Some st))
                                                                                else (
                                                                                  when st == (
                                                                                      if (v_call =? 13)
                                                                                      then (
                                                                                        when v_call66, st == ((register_kvm_spec st));
                                                                                        let v_conv67 := v_call66 in
                                                                                        when st == ((set_host_regs_spec 0 v_conv67 st));
                                                                                        (Some st))
                                                                                      else (
                                                                                        when st == (
                                                                                            if (v_call =? 14)
                                                                                            then (
                                                                                              when v_call69, st == ((get_host_reg_spec v_hr 1 st));
                                                                                              let v_conv70 := v_call69 in
                                                                                              when v_call71, st == ((get_host_reg_spec v_hr 2 st));
                                                                                              let v_conv72 := v_call71 in
                                                                                              when v_call73, st == ((register_vcpu_spec v_conv70 v_conv72 st));
                                                                                              when st == ((set_host_regs_spec 0 0 st));
                                                                                              (Some st))
                                                                                            else (Some st));
                                                                                        (Some st)));
                                                                                  (Some st)));
                                                                            (Some st)));
                                                                      (Some st)));
                                                                (Some st)));
                                                          (Some st)));
                                                    (Some st)));
                                              (Some st)));
                                        (Some st)));
                                  (Some st)));
                            (Some st)));
                      (Some st)));
                (Some st)));
          (Some st)));
    let __return__ := true in
    (Some st).

End TrapHandler_handle_host_hvc_LowSpec.

#[global] Hint Unfold handle_host_hvc_spec_low: spec.
