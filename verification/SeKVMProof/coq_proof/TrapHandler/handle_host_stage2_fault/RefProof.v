Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Spec.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemoryOps.Spec.
Require Import SmmuOps.Spec.
Require Import TrapHandler.Layer.
Require Import TrapHandler.RefineRel.
Require Import TrapHandler.Spec.
Require Import TrapHandler.handle_host_stage2_fault.LowSpec.
Require Import VCPURun.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section TrapHandler_handle_host_stage2_fault_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_host_stage2_fault_spec_mid (v_host_lr: Z) (v_host_regs: Ptr) (st: RData) : (option RData) :=
    when v_call, st_3 == (
        (emulate_mmio_spec
          ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ HPFAR_EL2) << 8) & 18446744073709547520) 
          ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ESR_EL2) 
          (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == ((((st.(priv)).(e_per_cpu_data)) @ 0).[e_host_regs] :< (ptr_to_int v_host_regs))))));
    if (v_call =? (- 1))
    then (
      when st_4 == ((map_page_host_spec ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ HPFAR_EL2) << 8) & 18446744073709547520) st_3));
      (Some st_4))
    else (Some st_3).

  Hint Unfold handle_host_stage2_fault_spec_mid: spec.

  Lemma f_handle_host_stage2_fault_refine_mid:
    forall v_host_lr v_host_regs lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_host_stage2_fault_spec_mid v_host_lr v_host_regs hst = Some hst'),
      exists lst', handle_host_stage2_fault_spec_low v_host_lr v_host_regs lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_host_stage2_fault_refine_high:
    forall v_host_lr v_host_regs lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_host_stage2_fault_spec v_host_lr v_host_regs hst = Some hst'),
      exists lst', handle_host_stage2_fault_spec_mid v_host_lr v_host_regs lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_host_stage2_fault_refine:
    forall v_host_lr v_host_regs lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_host_stage2_fault_spec v_host_lr v_host_regs hst = Some hst'),
      exists lst', handle_host_stage2_fault_spec_low v_host_lr v_host_regs lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_handle_host_stage2_fault_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_handle_host_stage2_fault_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End TrapHandler_handle_host_stage2_fault_RefProof.

