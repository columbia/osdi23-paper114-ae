Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuMemOps.Spec.
Require Import SmmuMemOps.is_smmu_range.LowSpec.
Require Import SmmuMemOpsAux.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section SmmuMemOps_is_smmu_range_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_smmu_num_spec.
  Local Opaque get_smmu_size_spec.
  Local Opaque get_smmu_base_spec.

    Lemma f_is_smmu_range_correct:
      forall v_addr st st' res
             (Hspec: is_smmu_range_spec_low v_addr st = Some (res, st')),
        exec_func SmmuMemOpsAux_layer code "is_smmu_range"
                  [VInt v_addr]
                  st st' (Some (VInt res)).
    Proof.
      intros; simpl_func Hspec; simpl in *; try solve[try_solve];
        try solve[ eapply exec_func_call; try reflexivity; vcgen].
      remember (fbody Code.f_is_smmu_range) as fcode eqn:Hc; simpl in Hc;
        match type of Hc with
        | context[ILoop ?body] => remember body as LoopBody eqn:Cloop; clear Hc
        end.
      match goal with
      | [H: is_smmu_range_loop_low ?n ?_a0 ?_a1 ?_a2 ?_a3 ?_a4 ?_st =
          Some (?_a0', ?_a1', ?_a2', ?_a3', ?_a4', ?_st') |- _] =>
          rename H into Hfinal;
          assert(HLoop: forall te,
                  gets "v_addr" te = Some (VInt _a0) ->
                  gets "v_indvars_iv" te = Some (VInt _a1) ->
                  gets "v_res_018" te = Some (VInt _a2) ->
                  gets "v_wide_trip_count" te = Some (VInt _a4) ->
                  (forall s, inlist s ("v_addr"::"v_res_018"::"v_indvars_iv"::"v_wide_trip_count"::"v_cmp17_not"::"v_call"::nil) = false -> gets s te = None) ->
                  exec SmmuMemOpsAux_layer code (ILoop LoopBody :: nil) te _st
                      (sets "v_addr" (VInt _a0')
                      (sets "v_indvars_iv" (VInt _a1')
                      (sets "v_res_018" (VInt _a2')
                      (sets "v_res_0_lcssa" (VInt _a3')
                      (sets "v_wide_trip_count" (VInt _a4')
                          te))))) out_normal _st')
      end.
      {
        intros te ? ? ? ? te_all.
        unfold is_smmu_range_loop_rank in *.
        match goal with
        | [H: is_smmu_range_loop_low (z_to_nat ?n) ?_a0 ?_a1 ?_a2 ?_a3 ?_a4 ?_st =
                Some (?_a0', ?_a1', ?_a2', ?_a3', ?_a4', ?_st') |-
            exec _ _ (_ :: nil) ?te ?st ?te' ?out ?st'] =>
            remember n as W0 eqn:HW0;
            set(P := fun t s => t = te /\ s = st);
            set(Q := fun t s =>  (forall s' v, gets s' te' = Some v -> gets s' t = Some v) /\ s = st');
            set(R := fun (_: temp_env) (_: RData) (_: option value) => False);
            set(Inv := fun t s w => exists _a0'' _a1'' _a2'' _a3'' _a4'' _st'',
                        is_smmu_range_loop_low (z_to_nat (W0 - w)) _a0 _a1 _a2 _a3 _a4 _st = Some (_a0'', _a1'', _a2'', _a3'', _a4'', _st'')
                        /\ (is_smmu_range_loop_rank _a0'' _a1'' _a2'' _a4'') = w
                        /\ 0 < w <= W0
                        /\ s = _st''
                        /\ (forall p v, gets p
                                        (sets "v_addr" (VInt _a0'')
                                        (sets "v_indvars_iv" (VInt _a1'')
                                        (sets "v_res_018" (VInt _a2'')
                                        (sets "v_wide_trip_count" (VInt _a4'')
                                                    te)))) = Some v -> gets p t = Some v));
            assert(loop_succ: forall W, Z.of_nat W <= W0 -> exists _a0'' _a1'' _a2'' _a3'' _a4'' _st'',
                    is_smmu_range_loop_low (z_to_nat (W0 - Z.of_nat W)) _a0 _a1 _a2 _a3 _a4 _st =
                    Some (_a0'', _a1'', _a2'', _a3'', _a4'', _st''))
        end.
        { induction W. rewrite Z.sub_0_r. repeat frewrite. intros. repeat eexists; reflexivity.
        intros. erewrite loop_ind_sub1 in IHW; try lia.
        rewrite Nat2Z.inj_succ, succ_plus_1 in *.
        assert(Hcc: Z.of_nat W <= W0) by lia.
        exploit IHW. lia. unfold z_to_nat. intros (? & ? & ? & ? & ? & ? & Hnext).
        simpl in Hnext. repeat simpl_hyp Hnext; repeat eexists. }

        assert(HLoop: Loop SmmuMemOpsAux_layer code LoopBody P Q R).
        {
          apply mkLoop with (W:=Z) (lt:=fun z1 z2 => (1 <= z2 /\ z1 < z2)) (I:=Inv).
          - apply Zwf_well_founded.
          - unfold P, Inv. intros ? ? (CC1 & CC2).
            exists W0. replace (W0 - W0) with 0 by lia. simpl.
            subst; repeat eexists; try solve[unfold is_smmu_range_loop_rank in *; simpl; try_solve].
            intros ? ? Hte'; repeat simpl_hyp Hte'; inv Hte';
            try match goal with | [H: (?p =? ?t)%string = true |- _] => apply String.eqb_eq in H end;
            subst; try assumption; try reflexivity.
          - intros te0 st0 W I. unfold Inv in I.
            destruct I as (? & ? & ? & ? & ? & ? & Hnow & Hid & ? & ? & Hte').
            unfold is_smmu_range_loop_rank in *.
            assert(W1: W >= 1) by lia.
            assert(Hlx: Z.of_nat (Z.to_nat (W-1)) <= W0) by (rewrite Z2Nat.id; lia).
            apply loop_succ in Hlx. rewrite Z2Nat.id in Hlx; try lia.
            destruct Hlx as (? & ? & ? & ? & ? & ? & Hnext). pose proof Hnext as D.
            rewrite loop_nat_sub1 in D; try lia. unfold z_to_nat in *.
            simpl in D; rewrite Hnow in D; autounfold with sem in D.
            destruct_spec D; try solve[lia]; solve_loop_body te te_all Hte' Hnext Hfinal Inv Q.
        }
        match goal with
        | [H: is_smmu_range_loop_low ?n ?_a0 ?_a1 ?_a2 ?_a3 ?_a4 ?_st =
            Some (?_a0', ?_a1', ?_a2', ?_a3', ?_a4', ?_st') |- _] =>
          assert(Pre: P te _st) by (split; auto);
          pose proof (LoopTermination _ _ _ _ _ _ HLoop te _st Pre) as LoopProof
        end.
        destruct LoopProof as (out & te0 & st0 & Hexec & Hout).
        destruct Hout as [(? & ? & Hout)|(? & Hout)]; [inv Hout|unfold Q in Hout; destruct Hout as (Hte0 & Hst0)].
        subst. eapply exec_drop_tempvar. eapply Hte0. eassumption.
      }
      subst.
      eapply exec_func_call; try reflexivity; vcgen;
        try eapply HLoop; try reflexivity; simpl; intros;
        repeat match goal with
        | H: context[if (?s =? ?v)%string then _ else _] |- _ =>
            let Hs := fresh "Hs" in
            let Hss := fresh "Hss" in
            destruct (s =? v)%string eqn:Hs; simpl in *; try solve[inv H]
        end; contra; vcgen.
    Qed.

End SmmuMemOps_is_smmu_range_CodeProof.

