Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemoryOps.Layer.
Require Import VMOps.set_boot_info.LowSpec.
Require Import VMOpsAux.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOps_set_boot_info_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque set_vm_remap_addr_spec.
  Local Opaque set_vm_load_signature_spec.
  Local Opaque set_vm_load_size_spec.
  Local Opaque alloc_remap_addr_spec.
  Local Opaque acquire_lock_vm_spec.
  Local Opaque set_vm_next_load_idx_spec.
  Local Opaque set_vm_load_addr_spec.
  Local Opaque set_vm_mapped_pages_spec.
  Local Opaque get_vm_next_load_idx_spec.
  Local Opaque release_lock_vm_spec.
  Local Opaque get_vm_state_spec.

    Lemma f_set_boot_info_correct:
      forall v_vmid v_load_addr v_size st st' res
             (Hspec: set_boot_info_spec_low v_vmid v_load_addr v_size st = Some (res, st')),
        exec_func MemoryOps_layer code "set_boot_info"
                  [VInt v_vmid; VInt v_load_addr; VInt v_size]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VMOps_set_boot_info_CodeProof.

