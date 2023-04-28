Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.set_per_cpu.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_per_cpu_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_per_cpu_spec_mid (v_vmid: Z) (v_vcpu_id: Z) (st: RData) : (option RData) :=
    (anno (((33731152 * 0) = 0));
    (anno (((4 + 0) = 4));
    (anno ((((1792 * CPU_ID) + 4) = (4 * ((448 * CPU_ID) + 1))));
    (anno (((33701504 + (4 * ((448 * CPU_ID) + 1))) = (4 * (8425376 + (1 * ((448 * CPU_ID) + 1))))));
    (anno (((1792 * CPU_ID) = 0));
    (anno (((0 + 0) = 0));
    (anno (((33701504 + 0) = 33701504));
    (anno (((0 + 33701504) = 33701504));
    (anno (((33701504 - 33701504) = 0));
    (anno (((0 / 1792) = 0));
    (anno (((448 * CPU_ID) = 0));
    (anno (((0 + 1) = 1));
    (anno (((1 * 1) = 1));
    (anno (((8425376 + 1) = 8425377));
    (anno (((4 * 8425377) = 33701508));
    (anno (((0 + 33701508) = 33701508));
    (anno (((33701508 - 33701504) = 4));
    (anno (((4 / 1792) = 0));
    (Some (st.[priv].[e_per_cpu_data] :< (((st.(priv)).(e_per_cpu_data)) # 0 == (((((st.(priv)).(e_per_cpu_data)) @ 0).[e_____vmid] :< v_vmid).[e_vcpu_id] :< v_vcpu_id)))))))))))))))))))))).

  Hint Unfold set_per_cpu_spec_mid: spec.

  Lemma f_set_per_cpu_refine_mid:
    forall v_vmid v_vcpu_id lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_per_cpu_spec_mid v_vmid v_vcpu_id hst = Some hst'),
      exists lst', set_per_cpu_spec_low v_vmid v_vcpu_id lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_per_cpu_refine_high:
    forall v_vmid v_vcpu_id lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_per_cpu_spec v_vmid v_vcpu_id hst = Some hst'),
      exists lst', set_per_cpu_spec_mid v_vmid v_vcpu_id lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_per_cpu_refine:
    forall v_vmid v_vcpu_id lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_per_cpu_spec v_vmid v_vcpu_id hst = Some hst'),
      exists lst', set_per_cpu_spec_low v_vmid v_vcpu_id lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_per_cpu_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_per_cpu_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_set_per_cpu_RefProof.

