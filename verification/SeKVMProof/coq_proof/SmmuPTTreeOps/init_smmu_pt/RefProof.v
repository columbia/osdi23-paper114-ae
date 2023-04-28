Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuPTTreeOps.Layer.
Require Import SmmuPTTreeOps.RefineRel.
Require Import SmmuPTTreeOps.Spec.
Require Import SmmuPTTreeOps.init_smmu_pt.LowSpec.
Require Import SmmuPTWalk.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTTreeOps_init_smmu_pt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Lemma of_nat_S_n:
    forall n, Z.of_nat (S n) = Z.of_nat n + 1.
  Admitted.

  Lemma f_init_smmu_pt_refine:
    forall _cbndx _num lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: init_smmu_pt_spec _cbndx _num hst = Some hst'),
    exists lst', init_smmu_pt_spec_low _cbndx _num lst = Some lst' /\ refrel hst' lst'.
  Proof.
    intros. simpl_func Hspec; repeat extract_prop.
    autounfold with proof in *.
    unfold init_smmu_pt_spec_low, smmu_pt_clear_spec.
    autounfold with sem. autounfold with proof.
    inv Hrel.
    pose proof pt_rel as D. inv D. autounfold with proof in *.
    destruct pool_start_value as (START & START_mod & START_range & pool_val & ttbr_val).
    rewrite pool_val in *.
    destruct pgd_pool_used as (pgd_mapp & pgd_pool_used).
    destruct pmd_pool_used as (pmd_mapp & pmd_pool_used).
    assert(Hlock: (e_locks (shared lst)) @ 4 = Some CPU_ID).
    { inv same_rel. frewrite. reflexivity. }
    assert(start_4096: START mod 4096 = 0).
    { apply mod_8192_4096. assumption. }
    assert(pool_start_4096: e_smmu_page_pool_start (e_smmupts (shared lst)) mod 4096 = 0).
    { rewrite pool_val; autounfold with proof in *. solve_phys_page_mod. }
    remember (8 * _num + _cbndx) as smmuid. symmetry in Heqsmmuid.
    assert(Hsmmuid2: _num * 8 + _cbndx = smmuid) by lia.
    rewrite Hsmmuid2 in *.
    assert(hw_ttbr_val: e_hw_ttbr ((e_smmu_cfg (priv lst)) @ smmuid) = START + smmuid * 8192).
    { apply ttbr_val. lia. }
    assert(phys_hw_ttbr: phys_page[START + smmuid * 8192] = START + smmuid * 8192).
    { apply phys_page_id_iff. lia. lia. solve_phys_page_mod. }
    assert(hw_ttbr_nonzero: phys_page[e_hw_ttbr ((e_smmu_cfg (priv lst)) @ smmuid)] =? 0 = false).
    { bool_rel. rewrite hw_ttbr_val. rewrite phys_hw_ttbr. lia. }
    assert(start_offset: START + 131072 - 131072 = START) by lia.
    rewrite start_offset in *.
    extract_if. assumption.
    extract_if. grewrite. unfold is_smmu_pgdp. lia.
    grewrite.
    remember (clear_zmap_range (z_to_nat 8192) (START + smmuid * 8192) (e_smmu_pgd_pool (e_smmupts (shared lst)))) as spt'.
    symmetry in Heqspt'.
    assert((forall addr, START + smmuid * 8192 <= addr < START + smmuid * 8192 + 8192 -> spt' @ addr = 0) /\
           (forall addr, addr < START + smmuid * 8192 \/ addr >= START + smmuid * 8192 + 8192 -> spt' @ addr = (e_smmu_pgd_pool (e_smmupts (shared lst))) @ addr)).
    { assert(forall n s m m',
                clear_zmap_range n s m = m' ->
                ((forall addr, s <= addr < s + (Z.of_nat n) -> m' @ addr = 0) /\
                   (forall addr, addr < s \/ addr >= s + (Z.of_nat n) -> m' @ addr = m @ addr))).
      { induction n. simpl. intros. inv H. split; intros. lia. reflexivity.
        intros. simpl in H. rewrite of_nat_S_n.
        pose proof H as H'. apply IHn in H'. destruct H' as (Hin & Hout).
        split; intros.
        destruct (addr =? s) eqn:Haddr; bool_rel.
        subst. rewrite Hout. rewrite ZMap.gss. reflexivity. lia.
        rewrite Hin. reflexivity. lia.
        rewrite Hout. rewrite ZMap.gso. reflexivity. lia. lia. }
      assert(forall n, n + 8192 = n + (Z.of_nat (Z.to_nat 8192))).
      { intros. rewrite Z2Nat.id. reflexivity. lia. }
      rewrite H0. apply H. assumption. }
    destruct H as (Hin & Hout).
    eexists. split. reflexivity.
    destruct same_rel.
    constructor. constructor; simpl; assumption.
    constructor; simpl; try assumption; frewrite; try assumption.
    - exists START. split. assumption. split. assumption. split. reflexivity. assumption.
    - exists pgd_mapp. intros.
      destruct ((START + smmuid * 8192 <=? addr) && (addr <? START + smmuid * 8192 + 8192)) eqn:Haddr.
      rewrite Hin. auto. lia. rewrite Hout. apply pgd_pool_used; try lia. lia.
    - exists pmd_mapp. intros. apply pmd_pool_used.
    - intros.
      autounfold with proof in *.
      assert(Hpgd_idx_range: 0 <= (addr >> 27) & 8184 <= 8184) by (split; somega).
      destruct (smmuid0 =? smmuid) eqn:Hideq; bool_rel.
      + subst. rewrite ZMap.gss. rewrite Hin.
        unfold init_smmupt. rewrite ZMap.gi.
        split. intro T. inv T. intros (T & ?). replace phys_page[0] with 0 in T by reflexivity. contra.
        lia.
      + rewrite Hout. rewrite (ZMap.gso _ _ Hideq).
        frewrite. apply pt_map. lia. lia. lia.
  Qed.

End SmmuPTTreeOps_init_smmu_pt_RefProof.
