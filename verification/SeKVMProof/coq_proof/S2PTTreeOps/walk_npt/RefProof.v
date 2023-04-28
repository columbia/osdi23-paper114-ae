Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
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
    forall v_vmid v_addr lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: walk_npt_spec v_vmid v_addr hst = Some (res, hst')),
      exists lst', walk_npt_spec_low v_vmid v_addr lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

End S2PTTreeOps_walk_npt_RefProof.

