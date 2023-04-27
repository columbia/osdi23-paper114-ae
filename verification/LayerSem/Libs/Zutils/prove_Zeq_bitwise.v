(* same application area as "bitblast", but a bit more complex and a bit more powerful *)

Require Import Coq.ZArith.ZArith.
Require Import LayerSem.Libs.Zutils.Lia.
Require Import LayerSem.Libs.Zutils.BitOps.
Require Export Coq.setoid_ring.ZArithRing.
Require Import Coq.btauto.Btauto.

Local Open Scope bool_scope.
Local Open Scope Z_scope.


Tactic Notation "safe_ring_simplify" constr(i) "in" ident(C) :=
  first [ring_simplify i in C |
         let t := type of i in fail 1000 "No ring structure found for" t ].

Lemma testbit_minus1: forall i,
    0 <= i ->
    Z.testbit (-1) i = true.
Proof.
  intros. rewrite (Z.bits_opp 1) by assumption.
  simpl. rewrite Z.bits_0. reflexivity.
Qed.

Lemma testbit_above: forall {p n},
    0 <= n < 2 ^ p ->
    0 <= p ->
    forall i,
    p <= i ->
    Z.testbit n i = false.
Proof.
  intros.
  rewrite <- (Z.mod_small n (2 ^ p)) by assumption.
  apply Z.mod_pow2_bits_high.
  auto.
Qed.

Lemma if_same: forall (A: Type) (b: bool) (a: A),
    (if b then a else a) = a.
Proof.
  intros. destruct b; reflexivity.
Qed.

Lemma then_true_else_false: forall (b: bool),
    (if b then true else false) = b.
Proof.
  intros. destruct b; reflexivity.
Qed.

#[global] Hint Rewrite
     if_same
     then_true_else_false
     Bool.andb_false_r
     Bool.andb_true_r
     Bool.andb_false_l
     Bool.andb_true_l
     Bool.orb_false_r
     Bool.orb_true_r
     Bool.orb_false_l
     Bool.orb_true_l
     Bool.xorb_false_r
     Bool.xorb_true_r
     Bool.xorb_false_l
     Bool.xorb_true_l
  : bool_rewriting.

Ltac discard_contradictory_or t :=
  match goal with
  | |- ?P \/ ?Q => (assert (~P) as _ by t; right) || (assert (~Q) as _ by t; left)
  end.

Lemma testbit_if: forall (b: bool) n m i,
    Z.testbit (if b then n else m) i = if b then (Z.testbit n i) else (Z.testbit m i).
Proof.
  intros. destruct b; reflexivity.
Qed.

Lemma Zdiv_small_neg: forall a b,
    - b <= a < 0 ->
    a / b = -1.
Proof.
  intros. Z.div_mod_to_equations. Lia.nia.
Qed.

Lemma testbit_above_signed: forall l a i,
    - 2 ^ l <= a < 2 ^ l ->
    0 < l ->
    l < i ->
    Z.testbit a i = Z.testbit a l.
Proof.
  intros. destruct (Z.testbit a l) eqn: E.
  - rewrite Z.testbit_true in E by blia.
    assert (a < -1 \/ a = -1 \/ 0 <= a) as C by blia. destruct C as [C | [C | C]].
    + apply Z.bits_above_log2_neg; [blia|].
      rewrite (Z.pow_lt_mono_r_iff 2) by blia.
      pose proof (Z.log2_spec (Z.pred (- a))) as P.
      pose proof (Z.pow_lt_mono_r 2 l i).
      blia.
    + subst. apply testbit_minus1. blia.
    + rewrite Z.div_small in E by blia.
      cbv in E. discriminate.
  - assert (a < 0 \/ 0 <= a) as C by blia. destruct C as [C | C].
    + exfalso.
      pose proof (Z.testbit_true a l) as P.
      destruct P as [_ P]; [blia|].
      rewrite P in E; [discriminate|clear P E].
      rewrite Zdiv_small_neg by blia.
      reflexivity.
    + assert (a / 2 ^ i = 0) as F. {
        pose proof (Z.pow_lt_mono_r 2 l i).
        apply Z.div_small. blia.
      }
      rewrite Z.testbit_false by blia.
      rewrite F.
      reflexivity.
Qed.

Lemma testbit_above': forall n b i,
    0 <= n ->
    n < b ->
    0 <= Z.log2_up b ->
    Z.log2_up b <= i ->
    Z.testbit n i = false.
Proof.
  intros.
  pose proof (Z.log2_log2_up_spec b).
  apply (@testbit_above (Z.log2_up b) n); blia.
Qed.

Lemma testbit_above_signed': forall a b i,
    - b <= a ->
    a < b ->
    0 < Z.log2_up b ->
    Z.log2_up b < i ->
    Z.testbit a i = Z.testbit a (Z.log2_up b).
Proof.
  intros.
  pose proof (Z.log2_log2_up_spec b).
  apply testbit_above_signed; blia.
Qed.

Lemma testbit_above_signed'': forall a b i,
    - b <= a ->
    a < b ->
    0 < Z.log2_up b ->
    Z.log2_up b <= i ->
    Z.testbit a i = Z.testbit a (Z.log2_up b).
Proof.
  intros.
  assert (i = Z.log2_up b \/ Z.log2_up b < i) as C by blia. destruct C.
  - subst i. reflexivity.
  - eauto using testbit_above_signed'.
Qed.

Lemma mod0_testbit: forall a i p,
    a mod 2 ^ p = 0 ->
    0 <= i < p ->
    Z.testbit a i = false.
Proof.
  intros.
  rewrite Z.testbit_false by blia.
  pose proof (Zdiv.Zmod_divides a (2 ^ p)) as P.
  destruct P as [P _].
  - apply Z.pow_nonzero; blia.
  - specialize (P H). destruct P as [c P]. subst a. clear H.
    rewrite Z.mul_comm.
    rewrite Z.divide_div_mul_exact.
    + replace p with ((1 + (p - i - 1)) + i) by blia.
      rewrite Z.pow_add_r by blia.
      rewrite Z.div_mul by (apply Z.pow_nonzero; blia).
      rewrite Zdiv.Zmult_mod.
      rewrite Z.pow_add_r by blia.
      rewrite (Zdiv.Zmult_mod (2 ^ 1)).
      change (2 ^ 1 mod 2) with 0.
      rewrite Z.mul_0_l.
      change (0 mod 2) with 0.
      rewrite Z.mul_0_r.
      reflexivity.
    + apply Z.pow_nonzero; blia.
    + replace p with ((p - i) + i) by blia.
      rewrite Z.pow_add_r by blia.
      apply Z.divide_factor_r.
Qed.

Lemma mod0_testbit': forall a i m,
    a mod m = 0 ->
    m = 2 ^ Z.log2_up m ->
    0 <= i < Z.log2_up m ->
    Z.testbit a i = false.
Proof.
  intros. rewrite H0 in H.
  apply (mod0_testbit a i (Z.log2_up m)); assumption.
Qed.

Lemma mod20_testbit': forall a i,
    a mod 2 = 0 ->
    i = 0 ->
    Z.testbit a i = false.
Proof.
  intros. eapply mod0_testbit'.
  - eassumption.
  - reflexivity.
  - subst. cbv. intuition congruence.
Qed.

#[global] Hint Rewrite
    Z.lxor_spec
    Z.ldiff_spec
    Z.testbit_neg_r
    Z.setbit_eq
    Z.setbit_neq
    Z.testbit_0_l
    Z.land_spec
    Z.lor_spec
    Z.shiftr_spec
    Z.lnot_spec
    Z.shiftl_spec
    testbit_minus1
    Z.ones_spec_high
    Z.ones_spec_low
    testbit_if
    using blia
: rew_testbit.

#[global] Hint Rewrite
     testbit_above'
     testbit_above_signed'
(*   testbit_above_signed''  <-- TODO why does this one make proofs run forever? *)
     mod0_testbit'
     mod20_testbit'
     using (try eassumption; try reflexivity; rewrite? Z.log2_up_pow2 by blia; blia)
: rew_testbit_expensive.

Ltac rewrite_testbit :=
  repeat
    ((autorewrite with bool_rewriting) ||
     (rewrite_strat (repeat (topdown (hints rew_testbit)))) ||
     ((rewrite_strat (repeat (topdown (hints rew_testbit_expensive)))))).

Ltac compare_cases cst i :=
  tryif (first [assert (cst <= i) by blia | assert (i < cst) by blia])
  then fail
  else (let C := fresh "C" in
        assert (i < cst \/ cst <= i) as C by blia;
        safe_ring_simplify i in C;
        destruct C as [C | C]).

Ltac solve_or_split_step :=
    rewrite_testbit;
    (* Note: it would be nice if we could insert "try btauto" here
       to decide quickly if we can stop destructing and rewriting,
       but there are goals such as those generated by
       riscv.Proofs.EncodeBound.encode_SB_bitSlice_idemp where
       btauto runs forever. See https://github.com/coq/coq/issues/9832 *)
    try solve [f_equal; (reflexivity || blia)];
    match goal with
    | |- context [Z.testbit _ ?i] => compare_cases 0 i
    | |- context [Z.testbit (Z.ones ?sz) ?i] => compare_cases sz i
    end.

Ltac solve_or_split := repeat solve_or_split_step.

Ltac Zbitwise :=
  apply Z.bits_inj'; intros ?i ?Hi;
  solve_or_split;
  rewrite_testbit;
  try btauto.

Ltac prove_Zeq_bitwise_pre :=
  rewrite ?signExtend_alt_bitwise by blia; unfold signExtend_bitwise, bitSlice in *;
  subst;
  repeat match goal with
         | H: _ /\ _ |- _ => destruct H
         end;
  repeat match goal with
         | |- _ /\ _ => split
         end;
  repeat (discard_contradictory_or ltac:(first [discriminate | blia ])).

Ltac prove_Zeq_bitwise := prove_Zeq_bitwise_pre; Zbitwise.
