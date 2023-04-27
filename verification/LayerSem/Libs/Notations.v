Require Import Coqlib.
Require Import Maps.

(* common Notations *)

Definition mset{T} (ctxt: ZMap.t T) idx val :=
  ZMap.set idx val ctxt.
Definition mset2{T} (ctxt: (ZMap.t (ZMap.t T))) idx1 idx2 val :=
  ZMap.set idx1 (ZMap.set idx2 val (ZMap.get idx1 ctxt)) ctxt.
Definition mset3{T} (ctxt: (ZMap.t (ZMap.t (ZMap.t T)))) idx1 idx2 idx3 val :=
  (ZMap.set idx1 (ZMap.set idx2 (ZMap.set idx3 val (ZMap.get idx2 (ZMap.get idx1 ctxt))) (ZMap.get idx1 ctxt)) ctxt).

Notation "M @ I" := (ZMap.get I M) (at level 1).
Notation "M # I == V" := (ZMap.set I V M) (at level 1).

Definition bind {A T : Type} (a : option A) (f : A -> option T) : option T :=
  match a with
  | Some x => f x
  | None => None
  end.

Definition bind' {A B T : Type} (a : option (A * B)) (f : A -> B -> option T) : option T :=
  match a with
  | Some (a, b) => f a b
  | None => None
  end.

Definition bind'' {A B C T : Type} (a : option (A * B * C)) (f : A -> B -> C -> option T) : option T :=
  match a with
  | Some (a, b, c) => f a b c
  | None => None
  end.

Notation "'when' X == A ; B" := (bind A (fun X => B)) (at level 200, X ident, A at level 100, B at level 200).
Notation "'when' X ',' Y == A ; B" := (bind' A (fun X Y => B)) (at level 200, X ident, Y ident, A at level 100, B at level 200).
Notation "'when' X ',' Y ',' Z == A ; B" := (bind'' A (fun X Y Z => B)) (at level 200, X ident, Y ident, Z ident, A at level 100, B at level 200).

Definition Assertion {T : Type} (P : Prop) (f : option T) : option T :=
  match prop P with
  | left _ => f
  | right _ => None
  end.
Notation "'rely' P ; F" := (Assertion P F) (at level 200, P at level 100, F at level 200).

Definition Annotation {T: Type} (P: Prop) (x: T) : T :=
  if prop P then x else x.
Notation "'anno' P ; X" := (Annotation P X) (at level 200, P at level 100, X at level 200).

Lemma annotation_eq:
  forall {T: Type} (P: Prop) (x: T),
    (anno P; x) = x.
Proof.
  intros. unfold Annotation. destruct (prop P); auto.
Qed.

#[global] Hint Unfold bind bind' bind'' Assertion: sem.
