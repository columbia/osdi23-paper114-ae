Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Notation "'phys_page[' X ']'" := (Z.land X 281474976706560).
Notation "'pgd_idx[' X ']'" := (Z.land (X >> 36) 4088).
Notation "'pud_idx[' X ']'" := (Z.land (X >> 27) 4088).
Notation "'pmd_idx[' X ']'" := (Z.land (X >> 18) 4088).
Notation "'pte_idx[' X ']'" := (Z.land (X >> 9) 4088).

Record refrel_same (hst: RData) (lst: RData): Prop :=
  {
    (* same fields *)
    id_locks: hst.(shared).(e_locks) = lst.(shared).(e_locks);
    id_s2pages: hst.(shared).(e_s2pages) = lst.(shared).(e_s2pages);
    id_core_data: hst.(shared).(e_core_data) = lst.(shared).(e_core_data);
    id_smmupts: hst.(shared).(e_smmupts) = lst.(shared).(e_smmupts);
    id_smmu_vmid: hst.(shared).(e_smmu_vmid) = lst.(shared).(e_smmu_vmid);
    id_vminfos: hst.(shared).(e_vminfos) = lst.(shared).(e_vminfos);
    id_priv: hst.(priv) = lst.(priv);
    id_log: hst.(log) = lst.(log);
    id_oracle: hst.(oracle) = lst.(oracle);
    id_repl: hst.(repl) = lst.(repl)
  }.

Record refrel_s2pt (vmid: Z) (hst: RData) (lst: RData): Prop :=
  {
    (** s2pt relation *)
    (* virtually, TTBR0_el2 = COREVISOR.pt.vttbr *)
    core_vttbr: (* virtually, TTBR0_el2 = COREVISOR.pt.vttbr *)
    (e_sysregs_el2 (e_cpu_regs (priv lst))) @ TTBR0_EL2 = (lst.(shared).(e_s2pts) @ COREVISOR).(e_vttbr);
    pool_start_value: (* the values of page_pool_start *)
    exists START, START mod 4096 = 0 /\ 0 < START <= 1099511627776 - (COREVISOR + 1) * 33550336 /\
               (forall vmid (Hvmid: is_vmid vmid),
                 (lst.(shared).(e_s2pts) @ vmid).(e_page_pool_start) = START + vmid * 33550336) /\
               (forall vmid (Hvmid: is_vmid vmid),
                 (hst.(shared).(e_s2pts) @ vmid).(e_page_pool_start) = START + vmid * 33550336);
    vttbr_val: (* value of vttbr *)
    let npt := lst.(shared).(e_s2pts) @ vmid in
    npt.(e_vttbr) = (vmid << 48) + (npt.(e_page_pool_start));
    vttbr_rel: (hst.(shared).(e_s2pts) @ vmid).(e_vttbr) = (lst.(shared).(e_s2pts) @ vmid).(e_vttbr);
    pud_used_page_rel: (hst.(shared).(e_s2pts) @ vmid).(e_pud_used_pages) >= (lst.(shared).(e_s2pts) @ vmid).(e_pud_used_pages);
    pmd_used_page_rel: (hst.(shared).(e_s2pts) @ vmid).(e_pmd_used_pages) >= (lst.(shared).(e_s2pts) @ vmid).(e_pmd_used_pages);
    pte_used_page_rel: (hst.(shared).(e_s2pts) @ vmid).(e_pte_used_pages) >= (lst.(shared).(e_s2pts) @ vmid).(e_pte_used_pages);
    pud_used_range: let npt := lst.(shared).(e_s2pts) @ vmid in 0 <= npt.(e_pud_used_pages) <= 16;
    pmd_used_range: let npt := lst.(shared).(e_s2pts) @ vmid in 0 <= npt.(e_pmd_used_pages) <= 495;
    pte_used_range: let npt := lst.(shared).(e_s2pts) @ vmid in 0 <= npt.(e_pte_used_pages) <= 1536;
    pud_pool_unused:
    let npt := lst.(shared).(e_s2pts) @ vmid in
    forall addr, addr >= npt.(e_page_pool_start) + 4096 + npt.(e_pud_used_pages) * 4096 -> npt.(e_pud_pool) @ addr = 0;
    pmd_pool_unused:
    let npt := lst.(shared).(e_s2pts) @ vmid in
    forall addr, addr >= npt.(e_page_pool_start) + 4096 * 17 + npt.(e_pmd_used_pages) * 4096 -> npt.(e_pmd_pool) @ addr = 0;
    pte_pool_unused:
    let npt := lst.(shared).(e_s2pts) @ vmid in
    forall addr, addr >= npt.(e_page_pool_start) + 4096 * 512 + npt.(e_pte_used_pages) * 4096 -> npt.(e_pte_pool) @ addr = 0;
    pgd_pool_used:
    let npt := lst.(shared).(e_s2pts) @ vmid in
    exists (pgd_mapp: Z -> Z),
    forall addr, let val := npt.(e_pgd_pool) @ addr in
            val = 0 \/ (npt.(e_page_pool_start) + 4096 <= val & 281474976706560 <= npt.(e_page_pool_start) + npt.(e_pud_used_pages) * 4096 /\
                         pgd_mapp (val & 281474976706560) = addr);
    pud_pool_used:
    let npt := lst.(shared).(e_s2pts) @ vmid in
    exists (pud_mapp: Z -> Z),
    forall addr, let val := npt.(e_pud_pool) @ addr in
            val = 0 \/ (npt.(e_page_pool_start) + 4096 * 17 <= val & 281474976706560 <= npt.(e_page_pool_start) + 4096 * 16 + npt.(e_pmd_used_pages) * 4096 /\
                         pud_mapp (val & 281474976706560) = addr);
    pmd_pool_used:
    let npt := lst.(shared).(e_s2pts) @ vmid in
    exists (pmd_mapp: Z -> Z),
    forall addr, let val := npt.(e_pmd_pool) @ addr in
            val = 0 \/ val & 3 <> 3 \/
              (val & 3 = 3 /\ npt.(e_page_pool_start) + 4096 * 512 <= val & 281474976706560 <= npt.(e_page_pool_start) + 4096 * 511 + npt.(e_pte_used_pages) * 4096 /\
                 pmd_mapp (val & 281474976706560) = addr);
    lv2pt:
    let hnpt := hst.(shared).(e_s2pts) @ vmid in
    let lnpt := lst.(shared).(e_s2pts) @ vmid in
    forall addr (Haddr: is_addr addr) pmd,
      (hnpt.(e_lv2pt) @ (addr / 4096 / 512) = Some pmd) <->
        (lnpt.(e_vttbr) = (vmid << 48) + (lnpt.(e_page_pool_start)) /\
           let pgd := phys_page[lnpt.(e_pgd_pool) @ (pgd_idx[addr] + (lnpt.(e_page_pool_start)))] in
           pgd <> 0 /\
             let pud := phys_page[lnpt.(e_pud_pool) @ (pud_idx[addr] + pgd)] in
             pud <> 0 /\ pmd = lnpt.(e_pmd_pool) @ (pmd_idx[addr] + pud) /\ pmd & 3 <> 3 /\ pmd <> 0);
    lv3pt:
    let hnpt := hst.(shared).(e_s2pts) @ vmid in
    let lnpt := lst.(shared).(e_s2pts) @ vmid in
    forall addr (Haddr: is_addr addr) pte,
      (hnpt.(e_lv3pt) @ (addr / 4096) = Some pte) <->
        (lnpt.(e_vttbr) = (vmid << 48) + (lnpt.(e_page_pool_start)) /\
           let pgd := phys_page[lnpt.(e_pgd_pool) @ (pgd_idx[addr] + (lnpt.(e_page_pool_start)))] in
           pgd <> 0 /\
             let pud := phys_page[lnpt.(e_pud_pool) @ (pud_idx[addr] + pgd)] in
             pud <> 0 /\
               let pmd := lnpt.(e_pmd_pool) @ (pmd_idx[addr] + pud) in
               pmd & 3 = 3 /\ phys_page[pmd] <> 0 /\
                 pte = lnpt.(e_pte_pool) @ (pte_idx[addr] + phys_page[pmd]) /\ pte <> 0);
    lv3nonempty:
    forall addr (Haddr: is_addr addr),
      let npt := lst.(shared).(e_s2pts) @ vmid in
      (npt.(e_vttbr) = (vmid << 48) + (npt.(e_page_pool_start)) /\
         let pgd := phys_page[npt.(e_pgd_pool) @ (pgd_idx[addr] + (npt.(e_page_pool_start)))] in
         pgd <> 0 /\
           let pud := phys_page[npt.(e_pud_pool) @ (pud_idx[addr] + pgd)] in
           pud <> 0 /\
             let pmd := npt.(e_pmd_pool) @ (pmd_idx[addr] + pud) in
             pmd & 3 = 3) -> 
      exists addr' pte',
        is_addr addr' /\
          pgd_idx[addr] = pgd_idx[addr'] /\ 
          pud_idx[addr] = pud_idx[addr'] /\ 
          pmd_idx[addr] = pmd_idx[addr'] /\
          let pgd := phys_page[npt.(e_pgd_pool) @ (pgd_idx[addr] + (npt.(e_page_pool_start)))] in
          let pud := phys_page[npt.(e_pud_pool) @ (pud_idx[addr] + pgd)] in
          let pmd := npt.(e_pmd_pool) @ (pmd_idx[addr] + pud) in
          phys_page[pmd] <> 0 /\
            pte' = npt.(e_pte_pool) @ (pte_idx[addr'] + phys_page[pmd]) /\ pte' <> 0
  }.

Record refrel (hst: RData) (lst: RData): Prop :=
  {
    same_rel: refrel_same hst lst;
    pt_rel: forall vmid (Hvmid: is_vmid vmid), refrel_s2pt vmid hst lst;
  }.

Lemma vttbr_value:
  forall vmid base, HOSTVISOR <= vmid <= COREVISOR -> 0 <= base < (1 << 40) -> (vmid << 48 + base) & 281474976706560 = base.
Admitted.

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

Lemma addr_eq_indices_iff_lv2:
  forall addr addr' (Haddr: is_addr addr) (Haddr': is_addr addr'),
    addr / 4096 / 512 = addr' / 4096 / 512 <-> pgd_idx[addr] = pgd_idx[addr'] /\ pud_idx[addr] = pud_idx[addr'] /\ pmd_idx[addr] = pmd_idx[addr'].
Admitted.

Lemma addr_eq_indices_iff_lv3:
  forall addr addr' (Haddr: is_addr addr) (Haddr': is_addr addr'),
    addr / 4096 = addr' / 4096 <-> pgd_idx[addr] = pgd_idx[addr'] /\ pud_idx[addr] = pud_idx[addr'] /\ pmd_idx[addr] = pmd_idx[addr'] /\ pte_idx[addr] = pte_idx[addr'].
Admitted.

Lemma x_shiftl_12:
  forall x, x << 12 = x * 4096.
Proof.
  Local Opaque Z.mul. simpl. lia. Local Transparent Z.mul.
Qed.

Lemma idx_plus_base_diff:
  forall i1 b1 i2 b2,
    0 <= i1 < 4096 -> 0 <= i2 < 4096 -> b1 mod 4096 = 0 -> b2 mod 4096 = 0 ->
    (i1 <> i2 \/ b1 <> b2) -> i1 + b1 <> i2 + b2.
Admitted.

Lemma phys_page_mod_4096:
  forall n, (n & 281474976706560) mod 4096 = 0.
Admitted.

Lemma phys_page_exp2_48:
  forall a n, a >= 0 -> 0 <= n < 281474976706560 -> (a << 48 + n) & 281474976706560 = n.
Admitted.

Lemma x_shiftl_40:
  forall x, x << 40 = x * 1099511627776.
Proof.
  Local Opaque Z.mul. simpl. lia. Local Transparent Z.mul.
Qed.

Lemma x_shiftl_48:
  forall x, x << 48 = x * 281474976710656.
Proof.
  Local Opaque Z.mul. simpl. lia. Local Transparent Z.mul.
Qed.

Ltac solve_phys_page_mod :=
  repeat rewrite plus_mod_0_dist; try lia; repeat rewrite mul_mod_0_r; try reflexivity.

#[global] Hint Unfold is_addr is_vmid MAX_ADDR HOSTVISOR COREVISOR S2PT_LOCK MAX_PADDR: proof.
