Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTTreeOps.Layer.
Require Import S2PTTreeOps.RefineRel.
Require Import S2PTTreeOps.Spec.
Require Import S2PTTreeOps.set_npt.LowSpec.
Require Import S2PTWalk.Layer.
Require Import S2PTWalk.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTTreeOps_set_npt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Lemma f_set_npt_refine_level2:
    forall _vmid _addr _level _pte lst hst hst'
      (Hlevel: _level = 2)
      (Hrel: refrel hst lst)
      (Hspec: set_npt_spec _vmid _addr _level _pte hst = Some hst'),
      exists lst', set_npt_spec_low _vmid _addr _level _pte lst = Some lst' /\ refrel hst' lst'.
  Proof.
    intros. inv Hrel.
    unfold set_npt_spec, set_npt_spec_low in *.
    repeat autounfold with sem in *.
    repeat simpl_hyp Hspec; repeat extract_prop.
    autounfold with proof in *.
    replace (1 << 48 - 1) with 281474976710655 in * by reflexivity.
    pose proof (pt_rel _vmid Prop3). inv H. simpl in *. autounfold with proof in *.
    destruct pool_start_value as (START & START_mod & START_range & pool_val & pool_val_h).
    destruct pgd_pool_used as (pgd_mapp & pgd_pool_used).
    destruct pud_pool_used as (pud_mapp & pud_pool_used).
    destruct pmd_pool_used as (pmd_mapp & pmd_pool_used).
    assert(Hpgd_idx_range: 0 <= (_addr >> 36) & 4088 <= 4088) by (split; somega).
    assert(Hpud_idx_range: 0 <= (_addr >> 27) & 4088 <= 4088) by (split; somega).
    assert(Hpmd_idx_range: 0 <= (_addr >> 18) & 4088 <= 4088) by (split; somega).
    assert(Hpte_idx_range: 0 <= (_addr >> 9) & 4088 <= 4088) by (split; somega).
    assert(Hlock: (e_locks (shared lst)) @ (24 + _vmid) = Some CPU_ID).
    { inv same_rel. frewrite. rewrite <- Prop1. reflexivity. }
    clear Prop1.
    assert(vttbr_eq_pool_start: (e_vttbr ((e_s2pts (shared lst)) @ _vmid)) & 281474976706560 = e_page_pool_start ((e_s2pts (shared lst)) @ _vmid)).
    { rewrite vttbr_rel in Prop0.
      rewrite vttbr_val; autounfold with proof in *. rewrite pool_val; try lia. rewrite phys_page_exp2_48; try lia. }
    assert(pool_start_value: e_page_pool_start ((e_s2pts (shared lst)) @ _vmid) = START + _vmid * 33550336).
    { rewrite pool_val; autounfold with proof in *. lia. lia. }
    assert(pool_start_range: 0 < e_page_pool_start ((e_s2pts (shared lst)) @ _vmid) <= (1 << 40) - 33550336).
    { rewrite pool_val; autounfold with proof in *. rewrite x_shiftl_40. lia. lia. }
    assert(pool_start_4096: e_page_pool_start (e_s2pts (shared lst)) @ _vmid mod 4096 = 0).
    { rewrite pool_val; autounfold with proof in *. solve_phys_page_mod. lia. }
    assert(vttbr_pa_not_zero: (e_vttbr ((e_s2pts (shared lst)) @ _vmid)) & 281474976706560 =? 0 = false).
    { rewrite vttbr_eq_pool_start. lia. }
    simpl_func C3; repeat extract_prop.
    simpl_func C1; repeat extract_prop; simpl in *.
    rewrite pool_start_value in *.
    {
      assert(Hvttbr: get_pt_vttbr_spec _vmid lst = Some ((lst.(shared).(e_s2pts) @ _vmid).(e_vttbr), lst)).
      { unfold get_pt_vttbr_spec. rewrite core_vttbr.
        autounfold with sem. destruct_if. destruct prop; try lia.
        destruct prop. reflexivity. contra.
        unfold COREVISOR. replace _vmid with 18 by lia. reflexivity. }
      rewrite Hvttbr.
      unfold walk_pgd_spec.
      rewrite vttbr_pa_not_zero.
      autounfold with sem. extract_if. lia. extract_if. assumption.
      rewrite vttbr_eq_pool_start. rewrite pool_start_value.
      rewrite idx_or_base; try lia.
      destruct_if. 2: lia.
      destruct_if.
      { (* level 2 does not exist*)
        extract_if. rewrite x_shiftl_12. lia. rewrite Cond1.
        unfold walk_pud_spec. simpl.
        rewrite x_shiftl_12. rewrite base_or_perm; try lia; try solve_phys_page_mod.
        rewrite phys_page_add_rem; try lia.
        2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
        destruct_if. lia. autounfold with sem. extract_if. lia. extract_if. assumption.
        rewrite ZMap.gss; simpl.
        rewrite idx_or_base; try lia; try solve_phys_page_mod. rewrite pool_start_value.
        destruct_if. lia. destruct_if. 2: lia.
        rewrite pud_pool_unused; try lia. destruct_if. 2: inv Case4.
        extract_if. rewrite x_shiftl_12. lia. rewrite Cond4.
        unfold walk_pmd_spec. simpl. rewrite ZMap.gss. simpl.
        rewrite pool_start_value.
        rewrite x_shiftl_12. rewrite base_or_perm; try lia; try solve_phys_page_mod.
        rewrite phys_page_add_rem; try lia.
        2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
        destruct_if. lia. autounfold with sem.
        extract_if. lia. extract_if. assumption.
        rewrite idx_or_base; try lia; try solve_phys_page_mod.
        destruct_if. lia. destruct_if. lia. destruct_if. 2: lia.
        rewrite pmd_pool_unused; try lia.
        destruct_if. inv Case9.
        unfold v_set_pmd_spec. autounfold with sem; simpl.
        extract_if. lia. extract_if. assumption.
        rewrite ZMap.gss. simpl. rewrite pool_start_value.
        rewrite phys_page_add_rem; try lia.
        2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
        rewrite idx_or_base; try lia; try solve_phys_page_mod.
        destruct_if. lia. destruct_if. lia. destruct_if. 2: lia.
        repeat
          match goal with
          | [|- context[(?st.[shared].[e_s2pts] :< ?v).[shared].[e_s2pts] :< ?v2] ] =>
              replace ((st.[shared].[e_s2pts] :< v).[shared].[e_s2pts] :< v2) with (st.[shared].[e_s2pts] :< v2) by reflexivity
          end.
        repeat rewrite ZMap.set2.
        eexists; split. reflexivity.
        constructor. destruct same_rel. constructor; simpl; try assumption.
        intros. destruct (vmid =? _vmid) eqn:Hvmideq; bool_rel.
        2: { pose proof (pt_rel vmid Hvmid). destruct H.
        constructor; simpl in *; repeat rewrite (ZMap.gso _ _ Hvmideq); simpl; try assumption.
        destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
        exists START. intros. split. assumption. split. assumption. split. intros.
        destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
        intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption. }
        subst.
        { constructor; simpl; repeat rewrite ZMap.gss; simpl; try assumption; try lia.
          - destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
          - exists START. intros. split. assumption. split. assumption. split.
            intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
            intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption.
          - intros. destruct_zmap. lia. apply pud_pool_unused. lia.
          - intros. destruct_zmap. lia. apply pmd_pool_unused. lia.
          - rewrite pool_start_value. assumption.
          - exists (fun addr => if addr =? (START + _vmid * 33550336 + 4096 + e_pud_used_pages (e_s2pts (shared lst)) @ _vmid * 4096)
                        then  pgd_idx[_addr] + (START + _vmid * 33550336)
                        else pgd_mapp addr).
            intros. rewrite pool_start_value.
            destruct_zmap. right. split. rewrite phys_page_add_rem; try lia.
            apply phys_page_id_iff; try lia. solve_phys_page_mod.
            rewrite phys_page_add_rem; try lia. simpl_bool_eq. reflexivity.
            apply phys_page_id_iff; try lia. solve_phys_page_mod.
            pose proof (pgd_pool_used addr) as used_pgd.
            destruct used_pgd as [U|[U1 U2] ]. auto. right. split. lia.
            destruct_if. lia. assumption.
          - exists (fun addr => if addr =? (START + _vmid * 33550336 + 69632 + e_pmd_used_pages (e_s2pts (shared lst)) @ _vmid * 4096)
                        then pud_idx[ _addr] + (START + _vmid * 33550336 + 4096 + e_pud_used_pages (e_s2pts (shared lst)) @ _vmid * 4096)
                        else pud_mapp addr).
            intros. rewrite pool_start_value.
            destruct_zmap. right. split. rewrite phys_page_add_rem; try lia.
            apply phys_page_id_iff; try lia. solve_phys_page_mod.
            rewrite phys_page_add_rem; try lia. simpl_bool_eq. reflexivity.
            apply phys_page_id_iff; try lia. solve_phys_page_mod.
            pose proof (pud_pool_used addr) as used_pud.
            destruct used_pud as [U|[U1 U2] ]. auto. right. split. lia.
            destruct_if. lia. assumption.
          - exists pmd_mapp.
            intros. rewrite pool_start_value.
            destruct_zmap. right. left. apply or_n_and_3. reflexivity. assumption.
            pose proof (pmd_pool_used addr). assumption.
          - intros. autounfold with proof in *.
            pose proof (lv2pt addr Haddr pmd) as old_lv2pt.
            assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
            assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
            assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
            rewrite pool_start_value in *.
            destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
            { (* pgd_idx == pgd_idx' *)
              rewrite Hpgdidx in *. rewrite ZMap.gss.
              rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
              destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
              { (* pud_idx == pud_idx' *)
                rewrite Hpudidx in *. rewrite ZMap.gss.
                rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                { (* pmd_idx == pmd_idx' *)
                  rewrite Hpmdidx in *. rewrite ZMap.gss.
                  assert(Haddreq: _addr / 4096 / 512 = addr / 4096 / 512).
                  { apply addr_eq_indices_iff_lv2; try assumption; auto. }
                  rewrite Haddreq in *. rewrite ZMap.gss.
                  split.
                  - intros. inv H. repeat constructor; try lia.
                    apply or_n_and_3; try reflexivity; try assumption.
                    apply or_n_ne_zero. lia.
                  - intros (? & ? & ? & ? & ? & ?). grewrite. reflexivity.
                }
                { (* pmd_idx <> pmd_idx' *)
                  assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                  { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                  rewrite (ZMap.gso _ _ Haddreq).
                  split.
                  - intros T. apply old_lv2pt in T. frewrite. lia.
                  - intros (? & ? & ? & ? & ? & ?).
                    assert_gso' H2. lia. rewrite (ZMap.gso _ _ Hneq) in H2.
                    exploit H4. grewrite. apply pmd_pool_unused. lia.
                    intro T; inv T.
                }
              }
              { (* pud_idx <> pud_idx' *)
                assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                rewrite (ZMap.gso _ _ Haddreq).
                split.
                - intros T. apply old_lv2pt in T. frewrite. lia.
                - intros (? & ? & ? & ? & ? & ?).
                  assert_gso' H1. lia. rewrite (ZMap.gso _ _ Hneq) in H1.
                  exploit H1. match goal with [|- phys_page[?v]=0] => assert(v=0) end.
                  apply pud_pool_unused. lia. grewrite. reflexivity.
                  intro T; inv T.
              }
            }
            { (* pgd_idx <> pgd_idx' *)
              assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
              { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
              rewrite (ZMap.gso _ _ Haddreq).
              rewrite ZMap.gso. 2: lia.
              rewrite ZMap.gso.
              2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                   right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as U end.
                   destruct U as [U|U]; try rewrite U; try lia. }
              rewrite ZMap.gso.
              2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                   right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                   destruct U as [U|U]; try rewrite U; try lia. }
              assumption.
            }
          - intros. autounfold with proof in *.
            pose proof (lv3pt addr Haddr pte) as old_lv3pt.
            assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
            assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
            assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
            assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
            rewrite pool_start_value in *.
            destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
            { (* pgd_idx == pgd_idx' *)
              rewrite Hpgdidx in *. rewrite ZMap.gss.
              rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
              destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
              { (* pud_idx == pud_idx' *)
                rewrite Hpudidx in *. rewrite ZMap.gss.
                rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                { (* pmd_idx == pmd_idx' *)
                  rewrite Hpmdidx in *. rewrite ZMap.gss.
                  destruct (pte_idx[_addr] =? pte_idx[addr]) eqn:Hptedidx; bool_rel.
                  { (* pte_idx == pte_idx' *)
                    assert(Haddreq: _addr / 4096 = addr / 4096).
                    { apply addr_eq_indices_iff_lv3; try assumption; auto. }
                    rewrite Haddreq in *.
                    split.
                    - intros. apply old_lv3pt in H. frewrite. lia.
                    - intros (? & ? & ? & ? & ? & ? & ?).
                      pose proof (or_n_and_3 _pte). apply H6 in H2. inv H2. reflexivity. assumption.
                  }
                  { (* pte_idx <> pte_idx' *)
                    assert(Haddreq: addr / 4096 <> _addr / 4096).
                    { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                    split.
                    - intros. apply old_lv3pt in H. frewrite. lia.
                    - intros (? & ? & ? & ? & ? & ? & ?).
                      pose proof (or_n_and_3 _pte). apply H6 in H2. inv H2. reflexivity. assumption.
                  }
                }
                { (* pmd_idx <> pmd_idx' *)
                  assert(Haddreq: addr / 4096 <> _addr / 4096).
                  { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                  split.
                  - intros T. apply old_lv3pt in T. frewrite. lia.
                  - intros (? & ? & ? & ? & ? & ?).
                    assert_gso' H2. lia. rewrite (ZMap.gso _ _ Hneq) in H2.
                    rewrite (ZMap.gso _ _ Hneq) in H3.
                    exploit H3. match goal with [|- phys_page[?v]=0] => assert(v=0) end.
                    apply pmd_pool_unused. lia. grewrite. reflexivity.
                    intro T; inv T.
                }
              }
              { (* pud_idx <> pud_idx' *)
                assert(Haddreq: addr / 4096 <> _addr / 4096).
                { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                split.
                - intros T. apply old_lv3pt in T. frewrite. lia.
                - intros (? & ? & ? & ? & ? & ?).
                  assert_gso' H1. lia. rewrite (ZMap.gso _ _ Hneq) in H1.
                  exploit H1. match goal with [|- phys_page[?v]=0] => assert(v=0) end.
                  apply pud_pool_unused. lia. grewrite. reflexivity.
                  intro T; inv T.
              }
            }
            { (* pgd_idx <> pgd_idx' *)
              assert(Haddreq: addr / 4096 <> _addr / 4096).
              { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
              rewrite ZMap.gso. 2: lia.
              rewrite ZMap.gso.
              2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                   right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as U end.
                   destruct U as [U|U]; try rewrite U; try lia. }
              rewrite ZMap.gso.
              2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                   right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                   destruct U as [U|U]; try rewrite U; try lia. }
              assumption.
            }
          - intros addr Haddr (? & ? & ? & ?). autounfold with proof in *.
            assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
            assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
            assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
            assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
            destruct_zmap' H2. apply or_n_and_3 in H2. inv H2. reflexivity. assumption.
            rewrite pool_start_value in *.
            destruct_zmap' H1.
            rewrite pmd_pool_unused in H2. inv H2. rewrite phys_page_add_rem; try lia.
            apply phys_page_id_iff; try lia. solve_phys_page_mod.
            destruct_zmap' H0.
            rewrite pud_pool_unused in H1. replace (phys_page[0]) with 0 in H1 by reflexivity. contra.
            rewrite phys_page_add_rem; try lia. apply phys_page_id_iff; try lia. solve_phys_page_mod.
            eapply lv3nonempty; split_and; try assumption; try lia.
        }
      }
      {
        (* level 2 exists *)
        match goal with |- context[(e_pgd_pool _) @ ?v ] => pose proof (pgd_pool_used v) as Hpgd end.
        destruct Hpgd as [Hpgd|Hpgd]. rewrite Hpgd in Case0. inv Case0.
        unfold walk_pud_spec. rewrite pool_start_value. simpl.
        rewrite Case0. autounfold with sem. extract_if. lia. extract_if. assumption.
        rewrite idx_or_base; try lia; try solve_phys_page_mod. 2: apply phys_page_mod_4096.
        destruct_if. lia. destruct_if. 2: lia.
        destruct_if.
        { (* level 3 dess not exist *)
          extract_if. rewrite x_shiftl_12. lia. rewrite Cond3.
          unfold walk_pmd_spec. simpl. rewrite ZMap.gss. simpl.
          rewrite pool_start_value.
          rewrite x_shiftl_12. rewrite base_or_perm; try lia; try solve_phys_page_mod.
          rewrite phys_page_add_rem; try lia.
          2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
          destruct_if. lia. autounfold with sem.
          extract_if. lia. extract_if. assumption.
          rewrite idx_or_base; try lia; try solve_phys_page_mod.
          destruct_if. lia. destruct_if. lia. destruct_if. 2: lia.
          rewrite pmd_pool_unused; try lia.
          destruct_if. inv Case8.
          unfold v_set_pmd_spec. autounfold with sem; simpl.
          extract_if. lia. extract_if. assumption.
          rewrite ZMap.gss. simpl. rewrite pool_start_value.
          rewrite phys_page_add_rem; try lia.
          2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
          rewrite idx_or_base; try lia; try solve_phys_page_mod.
          destruct_if. lia. destruct_if. lia. destruct_if. 2: lia.
          repeat
            match goal with
            | [|- context[(?st.[shared].[e_s2pts] :< ?v).[shared].[e_s2pts] :< ?v2] ] =>
                replace ((st.[shared].[e_s2pts] :< v).[shared].[e_s2pts] :< v2) with (st.[shared].[e_s2pts] :< v2) by reflexivity
            end.
          repeat rewrite ZMap.set2.
          eexists; split. reflexivity.
          constructor. destruct same_rel. constructor; simpl; try assumption.
          intros. destruct (vmid =? _vmid) eqn:Hvmideq; bool_rel.
          2: { pose proof (pt_rel vmid Hvmid). destruct H.
          constructor; simpl in *; repeat rewrite (ZMap.gso _ _ Hvmideq); simpl; try assumption.
          destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
          exists START. intros. split. assumption. split. assumption. split.
          intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
          intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption. }
          subst.
          { constructor; simpl; repeat rewrite ZMap.gss; simpl; try assumption; try lia.
            - destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
            - exists START. intros. split. assumption. split. assumption. split.
              intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
              intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption.
            - intros. destruct_zmap. lia. apply pud_pool_unused. lia.
            - intros. destruct_zmap. lia. apply pmd_pool_unused. lia.
            - rewrite pool_start_value. assumption.
            - exists pgd_mapp. rewrite pool_start_value. assumption.
            - exists (fun addr => if addr =? (START + _vmid * 33550336 + 69632 + e_pmd_used_pages (e_s2pts (shared lst)) @ _vmid * 4096)
                          then pud_idx[ _addr] + phys_page[ (e_pgd_pool (e_s2pts (shared lst)) @ _vmid) @ (pgd_idx[ _addr] + (START + _vmid * 33550336))]
                          else pud_mapp addr).
              intros. rewrite pool_start_value.
              destruct_zmap. right. split. rewrite phys_page_add_rem; try lia.
              apply phys_page_id_iff; try lia. solve_phys_page_mod.
              rewrite phys_page_add_rem; try lia. simpl_bool_eq. reflexivity.
              apply phys_page_id_iff; try lia. solve_phys_page_mod.
              pose proof (pud_pool_used addr) as used_pud.
              destruct used_pud as [U|[U1 U2] ]. auto. right. split. lia.
              destruct_if. lia. assumption.
            - exists pmd_mapp.
              intros. rewrite pool_start_value.
              destruct_zmap. right. left. apply or_n_and_3. reflexivity. assumption.
              pose proof (pmd_pool_used addr). assumption.
            - intros. autounfold with proof in *.
              pose proof (lv2pt addr Haddr pmd) as old_lv2pt.
              assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
              assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
              assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
              rewrite pool_start_value in *.
              destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
              { (* pgd_idx == pgd_idx' *)
                rewrite Hpgdidx in *.
                destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
                { (* pud_idx == pud_idx' *)
                  rewrite Hpudidx in *. rewrite ZMap.gss.
                  rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                  destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                  { (* pmd_idx == pmd_idx' *)
                    rewrite Hpmdidx in *. rewrite ZMap.gss.
                    assert(Haddreq: _addr / 4096 / 512 = addr / 4096 / 512).
                    { apply addr_eq_indices_iff_lv2; try assumption; auto. }
                    rewrite Haddreq in *. rewrite ZMap.gss.
                    split.
                    - intros. inv H. repeat constructor; try lia.
                      apply or_n_and_3; try reflexivity; try assumption.
                      apply or_n_ne_zero. lia.
                    - intros (? & ? & ? & ? & ? & ?). grewrite. reflexivity.
                  }
                  { (* pmd_idx <> pmd_idx' *)
                    assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                    { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                    rewrite (ZMap.gso _ _ Haddreq).
                    split.
                    - intros T. apply old_lv2pt in T. frewrite. lia.
                    - intros (? & ? & ? & ? & ? & ?).
                      assert_gso' H2. lia. rewrite (ZMap.gso _ _ Hneq) in H2.
                      exploit H4. grewrite. apply pmd_pool_unused. lia.
                      intro T; inv T.
                  }
                }
                { (* pud_idx <> pud_idx' *)
                  assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                  { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                  rewrite (ZMap.gso _ _ Haddreq).
                  rewrite ZMap.gso. 2: lia.
                  rewrite ZMap.gso.
                  2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                      destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia. }
                  assumption.
                }
              }
              { (* pgd_idx <> pgd_idx' *)
                assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                rewrite (ZMap.gso _ _ Haddreq).
                rewrite ZMap.gso.
                2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                     right. 
                     match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U end.
                     match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU end.
                     destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                     destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                     red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. lia. }
                rewrite ZMap.gso.
                2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                    right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                    destruct U as [U|U]; try rewrite U; try lia. replace (phys_page[0]) with 0 by reflexivity. lia. }
                assumption.
              }
            - intros. autounfold with proof in *.
              pose proof (lv3pt addr Haddr pte) as old_lv3pt.
              assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
              assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
              assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
              assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
              rewrite pool_start_value in *.
              destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
              { (* pgd_idx == pgd_idx' *)
                rewrite Hpgdidx in *.
                destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
                { (* pud_idx == pud_idx' *)
                  rewrite Hpudidx in *. rewrite ZMap.gss.
                  rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                  destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                  { (* pmd_idx == pmd_idx' *)
                    rewrite Hpmdidx in *. rewrite ZMap.gss.
                    destruct (pte_idx[_addr] =? pte_idx[addr]) eqn:Hptedidx; bool_rel.
                    { (* pte_idx == pte_idx' *)
                      assert(Haddreq: _addr / 4096 = addr / 4096).
                      { apply addr_eq_indices_iff_lv3; try assumption; auto. }
                      rewrite Haddreq in *.
                      split.
                      - intros. apply old_lv3pt in H. frewrite. lia.
                      - intros (? & ? & ? & ? & ? & ? & ?).
                        pose proof (or_n_and_3 _pte). apply H6 in H2. inv H2. reflexivity. assumption.
                    }
                    { (* pte_idx <> pte_idx' *)
                      assert(Haddreq: addr / 4096 <> _addr / 4096).
                      { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                      split.
                      - intros. apply old_lv3pt in H. frewrite. lia.
                      - intros (? & ? & ? & ? & ? & ? & ?).
                        pose proof (or_n_and_3 _pte). apply H6 in H2. inv H2. reflexivity. assumption.
                    }
                  }
                  { (* pmd_idx <> pmd_idx' *)
                    assert(Haddreq: addr / 4096 <> _addr / 4096).
                    { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                    split.
                    - intros T. apply old_lv3pt in T. frewrite. lia.
                    - intros (? & ? & ? & ? & ? & ?).
                      assert_gso' H2. lia. rewrite (ZMap.gso _ _ Hneq) in H2.
                      rewrite (ZMap.gso _ _ Hneq) in H3.
                      exploit H3. match goal with [|- phys_page[?v]=0] => assert(v=0) end.
                      apply pmd_pool_unused. lia. grewrite. reflexivity.
                      intro T; inv T.
                  }
                }
                { (* pud_idx <> pud_idx' *)
                  assert(Haddreq: addr / 4096 <> _addr / 4096).
                  { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                  rewrite ZMap.gso. 2: lia.
                  rewrite ZMap.gso.
                  2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                      destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia. }
                  assumption.
                }
              }
              { (* pgd_idx <> pgd_idx' *)
                assert(Haddreq: addr / 4096 <> _addr / 4096).
                { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                rewrite ZMap.gso.
                2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                     right. 
                     match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U end.
                     match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU end.
                     destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                     destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                     red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. lia. }
                rewrite ZMap.gso.
                2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                    right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                    destruct U as [U|U]; try rewrite U; try lia. replace (phys_page[0]) with 0 by reflexivity. lia. }
                assumption.
              }
          - intros addr Haddr (? & ? & ? & ?). autounfold with proof in *.
            assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
            assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
            assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
            assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
            destruct_zmap' H2. apply or_n_and_3 in H2. inv H2. reflexivity. assumption.
            rewrite pool_start_value in *.
            destruct_zmap' H1.
            rewrite pmd_pool_unused in H2. inv H2. rewrite phys_page_add_rem; try lia.
            apply phys_page_id_iff; try lia. solve_phys_page_mod.
            eapply lv3nonempty; split_and; try assumption; try lia.
          }
        }
        { (* level 3 exists *)
          match goal with |- context[(e_pud_pool _) @ ?v ] => pose proof (pud_pool_used v) as Hpud end.
          destruct Hpud as [Hpud|Hpud]. rewrite Hpud in Case3. inv Case3.
          unfold walk_pmd_spec. rewrite pool_start_value. simpl.
          rewrite Case3. autounfold with sem. extract_if. lia. extract_if. assumption.
          rewrite idx_or_base; try lia; try solve_phys_page_mod. 2: apply phys_page_mod_4096.
          destruct_if. lia. destruct_if. lia. destruct_if. 2: lia.
          extract_if. 
          { bool_rel. red; intro T. exploit (lv3nonempty _addr); try lia; try assumption.
            intros (addr' & pte' & Haddr' & Hpgd' & Hpud' & Hpmd' & Hpte' & ? & ?).
            pose proof (lv3pt addr' Haddr' pte') as Hlv3'. destruct Hlv3' as (? & Hlv3').
            exploit Hlv3'. frewrite. split_and; try reflexivity; try assumption.
            intro TT. rewrite Prop1 in TT. inv TT. assumption. apply addr_eq_indices_iff_lv2; try assumption.
            split_and; grewrite; reflexivity. }
          rewrite Cond5.
          unfold v_set_pmd_spec. autounfold with sem; simpl.
          extract_if. lia. extract_if. assumption.  rewrite pool_start_value.
          rewrite idx_or_base; try lia; try solve_phys_page_mod. 2: apply phys_page_mod_4096.
          destruct_if. lia. destruct_if. lia. destruct_if. 2: lia.
          repeat
            match goal with
            | [|- context[(?st.[shared].[e_s2pts] :< ?v).[shared].[e_s2pts] :< ?v2] ] =>
                replace ((st.[shared].[e_s2pts] :< v).[shared].[e_s2pts] :< v2) with (st.[shared].[e_s2pts] :< v2) by reflexivity
            end.
          repeat rewrite ZMap.set2.
          eexists; split. reflexivity.
          constructor. destruct same_rel. constructor; simpl; try assumption.
          intros. destruct (vmid =? _vmid) eqn:Hvmideq; bool_rel.
          2: { pose proof (pt_rel vmid Hvmid). destruct H.
          constructor; simpl in *; repeat rewrite (ZMap.gso _ _ Hvmideq); simpl; try assumption.
          destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
          exists START. intros. split. assumption. split. assumption. split.
          intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
          intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption. }
          subst.
            { constructor; simpl; repeat rewrite ZMap.gss; simpl; try assumption; try lia.
              - destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
              - exists START. intros. split. assumption. split. assumption. split.
                intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
                intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption.
              - rewrite pool_start_value. assumption.
              - intros. destruct_zmap. lia. apply pmd_pool_unused. lia.
              - rewrite pool_start_value. assumption.
              - exists pgd_mapp. rewrite pool_start_value. assumption.
              - exists pud_mapp. rewrite pool_start_value. assumption.
              - exists pmd_mapp.
                intros. rewrite pool_start_value.
                destruct_zmap. right. left. apply or_n_and_3. reflexivity. assumption.
                pose proof (pmd_pool_used addr). assumption.
              - intros. autounfold with proof in *.
                pose proof (lv2pt addr Haddr pmd) as old_lv2pt.
                assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
                assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
                assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
                rewrite pool_start_value in *.
                destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
                { (* pgd_idx == pgd_idx' *)
                  rewrite Hpgdidx in *.
                  destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
                  { (* pud_idx == pud_idx' *)
                    rewrite Hpudidx in *.
                    destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                    { (* pmd_idx == pmd_idx' *)
                      rewrite Hpmdidx in *. rewrite ZMap.gss.
                      assert(Haddreq: _addr / 4096 / 512 = addr / 4096 / 512).
                      { apply addr_eq_indices_iff_lv2; try assumption; auto. }
                      rewrite Haddreq in *. rewrite ZMap.gss.
                      split.
                      - intros. inv H. repeat constructor; try lia.
                        apply or_n_and_3; try reflexivity; try assumption.
                        apply or_n_ne_zero. lia.
                      - intros (? & ? & ? & ? & ? & ?). grewrite. reflexivity.
                    }
                    { (* pmd_idx <> pmd_idx' *)
                      assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                      { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                      rewrite (ZMap.gso _ _ Haddreq).
                      rewrite ZMap.gso. 2: lia.
                      assumption.
                    }
                  }
                  { (* pud_idx <> pud_idx' *)
                    assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                    { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                    rewrite (ZMap.gso _ _ Haddreq).
                    rewrite ZMap.gso.
                    2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                        right.
                        match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U end.
                        match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU end.
                        destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                        destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                        red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. lia. }
                    assumption.
                   }
                }
                { (* pgd_idx <> pgd_idx' *)
                  assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                  { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                  rewrite (ZMap.gso _ _ Haddreq).
                  rewrite ZMap.gso.
                  2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right.
                      match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U end.
                      match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU end.
                      destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                      destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                      red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. destruct UU as (? & UU).
                      match type of UU with
                      | ?a = ?b => assert(a <> b)
                      end.
                      apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right.
                      match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U end.
                      match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU2 end.
                      destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                      destruct UU2 as [UU2|UU2]. rewrite UU2. replace (phys_page[0]) with 0 by reflexivity. lia.
                      red; intro TT. rewrite TT in U. destruct U as [U'1 U'2]. rewrite U'2 in UU2. lia.
                      contra.
                  }
                  assumption.
                }
              - intros. autounfold with proof in *.
                pose proof (lv3pt addr Haddr pte) as old_lv3pt.
                assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
                assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
                assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
                assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
                rewrite pool_start_value in *.
                destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
                { (* pgd_idx == pgd_idx' *)
                  rewrite Hpgdidx in *.
                  destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
                  { (* pud_idx == pud_idx' *)
                    rewrite Hpudidx in *.
                    destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                    { (* pmd_idx == pmd_idx' *)
                      rewrite Hpmdidx in *. rewrite ZMap.gss.
                      destruct (pte_idx[_addr] =? pte_idx[addr]) eqn:Hptedidx; bool_rel.
                      { (* pte_idx == pte_idx' *)
                        assert(Haddreq: _addr / 4096 = addr / 4096).
                        { apply addr_eq_indices_iff_lv3; try assumption; auto. }
                        rewrite Haddreq in *.
                        split.
                        - intros. apply old_lv3pt in H. frewrite. lia.
                        - intros (? & ? & ? & ? & ? & ? & ?).
                          pose proof (or_n_and_3 _pte). apply H6 in H2. inv H2. reflexivity. assumption.
                      }
                      { (* pte_idx <> pte_idx' *)
                        assert(Haddreq: addr / 4096 <> _addr / 4096).
                        { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                        split.
                        - intros. apply old_lv3pt in H. frewrite. lia.
                        - intros (? & ? & ? & ? & ? & ? & ?).
                          pose proof (or_n_and_3 _pte). apply H6 in H2. inv H2. reflexivity. assumption.
                      }
                    }
                    { (* pmd_idx <> pmd_idx' *)
                      assert(Haddreq: addr / 4096 <> _addr / 4096).
                      { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                      rewrite ZMap.gso. 2: lia.
                      assumption.
                    }
                  }
                  { (* pud_idx <> pud_idx' *)
                    assert(Haddreq: addr / 4096 <> _addr / 4096).
                    { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                    rewrite ZMap.gso.
                    2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                        right.
                        match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U end.
                        match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU end.
                        destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                        destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                        red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. lia. }
                    assumption.
                  }
                }
                { (* pgd_idx <> pgd_idx' *)
                  assert(Haddreq: addr / 4096 <> _addr / 4096).
                  { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                  rewrite ZMap.gso.
                  2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right.
                      match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U end.
                      match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU end.
                      destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                      destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                      red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. destruct UU as (? & UU).
                      match type of UU with
                      | ?a = ?b => assert(a <> b)
                      end.
                      apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right.
                      match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U end.
                      match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU2 end.
                      destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                      destruct UU2 as [UU2|UU2]. rewrite UU2. replace (phys_page[0]) with 0 by reflexivity. lia.
                      red; intro TT. rewrite TT in U. destruct U as [U'1 U'2]. rewrite U'2 in UU2. lia.
                      contra.
                  }
                  assumption.
                }
              - intros addr Haddr (? & ? & ? & ?). autounfold with proof in *.
                destruct_zmap' H2. apply or_n_and_3 in H2. inv H2. reflexivity. assumption.
                rewrite pool_start_value in *.
                eapply lv3nonempty; split_and; try assumption; try lia.
            }
        }
      }
    }
  Qed.

  Lemma f_set_npt_refine_level3:
    forall _vmid _addr _level _pte lst hst hst'
      (Hlevel: _level <> 2)
      (Hrel: refrel hst lst)
      (Hspec: set_npt_spec _vmid _addr _level _pte hst = Some hst'),
      exists lst', set_npt_spec_low _vmid _addr _level _pte lst = Some lst' /\ refrel hst' lst'.
  Proof.
    intros. inv Hrel.
    unfold set_npt_spec, set_npt_spec_low in *.
    repeat autounfold with sem in *.
    repeat simpl_hyp Hspec; repeat extract_prop.
    autounfold with proof in *.
    replace (1 << 48 - 1) with 281474976710655 in * by reflexivity.
    replace (_level =? 2) with false by lia.
    pose proof (pt_rel _vmid Prop3). inv H. simpl in *. autounfold with proof in *.
    destruct pool_start_value as (START & START_mod & START_range & pool_val & pool_val_h).
    destruct pgd_pool_used as (pgd_mapp & pgd_pool_used).
    destruct pud_pool_used as (pud_mapp & pud_pool_used).
    destruct pmd_pool_used as (pmd_mapp & pmd_pool_used).
    assert(Hpgd_idx_range: 0 <= (_addr >> 36) & 4088 <= 4088) by (split; somega).
    assert(Hpud_idx_range: 0 <= (_addr >> 27) & 4088 <= 4088) by (split; somega).
    assert(Hpmd_idx_range: 0 <= (_addr >> 18) & 4088 <= 4088) by (split; somega).
    assert(Hpte_idx_range: 0 <= (_addr >> 9) & 4088 <= 4088) by (split; somega).
    assert(Hlock: (e_locks (shared lst)) @ (24 + _vmid) = Some CPU_ID).
    { inv same_rel. frewrite. rewrite <- Prop1. reflexivity. }
    clear Prop1.
    assert(vttbr_eq_pool_start: (e_vttbr ((e_s2pts (shared lst)) @ _vmid)) & 281474976706560 = e_page_pool_start ((e_s2pts (shared lst)) @ _vmid)).
    { rewrite vttbr_rel in Prop0.
      rewrite vttbr_val; autounfold with proof in *. rewrite pool_val; try lia. rewrite phys_page_exp2_48; try lia. }
    assert(pool_start_value: e_page_pool_start ((e_s2pts (shared lst)) @ _vmid) = START + _vmid * 33550336).
    { rewrite pool_val; autounfold with proof in *. lia. lia. }
    assert(pool_start_range: 0 < e_page_pool_start ((e_s2pts (shared lst)) @ _vmid) <= (1 << 40) - 33550336).
    { rewrite pool_val; autounfold with proof in *. rewrite x_shiftl_40. lia. lia. }
    assert(pool_start_4096: e_page_pool_start (e_s2pts (shared lst)) @ _vmid mod 4096 = 0).
    { rewrite pool_val; autounfold with proof in *. solve_phys_page_mod. lia. }
    assert(vttbr_pa_not_zero: (e_vttbr ((e_s2pts (shared lst)) @ _vmid)) & 281474976706560 =? 0 = false).
    { rewrite vttbr_eq_pool_start. lia. }
    simpl_func C3; repeat extract_prop. lia.
    simpl_func C0; repeat extract_prop; simpl in *.
    rewrite pool_start_value in *.
    {
      assert(Hvttbr: get_pt_vttbr_spec _vmid lst = Some ((lst.(shared).(e_s2pts) @ _vmid).(e_vttbr), lst)).
      { unfold get_pt_vttbr_spec. rewrite core_vttbr.
        autounfold with sem. extract_if. lia. extract_if. assumption.
        destruct_if. reflexivity. replace _vmid with 18 by lia. reflexivity. }
      rewrite Hvttbr.
      unfold walk_pgd_spec.
      rewrite vttbr_pa_not_zero.
      autounfold with sem. extract_if. lia. extract_if. assumption.
      rewrite vttbr_eq_pool_start. rewrite pool_start_value.
      rewrite idx_or_base; try lia.
      destruct_if. 2: lia.
      destruct_if.
      { (* level 2 does not exist*)
        extract_if. rewrite x_shiftl_12. lia. rewrite Cond1.
        unfold walk_pud_spec. simpl.
        rewrite x_shiftl_12. rewrite base_or_perm; try lia; try solve_phys_page_mod.
        rewrite phys_page_add_rem; try lia.
        2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
        destruct_if. lia. autounfold with sem. extract_if. lia. extract_if. assumption.
        rewrite ZMap.gss; simpl.
        rewrite idx_or_base; try lia; try solve_phys_page_mod. rewrite pool_start_value.
        destruct_if. lia. destruct_if. 2: lia.
        rewrite pud_pool_unused; try lia. destruct_if. 2: inv Case4.
        extract_if. rewrite x_shiftl_12. lia. rewrite Cond4.
        unfold walk_pmd_spec. simpl. rewrite ZMap.gss. simpl.
        rewrite pool_start_value.
        rewrite x_shiftl_12. rewrite base_or_perm; try lia; try solve_phys_page_mod.
        rewrite phys_page_add_rem; try lia.
        2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
        destruct_if. lia. autounfold with sem.
        extract_if. lia. extract_if. assumption.
        rewrite idx_or_base; try lia; try solve_phys_page_mod.
        destruct_if. lia. destruct_if. lia. destruct_if. 2: lia.
        rewrite pmd_pool_unused; try lia.
        extract_if. rewrite x_shiftl_12. lia. rewrite Cond7.
        extract_if. rewrite x_shiftl_12. lia. rewrite Cond8.
        match goal with
        | |- context[if ?c then ?a else ?a] => replace (if c then a else a) with a by (destruct_if; reflexivity)
        end.
        replace (phys_page[0] =? 0) with true by reflexivity.
        extract_if. bool_rel. apply or_n3_and_3. reflexivity. rewrite Cond9.
        unfold v_set_pte_spec. autounfold with sem; simpl.
        extract_if. lia. extract_if. assumption.
        rewrite ZMap.gss. simpl. rewrite pool_start_value.
        rewrite x_shiftl_12. rewrite base_or_perm with (b:=3); try lia; try solve_phys_page_mod.
        rewrite phys_page_add_rem; try lia.
        2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
        rewrite idx_or_base; try lia; try solve_phys_page_mod.
        destruct_if. lia. destruct_if. lia. destruct_if. lia. extract_if. lia. rewrite Cond12.
        repeat
          match goal with
          | [|- context[(?st.[shared].[e_s2pts] :< ?v).[shared].[e_s2pts] :< ?v2] ] =>
              replace ((st.[shared].[e_s2pts] :< v).[shared].[e_s2pts] :< v2) with (st.[shared].[e_s2pts] :< v2) by reflexivity
          end.
        repeat rewrite ZMap.set2.
        eexists; split. reflexivity.
        constructor. destruct same_rel. constructor; simpl; try assumption.
        intros. destruct (vmid =? _vmid) eqn:Hvmideq; bool_rel.
        2: { pose proof (pt_rel vmid Hvmid). destruct H.
        constructor; simpl in *; repeat rewrite (ZMap.gso _ _ Hvmideq); simpl; try assumption.
        destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
        exists START. intros. split. assumption. split. assumption. split.
        intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
        intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption. }
        subst.
        { constructor; simpl; repeat rewrite ZMap.gss; simpl; try assumption; try lia.
          - destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
          - exists START. intros. split. assumption. split. assumption. split.
            intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
            intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption.
          - intros. destruct_zmap. lia. apply pud_pool_unused. lia.
          - intros. destruct_zmap. lia. apply pmd_pool_unused. lia.
          - intros. destruct_zmap. lia. apply pte_pool_unused. lia.
          - exists (fun addr => if addr =? (START + _vmid * 33550336 + 4096 + e_pud_used_pages (e_s2pts (shared lst)) @ _vmid * 4096)
                        then  pgd_idx[_addr] + (START + _vmid * 33550336)
                        else pgd_mapp addr).
            intros. rewrite pool_start_value.
            destruct_zmap. right. split. rewrite phys_page_add_rem; try lia.
            apply phys_page_id_iff; try lia. solve_phys_page_mod.
            rewrite phys_page_add_rem; try lia. simpl_bool_eq. reflexivity.
            apply phys_page_id_iff; try lia. solve_phys_page_mod.
            pose proof (pgd_pool_used addr) as used_pgd.
            destruct used_pgd as [U|[U1 U2] ]. auto. right. split. lia.
            destruct_if. lia. assumption.
          - exists (fun addr => if addr =? (START + _vmid * 33550336 + 69632 + e_pmd_used_pages (e_s2pts (shared lst)) @ _vmid * 4096)
                        then pud_idx[ _addr] + (START + _vmid * 33550336 + 4096 + e_pud_used_pages (e_s2pts (shared lst)) @ _vmid * 4096)
                        else pud_mapp addr).
            intros. rewrite pool_start_value.
            destruct_zmap. right. split. rewrite phys_page_add_rem; try lia.
            apply phys_page_id_iff; try lia. solve_phys_page_mod.
            rewrite phys_page_add_rem; try lia. simpl_bool_eq. reflexivity.
            apply phys_page_id_iff; try lia. solve_phys_page_mod.
            pose proof (pud_pool_used addr) as used_pud.
            destruct used_pud as [U|[U1 U2] ]. auto. right. split. lia.
            destruct_if. lia. assumption.
          - exists (fun addr => if addr =? (START + _vmid * 33550336 + 2097152 + e_pte_used_pages (e_s2pts (shared lst)) @ _vmid * 4096)
                        then pmd_idx[ _addr] + (START + _vmid * 33550336 + 69632 + e_pmd_used_pages (e_s2pts (shared lst)) @ _vmid * 4096)
                        else pmd_mapp addr).
            intros. rewrite pool_start_value.
            destruct_zmap. right. right. split.
            apply add_n3_and_3. apply n4096_and_3. solve_phys_page_mod. reflexivity.
            rewrite phys_page_add_rem; try lia. simpl_bool_eq. split. lia. reflexivity.
            apply phys_page_id_iff; try lia. solve_phys_page_mod.
            pose proof (pmd_pool_used addr) as used_pmd.
            destruct used_pmd as [U|[U|(U1 & U2 &U3)] ]. auto. auto. right. right.
            split. assumption. split. lia. destruct_if. lia. assumption.
          - intros. autounfold with proof in *.
            pose proof (lv2pt addr Haddr pmd) as old_lv2pt.
            assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
            assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
            assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
            rewrite pool_start_value in *.
            destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
            { (* pgd_idx == pgd_idx' *)
              rewrite Hpgdidx in *. rewrite ZMap.gss.
              rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
              destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
              { (* pud_idx == pud_idx' *)
                rewrite Hpudidx in *. rewrite ZMap.gss.
                rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                { (* pmd_idx == pmd_idx' *)
                  rewrite Hpmdidx in *. rewrite ZMap.gss.
                  assert(Haddreq: _addr / 4096 / 512 = addr / 4096 / 512).
                  { apply addr_eq_indices_iff_lv2; try assumption; auto. }
                  rewrite Haddreq in *.
                  split.
                  - intros. apply old_lv2pt in H. frewrite. lia.
                  - intros (? & ? & ? & ? & ? & ?). frewrite.
                    assert(False). apply H3. apply add_n3_and_3. apply n4096_and_3. solve_phys_page_mod. reflexivity.
                    inv H5.
                }
                { (* pmd_idx <> pmd_idx' *)
                  assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                  { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                  split.
                  - intros. apply old_lv2pt in H. frewrite. lia.
                  - intros (? & ? & ? & ? & ? & ?).
                    assert_gso' H2. lia. rewrite (ZMap.gso _ _ Hneq) in H2.
                    exploit H4. grewrite. apply pmd_pool_unused. lia.
                    intro T; inv T.
                }
              }
              { (* pud_idx <> pud_idx' *)
                assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                split.
                - intros. apply old_lv2pt in H. frewrite. lia.
                - intros (? & ? & ? & ? & ? & ?).
                  assert_gso' H1. lia. rewrite (ZMap.gso _ _ Hneq) in H1.
                  exploit H1. match goal with [|- phys_page[?v]=0] => assert(v=0) end.
                  apply pud_pool_unused. lia. grewrite. reflexivity.
                  intro T; inv T.
              }
            }
            { (* pgd_idx <> pgd_idx' *)
              assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
              { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
              rewrite ZMap.gso. 2: lia.
              rewrite ZMap.gso.
              2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                   right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as U end.
                   destruct U as [U|U]; try rewrite U; try lia. }
              rewrite ZMap.gso.
              2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                   right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                   destruct U as [U|U]; try rewrite U; try lia. }
              assumption.
            }
          - intros. autounfold with proof in *.
            pose proof (lv3pt addr Haddr pte) as old_lv3pt.
            assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
            assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
            assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
            assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
            rewrite pool_start_value in *.
            destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
            { (* pgd_idx == pgd_idx' *)
              rewrite Hpgdidx in *. rewrite ZMap.gss.
              rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
              destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
              { (* pud_idx == pud_idx' *)
                rewrite Hpudidx in *. rewrite ZMap.gss.
                rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                { (* pmd_idx == pmd_idx' *)
                  rewrite Hpmdidx in *. rewrite ZMap.gss.
                  rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                  destruct (pte_idx[_addr] =? pte_idx[addr]) eqn:Hpteidx; bool_rel.
                  { (* pte_idx == pte_idx' *)
                    rewrite Hpteidx in *. rewrite ZMap.gss.
                    assert(Haddreq: _addr / 4096 = addr / 4096).
                    { apply addr_eq_indices_iff_lv3; try assumption; auto. }
                    rewrite Haddreq in *. rewrite ZMap.gss.
                    split.
                    - intros. inv H. repeat constructor; try lia.
                      apply add_n3_and_3. apply n4096_and_3. solve_phys_page_mod. reflexivity.
                      apply or_n_ne_zero. lia.
                    - intros (? & ? & ? & ? & ? & ? & ?). grewrite. reflexivity.
                  }
                  { (* pte_idx <> pte_idx' *)
                    assert(Haddreq: addr / 4096 <> _addr / 4096).
                    { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                    rewrite (ZMap.gso _ _ Haddreq).
                    split.
                    - intros. apply old_lv3pt in H. frewrite. lia.
                    - intros (? & ? & ? & ? & ? & ? & ?).
                      assert_gso' H4. lia. rewrite (ZMap.gso _ _ Hneq) in H4.
                      rewrite H4 in H5. exploit H5. grewrite. apply pte_pool_unused. lia.
                      intro T; inv T.
                  }
                }
                { (* pmd_idx <> pmd_idx' *)
                  assert(Haddreq: addr / 4096 <> _addr / 4096).
                  { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                  rewrite (ZMap.gso _ _ Haddreq).
                  split.
                  - intros T. apply old_lv3pt in T. frewrite. lia.
                  - intros (? & ? & ? & ? & ? & ?).
                    assert_gso' H2. lia. rewrite (ZMap.gso _ _ Hneq) in H2.
                    rewrite (ZMap.gso _ _ Hneq) in H3.
                    exploit H3. match goal with [|- phys_page[?v]=0] => assert(v=0) end.
                    apply pmd_pool_unused. lia. grewrite. reflexivity.
                    intro T; inv T.
                }
              }
              { (* pud_idx <> pud_idx' *)
                assert(Haddreq: addr / 4096 <> _addr / 4096).
                { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                rewrite (ZMap.gso _ _ Haddreq).
                split.
                - intros T. apply old_lv3pt in T. frewrite. lia.
                - intros (? & ? & ? & ? & ? & ?).
                  assert_gso' H1. lia. rewrite (ZMap.gso _ _ Hneq) in H1.
                  exploit H1. match goal with [|- phys_page[?v]=0] => assert(v=0) end.
                  apply pud_pool_unused. lia. grewrite. reflexivity.
                  intro T; inv T.
              }
            }
            { (* pgd_idx <> pgd_idx' *)
              assert(Haddreq: addr / 4096 <> _addr / 4096).
              { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
              rewrite (ZMap.gso _ _ Haddreq).
              rewrite ZMap.gso. 2: lia.
              rewrite ZMap.gso.
              2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                   right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as U end.
                   destruct U as [U|U]; try rewrite U; try lia. }
              rewrite ZMap.gso.
              2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                   right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                   destruct U as [U|U]; try rewrite U; try lia. }
              split.
              intros. apply old_lv3pt in H.
              rewrite ZMap.gso.
              2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                   right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                   destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                   lia. lia. }
              assumption.
              intros (? & ? & ? & ? & ? & ? & ?).
              assert_gso' H4.
              apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
              right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
              destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
              lia. lia. rewrite (ZMap.gso _ _ Hneq) in H4.
              apply old_lv3pt. split_and; assumption.
            }
          - intros addr Haddr (? & ? & ? & ?). autounfold with proof in *.
            assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
            assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
            assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
            assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
            rewrite pool_start_value in *.
            destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
            { (* pgd_idx == pgd_idx' *)
              rewrite Hpgdidx in *. rewrite ZMap.gss in *.
              rewrite phys_page_add_rem in *; try lia. all: try apply phys_page_id_iff; try lia; try solve_phys_page_mod.
              destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
              { (* pud_idx == pud_idx' *)
                rewrite Hpudidx in *. rewrite ZMap.gss in *.
                rewrite phys_page_add_rem in *; try lia. all: try apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                { (* pmd_idx == pmd_idx' *)
                  rewrite Hpmdidx in *. rewrite ZMap.gss in *.
                  rewrite phys_page_add_rem; try lia. all: try apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                  exists _addr. eexists. split_and; try assumption; try lia.
                  replace (1 << 48 - 1) with 281474976710655 in * by reflexivity. lia.
                  reflexivity. rewrite ZMap.gss. apply or_n_ne_zero. lia.
                }
                { (* pmd_idx <> pmd_idx' *)
                  assert_gso. lia. rewrite (ZMap.gso _ _ Hneq) in *.
                  rewrite pmd_pool_unused in H2. inv H2. lia.
                }
              }
              { (* pud_idx <> pud_idx' *)
                assert_gso' H1. lia. rewrite (ZMap.gso _ _ Hneq) in H1.
                rewrite pud_pool_unused in H1. replace (phys_page[0]) with 0 in H1 by reflexivity. contra. lia.
              }
            }
            { (* pgd_idx <> pgd_idx' *)
              assert_gso' H0. lia. rewrite (ZMap.gso _ _ Hneq) in *.
              assert_gso' H1.
              apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
              right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as U end.
              destruct U as [U|U]; try rewrite U; try lia.
              rewrite (ZMap.gso _ _ Hneq0) in *.
              assert_gso' H2.
              apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
              right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
              destruct U as [U|U]; try rewrite U; try lia.
              rewrite (ZMap.gso _ _ Hneq1) in *.
              exploit (lv3nonempty addr Haddr). split_and; assumption.
              intros (addr' & pte' & ? & ? & ? & ? & ? & ? & ?).
              exists addr', pte'. rewrite ZMap.gso.
              split_and; try assumption; lia.
              apply idx_plus_base_diff.
              assert(Hpte_idx_range'': 0 <= (addr' >> 9) & 4088 <= 4088) by (split; somega).
              lia. lia. apply phys_page_mod_4096. solve_phys_page_mod.
              right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
              destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. rewrite U in H2. inv H2.
              contra. lia.
            }
        }
      }
      {
        (* level 2 exists *)
        match goal with |- context[(e_pgd_pool _) @ ?v ] => pose proof (pgd_pool_used v) as Hpgd end.
        destruct Hpgd as [Hpgd|Hpgd]. rewrite Hpgd in Case0. inv Case0.
        unfold walk_pud_spec. rewrite pool_start_value. simpl.
        rewrite Case0. autounfold with sem. extract_if. lia. extract_if. assumption.
        rewrite idx_or_base; try lia; try solve_phys_page_mod. 2: apply phys_page_mod_4096.
        destruct_if. lia. destruct_if. 2: lia.
        destruct_if.
        { (* level 3 dess not exist *)
          extract_if. rewrite x_shiftl_12. lia. rewrite Cond3.
          unfold walk_pmd_spec. simpl. rewrite ZMap.gss. simpl.
          rewrite pool_start_value.
          rewrite x_shiftl_12. rewrite base_or_perm; try lia; try solve_phys_page_mod.
          rewrite phys_page_add_rem; try lia.
          2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
          destruct_if. lia. autounfold with sem.
          extract_if. lia. extract_if. assumption.
          rewrite idx_or_base; try lia; try solve_phys_page_mod.
          destruct_if. lia. destruct_if. lia. destruct_if. 2: lia.
          rewrite pmd_pool_unused; try lia.
          extract_if. rewrite x_shiftl_12. lia. rewrite Cond6.
          extract_if. rewrite x_shiftl_12. lia. rewrite Cond7.
          match goal with
          | |- context[if ?c then ?a else ?a] => replace (if c then a else a) with a by (destruct_if; reflexivity)
          end.
          replace (phys_page[0] =? 0) with true by reflexivity.
          extract_if. bool_rel. apply or_n3_and_3. reflexivity. rewrite Cond8.
          unfold v_set_pte_spec. autounfold with sem; simpl.
          extract_if. lia. extract_if. assumption.
          rewrite ZMap.gss. simpl. rewrite pool_start_value.
          rewrite x_shiftl_12. rewrite base_or_perm with (b:=3); try lia; try solve_phys_page_mod.
          rewrite phys_page_add_rem; try lia.
          2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
          rewrite idx_or_base; try lia; try solve_phys_page_mod.
          destruct_if. lia. destruct_if. lia. destruct_if. lia. extract_if. lia. rewrite Cond11.
          repeat
            match goal with
            | [|- context[(?st.[shared].[e_s2pts] :< ?v).[shared].[e_s2pts] :< ?v2] ] =>
                replace ((st.[shared].[e_s2pts] :< v).[shared].[e_s2pts] :< v2) with (st.[shared].[e_s2pts] :< v2) by reflexivity
            end.
          repeat rewrite ZMap.set2.
          eexists; split. reflexivity.
          constructor. destruct same_rel. constructor; simpl; try assumption.
          intros. destruct (vmid =? _vmid) eqn:Hvmideq; bool_rel.
          2: { pose proof (pt_rel vmid Hvmid). destruct H.
          constructor; simpl in *; repeat rewrite (ZMap.gso _ _ Hvmideq); simpl; try assumption.
          destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
          exists START. intros. split. assumption. split. assumption. split.
          intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
          intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption. }
          subst.
          { constructor; simpl; repeat rewrite ZMap.gss; simpl; try assumption; try lia.
            - destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
            - exists START. intros. split. assumption. split. assumption. split.
              intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
              intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption.
            - intros. destruct_zmap. lia. apply pud_pool_unused. lia.
            - intros. destruct_zmap. lia. apply pmd_pool_unused. lia.
            - intros. destruct_zmap. lia. apply pte_pool_unused. lia.
            - exists pgd_mapp. rewrite pool_start_value. assumption.
            - exists (fun addr => if addr =? (START + _vmid * 33550336 + 69632 + e_pmd_used_pages (e_s2pts (shared lst)) @ _vmid * 4096)
                          then pud_idx[ _addr] + phys_page[ (e_pgd_pool (e_s2pts (shared lst)) @ _vmid) @ (pgd_idx[ _addr] + (START + _vmid * 33550336))]
                          else pud_mapp addr).
              intros. rewrite pool_start_value.
              destruct_zmap. right. split. rewrite phys_page_add_rem; try lia.
              apply phys_page_id_iff; try lia. solve_phys_page_mod.
              rewrite phys_page_add_rem; try lia. simpl_bool_eq. reflexivity.
              apply phys_page_id_iff; try lia. solve_phys_page_mod.
              pose proof (pud_pool_used addr) as used_pud.
              destruct used_pud as [U|[U1 U2] ]. auto. right. split. lia.
              destruct_if. lia. assumption.
            - exists (fun addr => if addr =? (START + _vmid * 33550336 + 2097152 + e_pte_used_pages (e_s2pts (shared lst)) @ _vmid * 4096)
                          then pmd_idx[ _addr] + (START + _vmid * 33550336 + 69632 + e_pmd_used_pages (e_s2pts (shared lst)) @ _vmid * 4096)
                          else pmd_mapp addr).
              intros. rewrite pool_start_value.
              destruct_zmap. right. right. split.
              apply add_n3_and_3. apply n4096_and_3. solve_phys_page_mod. reflexivity.
              rewrite phys_page_add_rem; try lia. simpl_bool_eq. split. lia. reflexivity.
              apply phys_page_id_iff; try lia. solve_phys_page_mod.
              pose proof (pmd_pool_used addr) as used_pmd.
              destruct used_pmd as [U|[U|(U1 & U2 &U3)] ]. auto. auto. right. right.
              split. assumption. split. lia. destruct_if. lia. assumption.
            - intros. autounfold with proof in *.
              pose proof (lv2pt addr Haddr pmd) as old_lv2pt.
              assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
              assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
              assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
              rewrite pool_start_value in *.
              destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
              { (* pgd_idx == pgd_idx' *)
                rewrite Hpgdidx in *.
                destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
                { (* pud_idx == pud_idx' *)
                  rewrite Hpudidx in *. rewrite ZMap.gss.
                  rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                  destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                  { (* pmd_idx == pmd_idx' *)
                    rewrite Hpmdidx in *. rewrite ZMap.gss.
                    assert(Haddreq: _addr / 4096 / 512 = addr / 4096 / 512).
                    { apply addr_eq_indices_iff_lv2; try assumption; auto. }
                    rewrite Haddreq in *.
                    split.
                    - intros. apply old_lv2pt in H. frewrite. lia.
                    - intros (? & ? & ? & ? & ? & ?). frewrite.
                      assert(False). apply H3. apply add_n3_and_3. apply n4096_and_3. solve_phys_page_mod. reflexivity.
                      inv H5.
                  }
                  { (* pmd_idx <> pmd_idx' *)
                    assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                    { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                    split.
                    - intros. apply old_lv2pt in H. frewrite. lia.
                    - intros (? & ? & ? & ? & ? & ?).
                      assert_gso' H2. lia. rewrite (ZMap.gso _ _ Hneq) in H2.
                      exploit H4. grewrite. apply pmd_pool_unused. lia.
                      intro T; inv T.
                  }
                }
                { (* pud_idx <> pud_idx' *)
                  assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                  { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                    rewrite ZMap.gso. 2: lia.
                    rewrite ZMap.gso.
                    2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                        right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                        destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia. }
                    assumption.
                }
              }
              { (* pgd_idx <> pgd_idx' *)
                assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                rewrite ZMap.gso.
                2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                     right.
                     match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U end.
                     match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU end.
                     destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                     destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                     red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. lia. }
                rewrite ZMap.gso.
                2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                    right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                    destruct U as [U|U]; try rewrite U; try lia. replace (phys_page[0]) with 0 by reflexivity. lia. }
                assumption.
              }
            - intros. autounfold with proof in *.
              pose proof (lv3pt addr Haddr pte) as old_lv3pt.
              assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
              assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
              assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
              assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
              rewrite pool_start_value in *.
              destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
              { (* pgd_idx == pgd_idx' *)
                rewrite Hpgdidx in *.
                destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
                { (* pud_idx == pud_idx' *)
                  rewrite Hpudidx in *. rewrite ZMap.gss.
                  rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                  destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                  { (* pmd_idx == pmd_idx' *)
                    rewrite Hpmdidx in *. rewrite ZMap.gss.
                    rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                    destruct (pte_idx[_addr] =? pte_idx[addr]) eqn:Hpteidx; bool_rel.
                    { (* pte_idx == pte_idx' *)
                      rewrite Hpteidx in *. rewrite ZMap.gss.
                      assert(Haddreq: _addr / 4096 = addr / 4096).
                      { apply addr_eq_indices_iff_lv3; try assumption; auto. }
                      rewrite Haddreq in *. rewrite ZMap.gss.
                      split.
                      - intros. inv H. repeat constructor; try lia.
                        apply add_n3_and_3. apply n4096_and_3. solve_phys_page_mod. reflexivity.
                        apply or_n_ne_zero. lia.
                      - intros (? & ? & ? & ? & ? & ? & ?). grewrite. reflexivity.
                    }
                    { (* pte_idx <> pte_idx' *)
                      assert(Haddreq: addr / 4096 <> _addr / 4096).
                      { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                      rewrite (ZMap.gso _ _ Haddreq).
                      split.
                      - intros. apply old_lv3pt in H. frewrite. lia.
                      - intros (? & ? & ? & ? & ? & ? & ?).
                        assert_gso' H4. lia. rewrite (ZMap.gso _ _ Hneq) in H4.
                        rewrite H4 in H5. exploit H5. grewrite. apply pte_pool_unused. lia.
                        intro T; inv T.
                    }
                  }
                  { (* pmd_idx <> pmd_idx' *)
                    assert(Haddreq: addr / 4096 <> _addr / 4096).
                    { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                    rewrite (ZMap.gso _ _ Haddreq).
                    split.
                    - intros T. apply old_lv3pt in T. frewrite. lia.
                    - intros (? & ? & ? & ? & ? & ?).
                      assert_gso' H2. lia. rewrite (ZMap.gso _ _ Hneq) in H2.
                      rewrite (ZMap.gso _ _ Hneq) in H3.
                      exploit H3. match goal with [|- phys_page[?v]=0] => assert(v=0) end.
                      apply pmd_pool_unused. lia. grewrite. reflexivity.
                      intro T; inv T.
                  }
                }
                { (* pud_idx <> pud_idx' *)
                  assert(Haddreq: addr / 4096 <> _addr / 4096).
                  { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                  rewrite (ZMap.gso _ _ Haddreq).
                  rewrite ZMap.gso. 2: lia.
                  rewrite ZMap.gso.
                  2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                      destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia. }
                  split.
                  intros. apply old_lv3pt in H.
                  rewrite ZMap.gso.
                  2: { apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. solve_phys_page_mod.
                       right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                       destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                       lia. lia. }
                  assumption.
                  intros (? & ? & ? & ? & ? & ? & ?).
                  assert_gso' H4.
                  apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. solve_phys_page_mod.
                  right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                  destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia. lia.
                  rewrite (ZMap.gso _ _ Hneq) in H4. apply old_lv3pt. split_and; assumption.
                }
              }
              { (* pgd_idx <> pgd_idx' *)
                assert(Haddreq: addr / 4096 <> _addr / 4096).
                { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                rewrite (ZMap.gso _ _ Haddreq).
                rewrite ZMap.gso.
                2: { apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                     right.
                     match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U end.
                     match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU end.
                     destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                     destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                     red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. lia. }
                rewrite ZMap.gso.
                2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                    right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                    destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia. }
                split.
                intros. apply old_lv3pt in H.
                rewrite ZMap.gso.
                2: { apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. solve_phys_page_mod.
                      right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                      destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                      lia. lia. }
                assumption.
                intros (? & ? & ? & ? & ? & ? & ?).
                assert_gso' H4.
                apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. solve_phys_page_mod.
                right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia. lia.
                rewrite (ZMap.gso _ _ Hneq) in H4. apply old_lv3pt. split_and; assumption.
              }
            - intros addr Haddr (? & ? & ? & ?). autounfold with proof in *.
              assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
              assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
              assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
              assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
              rewrite pool_start_value in *.
              destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
              { (* pgd_idx == pgd_idx' *)
                rewrite Hpgdidx in *.
                destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
                { (* pud_idx == pud_idx' *)
                  rewrite Hpudidx in *. rewrite ZMap.gss in *.
                  rewrite phys_page_add_rem in *; try lia. all: try apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                  destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                  { (* pmd_idx == pmd_idx' *)
                    rewrite Hpmdidx in *. rewrite ZMap.gss in *.
                    rewrite phys_page_add_rem; try lia. all: try apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                    exists _addr. eexists. split_and; try assumption; try lia.
                    replace (1 << 48 - 1) with 281474976710655 in * by reflexivity. lia.
                    reflexivity. rewrite ZMap.gss. apply or_n_ne_zero. lia.
                  }
                  { (* pmd_idx <> pmd_idx' *)
                    assert_gso. lia. rewrite (ZMap.gso _ _ Hneq) in *.
                    rewrite pmd_pool_unused in H2. inv H2. lia.
                  }
                }
                { (* pud_idx <> pud_idx' *)
                  assert_gso' H1. lia. rewrite (ZMap.gso _ _ Hneq) in *.
                  assert_gso' H2. apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                  right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                  destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia.
                  rewrite (ZMap.gso _ _ Hneq0) in *.
                  exploit (lv3nonempty addr Haddr). split_and; assumption.
                  intros (addr' & pte' & ? & ? & ? & ? & ? & ? & ?).
                  exists addr', pte'. rewrite ZMap.gso.
                  split_and; try assumption; lia.
                  apply idx_plus_base_diff.
                  assert(Hpte_idx_range'': 0 <= (addr' >> 9) & 4088 <= 4088) by (split; somega).
                  lia. lia. apply phys_page_mod_4096. solve_phys_page_mod.
                  right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                  destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. rewrite U in H2. inv H2.
                  contra. lia.
                }
              }
              { (* pgd_idx <> pgd_idx' *)
                assert_gso' H1.
                apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                right.
                match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U end.
                match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU end.
                destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. lia.
                rewrite (ZMap.gso _ _ Hneq) in *.
                assert_gso' H2.
                apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as U end.
                destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia.
                rewrite (ZMap.gso _ _ Hneq0) in *.
                exploit (lv3nonempty addr Haddr). split_and; assumption.
                intros (addr' & pte' & ? & ? & ? & ? & ? & ? & ?).
                exists addr', pte'. rewrite ZMap.gso.
                split_and; try assumption; lia.
                apply idx_plus_base_diff.
                assert(Hpte_idx_range'': 0 <= (addr' >> 9) & 4088 <= 4088) by (split; somega).
                lia. lia. apply phys_page_mod_4096. solve_phys_page_mod.
                right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. rewrite U in H2. inv H2.
                contra. lia.
              }
          }
        }
        { (* level 3 exists *)
          match goal with |- context[(e_pud_pool _) @ ?v ] => pose proof (pud_pool_used v) as Hpud end.
          destruct Hpud as [Hpud|Hpud]. rewrite Hpud in Case3. inv Case3.
          unfold walk_pmd_spec. rewrite pool_start_value. simpl.
          rewrite Case3. autounfold with sem. extract_if. lia. extract_if. assumption.
          rewrite idx_or_base; try lia; try solve_phys_page_mod. 2: apply phys_page_mod_4096.
          destruct_if. lia. destruct_if. lia. destruct_if. 2: lia.
          destruct_if.
          { (* level 4 dess not exist *)
            extract_if. rewrite x_shiftl_12. lia. rewrite Cond5.
            extract_if. rewrite x_shiftl_12. lia. rewrite Cond6.
            match goal with
            | |- context[if ?c then ?a else ?a] => replace (if c then a else a) with a by (destruct_if; reflexivity)
            end.
            extract_if. bool_rel. apply or_n3_and_3. reflexivity. rewrite Cond7.
            unfold v_set_pte_spec. autounfold with sem; simpl.
            extract_if. lia. extract_if. assumption.
            rewrite ZMap.gss. simpl. rewrite pool_start_value.
            rewrite x_shiftl_12. rewrite base_or_perm with (b:=3); try lia; try solve_phys_page_mod.
            rewrite phys_page_add_rem; try lia.
            2: { apply phys_page_id_iff; try lia. solve_phys_page_mod. }
            rewrite idx_or_base; try lia; try solve_phys_page_mod.
            destruct_if. lia. destruct_if. lia. destruct_if. lia. extract_if. lia. rewrite Cond10.
            repeat
              match goal with
              | [|- context[(?st.[shared].[e_s2pts] :< ?v).[shared].[e_s2pts] :< ?v2] ] =>
                  replace ((st.[shared].[e_s2pts] :< v).[shared].[e_s2pts] :< v2) with (st.[shared].[e_s2pts] :< v2) by reflexivity
              end.
            repeat rewrite ZMap.set2.
            eexists; split. reflexivity.
            constructor. destruct same_rel. constructor; simpl; try assumption.
            intros. destruct (vmid =? _vmid) eqn:Hvmideq; bool_rel.
            2: { pose proof (pt_rel vmid Hvmid). destruct H.
            constructor; simpl in *; repeat rewrite (ZMap.gso _ _ Hvmideq); simpl; try assumption.
            destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
            exists START. intros. split. assumption. split. assumption. split.
            intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
            intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption. }
            subst.
            { constructor; simpl; repeat rewrite ZMap.gss; simpl; try assumption; try lia.
              - destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
              - exists START. intros. split. assumption. split. assumption. split.
                intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
                intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption.
              - rewrite pool_start_value. assumption.
              - intros. destruct_zmap. lia. apply pmd_pool_unused. lia.
              - intros. destruct_zmap. lia. apply pte_pool_unused. lia.
              - exists pgd_mapp. rewrite pool_start_value. assumption.
              - exists pud_mapp. rewrite pool_start_value. assumption.
              - exists (fun addr => if addr =? (START + _vmid * 33550336 + 2097152 + e_pte_used_pages (e_s2pts (shared lst)) @ _vmid * 4096)
                            then
                              pmd_idx[ _addr] +
                                phys_page[ (e_pud_pool (e_s2pts (shared lst)) @ _vmid) @
                                             (pud_idx[ _addr] + phys_page[ (e_pgd_pool (e_s2pts (shared lst)) @ _vmid) @ (pgd_idx[ _addr] + (START + _vmid * 33550336))])]
                            else pmd_mapp addr).
                intros. rewrite pool_start_value.
                destruct_zmap. right. right. split.
                apply add_n3_and_3. apply n4096_and_3. solve_phys_page_mod. reflexivity.
                rewrite phys_page_add_rem; try lia. simpl_bool_eq. split. lia. reflexivity.
                apply phys_page_id_iff; try lia. solve_phys_page_mod.
                pose proof (pmd_pool_used addr) as used_pmd.
                destruct used_pmd as [U|[U|(U1 & U2 &U3)] ]. auto. auto. right. right.
                split. assumption. split. lia. destruct_if. lia. assumption.
              - intros. autounfold with proof in *.
                pose proof (lv2pt addr Haddr pmd) as old_lv2pt.
                assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
                assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
                assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
                rewrite pool_start_value in *.
                destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
                { (* pgd_idx == pgd_idx' *)
                  rewrite Hpgdidx in *.
                  destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
                  { (* pud_idx == pud_idx' *)
                    rewrite Hpudidx in *.
                    destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                    { (* pmd_idx == pmd_idx' *)
                      rewrite Hpmdidx in *. rewrite ZMap.gss.
                      assert(Haddreq: _addr / 4096 / 512 = addr / 4096 / 512).
                      { apply addr_eq_indices_iff_lv2; try assumption; auto. }
                      rewrite Haddreq in *.
                      split.
                      - intros. rewrite Prop1 in H. inv H.
                      - intros (? & ? & ? & ? & ? & ?). frewrite.
                        assert(False). apply H3. apply add_n3_and_3. apply n4096_and_3. solve_phys_page_mod. reflexivity.
                        inv H5.
                    }
                    { (* pmd_idx <> pmd_idx' *)
                      assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                      { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                      rewrite ZMap.gso. assumption. lia.
                    }
                  }
                  { (* pud_idx <> pud_idx' *)
                    assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                    { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                    rewrite ZMap.gso.
                    2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                         right.
                         match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U end.
                         match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU end.
                         destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                         destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                         red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. lia. }
                    assumption.
                  }
                }
                { (* pgd_idx <> pgd_idx' *)
                  assert(Haddreq: addr / 4096 / 512 <> _addr / 4096 / 512).
                  { red. intro T. apply addr_eq_indices_iff_lv2 in T; try assumption. lia. }
                  rewrite ZMap.gso.
                  2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right.
                      match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U end.
                      match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU end.
                      destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                      destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                      red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. destruct UU as (? & UU).
                      match type of UU with
                      | ?a = ?b => assert(a <> b)
                      end.
                      apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right.
                      match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U end.
                      match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU2 end.
                      destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                      destruct UU2 as [UU2|UU2]. rewrite UU2. replace (phys_page[0]) with 0 by reflexivity. lia.
                      red; intro TT. rewrite TT in U. destruct U as [U'1 U'2]. rewrite U'2 in UU2. lia.
                      contra.
                  }
                  assumption.
                }
              - intros. autounfold with proof in *.
                pose proof (lv3pt addr Haddr pte) as old_lv3pt.
                assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
                assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
                assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
                assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
                rewrite pool_start_value in *.
                destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
                { (* pgd_idx == pgd_idx' *)
                  rewrite Hpgdidx in *.
                  destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
                  { (* pud_idx == pud_idx' *)
                    rewrite Hpudidx in *.
                    destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                    { (* pmd_idx == pmd_idx' *)
                      rewrite Hpmdidx in *. rewrite ZMap.gss.
                      rewrite phys_page_add_rem; try lia. 2: apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                      destruct (pte_idx[_addr] =? pte_idx[addr]) eqn:Hpteidx; bool_rel.
                      { (* pte_idx == pte_idx' *)
                        rewrite Hpteidx in *. rewrite ZMap.gss.
                        assert(Haddreq: _addr / 4096 = addr / 4096).
                        { apply addr_eq_indices_iff_lv3; try assumption; auto. }
                        rewrite Haddreq in *. rewrite ZMap.gss.
                        split.
                        - intros. inv H. repeat constructor; try lia.
                          apply add_n3_and_3. apply n4096_and_3. solve_phys_page_mod. reflexivity.
                          apply or_n_ne_zero. lia.
                        - intros (? & ? & ? & ? & ? & ? & ?). grewrite. reflexivity.
                      }
                      { (* pte_idx <> pte_idx' *)
                        assert(Haddreq: addr / 4096 <> _addr / 4096).
                        { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                        rewrite (ZMap.gso _ _ Haddreq).
                        split.
                        - intros. apply old_lv3pt in H. frewrite. lia.
                        - intros (? & ? & ? & ? & ? & ? & ?).
                          assert_gso' H4. lia. rewrite (ZMap.gso _ _ Hneq) in H4.
                          rewrite H4 in H5. exploit H5. grewrite. apply pte_pool_unused. lia.
                          intro T; inv T.
                      }
                    }
                    { (* pmd_idx <> pmd_idx' *)
                      assert(Haddreq: addr / 4096 <> _addr / 4096).
                      { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                      rewrite (ZMap.gso _ _ Haddreq).
                      rewrite ZMap.gso. 2:lia.
                      split.
                      - intros. apply old_lv3pt in H.
                        rewrite ZMap.gso. assumption.
                        apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                        right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                        destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia. lia.
                      - intros (? & ? & ? & ? & ? & ? & ?).
                        assert_gso' H4.
                        apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                        right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                        destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia. lia.
                        rewrite (ZMap.gso _ _ Hneq) in H4. apply old_lv3pt. split_and; try assumption.
                    }
                  }
                  { (* pud_idx <> pud_idx' *)
                    assert(Haddreq: addr / 4096 <> _addr / 4096).
                    { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                    rewrite (ZMap.gso _ _ Haddreq).
                    rewrite ZMap.gso.
                    2: { apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                        right.
                        match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U end.
                        match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU end.
                        destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                        destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                        red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. destruct UU as (? & UU). lia. }
                    split.
                    - intros. apply old_lv3pt in H.
                      rewrite ZMap.gso. assumption.
                      apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                      destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia. lia.
                    - intros (? & ? & ? & ? & ? & ? & ?).
                      assert_gso' H4.
                      apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                      destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia. lia.
                      rewrite (ZMap.gso _ _ Hneq) in H4. apply old_lv3pt. split_and; try assumption.
                }
                }
                { (* pgd_idx <> pgd_idx' *)
                  assert(Haddreq: addr / 4096 <> _addr / 4096).
                  { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                  rewrite (ZMap.gso _ _ Haddreq).
                  rewrite ZMap.gso.
                  2: { apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                      right.
                      match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U end.
                      match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU end.
                      destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                      destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                      red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. destruct UU as (? & UU).
                      match type of UU with
                      | ?a = ?b => assert(a <> b)
                      end.
                      apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right.
                      match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U end.
                      match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU2 end.
                      destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                      destruct UU2 as [UU2|UU2]. rewrite UU2. replace (phys_page[0]) with 0 by reflexivity. lia.
                      red; intro TT. rewrite TT in U. destruct U as [U'1 U'2]. rewrite U'2 in UU2. lia.
                      contra. }
                    split.
                    - intros. apply old_lv3pt in H.
                      rewrite ZMap.gso. assumption.
                      apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                      destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia. lia.
                    - intros (? & ? & ? & ? & ? & ? & ?).
                      assert_gso' H4.
                      apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                      right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                      destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. lia. lia.
                      rewrite (ZMap.gso _ _ Hneq) in H4. apply old_lv3pt. split_and; try assumption.
                }
              - intros addr Haddr (? & ? & ? & ?). autounfold with proof in *.
                assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
                assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
                assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
                assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
                rewrite pool_start_value in *.
                destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
                { (* pgd_idx == pgd_idx' *)
                  rewrite Hpgdidx in *.
                  destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
                  { (* pud_idx == pud_idx' *)
                    rewrite Hpudidx in *.
                    destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                    { (* pmd_idx == pmd_idx' *)
                      rewrite Hpmdidx in *. rewrite ZMap.gss in *.
                      rewrite phys_page_add_rem; try lia. all: try apply phys_page_id_iff; try lia; try solve_phys_page_mod.
                      exists _addr. eexists. split_and; try assumption; try lia.
                      replace (1 << 48 - 1) with 281474976710655 in * by reflexivity. lia.
                      reflexivity. rewrite ZMap.gss. apply or_n_ne_zero. lia.
                    }
                    { (* pmd_idx <> pmd_idx' *)
                      assert_gso. lia. rewrite (ZMap.gso _ _ Hneq) in *.
                      exploit (lv3nonempty addr Haddr). split_and; assumption.
                      intros (addr' & pte' & ? & ? & ? & ? & ? & ? & ?).
                      exists addr', pte'. rewrite ZMap.gso.
                      split_and; try assumption; lia.
                      apply idx_plus_base_diff.
                      assert(Hpte_idx_range'': 0 <= (addr' >> 9) & 4088 <= 4088) by (split; somega).
                      lia. lia. apply phys_page_mod_4096. solve_phys_page_mod.
                      right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                      destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. rewrite U in H2. inv H2.
                      contra. lia.
                    }
                  }
                  { (* pud_idx <> pud_idx' *)
                    assert_gso' H2. apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                    right.
                    match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U end.
                    match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU end.
                    destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                    destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                    red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. destruct UU as (? & UU). lia.
                    rewrite (ZMap.gso _ _ Hneq) in *.
                    exploit (lv3nonempty addr Haddr). split_and; assumption.
                    intros (addr' & pte' & ? & ? & ? & ? & ? & ? & ?).
                    exists addr', pte'. rewrite ZMap.gso.
                    split_and; try assumption; lia.
                    apply idx_plus_base_diff.
                    assert(Hpte_idx_range'': 0 <= (addr' >> 9) & 4088 <= 4088) by (split; somega).
                    lia. lia. apply phys_page_mod_4096. solve_phys_page_mod.
                    right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                    destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. rewrite U in H2. inv H2.
                    contra. lia.
                  }
                }
                { (* pgd_idx <> pgd_idx' *)
                  assert_gso' H2.
                  apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                  right.
                  match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U end.
                  match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU end.
                  destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                  destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia.
                  red; intro T. rewrite T in U. destruct U as [U1 U2]. rewrite U2 in UU. destruct UU as (? & UU).
                  match type of UU with
                  | ?a = ?b => assert(a <> b)
                  end.
                  apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                  right.
                  match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as U end.
                  match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as UU2 end.
                  destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia.
                  destruct UU2 as [UU2|UU2]. rewrite UU2. replace (phys_page[0]) with 0 by reflexivity. lia.
                  red; intro TT. rewrite TT in U. destruct U as [U'1 U'2]. rewrite U'2 in UU2. lia.
                  contra.
                  rewrite (ZMap.gso _ _ Hneq) in *.
                  exploit (lv3nonempty addr Haddr). split_and; assumption.
                  intros (addr' & pte' & ? & ? & ? & ? & ? & ? & ?).
                  exists addr', pte'. rewrite ZMap.gso.
                  split_and; try assumption; lia.
                  apply idx_plus_base_diff.
                  assert(Hpte_idx_range'': 0 <= (addr' >> 9) & 4088 <= 4088) by (split; somega).
                  lia. lia. apply phys_page_mod_4096. solve_phys_page_mod.
                  right. match goal with | |- context[phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as U end.
                  destruct U as [U|[U|U] ]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. rewrite U in H2. inv H2.
                  contra. lia.
                }
            }
          }
          { (* level 4 exists *)
            destruct_if.
            2: {
              bool_rel.
              match type of Case8 with
              | ?pmd & 3 <> 3 =>
                pose proof (lv2pt _addr Prop2 pmd)
              end.
              destruct H. exploit H0; split_and; try assumption. reflexivity.
              red. intro T. rewrite T in Case7. apply Case7. reflexivity.
              intro T. rewrite Prop1 in T. inv T. }
            match goal with |- context[(e_pmd_pool _) @ ?v ] => pose proof (pmd_pool_used v) as Hpmd end.
            destruct Hpmd as [Hpmd|Hpmd]. rewrite Hpmd in Case7. inv Case7.
            unfold v_set_pte_spec. autounfold with sem; simpl.
            rewrite idx_or_base; try lia; try solve_phys_page_mod. 2: apply phys_page_mod_4096.
            extract_if. lia. extract_if. assumption.
            rewrite pool_start_value.
            destruct_if. lia. destruct_if. lia. destruct_if. lia. extract_if. lia. rewrite Cond7.
            repeat
              match goal with
              | [|- context[(?st.[shared].[e_s2pts] :< ?v).[shared].[e_s2pts] :< ?v2] ] =>
                  replace ((st.[shared].[e_s2pts] :< v).[shared].[e_s2pts] :< v2) with (st.[shared].[e_s2pts] :< v2) by reflexivity
              end.
            repeat rewrite ZMap.set2.
            eexists; split. reflexivity.
            constructor. destruct same_rel. constructor; simpl; try assumption.
            intros. destruct (vmid =? _vmid) eqn:Hvmideq; bool_rel.
            2: { pose proof (pt_rel vmid Hvmid). destruct H.
                 constructor; simpl in *; repeat rewrite (ZMap.gso _ _ Hvmideq); simpl; try assumption.
                 destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
                 exists START. intros. split. assumption. split. assumption. split.
                 intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
                 intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption. }
            subst.
            { constructor; simpl; repeat rewrite ZMap.gss; simpl; try assumption; try lia.
              - destruct_zmap. simpl. rewrite <- Heq. assumption. assumption.
              - exists START. intros. split. assumption. split. assumption. split.
                intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val; assumption.
                intros. destruct_zmap; simpl; autounfold with proof in *; eapply pool_val_h; assumption.
              - rewrite pool_start_value. assumption.
              - rewrite pool_start_value. assumption.
              - intros. destruct_zmap. lia. apply pte_pool_unused. lia.
              - exists pgd_mapp. rewrite pool_start_value. assumption.
              - exists pud_mapp. rewrite pool_start_value. assumption.
              - exists pmd_mapp. rewrite pool_start_value. assumption.
              - rewrite pool_start_value. apply lv2pt.
              - intros. autounfold with proof in *.
                pose proof (lv3pt addr Haddr pte) as old_lv3pt.
                assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
                assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
                assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
                assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
                rewrite pool_start_value in *.
                destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
                { (* pgd_idx == pgd_idx' *)
                  rewrite Hpgdidx in *.
                  destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
                  { (* pud_idx == pud_idx' *)
                    rewrite Hpudidx in *.
                    destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                    { (* pmd_idx == pmd_idx' *)
                      rewrite Hpmdidx in *.
                      destruct (pte_idx[_addr] =? pte_idx[addr]) eqn:Hpteidx; bool_rel.
                      { (* pte_idx == pte_idx' *)
                        rewrite Hpteidx in *. rewrite ZMap.gss.
                        assert(Haddreq: _addr / 4096 = addr / 4096).
                        { apply addr_eq_indices_iff_lv3; try assumption; auto. }
                        rewrite Haddreq in *. rewrite ZMap.gss.
                        split.
                        - intros. inv H. repeat constructor; try lia.
                          apply or_n_ne_zero. lia.
                        - intros (? & ? & ? & ? & ? & ? & ?). grewrite. reflexivity.
                      }
                      { (* pte_idx <> pte_idx' *)
                        assert(Haddreq: addr / 4096 <> _addr / 4096).
                        { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                        rewrite (ZMap.gso _ _ Haddreq).
                        rewrite ZMap.gso. assumption. lia.
                      }
                    }
                    { (* pmd_idx <> pmd_idx' *)
                      assert(Haddreq: addr / 4096 <> _addr / 4096).
                      { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                      rewrite (ZMap.gso _ _ Haddreq).
                      split.
                      - intros. apply old_lv3pt in H.
                        rewrite ZMap.gso. assumption.
                        apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                        right.
                        match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                        match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                        destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. destruct U as [U|U]. lia.
                        destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia. destruct UU as [UU|UU]. lia.
                        red; intro T. rewrite T in U. destruct U as (U1 & U2 & U3). rewrite U3 in UU. destruct UU as (? & ? & UU). lia.
                      - intros (? & ? & ? & ? & ? & ? & ?).
                        assert_gso' H4.
                        apply idx_plus_base_diff; first[ lia | apply phys_page_mod_4096 | solve_phys_page_mod].
                        right.
                        match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                        match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                        destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. destruct U as [U|U]. lia.
                        destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia. destruct UU as [UU|UU]. lia.
                        red; intro T. rewrite T in U. destruct U as (U1 & U2 & U3). rewrite U3 in UU. destruct UU as (? & ? & UU). lia.
                        rewrite (ZMap.gso _ _ Hneq) in H4. apply old_lv3pt. split_and; try assumption.
                    }
                  }
                  { (* pud_idx <> pud_idx' *)
                    assert(Haddreq: addr / 4096 <> _addr / 4096).
                    { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                    rewrite (ZMap.gso _ _ Haddreq).
                    split.
                    - intros. apply old_lv3pt in H. destruct H as (? & ? & ? & ? & ? & ? & ?).
                      rewrite ZMap.gso.
                      2: { apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                           right.
                           match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                           match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                           destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. red; intro T; rewrite T in *; contra.
                           destruct U as [U|U]. frewrite. contra.
                           destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. red; intro T; rewrite T in *; contra.
                           destruct UU as [UU|UU]. frewrite. contra.
                           red; intro T. rewrite T in U. destruct U as (U1 & U2 & U3). rewrite U3 in UU. destruct UU as (? & ? & UU).
                           match type of UU with
                           | ?a = ?b => assert(a <> b)
                           end.
                           apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                           right.
                           match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U' end.
                           match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU' end.
                           destruct U' as [U'|U']. rewrite U'. replace (phys_page[0]) with 0 by reflexivity. red; intro T'; rewrite T' in *; contra.
                           destruct UU' as [UU'|UU']. rewrite UU'. replace (phys_page[0]) with 0 by reflexivity. red; intro T'; rewrite T' in *; contra.
                           red; intro T'. rewrite T' in U'. destruct U' as [U'1 U'2]. rewrite U'2 in UU'. destruct UU' as (? & UU'). lia. contra. }
                      split_and; assumption.
                    - intros (? & ? & ? & ? & ? & ? & ?).
                      assert_gso' H4.
                      apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                      right.
                      match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                      match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                      destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. red; intro T; rewrite T in *; contra.
                      destruct U as [U|U]. frewrite. contra.
                      destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. red; intro T; rewrite T in *; contra.
                      destruct UU as [UU|UU]. frewrite. contra.
                      red; intro T. rewrite T in U. destruct U as (U1 & U2 & U3). rewrite U3 in UU. destruct UU as (? & ? & UU).
                      match type of UU with
                      | ?a = ?b => assert(a <> b)
                      end.
                      apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                      right.
                      match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U' end.
                      match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU' end.
                      destruct U' as [U'|U']. rewrite U'. replace (phys_page[0]) with 0 by reflexivity. red; intro T'; rewrite T' in *; contra.
                      destruct UU' as [UU'|UU']. rewrite UU'. replace (phys_page[0]) with 0 by reflexivity. red; intro T'; rewrite T' in *; contra.
                      red; intro T'. rewrite T' in U'. destruct U' as [U'1 U'2]. rewrite U'2 in UU'. destruct UU' as (? & UU'). lia. contra.
                      rewrite (ZMap.gso _ _ Hneq) in H4. apply old_lv3pt. split_and; try assumption.
                  }
                }
                { (* pgd_idx <> pgd_idx' *)
                  assert(Haddreq: addr / 4096 <> _addr / 4096).
                  { red. intro T. apply addr_eq_indices_iff_lv3 in T; try assumption. lia. }
                  rewrite (ZMap.gso _ _ Haddreq).
                  split.
                  - intros. apply old_lv3pt in H. destruct H as (? & ? & ? & ? & ? & ? & ?).
                    rewrite ZMap.gso.
                    2: { apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                         right.
                         match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                         match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                         destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. red; intro T; rewrite T in *; contra.
                         destruct U as [U|U]. frewrite. contra.
                         destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. red; intro T; rewrite T in *; contra.
                         destruct UU as [UU|UU]. frewrite. contra.
                         red; intro T. rewrite T in U. destruct U as (U1 & U2 & U3). rewrite U3 in UU. destruct UU as (? & ? & UU).
                         match type of UU with
                         | ?a = ?b => assert(a <> b)
                         end.
                         apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                         right.
                         match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U' end.
                         match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU' end.
                         destruct U' as [U'|U']. rewrite U'. replace (phys_page[0]) with 0 by reflexivity. red; intro T'; rewrite T' in *; contra.
                         destruct UU' as [UU'|UU']. rewrite UU'. replace (phys_page[0]) with 0 by reflexivity. red; intro T'; rewrite T' in *; contra.
                         red; intro T'. rewrite T' in U'. destruct U' as [U'1 U'2]. rewrite U'2 in UU'. destruct UU' as (? & UU').
                         match type of UU' with
                         | ?a = ?b => assert(a <> b)
                         end.
                         apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                         right.
                         match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as V' end.
                         match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as VV' end.
                         destruct V' as [V'|V']. rewrite V'. replace (phys_page[0]) with 0 by reflexivity. red; intro TT'; rewrite TT' in *; contra.
                         destruct VV' as [VV'|VV']. rewrite VV'. replace (phys_page[0]) with 0 by reflexivity. red; intro TT'; rewrite TT' in *; contra.
                         red; intro TT'. rewrite TT' in V'. destruct V' as [V'1 V'2]. rewrite V'2 in VV'. destruct VV' as (? & VV').
                         lia. contra. contra. }
                    split_and; assumption.
                  - intros (? & ? & ? & ? & ? & ? & ?).
                    assert_gso' H4.
                    apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                    right.
                    match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                    match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                    destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. red; intro T; rewrite T in *; contra.
                    destruct U as [U|U]. frewrite. contra.
                    destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. red; intro T; rewrite T in *; contra.
                    destruct UU as [UU|UU]. frewrite. contra.
                    red; intro T. rewrite T in U. destruct U as (U1 & U2 & U3). rewrite U3 in UU. destruct UU as (? & ? & UU).
                    match type of UU with
                    | ?a = ?b => assert(a <> b)
                    end.
                    apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                    right.
                    match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U' end.
                    match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU' end.
                    destruct U' as [U'|U']. rewrite U'. replace (phys_page[0]) with 0 by reflexivity. red; intro T'; rewrite T' in *; contra.
                    destruct UU' as [UU'|UU']. rewrite UU'. replace (phys_page[0]) with 0 by reflexivity. red; intro T'; rewrite T' in *; contra.
                    red; intro T'. rewrite T' in U'. destruct U' as [U'1 U'2]. rewrite U'2 in UU'. destruct UU' as (? & UU').
                    match type of UU' with
                    | ?a = ?b => assert(a <> b)
                    end.
                    apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                    right.
                    match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as V' end.
                    match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as VV' end.
                    destruct V' as [V'|V']. rewrite V'. replace (phys_page[0]) with 0 by reflexivity. red; intro TT'; rewrite TT' in *; contra.
                    destruct VV' as [VV'|VV']. rewrite VV'. replace (phys_page[0]) with 0 by reflexivity. red; intro TT'; rewrite TT' in *; contra.
                    red; intro TT'. rewrite TT' in V'. destruct V' as [V'1 V'2]. rewrite V'2 in VV'. destruct VV' as (? & VV').
                    lia. contra. contra.
                    rewrite (ZMap.gso _ _ Hneq) in H4. apply old_lv3pt. split_and; try assumption.
                }
              - intros addr Haddr (? & ? & ? & ?). autounfold with proof in *.
                assert(Hpdd_idx_range': 0 <= (addr >> 36) & 4088 <= 4088) by (split; somega).
                assert(Hpud_idx_range': 0 <= (addr >> 27) & 4088 <= 4088) by (split; somega).
                assert(Hpmd_idx_range': 0 <= (addr >> 18) & 4088 <= 4088) by (split; somega).
                assert(Hpte_idx_range': 0 <= (addr >> 9) & 4088 <= 4088) by (split; somega).
                rewrite pool_start_value in *.
                destruct (pgd_idx[_addr] =? pgd_idx[addr]) eqn:Hpgdidx; bool_rel.
                { (* pgd_idx == pgd_idx' *)
                  rewrite Hpgdidx in *.
                  destruct (pud_idx[_addr] =? pud_idx[addr]) eqn:Hpudidx; bool_rel.
                  { (* pud_idx == pud_idx' *)
                    rewrite Hpudidx in *.
                    destruct (pmd_idx[_addr] =? pmd_idx[addr]) eqn:Hpmdidx; bool_rel.
                    { (* pmd_idx == pmd_idx' *)
                      rewrite Hpmdidx in *.
                      exists _addr. eexists. split_and; try assumption; try lia.
                      replace (1 << 48 - 1) with 281474976710655 in * by reflexivity. lia.
                      reflexivity. rewrite ZMap.gss. apply or_n_ne_zero. lia.
                    }
                    { (* pmd_idx <> pmd_idx' *)
                      exploit (lv3nonempty addr Haddr). split_and; assumption.
                      intros (addr' & pte' & ? & ? & ? & ? & ? & ? & ?).
                      exists addr', pte'. rewrite ZMap.gso.
                      split_and; try assumption; lia.
                      apply idx_plus_base_diff.
                      assert(Hpte_idx_range'': 0 <= (addr' >> 9) & 4088 <= 4088) by (split; somega).
                      lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                      right.
                      match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                      match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                      destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. lia. destruct U as [U|U]. lia.
                      destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. lia. destruct UU as [UU|UU]. lia.
                      red; intro T. rewrite T in U. destruct U as (U1 & U2 & U3). rewrite U3 in UU. destruct UU as (? & ? & UU). lia.
                    }
                  }
                  { (* pud_idx <> pud_idx' *)
                    exploit (lv3nonempty addr Haddr). split_and; assumption.
                    intros (addr' & pte' & ? & ? & ? & ? & ? & ? & ?).
                    exists addr', pte'. rewrite ZMap.gso.
                    split_and; try assumption; lia.
                    apply idx_plus_base_diff.
                    assert(Hpte_idx_range'': 0 <= (addr' >> 9) & 4088 <= 4088) by (split; somega).
                    lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                    right.
                    match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as U end.
                    match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as UU end.
                    destruct U as [U|U]. rewrite U. replace (phys_page[0]) with 0 by reflexivity. red; intro T; rewrite T in *; contra.
                    destruct U as [U|U]. frewrite. contra.
                    destruct UU as [UU|UU]. rewrite UU. replace (phys_page[0]) with 0 by reflexivity. red; intro T; rewrite T in *; contra.
                    destruct UU as [UU|UU]. frewrite. contra.
                    red; intro T. rewrite T in U. destruct U as (U1 & U2 & U3). rewrite U3 in UU. destruct UU as (? & ? & UU).
                    match type of UU with
                    | ?a = ?b => assert(a <> b)
                    end.
                    apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                    right.
                    match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as U' end.
                    match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as UU' end.
                    destruct U' as [U'|U']. rewrite U'. replace (phys_page[0]) with 0 by reflexivity. red; intro T'; rewrite T' in *; contra.
                    destruct UU' as [UU'|UU']. rewrite UU'. replace (phys_page[0]) with 0 by reflexivity. red; intro T'; rewrite T' in *; contra.
                    red; intro T'. rewrite T' in U'. destruct U' as [U'1 U'2]. rewrite U'2 in UU'. destruct UU' as (? & UU'). lia. contra.
                  }
                }
                { (* pgd_idx <> pgd_idx' *)
                  exploit (lv3nonempty addr Haddr). split_and; assumption.
                  intros (addr' & pte' & ? & ? & ? & ? & ? & ? & ?).
                  exists addr', pte'. rewrite ZMap.gso.
                  split_and; try assumption; lia.
                  apply idx_plus_base_diff.
                  assert(Hpte_idx_range'': 0 <= (addr' >> 9) & 4088 <= 4088) by (split; somega).
                  lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                  right.
                  match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pmd_pool_used addr) as u end.
                  match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pmd_pool_used addr) as uu end.
                  destruct u as [u|u]. rewrite u. replace (phys_page[0]) with 0 by reflexivity. red; intro t; rewrite t in *; contra.
                  destruct u as [u|u]. frewrite. contra.
                  destruct uu as [uu|uu]. rewrite uu. replace (phys_page[0]) with 0 by reflexivity. red; intro t; rewrite t in *; contra.
                  destruct uu as [uu|uu]. frewrite. contra.
                  red; intro t. rewrite t in u. destruct u as (u1 & u2 & u3). rewrite u3 in uu. destruct uu as (? & ? & uu).
                  match type of uu with
                  | ?a = ?b => assert(a <> b)
                  end.
                  apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                  right.
                  match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pud_pool_used addr) as u' end.
                  match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pud_pool_used addr) as uu' end.
                  destruct u' as [u'|u']. rewrite u'. replace (phys_page[0]) with 0 by reflexivity. red; intro t'; rewrite t' in *; contra.
                  destruct uu' as [uu'|uu']. rewrite uu'. replace (phys_page[0]) with 0 by reflexivity. red; intro t'; rewrite t' in *; contra.
                  red; intro t'. rewrite t' in u'. destruct u' as [u'1 u'2]. rewrite u'2 in uu'. destruct uu' as (? & uu').
                  match type of uu' with
                  | ?a = ?b => assert(a <> b)
                  end.
                  apply idx_plus_base_diff. lia. lia. apply phys_page_mod_4096. apply phys_page_mod_4096.
                  right.
                  match goal with | |- context[phys_page[_ @ ?addr] <> _ ] => pose proof (pgd_pool_used addr) as v' end.
                  match goal with | |- context[_ <> phys_page[_ @ ?addr] ] => pose proof (pgd_pool_used addr) as vv' end.
                  destruct v' as [v'|v']. rewrite v'. replace (phys_page[0]) with 0 by reflexivity. red; intro tt'; rewrite tt' in *; contra.
                  destruct vv' as [vv'|vv']. rewrite vv'. replace (phys_page[0]) with 0 by reflexivity. red; intro tt'; rewrite tt' in *; contra.
                  red; intro tt'. rewrite tt' in v'. destruct v' as [v'1 v'2]. rewrite v'2 in vv'. destruct vv' as (? & vv').
                  lia. contra. contra.
                }
            }
          }
        }
      }
    }
  Qed.

  Lemma f_set_npt_refine:
    forall _vmid _addr _level _pte lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_npt_spec _vmid _addr _level _pte hst = Some hst'),
      exists lst', set_npt_spec_low _vmid _addr _level _pte lst = Some lst' /\ refrel hst' lst'.
  Proof.
    intros. destruct (_level =? 2) eqn:Hlevel; bool_rel.
    - eapply f_set_npt_refine_level2; eassumption.
    - eapply f_set_npt_refine_level3; eassumption.
  Qed.

End S2PTTreeOps_set_npt_RefProof.
