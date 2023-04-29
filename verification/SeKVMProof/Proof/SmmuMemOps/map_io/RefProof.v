Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemoryOps.Spec.
Require Import SmmuMemOps.Layer.
Require Import SmmuMemOps.RefineRel.
Require Import SmmuMemOps.Spec.
Require Import SmmuMemOps.map_io.LowSpec.
Require Import SmmuMemOpsAux.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuMemOps_map_io_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition map_io_spec_mid (v_vmid: Z) (v_gpa: Z) (v_pa: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    when st_3 == (
        (__kvm_phys_addr_ioremap_spec
          v_vmid 
          v_gpa 
          v_pa 
          ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID)))));
    rely (((((st_3.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some ((st_3.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ v_vmid)))) :: (st_3.(log)))).[shared].[e_locks] :<
      (((st_3.(shared)).(e_locks)) # (5 + v_vmid) == None))).

  Hint Unfold map_io_spec_mid: spec.

  Lemma f_map_io_refine_mid:
    forall v_vmid v_gpa v_pa lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: map_io_spec_mid v_vmid v_gpa v_pa hst = Some hst'),
      exists lst', map_io_spec_low v_vmid v_gpa v_pa lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_map_io_refine_high:
    forall v_vmid v_gpa v_pa lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: map_io_spec v_vmid v_gpa v_pa hst = Some hst'),
      exists lst', map_io_spec_mid v_vmid v_gpa v_pa lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_map_io_refine:
    forall v_vmid v_gpa v_pa lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: map_io_spec v_vmid v_gpa v_pa hst = Some hst'),
      exists lst', map_io_spec_low v_vmid v_gpa v_pa lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_map_io_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_map_io_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuMemOps_map_io_RefProof.

