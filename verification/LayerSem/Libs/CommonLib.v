Require Import Coqlib.
Require Import Maps.
Require Import Notations.
Require Import LayerSem.IR.
Require Import LayerSem.IRSem.
Require Import LayerSem.Asm.AsmInsn.
Require Import LayerSem.Asm.AsmSem.
Require Import LayerSem.PrimSem.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import LayerSem.Libs.Zutils.hardcode_rewrite.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Definition zmap_init {T} (v: T) := @ZMap.init T v.
Definition z_to_nat := Z.to_nat.

Definition is_uint (T: int_typ) (n: Z) :=
  match T with
  | TI8 => (0 <=? n) && (n <? 256)
  | TI16 => (0 <=? n) && (n <? 65536)
  | TI32 => (0 <=? n) && (n <? 4294967296)
  | TI64 => (0 <=? n) && (n <? 18446744073709551615)
  | _ => false (* TI128 probably not useful atm. *)
  end.

Definition is_int (n: Z) := (0 <=? n) && (n <=? 4294967296).
Definition is_int8 (n : Z) := (Z.eqb 0 n) && (Z.leb n 256).
Definition is_int32 (n : Z) := (Z.leb 0 n) && (Z.leb n 4294967295).
Definition is_int64 (n : Z) := (Z.leb 0 n) && (Z.leb n 18446744073709551615).
#[global] Hint Unfold is_int8 is_int32 is_int64: sem.

Lemma zgt_false_le: forall x y, (x >? y) = false <-> x <= y.
Proof.
  split.
  - intros. pose (Zgt_cases x y).
    rewrite H in y0. assumption.
  - intros. apply Zle_imp_le_bool in H.
    unfold Z.leb in H. unfold Z.gtb.
    destruct (x ?= y); reflexivity || inversion H.
Qed.

Lemma zge_false_lt: forall x y, (x >=? y) = false <-> x < y.
Proof.
  split.
  - intros. pose (Zge_cases x y).
    rewrite H in y0. assumption.
  - intros.
    unfold Z.lt in H. unfold Z.geb.
    destruct (x ?= y); reflexivity || inversion H.
Qed.

Lemma zeq_false_ne: forall x y, (x =? y) = false <-> x <> y.
Proof.
  split.
  - intros.
    red. intro. rewrite <- Z.eqb_eq in H0.
    rewrite H in H0. inversion H0.
  - intros. red in H. destruct (x =? y) eqn:H1.
    rewrite Z.eqb_eq in H1. apply H in H1. inversion H1.
    reflexivity.
Qed.

Lemma add_ge0_if:
  forall a b (Ha: 0 <= a) (Hb: 0 <= b), 0 <= a + b.
Proof.
  intros. lia.
  Qed.

Lemma sub_ge0_if:
  forall a b (Hab: a <= b), 0 <= b - a.
Proof.
  intros. lia.
  Qed.

Lemma mul_ge0_if:
  forall a b (Ha: 0 <= a) (Hb: 0 <= b), 0 <= a * b.
Proof.
  intros. induction a. lia. induction b. lia.
  simpl. unfold "<=". unfold "?=". trivial.
  assert (0 = Z.neg p0). assert (Z.neg p0 <= 0). easy. lia.
  rewrite <- H. unfold "*". reflexivity.
  assert (0 = Z.neg p). assert (0 >= (Z.neg p)). easy. lia.
  rewrite <- H. lia.
Qed.

Lemma divu_ge0_if:
  forall a b (Ha: 0 <= a) (Hb: 0 < b), 0 <= a / b.
Proof.
  intros. pose proof (Z_div_pos a b). assert (b > 0). lia. apply H in H0. auto. auto.
Qed.

Lemma land_ge0_if:
  forall a b (Ha: 0 <= a) (Hb: 0 <= b), 0 <= Z.land a b.
Proof.
  intros. Transparent Z.land. induction a. easy. induction b. easy.
  unfold Z.land. now destruct Pos.land.
  now assert (0 > Z.neg p0). now assert (0 > Z.neg p).
Qed.

Lemma lor_ge0_if:
  forall a b (Ha: 0 <= a) (Hb: 0 <= b), 0 <= Z.lor a b.
Proof.
  intros. Transparent Z.lor. induction a. easy. induction b. easy.
  unfold Z.lor. now destruct Pos.lor.
  now assert (0 > Z.neg p0). now induction b.
Qed.

Lemma shiftl_ge0_if':
  forall (b: nat) (Hb: 0 <= Z.of_nat b) a (Ha: 0 <= a), 0 <= Z.shiftl a (Z.of_nat b).
Admitted.
(*
Proof.
  intros. induction b. easy. induction a; simpl.
  now replace  (Pos.iter (Pos.of_succ_nat b)  (Z.mul 2) 0) with 0 by
      (apply Pos.iter_invariant; intros; subst; trivial).
  now rewrite <- (Pos.iter_swap_gen _ _ _ xO) by trivial. now assert (0 > Z.neg p).
Qed. *)

Lemma shiftl_ge0_if:
  forall a b (Ha: 0 <= a) (Hb: 0 <= b), 0 <= Z.shiftl a b.
Proof.
  intros. assert (0 <= Z.of_nat (Z.to_nat b)) as Hb'. lia.
  pose proof (shiftl_ge0_if' (Z.to_nat b) Hb' a Ha).
  assert (Z.of_nat (Z.to_nat b) = b). apply Z2Nat.id. apply Hb.
  rewrite H0 in H. apply H.
Qed.

(* Credit: https://github.com/antalsz/hs-to-coq/blob/master/examples/containers/theories/BitUtils.v *)
Lemma pos_nonneg: forall p, (0 <= N.pos p)%N.
Proof.
  compute; congruence.
Qed.

Lemma pos_pos: forall p, (0 < N.pos p)%N.
Proof.
  compute; congruence.
Qed.

Lemma succ_nonneg: forall n, 0 <= n -> 0 <= Z.succ n.
Proof. intros. lia. Qed.


Lemma ones_nonneg: forall n, 0 <= n -> 0 <= Z.ones n.
Proof.
  intros.
  unfold Z.ones.
  rewrite -> Z.shiftl_mul_pow2 by assumption.
  rewrite Z.mul_1_l.
  rewrite <- Z.lt_le_pred.
  apply Z.pow_pos_nonneg; auto.
  lia.
Qed.

Lemma log2_ones: forall n, 0 < n -> Z.log2 (Z.ones n) = Z.pred n.
  intros.
  unfold Z.ones.
  rewrite -> Z.shiftl_mul_pow2 by lia.
  rewrite Z.mul_1_l.
  apply Z.log2_pred_pow2.
  assumption.
Qed.

#[local] Hint Immediate N2Z.is_nonneg : nonneg.
#[local] Hint Immediate pos_nonneg : nonneg.
#[local] Hint Resolve N.le_0_l : nonneg.
#[local] Hint Resolve Z.log2_nonneg : nonneg.
#[local] Hint Resolve ones_nonneg : nonneg.
#[local] Hint Resolve succ_nonneg : nonneg.
#[local] Hint Resolve <- Z.shiftl_nonneg : nonneg.
#[local] Hint Resolve <- Z.shiftr_nonneg : nonneg.
#[local] Hint Resolve <- Z.land_nonneg : nonneg.
#[local] Hint Resolve Z.pow_nonneg : nonneg.
#[local] Hint Extern 1 (0 <= Z.succ (Z.pred (Z.of_N _))) => rewrite Z.succ_pred : nonneg.
#[local] Hint Resolve <- Z.lxor_nonneg : nonneg.
#[local] Hint Extern 0 => lia : nonneg.

Ltac nonneg := solve [auto with nonneg].
Ltac Nlia := rewrite ?N.pred_sub in *; zify; lia.

Lemma of_N_shiftl:
  forall n i, Z.of_N (N.shiftl n i) = Z.shiftl (Z.of_N n) (Z.of_N i).
Proof.
  intros.
  apply Z.bits_inj_iff';intros j?.
  replace j with (Z.of_N (Z.to_N j))
    by (rewrite -> Z2N.id by assumption; reflexivity).
  rewrite N2Z.inj_testbit.
  destruct (N.leb_spec i (Z.to_N j)).
  * rewrite -> N.shiftl_spec_high' by assumption.
    rewrite -> Z.shiftl_spec by nonneg.
    rewrite <- N2Z.inj_sub by assumption.
    rewrite N2Z.inj_testbit.
    reflexivity.
  * rewrite -> N.shiftl_spec_low by assumption.
    rewrite -> Z.shiftl_spec_low by Nlia.
    reflexivity.
Qed.

(* Credit: https://github.com/antalsz/hs-to-coq/blob/master/examples/containers/theories/BitUtils.v *)

Lemma of_N_shiftr:
  forall n i (Hn: 0 <= Z.of_N n) (Hi: 0 <= Z.of_N i), Z.of_N (N.shiftr n i) = Z.shiftr (Z.of_N n) (Z.of_N i).
Admitted.
(*
Proof.
  intros. destruct i. simpl. unfold Z.shiftr. simpl. easy.
  simpl. induction n. simpl. unfold Z.shiftr. simpl.
  replace (Pos.iter p Z.div2 0) with 0 by (apply Pos.iter_invariant; intros; subst; trivial).
  now replace (Pos.iter p N.div2 0%N) with 0%N by (apply Pos.iter_invariant; intros; subst; trivial).
  unfold Z.shiftr. simpl.
  change (Z.pos p0) with (Z.of_N (N.pos p0)) at 1.
  rewrite <- (Pos.iter_swap_gen _ _ _ Ndiv2). reflexivity.
  intros. induction a. auto. simpl. induction p1; simpl; reflexivity.
Qed. *)

Lemma shiftr_ge0_if'':
  forall b a ,  0 <= Z.of_N (N.shiftr a b).
Proof.
  intros b. induction b using  N.peano_ind; intros.
  unfold N.shiftr. now induction a. now destruct N.shiftr.
Qed.

Lemma shiftr_ge0_if:
  forall a b (Ha: 0 <= a) (Hb: 0 <= b), 0 <= Z.shiftr a b.
Proof.
  intros.
  assert (Z.of_N (Z.to_N a) = a) as Ida. apply Z2N.id. apply Ha. rewrite <- Ida in Ha.
  assert (Z.of_N (Z.to_N b) = b) as Idb. apply Z2N.id. apply Hb. rewrite <- Idb in Hb.
  pose proof (of_N_shiftr (Z.to_N a) (Z.to_N b) Ha Hb) as Hn. rewrite <- Ida. rewrite <- Idb.
  rewrite <- Hn. exact (shiftr_ge0_if'' (Z.to_N b) (Z.to_N a)).
Qed.

(* Credit: https://github.com/coq-community/qarith-stern-brocot/blob/master/Zaux.v *)
Ltac Flip :=
  apply Z.gt_lt || apply Z.lt_gt || apply Z.le_ge || apply Z.ge_le; assumption.

Lemma Z_div_neg :
  forall a b : Z, (0 < b) -> (a < 0) -> (a / b < 0).
Proof.
 intros.
 rewrite (Z_div_mod_eq_full a b) in H0.
 elim (Z_mod_lt a b).
 intros H1 _.
 apply Znot_ge_lt.
 intro.
 apply (Zlt_not_le (b * (a / b) + a mod b) 0 H0).
 apply Zplus_le_0_compat.
 apply Zmult_le_0_compat.
 apply Zlt_le_weak; assumption.
 Flip.
 assumption.
 Flip.
Qed.

Lemma Z_div_le :
 forall a b c : Z, (0 < c)%Z -> (b <= a)%Z -> (b / c <= a / c)%Z. 
Proof.
 intros.
 apply Z.ge_le.
 apply Z_div_ge; Flip; assumption.
Qed.

Lemma Z_div_le0:
  forall a b:Z, b >= 2 -> a >= 0 -> a/b <= a.
Proof.
  intros. induction a. auto with zarith. induction b. assert (0 < 2). lia. contradiction.
  assert (Z.pos p / Z.pos p0 < Z.pos p). apply Z_div_lt. auto. auto with zarith. auto with zarith.
  assert (Z.neg p0 < 2). easy. contradiction. induction b. assert (Z.neg p < 0). easy. contradiction.
  assert (Z.neg p < 0). easy. contradiction. assert (Z.neg p < 0). easy. contradiction.
Qed.

Lemma Z_div_mult_ge:
  forall a b:Z, b > 0 -> (a/b)*b <= a.
Proof.
  intros. assert ((a / b) * b = b * (a / b)). auto with zarith. rewrite H0.
  pose proof (Z_mult_div_ge a b). apply H1 in H. apply H.
Qed.

Lemma add_leN_if:
  forall a b N (Ha: a <= N/2) (Hb: b <= N/2), a + b <= N.
Proof.
  intros. assert (a + b <= N / 2 + b). auto with zarith. pose proof (Zplus_le_compat_l b (N / 2) (N / 2)).
  assert (b <= N / 2). auto. apply H0 in H1. assert (N / 2 + N / 2 <= N / 2 * 2). auto with zarith.
  pose proof (Z_div_mult_ge N 2). assert (2 > 0). easy. apply H3 in H4.
  transitivity (N / 2 + b). auto. transitivity (N / 2 + N / 2). auto. transitivity (N / 2 * 2). auto. auto.
Qed.

Lemma sub_leN_if:
  forall a b N (Ha: a <= N) (Hb: b >= 0), a - b <= N.
Proof.
  intros.  auto with zarith. Qed.

(* TODO: should be 0 < b ?*)
Lemma mul_leN_if:
  forall a b N (Ha: a <= N / b) (Hb: 0 < b), a * b <= N.
Proof.
  intros. assert (a * b <= N / b * b). auto with zarith. assert (N / b * b <= N).
  pose proof (Z_div_mult_ge N b). assert (b > 0). apply Z.lt_gt. apply Hb. apply H0 in H1. apply H1.
  transitivity (N / b * b). apply H. apply H0.
Qed.

Lemma divu_leN_if:
  forall a b N (Ha: a <= N * b) (Hb: 0 < b), a / b <= N.
Proof.
  intros. pose proof (Z_div_le (N * b) a b). assert (0 < b). auto. apply H in H0.
  pose proof (Z_div_mult_full N b). assert (b <> 0). auto with zarith. apply H1 in H2.
  transitivity (N * b / b). apply H0. rewrite H2. auto with zarith. apply Ha.
Qed.

Lemma size_nat2p:
  forall p: positive, (Pos.size_nat p) = Pos.to_nat (Pos.size p).
Proof.
  intros. induction p; simpl. rewrite IHp. pose proof (Pos2Nat.inj_succ (Pos.size p)). rewrite H. try reflexivity.
  rewrite IHp. pose proof (Pos2Nat.inj_succ (Pos.size p)). rewrite H. try reflexivity. easy.
Qed.

(* Credit: https://github.com/mit-plv/fiat-crypto/blob/5cab97ed8f17e294f4e7e66010147a518c45f3a6/src/Util/NUtil/WithoutReferenceToZ.v#L22 *)
Lemma NPos_land_upper_bound_l : forall a b, (Pos.land a b <= N.pos a)%N.
Proof.
  induction a as [a IHa|a IHa|]; destruct b as [b|b|]; try solve [cbv; congruence];
    simpl; specialize (IHa b); case_eq (Pos.land a b); intro p; simpl;
    try apply N.le_0_l; intro land_eq;
    try rewrite land_eq in *; unfold N.le, N.compare in *;
    rewrite ?Pos.compare_xI_xI, ?Pos.compare_xO_xI, ?Pos.compare_xO_xO;
    try assumption. easy.
  destruct (p ?=a)%positive; cbv; congruence.
Qed.

Lemma NPos_lor_lower_bound_l : forall a b, (Pos.lor a b >= a)%positive.
Proof.
  induction a as [a IHa|a IHa|]; destruct b as [b|b|]; try solve [cbv; congruence];
    simpl; try specialize (IHa b); try case_eq (Pos.lor a b); intro p; simpl; try intro lor_eq;
    try rewrite lor_eq in IHa; try assumption; try easy; unfold Pos.ge in *;
    try rewrite ?Pos.compare_xI_xI, ?Pos.compare_xO_xI, ?Pos.compare_xO_xO, ?Pos.compare_xI_xO in *;
    try rewrite p in IHa; auto;
  try rewrite Pos.compare_refl in p; try easy.
  destruct (p~1 ?= a)%positive; cbv; congruence.
  destruct (p~0 ?= a)%positive; cbv; congruence.
  destruct (1 ?=a)%positive; simpl in lor_eq; try easy.
Qed.

Lemma Nlor_lower_bound_l: forall a b, (N.lor a b >= a)%N.
Proof.
  intros.
  destruct a, b; try solve [exfalso; auto]; try solve [cbv; congruence];
  cbv [Z.lor]; simpl. unfold N.ge. unfold N.compare. now rewrite Pos.compare_refl.
  now assert (Pos.lor p p0 >= p)%positive by auto using NPos_lor_lower_bound_l.
Qed.

Lemma lor_lower_bound_l:
  forall a b, (0 <= a) -> (0 <= b) -> Z.lor a b >= a.
Proof.
  intros a b H H0.
  destruct a, b; try solve [exfalso; auto]; try solve [cbv; congruence].
  cbv [Z.lor]. auto with zarith.
  unfold Z.lor. assert (Pos.lor p p0 >= p)%positive by
  auto using NPos_lor_lower_bound_l. auto.
Qed.

Lemma land_upper_bound_l:
  forall a b, (0 <= a) -> (0 <= b) -> Z.land a b <= a.
Proof.
  intros a b H H0.
  destruct a, b; try solve [exfalso; auto]; try solve [cbv; congruence].
  cbv [Z.land].
  rewrite <-N2Z.inj_pos, <-N2Z.inj_le.
  auto using NPos_land_upper_bound_l.
Qed.

Lemma Nland_upper_bound_l:
  forall (a: N) (b: N), (N.land a b <= a)%N.
Proof.
  intros.
  destruct a, b; try solve [exfalso; auto]; try solve [cbv; congruence].
  cbv [N.land].
  auto using NPos_land_upper_bound_l.
Qed.

Lemma land_upper_bound_r:
  forall a b, (0 <= a) -> (0 <= b) -> Z.land a b <= b.
Proof.
  intros. rewrite Z.land_comm. revert H0 H. exact (land_upper_bound_l b a).
Qed.

Lemma land_upper_bound_r_strict:
  forall a b, (0 <= a) -> (0 <= b) -> (a < b) -> Z.land a b < b.
Proof.
  intros. pose proof (land_upper_bound_l a b H H0).
  pose proof (Zgt_le_trans b a (Z.land a b)).
  apply Z.lt_gt in H1. apply H3 in H1. apply Z.gt_lt. apply H1.
  apply H2.
Qed.

Lemma land_upper_bound_l_strict:
  forall a b, (0 <= a) -> (0 <= b) -> (b < a) -> Z.land a b < a.
Proof.
  intros. rewrite Z.land_comm. revert H0 H H1.
  exact (land_upper_bound_r_strict b a).
Qed.

Lemma land_leN_ge0:
  forall a b N (Ha: 0 <= a) (Hb: 0 <= b) (HaN: a <= N) (HbN: b <= N), Z.land a b <= N.
Proof.
  intros. pose proof (Ztrichotomy a b) as Habtri.
  induction N.
  assert (a = 0) as Ha0. lia. assert (b = 0) as Hb0. lia. now rewrite Ha0, Hb0.
  assert (a < Z.pos p \/ (a = Z.pos p)) as Ha_le_or_eq by now apply Zle_lt_or_eq.
  assert (b < Z.pos p \/ (b = Z.pos p)) as Hb_le_or_eq by now apply Zle_lt_or_eq.
  destruct Ha_le_or_eq as [HaN' | HaN']; destruct Hb_le_or_eq as [HbN' | HbN'];
    destruct Habtri as [Hab | Hab'];
    try (rewrite <- HbN'; now pose proof (land_upper_bound_r a b Ha Hb));
    try (rewrite <- HaN'; now pose proof (land_upper_bound_l a b Ha Hb));
  assert (Z.land a b < Z.pos p).
  pose proof (land_upper_bound_r_strict a b Ha Hb Hab). now transitivity b.
  lia.
  destruct Hab' as [Hab | Hab].
  rewrite Hab. now rewrite Z.land_diag.
  apply Z.gt_lt in Hab.
  pose proof (land_upper_bound_l_strict a b Ha Hb Hab). transitivity a. apply H. apply HaN'.
  lia.
  assert (0 <= Z.neg p). transitivity a. apply Ha. apply HaN.
  assert (0 > Z.neg p). easy. contradiction.
Qed.

Lemma Nadd1_lt:
  forall (m: N), (m < m + 1)%N.
Proof.
  intros. induction m. easy. simpl. unfold N.lt. unfold N.compare.
  replace (p + 1)%positive with (Pos.succ p). apply Pos.lt_succ_diag_r. rewrite <- Pos.add_1_r. reflexivity.
Qed.

Lemma land_leN_if':
  forall (p p0: positive) N, (Z.pos p <= N) -> (Z.neg p0 <= N) -> Z.land (Z.pos p) (Z.neg p0) <= N.
Proof.
  intros.
  unfold Z.land.
  pose proof (N.ldiff_land_low (N.pos p) (Pos.pred_N p0) ((N.log2 (N.pos p)) + 1)).
  exploit H1. apply Nadd1_lt. intros. rewrite H2.
  assert (N.land (N.pos p) (N.lnot (Pos.pred_N p0) (N.log2 (N.pos p) + 1)) <= (N.pos) p)%N.
  apply Nland_upper_bound_l. rewrite N2Z.inj_le in H3.
  assert (Z.of_N (N.pos p) = Z.pos p). auto with zarith. rewrite H4 in H3.
  transitivity (Z.pos p); auto.
Qed.

Lemma NPos__bound_l : forall a b, (Pos.land a b <= N.pos a)%N.
Proof.
  induction a as [a IHa|a IHa|]; destruct b as [b|b|]; try solve [cbv; congruence];
    simpl; specialize (IHa b); case_eq (Pos.land a b); intro p; simpl;
    try apply N.le_0_l; intro land_eq;
    try rewrite land_eq in *; unfold N.le, N.compare in *;
    rewrite ?Pos.compare_xI_xI, ?Pos.compare_xO_xI, ?Pos.compare_xO_xO;
    try assumption. easy.
  destruct (p ?=a)%positive; cbv; congruence.
Qed.

Axiom land_leN_if:
  forall a b N (Hpa: 0 <= a) (Hpb: 0 <= b) (Hb: b <= N), Z.land a b <= N.

Axiom lor_leN_if:
  forall a b N (Hpa: 0 <= a) (Hpb: 0 <= b)  (Hab: a + b <= N), Z.lor a b <= N.

Lemma shiftl_leN_if:
  forall a b N (Hpa: 0 <= a) (Ha: a * 281474976710656 <= N) (Hb1: 0 <= b) (Hb2: b <= 48), Z.shiftl a b <= N.
Proof.
	intros.
	assert (a << b = a * 2 ^ b). {
		apply Z.shiftl_mul_pow2. easy.
	}
	rewrite H.
	assert (2 ^ 48 = 281474976710656) by lia.
	assert (2 ^ b <= 2 ^ 48).
	assert (0 < 2 <= 2) by lia.
	pose proof (Z.pow_le_mono 2 b 2 48 H1 Hb2). easy.
	rewrite H0 in H1.
	assert (a * 2^b <= a * 281474976710656). {
		pose proof (Z.mul_le_mono_nonneg_l (2^b) 281474976710656 a Hpa H1). easy.
	}
	lia.
Qed.

Lemma shift_n_le :
	forall a n, 0 <= a -> n > 0 -> a >> n <= a.
Proof.
  intros a n Ha Hn.
  assert (2 ^ n > 0) as H2n by lia.
  assert (0 <= n) by lia.
  pose proof (Z.shiftr_div_pow2 a n H).
  rewrite H0.
  assert (2 ^ n > 0) by lia.

  assert (a <= (2 ^ n) * a). {
	assert (1 <= 2 ^ n) by lia.
	pose proof (Z.mul_le_mono_nonneg_r 1 (2^n) a Ha H2).
	lia.
  }
  assert (0 < 2 ^ n) by lia.
  pose proof (Z.div_le_mono a (2^n * a) (2^n) H3 H2).
  assert (2 ^ n * a = a * 2 ^ n) by lia.
  rewrite H5 in H4.
  rewrite Z.div_mul in H4.
  lia.
  lia.
Qed.

Lemma shiftr_leN_if:
  forall a b N (Hpa: 0 <= a) (Ha: a <= N) (Hb: 0 <= b), Z.shiftr a b <= N.
Proof.
	intros.
	induction b.
	-rewrite Z.shiftr_0_r. easy.
	-assert (Z.pos p > 0) by lia. pose proof (shift_n_le a (Z.pos p) Hpa H).
	 lia.
	-now assert (Z.neg p < 0).
Qed.

Lemma mod_ge0_if:
  forall a b, 0 < b -> 0 <= a mod b.
Proof.
  intros. exploit (Z_mod_lt a b). lia. lia.
Qed.

Lemma mod_leN_if:
  forall a b n, 0 < b -> b <= n + 1 -> a mod b <= n.
Proof.
  intros. exploit (Z_mod_lt a b). lia. lia.
Qed.

Lemma mod_ltN_if:
  forall a b n, 0 < b -> b <= n -> a mod b < n.
Proof.
  intros. exploit (Z_mod_lt a b). lia. lia.
Qed.

Lemma or0_eq:
  forall n, Z.lor n 0 = n.
Proof.
  intros. rewrite Z.lor_comm. reflexivity.
Qed.

Ltac bool_rel :=
  repeat match goal with
    | [ H: (?x >? ?y) = true |- _] =>
        rewrite Z.gtb_lt in H
    | [ H: (?x >? ?y) = false |- _] =>
        rewrite zgt_false_le in H
    | [ H: (?x >=? ?y) = true |- _] =>
        rewrite Z.geb_le in H
    | [ H: (?x >=? ?y) = false |- _] =>
        rewrite zge_false_lt in H
    | [ H: (?x <? ?y) = _ |- _] =>
        rewrite <- (Z.gtb_ltb y x) in H
    | [ H: (?x <=? ?y) = _ |- _] =>
        rewrite <- (Z.geb_leb y x) in H
    | [ H: (?x =? ?y) = true |- _] =>
        rewrite Z.eqb_eq in H
    | [ H: (?x =? ?y) = false |- _] =>
        rewrite zeq_false_ne in H
    | [ |- (?x >? ?y) = true ] =>
        rewrite Z.gtb_lt
    | [ |- (?x >? ?y) = false ] =>
        rewrite zgt_false_le
    | [ |- (?x >=? ?y) = true ] =>
        rewrite Z.geb_le
    | [ |- (?x >=? ?y) = false ] =>
        rewrite zge_false_lt
    | [ |- (?x <? ?y) = _ ] =>
        rewrite <- (Z.gtb_ltb y x)
    | [ |- (?x <=? ?y) = _ ] =>
        rewrite <- (Z.geb_leb y x)
    | [ |- (?x =? ?y) = true ] =>
        rewrite Z.eqb_eq
    | [ |- (?x =? ?y) = false ] =>
        rewrite zeq_false_ne
    end.

Ltac destruct_con :=
  let Hc1 := fresh "Hcond" in
  let Hc2 := fresh "Hcond" in
  repeat match goal with
  | H:?x && ?y = true |- _ => apply andb_true_iff in H; destruct H as [Hc1 Hc2]
  | H:?x /\ ?y |- _ => destruct H as [Hc1 Hc2]
  | H:?x || ?y = false |- _ => apply orb_false_iff in H; destruct H as [Hc1 Hc2]
  end.

Ltac split_and :=
  repeat match goal with
    | [|- _ /\ _ ] => split
    | [|- _] => idtac
    end.

Ltac unfold_spec H :=
  match type of H with
  | ?x _ = _ => unfold x in H
  | ?x _ _ = _ => unfold x in H
  | ?x _ _ _ = _ => unfold x in H
  | ?x _ _ _ _ = _ => unfold x in H
  | ?x _ _ _ _ _ = _ => unfold x in H
  | ?x _ _ _ _ _ _ = _ => unfold x in H
  | ?x _ _ _ _ _ _ _ = _ => unfold x in H
  | ?x _ _ _ _ _ _ _ _ = _ => unfold x in H
  | ?x _ _ _ _ _ _ _ _ _ = _ => unfold x in H
  | ?x _ _ _ _ _ _ _ _ _ _ = _ => unfold x in H
  | ?x _ _ _ _ _ _ _ _ _ _ _ = _ => unfold x in H
  | ?x _ _ _ _ _ _ _ _ _ _ _ _ = _ => unfold x in H
  | ?x _ _ _ _ _ _ _ _ _ _ _ _ _ = _ => unfold x in H
  | ?x _ _ _ _ _ _ _ _ _ _ _ _ _ _ = _ => unfold x in H
  end.

Ltac frewrite :=
  (repeat
    let T := fresh "tmp" in
    match goal with
    | [H:?x = ?y |- _] => repeat rewrite H in *; assert(T: True -> x = y) by (intros; apply H); clear H; rename T into H
    end);
  (repeat
    let E := fresh "Eq" in
    match goal with
    | [H: True -> ?x = ?y |- _] => assert(E: x = y) by (apply H; constructor); clear H; rename E into H
    end).

Ltac frewrite' Target :=
  (repeat
    let T := fresh "tmp" in
    match goal with
    | [H:?x = ?y |- _] => repeat rewrite H in Target; assert(T: True -> x = y) by (intros; apply H); clear H; rename T into H
    end);
  (repeat
    let E := fresh "Eq" in
    match goal with
    | [H: True -> ?x = ?y |- _] => assert(E: x = y) by (apply H; constructor); clear H; rename E into H
    end).

Ltac grewrite :=
  (repeat
    let T := fresh "tmp" in
    match goal with
    | [H:?x = ?y |- _] => repeat rewrite H; assert(T: True -> x = y) by (intros; apply H); clear H; rename T into H
    end);
  (repeat
    let E := fresh "Eq" in
    match goal with
    | [H: True -> ?x = ?y |- _] => assert(E: x = y) by (apply H; constructor); clear H; rename E into H
    end).

Ltac try_refl :=
  match goal with
  | [ |- _ = _] => try reflexivity
  | _ => idtac
  end.

Ltac contra :=
  match goal with
  | [H: Some _ = None |- _] => inversion H
  | [H: None = Some _ |- _] => inversion H
  | [H: true = false |- _] => inversion H
  | [H: false = true |- _] => inversion H
  | [H: 0 = 1 |- _] => inversion H
  | [H: 1 = 0 |- _] => inversion H
  | [H: ?x <> ?x |- _] => let T := fresh "T" in assert(T:x=x) by reflexivity; apply H in T; inversion T
  | [H: ?x = ?x -> False |- _] => let T := fresh "T" in assert(T:x=x) by reflexivity; apply H in T; inversion T
  | [H1: ?x = ?y, H2: ?x <> ?y |- _] => apply H2 in H1; inversion H1
  | H: ?x, H': ~ ?x |- _ => apply H' in H; inversion H
  | H: ?x, H': ?x -> False |- _ => apply H' in H; inversion H
  | [H1: ?x = true, H2: ?x = false |- _] => rewrite H1 in H2; inversion H2
  | [|- _] => idtac
  end.

Ltac clear_hyp :=
  repeat
    match goal with
    | [H: ?x = ?x |- _ ] => clear H
    | [H1: ?P, H2: ?P |- _ ] => clear H2
    end.

Ltac clear_all_hyp :=
  repeat
    match goal with
    | [H: _ |- _] => clear H
    end.

Ltac simpl_some :=
  repeat
    let T := fresh "T" in
    match goal with
    | [H: Some ?x = Some ?y |- _] =>
      assert(T: x = y) by (inversion H; reflexivity; assumption); clear H; rename T into H
    end.

Lemma prop_dec_to_prop:
  forall P: Prop,
    match prop P with
    | left _ => P
    | right _ => ~ P
    end.
Proof.
  intros. destruct (prop P); assumption.
Qed.

Ltac extract_prop :=
  match goal with
  | [H: prop ?P = left ?i |- _] =>
      let TPP := fresh "Prop" in
      pose proof (prop_dec_to_prop P) as TPP;
      rewrite H in TPP; clear H i
  end.

Ltac extract_if :=
  let H := fresh "Cond" in
  match goal with
  | [|- context [if prop ?p then _ else None ] ] => assert(H: p); [|destruct (prop p); [|contra] ]
  | [|- context [if ?c then _ else None ] ] => assert(H: c=true)
  | [|- context [if ?c then None else _ ] ] => assert(H: c=false)
  end.

Ltac destruct_if :=
  let H := fresh "Case" in
  match goal with
  | [|- context [if ?c then _ else _] ] => destruct c eqn:H; simpl
  end.

Ltac destruct_if' H :=
  let HH := fresh "Case" in
  match type of H with
  | context [if ?c then _ else _] => destruct c eqn:HH; simpl
  end.

Ltac destruct_zmap :=
  let H := fresh "Heq" in
  match goal with
  | |- context [(?m # ?b == ?c) @ ?a] =>
    destruct (a =? b) eqn:H; bool_rel;
    [rewrite H; repeat rewrite ZMap.gss| repeat rewrite (ZMap.gso _ _ H)]
  end.

Ltac destruct_zmap' H :=
  let HH := fresh "Heq" in
  match type of H with
  | context [ (?m # ?b == ?c) @ ?a ] =>
      destruct (a =? b) eqn:HH; bool_rel;
      [ rewrite HH in *; repeat rewrite ZMap.gss in *| repeat rewrite (ZMap.gso _ _ HH) in * ]
  end.

Ltac assert_gso :=
  let H := fresh "Hneq" in
  match goal with
  | |- context [(?m # ?b == ?c) @ ?a] => assert(H: a <> b)
  end.

Ltac assert_gso' H :=
  let HH := fresh "Hneq" in
  match type of H with
  | context [(?m # ?b == ?c) @ ?a] => assert(HH: a <> b)
  end.

Ltac assert_gss :=
  let H := fresh "Hneq" in
  match goal with
  | |- context [(?m # ?b == ?c) @ ?a] => assert(H: a = b)
  end.

Ltac assert_gss' H :=
  let H := fresh "Hneq" in
  match type of H with
  | context [(?m # ?b == ?c) @ ?a] => assert(H: a = b)
  end.

Ltac simpl_imply H :=
  match type of H with
  | ?a -> ?b =>
    let T := fresh "T" in assert(T: b) by (apply H; assumption); clear H; rename T into H
  end.

Ltac simpl_bool_eq :=
  repeat match goal with
         | [H: context[?x =? ?x] |- _] =>
           replace (x =? x) with true in * by (symmetry; bool_rel; reflexivity)
         | [|- context[?x =? ?x] ] =>
           replace (x =? x) with true in * by (symmetry; bool_rel; reflexivity)
         end.

Ltac bool_rel_all := repeat (destruct_con; contra); bool_rel.

Ltac somega :=
  repeat (try lia; match goal with
                     | [|- 0 <= _ + _] => apply add_ge0_if
                     | [|- 0 <= _ - _] => apply sub_ge0_if
                     | [|- 0 <= _ * _] => apply mul_ge0_if
                     | [|- 0 <= _ / _] => apply divu_ge0_if
                     | [|- 0 <= _ mod _] => apply mod_ge0_if
                     | [|- 0 <= Z.land _ _] => apply land_ge0_if
                     | [|- 0 <= Z.lor _ _] => apply lor_ge0_if
                     | [|- 0 <= Z.shiftl _ _] => apply shiftl_ge0_if
                     | [|- 0 <= Z.shiftr _ _] => apply shiftr_ge0_if
                     | [|- _ + _ <= _ ] => apply add_leN_if; const_div
                     | [|- _ - _ <= _ ] => apply sub_leN_if
                     | [|- _ * _ <= _ ] => apply mul_leN_if; const_div
                     | [|- _ / _ <= _ ] => apply divu_leN_if
                     | [|- _ mod _ <= _ ] => apply mod_leN_if
                     | [|- _ mod _ < _ ] => apply mod_ltN_if
                     | [|- Z.land _ _ <= _] => apply land_leN_if
                     | [|- Z.lor _ _ <= _ ] => apply lor_leN_if
                     | [|- Z.shiftl _ _ <= _] => apply shiftl_leN_if
                     | [|- Z.shiftr _ _ <= _] => apply shiftr_leN_if
                     end).

Ltac simpl_arith :=
  repeat match goal with
    | [ |- context [ 0 + _ ] ] => rewrite Z.add_0_l
    | [ |- context [ _ + 0 ] ] => rewrite Z.add_0_r
    | [ |- context [ _ - 0 ] ] => rewrite Z.sub_0_r
    | [ |- context [ 0 * _ ] ] => rewrite Z.mul_0_l
    | [ |- context [ _ * 0 ] ] => rewrite Z.mul_0_r
    | [ |- context [ _ * (_ * _) ] ] => rewrite Z.mul_assoc
    | [ |- context [ _ + (_ + _) ] ] => rewrite Z.add_assoc
    | [H: context [ 0 + _ ] |- _] => rewrite Z.add_0_l in H
    | [H: context [ _ + 0 ] |- _] => rewrite Z.add_0_r in H
    | [H: context [ _ - 0 ] |- _] => rewrite Z.sub_0_r in H
    | [H: context [ 0 * _ ] |- _] => rewrite Z.mul_0_l in H
    | [H: context [ _ * 0 ] |- _] => rewrite Z.mul_0_r in H
    | [H: context [ _ * (_ * _) ] |- _] => rewrite Z.mul_assoc in H
    | [H: context [ _ + (_ + _) ] |- _] => rewrite Z.add_assoc in H
    (* If we know the upper bound of ?x, can we reduce it? *)
    | [ H: ?x < ?y |- context [ ?x < ?y ] ] => rewrite H; simpl
    | [ H: ?x < ?y |- context [ ?x < ?z ] ] =>
        let C := fresh "C" in
        assert (C: x < z) by auto with zarith;
        rewrite C; simpl; clear C
    | [ H: ?x < ?y |- context [ ?x >= ?z ] ] =>
        let C := fresh "C" in
        assert (C: x >= z) by auto with zarith;
        rewrite C; simpl; clear C
    | [ H: ?x < ?y |- context [ if ?x >=? ?z then _ else _ ] ] =>
        let C := fresh "C" in
        assert (C: x >=? z = false) by (rewrite zge_false_lt; auto with zarith);
        rewrite C; simpl; clear C
    | [ H: ?x < ?y |- context [ (?x + ?c >=? ?d) ] ] =>
        let C := fresh "C" in
        tryif
          assert (C: x + c >=? d = false) by lia
        then  rewrite C; simpl; clear C
        else idtac
    | [ H: ?x < ?y |- context [ ?x / _ ] ] =>
        try rewrite Z.div_small by lia; simpl
    | [ H: ?a <= _ |- context [ ?a / ?b ] ] =>
        try rewrite Z.div_small by lia; simpl
    (* Might worth a try *)
    | [ |- context [ ?x >=? ?y ] ] =>
        let C := fresh "C" in
        tryif
          assert (C: x >=? y = true) by lia
        then  rewrite C; simpl; clear C
        else
          tryif assert (C: x >=? y = false) by lia
          then rewrite C; simpl; clear C
          else idtac
    | [ |- context [ ?x >? ?y ] ] =>
        let C := fresh "C" in
        tryif
          assert (C: x >? y = true) by lia
        then  rewrite C; simpl; clear C
        else
          tryif assert (C: x >? y = false) by lia
          then rewrite C; simpl; clear C
          else idtac
    (* (* Can we simple div_add? *) *)
    | [ |- context [ (?a + ?b * ?c) / ?c] ] =>
        try rewrite Z.div_add by lia; simpl
    | [ |- context [ (?a * ?b + ?c) / ?b] ] =>
        try rewrite Z.div_add_l by lia; simpl
    (*
      * Try if Z.div yeilds 0 if the dividended has upper bounds or the
      * dividor has lower bounds
      *)
    | [ H: _ < ?b |- context [ ?a / ?b ] ] =>
        try rewrite Z.div_small by lia; simpl
    | [ H: _ <= ?b |- context [ ?a / ?b ] ] =>
        try rewrite Z.div_small by lia; simpl
    (* Can we simpl div_mult? *)
    | [ |- context [ (?a * ?b) / ?b ] ] =>
        try rewrite Z_div_mult by lia; simpl
    | [ |- _ = _ ] => reflexivity
    | _ => idtac
    end.

Ltac try_solve :=
  repeat rewrite_shift; Z.div_mod_to_equations; try reflexivity; try lia.

Ltac solve_equality :=
  repeat
    (try_solve;
      match goal with
      | [ |- ?f ?a ?b ?c ?d ?e ?g ?h ?i ?j ?k = ?f ?a' ?b' ?c' ?d' ?e' ?g' ?h' ?i' ?j' ?k'] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          replace d with d' by solve_equality;
          replace e with e' by solve_equality;
          replace g with g' by solve_equality;
          replace h with h' by solve_equality;
          replace i with i' by solve_equality;
          replace j with j' by solve_equality;
          replace k with k' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b ?c ?d ?e ?g ?h ?i ?j = ?f ?a' ?b' ?c' ?d' ?e' ?g' ?h' ?i' ?j'] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          replace d with d' by solve_equality;
          replace e with e' by solve_equality;
          replace g with g' by solve_equality;
          replace h with h' by solve_equality;
          replace i with i' by solve_equality;
          replace j with j' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b ?c ?d ?e ?g ?h ?i = ?f ?a' ?b' ?c' ?d' ?e' ?g' ?h' ?i'] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          replace d with d' by solve_equality;
          replace e with e' by solve_equality;
          replace g with g' by solve_equality;
          replace h with h' by solve_equality;
          replace i with i' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b ?c ?d ?e ?g ?h = ?f ?a' ?b' ?c' ?d' ?e' ?g' ?h'] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          replace d with d' by solve_equality;
          replace e with e' by solve_equality;
          replace g with g' by solve_equality;
          replace h with h' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b ?c ?d ?e ?g = ?f ?a' ?b' ?c' ?d' ?e' ?g'] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          replace d with d' by solve_equality;
          replace e with e' by solve_equality;
          replace g with g' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b ?c ?d ?e = ?f ?a' ?b' ?c' ?d' ?e'] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          replace d with d' by solve_equality;
          replace e with e' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b ?c ?d = ?f ?a' ?b' ?c' ?d' ] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          replace d with d' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b ?c = ?f ?a' ?b' ?c' ] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b = ?f ?a' ?b' ] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          reflexivity
      | [ |- ?f ?a = ?f ?a' ] =>
          replace a with a' by solve_equality;
          reflexivity
      | [ |- (?a, ?b, ?c) = (?a', ?b', ?c') ] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          reflexivity
      | [ |- (?a, ?b) = (?a', ?b') ] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          reflexivity
      end).

Ltac con_step :=
  match goal with
  | [ |- exec _ _ (IAlloca _ _ _ :: nil)  _ _ _ _ _ ] => eapply exec_alloca
  | [ |- exec _ _ (IAssign _ _ _ :: nil)  _ _ _ _ _ ] => eapply exec_assign
  | [ |- exec _ _ (IBinOp _ _ _ _ _ :: nil)  _ _ _ _ _ ] => eapply exec_binop
  | [ |- exec _ _ (IBreak :: nil) _ _ _ _ _ ] => eapply exec_break
  | [ |- exec _ _ (IContinue :: nil) _ _ _ _ _ ] => eapply exec_continue
  | [ |- exec _ _ (ICall ?t _ _ _ :: nil)  _ _ _ _ _ ] =>
      match t with
      | TVoid => eapply exec_call_void
      | _ => eapply exec_call_ret
      end;
        match goal with
        | |- exec_func ?L ?M ?fname _ _ _ _ =>
            eapply exec_primitive_call; try eassumption; try_refl;
            match goal with
            | |- semof _ _ _ _ _ => econstructor; try eassumption
            | _ => idtac
            end
        | _ => idtac
        end
  | [ |- exec _ _ (IGetElemPtr _ _ _ _ _ :: nil)  _ _ _ _ _ ] => eapply exec_getelemptr
  | [ |- exec _ _ (ILoad _ _ _ _ :: nil)  _ _ _ _ _ ] => eapply exec_load
  | [ |- exec _ _ (IStore _ _ _ _ :: nil)  _ _ _ _ _ ] => eapply exec_store
  | [ |- exec _ _ (IUnaryOp _ _ _ _ :: nil)  _ _ _ _ _ ] => eapply exec_unaryop
  | [ |- exec _ _ (IReturn TVoid _ :: nil)  _ _ _ _ _ ] => eapply exec_return_void
  | [ |- exec _ _ (IReturn _ _ :: nil)  _ _ _ _ _ ] => eapply exec_return_value
  | [ |- exec _ _ (ISelect _ _ _ _ _ :: nil) _ _ _ _ _ ] => eapply exec_select
  | [ |- exec _ _ (IIf _ _ _ :: nil) _ _ _ _ _ ] => eapply exec_if
  (*
    | [ |- exec _ _ (IExtractElem _ _ _ _ :: _)  _ _ _ _ _ ] => econstructor
    | [ |- exec _ _ (IExtractValue _ _ _ _ :: _)  _ _ _ _ _ ] => econstructor
    | [ |- exec _ _ (IFreeze _ _ _ :: _)  _ _ _ _ _ ] => econstructor
    | [ |- exec _ _ (ILoop _ :: _)  _ _ _ _ _ ] => econstructor
    | [ |- exec _ _ (IInsertElem _ _ _ _ _ :: _)  _ _ _ _ _ ] => econstructor
    | [ |- exec _ _ (IInsertValue _ _ _ _ _ :: _)  _ _ _ _ _ ] => econstructor
    | [ |- exec _ _ (IShuffleVec _ _ _ :: _)  _ _ _ _ _ ] => econstructor
    | [ |- exec _ _ (IBreak :: _)  _ _ _ _ _ ] => econstructor
    *)
  | _ => idtac
  end.

Ltac sstep :=
  autounfold with sem;
  match goal with
  | [ |- exec _ _ (_ :: nil) _ _ _ _ _ ] => con_step
  | [ |- exec _ _ (_ :: _) _ _ _ _ _ ] => eapply exec_list
  | [ |- semof _ _ _ _ _ ] => econstructor; try reflexivity
  | [ |- exec _ _ nil _ _ _ _ _ ] => eapply exec_nil
  | [ |- ?x = ?x -> _ ] => let T := fresh "T" in intro T; clear T
  | [ |- ?x <> ?x -> _ ] => intros; contra
  | [ |- true = false -> _ ] => intros; contra
  | [ |- false = true -> _ ] => intros; contra
  | [ |- out_normal = out_return _ -> _ ] => let T := fresh "T" in intro T; inversion T
  | [ |- out_normal = out_break _ -> _ ] => let T := fresh "T" in intro T; inversion T
  | [ |- out_break _ = out_normal -> _ ] => let T := fresh "T" in intro T; inversion T
  | [ |- out_break _ = out_return _ -> _ ] => let T := fresh "T" in intro T; inversion T
  | [ |- out_return _ = out_normal -> _ ] => let T := fresh "T" in intro T; inversion T
  | [ |- out_return _ = out_break _ -> _ ] => let T := fresh "T" in intro T; inversion T
  | [ |- out_normal <> out_return _ -> _ ] => intros
  | [ |- out_normal <> out_break _ -> _ ] => intros
  | [ |- out_break _ <> out_normal -> _ ] => intros
  | [ |- out_break _ <> out_return _ -> _ ] => intros
  | [ |- out_return _ <> out_normal -> _ ] => intros
  | [ |- out_return _ <> out_break _ -> _ ] => intros
  | [ |- out_return _ <> out_break _ -> _ ] => intros
  | [ |- _ /\ _ ] => split
  | _ => idtac
  end; grewrite; simpl_arith; simpl; try_refl; try eassumption.


Ltac vcgen :=
  repeat sstep; (* gextract_mod; *)
  repeat match goal with
    | [ |- context [ZMap.get ?i (ZMap.set _ _ _) ] ] => try rewrite ZMap.gss
    | [ |- context [ZMap.set ?i _ (ZMap.set _ _ _) ] ] => try rewrite ZMap.set2
    | [ |- _ = _] => try solve[solve_equality]
    end.

Ltac simpl_hyp H :=
  let cond := fresh "C" in
  match type of H with
  | context[if ?x then _ else _] =>
    destruct (x) eqn:cond; contra; try solve[inversion cond]; repeat simpl_hyp cond
  | context[match ?x with | Some _ => _ | None => None end] =>
    destruct (x) eqn:cond; contra; try solve[inversion cond]; repeat simpl_hyp cond
  | context[match ?x with | _ => _  end] =>
    destruct (x) eqn:cond; contra; try solve[inversion cond]; repeat simpl_hyp cond
  | _ => idtac
  end.

Ltac simpl_func Hspec :=
  unfold_spec Hspec; repeat autounfold with sem in Hspec; repeat simpl_hyp Hspec;
  repeat match goal with
          | [H: Some _ = Some _ |- _] => inv H
          end.

Ltac solve_single_mrs_msr Hspec :=
  intros; simpl_func Hspec; simpl in *;
  repeat match goal with
    | [H: Some _ = Some _ |- _] => inv H
    end;
  econstructor;
  [eapply exec_trans;
   [econstructor; reflexivity; reflexivity
   |eapply exec_trans; [econstructor; reflexivity | simpl; try rewrite ZMap.gss; eapply exec_stop] ]
  | simpl; try rewrite int_ptr_same; try rewrite ZMap.gso; try reflexivity; try lia ].

Ltac gextract_mod :=
  repeat ( match goal with
            (* Is the dividened a multiple of the divide? *)
            | [ |- context [ (?x * ?y) mod ?z ] ] =>
                match y with
                | z => try now rewrite Z.mod_mul; simpl
                | _ => match x with
                      | z => rewrite (Z.mul_comm x y); try now rewrite Z.mod_mul; simpl
                      | _ => idtac
                      end
                end
            | [ |- context [ (?a + ?b * ?c) mod ?d ] ] =>
                match c with
                | d => try now rewrite Z_mod_plus; simpl
                | _ => match b with
                      | d => rewrite (Z.mul_comm b c); try now rewrite Z.mod_mul; simpl
                      | _ => idtac
                      end
                end
            | [ |- context [ (?b * ?c + ?a) mod ?d ] ] =>
                replace (b * c + a) with (a + b * c) by (auto with zarith)
            (* There are direct bounds of the dividened. *)
            | [ H1: ?x < ?ub, H2: ?lb <= ?x |- context [?x mod ?y] ] =>
                let LB := fresh "LB" in
                let UB := fresh "UB" in
                (* solve lower bound *)
                tryif
                  match goal with
                  | [ H3: 0 <= x |- _ ] => idtac
                  | _ =>
                      tryif assert (LB: 0 <= x) by lia then idtac else fail
                  end
                then
                  tryif
                    (* solve the upper bound *)
                    match goal with
                    | [ H4: x < y |- _ ] => idtac "up is y" y
                    | _ =>
                        tryif assert (UB: x < y) by lia then idtac else fail
                    end
                  then
                    (* rewrite *)
                    let C := fresh "C" in
                    assert (C: 0 <= x < y) by lia;
                    let HP := fresh "H" in
                    pose proof (Z.mod_small x y C) as HP;
                    rewrite HP;
                    clear C HP; try clear LB; try clear UB
                  else (
                      try clear LB;
                      idtac "Failed to infer the divider" y " > the upper bound"
                    )
                else
                  idtac "Failed to infer the dividened" x "< 0"

            (* There is no direct bound of the dividened. *)
            | [ |- context [ ?x mod ?y ] ] =>
                match x with
                (* Does the dividened contains `mod`? *)
                | context [ ?p mod ?q ] => idtac "yes p" p "q" q
                (* Does the divider conatins `mod` ? *)
                | context [ ?p mod ?q ] => idtac "yes p" p "q" q
                (* Perhaps it's just an arithmatic *)
                | _ => rewrite Z.mod_small; simpl; try lia
                end
            end; simpl_arith).


Ltac solve_refproof :=
  repeat (
    frewrite; simpl;
    repeat
      match goal with
      | C: context[ptr_to_int (int_to_ptr ?v)] |- _ => rewrite int_ptr_same in C
      | |- context[ptr_to_int (int_to_ptr ?v)] => rewrite int_ptr_same
      | C: context[(?m # ?k == ?v) @ ?k'] |- _ =>
          let H := fresh "Heqne" in
          first[replace k' with k by solve_equality; rewrite ZMap.gss in C |
                assert(H: k' <> k) by try_solve; rewrite (ZMap.gso _ _ H) in C; clear H |
                fail 1 ]
      | |- context[(?m # ?k == ?v) @ ?k'] =>
          let H := fresh "Heqne" in
          first[replace k' with k by solve_equality; rewrite ZMap.gss |
                assert(H: k' <> k) by try_solve; rewrite (ZMap.gso _ _ H); clear H |
                fail 1 ]
      | H: context[(?m # ?k == ?v) # ?k == ?v'] |- _ =>
          rewrite ZMap.set2 in H
      | |- context[(?m # ?k == ?v) # ?k == ?v'] =>
          rewrite ZMap.set2
      | |- context[if prop ?P then _ else None] =>
          let Hcond := fresh "Hcond" in
          first[assert(Hcond: P) by try_solve; destruct (prop P); [clear Hcond|contra]|fail 1]
      | |- context[if ?C then _ else _] =>
          first[replace C with false by try_solve|replace C with true by try_solve|fail 1]
      end);
    try match goal with
        | [ H: ?x = ?v |- context[?y] ] =>
            let T := fresh "tmp" in
            first[assert(T: y = x) by solve_equality; rewrite T; rewrite H; clear T|fail 1]
    end.

Ltac destruct_spec' H :=
  repeat
    let cond := fresh "Hcond" in
    match type of H with
    | context[if prop ?P then _ else None] =>
        destruct (prop P); contra
    | context [ if ?x then _ else _ ] =>
        destruct (x) eqn:cond; contra; destruct_spec' cond
    | context [ match ?x with | Some _ => _ | None => None end ] =>
        destruct (x) eqn:cond; contra; destruct_spec' cond
    | context [ match ?x with | _ => _ end ] =>
        destruct (x) eqn:cond; contra; destruct_spec' cond
    | context [ anno ?prop; ?X ] =>
      match goal with
      | [HH: prop |- _] => rewrite annotation_eq with (P:=prop) in H
      | _ => let A := fresh "Anno" in
             assert(A: prop); [try_solve|rewrite annotation_eq with (P:=prop) in H]
      end
    | Some _ = Some _ => inv H
    | _ => contra
    end.

Ltac destruct_spec H :=
  destruct_spec' H;
  repeat (
      repeat
        match goal with
        | [HH: True -> ?x = ?y |- _] =>
            let T := fresh "tmp" in
            rewrite HH in *; try solve[constructor];
            assert(T: True -> True -> x = y) by (intros; apply HH; constructor);
            clear HH; rename T into HH
        end;
      repeat
        match goal with
        | [HH: True -> True -> ?x = ?y |-_ ] =>
            let T := fresh "tmp" in
            assert(T: True -> x = y) by (intros; apply HH; intros; constructor);
            clear HH; rename T into HH
        end);
  repeat
    match goal with
    | [HH: True -> ?x = ?y |-_ ] => clear HH
    end.

  Lemma loop_nat_sub1:
    forall m n, m >= n -> Z.to_nat (m - (n - 1)) = S (Z.to_nat (m - n)).
  Proof.  intros. auto with zarith.  Qed.

  Lemma loop_ind_sub1:
    forall m n, Z.of_nat (S n) <= m -> Z.to_nat (m - Z.of_nat n) = S (Z.to_nat (m - Z.of_nat (S n))).
  Proof.  intros. auto with zarith.  Qed.

  Lemma succ_plus_1:
    forall n, Z.succ n = n + 1.
  Proof. intros. auto with zarith. Qed.

  Ltac destruct_eval :=
    repeat match goal with
    | [|- eval_list _ _ _ = _] => try unfold eval_list; simpl
    | [|- eval _ _ _ = _] => try unfold eval; simpl
    | [H: gets ?x ?te = _ |- context [gets ?x ?te] ] => rewrite H; try reflexivity
    end.

   Ltac destruct_con0 H :=
      let Hc1 := fresh "Hcond" in
      let Hc2 := fresh "Hcond" in
      match goal with
      | _ => match type of H with
             | ?x && ?y = true => destruct x eqn:Hc1; destruct y eqn:Hc2; unfold andb in H; inversion H
             | ?x && ?y = false => destruct x eqn:Hc1; destruct y eqn:Hc2; unfold andb in H; inversion H
             end
    end.

   Fixpoint inlist (a: string) (l: list string) :=
     match l with
     | nil => false
     | s :: l' =>
         if (a =? s)%string then true
         else inlist a l'
     end.

  Ltac solve_loop_body te te_all Hte' Hnext Hfinal Inv Q :=
    first [
      match goal with
      | [H: _ |- _] => first[solve[inv H] | fail 1]
      end
      |
      eexists; eexists; eexists; split;
      [
        repeat (
            vcgen; repeat (intros; try unfold eval_list, eval; try erewrite Hte'; simpl; repeat grewrite; try lia; try reflexivity))
      |
        let T := fresh "T" in
        split_and; try solve[intro T; inv T]; try solve[intros ? T; inv T];
        match goal with
        | [|- out_normal = out_normal -> _] =>
            let ss := fresh "ss" in
            let vv := fresh "vv" in
            let Hte := fresh "Hte" in
            intros; unfold Inv;
            match goal with
            | [ |-  exists _, (1 <= ?v /\ _ < ?v) /\ _ ] => exists (v - 1)
            end;
            split;
            [lia| repeat match goal with |- exists _, _ => eexists end; split; [apply Hnext|] ];
            split_and; try_solve;
            intros ss vv Hte; simpl in *; repeat simpl_hyp Hte; inv Hte;
            try match goal with | [H: ?p =s ?t = true |- _] => apply String.eqb_eq in H end;
            subst; simpl; try assumption; try reflexivity; try erewrite Hte'; simpl; try reflexivity;
            repeat
              match goal with
              | H: gets ss te = Some vv |- (if ss =s ?v then _ else _) = _ =>
                  let Hs := fresh "Hs" in
                  let Hss := fresh "Hss" in
                  destruct (ss =s v) eqn:Hs; [
                      apply String.eqb_eq in Hs; pose proof (te_all ss) as Hss; rewrite Hs in *; simpl in Hss;
                      exploit Hss; try reflexivity; grewrite; intro T; inv T
                    | ]
              end;
            repeat (grewrite; reflexivity)
        | [|- out_break = out_break -> _] =>
            match type of Hfinal with
            | ?L1 = ?R1 =>
                match type of Hnext with
                | ?L2 = ?R2 =>
                    assert(reach_final: L1 = L2) by (solve_equality); rewrite reach_final in Hfinal; rewrite Hfinal in Hnext; inv Hnext
                end
            end;
            let ss := fresh "ss" in
            let vv := fresh "vv" in
            let Hte := fresh "Hte" in
            intros; unfold Q; split;
            [intros ss vv Hte; simpl in *; repeat simpl_hyp Hte; inv Hte;
            try match goal with | [H: ?p =s ?t = true |- _] => apply String.eqb_eq in H end;
            subst; simpl; try assumption; try reflexivity; try erewrite Hte'; simpl; try reflexivity;
            repeat
              match goal with
              | H: gets ss te = Some vv |- (if ss =s ?v then _ else _) = _ =>
                  let Hs := fresh "Hs" in
                  let Hss := fresh "Hss" in
                  destruct (ss =s v) eqn:Hs; [
                      apply String.eqb_eq in Hs; pose proof (te_all ss) as Hss; rewrite Hs in *; simpl in Hss;
                      exploit Hss; try reflexivity; grewrite; intro T; inv T
                    | ]
              end;
            repeat (grewrite; reflexivity)
            |
              reflexivity
            ]
        end
      ]; solve_equality
    ].
