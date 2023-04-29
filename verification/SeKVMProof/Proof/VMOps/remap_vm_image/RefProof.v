Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import Locks.Spec.
Require Import MemoryOps.Layer.
Require Import S2PTOps.Spec.
Require Import S2PTTreeOps.Spec.
Require Import VMOps.Layer.
Require Import VMOps.RefineRel.
Require Import VMOps.Spec.
Require Import VMOps.remap_vm_image.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOps_remap_vm_image_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition remap_vm_image_spec_mid (v_vmid: Z) (v_pfn: Z) (v_load_idx: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    if (((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e__state)) =? 2)
    then (
      if ((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info_cnt)) - v_load_idx) >? 0)
      then (
        rely ((((0 - v_load_idx) <= 0) /\ (v_load_idx < 5)));
        if (
          ((((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_mapped_pages)) -
            ((((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e__size)) + 4095) >> 12)) <?
            0))
        then (
          (anno (((0 - 18) = (- 18)));
          when st_7 == (
              (query_oracle
                ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID)))));
          (anno (((24 + 18) = 42));
          rely (((((st_7.(shared)).(e_locks)) @ 42) = None));
          rely (
            (((0 -
              (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_remap_addr)) +
                (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_mapped_pages)) << 12))) <=
              0) /\
              (((((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_remap_addr)) +
                (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_mapped_pages)) << 12)) -
                MAX_ADDR) <=
                0)));
          rely ((((((st_7.(shared)).(e_s2pts)) @ 18).(e_vttbr)) <> 0));
          when npt' == (
              (s2pt_set
                (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_remap_addr)) +
                  (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_mapped_pages)) << 12)) 
                3 
                ((v_pfn << 12) + 18014398509483859) 
                (((st_7.(shared)).(e_s2pts)) @ 18)));
          (anno (((24 + 18) = 42));
          rely ((((((st_7.(shared)).(e_locks)) # 42 == None) @ (5 + v_vmid)) = (Some CPU_ID)));
          (Some ((((st_7.[log] :<
            ((EVT
              CPU_ID 
              (REL
                (5 + v_vmid) 
                (VMINFO_STATE
                  ((((st_7.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :<
                    (((((st_7.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) #
                      v_load_idx ==
                      ((((((st_7.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).[e_el2_mapped_pages] :<
                        (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_mapped_pages)) + 1))))))) ::
              ((EVT CPU_ID (REL 42 (S2PT_STATE npt'))) :: ((EVT CPU_ID (ACQ 42)) :: (st_7.(log)))))).[shared].[e_locks] :<
            ((((st_7.(shared)).(e_locks)) # 42 == None) # (5 + v_vmid) == None)).[shared].[e_s2pts] :<
            (((st_7.(shared)).(e_s2pts)) # 18 == npt')).[shared].[e_vminfos] :<
            (((st_7.(shared)).(e_vminfos)) #
              v_vmid ==
              ((((st_7.(shared)).(e_vminfos)) @ v_vmid).[e_load_info] :<
                (((((st_7.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) #
                  v_load_idx ==
                  ((((((st_7.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).[e_el2_mapped_pages] :<
                    (((((((st_2.(shared)).(e_vminfos)) @ v_vmid).(e_load_info)) @ v_load_idx).(e_el2_mapped_pages)) + 1)))))))))))
        else (
          (Some ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
            (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)))))
      else (
        (Some ((st_2.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st_2.(shared)).(e_vminfos)) @ v_vmid)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == None)))))
    else None.

  Hint Unfold remap_vm_image_spec_mid: spec.

  Lemma f_remap_vm_image_refine_mid:
    forall v_vmid v_pfn v_load_idx lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: remap_vm_image_spec_mid v_vmid v_pfn v_load_idx hst = Some hst'),
      exists lst', remap_vm_image_spec_low v_vmid v_pfn v_load_idx lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_remap_vm_image_refine_high:
    forall v_vmid v_pfn v_load_idx lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: remap_vm_image_spec v_vmid v_pfn v_load_idx hst = Some hst'),
      exists lst', remap_vm_image_spec_mid v_vmid v_pfn v_load_idx lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent remap_vm_image_spec.
      unfold remap_vm_image_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_remap_vm_image_refine:
    forall v_vmid v_pfn v_load_idx lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: remap_vm_image_spec v_vmid v_pfn v_load_idx hst = Some hst'),
      exists lst', remap_vm_image_spec_low v_vmid v_pfn v_load_idx lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent remap_vm_image_spec.
      unfold remap_vm_image_spec.
      intros; inv Hrel.
      eapply f_remap_vm_image_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_remap_vm_image_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VMOps_remap_vm_image_RefProof.

