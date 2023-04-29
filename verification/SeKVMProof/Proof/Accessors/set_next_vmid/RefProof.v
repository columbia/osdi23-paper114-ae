Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.set_next_vmid.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_next_vmid_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_next_vmid_spec_mid (v_vmid: Z) (st: RData) : (option RData) :=
    (anno (((33731152 * 0) = 0));
    (anno (((33701484 + 0) = 33701484));
    (anno (((0 + 33701484) = 33701484));
    (anno (((1096 - 33701484) = (- 33700388)));
    (anno (((1100 - 33701484) = (- 33700384)));
    (anno (((1112 - 33701484) = (- 33700372)));
    (anno (((1116 - 33701484) = (- 33700368)));
    (anno (((1128 - 33701484) = (- 33700356)));
    (anno (((33686424 - 33701484) = (- 15060)));
    (anno (((33701032 - 33701484) = (- 452)));
    rely (((((st.(shared)).(e_locks)) @ ABS_LOCK) = (Some CPU_ID)));
    (anno (((0 - 33701484) = (- 33701484)));
    (anno (((768 - 33701484) = (- 33700716)));
    (anno (((1024 - 33701484) = (- 33700460)));
    (anno (((1128 - 33701484) = (- 33700356)));
    (anno (((33555568 - 33701484) = (- 145916)));
    (anno (((33685752 - 33701484) = (- 15732)));
    (anno (((33686424 - 33701484) = (- 15060)));
    (anno (((33701032 - 33701484) = (- 452)));
    (anno (((33701288 - 33701484) = (- 196)));
    (Some (st.[shared].[e_core_data].[e_next_vmid] :< v_vmid))))))))))))))))))))).

  Hint Unfold set_next_vmid_spec_mid: spec.

  Lemma f_set_next_vmid_refine_mid:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_next_vmid_spec_mid v_vmid hst = Some hst'),
      exists lst', set_next_vmid_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_next_vmid_refine_high:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_next_vmid_spec v_vmid hst = Some hst'),
      exists lst', set_next_vmid_spec_mid v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_next_vmid_refine:
    forall v_vmid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_next_vmid_spec v_vmid hst = Some hst'),
      exists lst', set_next_vmid_spec_low v_vmid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_next_vmid_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_next_vmid_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_set_next_vmid_RefProof.

