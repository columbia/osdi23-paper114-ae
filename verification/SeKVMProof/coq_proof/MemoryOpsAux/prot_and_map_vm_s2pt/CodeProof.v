Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemManager.Layer.
Require Import MemManager.Spec.
Require Import MemoryOpsAux.Spec.
Require Import MemoryOpsAux.prot_and_map_vm_s2pt.LowSpec.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemoryOpsAux_prot_and_map_vm_s2pt_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque map_pfn_vm_spec.
  Local Opaque assign_pfn_to_vm_spec.

Ltac solve_equality :=
  repeat
    (try_solve;
      match goal with
      | [ |- ?f ?a ?b ?c ?d ?e ?g ?h ?i ?j = ?f ?a' ?b' ?c' ?d' ?e' ?g' ?h' ?i' ?j'] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          replace d with d' by solve_equality;
          replace e with e' by solve_equality;
          replace g with g' by solve_equality;
          replace h with h' by solve_equality;
          replace i with i' by solve_equality;
          replace j with j' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b ?c ?d ?e ?g ?h ?i = ?f ?a' ?b' ?c' ?d' ?e' ?g' ?h' ?i'] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          replace d with d' by solve_equality;
          replace e with e' by solve_equality;
          replace g with g' by solve_equality;
          replace h with h' by solve_equality;
          replace i with i' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b ?c ?d ?e ?g ?h = ?f ?a' ?b' ?c' ?d' ?e' ?g' ?h'] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          replace d with d' by solve_equality;
          replace e with e' by solve_equality;
          replace g with g' by solve_equality;
          replace h with h' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b ?c ?d ?e ?g = ?f ?a' ?b' ?c' ?d' ?e' ?g'] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          replace d with d' by solve_equality;
          replace e with e' by solve_equality;
          replace g with g' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b ?c ?d ?e = ?f ?a' ?b' ?c' ?d' ?e'] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          replace d with d' by solve_equality;
          replace e with e' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b ?c ?d = ?f ?a' ?b' ?c' ?d' ] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          replace d with d' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b ?c = ?f ?a' ?b' ?c' ] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          reflexivity
      | [ |- ?f ?a ?b = ?f ?a' ?b' ] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          reflexivity
      | [ |- ?f ?a = ?f ?a' ] =>
          replace a with a' by solve_equality;
          reflexivity
      | [ |- (?a, ?b, ?c) = (?a', ?b', ?c') ] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          replace c with c' by solve_equality;
          reflexivity
      | [ |- (?a, ?b) = (?a', ?b') ] =>
          replace a with a' by solve_equality;
          replace b with b' by solve_equality;
          reflexivity
      end).

Ltac solve_loop_body te te_all Hte' Hnext Hfinal Inv Q :=
  first
  [ match goal with
    | H:_ |- _ => first [ solve [ inv H ] | fail 1 ]
    end
  | eexists; eexists; eexists; split;
     [ repeat (vcgen; repeat (intros; try unfold eval_list, eval; try erewrite Hte'; simpl; repeat grewrite; try lia; try reflexivity))
     | let T := fresh "T" in
       split_and; try (solve [ intro T; inv T ]); try (solve [ intros ? T; inv T ]);
        match goal with
        | |- out_normal = out_normal -> _ =>
              let ss := fresh "ss" in
              let vv := fresh "vv" in
              let Hte := fresh "Hte" in
              intros; unfold Inv; match goal with
                                  | |- exists _, (1 <= ?v /\ _ < ?v) /\ _ => exists (v - 1)
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
                       [ apply String.eqb_eq in Hs; pose proof (te_all ss) as Hss; rewrite Hs in *; simpl in Hss; exploit Hss; try reflexivity; grewrite; intro T; inv T
                       |  ]
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
                            [ apply String.eqb_eq in Hs; pose proof (te_all ss) as Hss; rewrite Hs in *; simpl in Hss; exploit Hss; try reflexivity; grewrite; intro T;
                               inv T
                            |  ]
                     end; repeat (grewrite; reflexivity)
                 | reflexivity ])
        end ]; solve_equality ].

    Lemma f_prot_and_map_vm_s2pt_correct:
      forall v_vmid v_addr v_pte v_level st st'
             (Hspec: prot_and_map_vm_s2pt_spec_low v_vmid v_addr v_pte v_level st = Some st'),
        exec_func MemManager_layer code "prot_and_map_vm_s2pt"
                  [VInt v_vmid; VInt v_addr; VInt v_pte; VInt v_level]
                  st st' None.
    Proof.
      Local Opaque z_to_nat Z.to_nat prot_and_map_vm_s2pt_loop_low.
      intros. autounfold with spec in *. autounfold with sem in *.
      simpl_hyp Hspec. inv Hspec. try solve[ eapply exec_func_call; try reflexivity; vcgen].
      destruct_spec Hspec.
      Local Transparent prot_and_map_vm_s2pt_loop_low.
      remember (fbody Code.f_prot_and_map_vm_s2pt) as fcode eqn:Hc; simpl in Hc;
        match type of Hc with
        | context[ILoop ?body] => remember body as LoopBody eqn:Cloop; clear Hc
        end.
      simpl in *.
      match goal with
      | [H: prot_and_map_vm_s2pt_loop_low ?n ?_a0 ?_a1 ?_a2 ?_a3 ?_a4 ?_a5 ?_a6 ?_st =
          Some (?_a0', ?_a1', ?_a2', ?_a3', ?_a4', ?_a5', ?_a6', ?_st') |- _] =>
          rename H into Hfinal;
          assert(HLoop: forall te,
                  gets "v_addr" te = Some (VInt _a0) ->
                  gets "v_cmp3" te = Some (VBool _a1) ->
                  gets "v_gfn_126" te = Some (VInt _a2) ->
                  gets "v_num_127" te = Some (VInt _a3) ->
                  gets "v_pfn_025" te = Some (VInt _a4) ->
                  gets "v_pte" te = Some (VInt _a5) ->
                  gets "v_vmid" te = Some (VInt _a6) ->
                  (forall s, inlist s ("v_vmid"::"v_addr"::"v_pte"::"v_level"::"v_pfn_025"::"v_gfn_126"::"v_num_127"::"v_num_0"::"v_gfn_0"::"v_mul"::"v_cmp3"::"v_div"::"v_and1"::"v_cmp"::"v_div2"::nil) = false -> gets s te = None) ->
                  exec MemManager_layer code (ILoop LoopBody :: nil) te _st
                      (sets "v_addr" (VInt _a0')
                      (sets "v_cmp3" (VBool _a1')
                      (sets "v_gfn_126" (VInt _a2')
                      (sets "v_num_127" (VInt _a3')
                      (sets "v_pfn_025" (VInt _a4')
                      (sets "v_pte" (VInt _a5')
                      (sets "v_vmid" (VInt _a6')
                          te))))))) out_normal _st')
      end.
      {
        intros te ? ? ? ? ? ? ? te_all.
        unfold prot_and_map_vm_s2pt_loop_rank in *.
        match goal with
        | [H: prot_and_map_vm_s2pt_loop_low (z_to_nat ?n) ?_a0 ?_a1 ?_a2 ?_a3 ?_a4 ?_a5 ?_a6 ?_st =
                Some (?_a0', ?_a1', ?_a2', ?_a3', ?_a4', ?_a5', ?_a6', ?_st') |-
            exec _ _ (_ :: nil) ?te ?st ?te' ?out ?st'] =>
            remember n as W0 eqn:HW0;
            set(P := fun t s => t = te /\ s = st);
            set(Q := fun t s =>  (forall s' v, gets s' te' = Some v -> gets s' t = Some v) /\ s = st');
            set(R := fun (_: temp_env) (_: RData) (_: option value) => False);
            set(Inv := fun t s w => exists _a0'' _a1'' _a2'' _a3'' _a4'' _a5'' _a6'' _st'',
                        prot_and_map_vm_s2pt_loop_low (z_to_nat (W0 - w)) _a0 _a1 _a2 _a3 _a4 _a5 _a6 _st = Some (_a0'', _a1'', _a2'', _a3'', _a4'', _a5'', _a6'', _st'')
                        /\ (prot_and_map_vm_s2pt_loop_rank _a0'' _a1'' _a2'' _a3'' _a4'' _a5'' _a6'') = w
                        /\ 0 < w <= W0
                        /\ s = _st''
                        /\ (forall p v, gets p
                                        (sets "v_addr" (VInt _a0'')
                                        (sets "v_cmp3" (VBool _a1'')
                                        (sets "v_gfn_126" (VInt _a2'')
                                        (sets "v_num_127" (VInt _a3'')
                                        (sets "v_pfn_025" (VInt _a4'')
                                        (sets "v_pte" (VInt _a5'')
                                        (sets "v_vmid" (VInt _a6'')
                                                    te))))))) = Some v -> gets p t = Some v));
            assert(loop_succ: forall W, Z.of_nat W <= W0 -> exists _a0'' _a1'' _a2'' _a3'' _a4'' _a5'' _a6'' _st'',
                    prot_and_map_vm_s2pt_loop_low (z_to_nat (W0 - Z.of_nat W)) _a0 _a1 _a2 _a3 _a4 _a5 _a6 _st =
                    Some (_a0'', _a1'', _a2'', _a3'', _a4'', _a5'', _a6'', _st''))
        end.
        { induction W. rewrite Z.sub_0_r. repeat frewrite. intros. repeat eexists; reflexivity.
        intros. erewrite loop_ind_sub1 in IHW; try lia.
        rewrite Nat2Z.inj_succ, succ_plus_1 in *.
        assert(Hcc: Z.of_nat W <= W0) by lia.
        exploit IHW. lia. Local Transparent z_to_nat. unfold z_to_nat. intros (? & ? & ? & ? & ? & ? & ? & ? & Hnext).
        simpl in Hnext. repeat simpl_hyp Hnext; repeat eexists. }

        assert(HLoop: Loop MemManager_layer code LoopBody P Q R).
        {
          apply mkLoop with (W:=Z) (lt:=fun z1 z2 => (1 <= z2 /\ z1 < z2)) (I:=Inv).
          - apply Zwf_well_founded.
          - unfold P, Inv. intros ? ? (CC1 & CC2).
            exists W0. replace (W0 - W0) with 0 by lia. simpl.
            subst; repeat eexists; try solve[unfold prot_and_map_vm_s2pt_loop_rank in *; simpl; try_solve].
            intros ? ? Hte'; repeat simpl_hyp Hte'; inv Hte';
            try match goal with | [H: (?p =? ?t)%string = true |- _] => apply String.eqb_eq in H end;
            subst; try assumption; try reflexivity.
          - intros te0 st0 W I. unfold Inv in I.
            destruct I as (? & ? & ? & ? & ? & ? & ? & ? & Hnow & Hid & ? & ? & Hte').
            unfold prot_and_map_vm_s2pt_loop_rank in *.
            assert(W1: W >= 1) by lia.
            assert(Hlx: Z.of_nat (Z.to_nat (W-1)) <= W0) by (rewrite Z2Nat.id; lia).
            apply loop_succ in Hlx. rewrite Z2Nat.id in Hlx; try lia.
            destruct Hlx as (? & ? & ? & ? & ? & ? & ? & ? & Hnext). pose proof Hnext as D.
            rewrite loop_nat_sub1 in D; try lia. unfold z_to_nat in *.
            simpl in D; rewrite Hnow in D; autounfold with sem in D.
            destruct_spec D; try solve[lia]; solve_loop_body te te_all Hte' Hnext Hfinal Inv Q.
        }
        match goal with
        | [H: prot_and_map_vm_s2pt_loop_low ?n ?_a0 ?_a1 ?_a2 ?_a3 ?_a4 ?_a5 ?_a6 ?_st =
            Some (?_a0', ?_a1', ?_a2', ?_a3', ?_a4', ?_a5', ?_a6', ?_st') |- _] =>
          assert(Pre: P te _st) by (split; auto);
          pose proof (LoopTermination _ _ _ _ _ _ HLoop te _st Pre) as LoopProof
        end.
        destruct LoopProof as (out & te0 & st0 & Hexec & Hout).
        destruct Hout as [(? & ? & Hout)|(? & Hout)]; [inv Hout|unfold Q in Hout; destruct Hout as (Hte0 & Hst0)].
        subst. eapply exec_drop_tempvar. eapply Hte0. eassumption.
      }
      subst.
      Local Opaque z_to_nat.
      eapply exec_func_call; try reflexivity; vcgen;
        try eapply HLoop; try reflexivity; simpl; intros;
        repeat match goal with
        | H: context[if (?s =? ?v)%string then _ else _] |- _ =>
            let Hs := fresh "Hs" in
            let Hss := fresh "Hss" in
            destruct (s =? v)%string eqn:Hs; simpl in *; try solve[inv H]
        end; contra; vcgen.
      Local Transparent z_to_nat.
      simpl in Hcond1.
      autounfold with sem in *. destruct_spec Hcond1.
      2: { inv Hcond0. }
      eapply exec_func_call; try reflexivity; vcgen.
      eapply exec_loop_break.
      vcgen. 2: intro; contra. intro. vcgen.
    Qed.

End MemoryOpsAux_prot_and_map_vm_s2pt_CodeProof.

