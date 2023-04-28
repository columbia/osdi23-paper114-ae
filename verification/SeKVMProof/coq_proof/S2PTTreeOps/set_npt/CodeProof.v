Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTTreeOps.set_npt.LowSpec.
Require Import S2PTWalk.Layer.
Require Import S2PTWalk.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTTreeOps_set_npt_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_pt_vttbr_spec.
  Local Opaque walk_pmd_spec.
  Local Opaque walk_pud_spec.
  Local Opaque v_set_pmd_spec.
  Local Opaque v_set_pte_spec.
  Local Opaque v_panic_spec.
  Local Opaque walk_pgd_spec.

    Lemma f_set_npt_correct:
      forall v_vmid v_addr v_level v_pte st st'
             (Hspec: set_npt_spec_low v_vmid v_addr v_level v_pte st = Some st'),
        exec_func S2PTWalk_layer code "set_npt"
                  [VInt v_vmid; VInt v_addr; VInt v_level; VInt v_pte]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End S2PTTreeOps_set_npt_CodeProof.

