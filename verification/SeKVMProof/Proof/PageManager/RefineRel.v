Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import PageIndex.Spec.
Require Import MemRegion.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Lemma succ_plus_1:
  forall n, Z.succ n = n + 1.
Proof. intros. auto with arith. Qed.

Definition valid_regions (regions: ZMap.t s_memblock_region) (indices: ZMap.t s_s2_memblock_info) :=
  forall i, let reg := regions @ i in
       let info := indices @ i in
       is_addr (e_base reg) /\ is_addr (e_size reg) /\ is_addr (e_base reg + e_size reg)  /\
         ((0 <= (e_index info) <  2097152 /\ (0 <= e_index info + e_size reg / 4096 < 2097152)) \/ e_index info = -1).

Lemma mem_region_succ:
  forall addr st
    (Hvalid: valid_regions (st.(priv).(e_regions)) (st.(priv).(e_s2_memblock_info)))
    (Hcnt: 0 < (st.(priv).(e_regions_cnt)) < 32),
  exists i' res tmp, Spec.mem_region_search_loop (Z.to_nat (st.(priv).(e_regions_cnt))) addr (e_regions_cnt (priv st)) 0 (-1) 0 st =
                  Some (addr, st.(priv).(e_regions_cnt), i', tmp, res, st) /\
                  (res = -1 \/ (0 <= res < 32 /\ (st.(priv).(e_regions) @ res).(e_base) <= addr <
                                                (st.(priv).(e_regions) @ res).(e_base) + (st.(priv).(e_regions) @ res).(e_size))).
Proof.
  intros. unfold valid_regions in Hvalid.
  assert(forall n, Z.of_nat n < st.(priv).(e_regions_cnt) ->
              exists i' res tmp, (Spec.mem_region_search_loop n addr (e_regions_cnt (priv st)) 0 (-1) 0 st =
                               Some (addr, st.(priv).(e_regions_cnt), i', tmp, res, st) /\
                               i' = Z.of_nat n /\
                               (tmp = -1 \/ (0 <= tmp < 32 /\ (st.(priv).(e_regions) @ tmp).(e_base) <= addr <
                                                             (st.(priv).(e_regions) @ tmp).(e_base) + (st.(priv).(e_regions) @ tmp).(e_size))))).
  { induction n. simpl. intros.
    eexists. eexists. eexists. split_and. reflexivity. auto. left. reflexivity.
    rewrite Nat2Z.inj_succ, succ_plus_1 in *.
    intros. simpl.
    assert (Z.of_nat n < e_regions_cnt (priv st)) by lia.
    apply IHn in H0. destruct H0 as (i0 & res0 & tmp0 & spec0 & Hi0 & Hres0).
    rewrite spec0. autounfold with sem.
    extract_if. lia. destruct_if. lia.
    destruct_if.
    - repeat eexists. lia.
      repeat simpl_hyp Case0. lia.
    - repeat eexists. lia. assumption. }
  assert(forall n, n > 0 -> Z.to_nat n = S (Z.to_nat (n - 1))).
  { intros. auto with zarith. }
  rewrite H0. 2: lia.
  simpl.
  assert(Z.of_nat (Z.to_nat (e_regions_cnt (priv st) - 1)) < e_regions_cnt (priv st)) by lia.
  apply H in H1. destruct H1 as (i0 & res0 & tmp0 & spec0 & Hi0 & Hres0).
  rewrite spec0. autounfold with sem. extract_if. lia.
  destruct_if. 2: lia.
  destruct_if.
  - simpl_hyp Case0.
    repeat eexists. lia.
  - repeat eexists. assumption.
Qed.

Lemma n_shiftr_12:
  forall n, n >> 12 = n / 4096.
Proof.
  Local Transparent Z.shiftl Z.shiftr.
  unfold Z.shiftr. simpl.
  intros. repeat rewrite Zdiv2_div.
  repeat (rewrite Zdiv_Zdiv; try lia).
  match goal with | |- n / ?a = n / ?b => assert(a = b) end.
  reflexivity. rewrite H. reflexivity.
  Local Opaque Z.shiftl Z.shiftr.
Qed.

Lemma n_shiftl_12:
  forall n, n << 12 = n * 4096.
Proof.
  Local Transparent Z.shiftl Z.shiftr.
  unfold Z.shiftl. simpl. lia.
  Local Opaque Z.shiftl Z.shiftr.
Qed.

Lemma page_index_succ:
  forall addr st
    (Hvalid: valid_regions (st.(priv).(e_regions)) (st.(priv).(e_s2_memblock_info)))
    (Hcnt: 0 <= (e_regions_cnt (priv st)) < 32),
  exists idx , get_s2_page_index_spec addr st = Some (idx, st) /\ (idx = -1 \/ 0 <= idx < 2097152).
Proof.
  intros.
  unfold get_s2_page_index_spec.
  destruct_if. repeat eexists. auto.
  autounfold with sem.
  exploit mem_region_succ. eassumption. lia.
  intros (i0 & res0 & tmp0 & loop0 & Hres0).
  erewrite loop0.
  destruct Hres0.
  - extract_if. lia. destruct_if. 2: lia. repeat eexists. lia.
  - extract_if. lia. destruct_if. lia. extract_if. lia.
    destruct_if. repeat eexists. lia.
    repeat eexists.
    unfold valid_regions in Hvalid.
    pose proof (Hvalid res0).
    destruct H0 as (? & ? & ? & ?).
    destruct H3 as [(? & ?)|]. 2: lia.
    right. rewrite n_shiftr_12.
    assert(addr - e_base (e_regions (priv st)) @ res0 <= e_size (e_regions (priv st)) @ res0) by lia.
    assert(0 <= addr - e_base (e_regions (priv st)) @ res0) by lia.
    assert(0 <= (addr - e_base (e_regions (priv st)) @ res0) / 4096 <= (e_size (e_regions (priv st)) @ res0) / 4096).
    { split. apply Z.div_le_mono with (c:=4096) in H6. replace (0 / 4096) with 0 in H6 by reflexivity. assumption. lia.
      apply Z.div_le_mono. lia. lia. }
    lia.
Qed.

Definition valid_regions2 (regions: ZMap.t s_memblock_region) (indices: ZMap.t s_s2_memblock_info) :=
  forall i j (Hne: i > j) ,
    let reg1 := regions @ i in
    let reg2 := regions @ j in
    let info1 := indices @ i in
    let info2 := indices @ j in
    e_base reg1 >= e_base reg2 + e_size reg2 /\ e_index info1 > e_index info2 + (e_size reg2 / 4096).

Lemma page_index_unique:
  forall st pfn1 pfn2 idx1 idx2
         (Hregion: valid_regions st.(priv).(e_regions) st.(priv).(e_s2_memblock_info))
         (Hregion2: valid_regions2 st.(priv).(e_regions) st.(priv).(e_s2_memblock_info))
         (Hblock: 0 < (e_regions_cnt (priv st)) < 32)
         (Hspec1: get_s2_page_index_spec (pfn1 * 4096) st = Some (idx1, st))
         (Hspec2: get_s2_page_index_spec (pfn2 * 4096) st = Some (idx2, st))
         (Hidx1: 0 <= idx1 < 2097152) (Hidx2: 0 <= idx2 < 2097152),
    idx1 = idx2 <-> pfn1 = pfn2.
Proof.
  intros.
  pose proof (mem_region_succ (pfn1 * 4096) st Hregion Hblock).
  destruct H as (i' & res1 & tmp1 & Hloop1 & Hreg1).
  pose proof (mem_region_succ (pfn2 * 4096) st Hregion Hblock).
  destruct H as (j' & res2 & tmp2 & Hloop2 & Hreg2).
  simpl_func Hspec1; try lia.
  simpl_func Hspec2; try lia.
  match type of C1 with
  | ?a = _ =>
      match type of Hloop1 with
      | ?b = _ => assert(S: a = b) by reflexivity; rewrite S in C1; clear S
      end
  end.
  rewrite Hloop1 in C1; inv C1.
  match type of C7 with
  | ?a = _ =>
      match type of Hloop2 with
      | ?b = _ => assert(S: a = b) by reflexivity; rewrite S in C7; clear S
      end
  end.
  rewrite Hloop2 in C7; inv C7.
  repeat (destruct_con; contra).

  unfold valid_regions2 in Hregion2.
  assert(H1ge0: 0 <= pfn1 * 4096 - e_base (e_regions (priv st)) @ z) by lia.
  assert(H2ge0: 0 <= pfn2 * 4096 - e_base (e_regions (priv st)) @ z4) by lia.
  assert(H1les: pfn1 * 4096 - e_base (e_regions (priv st)) @ z <= e_size (e_regions (priv st)) @ z) by lia.
  assert(H2les: pfn2 * 4096 - e_base (e_regions (priv st)) @ z4 <= e_size (e_regions (priv st)) @ z4) by lia.
  assert(H1ge0_4096: 0 <= (pfn1 * 4096 - e_base (e_regions (priv st)) @ z) / 4096).
  { apply Z.div_le_mono with (c:=4096) in H1ge0. replace (0 / 4096) with 0 in H1ge0 by reflexivity. assumption. lia. }
  assert(H2ge0_4096: 0 <= (pfn2 * 4096 - e_base (e_regions (priv st)) @ z4) / 4096).
  { apply Z.div_le_mono with (c:=4096) in H2ge0. replace (0 / 4096) with 0 in H2ge0 by reflexivity. assumption. lia. }
  assert(H1les_4096: (pfn1 * 4096 - e_base (e_regions (priv st)) @ z) / 4096 <= (e_size (e_regions (priv st)) @ z) / 4096).
  { apply Z.div_le_mono. lia. lia. }
  assert(H2les_4096: (pfn2 * 4096 - e_base (e_regions (priv st)) @ z4) / 4096 <= (e_size (e_regions (priv st)) @ z4) / 4096).
  { apply Z.div_le_mono. lia. lia. }

  destruct (z >? z4) eqn:Hrel1.
  - bool_rel. exploit (Hregion2 z z4). lia.
    intros (Hreg & Hinfo).
    repeat rewrite n_shiftr_12 in *.
    lia.
  - destruct (z <? z4) eqn:Hrel2.
    + bool_rel. exploit (Hregion2 z4 z). lia.
      intros (Hreg & Hinfo).
      repeat rewrite n_shiftr_12 in *.
      lia.
    + assert(z = z4) by lia. subst.
      repeat rewrite n_shiftr_12 in *.
      assert(forall x y, x - y = x + (-y)) by lia.
      repeat rewrite H.
      rewrite Z_div_plus_full_l.
      rewrite Z_div_plus_full_l.
      lia. lia. lia.
Qed.

Record refrel_s2page (hst: RData) (lst: RData) :=
  {
    region_valid1: valid_regions (lst.(priv).(e_regions)) (lst.(priv).(e_s2_memblock_info));
    region_valid2: valid_regions2 (lst.(priv).(e_regions)) (lst.(priv).(e_s2_memblock_info));
    region_cnt: 0 < lst.(priv).(e_regions_cnt) < 32;
    s2page_map:
    forall pfn idx (Hidx: get_s2_page_index_spec (pfn * 4096) lst = Some (idx, lst)),
      (idx = -1 <-> e_vmid (e_s2pages (shared hst)) @ pfn = -1) /\
      (idx = -1 -> e_count (e_s2pages (shared hst)) @ pfn = -1) /\
      (idx = -1 -> e_gfn (e_s2pages (shared hst)) @ pfn = -1) /\
        (0 <= idx < 2097152 -> (e_s2pages (shared hst)) @ pfn = (e_s2pages (shared lst)) @ idx)
  }.

Record refrel_same (hst: RData) (lst: RData): Prop :=
  {
    (* same fields *)
    id_locks: hst.(shared).(e_locks) = lst.(shared).(e_locks);
    id_core_data: hst.(shared).(e_core_data) = lst.(shared).(e_core_data);
    id_s2pts: hst.(shared).(e_s2pts) = lst.(shared).(e_s2pts);
    id_smmupts: hst.(shared).(e_smmupts) = lst.(shared).(e_smmupts);
    id_smmu_vmid: hst.(shared).(e_smmu_vmid) = lst.(shared).(e_smmu_vmid);
    id_vminfos: hst.(shared).(e_vminfos) = lst.(shared).(e_vminfos);
    id_priv: hst.(priv) = lst.(priv);
    id_log: hst.(log) = lst.(log);
    id_oracle: hst.(oracle) = lst.(oracle);
    id_repl: hst.(repl) = lst.(repl)
  }.

Record refrel (hst: RData) (lst: RData): Prop :=
  {
    same_rel: refrel_same hst lst;
    s2page_rel: refrel_s2page hst lst
  }.

Lemma s2_page_index_same:
  forall addr idx st st',
    st.(priv) = st'.(priv) -> get_s2_page_index_spec addr st = Some (idx, st) -> get_s2_page_index_spec addr st' = Some (idx, st').
Proof.
  intros.
  unfold get_s2_page_index_spec in *.
  assert(forall n a b c d e f g h i j x y x',
            x.(priv) = y.(priv) ->
            Spec.mem_region_search_loop n a b c d e x = Some (f, g, h, i, j, x') ->
            Spec.mem_region_search_loop n a b c d e y = Some (f, g, h, i, j, y) /\ x'.(priv) = y.(priv)).
  { induction n. intros. simpl in *. inv H2.
    eexists. split. assumption.
    simpl. intros. simpl_hyp H2. repeat destruct p.
    eapply IHn in C. 2: eapply H1.
    destruct C as (Hlp & priv').
    rewrite Hlp. rewrite priv' in *.
    autounfold with sem in *. repeat simpl_hyp H2; inv H2; (split; [reflexivity| assumption]). }
  rewrite H in H0. simpl_hyp H0. inv H0. reflexivity.
  autounfold with sem in *.
  simpl_hyp H0. simpl_hyp H0. repeat destruct p. exploit H1. apply H. eapply C1.
  intros (? & ?). rewrite H2. rewrite H3 in H0.
  repeat simpl_hyp H0; inv H0; reflexivity.
Qed.

#[global] Hint Unfold is_pfn is_addr MAX_PFN MAX_ADDR S2PAGE_LOCK : proof.
