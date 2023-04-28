Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTTreeOps_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition s2pt_walk (v_addr: Z) (npt: Stage2PT) : Z :=
    let v_gfn := (v_addr / 4096) in
    let v_gfn512 := (v_gfn / 512) in
    match (((npt.(e_lv2pt)) @ v_gfn512)) with
    | (Some v_pte) => v_pte
    | None =>
      match (((npt.(e_lv3pt)) @ v_gfn)) with
      | (Some v_pte) => v_pte
      | None => 0
      end
    end.

  Definition walk_npt_spec (v_vmid: Z) (v_addr: Z) (st: RData) : (option (Z * RData)) :=
    rely ((is_vmid v_vmid));
    rely ((is_addr v_addr));
    rely (((((st.(shared)).(e_locks)) @ (S2PT_LOCK v_vmid)) = (Some CPU_ID)));
    let npt := (((st.(shared)).(e_s2pts)) @ v_vmid) in
    rely (((npt.(e_vttbr)) <> 0));
    (Some ((s2pt_walk v_addr npt), st)).

  Definition alloc_pt (npt: Stage2PT) : (option Stage2PT) :=
    let npt := (
        (((npt.[e_pud_used_pages] :< ((npt.(e_pud_used_pages)) + 1)).[e_pmd_used_pages] :< ((npt.(e_pmd_used_pages)) + 1)).[e_pte_used_pages] :<
          ((npt.(e_pte_used_pages)) + 1))) in
    rely (((((npt.(e_pud_used_pages)) <= 16) /\ ((npt.(e_pmd_used_pages)) <= 495)) /\ ((npt.(e_pte_used_pages)) <= 1536)));
    (Some npt).

  Definition s2pt_set (v_addr: Z) (v_level: Z) (v_pte: Z) (npt: Stage2PT) : (option Stage2PT) :=
    let v_gfn := (v_addr / 4096) in
    let v_gfn512 := (v_gfn / 512) in
    when npt == ((alloc_pt npt));
    if (v_level =? 2)
    then (
      rely (((v_pte & 3) <> 3));
      rely ((forall (addr: Z), ((is_addr addr) -> ((((addr / 4096) / 512) = ((v_addr / 4096) / 512)) -> (((npt.(e_lv3pt)) @ (addr / 4096)) = None)))));
      (Some (npt.[e_lv2pt] :< ((npt.(e_lv2pt)) # v_gfn512 == (Some (v_pte |' 36028797018963968))))))
    else (
      rely ((((npt.(e_lv2pt)) @ v_gfn512) = None));
      (Some (npt.[e_lv3pt] :< ((npt.(e_lv3pt)) # v_gfn == (Some (v_pte |' 72057594037927936)))))).

  Definition set_npt_spec (v_vmid: Z) (v_addr: Z) (v_level: Z) (v_pte: Z) (st: RData) : (option RData) :=
    rely ((is_vmid v_vmid));
    rely ((is_addr v_addr));
    rely (((((st.(shared)).(e_locks)) @ (S2PT_LOCK v_vmid)) = (Some CPU_ID)));
    let npt := (((st.(shared)).(e_s2pts)) @ v_vmid) in
    rely (((npt.(e_vttbr)) <> 0));
    when npt' == ((s2pt_set v_addr v_level v_pte npt));
    (Some (st.[shared].[e_s2pts] :< (((st.(shared)).(e_s2pts)) # v_vmid == npt'))).

  Definition init_npt_spec (v_vmid: Z) (st: RData) : (option RData) :=
    if (v_vmid <? 18)
    then (
      rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
      rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
      if (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_vttbr)) =? 0)
      then (
        (Some (st.[shared].[e_s2pts] :<
          (((st.(shared)).(e_s2pts)) #
            v_vmid ==
            ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_vttbr] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) |' ((v_vmid & 255) << 48)))))))
      else (Some st))
    else (
      if (((((st.(priv)).(e_cpu_regs)).(e_sysregs_el2)) @ TTBR0_EL2) =? 0)
      then (
        rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
        rely (((((st.(shared)).(e_locks)) @ (24 + v_vmid)) = (Some CPU_ID)));
        (Some (st.[shared].[e_s2pts] :<
          (((st.(shared)).(e_s2pts)) #
            v_vmid ==
            ((((st.(shared)).(e_s2pts)) @ v_vmid).[e_vttbr] :< (((((st.(shared)).(e_s2pts)) @ v_vmid).(e_page_pool_start)) |' ((v_vmid & 255) << 48)))))))
      else (Some st)).

End S2PTTreeOps_Spec.

Opaque s2pt_walk.
#[global] Hint Unfold walk_npt_spec: spec.
#[global] Hint Unfold alloc_pt: spec.
Opaque s2pt_set.
#[global] Hint Unfold set_npt_spec: spec.
#[global] Hint Unfold init_npt_spec: spec.
