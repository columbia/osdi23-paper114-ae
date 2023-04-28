Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_pt_vttbr.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import InlineAsms.Spec.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_pt_vttbr_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_pt_vttbr_spec_mid (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    if (v_vmid <? 18)
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      (anno (((33731152 * 0) = 0));
      (anno (((0 + 0) = 0));
      (anno (((5 + 19) = 24));
      (anno ((((768 * v_vmid) + 0) = (768 * v_vmid)));
      (anno (((0 + (33686424 + (768 * v_vmid))) = (33686424 + (768 * v_vmid))));
      (anno ((((33686424 + (768 * v_vmid)) - 33686424) = (768 * v_vmid)));
      (anno ((((768 * v_vmid) / 768) = v_vmid));
      rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
      (anno ((((768 * v_vmid) + 0) = (768 * v_vmid)));
      (anno (((0 + (33686424 + (768 * v_vmid))) = (33686424 + (768 * v_vmid))));
      (anno ((((33686424 + (768 * v_vmid)) - 33686424) = (768 * v_vmid)));
      (anno ((((768 * v_vmid) / 768) = v_vmid));
      (Some (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)), st))))))))))))))
    else (Some (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ TTBR0_EL2), st)).

  Hint Unfold get_pt_vttbr_spec_mid: spec.

  Lemma f_get_pt_vttbr_refine_mid:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_pt_vttbr_spec_mid v_vmid hst = Some (res, hst')),
      exists lst', get_pt_vttbr_spec_low v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_pt_vttbr_refine_high:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_pt_vttbr_spec v_vmid hst = Some (res, hst')),
      exists lst', get_pt_vttbr_spec_mid v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_pt_vttbr_refine:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_pt_vttbr_spec v_vmid hst = Some (res, hst')),
      exists lst', get_pt_vttbr_spec_low v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_pt_vttbr_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_pt_vttbr_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_pt_vttbr_RefProof.

