Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.set_vm_load_size.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_vm_load_size_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vm_load_size_spec_mid (v_vmid: Z) (v_load_idx: Z) (v_size: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_load_idx) <= 0) /\ (v_load_idx < 5)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    (anno (((33731152 * 0) = 0));
    (anno (((8 + 0) = 8));
    (anno ((((96 * v_load_idx) + 8) = (8 * ((12 * v_load_idx) + 1))));
    (anno (((32 + (8 * ((12 * v_load_idx) + 1))) = (8 * (4 + (1 * ((12 * v_load_idx) + 1))))));
    (anno ((((768 * v_vmid) + (8 * (4 + (1 * ((12 * v_load_idx) + 1))))) = (8 * ((96 * v_vmid) + (1 * (4 + (1 * ((12 * v_load_idx) + 1))))))));
    (anno (
      ((33686424 + (8 * ((96 * v_vmid) + (1 * (4 + (1 * ((12 * v_load_idx) + 1))))))) =
        (8 * (4210803 + (1 * ((96 * v_vmid) + (1 * (4 + (1 * ((12 * v_load_idx) + 1))))))))));
    (anno (((1 * ((12 * v_load_idx) + 1)) = ((12 * v_load_idx) + 1)));
    (anno (((4 + ((12 * v_load_idx) + 1)) = (5 + (12 * v_load_idx))));
    (anno (((1 * (5 + (12 * v_load_idx))) = (5 + (12 * v_load_idx))));
    (anno (((1 * ((96 * v_vmid) + (5 + (12 * v_load_idx)))) = ((96 * v_vmid) + (5 + (12 * v_load_idx)))));
    (anno (((4210803 + ((96 * v_vmid) + (5 + (12 * v_load_idx)))) = ((4210808 + (96 * v_vmid)) + (12 * v_load_idx))));
    (anno (((8 * ((4210808 + (96 * v_vmid)) + (12 * v_load_idx))) = ((33686464 + (768 * v_vmid)) + (96 * v_load_idx))));
    (anno (((0 + ((33686464 + (768 * v_vmid)) + (96 * v_load_idx))) = ((33686464 + (768 * v_vmid)) + (96 * v_load_idx))));
    (anno (((((33686464 + (768 * v_vmid)) + (96 * v_load_idx)) - 33686424) = ((40 + (768 * v_vmid)) + (96 * v_load_idx))));
    (anno (((((40 + (768 * v_vmid)) + (96 * v_load_idx)) / 768) = v_vmid));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (anno (((((40 + (768 * v_vmid)) + (96 * v_load_idx)) / 768) = v_vmid));
    (anno (((1 * ((12 * v_load_idx) + 1)) = ((12 * v_load_idx) + 1)));
    (anno (((4 + ((12 * v_load_idx) + 1)) = (5 + (12 * v_load_idx))));
    (anno (((1 * (5 + (12 * v_load_idx))) = (5 + (12 * v_load_idx))));
    (anno (((1 * ((96 * v_vmid) + (5 + (12 * v_load_idx)))) = ((96 * v_vmid) + (5 + (12 * v_load_idx)))));
    (anno (((4210803 + ((96 * v_vmid) + (5 + (12 * v_load_idx)))) = ((4210808 + (96 * v_vmid)) + (12 * v_load_idx))));
    (anno (((8 * ((4210808 + (96 * v_vmid)) + (12 * v_load_idx))) = ((33686464 + (768 * v_vmid)) + (96 * v_load_idx))));
    (anno (((0 + ((33686464 + (768 * v_vmid)) + (96 * v_load_idx))) = ((33686464 + (768 * v_vmid)) + (96 * v_load_idx))));
    (anno (((((33686464 + (768 * v_vmid)) + (96 * v_load_idx)) - 33686424) = ((40 + (768 * v_vmid)) + (96 * v_load_idx))));
    (anno (((((((40 + (768 * v_vmid)) + (96 * v_load_idx)) mod 768) - 32) / 96) = v_load_idx));
    (Some (st.[shared].[e_vminfos] :<
      (((st.(shared)).(e_vminfos)) #
        v_vmid ==
        ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :<
          (((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) #
            v_load_idx ==
            ((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).[e__size] :< v_size))))))))))))))))))))))))))))))).

  Hint Unfold set_vm_load_size_spec_mid: spec.

  Lemma f_set_vm_load_size_refine_mid:
    forall v_vmid v_load_idx v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_load_size_spec_mid v_vmid v_load_idx v_size hst = Some hst'),
      exists lst', set_vm_load_size_spec_low v_vmid v_load_idx v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_vm_load_size_refine_high:
    forall v_vmid v_load_idx v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_load_size_spec v_vmid v_load_idx v_size hst = Some hst'),
      exists lst', set_vm_load_size_spec_mid v_vmid v_load_idx v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_vm_load_size_refine:
    forall v_vmid v_load_idx v_size lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_load_size_spec v_vmid v_load_idx v_size hst = Some hst'),
      exists lst', set_vm_load_size_spec_low v_vmid v_load_idx v_size lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_vm_load_size_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_vm_load_size_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_set_vm_load_size_RefProof.

