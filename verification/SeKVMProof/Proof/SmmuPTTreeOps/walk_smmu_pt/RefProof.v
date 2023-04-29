Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuPTTreeOps.Layer.
Require Import SmmuPTTreeOps.RefineRel.
Require Import SmmuPTTreeOps.Spec.
Require Import SmmuPTTreeOps.walk_smmu_pt.LowSpec.
Require Import SmmuPTWalk.Layer.
Require Import SmmuPTWalk.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTTreeOps_walk_smmu_pt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Lemma f_walk_smmu_pt_refine:
    forall _cbndx _num _addr lst hst hst' res
      (Hrel: refrel hst lst)
      (Hspec: walk_smmu_pt_spec _cbndx _num _addr hst = Some (res, hst')),
    exists lst', walk_smmu_pt_spec_low _cbndx _num _addr lst = Some (res, lst') /\ refrel hst' lst'.
  Proof.
    intros. inv Hrel.
    unfold walk_smmu_pt_spec, walk_smmu_pt_spec_low in *.
    repeat autounfold with sem in *.
    repeat simpl_hyp Hspec; repeat extract_prop.
    autounfold with proof in *.
    pose proof pt_rel as D. inv D. simpl in *. autounfold with proof in *.
    destruct pool_start_value as (START & START_mod & START_range & pool_val & ttbr_val).
    rewrite pool_val in *.
    destruct pgd_pool_used as (pgd_mapp & pgd_pool_used).
    destruct pmd_pool_used as (pmd_mapp & pmd_pool_used).
    assert(Hpgd_idx_range: 0 <= (_addr >> 27) & 8184 <= 8184) by (split; somega).
    assert(Hpmd_idx_range: 0 <= (_addr >> 18) & 4088 <= 4088) by (split; somega).
    assert(Hpte_idx_range: 0 <= (_addr >> 9) & 4088 <= 4088) by (split; somega).
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
    unfold get_smmu_cfg_hw_ttbr_spec. autounfold with sem.
    extract_if. lia. grewrite.
    unfold walk_smmu_pgd_spec.
    rewrite hw_ttbr_nonzero.
    autounfold with sem.
    extract_if. assumption.
    rewrite ttbr_val; try lia. rewrite pool_val. rewrite phys_hw_ttbr. simpl.
    destruct_if. 2: lia.
    unfold walk_smmu_pmd_spec.
    destruct_if.
    { (* level 2 does not exist *)
      unfold walk_smmu_pte_spec. replace (phys_page[0] =? 0) with true by reflexivity.
      inv Hspec. unfold smmupt_walk.
      destruct (((e_smmu_pt (e_smmupts (shared hst'))) @ (8 * _num + _cbndx)) @ (_addr / 4096)) eqn:Hpt.
      apply pt_map in Hpt; try lia.
      eexists. split. reflexivity. constructor; assumption.
    }
    { (* level 2 exists *)
      autounfold with sem. extract_if. assumption.
      rewrite pool_val.
      match goal with
      | [|- context[pgd_idx[_addr] + ?base] ] =>
          pose proof (pgd_pool_used (pgd_idx[ _addr] + base)) as Hpgd
      end.
      destruct Hpgd as [Hpgd|Hpgd]. rewrite Hpgd in Case0. inv Case0.
      rewrite idx_or_base; try lia; try solve_phys_page_mod.
      2: apply phys_page_mod_4096.
      destruct_if. lia. destruct_if. 2: lia.
      unfold walk_smmu_pte_spec.
      destruct_if.
      { (* level 3 does not exist *)
        inv Hspec. unfold smmupt_walk.
        destruct (((e_smmu_pt (e_smmupts (shared hst'))) @ (8 * _num + _cbndx)) @ (_addr / 4096)) eqn:Hpt.
        apply pt_map in Hpt; try lia.
        eexists. split. reflexivity. constructor; assumption.
      }
      { (* level 3 exists *)
        autounfold with sem. extract_if. assumption.
        rewrite pool_val.
        match goal with
        | [|- context[pmd_idx[_addr] + ?base] ] =>
            pose proof (pmd_pool_used (pmd_idx[ _addr] + base)) as Hpmd
        end.
        destruct Hpmd as [Hpmd|Hpmd]. rewrite Hpmd in Case3. inv Case3.
        rewrite idx_or_base; try lia. 2: apply phys_page_mod_4096.
        destruct_if. lia. destruct_if. lia. extract_if. lia. destruct_if. 2: lia.
        inv Hspec. unfold smmupt_walk.
        destruct (((e_smmu_pt (e_smmupts (shared hst'))) @ (8 * _num + _cbndx)) @ (_addr / 4096)) eqn:Hpt.
        apply pt_map in Hpt; try lia.
        destruct Hpt as (? & ? & ? & ?). frewrite.
        eexists. split. reflexivity. constructor; assumption.
        match goal with
        | [|- context[Some (?pte, lst) ] ] =>
            destruct (pte =? 0) eqn:Hpte0; bool_rel; [| assert(((e_smmu_pt (e_smmupts (shared hst'))) @ (8 * _num + _cbndx)) @ (_addr / 4096) = Some pte)]
        end.
        rewrite Hpte0.
        eexists. split. reflexivity. constructor; assumption.
        apply pt_map; try lia. frewrite. contra.
      }
    }
  Qed.

End SmmuPTTreeOps_walk_smmu_pt_RefProof.
