Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuPTOps.map_spt.LowSpec.
Require Import SmmuPTTreeOps.Layer.
Require Import SmmuPTTreeOps.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTOps_map_spt_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque release_lock_spt_spec.
  Local Opaque set_smmu_pt_spec.
  Local Opaque acquire_lock_spt_spec.

    Lemma f_map_spt_correct:
      forall v_cbndx v_index v_addr v_pte st st'
             (Hspec: map_spt_spec_low v_cbndx v_index v_addr v_pte st = Some st'),
        exec_func SmmuPTTreeOps_layer code "map_spt"
                  [VInt v_cbndx; VInt v_index; VInt v_addr; VInt v_pte]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuPTOps_map_spt_CodeProof.

