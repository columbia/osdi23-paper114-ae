Require Import Accessors.get_shadow_ctxt.LowSpec.
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

Section Accessors_get_shadow_ctxt_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque load_RData.
  Local Opaque get_el2_data_start_spec.

Ltac sstep :=
  autounfold with sem;
   match goal with
   | |- exec _ _ (_ :: nil) _ _ _ _ _ => con_step
   | |- exec _ _ (_ :: _) _ _ _ _ _ => eapply exec_list
   | |- semof _ _ _ _ _ => econstructor; try reflexivity
   | |- exec _ _ nil _ _ _ _ _ => eapply exec_nil
   | |- ?x = ?x -> _ => let T := fresh "T" in
                        intro T; clear T
   | |- ?x <> ?x -> _ => intros; contra
   | |- true = false -> _ => intros; contra
   | |- false = true -> _ => intros; contra
   | |- out_normal = out_return _ -> _ => let T := fresh "T" in
                                          intro T; inversion T
   | |- out_normal = out_break _ -> _ => let T := fresh "T" in
                                         intro T; inversion T
   | |- out_break _ = out_normal -> _ => let T := fresh "T" in
                                         intro T; inversion T
   | |- out_break _ = out_return _ -> _ => let T := fresh "T" in
                                           intro T; inversion T
   | |- out_return _ = out_normal -> _ => let T := fresh "T" in
                                          intro T; inversion T
   | |- out_return _ = out_break _ -> _ => let T := fresh "T" in
                                           intro T; inversion T
   | |- out_normal <> out_return _ -> _ => intros
   | |- out_normal <> out_break _ -> _ => intros
   | |- out_break _ <> out_normal -> _ => intros
   | |- out_break _ <> out_return _ -> _ => intros
   | |- out_return _ <> out_normal -> _ => intros
   | |- out_return _ <> out_break _ -> _ => intros
   | |- out_return _ <> out_break _ -> _ => intros
   | |- _ /\ _ => split
   | _ => idtac
   end; grewrite; simpl_arith; simpl; try_refl; try eassumption.

Ltac vcgen :=
  repeat sstep;
   repeat
    match goal with
    | |- context [ (_ # _ == _) @ ?i ] => try rewrite ZMap.gss
    | |- context [ (_ # _ == _) # ?i == _ ] => try rewrite ZMap.set2
    | |- _ = _ => try (solve [ solve_equality ])
    end.

    Lemma f_get_shadow_ctxt_correct:
      forall v_vmid v_vcpuid v_index st st' res
             (Hspec: get_shadow_ctxt_spec_low v_vmid v_vcpuid v_index st = Some (res, st')),
        exec_func InlineAsms_layer code "get_shadow_ctxt"
                  [VInt v_vmid; VInt v_vcpuid; VInt v_index]
                  st st' (Some (VInt res)).
    Proof.
      intros; simpl_func Hspec; simpl in *;
        eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_get_shadow_ctxt_CodeProof.

