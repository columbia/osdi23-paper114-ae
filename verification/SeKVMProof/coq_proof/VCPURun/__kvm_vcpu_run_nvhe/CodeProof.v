Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import CtxtSwitch.Spec.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import GuestExit.Layer.
Require Import GuestExit.Spec.
Require Import VCPUOps.Spec.
Require Import VCPURun.Spec.
Require Import VCPURun.__kvm_vcpu_run_nvhe.LowSpec.
Require Import VMOps.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPURun___kvm_vcpu_run_nvhe_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque __sysreg_save_state_nvhe_spec.
  Local Opaque hypsec_set_vcpu_active_spec.
  Local Opaque get_el2_data_start_spec.
  Local Opaque __timer_enable_traps_spec.
  Local Opaque set_vcpu_was_preempted_spec.
  Local Opaque get_core_context_spec.
  Local Opaque hypsec_set_vcpu_state_spec.
  Local Opaque hypsec_tlb_flush_local_vmid_spec.
  Local Opaque set_tpidr_el2_spec.
  Local Opaque __timer_disable_traps_spec.
  Local Opaque __sysreg_restore_state_nvhe_spec.
  Local Opaque __activate_vm_spec.
  Local Opaque hypsec_vcpu_id_to_shadow_ctxt_spec.
  Local Opaque __fpsimd_restore_state_spec.
  Local Opaque get_vcpu_host_cpu_context_spec.
  Local Opaque __sysreg32_save_state_spec.
  Local Opaque __guest_enter_spec.
  Local Opaque set_per_cpu_spec.
  Local Opaque restore_shadow_kvm_regs_spec.
  Local Opaque set_shadow_ctxt_spec.
  Local Opaque set_host_running_vcpu_spec.
  Local Opaque save_shadow_kvm_regs_spec.
  Local Opaque __activate_traps_spec.
  Local Opaque __vm_sysreg_save_state_nvhe_opt_spec.
  Local Opaque __vm_sysreg_restore_state_nvhe_opt_spec.
  Local Opaque fixup_guest_exit_spec.
  Local Opaque __deactivate_traps_spec.
  Local Opaque get_cpuid_spec.
  Local Opaque __sysreg32_restore_state_spec.
  Local Opaque get_vcpu_was_preempted_spec.
  Local Opaque hypsec_vcpu_id_to_vcpu_spec.
  Local Opaque __host_el2_restore_state_spec.
  Local Opaque __fpsimd_save_state_spec.

    Lemma f___kvm_vcpu_run_nvhe_correct:
      forall v_vmid v_vcpu_id st st' res
             (Hspec: __kvm_vcpu_run_nvhe_spec_low v_vmid v_vcpu_id st = Some (res, st')),
        exec_func GuestExit_layer code "__kvm_vcpu_run_nvhe"
                  [VInt v_vmid; VInt v_vcpu_id]
                  st st' (Some (VInt res)).
    Proof.
      intros; simpl_func Hspec; simpl in *; try solve[try_solve];
        try solve[ eapply exec_func_call; try reflexivity; vcgen].
      remember (fbody Code.f___kvm_vcpu_run_nvhe) as fcode eqn:Hc; simpl in Hc;
        match type of Hc with
        | context[ILoop ?body] => remember body as LoopBody eqn:Cloop; clear Hc
        end.
      match goal with
      | [H: __kvm_vcpu_run_nvhe_loop_low ?n ?_a0 ?_a1 ?_a2 ?_a3 ?_a4 ?_a5 ?_a6 ?_a7 ?_st =
          Some (?_a0', ?_a1', ?_a2', ?_a3', ?_a4', ?_a5', ?_a6', ?_a7', ?_st') |- _] =>
          rename H into Hfinal;
          assert(HLoop: forall te,
                  gets "v_0" te = Some (VInt _a0) ->
                  gets "v_call1" te = Some (VInt _a1) ->
                  gets "v_call4" te = Some (VInt _a2) ->
                  gets "v_fp_regs" te = Some (VInt _a3) ->
                  gets "v_fp_regs8" te = Some (VInt _a4) ->
                  gets "v_vcpu_id" te = Some (VInt _a6) ->
                  gets "v_vmid" te = Some (VInt _a7) ->
                  (forall s, inlist s ("v_vmid"::"v_vcpu_id"::""::"v_fp_regs8"::""::"v_fp_regs"::""::""::""::"v_call5"::""::"v_conv"::"v_and"::""::""::""::"v_1"::""::"v_0"::""::"v_call4"::"v_call3"::"v_call2"::"v_call1"::""::"v_tobool_not"::"v_call"::nil) = false -> gets s te = None) ->
                  exec GuestExit_layer code (ILoop LoopBody :: nil) te _st
                      (sets "v_0" (VInt _a0')
                      (sets "v_call1" (VInt _a1')
                      (sets "v_call4" (VInt _a2')
                      (sets "v_fp_regs" (VInt _a3')
                      (sets "v_fp_regs8" (VInt _a4')
                      (sets "v_retval_0" (VInt _a5')
                      (sets "v_vcpu_id" (VInt _a6')
                      (sets "v_vmid" (VInt _a7')
                          te)))))))) out_normal _st')
      end.
      {
        intros te ? ? ? ? ? ? ? te_all.
        unfold __kvm_vcpu_run_nvhe_loop_rank in *.
        match goal with
        | [H: __kvm_vcpu_run_nvhe_loop_low (z_to_nat ?n) ?_a0 ?_a1 ?_a2 ?_a3 ?_a4 ?_a5 ?_a6 ?_a7 ?_st =
                Some (?_a0', ?_a1', ?_a2', ?_a3', ?_a4', ?_a5', ?_a6', ?_a7', ?_st') |-
            exec _ _ (_ :: nil) ?te ?st ?te' ?out ?st'] =>
            remember n as W0 eqn:HW0;
            set(P := fun t s => t = te /\ s = st);
            set(Q := fun t s =>  (forall s' v, gets s' te' = Some v -> gets s' t = Some v) /\ s = st');
            set(R := fun (_: temp_env) (_: RData) (_: option value) => False);
            set(Inv := fun t s w => exists _a0'' _a1'' _a2'' _a3'' _a4'' _a5'' _a6'' _a7'' _st'',
                        __kvm_vcpu_run_nvhe_loop_low (z_to_nat (W0 - w)) _a0 _a1 _a2 _a3 _a4 _a5 _a6 _a7 _st = Some (_a0'', _a1'', _a2'', _a3'', _a4'', _a5'', _a6'', _a7'', _st'')
                        /\ (__kvm_vcpu_run_nvhe_loop_rank _a0'' _a1'' _a2'' _a3'' _a4'' _a6'' _a7'') = w
                        /\ 0 < w <= W0
                        /\ s = _st''
                        /\ (forall p v, gets p
                                        (sets "v_0" (VInt _a0'')
                                        (sets "v_call1" (VInt _a1'')
                                        (sets "v_call4" (VInt _a2'')
                                        (sets "v_fp_regs" (VInt _a3'')
                                        (sets "v_fp_regs8" (VInt _a4'')
                                        (sets "v_vcpu_id" (VInt _a6'')
                                        (sets "v_vmid" (VInt _a7'')
                                                    te))))))) = Some v -> gets p t = Some v));
            assert(loop_succ: forall W, Z.of_nat W <= W0 -> exists _a0'' _a1'' _a2'' _a3'' _a4'' _a5'' _a6'' _a7'' _st'',
                    __kvm_vcpu_run_nvhe_loop_low (z_to_nat (W0 - Z.of_nat W)) _a0 _a1 _a2 _a3 _a4 _a5 _a6 _a7 _st =
                    Some (_a0'', _a1'', _a2'', _a3'', _a4'', _a5'', _a6'', _a7'', _st''))
        end.
        { induction W. rewrite Z.sub_0_r. repeat frewrite. intros. repeat eexists; reflexivity.
        intros. erewrite loop_ind_sub1 in IHW; try lia.
        rewrite Nat2Z.inj_succ, succ_plus_1 in *.
        assert(Hcc: Z.of_nat W <= W0) by lia.
        exploit IHW. lia. unfold z_to_nat. intros (? & ? & ? & ? & ? & ? & ? & ? & ? & Hnext).
        simpl in Hnext. repeat simpl_hyp Hnext; repeat eexists. }

        assert(HLoop: Loop GuestExit_layer code LoopBody P Q R).
        {
          apply mkLoop with (W:=Z) (lt:=fun z1 z2 => (1 <= z2 /\ z1 < z2)) (I:=Inv).
          - apply Zwf_well_founded.
          - unfold P, Inv. intros ? ? (CC1 & CC2).
            exists W0. replace (W0 - W0) with 0 by lia. simpl.
            subst; repeat eexists; try solve[unfold __kvm_vcpu_run_nvhe_loop_rank in *; simpl; try_solve].
            intros ? ? Hte'; repeat simpl_hyp Hte'; inv Hte';
            try match goal with | [H: (?p =? ?t)%string = true |- _] => apply String.eqb_eq in H end;
            subst; try assumption; try reflexivity.
          - intros te0 st0 W I. unfold Inv in I.
            destruct I as (? & ? & ? & ? & ? & ? & ? & ? & ? & Hnow & Hid & ? & ? & Hte').
            unfold __kvm_vcpu_run_nvhe_loop_rank in *.
            assert(W1: W >= 1) by lia.
            assert(Hlx: Z.of_nat (Z.to_nat (W-1)) <= W0) by (rewrite Z2Nat.id; lia).
            apply loop_succ in Hlx. rewrite Z2Nat.id in Hlx; try lia.
            destruct Hlx as (? & ? & ? & ? & ? & ? & ? & ? & ? & Hnext). pose proof Hnext as D.
            rewrite loop_nat_sub1 in D; try lia. unfold z_to_nat in *.
            simpl in D; rewrite Hnow in D; autounfold with sem in D.
            destruct_spec D; try solve[lia]; solve_loop_body te te_all Hte' Hnext Hfinal Inv Q.
        }
        match goal with
        | [H: __kvm_vcpu_run_nvhe_loop_low ?n ?_a0 ?_a1 ?_a2 ?_a3 ?_a4 ?_a5 ?_a6 ?_a7 ?_st =
            Some (?_a0', ?_a1', ?_a2', ?_a3', ?_a4', ?_a5', ?_a6', ?_a7', ?_st') |- _] =>
          assert(Pre: P te _st) by (split; auto);
          pose proof (LoopTermination _ _ _ _ _ _ HLoop te _st Pre) as LoopProof
        end.
        destruct LoopProof as (out & te0 & st0 & Hexec & Hout).
        destruct Hout as [(? & ? & Hout)|(? & Hout)]; [inv Hout|unfold Q in Hout; destruct Hout as (Hte0 & Hst0)].
        subst. eapply exec_drop_tempvar. eapply Hte0. eassumption.
      }
      subst.
      eapply exec_func_call; try reflexivity; vcgen;
        try eapply HLoop; try reflexivity; simpl; intros;
        repeat match goal with
        | H: context[if (?s =? ?v)%string then _ else _] |- _ =>
            let Hs := fresh "Hs" in
            let Hss := fresh "Hss" in
            destruct (s =? v)%string eqn:Hs; simpl in *; try solve[inv H]
        end; contra; vcgen.
    Qed.

End VCPURun___kvm_vcpu_run_nvhe_CodeProof.

