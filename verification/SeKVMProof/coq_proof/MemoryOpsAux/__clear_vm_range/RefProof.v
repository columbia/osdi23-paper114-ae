Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemManager.Layer.
Require Import MemManager.Spec.
Require Import MemoryOpsAux.Layer.
Require Import MemoryOpsAux.RefineRel.
Require Import MemoryOpsAux.Spec.
Require Import MemoryOpsAux.__clear_vm_range.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemoryOpsAux___clear_vm_range_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint __clear_vm_range_loop_mid (_N_: nat) (v_num_07: Z) (v_pfn_06: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_num_07, v_pfn_06, v_vmid, st))
    | (S _N__0) =>
      match ((__clear_vm_range_loop_mid _N__0 v_num_07 v_pfn_06 v_vmid st)) with
      | (Some (v_num_8, v_pfn_7, v_vmid_0, st_0)) =>
        when st_1 == ((clear_vm_page_spec v_vmid_0 v_pfn_7 st_0));
        if ((v_num_8 + (- 1)) =? 0)
        then (Some (v_num_8, v_pfn_7, v_vmid_0, st_1))
        else (Some ((v_num_8 + (- 1)), (v_pfn_7 + 1), v_vmid_0, st_1))
      | None => None
      end
    end.

  Hint Unfold __clear_vm_range_loop_mid: spec.

  Definition __clear_vm_range_spec_mid (v_vmid: Z) (v_start: Z) (v_size: Z) (st: RData) : (option RData) :=
    if (v_size <? 4096)
    then (Some st)
    else (
      match ((__clear_vm_range_loop_mid (z_to_nat (v_size >> 12)) (v_size >> 12) (v_start >> 12) v_vmid st)) with
      | (Some (v_num_8, v_pfn_7, v_vmid_0, st_0)) => (Some st_0)
      | None => None
      end).

  Hint Unfold __clear_vm_range_spec_mid: spec.

  Lemma f___clear_vm_range_loop_refine_mid:
    forall _N_ v_num_07 v_num_07' v_pfn_06 v_pfn_06' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __clear_vm_range_loop_mid _N_ v_num_07 v_pfn_06 v_vmid hst = Some (v_num_07', v_pfn_06', v_vmid', hst')),
      exists lst', __clear_vm_range_loop_low _N_ v_num_07 v_pfn_06 v_vmid lst = Some (v_num_07', v_pfn_06', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___clear_vm_range_refine_mid:
    forall v_vmid v_start v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __clear_vm_range_spec_mid v_vmid v_start v_size hst = Some hst'),
      exists lst', __clear_vm_range_spec_low v_vmid v_start v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___clear_vm_range_loop_refine_high:
    forall _N_ v_num_07 v_num_07' v_pfn_06 v_pfn_06' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __clear_vm_range_loop _N_ v_num_07 v_pfn_06 v_vmid hst = Some (v_num_07', v_pfn_06', v_vmid', hst')),
      exists lst', __clear_vm_range_loop_mid _N_ v_num_07 v_pfn_06 v_vmid lst = Some (v_num_07', v_pfn_06', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___clear_vm_range_refine_high:
    forall v_vmid v_start v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __clear_vm_range_spec v_vmid v_start v_size hst = Some hst'),
      exists lst', __clear_vm_range_spec_mid v_vmid v_start v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f___clear_vm_range_refine:
    forall v_vmid v_start v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: __clear_vm_range_spec v_vmid v_start v_size hst = Some hst'),
      exists lst', __clear_vm_range_spec_low v_vmid v_start v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f___clear_vm_range_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f___clear_vm_range_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End MemoryOpsAux___clear_vm_range_RefProof.

