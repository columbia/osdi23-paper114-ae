Require Import Bottom.Layer.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.iasm_get_far_el2.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section InlineAsms_iasm_get_far_el2_CodeProof.

  Context `{int_ptr: IntPtrCast}.

    Lemma f_iasm_get_far_el2_correct:
      forall st st' res st''
             (Hspec: iasm_get_far_el2_spec_low st = Some (res, st'))
             (Hret: Bottom_layer.(SetReg) (Rx0 SZ32) res st' = Some st''),
         exec_proc Bottom_layer code "iasm_get_far_el2" st st''.
    Proof.
      solve_single_mrs_msr Hspec.
    Qed.

End InlineAsms_iasm_get_far_el2_CodeProof.

