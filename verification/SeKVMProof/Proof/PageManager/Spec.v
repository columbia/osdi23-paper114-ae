Require Import CommonDeps.
Require Import DataTypes.
Require Import GlobalDefs.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Section PageManager_Spec.

  Context `{int_ptr: IntPtrCast}.

  Definition get_pfn_owner_spec (v_pfn: Z) (st: RData) : (option (Z * RData)) :=
    rely ((is_pfn v_pfn));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    (Some (((((st.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)), st)).

  Definition set_pfn_owner_spec (v_pfn: Z) (v_vmid: Z) (st: RData) : (option RData) :=
    rely ((v_vmid <> (- 1)));
    rely ((is_pfn v_pfn));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    rely ((((((st.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) <> (- 1)));
    let s2page' := ((((st.(shared)).(e_s2pages)) @ v_pfn).[e_vmid] :< v_vmid) in
    (Some (st.[shared].[e_s2pages] :< (((st.(shared)).(e_s2pages)) # v_pfn == s2page'))).

  Definition get_pfn_count_spec (v_pfn: Z) (st: RData) : (option (Z * RData)) :=
    rely ((is_pfn v_pfn));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    (Some (((((st.(shared)).(e_s2pages)) @ v_pfn).(e_count)), st)).

  Definition set_pfn_count_spec (v_pfn: Z) (v_count: Z) (st: RData) : (option RData) :=
    rely ((is_pfn v_pfn));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    rely ((((((st.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) <> (- 1)));
    let s2page' := ((((st.(shared)).(e_s2pages)) @ v_pfn).[e_count] :< v_count) in
    (Some (st.[shared].[e_s2pages] :< (((st.(shared)).(e_s2pages)) # v_pfn == s2page'))).

  Definition get_pfn_map_spec (v_pfn: Z) (st: RData) : (option (Z * RData)) :=
    rely ((is_pfn v_pfn));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    (Some (((((st.(shared)).(e_s2pages)) @ v_pfn).(e_gfn)), st)).

  Definition set_pfn_map_spec (v_pfn: Z) (v_gfn: Z) (st: RData) : (option RData) :=
    rely ((is_pfn v_pfn));
    rely (((((st.(shared)).(e_locks)) @ S2PAGE_LOCK) = (Some CPU_ID)));
    rely ((((((st.(shared)).(e_s2pages)) @ v_pfn).(e_vmid)) <> (- 1)));
    let s2page' := ((((st.(shared)).(e_s2pages)) @ v_pfn).[e_gfn] :< v_gfn) in
    (Some (st.[shared].[e_s2pages] :< (((st.(shared)).(e_s2pages)) # v_pfn == s2page'))).

End PageManager_Spec.

#[global] Hint Unfold get_pfn_owner_spec: spec.
#[global] Hint Unfold set_pfn_owner_spec: spec.
#[global] Hint Unfold get_pfn_count_spec: spec.
#[global] Hint Unfold set_pfn_count_spec: spec.
#[global] Hint Unfold get_pfn_map_spec: spec.
#[global] Hint Unfold set_pfn_map_spec: spec.
