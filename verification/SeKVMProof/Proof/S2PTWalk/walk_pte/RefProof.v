Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import S2PTAlloc.Layer.
Require Import S2PTWalk.Layer.
Require Import S2PTWalk.RefineRel.
Require Import S2PTWalk.Spec.
Require Import S2PTWalk.walk_pte.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTWalk_walk_pte_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition walk_pte_spec_mid (v_vmid: Z) (v_pmd: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    if ((v_pmd & 281474976706560) =? 0)
    then (Some (0, st))
    else (
      (anno (((HOSTVISOR - v_vmid) = ((- 1) * v_vmid)));
      (anno (((v_vmid - COREVISOR) = ((- 18) + v_vmid)));
      rely (((((- 1) * v_vmid) <= 0) /\ (((- 18) + v_vmid) <= 0)));
      (anno (((5 + 19) = 24));
      rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
      if (
        (((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
          (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096)) <? 0)))
      then (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pgd_pool)) @ (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))), st))
      else (
        (anno (((17 * 4096) = 69632));
        if (
          ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 4096) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
            (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632)) <? 0)))
        then (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pud_pool)) @ (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))), st))
        else (
          (anno (((17 * 4096) = 69632));
          (anno (((512 * 4096) = 2097152));
          if (
            ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 69632) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
              (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152)) <? 0)))
          then (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pmd_pool)) @ (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))), st))
          else (
            (anno (((512 * 4096) = 2097152));
            (anno (((2048 * 4096) = 8388608));
            if (
              ((((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 2097152) - (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))) <=? 0) &&
                (((((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560)) - (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) + 8388608)) <? 0)))
            then (Some ((((((st.(shared)).(e_s2pts)) @ v_vmid).(e_pte_pool)) @ (((v_addr >> 9) & 4088) |' (v_pmd & 281474976706560))), st))
            else None)))))))))))).

  Hint Unfold walk_pte_spec_mid: spec.

  Lemma f_walk_pte_refine_mid:
    forall v_vmid v_pmd v_addr lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: walk_pte_spec_mid v_vmid v_pmd v_addr hst = Some (res, hst')),
      exists lst', walk_pte_spec_low v_vmid v_pmd v_addr lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_walk_pte_refine_high:
    forall v_vmid v_pmd v_addr lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: walk_pte_spec v_vmid v_pmd v_addr hst = Some (res, hst')),
      exists lst', walk_pte_spec_mid v_vmid v_pmd v_addr lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_walk_pte_refine:
    forall v_vmid v_pmd v_addr lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: walk_pte_spec v_vmid v_pmd v_addr hst = Some (res, hst')),
      exists lst', walk_pte_spec_low v_vmid v_pmd v_addr lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_walk_pte_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_walk_pte_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End S2PTWalk_walk_pte_RefProof.
