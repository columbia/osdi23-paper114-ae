Require Import Accessors.Layer.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.release_lock_core.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Locks_release_lock_core_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_el2_data_start_spec.
  Local Opaque stage2_spin_unlock_spec.

    Lemma f_release_lock_core_correct:
      forall st st'
             (Hspec: release_lock_core_spec_low st = Some st'),
        exec_func Accessors_layer code "release_lock_core"
                  []
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Locks_release_lock_core_CodeProof.

