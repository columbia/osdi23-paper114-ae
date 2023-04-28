Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import GuestExit.fixup_guest_exit.LowSpec.
Require Import GuestHandler.Layer.
Require Import GuestHandler.Spec.
Require Import InlineAsms.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section GuestExit_fixup_guest_exit_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque __populate_fault_info_spec.
  Local Opaque iasm_set_elr_el2_spec.
  Local Opaque set_vcpu_esr_el2_spec.
  Local Opaque set_shadow_ctxt_esr_spec.
  Local Opaque handle_pvops_spec.
  Local Opaque iasm_get_elr_el2_spec.
  Local Opaque get_esr_el2_spec.

    Lemma f_fixup_guest_exit_correct:
      forall v_vmid v_vcpuid v_exit_code st st' res
             (Hspec: fixup_guest_exit_spec_low v_vmid v_vcpuid v_exit_code st = Some (res, st')),
        exec_func GuestHandler_layer code "fixup_guest_exit"
                  [VInt v_vmid; VInt v_vcpuid; VInt v_exit_code]
                  st st' (Some (VBool res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End GuestExit_fixup_guest_exit_CodeProof.

