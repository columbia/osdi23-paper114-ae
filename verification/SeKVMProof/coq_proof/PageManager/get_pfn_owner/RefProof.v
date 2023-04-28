Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import PageIndex.Layer.
Require Import PageIndex.Spec.
Require Import PageManager.Layer.
Require Import PageManager.RefineRel.
Require Import PageManager.Spec.
Require Import PageManager.get_pfn_owner.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section PageManager_get_pfn_owner_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Lemma f_get_pfn_owner_refine:
    forall v_pfn lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_pfn_owner_spec v_pfn hst = Some (res, hst')),
      exists lst', get_pfn_owner_spec_low v_pfn lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

End PageManager_get_pfn_owner_RefProof.

