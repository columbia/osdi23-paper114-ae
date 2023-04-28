Require Import Accessors.set_per_cpu_host_regs.LowSpec.
Require Import Bottom.Spec.
Require Import Code.
Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.
Require Import InlineAsms.Layer.
Require Import Zwf.

Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Opaque Z.add Z.mul Z.div Z.sub Z.land Z.lor Z.lxor Z.shiftl Z.shiftr Z.quot Z.rem.

Section Accessors_set_per_cpu_host_regs_CodeProof.

  Context `{int_ptr: IntPtrCast}.

  Local Opaque get_cpuid_spec.
  Local Opaque get_el2_data_start_spec.
  Local Opaque store_RData.

    Lemma f_set_per_cpu_host_regs_correct:
      forall v_hr st st'
             (Hspec: set_per_cpu_host_regs_spec_low v_hr st = Some st'),
        exec_func InlineAsms_layer code "set_per_cpu_host_regs"
                  [VInt v_hr]
                  st st' None.
    Proof.
       intros; simpl_func Hspec; simpl in *;
         eapply exec_func_call; try reflexivity; vcgen.
    Qed.

End Accessors_set_per_cpu_host_regs_CodeProof.

