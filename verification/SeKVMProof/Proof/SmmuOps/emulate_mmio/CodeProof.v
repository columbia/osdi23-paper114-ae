Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import SmmuMemOps.Spec.
Require Import SmmuOps.emulate_mmio.LowSpec.
Require Import SmmuOpsAux.Layer.
Require Import SmmuOpsAux.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuOps_emulate_mmio_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque handle_host_mmio_spec.
  Local Opaque acquire_lock_smmu_spec.
  Local Opaque is_smmu_range_spec.
  Local Opaque release_lock_smmu_spec.

    Lemma f_emulate_mmio_correct:
      forall v_addr v_hsr st st' res
             (Hspec: emulate_mmio_spec_low v_addr v_hsr st = Some (res, st')),
        exec_func SmmuOpsAux_layer code "emulate_mmio"
                  [VInt v_addr; VInt v_hsr]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuOps_emulate_mmio_CodeProof.

