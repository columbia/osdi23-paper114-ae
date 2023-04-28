Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTAlloc.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section S2PTWalk_walk_pmd_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition walk_pmd_spec_low (v_vmid: Z) (v_pgd: Z) (v_addr: Z) (v_alloc: Z) (st: RData) : (option (Z * RData)) :=
    let v_and1 := (v_pgd & 281474976706560) in
    let v_cmp_not := (v_and1 =? 0) in
    when v_ret_0, st == (
        let v_ret_0 := 0 in
        if v_cmp_not
        then (
          let v_ret_0 := 0 in
          (Some (v_ret_0, st)))
        else (
          let v_0 := (v_addr >> 18) in
          let v_mul := (v_0 & 4088) in
          let v_add := (v_mul |' v_and1) in
          when v_call, st == ((pt_load_spec v_vmid v_add st));
          let v_and4 := (v_call & 281474976706560) in
          let v_cmp5 := (v_and4 =? 0) in
          let v_cmp6 := (v_alloc =? 1) in
          let v_or_cond := (v_cmp6 && v_cmp5) in
          when v_ret_0, st == (
              let v_ret_0 := 0 in
              if v_or_cond
              then (
                when v_call8, st == ((alloc_s2pt_pmd_spec v_vmid st));
                let v_or := (v_call8 |' 3) in
                when st == ((pt_store_spec v_vmid v_add v_or st));
                let v_ret_0 := v_or in
                (Some (v_ret_0, st)))
              else (
                let v_ret_0 := v_call in
                (Some (v_ret_0, st))));
          (Some (v_ret_0, st))));
    let __return__ := true in
    let __retval__ := v_ret_0 in
    (Some (__retval__, st)).

End S2PTWalk_walk_pmd_LowSpec.

#[global] Hint Unfold walk_pmd_spec_low: spec.
