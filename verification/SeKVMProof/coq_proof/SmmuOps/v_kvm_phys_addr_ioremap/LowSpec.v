Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import SmmuMemOps.Spec.
Require Import SmmuOps.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuOps_v_kvm_phys_addr_ioremap_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Fixpoint v_kvm_phys_addr_ioremap_loop_low (_N_: nat) (v_gpa_addr_010: Z) (v_n_011: Z) (v_pa_addr_09: Z) (v_vmid: Z) (st: RData) : (option (Z * Z * Z * Z * RData)) :=
    match (_N_) with
    | O => (Some (v_gpa_addr_010, v_n_011, v_pa_addr_09, v_vmid, st))
    | (S _N_) =>
      match ((v_kvm_phys_addr_ioremap_loop_low _N_ v_gpa_addr_010 v_n_011 v_pa_addr_09 v_vmid st)) with
      | (Some (v_gpa_addr_010, v_n_011, v_pa_addr_09, v_vmid, st)) =>
        when st == ((map_io_spec v_vmid v_gpa_addr_010 v_pa_addr_09 st));
        let v_add1 := (v_gpa_addr_010 + 4096) in
        let v_add2 := (v_pa_addr_09 + 4096) in
        let v_sub := (v_n_011 + (- 1)) in
        let v_cmp_not := (v_sub =? 0) in
        match (
          let __continue__ := false in
          let __break__ := false in
          if v_cmp_not
          then (
            let __break__ := true in
            (Some (__break__, __continue__, v_gpa_addr_010, v_n_011, v_pa_addr_09, st)))
          else (
            let v_n_011 := v_sub in
            let v_gpa_addr_010 := v_add1 in
            let v_pa_addr_09 := v_add2 in
            let __continue__ := true in
            (Some (__break__, __continue__, v_gpa_addr_010, v_n_011, v_pa_addr_09, st)))
        ) with
        | (Some (__break__, __continue__, v_gpa_addr_010, v_n_011, v_pa_addr_09, st)) =>
          if __break__
          then (Some (v_gpa_addr_010, v_n_011, v_pa_addr_09, v_vmid, st))
          else (
            if __continue__
            then (Some (v_gpa_addr_010, v_n_011, v_pa_addr_09, v_vmid, st))
            else (Some (v_gpa_addr_010, v_n_011, v_pa_addr_09, v_vmid, st)))
        | None => None
        end
      | None => None
      end
    end.

  Definition v_kvm_phys_addr_ioremap_spec_low (v_vmid: Z) (v_gpa: Z) (v_pa: Z) (v_size: Z) (st: RData) : (option RData) :=
    let v_add := (v_size + 4095) in
    let v_cmp_not8 := (v_add <? 4096) in
    when st == (
        if v_cmp_not8
        then (Some st)
        else (
          let v_div := (v_add >> 12) in
          let v_n_011 := v_div in
          let v_gpa_addr_010 := v_gpa in
          let v_pa_addr_09 := v_pa in
          rely (((v_kvm_phys_addr_ioremap_loop_rank v_gpa_addr_010 v_n_011 v_pa_addr_09 v_vmid) >= 0));
          match (
            (v_kvm_phys_addr_ioremap_loop_low
              (z_to_nat (v_kvm_phys_addr_ioremap_loop_rank v_gpa_addr_010 v_n_011 v_pa_addr_09 v_vmid)) 
              v_gpa_addr_010 
              v_n_011 
              v_pa_addr_09 
              v_vmid 
              st)
          ) with
          | (Some (v_gpa_addr_010, v_n_011, v_pa_addr_09, v_vmid, st)) => (Some st)
          | None => None
          end));
    let __return__ := true in
    (Some st).

End SmmuOps_v_kvm_phys_addr_ioremap_LowSpec.

#[global] Hint Unfold v_kvm_phys_addr_ioremap_loop_low: spec.
#[global] Hint Unfold v_kvm_phys_addr_ioremap_spec_low: spec.
