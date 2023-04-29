Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import VCPUOpsAux.Layer.
Require Import VCPUPrep.Layer.
Require Import VCPUPrep.RefineRel.
Require Import VCPUPrep.Spec.
Require Import VCPUPrep.prep_hvc.LowSpec.
Require Import VMOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUPrep_prep_hvc_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition prep_hvc_spec_mid (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    (anno (((0 - 0) = 0));
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (anno (((0 - 0) = 0));
    (anno (((50 + (4528 * v_vmid)) = (2 * (25 + (2264 * v_vmid)))));
    (anno ((((2 * (25 + (2264 * v_vmid))) + (1132 * v_vcpuid)) = (2 * ((1 * (25 + (2264 * v_vmid))) + (566 * v_vcpuid)))));
    if (((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0) & 4294967295) =? 3288334339)
    then (
      (anno (((0 - 1) = (- 1)));
      (anno (((0 - 2) = (- 2)));
      (anno ((((2 * ((1 * (25 + (2264 * v_vmid))) + (566 * v_vcpuid))) + 2) = (2 * ((1 * ((1 * (25 + (2264 * v_vmid))) + (566 * v_vcpuid))) + 1))));
      (anno (((0 - 3) = (- 3)));
      (anno (((50 + (4528 * v_vmid)) = (2 * (25 + (2264 * v_vmid)))));
      (anno ((((2 * (25 + (2264 * v_vmid))) + (1132 * v_vcpuid)) = (2 * ((1 * (25 + (2264 * v_vmid))) + (566 * v_vcpuid)))));
      (anno (((((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + 0) = ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
      (anno (((8 * ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))) = ((400 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
      (anno (((((400 + (36224 * v_vmid)) + (9056 * v_vcpuid)) / 9056) = (((400 + (36224 * v_vmid)) / 9056) + ((9056 * v_vcpuid) / 9056))));
      (anno (((((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + 1) = ((51 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
      (anno (((8 * ((51 + (4528 * v_vmid)) + (1132 * v_vcpuid))) = ((408 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
      (anno (((((408 + (36224 * v_vmid)) + (9056 * v_vcpuid)) / 9056) = (((408 + (36224 * v_vmid)) / 9056) + ((9056 * v_vcpuid) / 9056))));
      (anno (((1 * ((25 + (2264 * v_vmid)) + (566 * v_vcpuid))) = ((25 + (2264 * v_vmid)) + (566 * v_vcpuid))));
      (anno (((((25 + (2264 * v_vmid)) + (566 * v_vcpuid)) + 1) = ((26 + (2264 * v_vmid)) + (566 * v_vcpuid))));
      (anno (((2 * ((26 + (2264 * v_vmid)) + (566 * v_vcpuid))) = ((52 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
      (anno (((8 * ((52 + (4528 * v_vmid)) + (1132 * v_vcpuid))) = ((416 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
      (anno (((((416 + (36224 * v_vmid)) + (9056 * v_vcpuid)) / 9056) = (((416 + (36224 * v_vmid)) / 9056) + ((9056 * v_vcpuid) / 9056))));
      (anno (((1 * (25 + (2264 * v_vmid))) = (25 + (2264 * v_vmid))));
      (anno (((2 * ((25 + (2264 * v_vmid)) + (566 * v_vcpuid))) = ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
      (anno (((((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + 3) = ((53 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
      (anno (((8 * ((53 + (4528 * v_vmid)) + (1132 * v_vcpuid))) = ((424 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
      (anno (((((424 + (36224 * v_vmid)) + (9056 * v_vcpuid)) / 9056) = (((424 + (36224 * v_vmid)) / 9056) + ((9056 * v_vcpuid) / 9056))));
      (anno (((400 + (36224 * v_vmid)) = (16 * (25 + (2264 * v_vmid)))));
      (anno (((408 + (36224 * v_vmid)) = (8 * (51 + (4528 * v_vmid)))));
      (anno (((416 + (36224 * v_vmid)) = (32 * (13 + (1132 * v_vmid)))));
      (anno (((424 + (36224 * v_vmid)) = (8 * (53 + (4528 * v_vmid)))));
      (anno (((16 * (25 + (2264 * v_vmid))) = (400 + (36224 * v_vmid))));
      (anno ((((400 + (36224 * v_vmid)) / 9056) = ((400 / 9056) + ((36224 * v_vmid) / 9056))));
      (anno (((((400 / 9056) + ((36224 * v_vmid) / 9056)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
      (anno (((8 * (51 + (4528 * v_vmid))) = (408 + (36224 * v_vmid))));
      (anno ((((408 + (36224 * v_vmid)) / 9056) = ((408 / 9056) + ((36224 * v_vmid) / 9056))));
      (anno (((((408 / 9056) + ((36224 * v_vmid) / 9056)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
      (anno (((32 * (13 + (1132 * v_vmid))) = (416 + (36224 * v_vmid))));
      (anno ((((416 + (36224 * v_vmid)) / 9056) = ((416 / 9056) + ((36224 * v_vmid) / 9056))));
      (anno (((((416 / 9056) + ((36224 * v_vmid) / 9056)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
      (anno (((8 * (53 + (4528 * v_vmid))) = (424 + (36224 * v_vmid))));
      (anno ((((424 + (36224 * v_vmid)) / 9056) = ((424 / 9056) + ((36224 * v_vmid) / 9056))));
      (anno ((((9056 * v_vcpuid) / 9056) = v_vcpuid));
      (anno (((((424 / 9056) + ((36224 * v_vmid) / 9056)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
      (Some ((st.[priv].[e_shadow_ctxts] :<
        (((st.(priv)).(e_shadow_ctxts)) #
          ((4 * v_vmid) + v_vcpuid) ==
          ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' 1)))).[priv].[e_vcpu_pool] :<
        (((st.(priv)).(e_vcpu_pool)) #
          ((4 * v_vmid) + v_vcpuid) ==
          ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e__regs] :<
            ((((((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) #
              0 ==
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0)) #
              1 ==
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 1)) #
              2 ==
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 2)) #
              3 ==
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 3))))))))))))))))))))))))))))))))))))))))))))))
    else (
      if (((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0) & 3221225471) =? 2214592516)
      then (
        (anno (((0 - 1) = (- 1)));
        (anno (((0 - 2) = (- 2)));
        (anno (((50 + (4528 * v_vmid)) = (2 * (25 + (2264 * v_vmid)))));
        (anno ((((2 * (25 + (2264 * v_vmid))) + (1132 * v_vcpuid)) = (2 * ((1 * (25 + (2264 * v_vmid))) + (566 * v_vcpuid)))));
        (anno ((((2 * ((1 * (25 + (2264 * v_vmid))) + (566 * v_vcpuid))) + 2) = (2 * ((1 * ((1 * (25 + (2264 * v_vmid))) + (566 * v_vcpuid))) + 1))));
        (anno (((((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + 0) = ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
        (anno (((8 * ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))) = ((400 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
        (anno (((((400 + (36224 * v_vmid)) + (9056 * v_vcpuid)) / 9056) = (((400 + (36224 * v_vmid)) / 9056) + ((9056 * v_vcpuid) / 9056))));
        (anno (((2 * ((25 + (2264 * v_vmid)) + (566 * v_vcpuid))) = ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
        (anno (((((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + 1) = ((51 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
        (anno (((8 * ((51 + (4528 * v_vmid)) + (1132 * v_vcpuid))) = ((408 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
        (anno (((((408 + (36224 * v_vmid)) + (9056 * v_vcpuid)) / 9056) = (((408 + (36224 * v_vmid)) / 9056) + ((9056 * v_vcpuid) / 9056))));
        (anno (((1 * (25 + (2264 * v_vmid))) = (25 + (2264 * v_vmid))));
        (anno (((1 * ((25 + (2264 * v_vmid)) + (566 * v_vcpuid))) = ((25 + (2264 * v_vmid)) + (566 * v_vcpuid))));
        (anno (((((25 + (2264 * v_vmid)) + (566 * v_vcpuid)) + 1) = ((26 + (2264 * v_vmid)) + (566 * v_vcpuid))));
        (anno (((2 * ((26 + (2264 * v_vmid)) + (566 * v_vcpuid))) = ((52 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
        (anno (((8 * ((52 + (4528 * v_vmid)) + (1132 * v_vcpuid))) = ((416 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
        (anno (((((416 + (36224 * v_vmid)) + (9056 * v_vcpuid)) / 9056) = (((416 + (36224 * v_vmid)) / 9056) + ((9056 * v_vcpuid) / 9056))));
        (anno (((400 + (36224 * v_vmid)) = (16 * (25 + (2264 * v_vmid)))));
        (anno (((408 + (36224 * v_vmid)) = (8 * (51 + (4528 * v_vmid)))));
        (anno (((416 + (36224 * v_vmid)) = (32 * (13 + (1132 * v_vmid)))));
        (anno (((16 * (25 + (2264 * v_vmid))) = (400 + (36224 * v_vmid))));
        (anno ((((400 + (36224 * v_vmid)) / 9056) = ((400 / 9056) + ((36224 * v_vmid) / 9056))));
        (anno (((((400 / 9056) + ((36224 * v_vmid) / 9056)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
        (anno (((8 * (51 + (4528 * v_vmid))) = (408 + (36224 * v_vmid))));
        (anno ((((408 + (36224 * v_vmid)) / 9056) = ((408 / 9056) + ((36224 * v_vmid) / 9056))));
        (anno (((((408 / 9056) + ((36224 * v_vmid) / 9056)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
        (anno (((32 * (13 + (1132 * v_vmid))) = (416 + (36224 * v_vmid))));
        (anno ((((416 + (36224 * v_vmid)) / 9056) = ((416 / 9056) + ((36224 * v_vmid) / 9056))));
        (anno ((((9056 * v_vcpuid) / 9056) = v_vcpuid));
        (anno (((((416 / 9056) + ((36224 * v_vmid) / 9056)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
        (Some ((st.[priv].[e_shadow_ctxts] :<
          (((st.(priv)).(e_shadow_ctxts)) #
            ((4 * v_vmid) + v_vcpuid) ==
            ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' 1)))).[priv].[e_vcpu_pool] :<
          (((st.(priv)).(e_vcpu_pool)) #
            ((4 * v_vmid) + v_vcpuid) ==
            ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e__regs] :<
              (((((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) #
                0 ==
                (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0)) #
                1 ==
                (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 1)) #
                2 ==
                (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 2))))))))))))))))))))))))))))))))))))))
      else (
        if (((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0) & 4294967295) =? 2214592520)
        then (
          rely ((((0 - v_vmid) <= 0) /\ (v_vmid < 19)));
          (anno (((1 * (25 + (2264 * v_vmid))) = (25 + (2264 * v_vmid))));
          (anno (((2 * ((25 + (2264 * v_vmid)) + (566 * v_vcpuid))) = ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
          (anno (((((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + 0) = ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
          (anno (((8 * ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))) = ((400 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
          (anno (((((400 + (36224 * v_vmid)) + (9056 * v_vcpuid)) / 9056) = (((400 + (36224 * v_vmid)) / 9056) + ((9056 * v_vcpuid) / 9056))));
          (anno (((400 + (36224 * v_vmid)) = (16 * (25 + (2264 * v_vmid)))));
          (anno (((16 * (25 + (2264 * v_vmid))) = (400 + (36224 * v_vmid))));
          (anno ((((400 + (36224 * v_vmid)) / 9056) = ((400 / 9056) + ((36224 * v_vmid) / 9056))));
          (anno ((((9056 * v_vcpuid) / 9056) = v_vcpuid));
          (anno (((((400 / 9056) + ((36224 * v_vmid) / 9056)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
          when st_5 == (
              (query_oracle
                ((st.[priv].[e_shadow_ctxts] :<
                  (((st.(priv)).(e_shadow_ctxts)) #
                    ((4 * v_vmid) + v_vcpuid) ==
                    ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) |' 1)))).[priv].[e_vcpu_pool] :<
                  (((st.(priv)).(e_vcpu_pool)) #
                    ((4 * v_vmid) + v_vcpuid) ==
                    ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e__regs] :<
                      (((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) #
                        0 ==
                        (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0)))))));
          rely (((((st_5.(shared)).(e_locks)) @ (5 + v_vmid)) = None));
          (Some (((st_5.[log] :<
            ((EVT CPU_ID (REL (5 + v_vmid) (VMINFO_STATE ((((st_5.(shared)).(e_vminfos)) @ v_vmid).[e_powered_on] :< 0)))) :: ((EVT CPU_ID (ACQ (5 + v_vmid))) :: (st_5.(log))))).[shared].[e_locks] :<
            (((st_5.(shared)).(e_locks)) # (5 + v_vmid) == None)).[shared].[e_vminfos] :<
            (((st_5.(shared)).(e_vminfos)) # v_vmid == ((((st_5.(shared)).(e_vminfos)) @ v_vmid).[e_powered_on] :< 0)))))))))))))))
        else (
          (anno (((1 * (25 + (2264 * v_vmid))) = (25 + (2264 * v_vmid))));
          (anno (((2 * ((25 + (2264 * v_vmid)) + (566 * v_vcpuid))) = ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
          (anno (((((50 + (4528 * v_vmid)) + (1132 * v_vcpuid)) + 0) = ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))));
          (anno (((8 * ((50 + (4528 * v_vmid)) + (1132 * v_vcpuid))) = ((400 + (36224 * v_vmid)) + (9056 * v_vcpuid))));
          (anno (((((400 + (36224 * v_vmid)) + (9056 * v_vcpuid)) / 9056) = (((400 + (36224 * v_vmid)) / 9056) + ((9056 * v_vcpuid) / 9056))));
          (anno (((400 + (36224 * v_vmid)) = (16 * (25 + (2264 * v_vmid)))));
          (anno (((16 * (25 + (2264 * v_vmid))) = (400 + (36224 * v_vmid))));
          (anno ((((400 + (36224 * v_vmid)) / 9056) = ((400 / 9056) + ((36224 * v_vmid) / 9056))));
          (anno ((((9056 * v_vcpuid) / 9056) = v_vcpuid));
          (anno (((((400 / 9056) + ((36224 * v_vmid) / 9056)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
          (Some (st.[priv].[e_vcpu_pool] :<
            (((st.(priv)).(e_vcpu_pool)) #
              ((4 * v_vmid) + v_vcpuid) ==
              ((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e__regs] :<
                (((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) #
                  0 ==
                  (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) @ 0))))))))))))))))))))))).

  Hint Unfold prep_hvc_spec_mid: spec.

  Lemma f_prep_hvc_refine_mid:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prep_hvc_spec_mid v_vmid v_vcpuid hst = Some hst'),
      exists lst', prep_hvc_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_prep_hvc_refine_high:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prep_hvc_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', prep_hvc_spec_mid v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent prep_hvc_spec.
      unfold prep_hvc_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_prep_hvc_refine:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: prep_hvc_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', prep_hvc_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent prep_hvc_spec.
      unfold prep_hvc_spec.
      intros; inv Hrel.
      eapply f_prep_hvc_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_prep_hvc_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VCPUPrep_prep_hvc_RefProof.

