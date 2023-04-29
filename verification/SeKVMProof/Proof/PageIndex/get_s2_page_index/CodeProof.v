Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemRegion.Layer.
Require Import MemRegion.Spec.
Require Import PageIndex.get_s2_page_index.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section PageIndex_get_s2_page_index_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque mem_region_search_spec.
  Local Opaque get_mem_region_base_spec.
  Local Opaque get_mem_region_index_spec.

    Lemma f_get_s2_page_index_correct:
      forall v_addr st st' res
             (Hspec: get_s2_page_index_spec_low v_addr st = Some (res, st')),
        exec_func MemRegion_layer code "get_s2_page_index"
                  [VInt v_addr]
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End PageIndex_get_s2_page_index_CodeProof.

