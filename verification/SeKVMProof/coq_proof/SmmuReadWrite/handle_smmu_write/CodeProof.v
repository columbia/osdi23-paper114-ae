Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Spec.
Require Import SmmuAccess.Layer.
Require Import SmmuAccess.Spec.
Require Import SmmuReadWrite.handle_smmu_write.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuReadWrite_handle_smmu_write_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque iasm_get_far_el2_spec.
  Local Opaque handle_smmu_cb_access_spec.
  Local Opaque smmu_get_cbndx_spec.
  Local Opaque v_panic_spec.
  Local Opaque handle_smmu_global_access_spec.
  Local Opaque get_smmu_cfg_hw_ttbr_spec.
  Local Opaque get_smmu_size_spec.
  Local Opaque __handle_smmu_write_spec.
  Local Opaque host_get_mmio_data_spec.

    Lemma f_handle_smmu_write_correct:
      forall v_hsr v_fault_ipa v_len v_index st st'
             (Hspec: handle_smmu_write_spec_low v_hsr v_fault_ipa v_len v_index st = Some st'),
        exec_func SmmuAccess_layer code "handle_smmu_write"
                  [VInt v_hsr; VInt v_fault_ipa; VInt v_len; VInt v_index]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuReadWrite_handle_smmu_write_CodeProof.

