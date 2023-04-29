Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemoryOps.map_page_host.LowSpec.
Require Import PageManager.Spec.
Require Import S2PTOps.Spec.
Require Import VMOpsAux.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemoryOps_map_page_host_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_pfn_count_spec.
  Local Opaque acquire_lock_s2page_spec.
  Local Opaque release_lock_s2page_spec.
  Local Opaque get_pfn_owner_spec.
  Local Opaque v_panic_spec.
  Local Opaque mmap_s2pt_spec.

    Lemma f_map_page_host_correct:
      forall v_addr st st'
             (Hspec: map_page_host_spec_low v_addr st = Some st'),
        exec_func VMOpsAux_layer code "map_page_host"
                  [VInt v_addr]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End MemoryOps_map_page_host_CodeProof.

