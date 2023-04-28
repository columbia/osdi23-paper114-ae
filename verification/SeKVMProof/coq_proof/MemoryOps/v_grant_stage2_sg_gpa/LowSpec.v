Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemManager.Spec.
Require Import MemoryOps.Spec.
Require Import S2PTOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemoryOps_v_grant_stage2_sg_gpa_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint v_grant_stage2_sg_gpa_loop_low (_N_: nat) (v_addr_addr_044: Z) (v_len_143: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr_addr_044, v_len_143, v_vmid, st))
    | (S _N_) =>
      match ((v_grant_stage2_sg_gpa_loop_low _N_ v_addr_addr_044 v_len_143 v_vmid st)) with
      | (Some (v_addr_addr_044, v_len_143, v_vmid, st)) =>
        when v_call, st == ((walk_s2pt_spec v_vmid v_addr_addr_044 st));
        let v_and5 := (v_call & 281474976706560) in
        let v_cmp14_not := (v_and5 =? 0) in
        when st == (
            if v_cmp14_not
            then (Some st)
            else (
              let v_and6 := (v_call & 36028797018963968) in
              let v_tobool7_not_not := (v_and6 =? 0) in
              let v_div := (v_and5 >> 12) in
              let v_and20 := (v_addr_addr_044 >> 12) in
              let v_div21 := (v_and20 & 511) in
              let v_add22 := (
                  if v_tobool7_not_not
                  then 0
                  else v_div21) in
              let v_pfn_0 := (v_add22 + v_div) in
              when st == ((grant_vm_page_spec v_vmid v_pfn_0 st));
              (Some st)));
        let v_add25 := (v_addr_addr_044 + 4096) in
        let v_sub := (v_len_143 + (- 1)) in
        let v_cmp_not := (v_sub =? 0) in
        match (
          let __continue__ := false in
          let __break__ := false in
          if v_cmp_not
          then (
            let __break__ := true in
            (Some (__break__, __continue__, v_addr_addr_044, v_len_143, st)))
          else (
            let v_addr_addr_044 := v_add25 in
            let v_len_143 := v_sub in
            let __continue__ := true in
            (Some (__break__, __continue__, v_addr_addr_044, v_len_143, st)))
        ) with
        | (Some (__break__, __continue__, v_addr_addr_044, v_len_143, st)) =>
          if __break__
          then (Some (v_addr_addr_044, v_len_143, v_vmid, st))
          else (
            if __continue__
            then (Some (v_addr_addr_044, v_len_143, v_vmid, st))
            else (Some (v_addr_addr_044, v_len_143, v_vmid, st)))
        | None => None
        end
      | None => None
      end
    end.

  Definition v_grant_stage2_sg_gpa_spec_low (v_vmid: Z) (v_addr: Z) (v_size: Z) (st: RData) : (option RData) :=
    let v_and := (v_size & 4095) in
    let v_tobool_not := (v_and <>? 0) in
    let v_0 := (bool_to_int v_tobool_not) in
    let v_tobool1_not := (v_size <? 4096) in
    let v_shr := (v_size >> 12) in
    let v_add := (
        if v_tobool1_not
        then 0
        else v_shr) in
    let v_len_0 := (v_add + v_0) in
    let v_cmp_not42 := (v_len_0 =? 0) in
    when st == (
        if v_cmp_not42
        then (Some st)
        else (
          let v_addr_addr_044 := v_addr in
          let v_len_143 := v_len_0 in
          rely (((v_grant_stage2_sg_gpa_loop_rank v_addr_addr_044 v_len_143 v_vmid) >= 0));
          match ((v_grant_stage2_sg_gpa_loop_low (z_to_nat (v_grant_stage2_sg_gpa_loop_rank v_addr_addr_044 v_len_143 v_vmid)) v_addr_addr_044 v_len_143 v_vmid st)) with
          | (Some (v_addr_addr_044, v_len_143, v_vmid, st)) => (Some st)
          | None => None
          end));
    let __return__ := true in
    (Some st).

End MemoryOps_v_grant_stage2_sg_gpa_LowSpec.

#[global] Hint Unfold v_grant_stage2_sg_gpa_loop_low: spec.
#[global] Hint Unfold v_grant_stage2_sg_gpa_spec_low: spec.
