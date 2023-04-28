Require Import Accessors.vmid_to_vm_info.LowSpec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_vmid_to_vm_info_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque __hyp_panic_spec.
  Local Opaque get_el2_data_start_spec.

    Lemma f_vmid_to_vm_info_correct:
      forall v_vmid st st' res
             (Hspec: vmid_to_vm_info_spec_low v_vmid st = Some (res, st')),
        exec_func InlineAsms_layer code "vmid_to_vm_info"
                  [VInt v_vmid]
                  st st' (Some (VPtr res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_vmid_to_vm_info_CodeProof.

