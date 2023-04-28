Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
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
    forall v_cbndx v_index v_addr lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: walk_smmu_pt_spec v_cbndx v_index v_addr hst = Some (res, hst')),
      exists lst', walk_smmu_pt_spec_low v_cbndx v_index v_addr lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

End SmmuPTTreeOps_walk_smmu_pt_RefProof.

