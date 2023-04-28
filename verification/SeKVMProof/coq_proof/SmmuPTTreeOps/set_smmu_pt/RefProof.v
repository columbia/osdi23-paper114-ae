Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuPTTreeOps.Layer.
Require Import SmmuPTTreeOps.RefineRel.
Require Import SmmuPTTreeOps.Spec.
Require Import SmmuPTTreeOps.set_smmu_pt.LowSpec.
Require Import SmmuPTWalk.Layer.
Require Import SmmuPTWalk.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTTreeOps_set_smmu_pt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Lemma f_set_smmu_pt_refine:
    forall _cbndx _num _addr _pte lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: set_smmu_pt_spec _cbndx _num _addr _pte hst = Some hst'),
    exists lst', set_smmu_pt_spec_low _cbndx _num _addr _pte lst = Some lst' /\ refrel hst' lst'.
  Proof.
    intros. inv Hrel.
    unfold set_smmu_pt_spec, set_smmu_pt_spec_low in *.
    repeat autounfold with sem in *.
    repeat simpl_hyp Hspec; repeat extract_prop.
    unfold smmupt_set in C3. autounfold with sem in C3.
    remember (if _pte <>? 0 then Some _pte else None) as __pte.
    simpl_hyp C3. simpl_func C; repeat extract_prop; simpl in *.
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
    remember (if _pte <>? 0 then Some _pte else None) as __pte. symmetry in Heq__pte.
    unfold get_smmu_cfg_hw_ttbr_spec. autounfold with sem.
    extract_if. lia. extract_if. grewrite. lia. rewrite Cond0.
    unfold walk_smmu_pgd_spec.
    repeat grewrite. simpl.
    autounfold with sem. extract_if. assumption.
    destruct_if. 2: lia.
    destruct_if.
    { (* level 2 does not exist*)
      extract_if. rewrite x_shiftl_12. lia. rewrite Cond2.
      unfold walk_smmu_pmd_spec. simpl.
      rewrite x_shiftl_12. rewrite base_or_perm; try lia; try solve_phys_page_mod.
      rewrite phys_page_add_rem; try lia.
      2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
      destruct_if. lia. autounfold with sem. extract_if. assumption.
      rewrite idx_or_base; try lia; try solve_phys_page_mod.
      destruct_if. lia. destruct_if. 2: lia.
      rewrite pmd_pool_unused; try lia. destruct_if. 2: inv Case4.
      extract_if. rewrite x_shiftl_12. lia. rewrite Cond4.
      unfold set_smmu_pte_spec. autounfold with sem; simpl. rewrite pool_val.
      extract_if. assumption.
      rewrite x_shiftl_12. rewrite base_or_perm with (b:=3); try lia; try solve_phys_page_mod.
      rewrite phys_page_add_rem; try lia.
      2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
      rewrite idx_or_base; try lia; try solve_phys_page_mod.
      destruct_if. lia. destruct_if. lia. destruct_if. 2: lia.
      eexists; split. reflexivity.
      constructor. destruct same_rel. constructor; simpl; try assumption.
      { constructor; simpl; repeat rewrite ZMap.gss; simpl; try assumption; try lia.
        - exists START. intros. split_and; try assumption; try lia.
        - intros. destruct_zmap. lia. apply pmd_pool_unused. lia.
        - intros. destruct_zmap. lia. apply pte_pool_unused. lia.
        - exists (fun addr => if addr =? (START + 131072 + e_smmu_pgd_used_pages (e_smmupts (shared lst)) * 4096)
                      then  pgd_idx[_addr] + (START + smmuid * 8192)
                      else pgd_mapp addr).
          intros.
          destruct_zmap. right. split. rewrite phys_page_add_rem; try lia.
          apply phys_page_id_iff; try lia. solve_phys_page_mod.
          rewrite phys_page_add_rem; try lia. destruct_if. reflexivity. lia.
          apply phys_page_id_iff; try lia. solve_phys_page_mod.
          pose proof (pgd_pool_used addr) as used_pgd.
          destruct used_pgd as [U|[U1 U2] ]. auto. right. split. lia.
          destruct_if. lia. assumption.
        - exists (fun addr => if addr =? (START + 131072 + 1048576 + e_smmu_pmd_used_pages (e_smmupts (shared lst)) * 4096)
                      then pmd_idx[ _addr] + (e_smmu_pgd_used_pages (e_smmupts (shared lst)) * 4096 + (START + 131072))
                      else pmd_mapp addr).
          intros.
          destruct_zmap. right. split. rewrite phys_page_add_rem; try lia.
          apply phys_page_id_iff; try lia. solve_phys_page_mod.
          rewrite phys_page_add_rem; try lia. simpl_bool_eq. reflexivity.
          apply phys_page_id_iff; try lia. solve_phys_page_mod.
          pose proof (pmd_pool_used addr) as used_pmd.
          destruct used_pmd as [U|[U1 U2] ]. auto. right. split. lia.
          destruct_if. lia. assumption.
        - intros. autounfold with proof in *.
          pose proof (pt_map smmuid0 addr Hsmmuid Haddr pte) as old_pt.
          assert(Hpdd_idx_range': 0 <= (addr >> 27) & 8184 <= 8184) by (split; somega).
          assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
          assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
          rewrite pool_val. rewrite start_offset.
          destruct (smmuid0 =? smmuid) eqn:Hsmmuid0; bool_rel.
          { (* smmuid == smmuid' *)
            rewrite Hsmmuid0 in *. rewrite ZMap.gss.
            destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
            { (* pgd_idx == pud_idx' *)
              rewrite Hpgdidx in *. rewrite ZMap.gss.
              rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
              destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
              { (* pmd_idx == pmd_idx' *)
                rewrite Hpmdidx in *. rewrite ZMap.gss.
                rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                destruct (pte_idx[_addr] =? pte_idx[addr]) eqn:Hpteidx; bool_rel.
                { (* pte_idx == pte_idx' *)
                  rewrite Hpteidx in *.
                  rewrite ZMap.gss.
                  assert(Haddreq: _addr / 4096 = addr / 4096).
                  { apply addr_eq_indices_smmu; try assumption; auto. }
                  rewrite Haddreq in *. rewrite ZMap.gss.
                  split.
                  - intros. split_and. lia. lia.
                    rewrite <- Heq__pte in *. simpl_hyp H; inv H. reflexivity.
                    rewrite <- Heq__pte in *. simpl_hyp H; inv H. lia.
                  - intros (? & ? & ? & ?).
                    rewrite <- Heq__pte. destruct_if; try lia. subst. reflexivity.
                }
                { (* pte_idx <> pte_idx' *)
                  assert(Haddreq: addr / 4096 <> _addr / 4096).
                  { red. intro T. apply addr_eq_indices_smmu in T; try assumption. lia. }
                  rewrite (ZMap.gso _ _ Haddreq) in *.
                  split.
                  - intros. apply old_pt in H. frewrite. lia.
                  - intros (? & ? & ? & ?).
                    assert_gso' H1. lia. rewrite (ZMap.gso _ _ Hneq) in *.
                    rewrite pte_pool_unused in H1. contra. lia.
                }
              }
              { (* pmd_idx <> pmd_idx' *)
                assert(Haddreq: addr / 4096 <> _addr / 4096).
                { red. intro T. apply addr_eq_indices_smmu in T; try assumption. lia. }
                rewrite (ZMap.gso _ _ Haddreq) in *.
                split.
                - intros T. apply old_pt in T. frewrite. lia.
                - intros (? & ? & ? & ?).
                  assert_gso' H0. lia. rewrite (ZMap.gso _ _ Hneq) in *.
                  rewrite pmd_pool_unused in H0. replace phys_page[0] with 0 in H0 by reflexivity. contra. lia.
              }
            }
            { (* pgd_idx <> pgd_idx' *)
              assert(Haddreq: addr / 4096 <> _addr / 4096).
              { red. intro T. apply addr_eq_indices_smmu in T; try assumption. lia. }
              rewrite (ZMap.gso _ _ Haddreq) in *.
              rewrite ZMap.gso. 2: lia.
              rewrite ZMap.gso.
              2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                  right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as U end.
                  destruct U as [U|U]; try rewrite U; try lia. }
              rewrite ZMap.gso.
              2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                  right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                  destruct U as [U|U]; try rewrite U; try lia. }
              assumption.
            }
          }
          { (* smmuid <> smmuid' *)
            rewrite ZMap.gso. 2: lia.
            rewrite ZMap.gso. 2: lia.
            rewrite ZMap.gso.
            2: {  apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                  right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as U end.
                  destruct U as [U|U]; try rewrite U; try lia. }
            rewrite ZMap.gso.
            2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                destruct U as [U|U]; try rewrite U; try lia. }
            assumption.
          }
      }
    }
    {
      (* level 2 exists *)
      match goal with | |- context[(e_smmu_pgd_pool _) @ ?addr] => pose proof (pgd_pool_used addr) as Hpgd end.
      destruct Hpgd as [?|Hpgd]. rewrite H in Case0. inv Case0.
      unfold walk_smmu_pmd_spec. simpl. rewrite Case0. autounfold with sem.
      extract_if. assumption.
      rewrite idx_or_base; try lia; try apply phys_page_mod_4096; solve_phys_page_mod.
      destruct_if. lia. destruct_if. 2: lia.
      destruct_if.
      { (* level 3 does not exist *)
        extract_if. rewrite x_shiftl_12. lia. rewrite Cond3.
        unfold set_smmu_pte_spec. autounfold with sem; simpl. rewrite pool_val.
        extract_if. assumption.
        rewrite x_shiftl_12. rewrite base_or_perm with (b:=3); try lia; try solve_phys_page_mod.
        rewrite phys_page_add_rem; try lia.
        2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
        rewrite idx_or_base; try lia; try solve_phys_page_mod.
        destruct_if. lia. destruct_if. lia. destruct_if. 2: lia.
        eexists; split. reflexivity.
        constructor. destruct same_rel. constructor; simpl; try assumption.
        { constructor; simpl; repeat rewrite ZMap.gss; simpl; try assumption; try lia.
          - exists START. intros. split_and; try assumption; try lia.
          - intros. destruct_zmap. lia. apply pmd_pool_unused. lia.
          - intros. destruct_zmap. lia. apply pte_pool_unused. lia.
          - exists pgd_mapp. rewrite pool_val. assumption.
          - exists (fun addr => if addr =? (START + 131072 + 1048576 + e_smmu_pmd_used_pages (e_smmupts (shared lst)) * 4096)
                        then pmd_idx[ _addr] + phys_page[ (e_smmu_pgd_pool (e_smmupts (shared lst))) @ (pgd_idx[ _addr] + (START + smmuid * 8192))]
                        else pmd_mapp addr).
            intros.
            destruct_zmap. right. split. rewrite phys_page_add_rem; try lia.
            apply phys_page_id_iff; try lia. solve_phys_page_mod.
            rewrite phys_page_add_rem; try lia. simpl_bool_eq. reflexivity.
            apply phys_page_id_iff; try lia. solve_phys_page_mod.
            pose proof (pmd_pool_used addr) as used_pmd.
            destruct used_pmd as [U|[U1 U2] ]. auto. right. split. lia.
            destruct_if. lia. assumption.
          - intros. autounfold with proof in *.
            pose proof (pt_map smmuid0 addr Hsmmuid Haddr pte) as old_pt.
            assert(Hpdd_idx_range': 0 <= (addr >> 27) & 8184 <= 8184) by (split; somega).
            assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
            assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
            rewrite pool_val. rewrite start_offset.
            destruct (smmuid0 =? smmuid) eqn:Hsmmuid0; bool_rel.
            { (* smmuid == smmuid' *)
              rewrite Hsmmuid0 in *. rewrite ZMap.gss.
              destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
              { (* pgd_idx == pud_idx' *)
                rewrite Hpgdidx in *.
                destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                { (* pmd_idx == pmd_idx' *)
                  rewrite Hpmdidx in *. rewrite ZMap.gss.
                  rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                  destruct (pte_idx[_addr] =? pte_idx[addr]) eqn:Hpteidx; bool_rel.
                  { (* pte_idx == pte_idx' *)
                    rewrite Hpteidx in *. rewrite ZMap.gss.
                    assert(Haddreq: _addr / 4096 = addr / 4096).
                    { apply addr_eq_indices_smmu; try assumption; auto. }
                    rewrite Haddreq in *. rewrite ZMap.gss.
                    split.
                    - intros. split_and. lia. lia.
                      rewrite <- Heq__pte in *. simpl_hyp H; inv H. reflexivity.
                      rewrite <- Heq__pte in *. simpl_hyp H; inv H. lia.
                    - intros (? & ? & ? & ?).
                      rewrite <- Heq__pte. destruct_if; try lia. subst. reflexivity.
                  }
                  { (* pte_idx <> pte_idx' *)
                    assert(Haddreq: addr / 4096 <> _addr / 4096).
                    { red. intro T. apply addr_eq_indices_smmu in T; try assumption. lia. }
                    rewrite (ZMap.gso _ _ Haddreq) in *.
                    assert_gso. lia. rewrite (ZMap.gso _ _ Hneq) in *.
                    split.
                    - intros. apply old_pt in H. frewrite. lia.
                    - intros (? & ? & ? & ?).
                      rewrite pte_pool_unused in H1. contra. lia.
                  }
                }
                { (* pmd_idx <> pmd_idx' *)
                  assert(Haddreq: addr / 4096 <> _addr / 4096).
                  { red. intro T. apply addr_eq_indices_smmu in T; try assumption. lia. }
                  rewrite (ZMap.gso _ _ Haddreq) in *.
                  assert_gso. lia. rewrite (ZMap.gso _ _ Hneq) in *.
                  assert_gso.
                  apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                  right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                  destruct U as [U|U]; try rewrite U; try lia. replace phys_page[0] with 0 by reflexivity. lia.
                  rewrite (ZMap.gso _ _ Hneq0) in *.
                  assumption.
                }
              }
              { (* pgd_idx <> pgd_idx' *)
                assert(Haddreq: addr / 4096 <> _addr / 4096).
                { red. intro T. apply addr_eq_indices_smmu in T; try assumption. lia. }
                rewrite (ZMap.gso _ _ Haddreq) in *.
                assert_gso.
                apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                right.
                match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U end.
                match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU end.
                destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                red; intro T. rewrite T in U. destruct U as (U1 & U2). rewrite U2 in UU. destruct UU as (? & UU). lia.
                rewrite (ZMap.gso _ _ Hneq) in *.
                assert_gso.
                apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                destruct U as [U|U]; try rewrite U; try lia. replace phys_page[0] with 0 by reflexivity. lia.
                rewrite (ZMap.gso _ _ Hneq0).
                assumption.
              }
            }
            { (* smmuid <> smmuid' *)
              rewrite ZMap.gso. 2: lia.
              assert_gso.
              apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
              right.
              match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U end.
              match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU end.
              destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
              destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
              red; intro T. rewrite T in U. destruct U as (U1 & U2). rewrite U2 in UU. destruct UU as (? & UU). lia.
              rewrite (ZMap.gso _ _ Hneq) in *.
              assert_gso.
              apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
              right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
              destruct U as [U|U]; try rewrite U; try lia. replace phys_page[0] with 0 by reflexivity. lia.
              rewrite (ZMap.gso _ _ Hneq0).
              assumption.
            }
        }
      }
      { (* level 3 exist *)
        match goal with | |- context[(e_smmu_pmd_pool _) @ ?addr] => pose proof (pmd_pool_used addr) as Hpmd end.
        destruct Hpmd as [?|Hpmd]. rewrite H in Case3. inv Case3.
        unfold set_smmu_pte_spec. autounfold with sem; simpl. rewrite pool_val.
        extract_if. assumption.
        rewrite idx_or_base; try lia; try apply phys_page_mod_4096; solve_phys_page_mod.
        destruct_if. lia. destruct_if. lia. destruct_if. 2: lia.
        eexists; split. reflexivity.
        constructor. destruct same_rel. constructor; simpl; try assumption.
        { constructor; simpl; repeat rewrite ZMap.gss; simpl; try assumption; try lia.
          - exists START. intros. split_and; try assumption; try lia.
          - intros. apply pmd_pool_unused. lia.
          - intros. destruct_zmap. lia. apply pte_pool_unused. lia.
          - exists pgd_mapp. rewrite pool_val. assumption.
          - exists pmd_mapp. rewrite pool_val. assumption.
          - intros. autounfold with proof in *.
            pose proof (pt_map smmuid0 addr Hsmmuid Haddr pte) as old_pt.
            assert(Hpdd_idx_range': 0 <= (addr >> 27) & 8184 <= 8184) by (split; somega).
            assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
            assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
            rewrite pool_val. rewrite start_offset.
            destruct (smmuid0 =? smmuid) eqn:Hsmmuid0; bool_rel.
            { (* smmuid == smmuid' *)
              rewrite Hsmmuid0 in *. rewrite ZMap.gss.
              destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
              { (* pgd_idx == pud_idx' *)
                rewrite Hpgdidx in *.
                destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                { (* pmd_idx == pmd_idx' *)
                  rewrite Hpmdidx in *.
                  destruct (pte_idx[_addr] =? pte_idx[addr]) eqn:Hpteidx; bool_rel.
                  { (* pte_idx == pte_idx' *)
                    rewrite Hpteidx in *. rewrite ZMap.gss.
                    assert(Haddreq: _addr / 4096 = addr / 4096).
                    { apply addr_eq_indices_smmu; try assumption; auto. }
                    rewrite Haddreq in *. rewrite ZMap.gss.
                    split.
                    - intros. split_and. lia. lia.
                      rewrite <- Heq__pte in *. simpl_hyp H; inv H. reflexivity.
                      rewrite <- Heq__pte in *. simpl_hyp H; inv H. lia.
                    - intros (? & ? & ? & ?).
                      rewrite <- Heq__pte. destruct_if; try lia. subst. reflexivity.
                  }
                  { (* pte_idx <> pte_idx' *)
                    assert(Haddreq: addr / 4096 <> _addr / 4096).
                    { red. intro T. apply addr_eq_indices_smmu in T; try assumption. lia. }
                    rewrite (ZMap.gso _ _ Haddreq) in *.
                    assert_gso. lia. rewrite (ZMap.gso _ _ Hneq) in *.
                    assumption.
                  }
                }
                { (* pmd_idx <> pmd_idx' *)
                  assert(Haddreq: addr / 4096 <> _addr / 4096).
                  { red. intro T. apply addr_eq_indices_smmu in T; try assumption. lia. }
                  rewrite (ZMap.gso _ _ Haddreq) in *.
                  split.
                  - intros. apply old_pt in H.
                    rewrite ZMap.gso. assumption.
                    apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                    right.
                    match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                    match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                    destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                    destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                    red; intro T. rewrite T in U. destruct U as (U1 & U2). rewrite U2 in UU. destruct UU as (? & UU). lia.
                  - intros (? & ? & ? & ?).
                    assert_gso' H1.
                    apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                    right.
                    match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                    match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                    destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                    destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                    red; intro T. rewrite T in U. destruct U as (U1 & U2). rewrite U2 in UU. destruct UU as (? & UU). lia.
                    rewrite (ZMap.gso _ _ Hneq) in H1. apply old_pt. split_and; try assumption.
                }
              }
              { (* pgd_idx <> pgd_idx' *)
                assert(Haddreq: addr / 4096 <> _addr / 4096).
                { red. intro T. apply addr_eq_indices_smmu in T; try assumption. lia. }
                rewrite (ZMap.gso _ _ Haddreq) in *.
                split.
                - intros. apply old_pt in H. destruct H as (? & ? & ? & ?).
                  rewrite ZMap.gso. split_and; assumption.
                  apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                  right.
                  match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                  match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                  destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                  destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                  red; intro T. rewrite T in U. destruct U as (U1 & U2). rewrite U2 in UU. destruct UU as (? & UU).
                  match type of UU with
                  | ?a = ?b => assert(a <> b)
                  end.
                  apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                  right.
                  match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U' end.
                  match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU' end.
                  destruct U' as [U'|U']. rewrite U'. replace (phys_page[0]) with 0 by reflexivity. lia.
                  destruct UU' as [UU'|UU']. rewrite UU'. replace (phys_page[0]) with 0 by reflexivity. lia.
                  red; intro T'. rewrite T' in U'. destruct U' as [U'1 U'2]. rewrite U'2 in UU'. destruct UU' as (? & UU'). lia. contra.
                - intros (? & ? & ? & ?).
                  assert_gso' H1.
                  apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                  right.
                  match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                  match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                  destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                  destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                  red; intro T. rewrite T in U. destruct U as (U1 & U2). rewrite U2 in UU. destruct UU as (? & UU).
                  match type of UU with
                  | ?a = ?b => assert(a <> b)
                  end.
                  apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                  right.
                  match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U' end.
                  match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU' end.
                  destruct U' as [U'|U']. rewrite U'. replace (phys_page[0]) with 0 by reflexivity. lia.
                  destruct UU' as [UU'|UU']. rewrite UU'. replace (phys_page[0]) with 0 by reflexivity. lia.
                  red; intro T'. rewrite T' in U'. destruct U' as [U'1 U'2]. rewrite U'2 in UU'. destruct UU' as (? & UU'). lia. contra.
                  rewrite (ZMap.gso _ _ Hneq) in *. apply old_pt. split_and; try assumption.
              }
            }
            { (* smmu_id <> smmu_id' *)
              rewrite (ZMap.gso _ _ Hsmmuid0).
              split.
              - intros. apply old_pt in H. destruct H as (? & ? & ? & ?).
                rewrite ZMap.gso. split_and; assumption.
                apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                right.
                match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                red; intro T. rewrite T in U. destruct U as (U1 & U2). rewrite U2 in UU. destruct UU as (? & UU).
                match type of UU with
                | ?a = ?b => assert(a <> b)
                end.
                apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                right.
                match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U' end.
                match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU' end.
                destruct U' as [U'|U']. rewrite U'. replace (phys_page[0]) with 0 by reflexivity. lia.
                destruct UU' as [UU'|UU']. rewrite UU'. replace (phys_page[0]) with 0 by reflexivity. lia.
                red; intro T'. rewrite T' in U'. destruct U' as [U'1 U'2]. rewrite U'2 in UU'. destruct UU' as (? & UU').
                match type of UU' with
                | ?a = ?b => assert(a <> b)
                end.
                apply idx_plus_base_diff. lia. lia. solve_phys_page_mod. solve_phys_page_mod.
                right. lia. lia. lia.
              - intros (? & ? & ? & ?).
                assert_gso' H1.
                apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                right.
                match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                red; intro T. rewrite T in U. destruct U as (U1 & U2). rewrite U2 in UU. destruct UU as (? & UU).
                match type of UU with
                | ?a = ?b => assert(a <> b)
                end.
                apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                right.
                match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U' end.
                match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU' end.
                destruct U' as [U'|U']. rewrite U'. replace (phys_page[0]) with 0 by reflexivity. lia.
                destruct UU' as [UU'|UU']. rewrite UU'. replace (phys_page[0]) with 0 by reflexivity. lia.
                red; intro T'. rewrite T' in U'. destruct U' as [U'1 U'2]. rewrite U'2 in UU'. destruct UU' as (? & UU').
                match type of UU' with
                | ?a = ?b => assert(a <> b)
                end.
                apply idx_plus_base_diff. lia. lia. solve_phys_page_mod. solve_phys_page_mod.
                right. lia. lia. lia.
                rewrite (ZMap.gso _ _ Hneq) in *. apply old_pt. split_and; assumption.
            }
        }
      }
    }
  Qed.

End SmmuPTTreeOps_set_smmu_pt_RefProof.
