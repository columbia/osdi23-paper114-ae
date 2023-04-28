Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.get_vm_next_load_idx.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_get_vm_next_load_idx_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition get_vm_next_load_idx_spec_mid (v_vmid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    (anno (((33731152 * 0) = 0));
    (anno (((12 + 0) = 12));
    (anno ((((768 * v_vmid) + 12) = (12 * ((64 * v_vmid) + 1))));
    (anno (((33686424 + (12 * ((64 * v_vmid) + 1))) = (12 * (2807202 + (1 * ((64 * v_vmid) + 1))))));
    (anno (((1 * ((64 * v_vmid) + 1)) = ((64 * v_vmid) + 1)));
    (anno (((2807202 + ((64 * v_vmid) + 1)) = (2807203 + (64 * v_vmid))));
    (anno (((12 * (2807203 + (64 * v_vmid))) = (33686436 + (768 * v_vmid))));
    (anno (((0 + (33686436 + (768 * v_vmid))) = (33686436 + (768 * v_vmid))));
    (anno ((((33686436 + (768 * v_vmid)) - 33686424) = (12 + (768 * v_vmid))));
    (anno ((((12 + (768 * v_vmid)) / 768) = v_vmid));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (anno (((1 * ((64 * v_vmid) + 1)) = ((64 * v_vmid) + 1)));
    (anno (((2807202 + ((64 * v_vmid) + 1)) = (2807203 + (64 * v_vmid))));
    (anno (((12 * (2807203 + (64 * v_vmid))) = (33686436 + (768 * v_vmid))));
    (anno (((0 + (33686436 + (768 * v_vmid))) = (33686436 + (768 * v_vmid))));
    (anno ((((33686436 + (768 * v_vmid)) - 33686424) = (12 + (768 * v_vmid))));
    (anno ((((12 + (768 * v_vmid)) / 768) = v_vmid));
    (Some (((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)), st)))))))))))))))))).

  Hint Unfold get_vm_next_load_idx_spec_mid: spec.

  Lemma f_get_vm_next_load_idx_refine_mid:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_vm_next_load_idx_spec_mid v_vmid hst = Some (res, hst')),
      exists lst', get_vm_next_load_idx_spec_low v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_vm_next_load_idx_refine_high:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_vm_next_load_idx_spec v_vmid hst = Some (res, hst')),
      exists lst', get_vm_next_load_idx_spec_mid v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_get_vm_next_load_idx_refine:
    forall v_vmid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: get_vm_next_load_idx_spec v_vmid hst = Some (res, hst')),
      exists lst', get_vm_next_load_idx_spec_low v_vmid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_get_vm_next_load_idx_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_get_vm_next_load_idx_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_get_vm_next_load_idx_RefProof.

