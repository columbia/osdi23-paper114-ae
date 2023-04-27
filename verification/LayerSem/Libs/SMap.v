Require Import String.
Require Export List.
Require Import ZArith.

Local Open Scope string_scope.

Section StringMap.

  Context {T: Type}.

  Definition smap : Type := list (string * T).

  Fixpoint gets (key: string) (m: smap) : option T :=
    match m with
    | nil => None
    | (s, v) :: m' =>
      if (key =? s)%string then
        Some v
      else
        gets key m'
    end.

  (*
  Fixpoint sets (key: string) (val: T) (m: smap) : smap :=
    match m with
    | nil => (key, val) :: nil
    | (s, v) :: m' =>
      if (key =? s)%string then
        (s, val) :: m'
      else
        (s, v) :: (sets key val m')
    end.
  *)
  Definition sets (key: string) (val: T) (m: smap) : smap :=
    (key, val) :: m.

End StringMap.
