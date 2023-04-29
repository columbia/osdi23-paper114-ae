Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemManager.map_pfn_vm.LowSpec.
Require Import PageManager.Layer.
Require Import S2PTOps.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemManager_map_pfn_vm_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque __flush_dcache_area_spec.
  Local Opaque mmap_s2pt_spec.
  Local Opaque iasm_6_isb_spec.

    Lemma f_map_pfn_vm_correct:
      forall v_vmid v_addr v_pte v_level st st'
             (Hspec: map_pfn_vm_spec_low v_vmid v_addr v_pte v_level st = Some st'),
        exec_func PageManager_layer code "map_pfn_vm"
                  [VInt v_vmid; VInt v_addr; VInt v_pte; VInt v_level]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End MemManager_map_pfn_vm_CodeProof.

