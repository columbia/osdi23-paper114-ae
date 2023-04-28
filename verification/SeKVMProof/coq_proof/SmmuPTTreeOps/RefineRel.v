Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Notation "'phys_page[' X ']'" := (Z.land X 281474976706560).
Notation "'pgd_idx[' X ']'" := (Z.land (X >> 27) 8184).
Notation "'pmd_idx[' X ']'" := (Z.land (X >> 18) 4088).
Notation "'pte_idx[' X ']'" := (Z.land (X >> 9) 4088).

Record refrel_same (hst: RData) (lst: RData): Prop :=
  {
    (* same fields *)
    id_locks: hst.(shared).(e_locks) = lst.(shared).(e_locks);
    id_s2pages: hst.(shared).(e_s2pages) = lst.(shared).(e_s2pages);
    id_core_data: hst.(shared).(e_core_data) = lst.(shared).(e_core_data);
    id_smmupts: hst.(shared).(e_s2pts) = lst.(shared).(e_s2pts);
    id_smmu_vmid: hst.(shared).(e_smmu_vmid) = lst.(shared).(e_smmu_vmid);
    id_vminfos: hst.(shared).(e_vminfos) = lst.(shared).(e_vminfos);
    id_priv: hst.(priv) = lst.(priv);
    id_log: hst.(log) = lst.(log);
    id_oracle: hst.(oracle) = lst.(oracle);
    id_repl: hst.(repl) = lst.(repl)
  }.

Record refrel_smmupt (hst: RData) (lst: RData): Prop :=
  {
    pool_start_value:
    exists START, START mod 8192 = 0 /\ 0 < START <= 1099511627776 -16908288 /\ lst.(shared).(e_smmupts).(e_smmu_page_pool_start) = START + 131072 /\
               forall smmuid, 0 <= smmuid < 16 -> (lst.(priv).(e_smmu_cfg) @ smmuid).(e_hw_ttbr) = START + smmuid * 8192;
    pgd_used_page_rel: hst.(shared).(e_smmupts).(e_smmu_pgd_used_pages) >= lst.(shared).(e_smmupts).(e_smmu_pgd_used_pages);
    pmd_used_page_rel: hst.(shared).(e_smmupts).(e_smmu_pmd_used_pages) >= lst.(shared).(e_smmupts).(e_smmu_pmd_used_pages);
    pgd_used_range: 0 <= lst.(shared).(e_smmupts).(e_smmu_pgd_used_pages) <= 256;
    pmd_used_range: 0 <= lst.(shared).(e_smmupts).(e_smmu_pmd_used_pages) <= 3840;
    pmd_pool_unused:
    let spt := lst.(shared).(e_smmupts) in
    forall addr, addr >= spt.(e_smmu_page_pool_start) + spt.(e_smmu_pgd_used_pages) * 4096 -> spt.(e_smmu_pmd_pool) @ addr = 0;
    pte_pool_unused:
    let spt := lst.(shared).(e_smmupts) in
    forall addr, addr >= spt.(e_smmu_page_pool_start) + 1048576 + spt.(e_smmu_pmd_used_pages) * 4096 -> spt.(e_smmu_pte_pool) @ addr = 0;
    pgd_pool_used:
    let spt := lst.(shared).(e_smmupts) in
    exists (pgd_mapp: Z -> Z),
    forall addr, let val := spt.(e_smmu_pgd_pool) @ addr in
            val = 0 \/ (spt.(e_smmu_page_pool_start) <= val & 281474976706560 <= spt.(e_smmu_page_pool_start) - 4096 + spt.(e_smmu_pgd_used_pages) * 4096 /\
                         pgd_mapp (val & 281474976706560) = addr);
    pmd_pool_used:
    let spt := lst.(shared).(e_smmupts) in
    exists (pmd_mapp: Z -> Z),
    forall addr, let val := spt.(e_smmu_pmd_pool) @ addr in
            val = 0 \/ (spt.(e_smmu_page_pool_start) + 1048576 <= val & 281474976706560 <= spt.(e_smmu_page_pool_start) + 1044480 + spt.(e_smmu_pmd_used_pages) * 4096 /\
                         pmd_mapp (val & 281474976706560) = addr);

    pt_map:
    let hspt := hst.(shared).(e_smmupts) in
    let lspt := lst.(shared).(e_smmupts) in
    forall smmuid addr (Hsmmuid: 0 <= smmuid < 16) (Haddr: is_paddr addr) pte,
      ((hspt.(e_smmu_pt) @ smmuid) @ (addr / 4096) = Some pte) <->
        (let hw_ttbr := lspt.(e_smmu_page_pool_start) - 131072 + smmuid * 8192 in
         let pgd := phys_page[lspt.(e_smmu_pgd_pool) @ (pgd_idx[addr] + hw_ttbr)] in
         pgd <> 0 /\
           let pmd := phys_page[lspt.(e_smmu_pmd_pool) @ (pmd_idx[addr] + pgd)] in
           pmd <> 0 /\ pte = lspt.(e_smmu_pte_pool) @ (pte_idx[addr] + pmd) /\ pte <> 0);
  }.

Record refrel (hst: RData) (lst: RData): Prop :=
  {
    same_rel: refrel_same hst lst;
    pt_rel: refrel_smmupt hst lst;
  }.

Lemma idx_or_base: forall a b, 0 <= a < 4096 -> b >= 0 -> b mod 4096 = 0 ->  Z.lor a b = a + b.
Admitted.

Lemma base_or_perm: forall a b, a >= 0 -> a mod 4096 = 0 -> 0 <= b < 4096 -> Z.lor a b = a + b.
Admitted.

Lemma plus_mod_0_dist:
  forall a b n, a mod n = 0 -> b mod n = 0 -> (a + b) mod n = 0.
Admitted.

Lemma mul_mod_0_r:
  forall a b n, b mod n = 0 -> (a * b) mod n = 0.
Admitted.

Lemma mul_mod_0_l:
  forall a b n, a mod n = 0 -> (a * b) mod n = 0.
Admitted.

Lemma phys_page_add_rem:
  forall n r, 0 <= r < 4096 -> n >= 0 -> n & 281474976706560 = n -> (n + r) & 281474976706560 = n.
Admitted.

Lemma phys_page_id_iff:
  forall n, n >= 0 -> (n < 281474976710656 -> n mod 4096 = 0 <-> n & 281474976706560 = n).
Admitted.

Lemma or_n_and_3:
  forall a n, n & 3 = 0 -> a & 3 <> 3 -> (a |' n) & 3 <> 3.
Admitted.

Lemma or_n3_and_3:
  forall a n, n & 3 = 3 -> (a |' n) & 3 = 3.
Admitted.

Lemma add_n3_and_3:
  forall a n, a & 3 = 0 -> n & 3 = 3 -> (a + n) & 3 = 3.
Admitted.

Lemma n4096_and_3:
  forall n, n mod 4096 = 0 -> n & 3 = 0.
Admitted.

Lemma or_n_ne_zero:
  forall a n, n <> 0 -> a |' n <> 0.
Admitted.

Lemma addr_eq_indices_smmu:
  forall addr addr' (Haddr: is_paddr addr) (Haddr': is_paddr addr'),
    addr / 4096 = addr' / 4096 <-> pgd_idx[addr] = pgd_idx[addr'] /\ pmd_idx[addr] = pmd_idx[addr'] /\ pte_idx[addr] = pte_idx[addr'].
Admitted.

Lemma x_shiftl_12:
  forall x, x << 12 = x * 4096.
Admitted.

Lemma idx_plus_base_diff:
  forall i1 b1 i2 b2,
    0 <= i1 < 4096 -> 0 <= i2 < 4096 -> b1 mod 4096 = 0 -> b2 mod 4096 = 0 ->
    (i1 <> i2 \/ b1 <> b2) -> i1 + b1 <> i2 + b2.
Admitted.

Lemma idx_plus_base_diff_8192:
  forall i1 b1 i2 b2,
    0 <= i1 < 8192 -> 0 <= i2 < 8192 -> b1 mod 8192 = 0 -> b2 mod 8192 = 0 ->
    (i1 <> i2 \/ b1 <> b2) -> i1 + b1 <> i2 + b2.
Admitted.

Lemma phys_page_mod_4096:
  forall n, (n & 281474976706560) mod 4096 = 0.
Admitted.

Lemma mod_8192_4096:
  forall n, n mod 8192 = 0 -> n mod 4096 = 0.
Admitted.

Lemma x_shiftl_40:
  forall x, x << 40 = x * 1099511627776.
Admitted.

Ltac solve_phys_page_mod :=
  repeat rewrite plus_mod_0_dist; try lia; repeat rewrite mul_mod_0_r; try reflexivity.

#[global] Hint Unfold smmu_id SMMU_NUM_CBNDX SMMU_NUM_DEVICE is_paddr is_smmu_index is_cbndx is_vmid MAX_PADDR SMMUPT_LOCK: proof.
