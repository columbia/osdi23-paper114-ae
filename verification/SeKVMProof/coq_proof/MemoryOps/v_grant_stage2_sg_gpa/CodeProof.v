Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemManager.Spec.
Require Import MemoryOps.Spec.
Require Import MemoryOps.v_grant_stage2_sg_gpa.LowSpec.
Require Import S2PTOps.Spec.
Require Import VMOpsAux.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemoryOps_v_grant_stage2_sg_gpa_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque grant_vm_page_spec.
  Local Opaque walk_s2pt_spec.

    Lemma f_v_grant_stage2_sg_gpa_correct:
      forall v_vmid v_addr v_size st st'
             (Hspec: v_grant_stage2_sg_gpa_spec_low v_vmid v_addr v_size st = Some st'),
        exec_func VMOpsAux_layer code "v_grant_stage2_sg_gpa"
                  [VInt v_vmid; VInt v_addr; VInt v_size]
                  st st' None.
    Proof.
      intros; simpl_func Hspec; simpl in *; try solve[try_solve];
        try solve[ eapply exec_func_call; try reflexivity; vcgen].
      remember (fbody Code.f_v_grant_stage2_sg_gpa) as fcode eqn:Hc; simpl in Hc;
        match type of Hc with
        | context[ILoop ?body] => remember body as LoopBody eqn:Cloop; clear Hc
        end.
      match goal with
      | [H: v_grant_stage2_sg_gpa_loop_low ?n ?_a0 ?_a1 ?_a2 ?_st =
          Some (?_a0', ?_a1', ?_a2', ?_st') |- _] =>
          rename H into Hfinal;
          assert(HLoop: forall te,
                  gets "v_addr_addr_044" te = Some (VInt _a0) ->
                  gets "v_len_143" te = Some (VInt _a1) ->
                  gets "v_vmid" te = Some (VInt _a2) ->
                  (forall s, inlist s ("v_vmid"::"v_addr"::"v_size"::"v_len_143"::"v_addr_addr_044"::"v_cmp_not42"::"v_len_0"::"v_add"::"v_shr"::"v_tobool1_not"::"v_0"::"v_tobool_not"::"v_and"::nil) = false -> gets s te = None) ->
                  exec VMOpsAux_layer code (ILoop LoopBody :: nil) te _st
                      (sets "v_addr_addr_044" (VInt _a0')
                      (sets "v_len_143" (VInt _a1')
                      (sets "v_vmid" (VInt _a2')
                          te))) out_normal _st')
      end.
      {
        intros te ? ? ? te_all.
        unfold v_grant_stage2_sg_gpa_loop_rank in *.
        match goal with
        | [H: v_grant_stage2_sg_gpa_loop_low (z_to_nat ?n) ?_a0 ?_a1 ?_a2 ?_st =
                Some (?_a0', ?_a1', ?_a2', ?_st') |-
            exec _ _ (_ :: nil) ?te ?st ?te' ?out ?st'] =>
            remember n as W0 eqn:HW0;
            set(P := fun t s => t = te /\ s = st);
            set(Q := fun t s =>  (forall s' v, gets s' te' = Some v -> gets s' t = Some v) /\ s = st');
            set(R := fun (_: temp_env) (_: RData) (_: option value) => False);
            set(Inv := fun t s w => exists _a0'' _a1'' _a2'' _st'',
                        v_grant_stage2_sg_gpa_loop_low (z_to_nat (W0 - w)) _a0 _a1 _a2 _st = Some (_a0'', _a1'', _a2'', _st'')
                        /\ (v_grant_stage2_sg_gpa_loop_rank _a0'' _a1'' _a2'') = w
                        /\ 0 < w <= W0
                        /\ s = _st''
                        /\ (forall p v, gets p
                                        (sets "v_addr_addr_044" (VInt _a0'')
                                        (sets "v_len_143" (VInt _a1'')
                                        (sets "v_vmid" (VInt _a2'')
                                                    te))) = Some v -> gets p t = Some v));
            assert(loop_succ: forall W, Z.of_nat W <= W0 -> exists _a0'' _a1'' _a2'' _st'',
                    v_grant_stage2_sg_gpa_loop_low (z_to_nat (W0 - Z.of_nat W)) _a0 _a1 _a2 _st =
                    Some (_a0'', _a1'', _a2'', _st''))
        end.
        { induction W. rewrite Z.sub_0_r. repeat frewrite. intros. repeat eexists; reflexivity.
        intros. erewrite loop_ind_sub1 in IHW; try lia.
        rewrite Nat2Z.inj_succ, succ_plus_1 in *.
        assert(Hcc: Z.of_nat W <= W0) by lia.
        exploit IHW. lia. unfold z_to_nat. intros (? & ? & ? & ? & Hnext).
        simpl in Hnext. repeat simpl_hyp Hnext; repeat eexists. }

        assert(HLoop: Loop VMOpsAux_layer code LoopBody P Q R).
        {
          apply mkLoop with (W:=Z) (lt:=fun z1 z2 => (1 <= z2 /\ z1 < z2)) (I:=Inv).
          - apply Zwf_well_founded.
          - unfold P, Inv. intros ? ? (CC1 & CC2).
            exists W0. replace (W0 - W0) with 0 by lia. simpl.
            subst; repeat eexists; try solve[unfold v_grant_stage2_sg_gpa_loop_rank in *; simpl; try_solve].
            intros ? ? Hte'; repeat simpl_hyp Hte'; inv Hte';
            try match goal with | [H: (?p =? ?t)%string = true |- _] => apply String.eqb_eq in H end;
            subst; try assumption; try reflexivity.
          - intros te0 st0 W I. unfold Inv in I.
            destruct I as (? & ? & ? & ? & Hnow & Hid & ? & ? & Hte').
            unfold v_grant_stage2_sg_gpa_loop_rank in *.
            assert(W1: W >= 1) by lia.
            assert(Hlx: Z.of_nat (Z.to_nat (W-1)) <= W0) by (rewrite Z2Nat.id; lia).
            apply loop_succ in Hlx. rewrite Z2Nat.id in Hlx; try lia.
            destruct Hlx as (? & ? & ? & ? & Hnext). pose proof Hnext as D.
            rewrite loop_nat_sub1 in D; try lia. unfold z_to_nat in *.
            simpl in D; rewrite Hnow in D; autounfold with sem in D.
            destruct_spec D; try solve[lia]; solve_loop_body te te_all Hte' Hnext Hfinal Inv Q.
        }
        match goal with
        | [H: v_grant_stage2_sg_gpa_loop_low ?n ?_a0 ?_a1 ?_a2 ?_st =
            Some (?_a0', ?_a1', ?_a2', ?_st') |- _] =>
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

      remember (fbody Code.f_v_grant_stage2_sg_gpa) as fcode eqn:Hc; simpl in Hc;
        match type of Hc with
        | context[ILoop ?body] => remember body as LoopBody eqn:Cloop; clear Hc
        end.
      match goal with
      | [H: v_grant_stage2_sg_gpa_loop_low ?n ?_a0 ?_a1 ?_a2 ?_st =
          Some (?_a0', ?_a1', ?_a2', ?_st') |- _] =>
          rename H into Hfinal;
          assert(HLoop: forall te,
                  gets "v_addr_addr_044" te = Some (VInt _a0) ->
                  gets "v_len_143" te = Some (VInt _a1) ->
                  gets "v_vmid" te = Some (VInt _a2) ->
                  (forall s, inlist s ("v_vmid"::"v_addr"::"v_size"::"v_len_143"::"v_addr_addr_044"::"v_cmp_not42"::"v_len_0"::"v_add"::"v_shr"::"v_tobool1_not"::"v_0"::"v_tobool_not"::"v_and"::nil) = false -> gets s te = None) ->
                  exec VMOpsAux_layer code (ILoop LoopBody :: nil) te _st
                      (sets "v_addr_addr_044" (VInt _a0')
                      (sets "v_len_143" (VInt _a1')
                      (sets "v_vmid" (VInt _a2')
                          te))) out_normal _st')
      end.
      {
        intros te ? ? ? te_all.
        unfold v_grant_stage2_sg_gpa_loop_rank in *.
        match goal with
        | [H: v_grant_stage2_sg_gpa_loop_low (z_to_nat ?n) ?_a0 ?_a1 ?_a2 ?_st =
                Some (?_a0', ?_a1', ?_a2', ?_st') |-
            exec _ _ (_ :: nil) ?te ?st ?te' ?out ?st'] =>
            remember n as W0 eqn:HW0;
            set(P := fun t s => t = te /\ s = st);
            set(Q := fun t s =>  (forall s' v, gets s' te' = Some v -> gets s' t = Some v) /\ s = st');
            set(R := fun (_: temp_env) (_: RData) (_: option value) => False);
            set(Inv := fun t s w => exists _a0'' _a1'' _a2'' _st'',
                        v_grant_stage2_sg_gpa_loop_low (z_to_nat (W0 - w)) _a0 _a1 _a2 _st = Some (_a0'', _a1'', _a2'', _st'')
                        /\ (v_grant_stage2_sg_gpa_loop_rank _a0'' _a1'' _a2'') = w
                        /\ 0 < w <= W0
                        /\ s = _st''
                        /\ (forall p v, gets p
                                        (sets "v_addr_addr_044" (VInt _a0'')
                                        (sets "v_len_143" (VInt _a1'')
                                        (sets "v_vmid" (VInt _a2'')
                                                    te))) = Some v -> gets p t = Some v));
            assert(loop_succ: forall W, Z.of_nat W <= W0 -> exists _a0'' _a1'' _a2'' _st'',
                    v_grant_stage2_sg_gpa_loop_low (z_to_nat (W0 - Z.of_nat W)) _a0 _a1 _a2 _st =
                    Some (_a0'', _a1'', _a2'', _st''))
        end.
        { induction W. rewrite Z.sub_0_r. repeat frewrite. intros. repeat eexists; reflexivity.
        intros. erewrite loop_ind_sub1 in IHW; try lia.
        rewrite Nat2Z.inj_succ, succ_plus_1 in *.
        assert(Hcc: Z.of_nat W <= W0) by lia.
        exploit IHW. lia. unfold z_to_nat. intros (? & ? & ? & ? & Hnext).
        simpl in Hnext. repeat simpl_hyp Hnext; repeat eexists. }

        assert(HLoop: Loop VMOpsAux_layer code LoopBody P Q R).
        {
          apply mkLoop with (W:=Z) (lt:=fun z1 z2 => (1 <= z2 /\ z1 < z2)) (I:=Inv).
          - apply Zwf_well_founded.
          - unfold P, Inv. intros ? ? (CC1 & CC2).
            exists W0. replace (W0 - W0) with 0 by lia. simpl.
            subst; repeat eexists; try solve[unfold v_grant_stage2_sg_gpa_loop_rank in *; simpl; try_solve].
            intros ? ? Hte'; repeat simpl_hyp Hte'; inv Hte';
            try match goal with | [H: (?p =? ?t)%string = true |- _] => apply String.eqb_eq in H end;
            subst; try assumption; try reflexivity.
          - intros te0 st0 W I. unfold Inv in I.
            destruct I as (? & ? & ? & ? & Hnow & Hid & ? & ? & Hte').
            unfold v_grant_stage2_sg_gpa_loop_rank in *.
            assert(W1: W >= 1) by lia.
            assert(Hlx: Z.of_nat (Z.to_nat (W-1)) <= W0) by (rewrite Z2Nat.id; lia).
            apply loop_succ in Hlx. rewrite Z2Nat.id in Hlx; try lia.
            destruct Hlx as (? & ? & ? & ? & Hnext). pose proof Hnext as D.
            rewrite loop_nat_sub1 in D; try lia. unfold z_to_nat in *.
            simpl in D; rewrite Hnow in D; autounfold with sem in D.
            destruct_spec D; try solve[lia]; solve_loop_body te te_all Hte' Hnext Hfinal Inv Q.
        }
        match goal with
        | [H: v_grant_stage2_sg_gpa_loop_low ?n ?_a0 ?_a1 ?_a2 ?_st =
            Some (?_a0', ?_a1', ?_a2', ?_st') |- _] =>
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

      remember (fbody Code.f_v_grant_stage2_sg_gpa) as fcode eqn:Hc; simpl in Hc;
        match type of Hc with
        | context[ILoop ?body] => remember body as LoopBody eqn:Cloop; clear Hc
        end.
      match goal with
      | [H: v_grant_stage2_sg_gpa_loop_low ?n ?_a0 ?_a1 ?_a2 ?_st =
          Some (?_a0', ?_a1', ?_a2', ?_st') |- _] =>
          rename H into Hfinal;
          assert(HLoop: forall te,
                  gets "v_addr_addr_044" te = Some (VInt _a0) ->
                  gets "v_len_143" te = Some (VInt _a1) ->
                  gets "v_vmid" te = Some (VInt _a2) ->
                  (forall s, inlist s ("v_vmid"::"v_addr"::"v_size"::"v_len_143"::"v_addr_addr_044"::"v_cmp_not42"::"v_len_0"::"v_add"::"v_shr"::"v_tobool1_not"::"v_0"::"v_tobool_not"::"v_and"::nil) = false -> gets s te = None) ->
                  exec VMOpsAux_layer code (ILoop LoopBody :: nil) te _st
                      (sets "v_addr_addr_044" (VInt _a0')
                      (sets "v_len_143" (VInt _a1')
                      (sets "v_vmid" (VInt _a2')
                          te))) out_normal _st')
      end.
      {
        intros te ? ? ? te_all.
        unfold v_grant_stage2_sg_gpa_loop_rank in *.
        match goal with
        | [H: v_grant_stage2_sg_gpa_loop_low (z_to_nat ?n) ?_a0 ?_a1 ?_a2 ?_st =
                Some (?_a0', ?_a1', ?_a2', ?_st') |-
            exec _ _ (_ :: nil) ?te ?st ?te' ?out ?st'] =>
            remember n as W0 eqn:HW0;
            set(P := fun t s => t = te /\ s = st);
            set(Q := fun t s =>  (forall s' v, gets s' te' = Some v -> gets s' t = Some v) /\ s = st');
            set(R := fun (_: temp_env) (_: RData) (_: option value) => False);
            set(Inv := fun t s w => exists _a0'' _a1'' _a2'' _st'',
                        v_grant_stage2_sg_gpa_loop_low (z_to_nat (W0 - w)) _a0 _a1 _a2 _st = Some (_a0'', _a1'', _a2'', _st'')
                        /\ (v_grant_stage2_sg_gpa_loop_rank _a0'' _a1'' _a2'') = w
                        /\ 0 < w <= W0
                        /\ s = _st''
                        /\ (forall p v, gets p
                                        (sets "v_addr_addr_044" (VInt _a0'')
                                        (sets "v_len_143" (VInt _a1'')
                                        (sets "v_vmid" (VInt _a2'')
                                                    te))) = Some v -> gets p t = Some v));
            assert(loop_succ: forall W, Z.of_nat W <= W0 -> exists _a0'' _a1'' _a2'' _st'',
                    v_grant_stage2_sg_gpa_loop_low (z_to_nat (W0 - Z.of_nat W)) _a0 _a1 _a2 _st =
                    Some (_a0'', _a1'', _a2'', _st''))
        end.
        { induction W. rewrite Z.sub_0_r. repeat frewrite. intros. repeat eexists; reflexivity.
        intros. erewrite loop_ind_sub1 in IHW; try lia.
        rewrite Nat2Z.inj_succ, succ_plus_1 in *.
        assert(Hcc: Z.of_nat W <= W0) by lia.
        exploit IHW. lia. unfold z_to_nat. intros (? & ? & ? & ? & Hnext).
        simpl in Hnext. repeat simpl_hyp Hnext; repeat eexists. }

        assert(HLoop: Loop VMOpsAux_layer code LoopBody P Q R).
        {
          apply mkLoop with (W:=Z) (lt:=fun z1 z2 => (1 <= z2 /\ z1 < z2)) (I:=Inv).
          - apply Zwf_well_founded.
          - unfold P, Inv. intros ? ? (CC1 & CC2).
            exists W0. replace (W0 - W0) with 0 by lia. simpl.
            subst; repeat eexists; try solve[unfold v_grant_stage2_sg_gpa_loop_rank in *; simpl; try_solve].
            intros ? ? Hte'; repeat simpl_hyp Hte'; inv Hte';
            try match goal with | [H: (?p =? ?t)%string = true |- _] => apply String.eqb_eq in H end;
            subst; try assumption; try reflexivity.
          - intros te0 st0 W I. unfold Inv in I.
            destruct I as (? & ? & ? & ? & Hnow & Hid & ? & ? & Hte').
            unfold v_grant_stage2_sg_gpa_loop_rank in *.
            assert(W1: W >= 1) by lia.
            assert(Hlx: Z.of_nat (Z.to_nat (W-1)) <= W0) by (rewrite Z2Nat.id; lia).
            apply loop_succ in Hlx. rewrite Z2Nat.id in Hlx; try lia.
            destruct Hlx as (? & ? & ? & ? & Hnext). pose proof Hnext as D.
            rewrite loop_nat_sub1 in D; try lia. unfold z_to_nat in *.
            simpl in D; rewrite Hnow in D; autounfold with sem in D.
            destruct_spec D; try solve[lia]; solve_loop_body te te_all Hte' Hnext Hfinal Inv Q.
        }
        match goal with
        | [H: v_grant_stage2_sg_gpa_loop_low ?n ?_a0 ?_a1 ?_a2 ?_st =
            Some (?_a0', ?_a1', ?_a2', ?_st') |- _] =>
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

End MemoryOps_v_grant_stage2_sg_gpa_CodeProof.

