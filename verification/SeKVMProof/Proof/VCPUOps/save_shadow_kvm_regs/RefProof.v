Require Import Accessors.Spec.
Require Import Bottom.Spec.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import LayerSem.Libs.Zutils.div_mod_to_equations.
Require Import VCPUOps.Layer.
Require Import VCPUOps.RefineRel.
Require Import VCPUOps.Spec.
Require Import VCPUOps.save_shadow_kvm_regs.LowSpec.
Require Import VCPUPrep.Layer.
Require Import VCPUPrep.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section VCPUOps_save_shadow_kvm_regs_RefProof.

  Context `{int_ptr: IntPtrCast}.

  Definition save_shadow_kvm_regs_spec_mid (st: RData) : (option RData) :=
    rely (
      (((0 - ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))) <= 0) /\
        (((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id))) < 72)));
    if (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_ec)) =? 2)
    then (
      if (
        ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_esr)) >> 26) =?
          60))
      then (
        (Some (st.[priv].[e_shadow_ctxts] :<
          (((st.(priv)).(e_shadow_ctxts)) #
            ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id))) ==
            ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).[e_dirty] :<
              (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_dirty)) |'
                4294967296))))))
      else (
        if (
          ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_esr)) >> 26) =?
            1))
        then (
          (Some (st.[priv].[e_shadow_ctxts] :<
            (((st.(priv)).(e_shadow_ctxts)) #
              ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id))) ==
              ((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).[e_dirty] :<
                (((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_dirty)) |'
                  4294967296))))))
        else (
          if (
            ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_esr)) >> 26) =?
              18))
          then (
            when st_4 == ((prep_hvc_spec ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid)) ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)) st));
            (Some st_4))
          else (
            if (
              ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_esr)) >> 26) =?
                22))
            then (
              when st_4 == ((prep_hvc_spec ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid)) ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)) st));
              (Some st_4))
            else (
              if (
                ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_esr)) >> 26) =?
                  32))
              then (
                when st_4 == ((prep_abort_spec ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid)) ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)) st));
                (Some st_4))
              else (
                if (
                  ((((((st.(priv)).(e_shadow_ctxts)) @ ((4 * ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid))) + ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)))).(e_esr)) >> 26) =?
                    36))
                then (
                  when st_4 == ((prep_abort_spec ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_____vmid)) ((((st.(priv)).(e_per_cpu_data)) @ 0).(e_vcpu_id)) st));
                  (Some st_4))
                else None))))))
    else (Some st).

  Hint Unfold save_shadow_kvm_regs_spec_mid: spec.

  Lemma f_save_shadow_kvm_regs_refine_mid:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: save_shadow_kvm_regs_spec_mid hst = Some hst'),
      exists lst', save_shadow_kvm_regs_spec_low lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat solve_refproof;
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_save_shadow_kvm_regs_refine_high:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: save_shadow_kvm_regs_spec hst = Some hst'),
      exists lst', save_shadow_kvm_regs_spec_mid lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      autounfold with spec in *; autounfold with sem in *; simpl in *.
      destruct_spec Hspec; repeat (solve_refproof; repeat rewrite annotation_eq);
        repeat eexists; try unfold refrel; solve_equality.
    Qed.

  Lemma f_save_shadow_kvm_regs_refine:
    forall lst hst hst'
           (Hrel: refrel hst lst)
           (Hspec: save_shadow_kvm_regs_spec hst = Some hst'),
      exists lst', save_shadow_kvm_regs_spec_low lst = Some lst' /\ refrel hst' lst'.
    Proof.
      intros; inv Hrel.
      eapply f_save_shadow_kvm_regs_refine_high in Hspec; try unfold refrel; try reflexivity.
      destruct Hspec as (lst' & Hspec & Hrel).
      inv Hrel; try unfold refrel; try reflexivity.
      eapply f_save_shadow_kvm_regs_refine_mid; try unfold refrel; try reflexivity; try eassumption.
    Qed.

End VCPUOps_save_shadow_kvm_regs_RefProof.

