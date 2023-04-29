Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.set_vm_vcpu.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_vm_vcpu_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_vm_vcpu_spec_mid (v_vmid: Z) (v_vcpuid: Z) (v_vcpu: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vcpuid) <= 0) /\ (v_vcpuid < 4)));
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    (anno (((33731152 * 0) = 0));
    (anno (((0 + 0) = 0));
    (anno ((((24 * v_vcpuid) + 0) = (24 * v_vcpuid)));
    (anno (((33686424 + ((768 * v_vmid) + (528 + (24 * v_vcpuid)))) = ((33686952 + (768 * v_vmid)) + (24 * v_vcpuid))));
    (anno (((0 + ((33686952 + (768 * v_vmid)) + (24 * v_vcpuid))) = ((33686952 + (768 * v_vmid)) + (24 * v_vcpuid))));
    (anno (((((33686952 + (768 * v_vmid)) + (24 * v_vcpuid)) - 33686424) = ((528 + (768 * v_vmid)) + (24 * v_vcpuid))));
    (anno (((((528 + (768 * v_vmid)) + (24 * v_vcpuid)) / 768) = v_vmid));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (anno (((((528 + (768 * v_vmid)) + (24 * v_vcpuid)) / 768) = v_vmid));
    (anno ((((24 * v_vcpuid) + 0) = (24 * v_vcpuid)));
    (anno (((33686424 + ((768 * v_vmid) + (528 + (24 * v_vcpuid)))) = ((33686952 + (768 * v_vmid)) + (24 * v_vcpuid))));
    (anno (((0 + ((33686952 + (768 * v_vmid)) + (24 * v_vcpuid))) = ((33686952 + (768 * v_vmid)) + (24 * v_vcpuid))));
    (anno (((((33686952 + (768 * v_vmid)) + (24 * v_vcpuid)) - 33686424) = ((528 + (768 * v_vmid)) + (24 * v_vcpuid))));
    (anno ((((((528 + (768 * v_vmid)) + (24 * v_vcpuid)) mod 768) - 528) = (24 * v_vcpuid)));
    (anno ((((24 * v_vcpuid) / 24) = v_vcpuid));
    (Some (st.[shared].[e_vminfos] :<
      (((st.(shared)).(e_vminfos)) #
        v_vmid ==
        ((((st.(shared)).(e_vminfos)) @ v_vmid).[e_int_vcpus] :<
          (((((st.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) # v_vcpuid == ((((((st.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpuid).[e_vcpu] :< v_vcpu)))))))))))))))))))).

  Hint Unfold set_vm_vcpu_spec_mid: spec.

  Lemma f_set_vm_vcpu_refine_mid:
    forall v_vmid v_vcpuid v_vcpu lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_vcpu_spec_mid v_vmid v_vcpuid v_vcpu hst = Some hst'),
      exists lst', set_vm_vcpu_spec_low v_vmid v_vcpuid v_vcpu lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_vm_vcpu_refine_high:
    forall v_vmid v_vcpuid v_vcpu lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_vcpu_spec v_vmid v_vcpuid v_vcpu hst = Some hst'),
      exists lst', set_vm_vcpu_spec_mid v_vmid v_vcpuid v_vcpu lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_vm_vcpu_refine:
    forall v_vmid v_vcpuid v_vcpu lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_vm_vcpu_spec v_vmid v_vcpuid v_vcpu hst = Some hst'),
      exists lst', set_vm_vcpu_spec_low v_vmid v_vcpuid v_vcpu lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_vm_vcpu_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_vm_vcpu_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_set_vm_vcpu_RefProof.

