Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import CtxtSwitch.__activate_vm.LowSpec.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import VCPUOps.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section CtxtSwitch___activate_vm_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_pt_vttbr_spec.
  Local Opaque set_vttbr_el2_spec.

    Lemma f___activate_vm_correct:
      forall v_vmid st st'
             (Hspec: __activate_vm_spec_low v_vmid st = Some st'),
        exec_func VCPUOps_layer code "__activate_vm"
                  [VInt v_vmid]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End CtxtSwitch___activate_vm_CodeProof.

