Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.hypsec_vcpu_id_to_shadow_ctxt.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_hypsec_vcpu_id_to_shadow_ctxt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition hypsec_vcpu_id_to_shadow_ctxt_spec_mid (v_vmid: Z) (v_vcpu_id: Z) (st: RData) : (option (Ptr * RData)) :=
    if (v_vcpu_id >? 3)
    then None
    else (
      (anno (((v_vmid << 2) = (4 * v_vmid)));
      rely ((((0 - ((4 * v_vmid) + v_vcpu_id)) <= 0) /\ (((4 * v_vmid) + v_vcpu_id) < 72)));
      (anno (((33731152 * 0) = 0));
      (anno (((v_vmid << 2) = (4 * v_vmid)));
      (anno ((((1808 * ((4 * v_vmid) + v_vcpu_id)) + 0) = (1808 * ((4 * v_vmid) + v_vcpu_id))));
      (anno (((0 + (33555568 + (1808 * ((4 * v_vmid) + v_vcpu_id)))) = (33555568 + (1808 * ((4 * v_vmid) + v_vcpu_id)))));
      (anno (((33555568 + (1808 * ((4 * v_vmid) + v_vcpu_id))) = (16 * (2097223 + (113 * ((4 * v_vmid) + v_vcpu_id))))));
      (anno (((16 * (2097223 + (113 * ((4 * v_vmid) + v_vcpu_id)))) = ((33555568 + (7232 * v_vmid)) + (1808 * v_vcpu_id))));
      (anno (((33555568 + (7232 * v_vmid)) = (16 * (2097223 + (452 * v_vmid)))));
      (anno ((((16 * (2097223 + (452 * v_vmid))) + (1808 * v_vcpu_id)) = (16 * ((1 * (2097223 + (452 * v_vmid))) + (113 * v_vcpu_id)))));
      (anno (((1 * (2097223 + (452 * v_vmid))) = (2097223 + (452 * v_vmid))));
      (anno (((16 * ((2097223 + (452 * v_vmid)) + (113 * v_vcpu_id))) = ((33555568 + (7232 * v_vmid)) + (1808 * v_vcpu_id))));
      (Some ((mkPtr "el2_data" ((33555568 + (7232 * v_vmid)) + (1808 * v_vcpu_id))), st)))))))))))))).

  Hint Unfold hypsec_vcpu_id_to_shadow_ctxt_spec_mid: spec.

  Lemma f_hypsec_vcpu_id_to_shadow_ctxt_refine_mid:
    forall v_vmid v_vcpu_id lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: hypsec_vcpu_id_to_shadow_ctxt_spec_mid v_vmid v_vcpu_id hst = Some (res, hst')),
      exists lst', hypsec_vcpu_id_to_shadow_ctxt_spec_low v_vmid v_vcpu_id lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_hypsec_vcpu_id_to_shadow_ctxt_refine_high:
    forall v_vmid v_vcpu_id lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: hypsec_vcpu_id_to_shadow_ctxt_spec v_vmid v_vcpu_id hst = Some (res, hst')),
      exists lst', hypsec_vcpu_id_to_shadow_ctxt_spec_mid v_vmid v_vcpu_id lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_hypsec_vcpu_id_to_shadow_ctxt_refine:
    forall v_vmid v_vcpu_id lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: hypsec_vcpu_id_to_shadow_ctxt_spec v_vmid v_vcpu_id hst = Some (res, hst')),
      exists lst', hypsec_vcpu_id_to_shadow_ctxt_spec_low v_vmid v_vcpu_id lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_hypsec_vcpu_id_to_shadow_ctxt_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_hypsec_vcpu_id_to_shadow_ctxt_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_hypsec_vcpu_id_to_shadow_ctxt_RefProof.

