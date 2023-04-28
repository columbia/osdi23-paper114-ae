Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemoryOps.Layer.
Require Import S2PTOps.Spec.
Require Import VMOps.Layer.
Require Import VMOps.RefineRel.
Require Import VMOps.Spec.
Require Import VMOps.register_kvm.LowSpec.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOps_register_kvm_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition register_kvm_spec_mid (st: RData) : (option (Z * RData)) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ ABS_LOCK) = None));
    if ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) <? 33)
    then (
      rely ((((0 - (((st_2.(shared)).(e_core_data)).(e_next_vmid))) <= 0) /\ ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) < 19)));
      when st_3 == (
          (query_oracle
            (((st_2.[log] :<
              ((EVT CPU_ID (REL ABS_LOCK (ABS_STATE (((st_2.(shared)).(e_core_data)).[e_next_vmid] :< ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) + 1))))) ::
                ((EVT CPU_ID (ACQ ABS_LOCK)) :: (st_2.(log))))).[shared].[e_core_data].[e_next_vmid] :<
              ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) + 1)).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # ABS_LOCK == None))));
      rely (((((st_3.(shared)).(e_locks)) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) = None));
      if (((((st_3.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).(e__state)) =? 0)
      then (
        when st_7 == (
            (query_oracle
              (((st_3.[log] :< ((EVT CPU_ID (ACQ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))))) :: (st_3.(log)))).[shared].[e_locks] :<
                (((st_3.(shared)).(e_locks)) # (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == (Some CPU_ID))).[shared].[e_vminfos] :<
                (((st_3.(shared)).(e_vminfos)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  (((((st_3.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e_inc_exe] :< 0).[e_kvm] :<
                    (shared_kvm (((st_2.(shared)).(e_core_data)).(e_next_vmid))))))));
        rely (((((st_7.(shared)).(e_locks)) @ (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) = None));
        if ((((st_2.(shared)).(e_core_data)).(e_next_vmid)) <? 18)
        then (
          if (((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).(e_vttbr)) =? 0)
          then (
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            (Some (
              (((st_2.(shared)).(e_core_data)).(e_next_vmid))  ,
              ((((st_7.[log] :<
                ((EVT
                  CPU_ID 
                  (REL
                    (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) 
                    (VMINFO_STATE (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))) ::
                  ((EVT
                    CPU_ID 
                    (REL
                      (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) 
                      (S2PT_STATE
                        ((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e_vttbr] :<
                          (((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).(e_page_pool_start)) |'
                            (((((st_2.(shared)).(e_core_data)).(e_next_vmid)) & 255) << 48)))))) ::
                    ((EVT CPU_ID (ACQ (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))))) :: (st_7.(log)))))).[shared].[e_locks] :<
                ((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) # (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None)).[shared].[e_s2pts] :<
                (((st_7.(shared)).(e_s2pts)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  ((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e_vttbr] :<
                    (((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).(e_page_pool_start)) |'
                      (((((st_2.(shared)).(e_core_data)).(e_next_vmid)) & 255) << 48))))).[shared].[e_vminfos] :<
                (((st_7.(shared)).(e_vminfos)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))
            )))
          else (
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            (Some (
              (((st_2.(shared)).(e_core_data)).(e_next_vmid))  ,
              (((st_7.[log] :<
                ((EVT
                  CPU_ID 
                  (REL
                    (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) 
                    (VMINFO_STATE (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))) ::
                  ((EVT
                    CPU_ID 
                    (REL (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) (S2PT_STATE (((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid)))))) ::
                    ((EVT CPU_ID (ACQ (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))))) :: (st_7.(log)))))).[shared].[e_locks] :<
                ((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) # (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None)).[shared].[e_vminfos] :<
                (((st_7.(shared)).(e_vminfos)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))
            ))))
        else (
          if (((((st_7.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ TTBR0_EL2) =? 0)
          then (
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            (Some (
              (((st_2.(shared)).(e_core_data)).(e_next_vmid))  ,
              ((((st_7.[log] :<
                ((EVT
                  CPU_ID 
                  (REL
                    (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) 
                    (VMINFO_STATE (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))) ::
                  ((EVT
                    CPU_ID 
                    (REL
                      (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) 
                      (S2PT_STATE
                        ((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e_vttbr] :<
                          (((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).(e_page_pool_start)) |'
                            (((((st_2.(shared)).(e_core_data)).(e_next_vmid)) & 255) << 48)))))) ::
                    ((EVT CPU_ID (ACQ (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))))) :: (st_7.(log)))))).[shared].[e_locks] :<
                ((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) # (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None)).[shared].[e_s2pts] :<
                (((st_7.(shared)).(e_s2pts)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  ((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e_vttbr] :<
                    (((((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).(e_page_pool_start)) |'
                      (((((st_2.(shared)).(e_core_data)).(e_next_vmid)) & 255) << 48))))).[shared].[e_vminfos] :<
                (((st_7.(shared)).(e_vminfos)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))
            )))
          else (
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            rely (
              (((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) @ (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid)))) =
                (Some CPU_ID)));
            (Some (
              (((st_2.(shared)).(e_core_data)).(e_next_vmid))  ,
              (((st_7.[log] :<
                ((EVT
                  CPU_ID 
                  (REL
                    (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) 
                    (VMINFO_STATE (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))) ::
                  ((EVT
                    CPU_ID 
                    (REL (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) (S2PT_STATE (((st_7.(shared)).(e_s2pts)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid)))))) ::
                    ((EVT CPU_ID (ACQ (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))))) :: (st_7.(log)))))).[shared].[e_locks] :<
                ((((st_7.(shared)).(e_locks)) # (24 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None) # (5 + (((st_2.(shared)).(e_core_data)).(e_next_vmid))) == None)).[shared].[e_vminfos] :<
                (((st_7.(shared)).(e_vminfos)) #
                  (((st_2.(shared)).(e_core_data)).(e_next_vmid)) ==
                  (((((st_7.(shared)).(e_vminfos)) @ (((st_2.(shared)).(e_core_data)).(e_next_vmid))).[e__state] :< 2).[e_public_key] :< vm_pubkey)))
            )))))
      else None)
    else (
      (anno (((0 - 0) = 0));
      when st_3 == (
          (query_oracle
            ((st_2.[log] :< ((EVT CPU_ID (REL ABS_LOCK (ABS_STATE ((st_2.(shared)).(e_core_data))))) :: ((EVT CPU_ID (ACQ ABS_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
              (((st_2.(shared)).(e_locks)) # ABS_LOCK == None))));
      (anno (((5 + 0) = 5));
      rely (((((st_3.(shared)).(e_locks)) @ 5) = None));
      (anno (((0 - 0) = 0));
      (anno (((5 + 0) = 5));
      (anno (((((((st_3.(shared)).(e_vminfos)) @ 0).(e__state)) - 0) = ((((st_3.(shared)).(e_vminfos)) @ 0).(e__state))));
      if (((((st_3.(shared)).(e_vminfos)) @ 0).(e__state)) =? 0)
      then (
        (anno (((0 - 0) = 0));
        (anno (((5 + 0) = 5));
        when st_7 == (
            (query_oracle
              (((st_3.[log] :< ((EVT CPU_ID (ACQ 5)) :: (st_3.(log)))).[shared].[e_locks] :< (((st_3.(shared)).(e_locks)) # 5 == (Some CPU_ID))).[shared].[e_vminfos] :<
                (((st_3.(shared)).(e_vminfos)) # 0 == (((((st_3.(shared)).(e_vminfos)) @ 0).[e_inc_exe] :< 0).[e_kvm] :< (shared_kvm 0))))));
        (anno (((24 + 0) = 24));
        rely (((((st_7.(shared)).(e_locks)) @ 24) = None));
        (anno (((((((st_7.(shared)).(e_s2pts)) @ 0).(e_vttbr)) - 0) = ((((st_7.(shared)).(e_s2pts)) @ 0).(e_vttbr))));
        if (((((st_7.(shared)).(e_s2pts)) @ 0).(e_vttbr)) =? 0)
        then (
          (anno (((0 & 255) = 0));
          (anno (((24 + 0) = 24));
          (anno (((5 + 0) = 5));
          rely (((((st_7.(shared)).(e_locks)) @ 5) = (Some CPU_ID)));
          (anno (((0 - 0) = 0));
          (anno (((24 + 0) = 24));
          (anno (((0 & 255) = 0));
          (anno (((5 + 0) = 5));
          (anno (((0 << 48) = 0));
          rely (((((st_7.(shared)).(e_locks)) @ 5) = (Some CPU_ID)));
          (anno (((0 - 0) = 0));
          (anno (((24 + 0) = 24));
          (anno (((0 & 255) = 0));
          (anno (((5 + 0) = 5));
          (anno (((0 << 48) = 0));
          rely (((((st_7.(shared)).(e_locks)) @ 5) = (Some CPU_ID)));
          (anno (((5 + 0) = 5));
          (anno (((0 & 255) = 0));
          (anno (((24 + 0) = 24));
          (anno (((0 << 48) = 0));
          (Some (
            0  ,
            ((((st_7.[log] :<
              ((EVT CPU_ID (REL 5 (VMINFO_STATE (((((st_7.(shared)).(e_vminfos)) @ 0).[e__state] :< 2).[e_public_key] :< vm_pubkey)))) ::
                ((EVT CPU_ID (REL 24 (S2PT_STATE ((((st_7.(shared)).(e_s2pts)) @ 0).[e_vttbr] :< (((((st_7.(shared)).(e_s2pts)) @ 0).(e_page_pool_start)) |' 0))))) ::
                  ((EVT CPU_ID (ACQ 24)) :: (st_7.(log)))))).[shared].[e_locks] :<
              ((((st_7.(shared)).(e_locks)) # 24 == None) # 5 == None)).[shared].[e_s2pts] :<
              (((st_7.(shared)).(e_s2pts)) # 0 == ((((st_7.(shared)).(e_s2pts)) @ 0).[e_vttbr] :< (((((st_7.(shared)).(e_s2pts)) @ 0).(e_page_pool_start)) |' 0)))).[shared].[e_vminfos] :<
              (((st_7.(shared)).(e_vminfos)) # 0 == (((((st_7.(shared)).(e_vminfos)) @ 0).[e__state] :< 2).[e_public_key] :< vm_pubkey)))
          ))))))))))))))))))))
        else (
          (anno (((24 + 0) = 24));
          (anno (((5 + 0) = 5));
          rely (((((st_7.(shared)).(e_locks)) @ 5) = (Some CPU_ID)));
          (anno (((0 - 0) = 0));
          (anno (((24 + 0) = 24));
          (anno (((5 + 0) = 5));
          rely (((((st_7.(shared)).(e_locks)) @ 5) = (Some CPU_ID)));
          (anno (((0 - 0) = 0));
          (anno (((24 + 0) = 24));
          (anno (((5 + 0) = 5));
          rely (((((st_7.(shared)).(e_locks)) @ 5) = (Some CPU_ID)));
          (anno (((5 + 0) = 5));
          (anno (((24 + 0) = 24));
          (Some (
            0  ,
            (((st_7.[log] :<
              ((EVT CPU_ID (REL 5 (VMINFO_STATE (((((st_7.(shared)).(e_vminfos)) @ 0).[e__state] :< 2).[e_public_key] :< vm_pubkey)))) ::
                ((EVT CPU_ID (REL 24 (S2PT_STATE (((st_7.(shared)).(e_s2pts)) @ 0)))) :: ((EVT CPU_ID (ACQ 24)) :: (st_7.(log)))))).[shared].[e_locks] :<
              ((((st_7.(shared)).(e_locks)) # 24 == None) # 5 == None)).[shared].[e_vminfos] :<
              (((st_7.(shared)).(e_vminfos)) # 0 == (((((st_7.(shared)).(e_vminfos)) @ 0).[e__state] :< 2).[e_public_key] :< vm_pubkey)))
          ))))))))))))))))))
      else None)))))).

  Hint Unfold register_kvm_spec_mid: spec.

  Lemma f_register_kvm_refine_mid:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: register_kvm_spec_mid hst = Some (res, hst')),
      exists lst', register_kvm_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_register_kvm_refine_high:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: register_kvm_spec hst = Some (res, hst')),
      exists lst', register_kvm_spec_mid lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      Local Transparent register_kvm_spec.
      unfold register_kvm_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_register_kvm_refine:
    forall lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: register_kvm_spec hst = Some (res, hst')),
      exists lst', register_kvm_spec_low lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      Local Transparent register_kvm_spec.
      unfold register_kvm_spec.
      intros; inv Hrel.
      eapply f_register_kvm_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_register_kvm_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VMOps_register_kvm_RefProof.

