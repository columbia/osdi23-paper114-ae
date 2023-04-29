Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemoryOpsAux.Layer.
Require Import VMOpsAux.Layer.
Require Import VMOpsAux.RefineRel.
Require Import VMOpsAux.Spec.
Require Import VMOpsAux.alloc_remap_addr.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOpsAux_alloc_remap_addr_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition alloc_remap_addr_spec_mid (v_pgnum: Z) (st: RData) : (option (Z * RData)) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ ABS_LOCK) = None));
    if ((((((st_2.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296) + (v_pgnum << 12)) <? 5497558138880)
    then (
      (Some (
        ((((st_2.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296)  ,
        (((st_2.[log] :<
          ((EVT
            CPU_ID 
            (REL
              ABS_LOCK 
              (ABS_STATE (((st_2.(shared)).(e_core_data)).[e_last_remap_ptr] :< (((((st_2.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296) + (v_pgnum << 12)))))) ::
            ((EVT CPU_ID (ACQ ABS_LOCK)) :: (st_2.(log))))).[shared].[e_core_data].[e_last_remap_ptr] :<
          (((((st_2.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296) + (v_pgnum << 12))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # ABS_LOCK == None))
      )))
    else None.

  Hint Unfold alloc_remap_addr_spec_mid: spec.

  Lemma f_alloc_remap_addr_refine_mid:
    forall v_pgnum lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: alloc_remap_addr_spec_mid v_pgnum hst = Some (res, hst')),
      exists lst', alloc_remap_addr_spec_low v_pgnum lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_alloc_remap_addr_refine_high:
    forall v_pgnum lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: alloc_remap_addr_spec v_pgnum hst = Some (res, hst')),
      exists lst', alloc_remap_addr_spec_mid v_pgnum lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_alloc_remap_addr_refine:
    forall v_pgnum lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: alloc_remap_addr_spec v_pgnum hst = Some (res, hst')),
      exists lst', alloc_remap_addr_spec_low v_pgnum lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_alloc_remap_addr_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_alloc_remap_addr_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VMOpsAux_alloc_remap_addr_RefProof.

