Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section Locks_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition acquire_lock_core_spec (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ ABS_LOCK) = None));
    (Some ((st_2.[log] :< ((EVT CPU_ID (ACQ ABS_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # ABS_LOCK == (Some CPU_ID)))).

  Definition acquire_lock_pt_spec (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (24 + v_vmid)) = None));
    (Some ((st_2.[log] :< ((EVT CPU_ID (ACQ (24 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (24 + v_vmid) == (Some CPU_ID)))).

  Definition acquire_lock_s2page_spec (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ S2PAGE_LOCK) = None));
    (Some ((st_2.[log] :< ((EVT CPU_ID (ACQ S2PAGE_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # S2PAGE_LOCK == (Some CPU_ID)))).

  Definition acquire_lock_smmu_spec (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMU_LOCK) = None));
    (Some ((st_2.[log] :< ((EVT CPU_ID (ACQ SMMU_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # SMMU_LOCK == (Some CPU_ID)))).

  Definition acquire_lock_spt_spec (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
    (Some ((st_2.[log] :< ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # SMMUPT_LOCK == (Some CPU_ID)))).

  Definition release_lock_core_spec (st: RData) : (option RData) :=
    rely (((((st.(shared)).(e_locks)) @ ABS_LOCK) = (Some CPU_ID)));
    (Some ((st.[log] :< ((EVT CPU_ID (REL ABS_LOCK (ABS_STATE ((st.(shared)).(e_core_data))))) :: (st.(log)))).[shared].[e_locks] :<
      (((st.(shared)).(e_locks)) # ABS_LOCK == None))).

  Definition release_lock_s2page_spec (st: RData) : (option RData) :=
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    (Some ((st.[log] :< ((EVT CPU_ID (REL S2PAGE_LOCK (S2PAGE_STATE ((st.(shared)).(e_s2pages))))) :: (st.(log)))).[shared].[e_locks] :<
      (((st.(shared)).(e_locks)) # S2PAGE_LOCK == None))).

  Definition acquire_lock_vm_spec (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
    (Some ((st_2.[log] :< ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_2.(log)))).[shared].[e_locks] :< (((st_2.(shared)).(e_locks)) # (5 + v_vmid) == (Some CPU_ID)))).

  Definition release_lock_pt_spec (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
    (Some ((st.[log] :< ((EVT CPU_ID (REL (24 + v_vmid) (S2PT_STATE (((st.(shared)).(e_s2pts)) @ v_vmid)))) :: (st.(log)))).[shared].[e_locks] :<
      (((st.(shared)).(e_locks)) # (24 + v_vmid) == None))).

  Definition release_lock_smmu_spec (st: RData) : (option RData) :=
    rely (((((st.(shared)).(e_locks)) @ SMMU_LOCK) = (Some CPU_ID)));
    (Some ((st.[log] :< ((EVT CPU_ID (REL SMMU_LOCK (SMMU_VMID_STATE ((st.(shared)).(e_smmu_vmid))))) :: (st.(log)))).[shared].[e_locks] :<
      (((st.(shared)).(e_locks)) # SMMU_LOCK == None))).

  Definition release_lock_spt_spec (st: RData) : (option RData) :=
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    (Some ((st.[log] :< ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE ((st.(shared)).(e_smmupts))))) :: (st.(log)))).[shared].[e_locks] :<
      (((st.(shared)).(e_locks)) # SMMUPT_LOCK == None))).

  Definition release_lock_vm_spec (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
    rely (((((st.(shared)).(e_locks)) @ (5 + v_vmid)) = (Some CPU_ID)));
    (Some ((st.[log] :< ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE (((st.(shared)).(e_vminfos)) @ v_vmid)))) :: (st.(log)))).[shared].[e_locks] :<
      (((st.(shared)).(e_locks)) # (5 + v_vmid) == None))).

End Locks_Spec.

#[global] Hint Unfold acquire_lock_core_spec: spec.
#[global] Hint Unfold acquire_lock_pt_spec: spec.
#[global] Hint Unfold acquire_lock_s2page_spec: spec.
#[global] Hint Unfold acquire_lock_smmu_spec: spec.
#[global] Hint Unfold acquire_lock_spt_spec: spec.
#[global] Hint Unfold release_lock_core_spec: spec.
#[global] Hint Unfold release_lock_s2page_spec: spec.
#[global] Hint Unfold acquire_lock_vm_spec: spec.
#[global] Hint Unfold release_lock_pt_spec: spec.
#[global] Hint Unfold release_lock_smmu_spec: spec.
#[global] Hint Unfold release_lock_spt_spec: spec.
#[global] Hint Unfold release_lock_vm_spec: spec.
