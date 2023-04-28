Require Import Bottom.Layer.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.iasm_set_tpidr_el2.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section InlineAsms_iasm_set_tpidr_el2_CodeProof.

  Context `{int_ptr: IntPtrCast}.

    Lemma f_iasm_set_tpidr_el2_correct:
      forall st0 v_val st st'
             (Harg: Bottom_layer.(SetReg) (Rx0 SZ32) v_val st0 = Some st)
             (Hspec: iasm_set_tpidr_el2_spec_low v_val st = Some st'),
         exec_proc Bottom_layer code "iasm_set_tpidr_el2" st st'.
    Proof.
      solve_single_mrs_msr Hspec.
    Qed.

End InlineAsms_iasm_set_tpidr_el2_CodeProof.

