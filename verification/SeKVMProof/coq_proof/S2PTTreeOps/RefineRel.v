Require Import CommonDeps.
Require Import LayerSem.Libs.CommonLib.
Require Import LayerSem.Libs.Zutils.hardcode_rewrite.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.BitOps.
Require Import ZBits.

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

Ltac enumerate_n n i :=
  try_solve;
  let H := fresh "Hn" in
  destruct (n =? i) eqn:H;
  [bool_rel; rewrite H in *; try_solve| enumerate_n n constr:(i+1) ].

Lemma Zpos_ind:
  forall (P: Z -> Prop), (forall k, k >= 0 -> (forall k', 0 <= k' < k -> P k') -> P k) -> (forall n, n >= 0 -> P n).
Proof.
  intros.
  assert(forall N, forall k, 0 <= k < Z.of_nat N -> P k).
  { induction N.
    - simpl. intros. lia.
    - rewrite Nat2Z.inj_succ, succ_plus_1.
      intros. destruct (zeq k  (Z.of_nat N)) eqn:Heq.
      eapply H. lia. intros.
      eapply IHN. lia.
      eapply IHN. lia. }
  eapply H.
  lia.
  intros.
  eapply H1.
  instantiate (1:=(Z.to_nat n)).
  rewrite Z2Nat.id. assumption. lia.
Qed.

Lemma phys_page_spec:
  forall n, n >= 0 -> phys_page[n] = (n mod 281474976710656) / 4096 * 4096.
Proof.
  intros.
  apply Z.bits_inj'.
  intros. apply Z.b2z_inj.
  rewrite Z.land_spec.
  repeat rewrite Z.testbit_spec'; try lia.
  destruct (n0 <? 12) eqn:Hsmall.
  - assert(Z.testbit 281474976706560 n0 = false).
    apply Z.b2z_inj. rewrite Z.testbit_spec'.
    simpl. enumerate_n n0 0. lia.
    rewrite H1. rewrite andb_comm. simpl.
    enumerate_n n0 0.
  - destruct (n0 <? 48) eqn:Hmid.
    + assert(Z.testbit 281474976706560 n0 = true).
      apply Z.b2z_inj. rewrite Z.testbit_spec'.
      simpl. enumerate_n n0 12. lia.
      rewrite H1. rewrite andb_comm. simpl.
      repeat rewrite Z.testbit_spec'; try lia.
      enumerate_n n0 12.
    + assert(forall n, n >= 0 -> (fun n => 2 ^ (n+48) >= 281474976710656) n).
      { eapply Zpos_ind.
        intros.
        destruct (zeq k 0) eqn:Hk.
        - subst. lia.
        - rewrite Zpower_exp in *; lia. }
      simpl in H1.
      pose proof (H1 (n0 - 48)).
      replace (n0 - 48 + 48) with n0 in * by lia.
      assert(2 ^ n0 >= 281474976710656).
      { apply H2. lia. }
      assert(Z.testbit 281474976706560 n0 = false).
      { apply Z.b2z_inj. rewrite Z.testbit_spec'.
        simpl.
        assert(2 ^ n0 >= 281474976710656).
        { apply H2. lia. }
        assert(281474976706560 / 2 ^ n0 = 0).
        { eapply Zdiv_small.  lia. }
        rewrite H5. reflexivity. lia. }
      rewrite H4. rewrite andb_comm. simpl.
      assert (n mod 281474976710656 / 4096 * 4096 / 2 ^ n0 = 0).
      { apply Zdiv_small.
        Z.div_mod_to_equations. lia. }
      rewrite H5. reflexivity.
Qed.

Lemma and_4088_spec:
  forall n, n >= 0 -> n & 4088 = (n mod 4096) / 8 * 8.
Proof.
  intros.
  apply Z.bits_inj'.
  intros. apply Z.b2z_inj.
  rewrite Z.land_spec.
  repeat rewrite Z.testbit_spec'; try lia.
  destruct (n0 <? 3) eqn:Hsmall.
  - assert(Z.testbit 4088 n0 = false).
    apply Z.b2z_inj. rewrite Z.testbit_spec'.
    simpl. enumerate_n n0 0. lia.
    rewrite H1. rewrite andb_comm. simpl.
    enumerate_n n0 0.
  - destruct (n0 <? 12) eqn:Hmid.
    + assert(Z.testbit 4088 n0 = true).
      apply Z.b2z_inj. rewrite Z.testbit_spec'.
      simpl. enumerate_n n0 3. lia.
      rewrite H1. rewrite andb_comm. simpl.
      repeat rewrite Z.testbit_spec'; try lia.
      enumerate_n n0 3.
    + assert(forall n, n >= 0 -> (fun n => 2 ^ (n+12) >= 4096) n).
      { eapply Zpos_ind.
        intros.
        destruct (zeq k 0) eqn:Hk.
        - subst. lia.
        - rewrite Zpower_exp in *; lia. }
      simpl in H1.
      pose proof (H1 (n0 - 12)).
      replace (n0 - 12 + 12) with n0 in * by lia.
      assert(2 ^ n0 >= 4096).
      { apply H2. lia. }
      assert(Z.testbit 4088 n0 = false).
      { apply Z.b2z_inj. rewrite Z.testbit_spec'.
        simpl.
        assert(2 ^ n0 >= 4096).
        { apply H2. lia. }
        assert(4088 / 2 ^ n0 = 0).
        { eapply Zdiv_small.  lia. }
        rewrite H5. reflexivity. lia. }
      rewrite H4. rewrite andb_comm. simpl.
      assert (n mod 4096 / 8 * 8 / 2 ^ n0 = 0).
      { apply Zdiv_small.
        Z.div_mod_to_equations. lia. }
      rewrite H5. reflexivity.
Qed.

Lemma phys_page_exp2_48:
  forall a n, a >= 0 -> 0 <= n < 281474976706560 -> (a << 48 + n) & 281474976706560 = n & 281474976706560.
Proof.
  intros. repeat rewrite_shift.
  repeat rewrite phys_page_spec; try lia.
  rewrite Z.add_comm. rewrite Z_mod_plus.
  reflexivity. lia.
Qed.

Lemma vttbr_value:
  forall vmid base, HOSTVISOR <= vmid <= COREVISOR -> 0 <= base < (1 << 40) -> (vmid << 48 + base) & 281474976706560 = base & 281474976706560.
Proof.
  intros. autounfold with spec in *.
  repeat rewrite_shift.
  repeat rewrite phys_page_spec; try lia.
  rewrite Z.add_comm. rewrite Z_mod_plus.
  reflexivity. lia.
Qed.

Lemma idx_or_base: forall a b, 0 <= a < 4096 -> b >= 0 -> b mod 4096 = 0 ->  Z.lor a b = a + b.
Proof.
	intros a b Ha Hb Hbmod.
	pose proof Z.lor_spec a b.
	intros.
	assert (forall n, n >= 12 -> Z.testbit a n = false). {
		intros.
		assert (Z.log2 a < n). {
			destruct (a =? 0) eqn:Ha0.
			-assert (Z.log2 0 < n). assert (Z.log2 0 = 0). auto.
			 rewrite H1. lia. assert (a = 0) by lia. rewrite H2. auto.
			-assert (a > 0) by lia. assert (0 < a) by lia.
			pose proof (Z.log2_lt_pow2 a n H2).
			assert (0 < 2) by lia.
			assert (12 <= n) by lia.
			pose proof (Z.pow_le_mono_r 2 12 n H4 H5).
            assert (a < 2^n) by lia. destruct H3.
			apply H3 in H7.
			auto.
		}
		assert (0 <= a) by lia.
		pose proof (Z.bits_above_log2 a n H2 H1). auto.
	}
	apply Zmod_divide in Hbmod.
	inversion Hbmod.
	assert (forall n, n < 12 -> Z.testbit b n = false). {
		intros.
		pose proof (Z.mul_pow2_bits_low x 12 n H2).
		replace (2^12) with 4096 in H3 by lia.
		rewrite <- H1 in H3. auto.
	}
	assert (Z.land a b = 0). {
		apply Z.bits_inj'. intros.
		rewrite Z.land_spec.
		destruct (n <? 12) eqn:Hn.
		-assert (n < 12) by lia.
		 pose proof H2 n H4.
		 rewrite H5.
		 rewrite andb_false_r.
		 rewrite Z.testbit_0_l. auto.
		-assert (n >= 12) by lia.
		 pose proof H0 n H4.
		 rewrite H5.
		 rewrite andb_false_l.
		 rewrite Z.testbit_0_l. auto.
	}
	apply or_to_plus in H3. auto.
	lia.
Qed.

Lemma base_or_perm: forall a b, a >= 0 -> a mod 4096 = 0 -> 0 <= b < 4096 -> Z.lor a b = a + b.
Proof.
	intros.
	pose proof (idx_or_base b a H1 H H0).
	rewrite Z.lor_comm.
	rewrite Z.add_comm.
	easy.
Qed.

Lemma plus_mod_0_dist:
  forall a b n, a mod n = 0 -> b mod n = 0 -> (a + b) mod n = 0.
Proof.
	intros.
	destruct (n =? 0) eqn:Inv.
	-assert (n = 0). lia. subst.
	 assert (b mod 0 = b). apply Zmod_0_r.
	 assert (a mod 0 = a). apply Zmod_0_r.
	 assert (a = 0). lia. assert (b = 0). lia.
	 assert (a+b=0). lia. rewrite H5. apply Zmod_0_r.
	-assert (n <> 0). lia.
	 apply Zmod_divide in H.
	 apply Zmod_divide in H0.
	 inversion H. inversion H0.
	 rewrite H2. rewrite H3.
	 assert (x * n + x0 * n = (x + x0) * n). lia.
	 rewrite H4. apply Z_mod_mult. auto. auto.
Qed.

Lemma mul_mod_0_r:
  forall a b n, b mod n = 0 -> (a * b) mod n = 0.
Proof.
	intros.
	destruct (n =? 0) eqn:Inv.
	-assert (n = 0). lia. subst.
	 assert (b mod 0 = b). apply Zmod_0_r.
	 assert (b = 0). lia.
	 assert (a * b = 0). lia. rewrite H2. apply Zmod_0_r.
	-assert (n <> 0). lia.
	apply Zmod_divide in H.
	inversion H.
	rewrite H1.
	assert (a * (x * n) = (a * x) * n). lia.
	rewrite H2.
	apply Z_mod_mult. apply H0.
Qed.

Lemma mul_mod_0_l:
  forall a b n, a mod n = 0 -> (a * b) mod n = 0.
Proof.
	intros.
	destruct (n =? 0) eqn:Inv.
	-assert (n = 0). lia. subst.
	 assert (a mod 0 = a). apply Zmod_0_r.
	 assert (a = 0). lia.
	 assert (a * b = 0). lia. rewrite H2. apply Zmod_0_r.
	-assert (n <> 0). lia.
	apply Zmod_divide in H.
	inversion H.
	rewrite H1.
	assert ((x * n) * b = (x * b) * n). lia.
	rewrite H2.
	apply Z_mod_mult. apply H0.
Qed.

Lemma phys_page_add_rem:
  forall n r, 0 <= r < 4096 -> n >= 0 -> n & 281474976706560 = n -> (n + r) & 281474976706560 = n.
Proof.
  intros.
  rewrite phys_page_spec in *; try lia.
  rewrite <- H1.
  assert(n mod 281474976710656 / 4096 * 4096 + r < 281474976710656).
  { assert(n mod 281474976710656 / 4096 < 68719476736).
    Z.div_mod_to_equations. lia. lia. }
  rewrite Zmod_small. 2: lia.
  rewrite Z_div_plus_full_l. 2: lia.
    Z.div_mod_to_equations. lia.
Qed.

Lemma phys_page_id_iff:
  forall n, n >= 0 -> n < 281474976710656 -> n mod 4096 = 0 <-> n & 281474976706560 = n.
Proof.
  intros.
  rewrite phys_page_spec. 2: lia.
  split.
  - intros. apply Zmod_divides in H1. destruct H1 as (c & ?).
    rewrite Z.mul_comm in H1.
    rewrite H1 in *. rewrite Zmod_small.
    Z.div_mod_to_equations. lia. lia. lia.
  - intros. rewrite <- H1. Z.div_mod_to_equations. lia.
Qed.

Lemma or_n_and_3:
  forall a n, n & 3 = 0 -> a & 3 <> 3 -> (a |' n) & 3 <> 3.
Proof.
  intros.
  rewrite Z.land_lor_distr_l. rewrite H.
  rewrite Z.lor_0_r. assumption.
Qed.

Lemma or_n3_and_3:
  forall a n, n & 3 = 3 -> (a |' n) & 3 = 3.
Proof.
  intros.
  rewrite Z.land_lor_distr_l. rewrite H.
  apply Z.bits_inj'.
  intros. apply Z.b2z_inj.
  rewrite Z.lor_spec.
  rewrite Z.land_spec.
  destruct (n0 <? 2) eqn:Hsmall.
  - enumerate_n n0 0.
    simpl. rewrite orb_comm. simpl. reflexivity.
    simpl. rewrite orb_comm. simpl. reflexivity.
  - assert(Z.testbit 3 n0 = false).
    { apply Z.b2z_inj.
      rewrite Z.testbit_spec'.
      assert(forall n, n >= 0 -> (fun n => 2 ^ (n+2) >= 4) n).
      { eapply Zpos_ind.
        intros.
        destruct (zeq k 0) eqn:Hk.
        - subst. lia.
        - rewrite Zpower_exp in *; lia. }
      simpl in H1.
      pose proof (H1 (n0 - 2)).
      replace (n0 - 2 + 2) with n0 in * by lia.
      assert(2 ^ n0 >= 4).
      { apply H2. lia. }
      rewrite Zdiv_small. reflexivity.
      lia. lia. }
    rewrite H1.
    rewrite andb_comm, orb_comm. simpl.
    reflexivity.
Qed.

Lemma add_n3_and_3:
  forall a n, a & 3 = 0 -> n & 3 = 3 -> (a + n) & 3 = 3.
Proof.
  intros.
  replace 3 with (Z.ones 2) in * by reflexivity.
  rewrite Z.land_ones in *.
  rewrite Zplus_mod. grewrite. simpl.
  reflexivity.
  lia. lia. lia.
Qed.

Lemma n4096_and_3:
  forall n, n mod 4096 = 0 -> n & 3 = 0.
Proof.
  intros.
  replace 3 with (Z.ones 2) in * by reflexivity.
  rewrite Z.land_ones in *. 2: lia.
  replace (2 ^ 2) with 4 by reflexivity.
  Z.div_mod_to_equations. lia.
Qed.

Lemma or_n_ne_zero:
  forall a n, n <> 0 -> a |' n <> 0.
Proof.
	intros.
	assert (exists c, Z.testbit n c = true). {
		pose proof (Z.log2_nonneg n).
		destruct (Z.eq_dec n 0).
		-lia.
		-
		 destruct (n >? 0) eqn:H3. assert (n > 0) by lia.
		 exists (Z.log2 n).
		 apply Z.bit_log2. lia.
		 assert (n < 0) by lia.
		 eexists (Z.succ (Z.log2 (Z.abs n))).
		 apply Z.bits_iff_neg' in H1. easy.
		 (* case n < 0? *)
	}
	intro H1.
	pose proof (Z.lor_spec a n). rewrite H1 in H2.
	destruct H0.
	pose proof (H2 x).
	rewrite Z.bits_0 in H3.
	rewrite H0 in H3.
	assert (Z.testbit a x || true = true) by lia.
	rewrite H4 in H3.
	inversion H3.
Qed.

Lemma phys_page_mod_4096:
  forall n, (n & 281474976706560) mod 4096 = 0.
Proof.
  intros.
  replace 4096 with (2 ^ 12) by reflexivity.
  apply Z.bits_inj'.
  intros. apply Z.b2z_inj.
  rewrite Z.testbit_mod_pow2.
  rewrite Z.testbit_0_l. simpl.
  destruct (n0 <? 12) eqn:Hn.
  simpl.
  rewrite Z.land_spec.
  assert(Z.testbit 281474976706560 n0 = false).
  { enumerate_n n0 0. }
  rewrite H0. rewrite andb_comm. simpl. reflexivity.
  simpl. reflexivity.
  lia.
Qed.

Lemma addr_eq_indices_iff_lv2:
  forall addr addr' (Haddr: is_addr addr) (Haddr': is_addr addr'),
    addr / 4096 / 512 = addr' / 4096 / 512 <-> pgd_idx[addr] = pgd_idx[addr'] /\ pud_idx[addr] = pud_idx[addr'] /\ pmd_idx[addr] = pmd_idx[addr'].
Proof.
  intros. autounfold with spec in *. repeat rewrite_shift.
  repeat rewrite and_4088_spec.
  2-7:try solve[Z.div_mod_to_equations; lia].
  split.
  - intros. split_and.
    Z.div_mod_to_equations. lia.
    Z.div_mod_to_equations. lia.
    Z.div_mod_to_equations. lia.
  - intros (? & ? & ?).
    assert(forall n,  n / 4096 / 512 = n / 2097152).
    { intro. Z.div_mod_to_equations. lia. }
    repeat rewrite H2. clear H2.
    Z.div_mod_to_equations.
    repeat
      match goal with
      | H: ?P -> ?Q |- _ =>
          let T := fresh "tmp" in
          first[assert(T: P) by lia; apply H in T; clear H; rename T into H|clear H]
      end.
    lia.
Qed.

Lemma addr_eq_indices_iff_lv3:
  forall addr addr' (Haddr: is_addr addr) (Haddr': is_addr addr'),
    addr / 4096 = addr' / 4096 <-> pgd_idx[addr] = pgd_idx[addr'] /\ pud_idx[addr] = pud_idx[addr'] /\ pmd_idx[addr] = pmd_idx[addr'] /\ pte_idx[addr] = pte_idx[addr'].
Proof.
  intros. autounfold with spec in *. repeat rewrite_shift.
  repeat rewrite and_4088_spec.
  2-9:try solve[Z.div_mod_to_equations; lia].
  split.
  - intros. split_and.
    Z.div_mod_to_equations. lia.
    Z.div_mod_to_equations. lia.
    Z.div_mod_to_equations. lia.
    Z.div_mod_to_equations. lia.
  - intros (? & ? & ? & ?).
    assert(addr / 4096 / 512 = addr' / 4096 / 512).
    { intros. apply addr_eq_indices_iff_lv2.
      autounfold with spec. repeat rewrite_shift. assumption.
      autounfold with spec. repeat rewrite_shift. assumption.
      repeat rewrite_shift.
      repeat rewrite and_4088_spec.
      2-7:try solve[Z.div_mod_to_equations; lia].
      split_and; lia. }
    assert(forall n,  n / 4096 / 512 = n / 2097152).
    { intro. Z.div_mod_to_equations. lia. }
    repeat rewrite H4 in H3.
    clear H4.
    clear H H0 H1.
    Z.div_mod_to_equations.
    repeat
      match goal with
      | H: ?P -> ?Q |- _ =>
          let T := fresh "tmp" in
          first[assert(T: P) by lia; apply H in T; clear H; rename T into H|clear H]
      end.
    subst.
    lia.
Qed.

Lemma x_shiftl_12:
  forall x, x << 12 = x * 4096.
Proof.
  Local Opaque Z.mul. simpl. lia. Local Transparent Z.mul.
Qed.

Lemma idx_plus_base_diff:
  forall i1 b1 i2 b2,
    0 <= i1 < 4096 -> 0 <= i2 < 4096 -> b1 mod 4096 = 0 -> b2 mod 4096 = 0 ->
    (i1 <> i2 \/ b1 <> b2) -> i1 + b1 <> i2 + b2.
Proof.
	intros. apply Zmod_divide in H1. inversion H1. subst.
	apply Zmod_divide in H2. inversion H2. subst.
	destruct H3.
	lia. lia. lia. lia.
Qed.

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
