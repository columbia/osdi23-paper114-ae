Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_smmu_cfg_vmid.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_smmu_cfg_vmid_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_smmu_cfg_vmid_spec_mid (v_cbndx: Z) (v_num: Z) (st: RData) : (option (Z * RData)) :=
    (anno (((v_num << 3) = (8 * v_num)));
    rely ((((0 - ((8 * v_num) + v_cbndx)) <= 0) /\ (((8 * v_num) + v_cbndx) < 16)));
    (anno (((33731152 * 0) = 0));
    (anno (((0 + 0) = 0));
    rely (((((st.(shared)).(e_locks)) @ SMMU_LOCK) = (Some CPU_ID)));
    (anno (((v_num << 3) = (8 * v_num)));
    (anno ((((16 * ((8 * v_num) + v_cbndx)) + 0) = (16 * ((8 * v_num) + v_cbndx))));
    (anno (((0 + (33701032 + (16 * ((8 * v_num) + v_cbndx)))) = (33701032 + (16 * ((8 * v_num) + v_cbndx)))));
    (anno ((((33701032 + (16 * ((8 * v_num) + v_cbndx))) - 33701032) = (16 * ((8 * v_num) + v_cbndx))));
    (anno ((((16 * ((8 * v_num) + v_cbndx)) / 16) = ((8 * v_num) + v_cbndx)));
    (Some ((((st.(shared)).(e_smmu_vmid)) @ ((8 * v_num) + v_cbndx)), st)))))))))).

  Hint Unfold get_smmu_cfg_vmid_spec_mid: spec.

  Lemma f_get_smmu_cfg_vmid_refine_mid:
    forall v_cbndx v_num lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_smmu_cfg_vmid_spec_mid v_cbndx v_num hst = Some (res, hst')),
      exists lst', get_smmu_cfg_vmid_spec_low v_cbndx v_num lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_smmu_cfg_vmid_refine_high:
    forall v_cbndx v_num lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_smmu_cfg_vmid_spec v_cbndx v_num hst = Some (res, hst')),
      exists lst', get_smmu_cfg_vmid_spec_mid v_cbndx v_num lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_smmu_cfg_vmid_refine:
    forall v_cbndx v_num lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_smmu_cfg_vmid_spec v_cbndx v_num hst = Some (res, hst')),
      exists lst', get_smmu_cfg_vmid_spec_low v_cbndx v_num lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_smmu_cfg_vmid_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_smmu_cfg_vmid_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_smmu_cfg_vmid_RefProof.

