Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import SmmuOps.Layer.
Require Import SmmuOps.RefineRel.
Require Import SmmuOps.Spec.
Require Import SmmuOps.v_el2_arm_lpae_map.LowSpec.
Require Import SmmuOpsAux.Layer.
Require Import SmmuOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuOps_v_el2_arm_lpae_map_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition v_el2_arm_lpae_map_spec_mid (v_iova: Z) (v_paddr: Z) (v_prot: Z) (v_cbndx: Z) (v_index: Z) (st: RData) : (option RData) :=
    when st_1 == ((smmu_assign_page_spec v_cbndx v_index (v_paddr >> 12) (v_iova >> 12) st));
    when st_2 == ((smmu_map_page_spec v_cbndx v_index v_iova (((v_paddr & 281474976706560) |' v_prot) |' 1795) st_1));
    (Some st_2).

  Hint Unfold v_el2_arm_lpae_map_spec_mid: spec.

  Lemma f_v_el2_arm_lpae_map_refine_mid:
    forall v_iova v_paddr v_prot v_cbndx v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_el2_arm_lpae_map_spec_mid v_iova v_paddr v_prot v_cbndx v_index hst = Some hst'),
      exists lst', v_el2_arm_lpae_map_spec_low v_iova v_paddr v_prot v_cbndx v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_el2_arm_lpae_map_refine_high:
    forall v_iova v_paddr v_prot v_cbndx v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_el2_arm_lpae_map_spec v_iova v_paddr v_prot v_cbndx v_index hst = Some hst'),
      exists lst', v_el2_arm_lpae_map_spec_mid v_iova v_paddr v_prot v_cbndx v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent v_el2_arm_lpae_map_spec.
      unfold v_el2_arm_lpae_map_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_el2_arm_lpae_map_refine:
    forall v_iova v_paddr v_prot v_cbndx v_index lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_el2_arm_lpae_map_spec v_iova v_paddr v_prot v_cbndx v_index hst = Some hst'),
      exists lst', v_el2_arm_lpae_map_spec_low v_iova v_paddr v_prot v_cbndx v_index lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent v_el2_arm_lpae_map_spec.
      unfold v_el2_arm_lpae_map_spec.
      intros; inv Hrel.
      eapply f_v_el2_arm_lpae_map_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_v_el2_arm_lpae_map_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuOps_v_el2_arm_lpae_map_RefProof.

