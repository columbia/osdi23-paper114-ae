Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Layer.
Require Import S2PTAlloc.Layer.
Require Import S2PTAlloc.RefineRel.
Require Import S2PTAlloc.Spec.
Require Import S2PTAlloc.alloc_s2pt_pgd.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTAlloc_alloc_s2pt_pgd_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition alloc_s2pt_pgd_spec_mid (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    (anno (
      ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) + 4096) =
        ((8192 + ((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start))) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12))));
    (anno (
      ((((8192 + ((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start))) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) -
        (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632)) =
        ((- 61440) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12))));
    if (((- 61440) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12)) >? 0)
    then None
    else (
      (Some (
        ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) + (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) << 12))  ,
        (st.[shared].[e_s2pts] :<
          (((st.(shared)).(e_s2pts)) #
            v_vmid ==
            ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_pud_used_pages] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_used_pages)) + 1))))
      ))))).

  Hint Unfold alloc_s2pt_pgd_spec_mid: spec.

  Lemma f_alloc_s2pt_pgd_refine_mid:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: alloc_s2pt_pgd_spec_mid v_vmid hst = Some (res, hst')),
      exists lst', alloc_s2pt_pgd_spec_low v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_alloc_s2pt_pgd_refine_high:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: alloc_s2pt_pgd_spec v_vmid hst = Some (res, hst')),
      exists lst', alloc_s2pt_pgd_spec_mid v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_alloc_s2pt_pgd_refine:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: alloc_s2pt_pgd_spec v_vmid hst = Some (res, hst')),
      exists lst', alloc_s2pt_pgd_spec_low v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_alloc_s2pt_pgd_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_alloc_s2pt_pgd_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End S2PTAlloc_alloc_s2pt_pgd_RefProof.

