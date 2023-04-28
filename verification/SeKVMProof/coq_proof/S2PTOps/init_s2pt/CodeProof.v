Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import Locks.Spec.
Require Import S2PTOps.init_s2pt.LowSpec.
Require Import S2PTTreeOps.Layer.
Require Import S2PTTreeOps.Spec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section S2PTOps_init_s2pt_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque acquire_lock_pt_spec.
  Local Opaque release_lock_pt_spec.
  Local Opaque init_npt_spec.

    Lemma f_init_s2pt_correct:
      forall v_vmid st st'
             (Hspec: init_s2pt_spec_low v_vmid st = Some st'),
        exec_func S2PTTreeOps_layer code "init_s2pt"
                  [VInt v_vmid]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End S2PTOps_init_s2pt_CodeProof.

