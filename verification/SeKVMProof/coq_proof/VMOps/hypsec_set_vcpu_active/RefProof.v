Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemoryOps.Layer.
Require Import VMOps.Layer.
Require Import VMOps.RefineRel.
Require Import VMOps.Spec.
Require Import VMOps.hypsec_set_vcpu_active.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOps_hypsec_set_vcpu_active_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition hypsec_set_vcpu_active_spec_mid (v_vmid: Z) (v_vcpu_id: Z) (st: RData) : (option (Z * RData)) :=
    if (v_vmid <? 18)
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      (anno (((33686424 + (768 * v_vmid)) = (24 * (1403601 + (32 * v_vmid)))));
      when st_2 == ((query_oracle st));
      rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
      if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e__state)) =? 3)
      then (
        rely ((((0 - v_vcpu_id) <= 0) /\ (v_vcpu_id < 4)));
        if (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpu_id).(e_state)) =? 2)
        then (
          (Some (
            1  ,
            (((st_2.[log] :<
              ((EVT
                CPU_ID 
                (REL
                  (5 + v_vmid) 
                  (VMINFO_STATE
                    ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_int_vcpus] :<
                      (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) #
                        v_vcpu_id ==
                        ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpu_id).[e_state] :< 4)))))) ::
                ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
              (((st_2.(shared)).(e_vminfos)) #
                v_vmid ==
                ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_int_vcpus] :<
                  (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) #
                    v_vcpu_id ==
                    ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_int_vcpus)) @ v_vcpu_id).[e_state] :< 4)))))
          )))
        else (
          (Some (
            0  ,
            ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))
          ))))
      else (
        (Some (
          0  ,
          ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
            (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))
        )))))
    else None.

  Hint Unfold hypsec_set_vcpu_active_spec_mid: spec.

  Lemma f_hypsec_set_vcpu_active_refine_mid:
    forall v_vmid v_vcpu_id lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: hypsec_set_vcpu_active_spec_mid v_vmid v_vcpu_id hst = Some (res, hst')),
      exists lst', hypsec_set_vcpu_active_spec_low v_vmid v_vcpu_id lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_hypsec_set_vcpu_active_refine_high:
    forall v_vmid v_vcpu_id lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: hypsec_set_vcpu_active_spec v_vmid v_vcpu_id hst = Some (res, hst')),
      exists lst', hypsec_set_vcpu_active_spec_mid v_vmid v_vcpu_id lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_hypsec_set_vcpu_active_refine:
    forall v_vmid v_vcpu_id lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: hypsec_set_vcpu_active_spec v_vmid v_vcpu_id hst = Some (res, hst')),
      exists lst', hypsec_set_vcpu_active_spec_low v_vmid v_vcpu_id lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_hypsec_set_vcpu_active_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_hypsec_set_vcpu_active_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VMOps_hypsec_set_vcpu_active_RefProof.

