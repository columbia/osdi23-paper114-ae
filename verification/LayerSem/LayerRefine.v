Require Import String.
Require Export ZArith Zquot.
Require Export List.
Require Import SMap.
Require Import IR.
Require Import PrimSem.
Require Import IRSem.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section LayerRefine.

  Context `{int_ptr: IntPtrCast}.

  Record LayerRef (L H: Layer) (M: module) (rel: L.(State) -> H.(State) -> Prop) : Prop :=
    mkLayerRef {
      init_state_ref: 
        rel L.(Init) H.(Init);
      load_ref:
        forall t p st_l st_h v st_h',
          rel st_l st_h ->
          H.(Load) t p st_h = Some (v, st_h') ->
          exists st_l', 
            L.(Load) t p st_l = Some (v, st_l') /\ rel st_l' st_h';
      store_ref:
        forall t p v st_l st_h st_h',
          rel st_l st_h ->
          H.(Store) t p v st_h = Some st_h' ->
          exists st_l', 
            L.(Store) t p v st_l = Some st_l' /\ rel st_l' st_h';
      alloca_ref:
        forall t a p st_l st_h st_h',
          rel st_l st_h ->
          H.(Alloca) t a st_h = Some (p, st_h') ->
          exists st_l', 
            L.(Alloca) t a st_l = Some (p, st_l') /\ rel st_l' st_h';
      free_ref:
        forall p st_l st_h st_h',
          rel st_l st_h ->
          H.(Free) p st_h = Some st_h' ->
          exists st_l', 
            L.(Free) p st_l = Some st_l' /\ rel st_l' st_h';
      prim_ref:
        forall name,
          match gets name H.(PrimCall) with
          | Some (PRIM _ T prim sem) =>
            (forall args st_h ret st_h' st_l 
                    (Hsem: sem args st_h ret st_h')
                    (Hrel: rel st_l st_h),
              exists st_l', 
                exec_func L M name args st_l st_l' ret /\ rel st_l' st_h') 
            \/
            (forall args st_h ret st_h' st_l 
                    (Hsem: sem args st_h ret st_h')
                    (Hrel: rel st_l st_h),
                match gets name L.(PrimCall) with
                | Some (PRIM _ T' prim' sem') =>
                  exists st_l', sem' args st_l ret st_l' /\ rel st_l' st_h'
                | _ => False
                end)
          | _ => True
          end
    }.

End LayerRefine.
