Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTTreeOps.Layer.
Require Import S2PTTreeOps.RefineRel.
Require Import S2PTTreeOps.Spec.
Require Import S2PTTreeOps.init_npt.LowSpec.
Require Import S2PTWalk.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTTreeOps_init_npt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Lemma f_init_npt_refine:
    forall _vmid lst hst hst'
      (Hrel: refrel hst lst)
      (Hspec: init_npt_spec _vmid hst = Some hst'),
    exists lst', init_npt_spec_low _vmid lst = Some lst' /\ refrel hst' lst'.
  Proof.
    intros. unfold init_npt_spec, init_npt_spec_low in *.
    unfold get_pt_vttbr_spec, pool_start_spec, set_pt_vttbr_spec.
    inv Hrel. destruct same_rel.
    autounfold with sem in *.
    autounfold with proof in *.
    repeat simpl_hyp Hspec; inv Hspec.
    - exploit (pt_rel _vmid); try lia. intro Hpt. inv Hpt; simpl in *.
      autounfold with proof in *.
      destruct pool_start_value as (START & START_mod & START_range & pool_val & pool_val_h).
      repeat frewrite.
      rewrite x_shiftl_48 in C2. rewrite pool_val in C2. lia. lia.
    - exploit (pt_rel _vmid); try lia. intro Hpt. inv Hpt; simpl in *.
      autounfold with proof in *.
      destruct pool_start_value as (START & START_mod & START_range & pool_val & pool_val_h).
      repeat frewrite.
      eexists. split. reflexivity. constructor. constructor; assumption.
      assumption.
    - exploit (pt_rel _vmid); try lia. intro Hpt. inv Hpt; simpl in *.
      autounfold with proof in *.
      destruct pool_start_value as (START & START_mod & START_range & pool_val & pool_val_h).
      assert(_vmid = 18) by lia. subst.
      repeat frewrite.
      rewrite x_shiftl_48 in C0. rewrite pool_val in C0. lia. lia.
    - repeat frewrite.
      eexists. split. reflexivity. constructor. constructor; assumption.
      assumption.
  Qed.

End S2PTTreeOps_init_npt_RefProof.
