Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import CtxtSwitch.Layer.
Require Import CtxtSwitch.RefineRel.
Require Import CtxtSwitch.Spec.
Require Import CtxtSwitch.__activate_vm.LowSpec.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import VCPUOps.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section CtxtSwitch___activate_vm_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition __activate_vm_spec_mid (v_vmid: Z) (st: RData) : (option RData) :=
    if (v_vmid <? 18)
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
      (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :< ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # VTTBR_EL2 == ((((st.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr))))))
    else (
      (Some (st.[priv].[e_cpu_regs].[e_sysregs_el2] :<
        ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # VTTBR_EL2 == ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ TTBR0_EL2))))).

  Hint Unfold __activate_vm_spec_mid: spec.

  Lemma f___activate_vm_refine_mid:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __activate_vm_spec_mid v_vmid hst = Some hst'),
      exists lst', __activate_vm_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___activate_vm_refine_high:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __activate_vm_spec v_vmid hst = Some hst'),
      exists lst', __activate_vm_spec_mid v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___activate_vm_refine:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __activate_vm_spec v_vmid hst = Some hst'),
      exists lst', __activate_vm_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f___activate_vm_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f___activate_vm_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End CtxtSwitch___activate_vm_RefProof.

