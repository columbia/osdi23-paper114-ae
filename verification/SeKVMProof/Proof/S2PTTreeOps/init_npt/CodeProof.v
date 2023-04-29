Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTTreeOps.init_npt.LowSpec.
Require Import S2PTWalk.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTTreeOps_init_npt_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque set_pt_vttbr_spec.
  Local Opaque get_pt_vttbr_spec.
  Local Opaque pool_start_spec.

    Lemma f_init_npt_correct:
      forall v_vmid st st'
             (Hspec: init_npt_spec_low v_vmid st = Some st'),
        exec_func S2PTWalk_layer code "init_npt"
                  [VInt v_vmid]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End S2PTTreeOps_init_npt_CodeProof.

