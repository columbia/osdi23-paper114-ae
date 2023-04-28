Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemManager.grant_vm_page.LowSpec.
Require Import PageManager.Layer.
Require Import PageManager.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemManager_grant_vm_page_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_pfn_count_spec.
  Local Opaque acquire_lock_s2page_spec.
  Local Opaque release_lock_s2page_spec.
  Local Opaque set_pfn_count_spec.
  Local Opaque get_pfn_owner_spec.

    Lemma f_grant_vm_page_correct:
      forall v_vmid v_pfn st st'
             (Hspec: grant_vm_page_spec_low v_vmid v_pfn st = Some st'),
        exec_func PageManager_layer code "grant_vm_page"
                  [VInt v_vmid; VInt v_pfn]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End MemManager_grant_vm_page_CodeProof.

