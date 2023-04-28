Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemManager.Spec.
Require Import MemoryOpsAux.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemoryOpsAux_prot_and_map_vm_s2pt_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint prot_and_map_vm_s2pt_loop_low (_N_: nat) (v_addr: Z) (v_cmp3: bool) (v_gfn_126: Z) (v_num_127: Z) (v_pfn_025: Z) (v_pte: Z) (v_vmid: Z) (st: RData) : (option (Z * bool * Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr, v_cmp3, v_gfn_126, v_num_127, v_pfn_025, v_pte, v_vmid, st))
    | (S _N_) =>
      match ((prot_and_map_vm_s2pt_loop_low _N_ v_addr v_cmp3 v_gfn_126 v_num_127 v_pfn_025 v_pte v_vmid st)) with
      | (Some (v_addr, v_cmp3, v_gfn_126, v_num_127, v_pfn_025, v_pte, v_vmid, st)) =>
        when st == ((assign_pfn_to_vm_spec v_vmid v_gfn_126 v_pfn_025 st));
        let v_add := (v_gfn_126 + 1) in
        let v_add8 := (v_pfn_025 + 1) in
        let v_sub := (v_num_127 + (- 1)) in
        let v_cmp7_not := (v_sub =? 0) in
        match (
          let __continue__ := false in
          let __break__ := false in
          if v_cmp7_not
          then (
            let v_level_addr_0 := (
                if v_cmp3
                then 2
                else 3) in
            when st == ((map_pfn_vm_spec v_vmid v_addr v_pte v_level_addr_0 st));
            let __break__ := true in
            (Some (__break__, __continue__, v_gfn_126, v_num_127, v_pfn_025, st)))
          else (
            let v_num_127 := v_sub in
            let v_gfn_126 := v_add in
            let v_pfn_025 := v_add8 in
            let __continue__ := true in
            (Some (__break__, __continue__, v_gfn_126, v_num_127, v_pfn_025, st)))
        ) with
        | (Some (__break__, __continue__, v_gfn_126, v_num_127, v_pfn_025, st)) =>
          if __break__
          then (Some (v_addr, v_cmp3, v_gfn_126, v_num_127, v_pfn_025, v_pte, v_vmid, st))
          else (
            if __continue__
            then (Some (v_addr, v_cmp3, v_gfn_126, v_num_127, v_pfn_025, v_pte, v_vmid, st))
            else (Some (v_addr, v_cmp3, v_gfn_126, v_num_127, v_pfn_025, v_pte, v_vmid, st)))
        | None => None
        end
      | None => None
      end
    end.

  Definition prot_and_map_vm_s2pt_spec_low (v_vmid: Z) (v_addr: Z) (v_pte: Z) (v_level: Z) (st: RData) : (option RData) :=
    let v_div2 := (v_addr >> 12) in
    let v_cmp := (v_pte =? 0) in
    when st == (
        if v_cmp
        then (Some st)
        else (
          let v_and1 := (v_pte >> 12) in
          let v_div := (v_and1 & 68719476735) in
          let v_cmp3 := (v_level =? 2) in
          let v_mul := (v_div2 & 4503599627369984) in
          let v_gfn_0 := (
              if v_cmp3
              then v_mul
              else v_div2) in
          let v_num_0 := (
              if v_cmp3
              then 512
              else 1) in
          let v_num_127 := v_num_0 in
          let v_gfn_126 := v_gfn_0 in
          let v_pfn_025 := v_div in
          rely (((prot_and_map_vm_s2pt_loop_rank v_addr v_cmp3 v_gfn_126 v_num_127 v_pfn_025 v_pte v_vmid) >= 0));
          match (
            (prot_and_map_vm_s2pt_loop_low
              (z_to_nat (prot_and_map_vm_s2pt_loop_rank v_addr v_cmp3 v_gfn_126 v_num_127 v_pfn_025 v_pte v_vmid)) 
              v_addr 
              v_cmp3 
              v_gfn_126 
              v_num_127 
              v_pfn_025 
              v_pte 
              v_vmid 
              st)
          ) with
          | (Some (v_addr, v_cmp3, v_gfn_126, v_num_127, v_pfn_025, v_pte, v_vmid, st)) => (Some st)
          | None => None
          end));
    let __return__ := true in
    (Some st).

End MemoryOpsAux_prot_and_map_vm_s2pt_LowSpec.

#[global] Hint Unfold prot_and_map_vm_s2pt_loop_low: spec.
#[global] Hint Unfold prot_and_map_vm_s2pt_spec_low: spec.
