Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemoryOps.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuOps.Layer.
Require Import SmmuOps.RefineRel.
Require Import SmmuOps.Spec.
Require Import SmmuOps.v_kvm_phys_addr_ioremap.LowSpec.
Require Import SmmuOpsAux.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuOps_v_kvm_phys_addr_ioremap_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint v_kvm_phys_addr_ioremap_loop_mid (_N_: nat) (v_gpa_addr_010: Z) (v_n_011: Z) (v_pa_addr_09: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_gpa_addr_010, v_n_011, v_pa_addr_09, v_vmid, st))
    | (S _N__0) =>
      match ((v_kvm_phys_addr_ioremap_loop_mid _N__0 v_gpa_addr_010 v_n_011 v_pa_addr_09 v_vmid st)) with
      | (Some (v_gpa_addr_11, v_n_12, v_pa_addr_10, v_vmid_0, st_0)) =>
        rely ((((0 - v_vmid_0) <= 0) /\ (v_vmid_0 < 19)));
        when st_2 == ((query_oracle st_0));
        rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid_0)) = None));
        when st_3 == (
            (__kvm_phys_addr_ioremap_spec
              v_vmid_0 
              v_gpa_addr_11 
              v_pa_addr_10 
              ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid_0))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid_0) == (Some CPU_ID)))));
        rely (((((st_3.(shared)).(e_locks)) @ (5 + v_vmid_0)) = (Some CPU_ID)));
        if ((v_n_12 + (- 1)) =? 0)
        then (
          (Some (
            v_gpa_addr_11  ,
            v_n_12  ,
            v_pa_addr_10  ,
            v_vmid_0  ,
            ((st_3.[log] :< ((EVT CPU_ID (REL (5 + v_vmid_0) (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ v_vmid_0)))) :: (st_3.(log)))).[shared].[e_locks] :<
              (((st_3.(shared)).(e_locks)) # (5 + v_vmid_0) == None))
          )))
        else (
          (Some (
            (v_gpa_addr_11 + 4096)  ,
            (v_n_12 + (- 1))  ,
            (v_pa_addr_10 + 4096)  ,
            v_vmid_0  ,
            ((st_3.[log] :< ((EVT CPU_ID (REL (5 + v_vmid_0) (VMINFO_STATE (((st_3.(shared)).(e_vminfos)) @ v_vmid_0)))) :: (st_3.(log)))).[shared].[e_locks] :<
              (((st_3.(shared)).(e_locks)) # (5 + v_vmid_0) == None))
          )))
      | None => None
      end
    end.

  Hint Unfold v_kvm_phys_addr_ioremap_loop_mid: spec.

  Definition v_kvm_phys_addr_ioremap_spec_mid (v_vmid: Z) (v_gpa: Z) (v_pa: Z) (v_size: Z) (st: RData) : (option RData) :=
    if ((v_size + 4095) <? 4096)
    then (Some st)
    else (
      match ((v_kvm_phys_addr_ioremap_loop_mid (z_to_nat ((v_size + 4095) >> 12)) v_gpa ((v_size + 4095) >> 12) v_pa v_vmid st)) with
      | (Some (v_gpa_addr_11, v_n_12, v_pa_addr_10, v_vmid_0, st_0)) => (Some st_0)
      | None => None
      end).

  Hint Unfold v_kvm_phys_addr_ioremap_spec_mid: spec.

  Lemma f_v_kvm_phys_addr_ioremap_loop_refine_mid:
    forall _N_ v_gpa_addr_010 v_gpa_addr_010' v_n_011 v_n_011' v_pa_addr_09 v_pa_addr_09' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_kvm_phys_addr_ioremap_loop_mid _N_ v_gpa_addr_010 v_n_011 v_pa_addr_09 v_vmid hst = Some (v_gpa_addr_010', v_n_011', v_pa_addr_09', v_vmid', hst')),
      exists lst', v_kvm_phys_addr_ioremap_loop_low _N_ v_gpa_addr_010 v_n_011 v_pa_addr_09 v_vmid lst = Some (v_gpa_addr_010', v_n_011', v_pa_addr_09', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_kvm_phys_addr_ioremap_refine_mid:
    forall v_vmid v_gpa v_pa v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_kvm_phys_addr_ioremap_spec_mid v_vmid v_gpa v_pa v_size hst = Some hst'),
      exists lst', v_kvm_phys_addr_ioremap_spec_low v_vmid v_gpa v_pa v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_kvm_phys_addr_ioremap_loop_refine_high:
    forall _N_ v_gpa_addr_010 v_gpa_addr_010' v_n_011 v_n_011' v_pa_addr_09 v_pa_addr_09' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_kvm_phys_addr_ioremap_loop _N_ v_gpa_addr_010 v_n_011 v_pa_addr_09 v_vmid hst = Some (v_gpa_addr_010', v_n_011', v_pa_addr_09', v_vmid', hst')),
      exists lst', v_kvm_phys_addr_ioremap_loop_mid _N_ v_gpa_addr_010 v_n_011 v_pa_addr_09 v_vmid lst = Some (v_gpa_addr_010', v_n_011', v_pa_addr_09', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_kvm_phys_addr_ioremap_refine_high:
    forall v_vmid v_gpa v_pa v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_kvm_phys_addr_ioremap_spec v_vmid v_gpa v_pa v_size hst = Some hst'),
      exists lst', v_kvm_phys_addr_ioremap_spec_mid v_vmid v_gpa v_pa v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent v_kvm_phys_addr_ioremap_spec.
      unfold v_kvm_phys_addr_ioremap_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_kvm_phys_addr_ioremap_refine:
    forall v_vmid v_gpa v_pa v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_kvm_phys_addr_ioremap_spec v_vmid v_gpa v_pa v_size hst = Some hst'),
      exists lst', v_kvm_phys_addr_ioremap_spec_low v_vmid v_gpa v_pa v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent v_kvm_phys_addr_ioremap_spec.
      unfold v_kvm_phys_addr_ioremap_spec.
      intros; inv Hrel.
      eapply f_v_kvm_phys_addr_ioremap_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_v_kvm_phys_addr_ioremap_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End SmmuOps_v_kvm_phys_addr_ioremap_RefProof.

