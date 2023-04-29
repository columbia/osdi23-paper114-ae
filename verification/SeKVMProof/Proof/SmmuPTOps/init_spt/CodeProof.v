Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuPTOps.init_spt.LowSpec.
Require Import SmmuPTTreeOps.Layer.
Require Import SmmuPTTreeOps.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTOps_init_spt_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque release_lock_spt_spec.
  Local Opaque init_smmu_pt_spec.
  Local Opaque acquire_lock_spt_spec.

    Lemma f_init_spt_correct:
      forall v_cbndx v_index st st'
             (Hspec: init_spt_spec_low v_cbndx v_index st = Some st'),
        exec_func SmmuPTTreeOps_layer code "init_spt"
                  [VInt v_cbndx; VInt v_index]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuPTOps_init_spt_CodeProof.

