Require Import String.
Require Export ZArith.
Require Export SMap.
Require Import Bool.
Require Import Asm.AsmInsn.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Inductive int_typ : Type :=
| TI8
| TI16
| TI32
| TI64
| TI128.

Inductive typ : Type :=
 (** the types that are not supported yet, e.g. float *)
| UNKNOWN_TYPE
(** boolean *)
| TBool
(** integer of different byte size *)
| TInt (t: int_typ)
(** void type that used in function return type *)
| TVoid
(** function type that includes the return type and a list of argument type *)
| TFunction (rettype: typ) (arglist: typ_list)
(** pointer type that include the subtype of the underlying element *)
| TPtr (subtype: typ)
(** struct type that consists of a list of TElem *)
| TStruct (size: Z) (typelist: typ_list)
| TElem (name: string) (t: typ) (ofs: Z)
(** struct type that denoted by the struct name and the size of the struct.
    With the name, one can lookup the struct composition from a LLVM module *)
| TNamedStruct (name: string) (size: Z)
(** array type that include the element type and the size of the array *)
| TArray (subtype: typ) (length: Z)
(** fixedvector type that should behave the same as an array *)
| TFixedVector (subtype: typ) (length: Z)
| TCode (size: Z)
with typ_list :=
| TNil
| TCons (head: typ) (tail: typ_list).

Global Coercion TInt : int_typ >-> typ.

Record Ptr : Type :=
  mkPtr {
    pbase: string;
    poffset: Z
  }.

Definition ptr_eqb (p1 p2: Ptr) :=
  match p1, p2 with
  | mkPtr b1 o1, mkPtr b2 o2 =>
    andb (String.eqb b1 b2) (Z.eqb o1 o2)
  end.

Inductive cmp_op : Type :=
| Cslt
| Csle
| Cult
| Cule
| Ceq
| Cne
| Csgt
| Csge
| Cugt
| Cuge.

Inductive binary_op : Type :=
| OAdd
| OAnd
| OAshr
| OCmp (c: cmp_op)
| OFadd
| OFdiv
| OFmul
| OFsub
| OLshr
| OMul
| OOr
| OSdiv
| OSrem
| OShl
| OSub
| OUdiv
| OUrem
| OXor.

Inductive unary_op : Type :=
| OBitCast (ty: typ)
| OFPExt (ty: typ)
| OFPToSI (ty: typ)
| OFPToUI (ty: typ)
| OFPTrunc (ty: typ)
| OFneg
| OIntToPtr (ty: typ)
| OPtrToInt
| OSExt (ty: typ)
| OSIToFP (ty: typ)
| OTrunc (ty: typ)
| OUIToFP (ty: typ)
| OZExt (ty: typ).

Global Coercion OCmp : cmp_op >-> binary_op.

Inductive inst_op : Type :=
| OGetElementPtr (ty: typ)
| OExtractValue
| OInsertValue
| OExtractElem
| OInsertElem.

Inductive expr_op : Type :=
| BinaryOp (op: binary_op)
| UnaryOp (op: unary_op)
| InstOp (op: inst_op).

Global Coercion BinaryOp : binary_op >-> expr_op.
Global Coercion UnaryOp : unary_op >-> expr_op.
Global Coercion InstOp : inst_op >-> expr_op.

Inductive value : Type :=
| UNSUPPORTED_VALUE
| VUndef
| VNull
| VAggZero
| VGlobal (name: string)
| VLocal (name: string)
| VInt (val: Z)
| VBool (b: bool)
| VPtr (val: Ptr)
| VExpr (ty: typ) (op: expr_op) (operands: value_list)
| VStruct (struct: value_list) (* Also for Array *)
with value_list :=
| VNil
| VCons (head: value) (tail: value_list).

Notation "[ ]" := VNil (format "[ ]").
Notation "[ x ]" := (VCons x VNil).
Notation "[ x ; y ; .. ; z ]" := (VCons x (VCons y .. (VCons z VNil) ..))
  (format "[ '[' x ; '/' y ; '/' .. ; '/' z ']' ]").

Notation "[[ ]]" := TNil (format "[[ ]]").
Notation "[[ x ]]" := (TCons x TNil).
Notation "[[ x ; y ; .. ; z ]]" := (TCons x (TCons y .. (TCons z TNil) ..))
  (format "[[ '[' x ; '/' y ; '/' .. ; '/' z ']' ]]").

Inductive instruction : Type :=
| UNKNOWN_INSTRUCTION
| IAlloca (t: typ) (assign: string) (align: Z)
| IAssign (t: typ) (assign: string) (val: value)
| IBinOp (t: typ) (assign: string) (op: expr_op) (a: value) (b: value)
| IContinue
| IBreak
| ICall (t: typ) (assign: option string) (func: value) (args: value_list)
| IExtractElem (t: typ) (assign: string) (val: value) (idx: value)
| IExtractValue (t: typ) (assign: string) (val: value) (idx: list Z)
| IFreeze (t: typ) (assign: string) (val: value)
| IGetElemPtr (t: typ) (assign: string) (tptr: typ) (val: value) (indices: value_list)
| IIf (cond: value) (true_block: list instruction) (false_block: list instruction)
| IInsertElem (t: typ) (assign: string) (target: value) (val: value) (idx: value)
| IInsertValue (t: typ) (assign: string) (target: value) (val: value) (idx: list Z)
| ILoad (t: typ) (assign: string) (ptr: value) (align: Z)
| ILoop (body: list instruction)
| IUnaryOp (t: typ) (assign: string) (op: expr_op) (a: value)
| IReturn (t: typ) (val: option value)
| ISelect (t: typ) (assign: string) (cond: value) (true_val: value) (false_val: value)
| IShuffleVec (t: typ) (assign: string) (operands: value_list)
| IStore (t: typ) (ptr: value) (val: value) (align: Z)
| IUnreachable.

Definition function_body := list instruction.

Record function :=
  mkFunction {
    fname : string;
    rettype : typ;
    fargs : @smap typ;
    falloca_vars : list string;
    fbody : option function_body
  }.

Record global_var :=
  mkGlobVar {
    vname : string;
    vtype : typ;
    vconst : bool;
    vinitializer : option value;
    valign: Z
  }.

Record module :=
  mkModule {
    structs : @smap typ;
    global_vars : @smap global_var;
    functions : @smap function;
    asm_procedures : @smap AsmInsn.procedure;
  }.
