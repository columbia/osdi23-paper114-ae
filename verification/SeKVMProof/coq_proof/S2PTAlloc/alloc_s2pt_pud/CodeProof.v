Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Layer.
Require Import S2PTAlloc.alloc_s2pt_pud.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTAlloc_alloc_s2pt_pud_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque set_pud_next_spec.
  Local Opaque get_pud_next_spec.
  Local Opaque v_panic_spec.
  Local Opaque pud_pool_end_spec.

    Lemma f_alloc_s2pt_pud_correct:
      forall v_vmid st st' res
             (Hspec: alloc_s2pt_pud_spec_low v_vmid st = Some (res, st')),
        exec_func Locks_layer code "alloc_s2pt_pud"
                  [VInt v_vmid]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End S2PTAlloc_alloc_s2pt_pud_CodeProof.

