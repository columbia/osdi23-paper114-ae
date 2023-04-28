Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import SmmuOps.Layer.
Require Import VCPUOpsAux.Layer.
Require Import VCPUOpsAux.RefineRel.
Require Import VCPUOpsAux.Spec.
Require Import VCPUOpsAux.sync_dirty_to_shadow.LowSpec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUOpsAux_sync_dirty_to_shadow_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint sync_dirty_to_shadow_loop_mid (_N_: nat) (__return__: bool) (v_call: Z) (v_i_016: Z) (v_vcpuid: Z) (v_vmid: Z) (st: RData) : (option (bool * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (__return__, v_call, v_i_016, v_vcpuid, v_vmid, st))
    | (S _N__0) =>
      match ((sync_dirty_to_shadow_loop_mid _N__0 __return__ v_call v_i_016 v_vcpuid v_vmid st)) with
      | (Some (__return___0, v_call_0, v_i_17, v_vcpuid_0, v_vmid_0, st_0)) =>
        if (((1 << v_i_17) & v_call_0) =? 0)
        then (
          if ((v_i_17 + 1) =? 31)
          then (Some (true, v_call_0, v_i_17, v_vcpuid_0, v_vmid_0, st_0))
          else (Some (__return___0, v_call_0, (v_i_17 + 1), v_vcpuid_0, v_vmid_0, st_0)))
        else (
          rely ((((0 - v_i_17) <= 0) /\ (v_i_17 < 31)));
          rely ((((0 - ((4 * v_vmid_0) + v_vcpuid_0)) <= 0) /\ (((4 * v_vmid_0) + v_vcpuid_0) < 72)));
          (anno (((50 + (4528 * v_vmid_0)) = (2 * (25 + (2264 * v_vmid_0)))));
          (anno ((((2 * (25 + (2264 * v_vmid_0))) + (1132 * v_vcpuid_0)) = (2 * ((1 * (25 + (2264 * v_vmid_0))) + (566 * v_vcpuid_0)))));
          if ((v_i_17 + 1) =? 31)
          then (
            (anno (((50 + (4528 * v_vmid_0)) = (2 * (25 + (2264 * v_vmid_0)))));
            (anno ((((2 * (25 + (2264 * v_vmid_0))) + (1132 * v_vcpuid_0)) = (2 * ((1 * (25 + (2264 * v_vmid_0))) + (566 * v_vcpuid_0)))));
            (anno (((1 * (25 + (2264 * v_vmid_0))) = (25 + (2264 * v_vmid_0))));
            (anno (((2 * ((25 + (2264 * v_vmid_0)) + (566 * v_vcpuid_0))) = ((50 + (4528 * v_vmid_0)) + (1132 * v_vcpuid_0))));
            (Some (
              true  ,
              v_call_0  ,
              v_i_17  ,
              v_vcpuid_0  ,
              v_vmid_0  ,
              (st_0.[priv].[e_shadow_ctxts] :<
                (((st_0.(priv)).(e_shadow_ctxts)) #
                  ((4 * v_vmid_0) + v_vcpuid_0) ==
                  ((((st_0.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid_0) + v_vcpuid_0)).[e_regs] :<
                    (((((st_0.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid_0) + v_vcpuid_0)).(e_regs)) #
                      v_i_17 ==
                      (((((((((st_0.(priv)).(e_vcpu_pool)) @ ((8 * (((50 + (4528 * v_vmid_0)) + (1132 * v_vcpuid_0)) + v_i_17)) / 9056)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) @ v_i_17)))))
            )))))))
          else (
            (anno (((50 + (4528 * v_vmid_0)) = (2 * (25 + (2264 * v_vmid_0)))));
            (anno ((((2 * (25 + (2264 * v_vmid_0))) + (1132 * v_vcpuid_0)) = (2 * ((1 * (25 + (2264 * v_vmid_0))) + (566 * v_vcpuid_0)))));
            (anno (((1 * (25 + (2264 * v_vmid_0))) = (25 + (2264 * v_vmid_0))));
            (anno (((2 * ((25 + (2264 * v_vmid_0)) + (566 * v_vcpuid_0))) = ((50 + (4528 * v_vmid_0)) + (1132 * v_vcpuid_0))));
            (Some (
              __return___0  ,
              v_call_0  ,
              (v_i_17 + 1)  ,
              v_vcpuid_0  ,
              v_vmid_0  ,
              (st_0.[priv].[e_shadow_ctxts] :<
                (((st_0.(priv)).(e_shadow_ctxts)) #
                  ((4 * v_vmid_0) + v_vcpuid_0) ==
                  ((((st_0.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid_0) + v_vcpuid_0)).[e_regs] :<
                    (((((st_0.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid_0) + v_vcpuid_0)).(e_regs)) #
                      v_i_17 ==
                      (((((((((st_0.(priv)).(e_vcpu_pool)) @ ((8 * (((50 + (4528 * v_vmid_0)) + (1132 * v_vcpuid_0)) + v_i_17)) / 9056)).(e___arch)).(e_ctxt)).(e_gp_regs)).(e___regs)).(e__regs)) @ v_i_17)))))
            ))))))))))
      | None => None
      end
    end.

  Hint Unfold sync_dirty_to_shadow_loop_mid: spec.

  Definition sync_dirty_to_shadow_spec_mid (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    (anno (((31 - 0) = 31));
    match ((sync_dirty_to_shadow_loop_mid (z_to_nat 31) false ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_dirty)) 0 v_vcpuid v_vmid st)) with
    | (Some (__return__, v_call_0, v_i_17, v_vcpuid_0, v_vmid_0, st_1)) => (Some st_1)
    | None => None
    end).

  Hint Unfold sync_dirty_to_shadow_spec_mid: spec.

  Lemma f_sync_dirty_to_shadow_loop_refine_mid:
    forall _N_ __return__ __return__' v_call v_call' v_i_016 v_i_016' v_vcpuid v_vcpuid' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: sync_dirty_to_shadow_loop_mid _N_ __return__ v_call v_i_016 v_vcpuid v_vmid hst = Some (__return__', v_call', v_i_016', v_vcpuid', v_vmid', hst')),
      exists lst', sync_dirty_to_shadow_loop_low _N_ __return__ v_call v_i_016 v_vcpuid v_vmid lst = Some (__return__', v_call', v_i_016', v_vcpuid', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_sync_dirty_to_shadow_refine_mid:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: sync_dirty_to_shadow_spec_mid v_vmid v_vcpuid hst = Some hst'),
      exists lst', sync_dirty_to_shadow_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_sync_dirty_to_shadow_loop_refine_high:
    forall _N_ __return__ __return__' v_call v_call' v_i_016 v_i_016' v_vcpuid v_vcpuid' v_vmid v_vmid' lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: sync_dirty_to_shadow_loop _N_ __return__ v_call v_i_016 v_vcpuid v_vmid hst = Some (__return__', v_call', v_i_016', v_vcpuid', v_vmid', hst')),
      exists lst', sync_dirty_to_shadow_loop_mid _N_ __return__ v_call v_i_016 v_vcpuid v_vmid lst = Some (__return__', v_call', v_i_016', v_vcpuid', v_vmid', lst') /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_sync_dirty_to_shadow_refine_high:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: sync_dirty_to_shadow_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', sync_dirty_to_shadow_spec_mid v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_sync_dirty_to_shadow_refine:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: sync_dirty_to_shadow_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', sync_dirty_to_shadow_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_sync_dirty_to_shadow_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_sync_dirty_to_shadow_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VCPUOpsAux_sync_dirty_to_shadow_RefProof.

