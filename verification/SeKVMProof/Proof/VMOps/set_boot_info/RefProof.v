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
Require Import VMOps.set_boot_info.LowSpec.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOps_set_boot_info_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_boot_info_spec_mid (v_vmid: Z) (v_load_addr: Z) (v_size: Z) (st: RData) : (option (Z * RData)) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e__state)) =? 2)
    then (
      if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) <? 5)
      then (
        when st_5 == (
            (query_oracle
              (((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID))).[shared].[e_vminfos] :<
                (((st_2.(shared)).(e_vminfos)) #
                  v_vmid ==
                  ((((st_2.(shared)).(e_vminfos)) @ v_vmid).[e_load_info_cnt] :< (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) + 1))))));
        rely (((((st_5.(shared)).(e_locks)) @ ABS_LOCK) = None));
        if ((((((st_5.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296) + (((v_size + 4095) >> 12) << 12)) <? 5497558138880)
        then (
          rely ((((0 - ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))) <= 0) /\ (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) < 5)));
          rely ((((((st_5.(shared)).(e_locks)) # ABS_LOCK == None) @ (5 + v_vmid)) = (Some CPU_ID)));
          (Some (
            ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))  ,
            ((((st_5.[log] :<
              ((EVT
                CPU_ID 
                (REL
                  (5 + v_vmid) 
                  (VMINFO_STATE
                    ((((st_5.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :<
                      (((((st_5.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) #
                        ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) ==
                        ((((((((((st_5.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))).[e__size] :< v_size).[e_el2_mapped_pages] :<
                          0).[e_el2_remap_addr] :<
                          ((((st_5.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296)).[e_load_addr] :<
                          v_load_addr).[e_signature] :<
                          vm_signature)))))) ::
                ((EVT
                  CPU_ID 
                  (REL
                    ABS_LOCK 
                    (ABS_STATE
                      (((st_5.(shared)).(e_core_data)).[e_last_remap_ptr] :< (((((st_5.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296) + (((v_size + 4095) >> 12) << 12)))))) ::
                  ((EVT CPU_ID (ACQ ABS_LOCK)) :: (st_5.(log)))))).[shared].[e_core_data].[e_last_remap_ptr] :<
              (((((st_5.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296) + (((v_size + 4095) >> 12) << 12))).[shared].[e_locks] :<
              ((((st_5.(shared)).(e_locks)) # ABS_LOCK == None) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
              (((st_5.(shared)).(e_vminfos)) #
                v_vmid ==
                ((((st_5.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :<
                  (((((st_5.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) #
                    ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) ==
                    ((((((((((st_5.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))).[e__size] :< v_size).[e_el2_mapped_pages] :<
                      0).[e_el2_remap_addr] :<
                      ((((st_5.(shared)).(e_core_data)).(e_last_remap_ptr)) + 4294967296)).[e_load_addr] :<
                      v_load_addr).[e_signature] :<
                      vm_signature)))))
          )))
        else None)
      else (
        (Some (
          ((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt))  ,
          ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
            (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))
        ))))
    else (
      (Some (
        (- 1)  ,
        ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None))
      ))).

  Hint Unfold set_boot_info_spec_mid: spec.

  Lemma f_set_boot_info_refine_mid:
    forall v_vmid v_load_addr v_size lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: set_boot_info_spec_mid v_vmid v_load_addr v_size hst = Some (res, hst')),
      exists lst', set_boot_info_spec_low v_vmid v_load_addr v_size lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_boot_info_refine_high:
    forall v_vmid v_load_addr v_size lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: set_boot_info_spec v_vmid v_load_addr v_size hst = Some (res, hst')),
      exists lst', set_boot_info_spec_mid v_vmid v_load_addr v_size lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      Local Transparent set_boot_info_spec.
      unfold set_boot_info_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_boot_info_refine:
    forall v_vmid v_load_addr v_size lst hst hst' res
           (Hrel: refrel hst lst)
           (Hspec: set_boot_info_spec v_vmid v_load_addr v_size hst = Some (res, hst')),
      exists lst', set_boot_info_spec_low v_vmid v_load_addr v_size lst = Some (res, lst') /\ refrel hst' lst'.
    Proof.
      Local Transparent set_boot_info_spec.
      unfold set_boot_info_spec.
      intros; inv Hrel.
      eapply f_set_boot_info_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_boot_info_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VMOps_set_boot_info_RefProof.

