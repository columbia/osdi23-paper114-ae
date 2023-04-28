Require Import Accessors.Layer.
Require Import Accessors.RefineRel.
Require Import Accessors.Spec.
Require Import Accessors.set_shadow_ctxt.LowSpec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_shadow_ctxt_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition set_shadow_ctxt_spec_mid (v_vmid: Z) (v_vcpuid: Z) (v_index: Z) (v_value: Z) (st: RData) : (option RData) :=
    if (v_index <? 41)
    then (
      rely ((((0 - v_index) <= 0) /\ (v_index < 41)));
      (anno (((v_vmid << 2) = (4 * v_vmid)));
      rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
      (anno (((33731152 * 0) = 0));
      (anno (((((1808 * ((4 * v_vmid) + v_vcpuid)) + (8 * v_index)) / 1808) = ((4 * v_vmid) + v_vcpuid)));
      (anno (((v_vmid << 2) = (4 * v_vmid)));
      (anno ((((8 * v_index) + 0) = (8 * v_index)));
      (anno (((0 + (8 * v_index)) = (8 * v_index)));
      (anno (((0 + (33555568 + ((1808 * ((4 * v_vmid) + v_vcpuid)) + (8 * v_index)))) = (33555568 + ((1808 * ((4 * v_vmid) + v_vcpuid)) + (8 * v_index)))));
      (anno ((((33555568 + ((1808 * ((4 * v_vmid) + v_vcpuid)) + (8 * v_index))) - 33555568) = ((1808 * ((4 * v_vmid) + v_vcpuid)) + (8 * v_index))));
      (anno (((((1808 * ((4 * v_vmid) + v_vcpuid)) + (8 * v_index)) mod 1808) = (8 * v_index)));
      (anno ((((8 * v_index) - 0) = (8 * v_index)));
      (anno ((((8 * v_index) / 8) = v_index));
      (Some (st.[priv].[e_shadow_ctxts] :<
        (((st.(priv)).(e_shadow_ctxts)) #
          ((4 * v_vmid) + v_vcpuid) ==
          ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_regs] :<
            (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_regs)) # v_index == v_value)))))))))))))))))
    else (
      if (v_index =? 46)
      then (
        (anno (((v_vmid << 2) = (4 * v_vmid)));
        rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
        (anno (((33731152 * 0) = 0));
        (anno (((368 + 0) = 368));
        (anno ((((1808 * ((v_vmid << 2) + v_vcpuid)) + 368) = (16 * ((113 * ((v_vmid << 2) + v_vcpuid)) + 23))));
        (anno (((33555568 + (16 * ((113 * ((v_vmid << 2) + v_vcpuid)) + 23))) = (16 * (2097223 + (1 * ((113 * ((v_vmid << 2) + v_vcpuid)) + 23))))));
        (anno (((v_vmid << 2) = (4 * v_vmid)));
        (anno (((1 * ((113 * ((4 * v_vmid) + v_vcpuid)) + 23)) = ((113 * ((4 * v_vmid) + v_vcpuid)) + 23)));
        (anno (((2097223 + ((113 * ((4 * v_vmid) + v_vcpuid)) + 23)) = ((2097246 + (452 * v_vmid)) + (113 * v_vcpuid))));
        (anno (((16 * ((2097246 + (452 * v_vmid)) + (113 * v_vcpuid))) = ((33555936 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
        (anno (((0 + ((33555936 + (7232 * v_vmid)) + (1808 * v_vcpuid))) = ((33555936 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
        (anno (((((33555936 + (7232 * v_vmid)) + (1808 * v_vcpuid)) - 33555568) = ((368 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
        (anno (((((368 + (7232 * v_vmid)) + (1808 * v_vcpuid)) / 1808) = (((368 + (7232 * v_vmid)) / 1808) + ((1808 * v_vcpuid) / 1808))));
        (anno (((368 + (7232 * v_vmid)) = (16 * (23 + (452 * v_vmid)))));
        (anno (((16 * (23 + (452 * v_vmid))) = (368 + (7232 * v_vmid))));
        (anno ((((368 + (7232 * v_vmid)) / 1808) = ((368 / 1808) + ((7232 * v_vmid) / 1808))));
        (anno ((((1808 * v_vcpuid) / 1808) = v_vcpuid));
        (anno (((((368 / 1808) + ((7232 * v_vmid) / 1808)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
        (Some (st.[priv].[e_shadow_ctxts] :<
          (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e__flags] :< v_value))))))))))))))))))))))
      else (
        if (v_index =? 41)
        then (
          (anno (((v_vmid << 2) = (4 * v_vmid)));
          rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
          (anno (((33731152 * 0) = 0));
          (anno (((328 + 0) = 328));
          (anno ((((1808 * ((v_vmid << 2) + v_vcpuid)) + 328) = (8 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 41))));
          (anno (((33555568 + (8 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 41))) = (8 * (4194446 + (1 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 41))))));
          (anno (((v_vmid << 2) = (4 * v_vmid)));
          (anno (((1 * ((226 * ((4 * v_vmid) + v_vcpuid)) + 41)) = ((226 * ((4 * v_vmid) + v_vcpuid)) + 41)));
          (anno (((4194446 + ((226 * ((4 * v_vmid) + v_vcpuid)) + 41)) = ((4194487 + (904 * v_vmid)) + (226 * v_vcpuid))));
          (anno (((8 * ((4194487 + (904 * v_vmid)) + (226 * v_vcpuid))) = ((33555896 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
          (anno (((0 + ((33555896 + (7232 * v_vmid)) + (1808 * v_vcpuid))) = ((33555896 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
          (anno (((((33555896 + (7232 * v_vmid)) + (1808 * v_vcpuid)) - 33555568) = ((328 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
          (anno (((((328 + (7232 * v_vmid)) + (1808 * v_vcpuid)) / 1808) = (((328 + (7232 * v_vmid)) / 1808) + ((1808 * v_vcpuid) / 1808))));
          (anno (((328 + (7232 * v_vmid)) = (8 * (41 + (904 * v_vmid)))));
          (anno (((8 * (41 + (904 * v_vmid))) = (328 + (7232 * v_vmid))));
          (anno ((((328 + (7232 * v_vmid)) / 1808) = ((328 / 1808) + ((7232 * v_vmid) / 1808))));
          (anno ((((1808 * v_vcpuid) / 1808) = v_vcpuid));
          (anno (((((328 / 1808) + ((7232 * v_vmid) / 1808)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
          (Some (st.[priv].[e_shadow_ctxts] :<
            (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_far_el2] :< v_value))))))))))))))))))))))
        else (
          if (v_index =? 42)
          then (
            (anno (((v_vmid << 2) = (4 * v_vmid)));
            rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
            (anno (((33731152 * 0) = 0));
            (anno (((336 + 0) = 336));
            (anno ((((1808 * ((v_vmid << 2) + v_vcpuid)) + 336) = (16 * ((113 * ((v_vmid << 2) + v_vcpuid)) + 21))));
            (anno (((33555568 + (16 * ((113 * ((v_vmid << 2) + v_vcpuid)) + 21))) = (16 * (2097223 + (1 * ((113 * ((v_vmid << 2) + v_vcpuid)) + 21))))));
            (anno (((v_vmid << 2) = (4 * v_vmid)));
            (anno (((1 * ((113 * ((4 * v_vmid) + v_vcpuid)) + 21)) = ((113 * ((4 * v_vmid) + v_vcpuid)) + 21)));
            (anno (((2097223 + ((113 * ((4 * v_vmid) + v_vcpuid)) + 21)) = ((2097244 + (452 * v_vmid)) + (113 * v_vcpuid))));
            (anno (((16 * ((2097244 + (452 * v_vmid)) + (113 * v_vcpuid))) = ((33555904 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
            (anno (((0 + ((33555904 + (7232 * v_vmid)) + (1808 * v_vcpuid))) = ((33555904 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
            (anno (((((33555904 + (7232 * v_vmid)) + (1808 * v_vcpuid)) - 33555568) = ((336 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
            (anno (((((336 + (7232 * v_vmid)) + (1808 * v_vcpuid)) / 1808) = (((336 + (7232 * v_vmid)) / 1808) + ((1808 * v_vcpuid) / 1808))));
            (anno (((336 + (7232 * v_vmid)) = (16 * (21 + (452 * v_vmid)))));
            (anno (((16 * (21 + (452 * v_vmid))) = (336 + (7232 * v_vmid))));
            (anno ((((336 + (7232 * v_vmid)) / 1808) = ((336 / 1808) + ((7232 * v_vmid) / 1808))));
            (anno ((((1808 * v_vcpuid) / 1808) = v_vcpuid));
            (anno (((((336 / 1808) + ((7232 * v_vmid) / 1808)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
            (Some (st.[priv].[e_shadow_ctxts] :<
              (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_hpfar] :< v_value))))))))))))))))))))))
          else (
            if (v_index =? 43)
            then (
              (anno (((v_vmid << 2) = (4 * v_vmid)));
              rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
              (anno (((33731152 * 0) = 0));
              (anno (((344 + 0) = 344));
              (anno ((((1808 * ((v_vmid << 2) + v_vcpuid)) + 344) = (8 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 43))));
              (anno (((33555568 + (8 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 43))) = (8 * (4194446 + (1 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 43))))));
              (anno (((v_vmid << 2) = (4 * v_vmid)));
              (anno (((1 * ((226 * ((4 * v_vmid) + v_vcpuid)) + 43)) = ((226 * ((4 * v_vmid) + v_vcpuid)) + 43)));
              (anno (((4194446 + ((226 * ((4 * v_vmid) + v_vcpuid)) + 43)) = ((4194489 + (904 * v_vmid)) + (226 * v_vcpuid))));
              (anno (((8 * ((4194489 + (904 * v_vmid)) + (226 * v_vcpuid))) = ((33555912 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
              (anno (((0 + ((33555912 + (7232 * v_vmid)) + (1808 * v_vcpuid))) = ((33555912 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
              (anno (((((33555912 + (7232 * v_vmid)) + (1808 * v_vcpuid)) - 33555568) = ((344 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
              (anno (((((344 + (7232 * v_vmid)) + (1808 * v_vcpuid)) / 1808) = (((344 + (7232 * v_vmid)) / 1808) + ((1808 * v_vcpuid) / 1808))));
              (anno (((344 + (7232 * v_vmid)) = (8 * (43 + (904 * v_vmid)))));
              (anno (((8 * (43 + (904 * v_vmid))) = (344 + (7232 * v_vmid))));
              (anno ((((344 + (7232 * v_vmid)) / 1808) = ((344 / 1808) + ((7232 * v_vmid) / 1808))));
              (anno ((((1808 * v_vcpuid) / 1808) = v_vcpuid));
              (anno (((((344 / 1808) + ((7232 * v_vmid) / 1808)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
              (Some (st.[priv].[e_shadow_ctxts] :<
                (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_hcr_el2] :< v_value))))))))))))))))))))))
            else (
              if (v_index =? 44)
              then (
                (anno (((v_vmid << 2) = (4 * v_vmid)));
                rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
                (anno (((33731152 * 0) = 0));
                (anno (((352 + 0) = 352));
                (anno ((((1808 * ((v_vmid << 2) + v_vcpuid)) + 352) = (16 * ((113 * ((v_vmid << 2) + v_vcpuid)) + 22))));
                (anno (((33555568 + (16 * ((113 * ((v_vmid << 2) + v_vcpuid)) + 22))) = (16 * (2097223 + (1 * ((113 * ((v_vmid << 2) + v_vcpuid)) + 22))))));
                (anno (((v_vmid << 2) = (4 * v_vmid)));
                (anno (((1 * ((113 * ((4 * v_vmid) + v_vcpuid)) + 22)) = ((113 * ((4 * v_vmid) + v_vcpuid)) + 22)));
                (anno (((2097223 + ((113 * ((4 * v_vmid) + v_vcpuid)) + 22)) = ((2097245 + (452 * v_vmid)) + (113 * v_vcpuid))));
                (anno (((16 * ((2097245 + (452 * v_vmid)) + (113 * v_vcpuid))) = ((33555920 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
                (anno (((0 + ((33555920 + (7232 * v_vmid)) + (1808 * v_vcpuid))) = ((33555920 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
                (anno (((((33555920 + (7232 * v_vmid)) + (1808 * v_vcpuid)) - 33555568) = ((352 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
                (anno (((((352 + (7232 * v_vmid)) + (1808 * v_vcpuid)) / 1808) = (((352 + (7232 * v_vmid)) / 1808) + ((1808 * v_vcpuid) / 1808))));
                (anno (((352 + (7232 * v_vmid)) = (32 * (11 + (226 * v_vmid)))));
                (anno (((32 * (11 + (226 * v_vmid))) = (352 + (7232 * v_vmid))));
                (anno ((((352 + (7232 * v_vmid)) / 1808) = ((352 / 1808) + ((7232 * v_vmid) / 1808))));
                (anno ((((1808 * v_vcpuid) / 1808) = v_vcpuid));
                (anno (((((352 / 1808) + ((7232 * v_vmid) / 1808)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
                (Some (st.[priv].[e_shadow_ctxts] :<
                  (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_ec] :< v_value))))))))))))))))))))))
              else (
                if (v_index =? 45)
                then (
                  (anno (((v_vmid << 2) = (4 * v_vmid)));
                  rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
                  (anno (((33731152 * 0) = 0));
                  (anno (((360 + 0) = 360));
                  (anno ((((1808 * ((v_vmid << 2) + v_vcpuid)) + 360) = (8 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 45))));
                  (anno (((33555568 + (8 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 45))) = (8 * (4194446 + (1 * ((226 * ((v_vmid << 2) + v_vcpuid)) + 45))))));
                  (anno (((v_vmid << 2) = (4 * v_vmid)));
                  (anno (((1 * ((226 * ((4 * v_vmid) + v_vcpuid)) + 45)) = ((226 * ((4 * v_vmid) + v_vcpuid)) + 45)));
                  (anno (((4194446 + ((226 * ((4 * v_vmid) + v_vcpuid)) + 45)) = ((4194491 + (904 * v_vmid)) + (226 * v_vcpuid))));
                  (anno (((8 * ((4194491 + (904 * v_vmid)) + (226 * v_vcpuid))) = ((33555928 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
                  (anno (((0 + ((33555928 + (7232 * v_vmid)) + (1808 * v_vcpuid))) = ((33555928 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
                  (anno (((((33555928 + (7232 * v_vmid)) + (1808 * v_vcpuid)) - 33555568) = ((360 + (7232 * v_vmid)) + (1808 * v_vcpuid))));
                  (anno (((((360 + (7232 * v_vmid)) + (1808 * v_vcpuid)) / 1808) = (((360 + (7232 * v_vmid)) / 1808) + ((1808 * v_vcpuid) / 1808))));
                  (anno (((360 + (7232 * v_vmid)) = (8 * (45 + (904 * v_vmid)))));
                  (anno (((8 * (45 + (904 * v_vmid))) = (360 + (7232 * v_vmid))));
                  (anno ((((360 + (7232 * v_vmid)) / 1808) = ((360 / 1808) + ((7232 * v_vmid) / 1808))));
                  (anno ((((1808 * v_vcpuid) / 1808) = v_vcpuid));
                  (anno (((((360 / 1808) + ((7232 * v_vmid) / 1808)) + v_vcpuid) = ((4 * v_vmid) + v_vcpuid)));
                  (Some (st.[priv].[e_shadow_ctxts] :<
                    (((st.(priv)).(e_shadow_ctxts)) # ((4 * v_vmid) + v_vcpuid) == ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_dirty] :< v_value))))))))))))))))))))))
                else (
                  rely ((((0 - (v_index + (- 47))) <= 0) /\ ((v_index + (- 47)) < 111)));
                  (anno (((v_vmid << 2) = (4 * v_vmid)));
                  rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
                  (anno (((33731152 * 0) = 0));
                  (anno (((((1808 * ((4 * v_vmid) + v_vcpuid)) + (8 * v_index)) / 1808) = ((4 * v_vmid) + v_vcpuid)));
                  (anno (((v_vmid << 2) = (4 * v_vmid)));
                  (anno ((((8 * (v_index + (- 47))) + 0) = (8 * (v_index + (- 47)))));
                  (anno (((0 + (8 * (v_index + (- 47)))) = (8 * (v_index + (- 47)))));
                  (anno (((376 + (8 * (v_index + (- 47)))) = (8 * v_index)));
                  (anno (((0 + (33555568 + ((1808 * ((4 * v_vmid) + v_vcpuid)) + (8 * v_index)))) = (33555568 + ((1808 * ((4 * v_vmid) + v_vcpuid)) + (8 * v_index)))));
                  (anno ((((33555568 + ((1808 * ((4 * v_vmid) + v_vcpuid)) + (8 * v_index))) - 33555568) = ((1808 * ((4 * v_vmid) + v_vcpuid)) + (8 * v_index))));
                  (anno (((((1808 * ((4 * v_vmid) + v_vcpuid)) + (8 * v_index)) mod 1808) = (8 * v_index)));
                  (anno ((((8 * v_index) - 376) = (8 * ((1 * v_index) - 47))));
                  (anno (((1 * v_index) = v_index));
                  (anno ((((8 * (v_index - 47)) / 8) = (v_index - 47)));
                  (Some (st.[priv].[e_shadow_ctxts] :<
                    (((st.(priv)).(e_shadow_ctxts)) #
                      ((4 * v_vmid) + v_vcpuid) ==
                      ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).[e_sys_regs] :<
                        (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_sys_regs)) # (v_index - 47) == v_value))))))))))))))))))))))))).

  Hint Unfold set_shadow_ctxt_spec_mid: spec.

  Lemma f_set_shadow_ctxt_refine_mid:
    forall v_vmid v_vcpuid v_index v_value lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_shadow_ctxt_spec_mid v_vmid v_vcpuid v_index v_value hst = Some hst'),
      exists lst', set_shadow_ctxt_spec_low v_vmid v_vcpuid v_index v_value lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_shadow_ctxt_refine_high:
    forall v_vmid v_vcpuid v_index v_value lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_shadow_ctxt_spec v_vmid v_vcpuid v_index v_value hst = Some hst'),
      exists lst', set_shadow_ctxt_spec_mid v_vmid v_vcpuid v_index v_value lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_set_shadow_ctxt_refine:
    forall v_vmid v_vcpuid v_index v_value lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: set_shadow_ctxt_spec v_vmid v_vcpuid v_index v_value hst = Some hst'),
      exists lst', set_shadow_ctxt_spec_low v_vmid v_vcpuid v_index v_value lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_set_shadow_ctxt_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_set_shadow_ctxt_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End Accessors_set_shadow_ctxt_RefProof.

