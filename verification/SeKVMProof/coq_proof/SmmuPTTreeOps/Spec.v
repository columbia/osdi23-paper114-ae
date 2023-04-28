Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Parameter init_smmupt : (ZMap.t (option Z)).

Section SmmuPTTreeOps_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition init_smmu_pt_spec (v_cbndx: Z) (v_index: Z) (st: RData) : (option RData) :=
    rely ((is_cbndx v_cbndx));
    rely ((is_smmu_index v_index));
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    let smmuid := (smmu_id v_cbndx v_index) in
    let spt' := (((st.(shared)).(e_smmupts)).[e_smmu_pt] :< ((((st.(shared)).(e_smmupts)).(e_smmu_pt)) # smmuid == init_smmupt)) in
    (Some (st.[shared].[e_smmupts] :< spt')).

  Definition smmupt_walk (smmuid: Z) (v_addr: Z) (spts: SMMU_PT) : Z :=
    let v_gfn := (v_addr / 4096) in
    match ((((spts.(e_smmu_pt)) @ smmuid) @ v_gfn)) with
    | (Some v_pte) => v_pte
    | None => 0
    end.

  Definition walk_smmu_pt_spec (v_cbndx: Z) (v_index: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    rely ((is_cbndx v_cbndx));
    rely ((is_smmu_index v_index));
    rely ((is_paddr v_addr));
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    let smmuid := (smmu_id v_cbndx v_index) in
    (Some ((smmupt_walk smmuid v_addr ((st.(shared)).(e_smmupts))), st)).

  Definition alloc_spt (spt: SMMU_PT) : (option SMMU_PT) :=
    let spt := ((spt.[e_smmu_pgd_used_pages] :< ((spt.(e_smmu_pgd_used_pages)) + 1)).[e_smmu_pmd_used_pages] :< ((spt.(e_smmu_pmd_used_pages)) + 1)) in
    rely ((((spt.(e_smmu_pgd_used_pages)) <= 16) /\ ((spt.(e_smmu_pmd_used_pages)) <= 495)));
    (Some spt).

  Definition smmupt_set (smmuid: Z) (v_addr: Z) (v_pte: Z) (spts: SMMU_PT) : (option SMMU_PT) :=
    let v_gfn := (v_addr / 4096) in
    when spts == ((alloc_spt spts));
    let spt' := (
        (((spts.(e_smmu_pt)) @ smmuid) # v_gfn == if (v_pte <>? 0)
        then (Some v_pte)
        else None)) in
    let spts' := (spts.[e_smmu_pt] :< ((spts.(e_smmu_pt)) # smmuid == spt')) in
    (Some spts').

  Definition set_smmu_pt_spec (v_cbndx: Z) (v_index: Z) (v_addr: Z) (v_pte: Z) (st: RData) : (option RData) :=
    rely ((is_cbndx v_cbndx));
    rely ((is_smmu_index v_index));
    rely ((is_paddr v_addr));
    rely (((((st.(shared)).(e_locks)) @ SMMUPT_LOCK) = (Some CPU_ID)));
    let smmuid := (smmu_id v_cbndx v_index) in
    when spts' == ((smmupt_set smmuid v_addr v_pte ((st.(shared)).(e_smmupts))));
    (Some (st.[shared].[e_smmupts] :< spts')).

End SmmuPTTreeOps_Spec.

#[global] Hint Unfold init_smmu_pt_spec: spec.
Opaque smmupt_walk.
#[global] Hint Unfold walk_smmu_pt_spec: spec.
#[global] Hint Unfold alloc_spt: spec.
Opaque smmupt_set.
#[global] Hint Unfold set_smmu_pt_spec: spec.
