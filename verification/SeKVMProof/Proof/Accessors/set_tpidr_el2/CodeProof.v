Require Import Accessors.set_tpidr_el2.LowSpec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import InlineAsms.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_tpidr_el2_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque iasm_set_tpidr_el2_spec.

    Lemma f_set_tpidr_el2_correct:
      forall v_val st st'
             (Hspec: set_tpidr_el2_spec_low v_val st = Some st'),
        exec_func InlineAsms_layer code "set_tpidr_el2"
                  [VInt v_val]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_set_tpidr_el2_CodeProof.

