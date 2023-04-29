Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTAlloc.Layer.
Require Import S2PTAlloc.Spec.
Require Import S2PTWalk.walk_pud.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTWalk_walk_pud_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque pt_store_spec.
  Local Opaque pt_load_spec.
  Local Opaque alloc_s2pt_pud_spec.

    Lemma f_walk_pud_correct:
      forall v_vmid v_pgd v_addr v_alloc st st' res
             (Hspec: walk_pud_spec_low v_vmid v_pgd v_addr v_alloc st = Some (res, st')),
        exec_func S2PTAlloc_layer code "walk_pud"
                  [VInt v_vmid; VInt v_pgd; VInt v_addr; VInt v_alloc]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End S2PTWalk_walk_pud_CodeProof.

