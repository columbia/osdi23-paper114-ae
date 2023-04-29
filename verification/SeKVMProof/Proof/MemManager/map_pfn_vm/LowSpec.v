Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import S2PTOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section MemManager_map_pfn_vm_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition map_pfn_vm_spec_low (v_vmid: Z) (v_addr: Z) (v_pte: Z) (v_level: Z) (st: RData) : (option RData) :=
    let v_and1 := (v_pte & 281474976706560) in
    match (
      let v_size_0 := 0 in
      let v_pte_addr_0 := 0 in
      if (v_level =? 3)
      then (
        let v_add5 := (v_and1 |' 4095) in
        let v_pte_addr_0 := v_add5 in
        let v_size_0 := 4096 in
        (Some (v_pte_addr_0, v_size_0, st)))
      else (
        match (
          let v_size_0 := 0 in
          let v_pte_addr_0 := 0 in
          if (v_level =? 2)
          then (
            let v_add := (v_and1 |' 4093) in
            let v_pte_addr_0 := v_add in
            let v_size_0 := 2097152 in
            (Some (v_pte_addr_0, v_size_0, st)))
          else (
            let v_pte_addr_0 := v_pte in
            let v_size_0 := 4096 in
            (Some (v_pte_addr_0, v_size_0, st)))
        ) with
        | (Some (v_pte_addr_0, v_size_0, st)) => (Some (v_pte_addr_0, v_size_0, st))
        | None => None
        end)
    ) with
    | (Some (v_pte_addr_0, v_size_0, st)) =>
      when st == ((mmap_s2pt_spec v_vmid v_addr v_level v_pte_addr_0 st));
      when st == ((iasm_6_isb_spec st));
      let v_and7 := (v_pte_addr_0 & 1099511627775) in
      let v_or := (v_and7 |' 5497558138880) in
      let v_0 := (int_to_ptr v_or) in
      when st == ((__flush_dcache_area_spec v_0 v_size_0 st));
      let __return__ := true in
      (Some st)
    | None => None
    end.

End MemManager_map_pfn_vm_LowSpec.

#[global] Hint Unfold map_pfn_vm_spec_low: spec.
