Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuAccess.Layer.
Require Import SmmuReadWrite.handle_smmu_read.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuReadWrite_handle_smmu_read_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque __handle_smmu_read_spec.

    Lemma f_handle_smmu_read_correct:
      forall v_hsr v_fault_ipa v_len st st'
             (Hspec: handle_smmu_read_spec_low v_hsr v_fault_ipa v_len st = Some st'),
        exec_func SmmuAccess_layer code "handle_smmu_read"
                  [VInt v_hsr; VInt v_fault_ipa; VInt v_len]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuReadWrite_handle_smmu_read_CodeProof.

