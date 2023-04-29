Require Import Accessors.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuOps.Layer.
Require Import VCPUOpsAux.Spec.
Require Import VCPUOpsAux.sync_dirty_to_shadow.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUOpsAux_sync_dirty_to_shadow_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_int_gpr_spec.
  Local Opaque set_shadow_ctxt_spec.
  Local Opaque get_shadow_dirty_bit_spec.

  Ltac solve_loop_body te te_all Hte' Hnext Hfinal Inv Q R :=
    let T := fresh "T" in
    match goal with
    | |- out_normal = out_normal -> _ =>
        let ss := fresh "ss" in
        let vv := fresh "vv" in
        let Hte := fresh "Hte" in
        intros; unfold Inv; match goal with
                            | |- exists _, (1 <= ?v /\ _ ?v) /\ _ => exists (v - 1)
                            end; split; [ lia | repeat match goal with
                                                  | |- exists _, _ => eexists
                                                  end; split; [ apply Hnext |  ] ]; split_and; try_solve; intros ss vv Hte; simpl in *;
        repeat simpl_hyp Hte; inv Hte; try match goal with
                                         | H:?p =s ?t = true |- _ => apply String.eqb_eq in H
                                         end; subst; simpl; try assumption; try reflexivity; try erewrite Hte'; simpl; try reflexivity;
        repeat
          match goal with
          | H:gets ss te = Some vv
            |- (if ss =s ?v then _ else _) = _ =>
              let Hs := fresh "Hs" in
              let Hss := fresh "Hss" in
              destruct (ss =s v) eqn:Hs;
              [ apply String.eqb_eq in Hs; pose proof (te_all ss) as Hss; rewrite Hs in *; simpl in Hss; exploit Hss; try reflexivity; grewrite; intro T; inv T |  ]
          end; repeat (grewrite; reflexivity)
    | |- out_break = out_break -> _ =>
        match type of Hfinal with
        | ?L1 = ?R1 =>
            match type of Hnext with
            | ?L2 = ?R2 => assert (reach_final : L1 = L2) by solve_equality; rewrite reach_final in Hfinal; rewrite Hfinal in Hnext; inv Hnext
            end
        end;
        (let ss := fresh "ss" in
         let vv := fresh "vv" in
         let Hte := fresh "Hte" in
         intros; unfold Q; split;
         [ intros ss vv Hte; simpl in *; repeat simpl_hyp Hte; inv Hte; try match goal with
                                                                          | H:?p =s ?t = true |- _ => apply String.eqb_eq in H
                                                                          end; subst; simpl; try assumption; try reflexivity; try erewrite Hte';
           simpl; try reflexivity;
           repeat
             match goal with
             | H:gets ss te = Some vv
               |- (if ss =s ?v then _ else _) = _ =>
                 let Hs := fresh "Hs" in
                 let Hss := fresh "Hss" in
                 destruct (ss =s v) eqn:Hs;
                 [ apply String.eqb_eq in Hs; pose proof (te_all ss) as Hss; rewrite Hs in *; simpl in Hss; exploit Hss; try reflexivity; grewrite; intro T; inv T
                 |  ]
             end; repeat (grewrite; reflexivity)
         | ])
    | |- forall _, out_return _ = out_return _ -> _ =>
        match type of Hfinal with
        | ?L1 = ?R1 =>
            match type of Hnext with
            | ?L2 = ?R2 => assert (reach_final : L1 = L2) by solve_equality; rewrite reach_final in Hfinal; rewrite Hfinal in Hnext; inv Hnext
            end
        end;
        (let ss := fresh "ss" in
         let vv := fresh "vv" in
         let Hte := fresh "Hte" in
         let out := fresh "out" in
         let Hout := fresh "Hout" in
         intros out Hout; inv Hout; unfold R; split;
         [ intros ss vv Hte; simpl in *; repeat simpl_hyp Hte; inv Hte; try match goal with
                                                                          | H:?p =s ?t = true |- _ => apply String.eqb_eq in H
                                                                          end; subst; simpl; try assumption; try reflexivity; try erewrite Hte';
           simpl; try reflexivity;
           repeat
             match goal with
             | H:gets ss te = Some vv
               |- (if ss =s ?v then _ else _) = _ =>
                 let Hs := fresh "Hs" in
                 let Hss := fresh "Hss" in
                 destruct (ss =s v) eqn:Hs;
                 [ apply String.eqb_eq in Hs; pose proof (te_all ss) as Hss; rewrite Hs in *; simpl in Hss; exploit Hss; try reflexivity; grewrite; intro T; inv T
                 |  ]
             end; repeat (grewrite; reflexivity)
         | split])
    end; solve_equality.

  Lemma sync_dirty_to_shadow_return_cond:
    forall n b d e f a' b' c' d' e' f',
      sync_dirty_to_shadow_loop_low n false b 0 d e f = Some (a', b', c', d', e', f') ->
      Z.of_nat n <= 31 ->
      (Z.of_nat n < 31 -> c' = Z.of_nat n) /\ (Z.of_nat n = 31 <-> a' = true).
  Proof.
    induction n.
    simpl. intros.  inv H. lia.
    rewrite Nat2Z.inj_succ, succ_plus_1 in *.
    simpl. intros.
    simpl_hyp H. repeat destruct p. eapply IHn in C. destruct C.
    autounfold with sem in *. destruct_spec H; try lia. lia.
  Qed.

  Lemma f_sync_dirty_to_shadow_correct:
    forall v_vmid v_vcpuid st st'
      (Hspec: sync_dirty_to_shadow_spec_low v_vmid v_vcpuid st = Some st'),
      exec_func SmmuOps_layer code "sync_dirty_to_shadow"
        [VInt v_vmid; VInt v_vcpuid]
        st st' None.
  Proof.
    intros; simpl_func Hspec; simpl in *; try solve[try_solve];
      try solve[ eapply exec_func_call; try reflexivity; vcgen].
    remember (fbody Code.f_sync_dirty_to_shadow) as fcode eqn:Hc; simpl in Hc;
      match type of Hc with
      | context[ILoop ?body] => remember body as LoopBody eqn:Cloop; clear Hc
      end.
    match goal with
    | [H: sync_dirty_to_shadow_loop_low ?n ?_a0 ?_a1 ?_a2 ?_a3 ?_a4 ?_st =
            Some (?_a0', ?_a1', ?_a2', ?_a3', ?_a4', ?_st') |- _] =>
        rename H into Hfinal;
        assert(HLoop: forall te,
              gets "v_call" te = Some (VInt _a1) ->
              gets "v_i_016" te = Some (VInt _a2) ->
              gets "v_vcpuid" te = Some (VInt _a3) ->
              gets "v_vmid" te = Some (VInt _a4) ->
              (forall s, inlist s ("v_vmid"::"v_vcpuid"::"v_i_016"::"v_call"::nil) = false -> gets s te = None) ->
              exec SmmuOps_layer code (ILoop LoopBody :: nil) te _st
                (sets "v_call" (VInt _a1')
                   (sets "v_i_016" (VInt _a2')
                      (sets "v_vcpuid" (VInt _a3')
                         (sets "v_vmid" (VInt _a4')
                            te)))) (out_return None) _st')
    end.
    {
      intros te ? ? ? ? te_all.
      unfold sync_dirty_to_shadow_loop_rank in *.
      match goal with
      | [H: sync_dirty_to_shadow_loop_low (z_to_nat ?n) ?_a0 ?_a1 ?_a2 ?_a3 ?_a4 ?_st =
              Some (?_a0', ?_a1', ?_a2', ?_a3', ?_a4', ?_st') |-
           exec _ _ (_ :: nil) ?te ?st ?te' ?out ?st'] =>
          remember n as W0 eqn:HW0;
          set(P := fun t s => t = te /\ s = st);
          set(Q := fun (te : temp_env) (st : RData) => False);
          set(R := fun t s r =>  (forall s' v, gets s' te' = Some v -> gets s' t = Some v) /\ s = st' /\ r = @None value);
          set(Inv := fun t s w => exists _a0''  _a1'' _a2'' _a3'' _a4'' _st'',
                         sync_dirty_to_shadow_loop_low (z_to_nat (W0 - w)) _a0 _a1 _a2 _a3 _a4 _st = Some (_a0'', _a1'', _a2'', _a3'', _a4'', _st'')
                         /\ (sync_dirty_to_shadow_loop_rank _a1'' _a2'' _a3'' _a4'') = w
                         /\ 0 < w <= W0
                         /\ s = _st''
                         /\ (forall p v, gets p
                                     (sets "v_call" (VInt _a1'')
                                        (sets "v_i_016" (VInt _a2'')
                                           (sets "v_vcpuid" (VInt _a3'')
                                              (sets "v_vmid" (VInt _a4'')
                                                 te)))) = Some v -> gets p t = Some v));
          assert(loop_succ: forall W, Z.of_nat W <= W0 -> exists _a0'' _a1'' _a2'' _a3'' _a4'' _st'',
                  sync_dirty_to_shadow_loop_low (z_to_nat (W0 - Z.of_nat W)) _a0 _a1 _a2 _a3 _a4 _st =
                    Some (_a0'', _a1'', _a2'', _a3'', _a4'', _st''))
      end.
      { induction W. rewrite Z.sub_0_r. repeat frewrite. intros. repeat eexists; reflexivity.
        intros. erewrite loop_ind_sub1 in IHW; try lia.
        rewrite Nat2Z.inj_succ, succ_plus_1 in *.
        assert(Hcc: Z.of_nat W <= W0) by lia.
        exploit IHW. lia. unfold z_to_nat. intros (? & ? & ? & ? & ? & Hnext).
        simpl in Hnext. autounfold with sem in *. repeat simpl_hyp Hnext; try inv Hnext; repeat eexists. inv H4. }

      assert(HLoop: Loop SmmuOps_layer code LoopBody P Q R).
      {
        apply mkLoop with (W:=Z) (lt:=fun z1 z2 => (1 <= z2 /\ z1 < z2)) (I:=Inv).
        - apply Zwf_well_founded.
        - unfold P, Inv. intros ? ? (CC1 & CC2).
          exists W0. replace (W0 - W0) with 0 by lia. simpl.
          subst; repeat eexists; try solve[unfold sync_dirty_to_shadow_loop_rank in *; simpl; try_solve].
          intros ? ? Hte'; repeat simpl_hyp Hte'; inv Hte';
            try match goal with | [H: (?p =? ?t)%string = true |- _] => apply String.eqb_eq in H end;
            subst; try assumption; try reflexivity.
        - intros te0 st0 W I. unfold Inv in I.
          destruct I as (? & ? & ? & ? & ? & ? & Hnow & Hid & ? & ? & Hte').
          exploit sync_dirty_to_shadow_return_cond.
          eapply Hnow. rewrite Z2Nat.id. lia. lia.
          intros (R1 & R2).
          assert(Hx: x = false).
          { unfold z_to_nat in R2. rewrite Z2Nat.id in R2. destruct x. lia. lia. lia.  }
          rewrite Hx in Hnow.
          unfold sync_dirty_to_shadow_loop_rank in *.
          assert(W1: W >= 1) by lia.
          assert(Hlx: Z.of_nat (Z.to_nat (W-1)) <= W0) by (rewrite Z2Nat.id; lia).
          apply loop_succ in Hlx. rewrite Z2Nat.id in Hlx; try lia.
          destruct Hlx as (? & ? & ? & ? & ? & ? & Hnext). pose proof Hnext as D.
          rewrite loop_nat_sub1 in D; try lia. unfold z_to_nat in *.
          simpl in D; rewrite Hnow in D; autounfold with sem in D.
          destruct_spec D; try solve[lia].
          + eexists; eexists; eexists; split.
            vcgen. unfold eval; simpl. erewrite Hte'. 2: reflexivity. reflexivity.
            unfold eval; simpl. erewrite Hte'. 2: reflexivity. reflexivity. reflexivity.
            2: intro; contra. intro. vcgen. 2: intro; contra. intro.
            vcgen.
            unfold eval; simpl. erewrite Hte'. 2: reflexivity. reflexivity. reflexivity.
            2: intro; contra. intro.
            vcgen. intro T; inv T.  intro. repeat split.
            split_and; try (solve [ intro T; inv T ]); try (solve [ intros ? T; inv T ]).
            solve_loop_body te te_all Hte' Hnext Hfinal Inv Q R.
          + eexists; eexists; eexists; split.
            vcgen. unfold eval; simpl. erewrite Hte'. 2: reflexivity. reflexivity.
            unfold eval; simpl. erewrite Hte'. 2: reflexivity. reflexivity. reflexivity.
            2: intro; contra. intro. vcgen. 2: intro; contra. intro.
            vcgen.
            unfold eval; simpl. erewrite Hte'. 2: reflexivity. reflexivity. reflexivity.
            intro; contra. intro.
            vcgen. 2: intro; contra.  intro. vcgen.
            split_and; try (solve [ intro T; inv T ]); try (solve [ intros ? T; inv T ]).
            solve_loop_body te te_all Hte' Hnext Hfinal Inv Q R.
          + eexists; eexists; eexists; split.
            vcgen. unfold eval; simpl. erewrite Hte'. 2: reflexivity. reflexivity.
            unfold eval; simpl. erewrite Hte'. 2: reflexivity. reflexivity. reflexivity.
            intro; contra. intro. vcgen.
            unfold eval_list; simpl.
            erewrite Hte'. 2: reflexivity. erewrite Hte'. 2: reflexivity. erewrite Hte'. 2: reflexivity.
            reflexivity.
            unfold eval_list; simpl.
            erewrite Hte'. 2: reflexivity. erewrite Hte'. 2: reflexivity. erewrite Hte'. 2: reflexivity.
            reflexivity. 2: intro; contra. intro.
            vcgen. unfold eval; simpl. erewrite Hte'. 2: reflexivity. reflexivity. reflexivity.
            2: intro; contra. intro. vcgen.
            intro T. inv T. intro. repeat eexists.
            split_and; try (solve [ intro T; inv T ]); try (solve [ intros ? T; inv T ]).
            solve_loop_body te te_all Hte' Hnext Hfinal Inv Q R.
          + eexists; eexists; eexists; split.
            vcgen. unfold eval; simpl. erewrite Hte'. 2: reflexivity. reflexivity.
            unfold eval; simpl. erewrite Hte'. 2: reflexivity. reflexivity. reflexivity.
            intro; contra. intro. vcgen.
            unfold eval_list; simpl.
            erewrite Hte'. 2: reflexivity. erewrite Hte'. 2: reflexivity. erewrite Hte'. 2: reflexivity.
            reflexivity.
            unfold eval_list; simpl.
            erewrite Hte'. 2: reflexivity. erewrite Hte'. 2: reflexivity. erewrite Hte'. 2: reflexivity.
            reflexivity. 2: intro; contra. intro.
            vcgen. unfold eval; simpl. erewrite Hte'. 2: reflexivity. reflexivity. reflexivity.
            intro; contra. intro. vcgen. 2: intro; contra.
            intro. vcgen.
            split_and; try (solve [ intro T; inv T ]); try (solve [ intros ? T; inv T ]).
            solve_loop_body te te_all Hte' Hnext Hfinal Inv Q R. }
      match goal with
      | [H: sync_dirty_to_shadow_loop_low ?n ?_a0 ?_a1 ?_a2 ?_a3 ?_a4 ?_st =
              Some (?_a0', ?_a1', ?_a2', ?_a3', ?_a4', ?_st') |- _] =>
          assert(Pre: P te _st) by (split; auto);
          pose proof (LoopTermination _ _ _ _ _ _ HLoop te _st Pre) as LoopProof
      end.
      destruct LoopProof as (out & te0 & st0 & Hexec & Hout).
      destruct Hout as [(? & ? & Hout)|(? & Hout)]; [unfold R in Hout; destruct Hout as (Hte0 & Hst0 & Hv)|inv Hout].
      subst. eapply exec_drop_tempvar. eapply Hte0. eassumption.
    }
    subst.
    eapply exec_func_call; try reflexivity; vcgen.
    try eapply HLoop; try reflexivity; simpl; intros.
    repeat match goal with
           | H: context[if (?s =? ?v)%string then _ else _] |- _ =>
               let Hs := fresh "Hs" in
               let Hss := fresh "Hss" in
               destruct (s =? v)%string eqn:Hs; simpl in *; try solve[inv H]
           end; contra; vcgen.
    unfold sync_dirty_to_shadow_loop_rank in *.
    exploit sync_dirty_to_shadow_return_cond.
    eapply C2. rewrite Z2Nat.id. lia. lia. intros (? & ?).
    destruct H0. exploit H0. reflexivity. lia.
    Unshelve. all: assumption.
  Qed.

End VCPUOpsAux_sync_dirty_to_shadow_CodeProof.

