Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.pmd_pool_end.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_pmd_pool_end_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition pmd_pool_end_spec_mid (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    (anno (((33731152 * 0) = 0));
    (anno (((728 + 0) = 728));
    (anno ((((768 * v_vmid) + 728) = (8 * ((96 * v_vmid) + 91))));
    (anno (((33686424 + (8 * ((96 * v_vmid) + 91))) = (8 * (4210803 + (1 * ((96 * v_vmid) + 91))))));
    (anno (((5 + 19) = 24));
    (anno (((1 * ((96 * v_vmid) + 91)) = ((96 * v_vmid) + 91)));
    (anno (((4210803 + ((96 * v_vmid) + 91)) = (4210894 + (96 * v_vmid))));
    (anno (((8 * (4210894 + (96 * v_vmid))) = (33687152 + (768 * v_vmid))));
    (anno (((0 + (33687152 + (768 * v_vmid))) = (33687152 + (768 * v_vmid))));
    (anno ((((33687152 + (768 * v_vmid)) - 33686424) = (728 + (768 * v_vmid))));
    (anno ((((728 + (768 * v_vmid)) / 768) = v_vmid));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    if ((v_vmid =? 18) || (v_vmid =? 0))
    then (
      (anno (((1 * ((96 * v_vmid) + 91)) = ((96 * v_vmid) + 91)));
      (anno (((4210803 + ((96 * v_vmid) + 91)) = (4210894 + (96 * v_vmid))));
      (anno (((8 * (4210894 + (96 * v_vmid))) = (33687152 + (768 * v_vmid))));
      (anno (((0 + (33687152 + (768 * v_vmid))) = (33687152 + (768 * v_vmid))));
      (anno ((((33687152 + (768 * v_vmid)) - 33686424) = (728 + (768 * v_vmid))));
      (anno ((((728 + (768 * v_vmid)) / 768) = v_vmid));
      (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 33554432), st)))))))))
    else (
      (anno (((1 * ((96 * v_vmid) + 91)) = ((96 * v_vmid) + 91)));
      (anno (((4210803 + ((96 * v_vmid) + 91)) = (4210894 + (96 * v_vmid))));
      (anno (((8 * (4210894 + (96 * v_vmid))) = (33687152 + (768 * v_vmid))));
      (anno (((0 + (33687152 + (768 * v_vmid))) = (33687152 + (768 * v_vmid))));
      (anno ((((33687152 + (768 * v_vmid)) - 33686424) = (728 + (768 * v_vmid))));
      (anno ((((728 + (768 * v_vmid)) / 768) = v_vmid));
      (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 8388608), st)))))))))))))))))))).

  Hint Unfold pmd_pool_end_spec_mid: spec.

  Lemma f_pmd_pool_end_refine_mid:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: pmd_pool_end_spec_mid v_vmid hst = Some (res, hst')),
      exists lst', pmd_pool_end_spec_low v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_pmd_pool_end_refine_high:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: pmd_pool_end_spec v_vmid hst = Some (res, hst')),
      exists lst', pmd_pool_end_spec_mid v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_pmd_pool_end_refine:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: pmd_pool_end_spec v_vmid hst = Some (res, hst')),
      exists lst', pmd_pool_end_spec_low v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_pmd_pool_end_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_pmd_pool_end_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_pmd_pool_end_RefProof.

