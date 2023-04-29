Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Spec.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import SmmuOpsAux.Layer.
Require Import SmmuOpsAux.RefineRel.
Require Import SmmuOpsAux.Spec.
Require Import SmmuOpsAux.handle_host_mmio.LowSpec.
Require Import SmmuReadWrite.Layer.
Require Import SmmuReadWrite.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuOpsAux_handle_host_mmio_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_host_mmio_spec_mid (v_index: Z) (v_hsr: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_index) <= 0) /\ (v_index < 2)));
    if (_host_dabt_is_write v_hsr)
    then (
      when st_4 == (
          (handle_smmu_write_spec
            v_hsr 
            ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) |' ((((st.(priv)).(e_smmus)) @ v_index).(e_hyp_base))) 
            (_host_dabt_get_as v_hsr) 
            v_index 
            st));
      (Some (st_4.[priv].[e_cpu_regs].[e_sysregs_el2] :<
        ((((st_4.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # ELR_EL2 == (((((st_4.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ELR_EL2) + 4)))))
    else (
      rely ((((_host_dabt_get_as v_hsr) = 8) \/ ((_host_dabt_get_as v_hsr) = 4)));
      (Some ((st.[priv].[e_cpu_regs].[e_sysregs_el2] :<
        ((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) # ELR_EL2 == (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ ELR_EL2) + 4))).[priv].[e_host_ctxt] :<
        (((st.(priv)).(e_host_ctxt)) #
          (_host_dabt_get_rd v_hsr) ==
          (((st.(priv)).(e_umem)) @ ((((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ FAR_EL2) & 65535) |' ((((st.(priv)).(e_smmus)) @ v_index).(e_hyp_base)))))))).

  Hint Unfold handle_host_mmio_spec_mid: spec.

  Lemma f_handle_host_mmio_refine_mid:
    forall v_index v_hsr lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_host_mmio_spec_mid v_index v_hsr hst = Some hst'),
      exists lst', handle_host_mmio_spec_low v_index v_hsr lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_host_mmio_refine_high:
    forall v_index v_hsr lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_host_mmio_spec v_index v_hsr hst = Some hst'),
      exists lst', handle_host_mmio_spec_mid v_index v_hsr lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_handle_host_mmio_refine:
    forall v_index v_hsr lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: handle_host_mmio_spec v_index v_hsr hst = Some hst'),
      exists lst', handle_host_mmio_spec_low v_index v_hsr lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_handle_host_mmio_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_handle_host_mmio_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuOpsAux_handle_host_mmio_RefProof.

