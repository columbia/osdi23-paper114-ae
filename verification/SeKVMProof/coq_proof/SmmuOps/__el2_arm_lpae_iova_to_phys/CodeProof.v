Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuOps.__el2_arm_lpae_iova_to_phys.LowSpec.
Require Import SmmuOpsAux.Layer.
Require Import SmmuPTOps.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuOps___el2_arm_lpae_iova_to_phys_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque walk_spt_spec.

    Lemma f___el2_arm_lpae_iova_to_phys_correct:
      forall v_iova v_cbndx v_index st st' res
             (Hspec: __el2_arm_lpae_iova_to_phys_spec_low v_iova v_cbndx v_index st = Some (res, st')),
        exec_func SmmuOpsAux_layer code "__el2_arm_lpae_iova_to_phys"
                  [VInt v_iova; VInt v_cbndx; VInt v_index]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuOps___el2_arm_lpae_iova_to_phys_CodeProof.

