Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import CtxtSwitch.Spec.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import GuestExit.Layer.
Require Import GuestExit.Spec.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import VCPUOps.Spec.
Require Import VCPURun.Layer.
Require Import VCPURun.RefineRel.
Require Import VCPURun.Spec.
Require Import VCPURun.__kvm_vcpu_run_nvhe.LowSpec.
Require Import VMOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPURun___kvm_vcpu_run_nvhe_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint __kvm_vcpu_run_nvhe_loop_mid (_N_: nat) (v_0: Ptr) (v_call1: Ptr) (v_call4: Ptr) (v_fp_regs: Ptr) (v_fp_regs8: Ptr) (v_retval_0: Z) (v_vcpu_id: Z) (v_vmid: Z) (st: RData) : (option (Ptr * Ptr * Ptr * Ptr * Ptr * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_0, v_call1, v_call4, v_fp_regs, v_fp_regs8, v_retval_0, v_vcpu_id, v_vmid, st))
    | (S _N_) =>
      match ((__kvm_vcpu_run_nvhe_loop_mid _N_ v_0 v_call1 v_call4 v_fp_regs v_fp_regs8 v_retval_0 v_vcpu_id v_vmid st)) with
      | (Some (v_0, v_call1, v_call4, v_fp_regs, v_fp_regs8, v_retval_0, v_vcpu_id, v_vmid, st)) =>
        when v_call9, st == ((get_core_context_spec st));
        when v_call10, st == ((__guest_enter_spec v_0 v_call9 st));
        when v_call11, st == ((fixup_guest_exit_spec v_vmid v_vcpu_id v_call10 st));
        match (
          let __continue__ := false in
          let __break__ := false in
          if v_call11
          then (
            let __continue__ := true in
            (Some (__break__, __continue__, v_retval_0, st)))
          else (
            when st == ((__vm_sysreg_save_state_nvhe_opt_spec v_vmid v_vcpu_id st));
            when st == ((__sysreg32_save_state_spec v_call1 st));
            when st == ((__timer_disable_traps_spec v_call1 st));
            when st == ((__deactivate_traps_spec st));
            when st == ((__host_el2_restore_state_spec st));
            when st == ((__sysreg_restore_state_nvhe_spec v_call4 st));
            when st == ((__fpsimd_save_state_spec v_fp_regs8 st));
            when st == ((__fpsimd_restore_state_spec v_fp_regs st));
            when st == ((set_shadow_ctxt_spec v_vmid v_vcpu_id 44 v_call10 st));
            when st == ((save_shadow_kvm_regs_spec st));
            when v_call15, st == ((get_cpuid_spec st));
            when st == ((set_per_cpu_spec 0 v_call15 st));
            when st == ((hypsec_set_vcpu_state_spec v_vmid v_vcpu_id 2 st));
            let v_conv16 := v_call10 in
            let v_retval_0 := v_conv16 in
            let __break__ := true in
            (Some (__break__, __continue__, v_retval_0, st)))
        ) with
        | (Some (__break__, __continue__, v_retval_0, st)) =>
          if __break__
          then (Some (v_0, v_call1, v_call4, v_fp_regs, v_fp_regs8, v_retval_0, v_vcpu_id, v_vmid, st))
          else (
            if __continue__
            then (Some (v_0, v_call1, v_call4, v_fp_regs, v_fp_regs8, v_retval_0, v_vcpu_id, v_vmid, st))
            else (Some (v_0, v_call1, v_call4, v_fp_regs, v_fp_regs8, v_retval_0, v_vcpu_id, v_vmid, st)))
        | None => None
        end
      | None => None
      end
    end.

  Hint Unfold __kvm_vcpu_run_nvhe_loop_mid: spec.

  Definition __kvm_vcpu_run_nvhe_spec_mid (v_vmid: Z) (v_vcpu_id: Z) (st: RData) : (option (Z * RData)) :=
    when v_call, st == ((hypsec_set_vcpu_active_spec v_vmid v_vcpu_id st));
    let v_tobool_not := (v_call =? 0) in
    when v_retval_0, st == (
        let v_retval_0 := 0 in
        if v_tobool_not
        then (
          let v_retval_0 := 0 in
          (Some (v_retval_0, st)))
        else (
          when st == ((set_per_cpu_spec v_vmid v_vcpu_id st));
          when v_call1, st == ((hypsec_vcpu_id_to_vcpu_spec v_vmid v_vcpu_id st));
          when v_call2, st == ((hypsec_vcpu_id_to_shadow_ctxt_spec v_vmid v_vcpu_id st));
          when v_call3, st == ((get_el2_data_start_spec st));
          when v_call4, st == ((get_vcpu_host_cpu_context_spec v_vmid v_vcpu_id st));
          when st == ((set_host_running_vcpu_spec v_vmid v_vcpu_id st));
          let v_0 := v_call2 in
          when st == ((__sysreg_save_state_nvhe_spec v_call4 st));
          let v_1 := (ptr_to_int v_call2) in
          when st == ((set_tpidr_el2_spec v_1 st));
          when st == ((restore_shadow_kvm_regs_spec st));
          when st == ((__activate_traps_spec v_call1 st));
          let v_and := (v_vmid & 255) in
          let v_conv := v_and in
          when st == ((__activate_vm_spec v_conv st));
          when v_call5, st == ((get_vcpu_was_preempted_spec v_vmid v_vcpu_id st));
          when st == (
              if v_call5
              then (
                when st == ((hypsec_tlb_flush_local_vmid_spec st));
                when st == ((set_vcpu_was_preempted_spec v_vmid v_vcpu_id st));
                (Some st))
              else (Some st));
          when st == ((__timer_enable_traps_spec v_call1 st));
          when st == ((__sysreg32_restore_state_spec v_call1 st));
          when st == ((__vm_sysreg_restore_state_nvhe_opt_spec v_vmid v_vcpu_id st));
          let v_fp_regs := (ptr_offset v_call4 ((1760 * 0) + (0 + (336 + 0)))) in
          when st == ((__fpsimd_save_state_spec v_fp_regs st));
          let v_fp_regs8 := (ptr_offset v_call2 ((1808 * 0) + (1264 + 0))) in
          when st == ((__fpsimd_restore_state_spec v_fp_regs8 st));
          rely (((__kvm_vcpu_run_nvhe_loop_rank v_0 v_call1 v_call4 v_fp_regs v_fp_regs8 v_vcpu_id v_vmid) >= 0));
          match (
            (__kvm_vcpu_run_nvhe_loop_mid
              (z_to_nat (__kvm_vcpu_run_nvhe_loop_rank v_0 v_call1 v_call4 v_fp_regs v_fp_regs8 v_vcpu_id v_vmid)) 
              v_0 
              v_call1 
              v_call4 
              v_fp_regs 
              v_fp_regs8 
              0 
              v_vcpu_id 
              v_vmid 
              st)
          ) with
          | (Some (v_0, v_call1, v_call4, v_fp_regs, v_fp_regs8, v_retval_0, v_vcpu_id, v_vmid, st)) => (Some (v_retval_0, st))
          | None => None
          end));
    let __return__ := true in
    let __retval__ := v_retval_0 in
    (Some (__retval__, st)).

  Hint Unfold __kvm_vcpu_run_nvhe_spec_mid: spec.

  Lemma f___kvm_vcpu_run_nvhe_loop_refine_mid:
    forall _N_ v_0 v_0' v_call1 v_call1' v_call4 v_call4' v_fp_regs v_fp_regs' v_fp_regs8 v_fp_regs8' v_retval_0 v_retval_0' v_vcpu_id v_vcpu_id' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __kvm_vcpu_run_nvhe_loop_mid _N_ v_0 v_call1 v_call4 v_fp_regs v_fp_regs8 v_retval_0 v_vcpu_id v_vmid hst = Some (v_0', v_call1', v_call4', v_fp_regs', v_fp_regs8', v_retval_0', v_vcpu_id', v_vmid', hst')),
      exists lst', __kvm_vcpu_run_nvhe_loop_low _N_ v_0 v_call1 v_call4 v_fp_regs v_fp_regs8 v_retval_0 v_vcpu_id v_vmid lst = Some (v_0', v_call1', v_call4', v_fp_regs', v_fp_regs8', v_retval_0', v_vcpu_id', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___kvm_vcpu_run_nvhe_refine_mid:
    forall v_vmid v_vcpu_id lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: __kvm_vcpu_run_nvhe_spec_mid v_vmid v_vcpu_id hst = Some (res, hst')),
      exists lst', __kvm_vcpu_run_nvhe_spec_low v_vmid v_vcpu_id lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___kvm_vcpu_run_nvhe_loop_refine_high:
    forall _N_ v_0 v_0' v_call1 v_call1' v_call4 v_call4' v_fp_regs v_fp_regs' v_fp_regs8 v_fp_regs8' v_retval_0 v_retval_0' v_vcpu_id v_vcpu_id' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __kvm_vcpu_run_nvhe_loop _N_ v_0 v_call1 v_call4 v_fp_regs v_fp_regs8 v_retval_0 v_vcpu_id v_vmid hst = Some (v_0', v_call1', v_call4', v_fp_regs', v_fp_regs8', v_retval_0', v_vcpu_id', v_vmid', hst')),
      exists lst', __kvm_vcpu_run_nvhe_loop_mid _N_ v_0 v_call1 v_call4 v_fp_regs v_fp_regs8 v_retval_0 v_vcpu_id v_vmid lst = Some (v_0', v_call1', v_call4', v_fp_regs', v_fp_regs8', v_retval_0', v_vcpu_id', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___kvm_vcpu_run_nvhe_refine_high:
    forall v_vmid v_vcpu_id lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: __kvm_vcpu_run_nvhe_spec v_vmid v_vcpu_id hst = Some (res, hst')),
      exists lst', __kvm_vcpu_run_nvhe_spec_mid v_vmid v_vcpu_id lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      Local Transparent __kvm_vcpu_run_nvhe_spec.
      unfold __kvm_vcpu_run_nvhe_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___kvm_vcpu_run_nvhe_refine:
    forall v_vmid v_vcpu_id lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: __kvm_vcpu_run_nvhe_spec v_vmid v_vcpu_id hst = Some (res, hst')),
      exists lst', __kvm_vcpu_run_nvhe_spec_low v_vmid v_vcpu_id lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      Local Transparent __kvm_vcpu_run_nvhe_spec.
      unfold __kvm_vcpu_run_nvhe_spec.
      intros; inv Hrel.
      eapply f___kvm_vcpu_run_nvhe_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f___kvm_vcpu_run_nvhe_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VCPURun___kvm_vcpu_run_nvhe_RefProof.

