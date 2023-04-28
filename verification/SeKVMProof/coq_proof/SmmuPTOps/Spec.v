Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuPTTreeOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuPTOps_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition init_spt_spec (v_cbndx: Z) (v_index: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
    rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
    rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
    (Some (((st_2.[log] :<
      ((EVT
        CPU_ID 
        (REL
          SMMUPT_LOCK 
          (SMMUPT_STATE (((st_2.(shared)).(e_smmupts)).[e_smmu_pt] :< ((((st_2.(shared)).(e_smmupts)).(e_smmu_pt)) # ((8 * v_index) + v_cbndx) == init_smmupt))))) ::
        ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
      (((st_2.(shared)).(e_locks)) # SMMUPT_LOCK == None)).[shared].[e_smmupts].[e_smmu_pt] :<
      ((((st_2.(shared)).(e_smmupts)).(e_smmu_pt)) # ((8 * v_index) + v_cbndx) == init_smmupt))).

  Definition walk_spt_spec (v_cbndx: Z) (v_index: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
    rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
    rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
    rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_PADDR) <= 0)));
    (Some (
      (smmupt_walk ((8 * v_index) + v_cbndx) v_addr ((st_2.(shared)).(e_smmupts)))  ,
      ((st_2.[log] :< ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE ((st_2.(shared)).(e_smmupts))))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
        (((st_2.(shared)).(e_locks)) # SMMUPT_LOCK == None))
    )).

  Definition map_spt_spec (v_cbndx: Z) (v_index: Z) (v_addr: Z) (v_pte: Z) (st: RData) : (option RData) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
    rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
    rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
    rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_PADDR) <= 0)));
    when spts' == ((smmupt_set ((8 * v_index) + v_cbndx) v_addr v_pte ((st_2.(shared)).(e_smmupts))));
    (Some (((st_2.[log] :< ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
      (((st_2.(shared)).(e_locks)) # SMMUPT_LOCK == None)).[shared].[e_smmupts] :<
      spts')).

  Definition unmap_spt_spec (v_cbndx: Z) (v_index: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    when st_2 == ((query_oracle st));
    rely (((((st_2.(shared)).(e_locks)) @ SMMUPT_LOCK) = None));
    rely ((((0 - v_cbndx) <= 0) /\ (((- 8) + v_cbndx) < 0)));
    rely ((((0 - v_index) <= 0) /\ (((- 2) + v_index) < 0)));
    rely ((((0 - v_addr) <= 0) /\ ((v_addr - MAX_PADDR) <= 0)));
    if ((smmupt_walk ((8 * v_index) + v_cbndx) v_addr ((st_2.(shared)).(e_smmupts))) =? 0)
    then (
      (Some (
        (smmupt_walk ((8 * v_index) + v_cbndx) v_addr ((st_2.(shared)).(e_smmupts)))  ,
        ((st_2.[log] :< ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE ((st_2.(shared)).(e_smmupts))))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # SMMUPT_LOCK == None))
      )))
    else (
      when spts' == ((smmupt_set ((8 * v_index) + v_cbndx) v_addr 0 ((st_2.(shared)).(e_smmupts))));
      (Some (
        (smmupt_walk ((8 * v_index) + v_cbndx) v_addr ((st_2.(shared)).(e_smmupts)))  ,
        (((st_2.[log] :< ((EVT CPU_ID (REL SMMUPT_LOCK (SMMUPT_STATE spts'))) :: ((EVT CPU_ID (ACQ SMMUPT_LOCK)) :: (st_2.(log))))).[shared].[e_locks] :<
          (((st_2.(shared)).(e_locks)) # SMMUPT_LOCK == None)).[shared].[e_smmupts] :<
          spts')
      ))).

End SmmuPTOps_Spec.

#[global] Hint Unfold init_spt_spec: spec.
#[global] Hint Unfold walk_spt_spec: spec.
#[global] Hint Unfold map_spt_spec: spec.
#[global] Hint Unfold unmap_spt_spec: spec.
