Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuAccess.handle_smmu_cb_access.LowSpec.
Require Import SmmuMemOps.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuAccess_handle_smmu_cb_access_CodeProof.

  Context `{int_ptr: IntPtrCast}.


    Lemma f_handle_smmu_cb_access_correct:
      forall v_offset st st' res
             (Hspec: handle_smmu_cb_access_spec_low v_offset st = Some (res, st')),
        exec_func SmmuMemOps_layer code "handle_smmu_cb_access"
                  [VInt v_offset]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuAccess_handle_smmu_cb_access_CodeProof.

