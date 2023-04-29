Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import CtxtSwitch.Layer.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import GuestHandler.handle_pvops.LowSpec.
Require Import MemoryOps.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section GuestHandler_handle_pvops_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_shadow_ctxt_spec.
  Local Opaque v_grant_stage2_sg_gpa_spec.
  Local Opaque v_revoke_stage2_sg_gpa_spec.

    Lemma f_handle_pvops_correct:
      forall v_vmid v_vcpuid st st' res
             (Hspec: handle_pvops_spec_low v_vmid v_vcpuid st = Some (res, st')),
        exec_func CtxtSwitch_layer code "handle_pvops"
                  [VInt v_vmid; VInt v_vcpuid]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End GuestHandler_handle_pvops_CodeProof.

