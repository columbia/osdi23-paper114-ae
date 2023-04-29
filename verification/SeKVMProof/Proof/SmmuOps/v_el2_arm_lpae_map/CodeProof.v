Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuOps.v_el2_arm_lpae_map.LowSpec.
Require Import SmmuOpsAux.Layer.
Require Import SmmuOpsAux.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuOps_v_el2_arm_lpae_map_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque smmu_assign_page_spec.
  Local Opaque smmu_init_pte_spec.
  Local Opaque smmu_map_page_spec.

    Lemma f_v_el2_arm_lpae_map_correct:
      forall v_iova v_paddr v_prot v_cbndx v_index st st'
             (Hspec: v_el2_arm_lpae_map_spec_low v_iova v_paddr v_prot v_cbndx v_index st = Some st'),
        exec_func SmmuOpsAux_layer code "v_el2_arm_lpae_map"
                  [VInt v_iova; VInt v_paddr; VInt v_prot; VInt v_cbndx; VInt v_index]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuOps_v_el2_arm_lpae_map_CodeProof.

