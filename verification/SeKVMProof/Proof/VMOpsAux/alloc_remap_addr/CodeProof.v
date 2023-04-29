Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemoryOpsAux.Layer.
Require Import VMOpsAux.alloc_remap_addr.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOpsAux_alloc_remap_addr_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque acquire_lock_core_spec.
  Local Opaque release_lock_core_spec.
  Local Opaque v_panic_spec.
  Local Opaque get_next_remap_ptr_spec.
  Local Opaque set_next_remap_ptr_spec.

    Lemma f_alloc_remap_addr_correct:
      forall v_pgnum st st' res
             (Hspec: alloc_remap_addr_spec_low v_pgnum st = Some (res, st')),
        exec_func MemoryOpsAux_layer code "alloc_remap_addr"
                  [VInt v_pgnum]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VMOpsAux_alloc_remap_addr_CodeProof.

