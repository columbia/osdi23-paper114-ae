Require Import CommonDeps.
Require Import DataTypes.
Require Import TrapHandler.Spec.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Parameter TrapHandler_init: RData.

Section TrapHandler_Layer.

  Context `{int_ptr: IntPtrCast}.

  Definition TrapHandler_load (size: Z) (p: Ptr) (st: RData) : option (Z * RData) := None.

  Definition TrapHandler_store (size: Z) (p: Ptr) (val: Z) (st: RData) : option RData := None.

  Definition TrapHandler_alloca (size: Z) (align: Z) (st: RData) : option (Ptr * RData) := None.

  Definition TrapHandler_free (p: Ptr) (st: RData) : option RData := None.

  Definition TrapHandler_get_reg (reg: regset) (st: RData) : option Z := None.

  Definition TrapHandler_set_reg (reg: regset) (val: Z) (st: RData) : option RData := None.

  Definition TrapHandler_get_flag (f: flag) (st: RData) : bool := false.

  Definition TrapHandler_set_flag (f: flag) (val: bool) (st: RData) : option RData := None.

  Definition TrapHandler_layer :=
    {|
      State := RData;
      Init := TrapHandler_init;
      Load := TrapHandler_load;
      Store := TrapHandler_store;
      Alloca := TrapHandler_alloca;
      Free := TrapHandler_free;
      GetReg := TrapHandler_get_reg;
      SetReg := TrapHandler_set_reg;
      GetFlag := TrapHandler_get_flag;
      SetFlag := TrapHandler_set_flag;
      PrimCall :=
          ("handle_host_hvc", prim handle_host_hvc_spec)
          :: ("handle_host_stage2_fault", prim handle_host_stage2_fault_spec)
          :: nil
    |}.

End TrapHandler_Layer.
