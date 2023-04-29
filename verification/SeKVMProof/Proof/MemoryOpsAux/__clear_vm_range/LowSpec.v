Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemManager.Spec.
Require Import MemoryOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemoryOpsAux___clear_vm_range_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint __clear_vm_range_loop_low (_N_: nat) (v_num_07: Z) (v_pfn_06: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_num_07, v_pfn_06, v_vmid, st))
    | (S _N_) =>
      match ((__clear_vm_range_loop_low _N_ v_num_07 v_pfn_06 v_vmid st)) with
      | (Some (v_num_07, v_pfn_06, v_vmid, st)) =>
        when st == ((clear_vm_page_spec v_vmid v_pfn_06 st));
        let v_add := (v_pfn_06 + 1) in
        let v_sub := (v_num_07 + (- 1)) in
        let v_cmp_not := (v_sub =? 0) in
        match (
          let __continue__ := false in
          let __break__ := false in
          if v_cmp_not
          then (
            let __break__ := true in
            (Some (__break__, __continue__, v_num_07, v_pfn_06, st)))
          else (
            let v_num_07 := v_sub in
            let v_pfn_06 := v_add in
            let __continue__ := true in
            (Some (__break__, __continue__, v_num_07, v_pfn_06, st)))
        ) with
        | (Some (__break__, __continue__, v_num_07, v_pfn_06, st)) =>
          if __break__
          then (Some (v_num_07, v_pfn_06, v_vmid, st))
          else (
            if __continue__
            then (Some (v_num_07, v_pfn_06, v_vmid, st))
            else (Some (v_num_07, v_pfn_06, v_vmid, st)))
        | None => None
        end
      | None => None
      end
    end.

  Definition __clear_vm_range_spec_low (v_vmid: Z) (v_start: Z) (v_size: Z) (st: RData) : (option RData) :=
    let v_cmp_not5 := (v_size <? 4096) in
    when st == (
        if v_cmp_not5
        then (Some st)
        else (
          let v_div := (v_size >> 12) in
          let v_shr := (v_start >> 12) in
          let v_num_07 := v_div in
          let v_pfn_06 := v_shr in
          rely (((__clear_vm_range_loop_rank v_num_07 v_pfn_06 v_vmid) >= 0));
          match ((__clear_vm_range_loop_low (z_to_nat (__clear_vm_range_loop_rank v_num_07 v_pfn_06 v_vmid)) v_num_07 v_pfn_06 v_vmid st)) with
          | (Some (v_num_07, v_pfn_06, v_vmid, st)) => (Some st)
          | None => None
          end));
    let __return__ := true in
    (Some st).

End MemoryOpsAux___clear_vm_range_LowSpec.

#[global] Hint Unfold __clear_vm_range_loop_low: spec.
#[global] Hint Unfold __clear_vm_range_spec_low: spec.
