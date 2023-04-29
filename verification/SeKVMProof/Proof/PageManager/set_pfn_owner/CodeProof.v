Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import PageIndex.Layer.
Require Import PageIndex.Spec.
Require Import PageManager.set_pfn_owner.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section PageManager_set_pfn_owner_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_s2_page_index_spec.
  Local Opaque set_s2_page_vmid_spec.

    Lemma f_set_pfn_owner_correct:
      forall v_pfn v_vmid st st'
             (Hspec: set_pfn_owner_spec_low v_pfn v_vmid st = Some st'),
        exec_func PageIndex_layer code "set_pfn_owner"
                  [VInt v_pfn; VInt v_vmid]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End PageManager_set_pfn_owner_CodeProof.

