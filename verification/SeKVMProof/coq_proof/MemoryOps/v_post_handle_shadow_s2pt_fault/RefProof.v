Require Import Accessors.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import MemoryOps.Layer.
Require Import MemoryOps.RefineRel.
Require Import MemoryOps.Spec.
Require Import MemoryOps.v_post_handle_shadow_s2pt_fault.LowSpec.
Require Import MemoryOpsAux.Spec.
Require Import VMOpsAux.Layer.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section MemoryOps_v_post_handle_shadow_s2pt_fault_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition v_post_handle_shadow_s2pt_fault_spec_mid (v_vmid: Z) (v_vcpuid: Z) (st: RData) : (option RData) :=
    rely ((((0 - ((4 * v_vmid) + v_vcpuid)) <= 0) /\ (((4 * v_vmid) + v_vcpuid) < 72)));
    if (((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e_output)) =? 0)
    then (Some st)
    else (
      if (((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e__level)) =? 2)
      then (
        match (
          (prot_and_map_vm_s2pt_loop
            (z_to_nat 512) 
            ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_hpfar)) << 8) & 18446744073709547520) 
            (((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e__level)) =? 2) 
            ((((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_hpfar)) << 8) & 18446744073709547520) >> 12) & 4503599627369984) 
            512 
            ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e_output)) >> 12) & 68719476735) 
            ((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e_output)) 
            v_vmid 
            st)
        ) with
        | (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_1, st_4)) => (Some st_4)
        | None => None
        end)
      else (
        match (
          (prot_and_map_vm_s2pt_loop
            (z_to_nat 1) 
            ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_hpfar)) << 8) & 18446744073709547520) 
            (((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e__level)) =? 2) 
            (((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * v_vmid) + v_vcpuid)).(e_hpfar)) << 8) & 18446744073709547520) >> 12) 
            1 
            ((((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e_output)) >> 12) & 68719476735) 
            ((((((st.(priv)).(e_vcpu_pool)) @ ((4 * v_vmid) + v_vcpuid)).(e___arch)).(e_walk_result)).(e_output)) 
            v_vmid 
            st)
        ) with
        | (Some (v_addr_0, v_cmp3_0, v_gfn_127, v_num_128, v_pfn_26, v_pte_0, v_vmid_1, st_4)) => (Some st_4)
        | None => None
        end)).

  Hint Unfold v_post_handle_shadow_s2pt_fault_spec_mid: spec.

  Lemma f_v_post_handle_shadow_s2pt_fault_refine_mid:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_post_handle_shadow_s2pt_fault_spec_mid v_vmid v_vcpuid hst = Some hst'),
      exists lst', v_post_handle_shadow_s2pt_fault_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_post_handle_shadow_s2pt_fault_refine_high:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_post_handle_shadow_s2pt_fault_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', v_post_handle_shadow_s2pt_fault_spec_mid v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent v_post_handle_shadow_s2pt_fault_spec.
      unfold v_post_handle_shadow_s2pt_fault_spec.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_v_post_handle_shadow_s2pt_fault_refine:
    forall v_vmid v_vcpuid lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: v_post_handle_shadow_s2pt_fault_spec v_vmid v_vcpuid hst = Some hst'),
      exists lst', v_post_handle_shadow_s2pt_fault_spec_low v_vmid v_vcpuid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      Local Transparent v_post_handle_shadow_s2pt_fault_spec.
      unfold v_post_handle_shadow_s2pt_fault_spec.
      intros; inv Hrel.
      eapply f_v_post_handle_shadow_s2pt_fault_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_v_post_handle_shadow_s2pt_fault_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End MemoryOps_v_post_handle_shadow_s2pt_fault_RefProof.

