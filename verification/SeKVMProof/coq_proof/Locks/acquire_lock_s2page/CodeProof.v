Require Import Accessors.Layer.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.acquire_lock_s2page.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Locks_acquire_lock_s2page_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_el2_data_start_spec.
  Local Opaque stage2_spin_lock_spec.

    Lemma f_acquire_lock_s2page_correct:
      forall st st'
             (Hspec: acquire_lock_s2page_spec_low st = Some st'),
        exec_func Accessors_layer code "acquire_lock_s2page"
                  []
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Locks_acquire_lock_s2page_CodeProof.

