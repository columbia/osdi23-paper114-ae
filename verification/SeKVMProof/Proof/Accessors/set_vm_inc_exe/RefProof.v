Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.set_vm_inc_exe.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_vm_inc_exe_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vm_inc_exe_spec_mid (v_vmid: Z) (v_inc_exe: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    (anno (((33731152 * 0) = 0));
    (anno (((20 + 0) = 20));
    (anno ((((768 * v_vmid) + 20) = (4 * ((192 * v_vmid) + 5))));
    (anno (((33686424 + (4 * ((192 * v_vmid) + 5))) = (4 * (8421606 + (1 * ((192 * v_vmid) + 5))))));
    (anno (((1 * ((192 * v_vmid) + 5)) = ((192 * v_vmid) + 5)));
    (anno (((8421606 + ((192 * v_vmid) + 5)) = (8421611 + (192 * v_vmid))));
    (anno (((4 * (8421611 + (192 * v_vmid))) = (33686444 + (768 * v_vmid))));
    (anno (((0 + (33686444 + (768 * v_vmid))) = (33686444 + (768 * v_vmid))));
    (anno ((((33686444 + (768 * v_vmid)) - 33686424) = (20 + (768 * v_vmid))));
    (anno ((((20 + (768 * v_vmid)) / 768) = v_vmid));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    if (v_inc_exe <>? 0)
    then (
      (anno (((1 * ((192 * v_vmid) + 5)) = ((192 * v_vmid) + 5)));
      (anno (((8421606 + ((192 * v_vmid) + 5)) = (8421611 + (192 * v_vmid))));
      (anno (((4 * (8421611 + (192 * v_vmid))) = (33686444 + (768 * v_vmid))));
      (anno (((0 + (33686444 + (768 * v_vmid))) = (33686444 + (768 * v_vmid))));
      (anno ((((33686444 + (768 * v_vmid)) - 33686424) = (20 + (768 * v_vmid))));
      (anno ((((20 + (768 * v_vmid)) / 768) = v_vmid));
      (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # v_vmid == ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_inc_exe] :< 1)))))))))))
    else (
      (anno (((1 * ((192 * v_vmid) + 5)) = ((192 * v_vmid) + 5)));
      (anno (((8421606 + ((192 * v_vmid) + 5)) = (8421611 + (192 * v_vmid))));
      (anno (((4 * (8421611 + (192 * v_vmid))) = (33686444 + (768 * v_vmid))));
      (anno (((0 + (33686444 + (768 * v_vmid))) = (33686444 + (768 * v_vmid))));
      (anno ((((33686444 + (768 * v_vmid)) - 33686424) = (20 + (768 * v_vmid))));
      (anno ((((20 + (768 * v_vmid)) / 768) = v_vmid));
      (Some (st.[shared].[e_vminfos] :< (((st.(shared)).(e_vminfos)) # v_vmid == ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_inc_exe] :< 0))))))))))))))))))))).

  Hint Unfold set_vm_inc_exe_spec_mid: spec.

  Lemma f_set_vm_inc_exe_refine_mid:
    forall v_vmid v_inc_exe lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_inc_exe_spec_mid v_vmid v_inc_exe hst = Some hst'),
      exists lst', set_vm_inc_exe_spec_low v_vmid v_inc_exe lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_vm_inc_exe_refine_high:
    forall v_vmid v_inc_exe lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_inc_exe_spec v_vmid v_inc_exe hst = Some hst'),
      exists lst', set_vm_inc_exe_spec_mid v_vmid v_inc_exe lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_vm_inc_exe_refine:
    forall v_vmid v_inc_exe lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_inc_exe_spec v_vmid v_inc_exe hst = Some hst'),
      exists lst', set_vm_inc_exe_spec_low v_vmid v_inc_exe lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_vm_inc_exe_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_vm_inc_exe_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_set_vm_inc_exe_RefProof.

