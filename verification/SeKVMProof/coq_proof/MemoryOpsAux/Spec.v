Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import MemManager.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemoryOpsAux_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition __clear_vm_range_loop_rank (v_num_07: Z) (v_pfn_06: Z) (v_vmid: Z) : Z :=
    v_num_07.

  Definition prot_and_map_vm_s2pt_loop_rank (v_addr: Z) (v_cmp3: bool) (v_gfn_126: Z) (v_num_127: Z) (v_pfn_025: Z) (v_pte: Z) (v_vmid: Z) : Z :=
    v_num_127.

  Fixpoint __clear_vm_range_loop (_N_: nat) (v_num_07: Z) (v_pfn_06: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_num_07, v_pfn_06, v_vmid, st))
    | (S _N__0) =>
      match ((__clear_vm_range_loop _N__0 v_num_07 v_pfn_06 v_vmid st)) with
      | (Some (v_num_8, v_pfn_7, v_vmid_0, st_0)) =>
        when st_1 == ((clear_vm_page_spec v_vmid_0 v_pfn_7 st_0));
        if ((v_num_8 + (- 1)) =? 0)
        then (Some (v_num_8, v_pfn_7, v_vmid_0, st_1))
        else (Some ((v_num_8 + (- 1)), (v_pfn_7 + 1), v_vmid_0, st_1))
      | None => None
      end
    end.

  Definition __clear_vm_range_spec (v_vmid: Z) (v_start: Z) (v_size: Z) (st: RData) : (option RData) :=
    if (v_size <? 4096)
    then (Some st)
    else (
      match ((__clear_vm_range_loop (z_to_nat (v_size >> 12)) (v_size >> 12) (v_start >> 12) v_vmid st)) with
      | (Some (v_num_8, v_pfn_7, v_vmid_0, st_0)) => (Some st_0)
      | None => None
      end).

  Fixpoint prot_and_map_vm_s2pt_loop (_N_: nat) (v_addr: Z) (v_cmp3: bool) (v_gfn_126: Z) (v_num_127: Z) (v_pfn_025: Z) (v_pte: Z) (v_vmid: Z) (st: RData) : (option (Z * bool * Z * Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_addr, v_cmp3, v_gfn_126, v_num_127, v_pfn_025, v_pte, v_vmid, st))
    | (S _N__0) =>
      match ((prot_and_map_vm_s2pt_loop _N__0 v_addr v_cmp3 v_gfn_126 v_num_127 v_pfn_025 v_pte v_vmid st)) with
      | (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_0, st_0)) =>
        when st_1 == ((assign_pfn_to_vm_spec v_vmid_0 v_gfn_127 v_pfn_26 st_0));
        if ((v_num_128 + (- 1)) =? 0)
        then (
          if v_cmp3_0
          then (
            when st_2 == ((map_pfn_vm_spec v_vmid_0 v_addr_0 v_pte_0 2 st_1));
            (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_0, st_2)))
          else (
            when st_2 == ((map_pfn_vm_spec v_vmid_0 v_addr_0 v_pte_0 3 st_1));
            (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_0, st_2))))
        else (Some (v_addr_0, v_cmp3_0, (v_gfn_127 + 1), (v_num_128 + (- 1)), (v_pfn_26 + 1), v_pte_0, v_vmid_0, st_1))
      | None => None
      end
    end.

  Definition prot_and_map_vm_s2pt_spec (v_vmid: Z) (v_addr: Z) (v_pte: Z) (v_level: Z) (st: RData) : (option RData) :=
    if (v_pte =? 0)
    then (Some st)
    else (
      if (v_level =? 2)
      then (
        match ((prot_and_map_vm_s2pt_loop (z_to_nat 512) v_addr (v_level =? 2) ((v_addr >> 12) & 4503599627369984) 512 ((v_pte >> 12) & 68719476735) v_pte v_vmid st)) with
        | (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_0, st_0)) => (Some st_0)
        | None => None
        end)
      else (
        match ((prot_and_map_vm_s2pt_loop (z_to_nat 1) v_addr (v_level =? 2) (v_addr >> 12) 1 ((v_pte >> 12) & 68719476735) v_pte v_vmid st)) with
        | (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_0, st_0)) => (Some st_0)
        | None => None
        end)).

End MemoryOpsAux_Spec.

#[global] Hint Unfold __clear_vm_range_loop_rank: spec.
#[global] Hint Unfold prot_and_map_vm_s2pt_loop_rank: spec.
#[global] Hint Unfold __clear_vm_range_loop: spec.
#[global] Hint Unfold __clear_vm_range_spec: spec.
#[global] Hint Unfold prot_and_map_vm_s2pt_loop: spec.
#[global] Hint Unfold prot_and_map_vm_s2pt_spec: spec.
