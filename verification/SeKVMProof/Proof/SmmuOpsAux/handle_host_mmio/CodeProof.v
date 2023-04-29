Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Spec.
Require Import SmmuOpsAux.handle_host_mmio.LowSpec.
Require Import SmmuReadWrite.Layer.
Require Import SmmuReadWrite.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuOpsAux_handle_host_mmio_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque iasm_get_far_el2_spec.
  Local Opaque handle_smmu_read_spec.
  Local Opaque get_smmu_hyp_base_spec.
  Local Opaque iasm_set_elr_el2_spec.
  Local Opaque iasm_10_spec.
  Local Opaque handle_smmu_write_spec.
  Local Opaque host_dabt_get_as_spec.
  Local Opaque host_dabt_is_write_spec.
  Local Opaque iasm_get_elr_el2_spec.

    Lemma f_handle_host_mmio_correct:
      forall v_index v_hsr st st'
             (Hspec: handle_host_mmio_spec_low v_index v_hsr st = Some st'),
        exec_func SmmuReadWrite_layer code "handle_host_mmio"
                  [VInt v_index; VInt v_hsr]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuOpsAux_handle_host_mmio_CodeProof.

