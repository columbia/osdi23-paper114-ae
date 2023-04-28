Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemoryOps.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuOps.Spec.
Require Import TrapHandler.Layer.
Require Import TrapHandler.RefineRel.
Require Import TrapHandler.Spec.
Require Import TrapHandler.handle_host_hvc.LowSpec.
Require Import VCPURun.Layer.
Require Import VCPURun.Spec.
Require Import VMOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section TrapHandler_handle_host_hvc_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_host_hvc_spec_mid (v_hr: Ptr) (st: RData) : (option RData) :=
    rely (((v_hr.(pbase)) = "host_regs"));
    if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 28)
    then (
      when st_6 == (
          (v_kvm_phys_addr_ioremap_spec
            (((st.(priv)).(e_host_ctxt)) @ 1) 
            (((st.(priv)).(e_host_ctxt)) @ 2) 
            (((st.(priv)).(e_host_ctxt)) @ 3) 
            (((st.(priv)).(e_host_ctxt)) @ 4) 
            (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))));
      (Some st_6))
    else (
      if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 6)
      then (Some (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr)))))
      else (
        if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 8)
        then (
          when v_call5, st_4 == (
              (__kvm_vcpu_run_nvhe_spec
                (((st.(priv)).(e_host_ctxt)) @ 1) 
                (((st.(priv)).(e_host_ctxt)) @ 2) 
                (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))));
          (anno (((0 - 0) = 0));
          (Some (st_4.[priv].[e_host_ctxt] :< (((st_4.(priv)).(e_host_ctxt)) # 0 == v_call5)))))
        else (
          if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 7)
          then (Some (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr)))))
          else (
            if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 9)
            then (
              when st_4 == (
                  (__clear_vm_stage2_range_spec
                    (((st.(priv)).(e_host_ctxt)) @ 1) 
                    (((st.(priv)).(e_host_ctxt)) @ 3) 
                    (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))));
              (Some st_4))
            else (
              if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 10)
              then (
                when v_call21, st_5 == (
                    (set_boot_info_spec
                      (((st.(priv)).(e_host_ctxt)) @ 1) 
                      (((st.(priv)).(e_host_ctxt)) @ 2) 
                      (((st.(priv)).(e_host_ctxt)) @ 3) 
                      (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))));
                (anno (((0 - 0) = 0));
                (Some (st_5.[priv].[e_host_ctxt] :< (((st_5.(priv)).(e_host_ctxt)) # 0 == v_call21)))))
              else (
                if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 11)
                then (
                  when st_5 == (
                      (remap_vm_image_spec
                        (((st.(priv)).(e_host_ctxt)) @ 1) 
                        (((st.(priv)).(e_host_ctxt)) @ 2) 
                        (((st.(priv)).(e_host_ctxt)) @ 3) 
                        (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))));
                  (Some st_5))
                else (
                  if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 12)
                  then (
                    when st_3 == (
                        (verify_and_load_images_spec
                          (((st.(priv)).(e_host_ctxt)) @ 1) 
                          (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))));
                    (anno (((0 - 0) = 0));
                    (Some (st_3.[priv].[e_host_ctxt] :< (((st_3.(priv)).(e_host_ctxt)) # 0 == 1)))))
                  else (
                    if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 23)
                    then (
                      when st_4 == (
                          (__el2_free_smmu_pgd_spec
                            (((st.(priv)).(e_host_ctxt)) @ 1) 
                            (((st.(priv)).(e_host_ctxt)) @ 2) 
                            (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))));
                      (Some st_4))
                    else (
                      if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 24)
                      then (
                        when st_5 == (
                            (__el2_alloc_smmu_pgd_spec
                              (((st.(priv)).(e_host_ctxt)) @ 1) 
                              (((st.(priv)).(e_host_ctxt)) @ 2) 
                              (((st.(priv)).(e_host_ctxt)) @ 3) 
                              (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))));
                        (Some st_5))
                      else (
                        if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 25)
                        then (
                          when st_7 == (
                              (v_el2_arm_lpae_map_spec
                                (((st.(priv)).(e_host_ctxt)) @ 1) 
                                (((st.(priv)).(e_host_ctxt)) @ 2) 
                                (((st.(priv)).(e_host_ctxt)) @ 3) 
                                (((st.(priv)).(e_host_ctxt)) @ 4) 
                                (((st.(priv)).(e_host_ctxt)) @ 5) 
                                (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))));
                          (Some st_7))
                        else (
                          if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 26)
                          then (
                            when v_call58, st_5 == (
                                (__el2_arm_lpae_iova_to_phys_spec
                                  (((st.(priv)).(e_host_ctxt)) @ 1) 
                                  (((st.(priv)).(e_host_ctxt)) @ 2) 
                                  (((st.(priv)).(e_host_ctxt)) @ 3) 
                                  (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))));
                            (anno (((0 - 0) = 0));
                            (Some (st_5.[priv].[e_host_ctxt] :< (((st_5.(priv)).(e_host_ctxt)) # 0 == v_call58)))))
                          else (
                            if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 27)
                            then (
                              when st_5 == (
                                  (__el2_arm_lpae_clear_spec
                                    (((st.(priv)).(e_host_ctxt)) @ 1) 
                                    (((st.(priv)).(e_host_ctxt)) @ 2) 
                                    (((st.(priv)).(e_host_ctxt)) @ 3) 
                                    (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))));
                              (Some st_5))
                            else (
                              if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 13)
                              then (
                                when v_call66, st_2 == (
                                    (register_kvm_spec
                                      (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))));
                                (anno (((0 - 0) = 0));
                                (Some (st_2.[priv].[e_host_ctxt] :< (((st_2.(priv)).(e_host_ctxt)) # 0 == v_call66)))))
                              else (
                                if ((((st.(priv)).(e_host_ctxt)) @ 0) =? 14)
                                then (
                                  when v_call73, st_4 == (
                                      (register_vcpu_spec
                                        (((st.(priv)).(e_host_ctxt)) @ 1) 
                                        (((st.(priv)).(e_host_ctxt)) @ 2) 
                                        (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))));
                                  (anno (((0 - 0) = 0));
                                  (Some (st_4.[priv].[e_host_ctxt] :< (((st_4.(priv)).(e_host_ctxt)) # 0 == 0)))))
                                else (Some (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_hr))))))))))))))))))).

  Hint Unfold handle_host_hvc_spec_mid: spec.

  Lemma f_handle_host_hvc_refine_mid:
    forall v_hr lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_host_hvc_spec_mid v_hr hst = Some hst'),
      exists lst', handle_host_hvc_spec_low v_hr lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_host_hvc_refine_high:
    forall v_hr lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_host_hvc_spec v_hr hst = Some hst'),
      exists lst', handle_host_hvc_spec_mid v_hr lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_host_hvc_refine:
    forall v_hr lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_host_hvc_spec v_hr hst = Some hst'),
      exists lst', handle_host_hvc_spec_low v_hr lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_handle_host_hvc_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_handle_host_hvc_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End TrapHandler_handle_host_hvc_RefProof.

