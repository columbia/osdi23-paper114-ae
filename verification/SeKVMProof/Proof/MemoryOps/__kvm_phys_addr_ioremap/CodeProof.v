Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemoryOps.__kvm_phys_addr_ioremap.LowSpec.
Require Import PageManager.Spec.
Require Import S2PTOps.Spec.
Require Import VMOpsAux.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemoryOps___kvm_phys_addr_ioremap_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_pfn_owner_spec.
  Local Opaque release_lock_s2page_spec.
  Local Opaque mmap_s2pt_spec.
  Local Opaque acquire_lock_s2page_spec.

    Lemma f___kvm_phys_addr_ioremap_correct:
      forall v_vmid v_gpa v_pa st st'
             (Hspec: __kvm_phys_addr_ioremap_spec_low v_vmid v_gpa v_pa st = Some st'),
        exec_func VMOpsAux_layer code "__kvm_phys_addr_ioremap"
                  [VInt v_vmid; VInt v_gpa; VInt v_pa]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End MemoryOps___kvm_phys_addr_ioremap_CodeProof.

