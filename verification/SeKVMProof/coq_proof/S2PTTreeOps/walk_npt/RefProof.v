Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTTreeOps.Layer.
Require Import S2PTTreeOps.RefineRel.
Require Import S2PTTreeOps.Spec.
Require Import S2PTTreeOps.walk_npt.LowSpec.
Require Import S2PTWalk.Layer.
Require Import S2PTWalk.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTTreeOps_walk_npt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Lemma f_walk_npt_refine:
    forall _vmid _addr lst hst hst' res
      (Hrel: refrel hst lst)
      (Hspec: walk_npt_spec _vmid _addr hst = Some (res, hst')),
    exists lst', walk_npt_spec_low _vmid _addr lst = Some (res, lst') /\ refrel hst' lst'.
  Proof.
    intros. inv Hrel.
    unfold walk_npt_spec, walk_npt_spec_low in *.
    repeat autounfold with sem in *.
    repeat simpl_hyp Hspec; repeat extract_prop.
    autounfold with proof in *.
    pose proof (pt_rel _vmid Prop3). inv H. simpl in *. autounfold with proof in *.
    destruct pool_start_value as (START & START_mod & START_range & pool_val & pool_val_h).
    destruct pgd_pool_used as (pgd_mapp & pgd_pool_used).
    destruct pud_pool_used as (pud_mapp & pud_pool_used).
    destruct pmd_pool_used as (pmd_mapp & pmd_pool_used).
    assert(Hlock: (e_locks (shared lst)) @ (24 + _vmid) = Some CPU_ID).
    { inv same_rel. frewrite. rewrite <- Prop1. reflexivity. }
    clear Prop1.
    assert(vttbr_eq_pool_start: (e_vttbr ((e_s2pts (shared lst)) @ _vmid)) & 281474976706560 = e_page_pool_start ((e_s2pts (shared lst)) @ _vmid)).
    { rewrite vttbr_rel in Prop0.
      rewrite vttbr_val; autounfold with proof in *. rewrite pool_val; try lia. rewrite phys_page_exp2_48; try lia. }
    assert(pool_start_value: e_page_pool_start ((e_s2pts (shared lst)) @ _vmid) = START + _vmid * 33550336).
    { rewrite pool_val; autounfold with proof in *. lia. lia. }
    rewrite pool_start_value in *.
    assert(pool_start_range: 0 < e_page_pool_start ((e_s2pts (shared lst)) @ _vmid) <= (1 << 40) - 33550336).
    { rewrite pool_val; autounfold with proof in *. rewrite x_shiftl_40. lia. lia. }
    assert(pool_start_4096: e_page_pool_start (e_s2pts (shared lst)) @ _vmid mod 4096 = 0).
    { rewrite pool_val; autounfold with proof in *. solve_phys_page_mod. lia. }
    assert(vttbr_pa_not_zero: (e_vttbr ((e_s2pts (shared lst)) @ _vmid)) & 281474976706560 =? 0 = false).
    { rewrite vttbr_eq_pool_start. lia. }
    unfold s2pt_walk in Hspec.
    {
      assert(Hvttbr: get_pt_vttbr_spec _vmid lst = Some ((lst.(shared).(e_s2pts) @ _vmid).(e_vttbr), lst)).
      { unfold get_pt_vttbr_spec. rewrite core_vttbr.
        autounfold with sem. destruct_if. destruct prop; try lia.
        destruct prop. reflexivity. contra.
        unfold COREVISOR. replace _vmid with 18 by lia. reflexivity. }
      rewrite Hvttbr.
      unfold walk_pgd_spec.
      rewrite vttbr_pa_not_zero.
      autounfold with sem.
      extract_if. lia. extract_if. assumption.
      rewrite vttbr_eq_pool_start; rewrite pool_start_value.
      assert(Hpgd_idx_range: 0 <= (_addr >> 36) & 4088 <= 4088) by (split; somega).
      rewrite idx_or_base; try lia; try solve_phys_page_mod.
      destruct_if. 2: lia.
      unfold walk_pud_spec.
      destruct_if.
      { (* level 2 does not exist *)
        unfold walk_pmd_spec. replace (phys_page[0] =? 0) with true by reflexivity.
        replace (0 & 3 =? 3) with false by reflexivity.
        inv Hspec.
        destruct ((e_lv2pt (e_s2pts (shared hst')) @ _vmid) @ (_addr / 4096 / 512)) eqn:Hlv2.
        apply lv2pt in Hlv2; try lia.
        destruct ((e_lv3pt (e_s2pts (shared hst')) @ _vmid) @ (_addr / 4096)) eqn:Hlv3.
        apply lv3pt in Hlv3; try lia.
        eexists. split. reflexivity. constructor; assumption.
      }
      { (* level 2 exists *)
        autounfold with sem. extract_if. lia. extract_if. assumption.
        rewrite pool_start_value.
        assert(Hpud_idx_range: 0 <= (_addr >> 27) & 4088 <= 4088) by (split; somega).
        match goal with
        | [|- context[pgd_idx[_addr] + ?base] ] =>
            pose proof (pgd_pool_used (pgd_idx[ _addr] + base)) as Hpgd
        end.
        destruct Hpgd as [Hpgd|Hpgd]. rewrite Hpgd in Case0. inv Case0.
        rewrite idx_or_base; try lia; try solve_phys_page_mod.
        2: apply phys_page_mod_4096.
        destruct_if. lia. destruct_if. 2: lia.
        unfold walk_pmd_spec.
        destruct_if.
        { (* level 3 does not exist *)
          replace (0 & 3 =? 3) with false by reflexivity.
          inv Hspec.
          destruct ((e_lv2pt (e_s2pts (shared hst')) @ _vmid) @ (_addr / 4096 / 512)) eqn:Hlv2.
          apply lv2pt in Hlv2; try lia.
          destruct ((e_lv3pt (e_s2pts (shared hst')) @ _vmid) @ (_addr / 4096)) eqn:Hlv3.
          apply lv3pt in Hlv3; try lia.
          eexists. split. reflexivity. constructor; assumption.
        }
        { (* level 3 exists *)
          autounfold with sem. extract_if. lia. extract_if. assumption.
          rewrite pool_start_value.
          assert(Hpmd_idx_range: 0 <= (_addr >> 18) & 4088 <= 4088) by (split; somega).
          match goal with
          | [|- context[pud_idx[_addr] + ?base] ] =>
              pose proof (pud_pool_used (pud_idx[ _addr] + base)) as Hpud
          end.
          destruct Hpud as [Hpud|Hpud]. rewrite Hpud in Case3. inv Case3.
          rewrite idx_or_base; try lia. 2: apply phys_page_mod_4096.
          destruct_if. lia. destruct_if. lia. destruct_if. 2: lia.
          destruct_if.
          { unfold walk_pte_spec.
            destruct_if.
            { (* level 4 does not exist *)
              inv Hspec.
              destruct ((e_lv2pt (e_s2pts (shared hst')) @ _vmid) @ (_addr / 4096 / 512)) eqn:Hlv2.
              apply lv2pt in Hlv2. destruct Hlv2 as (? & ? & ? & ? & ? & ?). frewrite. lia. lia.
              destruct ((e_lv3pt (e_s2pts (shared hst')) @ _vmid) @ (_addr / 4096)) eqn:Hlv3.
              apply lv3pt in Hlv3; try lia.
              eexists. split. reflexivity. constructor; assumption.
            }
            { (* level 3 exists *)
              autounfold with sem. extract_if. lia. extract_if. assumption.
              rewrite pool_start_value.
              assert(Hpte_idx_range: 0 <= (_addr >> 9) & 4088 <= 4088) by (split; somega).
              match goal with
              | [|- context[pmd_idx[_addr] + ?base] ] =>
                  pose proof (pmd_pool_used (pmd_idx[ _addr] + base)) as Hpmd
              end.
              destruct Hpmd as [Hpmd|Hpmd]. rewrite Hpmd in Case8. inv Case8.
              rewrite idx_or_base; try lia. 2: apply phys_page_mod_4096.
              destruct_if. lia. destruct_if. lia. destruct_if. lia. extract_if. lia. rewrite Cond7.
              inv Hspec.
              destruct ((e_lv2pt (e_s2pts (shared hst')) @ _vmid) @ (_addr / 4096 / 512)) eqn:Hlv2.
              apply lv2pt in Hlv2. destruct Hlv2 as (? & ? & ? & ? & ? & ?). frewrite. lia. lia.
              destruct ((e_lv3pt (e_s2pts (shared hst')) @ _vmid) @ (_addr / 4096)) eqn:Hlv3.
              apply lv3pt in Hlv3; try lia.
              destruct Hlv3 as (? & ? & ? & ? & ? & ? & ?). rewrite H4.
              eexists. split. reflexivity. constructor; assumption.
              match goal with
              | [|- context[Some (?pte, lst) ] ] =>
                  destruct (pte =? 0) eqn:Hpte0; [|pose proof (lv3pt _addr Prop2  pte) as Hpte]
              end.
              bool_rel. rewrite Hpte0.
              eexists. split. reflexivity. constructor; assumption.
              destruct Hpte.
              exploit H0. lia. intro T. frewrite. inv Hlv3. }
          }
          { (* read pmd *)
            inv Hspec.
            destruct ((e_lv3pt (e_s2pts (shared hst')) @ _vmid) @ (_addr / 4096)) eqn:Hlv3.
            apply lv3pt in Hlv3; try lia.
            destruct ((e_lv2pt (e_s2pts (shared hst')) @ _vmid) @ (_addr / 4096 / 512)) eqn:Hlv2.
            apply lv2pt in Hlv2; try lia.
            destruct Hlv2 as (? & ? & ? & ? & ? & ?). rewrite H2.
            eexists. split. reflexivity. constructor; assumption.
            match goal with
            | [|- context[Some (?pte, lst) ] ] =>
                destruct (pte =? 0) eqn:Hpte0; [|pose proof (lv2pt _addr Prop2 pte) as Hpte]
            end.
            bool_rel. rewrite Hpte0.
            eexists. split. reflexivity. constructor; assumption.
            destruct Hpte.
            exploit H0. lia. intro T. frewrite. inv Hlv2. }
        }
      }
    }
  Qed.

End S2PTTreeOps_walk_npt_RefProof.
