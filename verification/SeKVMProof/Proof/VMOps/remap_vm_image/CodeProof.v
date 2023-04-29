Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemoryOps.Layer.
Require Import S2PTOps.Spec.
Require Import VMOps.remap_vm_image.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VMOps_remap_vm_image_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_vm_mapped_pages_spec.
  Local Opaque get_vm_remap_addr_spec.
  Local Opaque acquire_lock_vm_spec.
  Local Opaque v_panic_spec.
  Local Opaque set_vm_mapped_pages_spec.
  Local Opaque get_vm_next_load_idx_spec.
  Local Opaque mmap_s2pt_spec.
  Local Opaque release_lock_vm_spec.
  Local Opaque get_vm_load_size_spec.
  Local Opaque get_vm_state_spec.

    Lemma f_remap_vm_image_correct:
      forall v_vmid v_pfn v_load_idx st st'
             (Hspec: remap_vm_image_spec_low v_vmid v_pfn v_load_idx st = Some st'),
        exec_func MemoryOps_layer code "remap_vm_image"
                  [VInt v_vmid; VInt v_pfn; VInt v_load_idx]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End VMOps_remap_vm_image_CodeProof.

