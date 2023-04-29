Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemoryOpsAux.Layer.
Require Import VMOpsAux.gen_vmid.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOpsAux_gen_vmid_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque acquire_lock_core_spec.
  Local Opaque set_next_vmid_spec.
  Local Opaque get_next_vmid_spec.
  Local Opaque release_lock_core_spec.

    Lemma f_gen_vmid_correct:
      forall st st' res
             (Hspec: gen_vmid_spec_low st = Some (res, st')),
        exec_func MemoryOpsAux_layer code "gen_vmid"
                  []
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VMOpsAux_gen_vmid_CodeProof.

