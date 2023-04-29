Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import MemoryOps.Spec.
Require Import SmmuMemOps.map_io.LowSpec.
Require Import SmmuMemOpsAux.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuMemOps_map_io_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque __kvm_phys_addr_ioremap_spec.
  Local Opaque release_lock_vm_spec.
  Local Opaque acquire_lock_vm_spec.
  Local Opaque get_vm_state_spec.

    Lemma f_map_io_correct:
      forall v_vmid v_gpa v_pa st st'
             (Hspec: map_io_spec_low v_vmid v_gpa v_pa st = Some st'),
        exec_func SmmuMemOpsAux_layer code "map_io"
                  [VInt v_vmid; VInt v_gpa; VInt v_pa]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuMemOps_map_io_CodeProof.

