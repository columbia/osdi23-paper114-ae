Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import PageIndex.Layer.
Require Import PageIndex.Spec.
Require Import PageManager.Layer.
Require Import PageManager.RefineRel.
Require Import PageManager.Spec.
Require Import PageManager.set_pfn_count.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section PageManager_set_pfn_count_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Lemma f_set_pfn_count_refine:
    forall _pfn _count lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: set_pfn_count_spec _pfn _count hst = Some hst'),
    exists lst', set_pfn_count_spec_low _pfn _count lst = Some lst' /\ refrel hst' lst'.
  Proof.
    intros. inv Hrel. inv same_rel. inv s2page_rel; simpl in *.
    unfold set_pfn_count_spec, set_pfn_count_spec_low in *.
    autounfold with sem in *. autounfold with proof in *.
    rewrite n_shiftl_12. replace (1 << 28 - 1) with 268435455 in * by reflexivity.
    repeat simpl_hyp Hspec; inv Hspec; repeat extract_prop.
    rewrite id_locks in Prop1.
    exploit (page_index_succ (_pfn * 4096) lst).
    autounfold with proof.
    assumption. lia.
    intros (idx & Hget_idx & Hidx).
    rewrite Hget_idx.
    destruct (idx =? -1) eqn:idx_inv.
    bool_rel.
    pose proof (s2page_map _ _ Hget_idx) as M. destruct M as (M1 & M2 & M3).
    apply M1 in idx_inv. contra.
    destruct Hidx as [|Hidx]. lia.
    unfold set_s2_page_count_spec.
    autounfold with sem; autounfold with proof.
    extract_if. lia. extract_if. assumption.
    eexists; split. reflexivity.
    constructor. constructor; simpl; assumption.
    constructor; simpl; try assumption.
    intros.
    assert(Hs2p': get_s2_page_index_spec (pfn * 4096) lst = Some (idx0, lst)).
    { eapply s2_page_index_same. 2: apply Hidx0. simpl. reflexivity. }
    pose proof Hs2p'.
    apply s2page_map in H.
    destruct H as (I1 & I2 & I3 & Isame).
    destruct (idx0 =? idx) eqn:Hidx_eq; bool_rel.
    - assert(Hpfn_eq: pfn = _pfn).
      { eapply (page_index_unique lst pfn _pfn idx0 idx); try eassumption. lia. }
      subst. repeat rewrite ZMap.gss.
      simpl. split. lia. split. lia. split. lia.
      intros. rewrite Isame. reflexivity. assumption.
    - rewrite (ZMap.gso _ _ Hidx_eq).
      assert(Hpfn_eq: pfn <> _pfn).
      { red; intro T. eapply (page_index_unique lst pfn _pfn idx0 idx) in T; try eassumption. contra.
        assert(idx0 <> -1).
        { red; intros. subst. destruct I1 as (I11 & I12). rewrite I11 in Prop0. contra. reflexivity. }
        exploit (page_index_succ (pfn * 4096) lst); try assumption; try lia.
        intros (? & ? & ?). frewrite. inv H1. lia.
      }
      rewrite (ZMap.gso _ _ Hpfn_eq).
      auto.
  Qed.

End PageManager_set_pfn_count_RefProof.
