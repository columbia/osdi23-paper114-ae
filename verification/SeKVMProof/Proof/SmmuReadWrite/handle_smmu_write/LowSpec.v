Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Spec.
Require Import SmmuAccess.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section SmmuReadWrite_handle_smmu_write_LowSpec.

  Context `{int_ptr: IntPtrCast}.

  Definition handle_smmu_write_spec_low (v_hsr: Z) (v_fault_ipa: Z) (v_len: Z) (v_index: Z) (st: RData) : (option RData) :=
    when v_0, st == ((iasm_get_far_el2_spec st));
    let v_and := (v_0 & 65535) in
    when v_call, st == ((get_smmu_size_spec v_index st));
    let v_shr := (v_call >> 1) in
    let v_cmp := (v_and <? v_shr) in
    when st == (
        if v_cmp
        then (
          when v_call1, st == ((handle_smmu_global_access_spec v_hsr v_and v_index st));
          let v_cmp2 := (v_call1 =? 0) in
          when st == (
              if v_cmp2
              then (
                when st == ((v_panic_spec st));
                (Some st))
              else (
                when st == ((__handle_smmu_write_spec v_hsr v_fault_ipa v_len 0 0 st));
                (Some st)));
          (Some st))
        else (
          when v_call5, st == ((handle_smmu_cb_access_spec v_and st));
          when st == (
              if (v_call5 =? 3)
              then (
                when v_call20, st == ((host_get_mmio_data_spec v_hsr st));
                when st == ((__handle_smmu_write_spec v_hsr v_fault_ipa v_len 0 0 st));
                (Some st))
              else (
                when st == (
                    if (v_call5 =? 0)
                    then (
                      when st == ((v_panic_spec st));
                      (Some st))
                    else (
                      when st == (
                          if (v_call5 =? 2)
                          then (
                            when v_call11, st == ((smmu_get_cbndx_spec v_and st));
                            let v_conv := v_call11 in
                            when v_call12, st == ((get_smmu_cfg_hw_ttbr_spec v_conv v_index st));
                            when v_call13, st == ((host_get_mmio_data_spec v_hsr st));
                            when st == ((__handle_smmu_write_spec v_hsr v_fault_ipa v_len v_call12 1 st));
                            let v_conv14 := v_index in
                            (Some st))
                          else (
                            when st == ((__handle_smmu_write_spec v_hsr v_fault_ipa v_len 0 0 st));
                            (Some st)));
                      (Some st)));
                (Some st)));
          (Some st)));
    let __return__ := true in
    (Some st).

End SmmuReadWrite_handle_smmu_write_LowSpec.

#[global] Hint Unfold handle_smmu_write_spec_low: spec.
