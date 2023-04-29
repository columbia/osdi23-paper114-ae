Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import PageIndex.Layer.
Require Import PageIndex.Spec.
Require Import PageManager.Layer.
Require Import PageManager.RefineRel.
Require Import PageManager.Spec.
Require Import PageManager.get_pfn_map.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section PageManager_get_pfn_map_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Lemma f_get_pfn_map_refine:
    forall _pfn lst hst hst' res
      (Hrel: refrel hst lst)
      (Hspec: get_pfn_map_spec _pfn hst = Some (res, hst')),
    exists lst', get_pfn_map_spec_low _pfn lst = Some (res, lst') /\ refrel hst' lst'.
  Proof.
    intros. pose proof Hrel as REL. inv Hrel. inv same_rel. inv s2page_rel; simpl in *.
    unfold get_pfn_map_spec, get_pfn_map_spec_low in *.
    autounfold with sem in *. autounfold with proof in *.
    rewrite n_shiftl_12. replace (1 << 28 - 1) with 268435455 in * by reflexivity.
    repeat simpl_hyp Hspec; inv Hspec; repeat extract_prop.
    rewrite id_locks in Prop0.
    exploit (page_index_succ (_pfn * 4096) lst).
    autounfold with proof.
    assumption. lia.
    intros (idx & Hget_idx & Hidx).
    rewrite Hget_idx.
    destruct (idx =? -1) eqn:idx_inv.
    bool_rel.
    pose proof (s2page_map _ _ Hget_idx) as M. destruct M as (M1 & M2 & M3).
    apply M3 in idx_inv. grewrite.
    eexists. split. reflexivity. assumption.
    destruct Hidx as [|Hidx]. lia.
    unfold get_s2_page_gfn_spec.
    autounfold with sem; autounfold with proof.
    extract_if. lia. extract_if. assumption.
    apply s2page_map in Hget_idx.
    destruct Hget_idx as (I1 & I2 & I3 & Isame).
    apply Isame in Hidx. rewrite Hidx.
    eexists. split. reflexivity. assumption.
  Qed.

End PageManager_get_pfn_map_RefProof.
