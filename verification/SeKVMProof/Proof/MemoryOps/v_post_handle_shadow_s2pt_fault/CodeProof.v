Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemoryOps.v_post_handle_shadow_s2pt_fault.LowSpec.
Require Import MemoryOpsAux.Spec.
Require Import VMOpsAux.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemoryOps_v_post_handle_shadow_s2pt_fault_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_shadow_ctxt_spec.
  Local Opaque get_int_new_level_spec.
  Local Opaque get_int_new_pte_spec.
  Local Opaque prot_and_map_vm_s2pt_spec.

    Lemma f_v_post_handle_shadow_s2pt_fault_correct:
      forall v_vmid v_vcpuid st st'
             (Hspec: v_post_handle_shadow_s2pt_fault_spec_low v_vmid v_vcpuid st = Some st'),
        exec_func VMOpsAux_layer code "v_post_handle_shadow_s2pt_fault"
                  [VInt v_vmid; VInt v_vcpuid]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End MemoryOps_v_post_handle_shadow_s2pt_fault_CodeProof.

