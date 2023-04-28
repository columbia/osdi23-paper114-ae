Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemManager.Layer.
Require Import MemManager.Spec.
Require Import MemoryOpsAux.Layer.
Require Import MemoryOpsAux.RefineRel.
Require Import MemoryOpsAux.Spec.
Require Import MemoryOpsAux.prot_and_map_vm_s2pt.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemoryOpsAux_prot_and_map_vm_s2pt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint prot_and_map_vm_s2pt_loop_mid (_N_: nat) (v_addr: Z) (v_cmp3: bool) (v_gfn_126: Z) (v_num_127: Z) (v_pfn_025: Z) (v_pte: Z) (v_vmid: Z) (st: RData) : (option (Z * bool * Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr, v_cmp3, v_gfn_126, v_num_127, v_pfn_025, v_pte, v_vmid, st))
    | (S _N__0) =>
      match ((prot_and_map_vm_s2pt_loop_mid _N__0 v_addr v_cmp3 v_gfn_126 v_num_127 v_pfn_025 v_pte v_vmid st)) with
      | (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_0, st_0)) =>
        when st_1 == ((assign_pfn_to_vm_spec v_vmid_0 v_gfn_127 v_pfn_26 st_0));
        if ((v_num_128 + (- 1)) =? 0)
        then (
          if v_cmp3_0
          then (
            when st_2 == ((map_pfn_vm_spec v_vmid_0 v_addr_0 v_pte_0 2 st_1));
            (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_0, st_2)))
          else (
            when st_2 == ((map_pfn_vm_spec v_vmid_0 v_addr_0 v_pte_0 3 st_1));
            (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_0, st_2))))
        else (Some (v_addr_0, v_cmp3_0, (v_gfn_127 + 1), (v_num_128 + (- 1)), (v_pfn_26 + 1), v_pte_0, v_vmid_0, st_1))
      | None => None
      end
    end.

  Hint Unfold prot_and_map_vm_s2pt_loop_mid: spec.

  Definition prot_and_map_vm_s2pt_spec_mid (v_vmid: Z) (v_addr: Z) (v_pte: Z) (v_level: Z) (st: RData) : (option RData) :=
    if (v_pte =? 0)
    then (Some st)
    else (
      if (v_level =? 2)
      then (
        match ((prot_and_map_vm_s2pt_loop_mid (z_to_nat 512) v_addr (v_level =? 2) ((v_addr >> 12) & 4503599627369984) 512 ((v_pte >> 12) & 68719476735) v_pte v_vmid st)) with
        | (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_0, st_0)) => (Some st_0)
        | None => None
        end)
      else (
        match ((prot_and_map_vm_s2pt_loop_mid (z_to_nat 1) v_addr (v_level =? 2) (v_addr >> 12) 1 ((v_pte >> 12) & 68719476735) v_pte v_vmid st)) with
        | (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_0, st_0)) => (Some st_0)
        | None => None
        end)).

  Hint Unfold prot_and_map_vm_s2pt_spec_mid: spec.

  Lemma f_prot_and_map_vm_s2pt_loop_refine_mid:
    forall _N_ v_addr v_addr' v_cmp3 v_cmp3' v_gfn_126 v_gfn_126' v_num_127 v_num_127' v_pfn_025 v_pfn_025' v_pte v_pte' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prot_and_map_vm_s2pt_loop_mid _N_ v_addr v_cmp3 v_gfn_126 v_num_127 v_pfn_025 v_pte v_vmid hst = Some (v_addr', v_cmp3', v_gfn_126', v_num_127', v_pfn_025', v_pte', v_vmid', hst')),
      exists lst', prot_and_map_vm_s2pt_loop_low _N_ v_addr v_cmp3 v_gfn_126 v_num_127 v_pfn_025 v_pte v_vmid lst = Some (v_addr', v_cmp3', v_gfn_126', v_num_127', v_pfn_025', v_pte', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_prot_and_map_vm_s2pt_refine_mid:
    forall v_vmid v_addr v_pte v_level lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prot_and_map_vm_s2pt_spec_mid v_vmid v_addr v_pte v_level hst = Some hst'),
      exists lst', prot_and_map_vm_s2pt_spec_low v_vmid v_addr v_pte v_level lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_prot_and_map_vm_s2pt_loop_refine_high:
    forall _N_ v_addr v_addr' v_cmp3 v_cmp3' v_gfn_126 v_gfn_126' v_num_127 v_num_127' v_pfn_025 v_pfn_025' v_pte v_pte' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prot_and_map_vm_s2pt_loop _N_ v_addr v_cmp3 v_gfn_126 v_num_127 v_pfn_025 v_pte v_vmid hst = Some (v_addr', v_cmp3', v_gfn_126', v_num_127', v_pfn_025', v_pte', v_vmid', hst')),
      exists lst', prot_and_map_vm_s2pt_loop_mid _N_ v_addr v_cmp3 v_gfn_126 v_num_127 v_pfn_025 v_pte v_vmid lst = Some (v_addr', v_cmp3', v_gfn_126', v_num_127', v_pfn_025', v_pte', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_prot_and_map_vm_s2pt_refine_high:
    forall v_vmid v_addr v_pte v_level lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prot_and_map_vm_s2pt_spec v_vmid v_addr v_pte v_level hst = Some hst'),
      exists lst', prot_and_map_vm_s2pt_spec_mid v_vmid v_addr v_pte v_level lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_prot_and_map_vm_s2pt_refine:
    forall v_vmid v_addr v_pte v_level lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prot_and_map_vm_s2pt_spec v_vmid v_addr v_pte v_level hst = Some hst'),
      exists lst', prot_and_map_vm_s2pt_spec_low v_vmid v_addr v_pte v_level lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_prot_and_map_vm_s2pt_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_prot_and_map_vm_s2pt_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End MemoryOpsAux_prot_and_map_vm_s2pt_RefProof.

