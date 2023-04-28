Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import S2PTOps.clear_pfn_host.LowSpec.
Require Import S2PTTreeOps.Layer.
Require Import S2PTTreeOps.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTOps_clear_pfn_host_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque acquire_lock_pt_spec.
  Local Opaque set_npt_spec.
  Local Opaque release_lock_pt_spec.
  Local Opaque walk_npt_spec.
  Local Opaque kvm_tlb_flush_vmid_ipa_host_spec.

    Lemma f_clear_pfn_host_correct:
      forall v_pfn st st'
             (Hspec: clear_pfn_host_spec_low v_pfn st = Some st'),
        exec_func S2PTTreeOps_layer code "clear_pfn_host"
                  [VInt v_pfn]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End S2PTOps_clear_pfn_host_CodeProof.

