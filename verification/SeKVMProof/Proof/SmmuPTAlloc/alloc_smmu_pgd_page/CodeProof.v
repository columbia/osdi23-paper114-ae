Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTOps.Layer.
Require Import SmmuPTAlloc.alloc_smmu_pgd_page.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuPTAlloc_alloc_smmu_pgd_page_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque set_smmu_pgd_next_spec.
  Local Opaque get_smmu_pgd_next_spec.
  Local Opaque smmu_pgd_end_spec.
  Local Opaque v_panic_spec.

    Lemma f_alloc_smmu_pgd_page_correct:
      forall st st' res
             (Hspec: alloc_smmu_pgd_page_spec_low st = Some (res, st')),
        exec_func S2PTOps_layer code "alloc_smmu_pgd_page"
                  []
                  st st' (Some (VInt res)).
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End SmmuPTAlloc_alloc_smmu_pgd_page_CodeProof.

