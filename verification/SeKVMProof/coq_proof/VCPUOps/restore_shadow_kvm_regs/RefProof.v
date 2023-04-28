Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemoryOps.Spec.
Require Import VCPUOps.Layer.
Require Import VCPUOps.RefineRel.
Require Import VCPUOps.Spec.
Require Import VCPUOps.restore_shadow_kvm_regs.LowSpec.
Require Import VCPUOpsAux.Spec.
Require Import VCPUPrep.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUOps_restore_shadow_kvm_regs_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition restore_shadow_kvm_regs_spec_mid (st: RData) : (option RData) :=
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

  Hint Unfold restore_shadow_kvm_regs_spec_mid: spec.

  Lemma f_restore_shadow_kvm_regs_refine_mid:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: restore_shadow_kvm_regs_spec_mid hst = Some hst'),
      exists lst', restore_shadow_kvm_regs_spec_low lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_restore_shadow_kvm_regs_refine_high:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: restore_shadow_kvm_regs_spec hst = Some hst'),
      exists lst', restore_shadow_kvm_regs_spec_mid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_restore_shadow_kvm_regs_refine:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: restore_shadow_kvm_regs_spec hst = Some hst'),
      exists lst', restore_shadow_kvm_regs_spec_low lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_restore_shadow_kvm_regs_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_restore_shadow_kvm_regs_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VCPUOps_restore_shadow_kvm_regs_RefProof.

