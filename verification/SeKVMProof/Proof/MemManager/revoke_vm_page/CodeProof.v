Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemManager.revoke_vm_page.LowSpec.
Require Import PageManager.Layer.
Require Import PageManager.Spec.
Require Import S2PTOps.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemManager_revoke_vm_page_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_pfn_count_spec.
  Local Opaque acquire_lock_s2page_spec.
  Local Opaque release_lock_s2page_spec.
  Local Opaque set_pfn_count_spec.
  Local Opaque clear_pfn_host_spec.
  Local Opaque get_pfn_owner_spec.

    Lemma f_revoke_vm_page_correct:
      forall v_vmid v_pfn st st'
             (Hspec: revoke_vm_page_spec_low v_vmid v_pfn st = Some st'),
        exec_func PageManager_layer code "revoke_vm_page"
                  [VInt v_vmid; VInt v_pfn]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End MemManager_revoke_vm_page_CodeProof.

