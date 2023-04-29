Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.vmid_to_vm_info.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_vmid_to_vm_info_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition vmid_to_vm_info_spec_mid (v_vmid: Z) (st: RData) : (option (Ptr * RData)) :=
    if (v_vmid <? 18)
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      (anno (((33731152 * 0) = 0));
      (anno ((((768 * v_vmid) + 0) = (768 * v_vmid)));
      (anno (((0 + (33686424 + (768 * v_vmid))) = (33686424 + (768 * v_vmid))));
      (anno (((33686424 + (768 * v_vmid)) = (24 * (1403601 + (32 * v_vmid)))));
      (anno (((24 * (1403601 + (32 * v_vmid))) = (33686424 + (768 * v_vmid))));
      (Some ((mkPtr "el2_data" (33686424 + (768 * v_vmid))), st))))))))
    else None.

  Hint Unfold vmid_to_vm_info_spec_mid: spec.

  Lemma f_vmid_to_vm_info_refine_mid:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: vmid_to_vm_info_spec_mid v_vmid hst = Some (res, hst')),
      exists lst', vmid_to_vm_info_spec_low v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_vmid_to_vm_info_refine_high:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: vmid_to_vm_info_spec v_vmid hst = Some (res, hst')),
      exists lst', vmid_to_vm_info_spec_mid v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_vmid_to_vm_info_refine:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: vmid_to_vm_info_spec v_vmid hst = Some (res, hst')),
      exists lst', vmid_to_vm_info_spec_low v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_vmid_to_vm_info_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_vmid_to_vm_info_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_vmid_to_vm_info_RefProof.

