Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemoryOpsAux.Layer.
Require Import VMOpsAux.Layer.
Require Import VMOpsAux.RefineRel.
Require Import VMOpsAux.Spec.
Require Import VMOpsAux.gen_vmid.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOpsAux_gen_vmid_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition gen_vmid_spec_mid (st: RData) : (option (Z * RData)) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ ABS_LOCK) = None));
    if ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) <? 33)
    then (
      (Some (
        (((st_2.(shared)).(e_core_data)).(e_next_vmid))  ,
        (((st_2.[log] :<
          ((EVT CPU_ID (REL ABS_LOCK (ABS_STATE (((st_2.(shared)).(e_core_data)).[e_next_vmid] :< ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) + 1))))) ::
            ((EVT CPU_ID (ACQ ABS_LOCK)) :: (st_2.(log))))).[shared].[e_core_data].[e_next_vmid] :<
          ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) + 1)).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # ABS_LOCK == None))
      )))
    else (
      (Some (
        0  ,
        ((st_2.[log] :< ((EVT CPU_ID (REL ABS_LOCK (ABS_STATE ((st_2.(shared)).(e_core_data))))) :: ((EVT CPU_ID (ACQ ABS_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # ABS_LOCK == None))
      ))).

  Hint Unfold gen_vmid_spec_mid: spec.

  Lemma f_gen_vmid_refine_mid:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: gen_vmid_spec_mid hst = Some (res, hst')),
      exists lst', gen_vmid_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_gen_vmid_refine_high:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: gen_vmid_spec hst = Some (res, hst')),
      exists lst', gen_vmid_spec_mid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_gen_vmid_refine:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: gen_vmid_spec hst = Some (res, hst')),
      exists lst', gen_vmid_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_gen_vmid_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_gen_vmid_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VMOpsAux_gen_vmid_RefProof.

