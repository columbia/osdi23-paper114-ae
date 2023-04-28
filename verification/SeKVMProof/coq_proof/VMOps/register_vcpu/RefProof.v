Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemoryOps.Layer.
Require Import VMOps.Layer.
Require Import VMOps.RefineRel.
Require Import VMOps.Spec.
Require Import VMOps.register_vcpu.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOps_register_vcpu_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition register_vcpu_spec_mid (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    rely ((((0 - v_vcpuid) <= 0) /\ (v_vcpuid < 4)));
    if (
      if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e__state)) =? 2)
      then true
      else (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpuid).(e_state)) =? 0))
    then (
      rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
      (Some (
        0  ,
        ((((st_2.[log] :<
          ((EVT
            CPU_ID 
            (REL
              (5 + v_vmid) 
              (VMINFO_STATE
                ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_int_vcpus] :<
                  (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) #
                    v_vcpuid ==
                    (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpuid).[e_state] :< 2).[e_vcpu] :< (shared_vcpu v_vmid v_vcpuid))))))) ::
            ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[priv].[e_shadow_ctxts] :<
          (((st_2.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st_2.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< (- 1)))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
          (((st_2.(shared)).(e_vminfos)) #
            v_vmid ==
            ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_int_vcpus] :<
              (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) #
                v_vcpuid ==
                (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpuid).[e_state] :< 2).[e_vcpu] :< (shared_vcpu v_vmid v_vcpuid))))))
      )))
    else None.

  Hint Unfold register_vcpu_spec_mid: spec.

  Lemma f_register_vcpu_refine_mid:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: register_vcpu_spec_mid v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', register_vcpu_spec_low v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_register_vcpu_refine_high:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: register_vcpu_spec v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', register_vcpu_spec_mid v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      Local Transparent register_vcpu_spec.
      unfold register_vcpu_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_register_vcpu_refine:
    forall v_vmid v_vcpuid lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: register_vcpu_spec v_vmid v_vcpuid hst = Some (res, hst')),
      exists lst', register_vcpu_spec_low v_vmid v_vcpuid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      Local Transparent register_vcpu_spec.
      unfold register_vcpu_spec.
      intros; inv Hrel.
      eapply f_register_vcpu_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_register_vcpu_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VMOps_register_vcpu_RefProof.

