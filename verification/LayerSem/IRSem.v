Require Import String.
Require Export ZArith Zquot.
Require Export List.
Require Import SMap.
Require Import PrimSem.
Require Import IR.
Require Import Bool.
Require Import AsmInsn.

Local Open Scope string_scope.
Local Open Scope Z_scope.

Record Layer :=
  mkLayer {
    State: Type;
    Init: State;

    Load: Z -> Ptr -> State -> option (Z * State);
    Store: Z -> Ptr -> Z -> State -> option State;
    Alloca: Z -> Z -> State -> option (Ptr * State);
    Free: Ptr -> State -> option State;

    GetFlag: flag -> State -> bool;
    SetFlag: flag -> bool -> State -> option State;
    GetReg: regset -> State -> option Z;
    SetReg: regset -> Z -> State -> option State;

    PrimCall: @smap (primitive State)
  }.

Class IntPtrCast :=
  {
    ptr_to_int: Ptr -> Z;
    int_to_ptr: Z -> Ptr;
    size_of_base: string -> Z;
    ptr_int_base_plus_offset:
      forall ptr,
        ptr_to_int ptr =
        (ptr_to_int (mkPtr (pbase ptr) 0)) + poffset ptr;
    ptr_int_base_range:
      forall base,
        ptr_to_int (mkPtr base 0) > 0 /\
        ptr_to_int (mkPtr base 0) + (size_of_base base) <= 18446744073709551616;
    ptr_int_diff_base:
      forall base1 base2,
        let base_p1 := mkPtr base1 0 in
        let base_p2 := mkPtr base2 0 in
        let size1 := size_of_base base1 in
        let size2 := size_of_base base2 in
        ~ (base1 = base2) ->
        ptr_to_int base_p1 >= ptr_to_int base_p2 + size2 \/
        ptr_to_int base_p2 >= ptr_to_int base_p1 + size1;
    int_ptr_same:
      forall pint,
        ptr_to_int (int_to_ptr pint) = pint
  }.

Definition temp_env := @smap value.

Section Semantics.

  Context (L: Layer).
  Context (md: module).
  Context `{IntPtrCast}.

  Notation state := L.(State).
  Notation init := L.(Init).
  Notation load := L.(Load).
  Notation store := L.(Store).
  Notation alloca := L.(Alloca).
  Notation free := L.(Free).
  Notation primcall := L.(PrimCall).
  Notation funcs := md.(functions).
  Notation structs := md.(structs).

  Fixpoint sizeof (t: typ) :=
    match t with
    | TBool => 1
    | TInt TI8 => 1
    | TInt TI16 => 2
    | TInt TI32 => 4
    | TInt TI64 => 8
    | TInt TI128 => 16
    | TPtr _ => 8
    | TNamedStruct _ size => size
    | TStruct size typelist => size
    | TArray subtype length => (sizeof subtype) * length
    | TFixedVector subtype length => (sizeof subtype) * length
    | _ => 0
    end.

  Definition int_val_of (signed: bool) (it: int_typ) (val: Z) :=
    match it, signed with
    | TI8, true => (val mod 256) - 256 * (if val mod 256 >=? 128 then 1 else 0)
    | TI8, false => (val mod 256)
    | TI16, true => (val mod 65536) - 65536 * (if val mod 65536 >=? 32768 then 1 else 0)
    | TI16, false => (val mod 65536)
    | TI32, true =>
      (val mod 4294967296) -
        4294967296 * (if val mod 4294967296 >=? 2147483648 then 1 else 0)
    | TI32, false => (val mod 4294967296)
    | TI64, true =>
      (val mod 18446744073709551616) - 18446744073709551616 *
          (if val mod 18446744073709551616 >=? 9223372036854775808 then 1 else 0)
    | TI64, false => (val mod 18446744073709551616)
    | TI128, true =>
      (val mod 340282366920938463463374607431768211456) -
        340282366920938463463374607431768211456 *
          (if val mod 340282366920938463463374607431768211456 >=? 170141183460469231731687303715884105728 then 1 else 0)
    | TI128, false => (val mod 340282366920938463463374607431768211456)
    end.

  Fixpoint get_struct_elem (n: nat) (tl: typ_list) :=
    match n, tl with
    | _, TNil => None
    | O, TCons t tl' =>
      match t with
      | TElem _ ty ofs => Some (ofs, ty)
      | _ => None
      end
    | S n', TCons t tl' => get_struct_elem n' tl'
    end.

  Fixpoint get_struct_value (n:nat) (vl: value_list) :=
    match n, vl with
    | _, VNil => None
    | O, VCons v vl' => Some v
    | S n', VCons v vl' => get_struct_value n' vl'
    end.

  Fixpoint insert_struct_value (val:value) (target: value) (indices: list Z):=
    let insert_struct_value_list :=
      fix helper (indices: list Z) (val: value) (struct: value_list) :=
        match indices with
        | nil => None
        | cons z nil =>
            match z, struct with
            | _, VNil => None
            | 0, VCons v vl' => Some (VCons val vl')
            | Z.pos p, VCons v vl' =>
                match (helper (cons (z-1) nil) val vl') with
                | Some vl'' => Some (VCons v vl'')
                | None => None
                end
            | Z.neg p, _ => None
            end
        | cons z xs =>
            match z, struct with
            | _, VNil => None
            | 0, VCons v vl' =>
                match (insert_struct_value val v xs) with
                | Some v' => Some (VCons v' vl')
                | None => None
                end
            | Z.pos p, VCons v vl' =>
                match (helper (cons (z-1) xs) val vl') with
                | Some vl'' => Some (VCons v vl'')
                | None => None
                end
            | Z.neg p, _ => None
            end
        end
    in
    match indices with
    | nil => None
    | cons z nil =>
        match target with
        | VStruct vl =>
            match (insert_struct_value_list (cons z nil) val vl) with
            | Some vl' => Some (VStruct vl')
            | None => None
            end
        | _ => None
        end
    | cons z xs =>
        match target with
        | VStruct vl =>
            match z, vl with
            | _, VNil => None
            | 0, VCons v vl' =>
                match (insert_struct_value val v xs) with
                | Some val' => Some (VStruct (VCons val' vl'))
                | None => None
                end
            | Z.pos p, VCons v vl' =>
                match (insert_struct_value_list (cons (z-1) xs) val vl') with
                | Some vl'' => Some (VStruct (VCons v vl''))
                | None => None
                end
            | Z.neg p, _ => None
            end
        | _ => None
        end
    end.

  Fixpoint int_val_list_to_list_Z (l: value_list) :=
    match l with
    | VNil => nil
    | VCons (VInt v) r => (cons v (int_val_list_to_list_Z r))
    | VCons _ _ => nil
    end.

  Fixpoint extract_value_indices (val: value) (indices: list Z) :=
    match val with
    | VStruct vl =>
      match indices with
      | nil => Some val
      | cons i indices' =>
        if i >=? 0 then
          match get_struct_value (Z.to_nat i) vl with
          | Some v => extract_value_indices v indices'
          | _ => None
          end
        else None
      end
    | _ => match indices with
           | nil => Some val
           | _ => None
           end
    end.

  Fixpoint generate_undef_struct_with_length (ty: typ) (n: nat) :=
    match n with
    | O => VNil
    | S n' => VCons VUndef (generate_undef_struct_with_length ty n')
    end.

  Fixpoint generate_undef_struct (ty: typ) :=
    let helper := fix generate_undef_struct_list (tl : typ_list) :=
      match tl with
      | TNil => VNil
      | TCons t tl' => VCons (generate_undef_struct t) (generate_undef_struct_list tl')
      end
    in
    match ty with
    | TStruct _ tl => VStruct (helper tl)
    | TArray ty len => VStruct (generate_undef_struct_with_length ty (Z.to_nat len))
    | _ => VUndef
    end.

  Fixpoint generate_undef_struct_list (tl : typ_list) :=
    match tl with
    | TNil => VNil
    | TCons t tl' => VCons (generate_undef_struct t) (generate_undef_struct_list tl')
    end.

  Definition ptr_offset (ptr: Ptr) (offs: Z) :=
    {| pbase := pbase ptr;  poffset := (poffset ptr) + offs |}.

  Definition bool_to_int (b: bool) :=
    if b then 1 else 0.

  Fixpoint refine_ptr_indices (ptr: Ptr) (ty: typ) (indices: value_list) :=
    match indices with
    | VNil => Some (VPtr ptr)
    | VCons (VInt va) indices' =>
      match ty with
      | TPtr t =>
        let ptr' := ptr_offset ptr ((sizeof t) * va) in
        refine_ptr_indices ptr' t indices'
      | TArray t n =>
        let ptr' := ptr_offset ptr ((sizeof t) * va) in
        refine_ptr_indices ptr' t indices'
      | TFixedVector t n =>
        let ptr' := ptr_offset ptr ((sizeof t) * va) in
        refine_ptr_indices ptr' t indices'
      | TStruct _ struct =>
        match get_struct_elem (Z.to_nat va) struct with
        | Some (offs, t) =>
          let ptr' := ptr_offset ptr offs in
          refine_ptr_indices ptr' t indices'
        | None => None
        end
      | TNamedStruct name size =>
        match gets name structs with
        | Some (TStruct _ struct) =>
          match get_struct_elem (Z.to_nat va) struct with
          | Some (offs, t) =>
            let ptr' := ptr_offset ptr offs in
            refine_ptr_indices ptr' t indices'
          | None => None
          end
        | _ => None
        end
      | _ => None
      end
    | _ => None
    end.

  Definition fit_val_typ (t: typ) (v: value) : option value :=
    match t, v with
    | TPtr _, VInt v => Some (VPtr (int_to_ptr v))
    | TInt IT64, VPtr p => Some (VInt (ptr_to_int p))
    | _, _ => Some v
    end.

  Fixpoint eval (te: temp_env) (val: value) {struct val} : option value :=
    match val with
    | UNSUPPORTED_VALUE => None
    | VUndef => None
    | VGlobal name =>
      match gets name md.(global_vars) with
      | Some gvar => Some (VPtr (mkPtr name 0))
      | _ => None
      end
    | VLocal name => gets name te
    | VNull => Some (VPtr (mkPtr "null" 0))
    | VExpr ty op vals =>
      match eval_list te vals with
      | Some vals' =>
        match op, vals' with
        | Cslt, [VInt va; VInt vb] => fit_val_typ ty (VBool (va <? vb))
        | Csle, [VInt va; VInt vb] => fit_val_typ ty (VBool (va <=? vb))
        | Cult, [VInt va; VInt vb] => fit_val_typ ty (VBool (va <? vb))
        | Cule, [VInt va; VInt vb] => fit_val_typ ty (VBool (va <=? vb))
        | Ceq, [VInt va; VInt vb] => fit_val_typ ty (VBool (va =? vb))
        | Ceq, [VPtr va; VPtr vb] => fit_val_typ ty (VBool (ptr_eqb va vb))
        | Cne, [VInt va; VInt vb] => fit_val_typ ty (VBool (negb (va =? vb)))
        | Cne, [VPtr va; VPtr vb] => fit_val_typ ty (VBool (negb (ptr_eqb va vb)))
        | Csgt, [VInt va; VInt vb] => fit_val_typ ty (VBool (va >? vb))
        | Csge, [VInt va; VInt vb] => fit_val_typ ty (VBool (va >=? vb))
        | Cugt, [VInt va; VInt vb] => fit_val_typ ty (VBool (va >? vb))
        | Cuge, [VInt va; VInt vb] => fit_val_typ ty (VBool (va >=? vb))
        | OAdd, [VInt va; VInt vb] => fit_val_typ ty (VInt (va + vb))
        | OAnd, [VInt va; VInt vb] => fit_val_typ ty (VInt (Z.land va vb))
        | OAnd, [VBool va; VBool vb] => fit_val_typ ty (VBool (va && vb))
        | OAshr, [VInt va; VInt vb] => fit_val_typ ty (VInt (Z.shiftr va vb))
        | OLshr, [VInt va; VInt vb] => fit_val_typ ty (VInt (Z.shiftr va vb))
        | OMul, [VInt va; VInt vb] => fit_val_typ ty (VInt (va * vb))
        | OOr, [VInt va; VInt vb] => fit_val_typ ty (VInt (Z.lor va vb))
        | OOr, [VBool va; VBool vb] => fit_val_typ ty (VBool (va || vb))
        | OSdiv, [VInt va; VInt vb] => if vb =? 0 then None else fit_val_typ ty (VInt (Z.quot va vb))
        | OSrem, [VInt va; VInt vb] => if vb =? 0 then None else fit_val_typ ty (VInt (Z.rem va vb))
        | OShl, [VInt va; VInt vb] => fit_val_typ ty (VInt (Z.shiftl va vb))
        | OSub, [VInt va; VInt vb] => fit_val_typ ty (VInt (va - vb))
        | OUdiv, [VInt va; VInt vb] => if vb =? 0 then None else fit_val_typ ty (VInt (Z.quot va vb))
        | OUrem, [VInt va; VInt vb] => if vb =? 0 then None else fit_val_typ ty (VInt (Z.rem va vb))
        | OXor, [VInt va; VInt vb] => fit_val_typ ty (VInt (Z.lxor va vb))
        | OXor, [VBool va; VBool vb] => fit_val_typ ty (VBool (xorb va vb))
        | OSExt t, [VInt va] => fit_val_typ ty (VInt va)
        | OTrunc t, [VInt va] => fit_val_typ ty (VInt va)
        | OZExt t, [VInt va] => fit_val_typ ty (VInt va)
        | OZExt t, [VBool b] => fit_val_typ ty (VInt (if b then 1 else 0))
        | OBitCast t, [VPtr ptr] => fit_val_typ ty (VPtr ptr)
        | OIntToPtr t, [VInt va] => fit_val_typ ty (VPtr (int_to_ptr va))
        | OPtrToInt, [VPtr ptr] => fit_val_typ ty (VInt (ptr_to_int ptr))
        | OGetElementPtr t, VCons (VPtr ptr) indices => refine_ptr_indices ptr t indices
        | OExtractValue, VCons v indices => extract_value_indices v (int_val_list_to_list_Z indices)
        | OExtractElem, [v; VInt z] => extract_value_indices v (z :: nil)
        | OInsertElem, [target; v; VInt z] => insert_struct_value v target (cons  z nil)
        | OInsertValue, (VCons target (VCons v indices)) =>
          insert_struct_value v target (int_val_list_to_list_Z indices)
        | _, _ => None
        end
      | _ => None
      end
    | _ => Some val
    end
  with
    eval_list (te: temp_env) (vals: value_list) {struct vals} : option value_list :=
    match vals with
    | [] => Some []
    | VCons val' vals' =>
      match eval te val', eval_list te vals' with
      | Some val'', Some vals'' =>
        Some (VCons val'' vals'')
      | _, _ => None
      end
    end.

  Inductive out_status :=
  | out_normal
  | out_break
  | out_return (ret: option value).

  Fixpoint list_to_value_list (vlist: list value) : value_list :=
    match vlist with
    | nil => VNil
    | val :: vlist' =>
      VCons val (list_to_value_list vlist')
    end.

  Fixpoint init_temp_env (args: list (string * typ)) (arglist: value_list) (te: temp_env) :=
    match args, arglist with
    | nil, VNil => Some te
    | (name, ty) :: args', VCons arg arglist' =>
      init_temp_env args' arglist' (sets name arg te)
    | _, _ => None
    end.

  Fixpoint free_vars (vars: list string) (te: @smap value) (st: state) : option state :=
    match vars with
    | nil => Some st
    | v :: vars' =>
      match gets v te with
      | Some (VPtr vptr) =>
        match free vptr st with
        | Some st' =>
          free_vars vars' te st'
        | None => None
        end
      | _ => None
      end
    end.

  Definition load_store_typ (t: typ) : Z :=
    match t with
    | TPtr _ => 0
    | TI8 => 1
    | TI16 => 2
    | TI32 => 4
    | TI64 => 8
    | _ => -1
    end.

  Inductive exec: (list instruction) -> temp_env -> state -> temp_env -> out_status -> state -> Prop :=
  | exec_nil:
    forall te st,
      exec nil te st te out_normal st
  | exec_alloca:
    forall ty assign align te st ptr te' st',
      alloca (load_store_typ ty) align st = Some (ptr, st') ->
      sets assign (VPtr ptr) te = te' ->
      exec (IAlloca (TPtr ty) assign align :: nil) te st te' out_normal st'
  | exec_assign:
    forall ty assign val te st v te',
      eval te val = Some v ->
      sets assign v te = te' ->
      exec (IAssign ty assign val :: nil) te st te' out_normal st
  | exec_binop:
    forall ty assign op a b te st val te',
      eval te (VExpr ty op [a ; b]) = Some val ->
      sets assign val te = te' ->
      exec (IBinOp ty assign op a b :: nil) te st te' out_normal st
  | exec_break:
    forall te st,
      exec (IBreak :: nil) te st te out_break st
  | exec_continue:
    forall te st,
      exec (IContinue :: nil) te st te out_normal st
  | exec_getelemptr:
    forall ty assign tptr val indices val' te st te',
      eval te (VExpr ty (OGetElementPtr tptr) (VCons val indices)) = Some val' ->
      sets assign val' te = te' ->
      exec (IGetElemPtr ty assign tptr val indices :: nil) te st te' out_normal st
  | exec_if:
    forall cond b t_blk f_blk te st te' out st',
      eval te cond = Some (VBool b) ->
      (b = true -> exec t_blk te st te' out st') ->
      (b = false -> exec f_blk te st te' out st') ->
      exec (IIf cond t_blk f_blk :: nil) te st te' out st'
  | exec_load:
    forall ty assign ptr align te st vptr te' v val st',
      eval te ptr = Some (VPtr vptr) ->
      load (load_store_typ ty) vptr st = Some (v, st') ->
      fit_val_typ ty (VInt v) = Some val ->
      sets assign val te = te' ->
      exec (ILoad ty assign ptr align :: nil) te st te' out_normal st'
  | exec_loop_normal:
    forall body te st te' st' te'' out st'',
      exec body te st te' out_normal st' ->
      exec (ILoop body :: nil) te' st' te'' out st'' ->
      exec (ILoop body :: nil) te st te'' out st''
  | exec_loop_break:
    forall body te st te' st',
      exec body te st te' out_break st' ->
      exec (ILoop body :: nil) te st te' out_normal st'
  | exec_loop_return:
    forall body te st te' ret st',
      exec body te st te' (out_return ret) st' ->
      exec (ILoop body :: nil) te st te' (out_return ret) st'
  | exec_unaryop:
    forall ty assign op a te st val te',
      eval te (VExpr ty op [a]) = Some val ->
      sets assign val te = te' ->
      exec (IUnaryOp ty assign op a :: nil) te st te' out_normal st
  | exec_return_void:
    forall te st,
      exec (IReturn TVoid None :: nil) te st te (out_return None) st
  | exec_return_value:
    forall ty val te st val',
      eval te val = Some val' ->
      exec (IReturn ty (Some val) :: nil) te st te (out_return (Some val')) st
  | exec_select:
    forall ty assign cond b tv fv te st val te',
      eval te cond = Some (VBool b) ->
      (b = true -> eval te tv = Some val) ->
      (b = false -> eval te fv = Some val) ->
      sets assign val te = te' ->
      exec (ISelect ty assign cond tv fv :: nil) te st te' out_normal st
  | exec_store:
    forall ty ptr val align te st vptr val' val'' st',
      eval te ptr = Some (VPtr vptr) ->
      eval te val = Some val' ->
      fit_val_typ TI64 val' = Some (VInt val'') ->
      store (load_store_typ ty) vptr val'' st = Some st' ->
      exec (IStore ty ptr val align :: nil) te st te out_normal st'
  | exec_call_void:
    forall fname args arglist te st st',
    eval_list te args = Some arglist ->
    exec_func fname arglist st st' None ->
    exec (ICall TVoid None (VGlobal fname) args :: nil) te st te out_normal st'
  | exec_call_ret:
    forall ty assign fname args arglist te st val te' st',
    eval_list te args = Some arglist ->
    exec_func fname arglist st st' (Some val) ->
    sets assign val te = te' ->
    exec (ICall ty (Some assign) (VGlobal fname) args :: nil) te st te' out_normal st'
  | exec_list:
    forall i insts te st te' st' out te'' out'' st'',
      exec (i :: nil) te st te' out st' ->
      (out = out_normal -> exec insts te' st' te'' out'' st'') ->
      (out <> out_normal -> te'' = te' /\ st'' = st' /\ out'' = out) ->
      exec (i :: insts) te st te'' out'' st''
  | exec_extract_value:
     forall ty assign var val indices val' te te' st,
     eval te var = Some val ->
     eval te (VExpr ty OExtractValue (VCons val indices)) = Some val' ->
     sets assign val' te = te' ->
     exec (IExtractValue ty assign var (int_val_list_to_list_Z indices) :: nil) te st te' out_normal st
  | exec_extract_elem:
    forall ty assign var val indice val' te te' st,
    eval te var = Some val ->
    eval te (VExpr ty OExtractElem [val;indice]) = Some val' ->
    sets assign val' te = te' ->
    exec (IExtractElem ty assign var indice :: nil) te st te' out_normal st
  | exec_insert_elem:
    forall ty assign var target te te' st val val' val'' indice,
    eval te var = Some val ->
    eval te target = Some val' ->
    eval te (VExpr ty OInsertElem [val';val;indice])= Some val'' ->
    sets assign val'' te = te' ->
    exec (IInsertElem ty assign target var indice :: nil) te st te' out_normal st
  | exec_insert_value:
    forall ty assign var target te te' st val val' val'' indices,
    eval te var = Some val ->
    eval te target = Some val' ->
    eval te (VExpr ty OInsertValue (VCons val' (VCons val indices)))= Some val'' ->
    sets assign val'' te = te' ->
    exec (IInsertValue ty assign target var (int_val_list_to_list_Z indices) :: nil) te st te' out_normal st
  | exec_drop_tempvar:
    forall lst te st te' te'' out st',
      (forall s v, gets s te'' = Some v -> gets s te' = Some v) ->
      exec lst te st te' out st' ->
      exec lst te st te'' out st'

  with exec_func: string -> value_list -> state -> state -> option value -> Prop :=
  | exec_primitive_call:
    forall fname t f sem (fprim: gets fname primcall = Some (PRIM state t f sem)),
      forall arglist st st' ret,
        sem arglist st ret st' ->
        exec_func fname arglist st st' ret
  | exec_func_call:
    forall fname func arglist body te st st' te' ret st'',
      gets fname funcs = Some func ->
      init_temp_env func.(fargs) arglist nil = Some te ->
      func.(fbody) = Some body ->
      exec body te st te' (out_return ret) st' ->
      free_vars func.(falloca_vars) te' st' = Some st'' ->
      exec_func fname arglist st st'' ret.
 
  (*
  | IFreeze (t: typ) (assign: string) (val: value)
  | IShuffleVec (t: typ) (assign: string) (operands: list value)
  *)

  Section LoopSem.

    Inductive loop_ind (body: list instruction):
        nat -> temp_env -> state -> temp_env -> state -> out_status -> Prop :=
    | loop_O:
      forall te st,
      loop_ind body O te st te st out_normal
    | loop_normal:
      forall n te st te' st' te'' st'',
      loop_ind body n te st te' st' out_normal ->
      exec body te' st' te'' out_normal st'' ->
      loop_ind body (S n) te st te'' st'' out_normal
    | loop_break:
      forall n te st te' st' te'' st'',
      loop_ind body n te st te' st' out_normal ->
      exec body te' st' te'' out_break st'' ->
      loop_ind body (S n) te st te'' st'' out_break
    | loop_return:
      forall n te st te' st' te'' st'' ret,
      loop_ind body n te st te' st' out_normal ->
      exec body te' st' te'' (out_return ret) st'' ->
      loop_ind body (S n) te st te'' st'' (out_return ret).

    Lemma loop_ind_exec_first:
      forall n body te st te' st' te'' st'' out,
        exec body te st te' out_normal st' ->
        loop_ind body n te' st' te'' st'' out ->
        loop_ind body (S n) te st te'' st'' out.
    Proof.
      induction n.
      - intros. inversion H1. subst. econstructor. constructor. assumption.
      - intros. destruct out; inversion H1; subst;
         (econstructor; try eapply IHn; eassumption).
    Qed.

    Lemma loop_ind_exec_first2:
      forall n body te st te'' st'' out,
        loop_ind body (S (S n)) te st te'' st'' out ->
        (exists te' st',
          exec body te st te' out_normal st' /\
          loop_ind body (S n) te' st' te'' st'' out).
    Proof.
      induction n.
      - intros. inversion H0; subst; inversion H2; subst; inversion H4; subst;
        repeat eexists; repeat (try eassumption; try econstructor).
      - intros.
        inversion H0; subst; eapply IHn in H2; destruct H2 as (? & ? & ? & ?);
        repeat eexists; try eassumption; try econstructor; try eassumption.
    Qed.     

    Lemma finite_loop_sem:
      forall n,
        (forall body te st te' st', loop_ind body n te st te' st' out_break ->
          exec (ILoop body :: nil) te st te' out_normal st') /\
        (forall body te st te' st' ret, loop_ind body n te st te' st' (out_return ret) ->
          exec (ILoop body :: nil) te st te' (out_return ret) st').
    Proof.
      induction n.
      - split. intros. inversion H0. intros. inversion H0.
      - split.
        + intros. inversion H0; subst.
          destruct n.
          * inversion H2; subst.
            eapply exec_loop_break. assumption.
          * eapply loop_ind_exec_first2 in H0. destruct H0 as (? & ? & ? & ?).
            eapply exec_loop_normal. eapply H0. eapply IHn. assumption.
        + intros. inversion H0; subst.
          destruct n.
          * inversion H3; subst.
            eapply exec_loop_return. assumption.
          * eapply loop_ind_exec_first2 in H0. destruct H0 as (? & ? & ? & ?).
            eapply exec_loop_normal. eapply H0. eapply IHn. assumption.
    Qed.

    Variables (body: list instruction) (tenv: temp_env)
              (P Q: temp_env -> state -> Prop)
              (R: temp_env -> state -> option value-> Prop).

    Record Loop : Type := mkLoop {
      W: Type;
      lt: W -> W -> Prop;
      lt_wf: well_founded lt;
      I: temp_env -> state -> W -> Prop;
      P_implies_I: forall te st, P te st -> exists n0, I te st n0;
      I_invariant:
        forall te st n, I te st n ->
            exists out te' st', exec body te st te' out st' /\
              (out = out_normal -> exists n', lt n' n /\ I te' st' n') /\
              (out = out_break -> Q te' st') /\
              (forall v, out = out_return v -> R te' st' v)
    }.

    Theorem LoopTermination: Loop -> forall te st, P te st ->
      (exists out te' st', exec (ILoop body :: nil) te st te' out st' /\
        ((exists v, out = out_return v /\ R te' st' v) \/ (out = out_normal /\ Q te' st'))).
    Proof.
      intros lp. destruct lp; simpl.
      intros.
      generalize (P_implies_I0 te st H0).
      intro.
      destruct H1 as [n1].
      clear H0.
      revert te st H1.
      induction n1 using (well_founded_ind lt_wf0).

      intros.
     
      pose proof (I_invariant0 te st n1 H1) as I_invariant.
      destruct I_invariant as (out & te' & st' & Inv1 & Inv2 & Inv3 & Inv4).
     
      destruct out.

      (* out = Out_normal *)
      destruct Inv2 as [n'].  auto.
      destruct H2.
      generalize (H0 n' H2 te' st' H3).
      intro.
      destruct H4 as (out & te'0 & st'0 & H4).
      destruct H4. destruct H5.
        (* finalout = Out_return *)
        destruct H5 as [v].  destruct H5.
        esplit. esplit. esplit.
        split.
        eapply exec_loop_normal.
        eassumption.
        eassumption.
        subst. left. exists v. auto.
        (* finalout = Out_normal *)
        destruct H5.
        esplit. esplit. esplit.
        split.
        eapply exec_loop_normal.
        eassumption. eassumption.
        subst. right. auto.

      (* out = out_break *)
      exists out_normal, te', st'.
      split.
      eapply exec_loop_break.
      eassumption.
      right.
      split.
      trivial.
      apply Inv3.
      trivial.

      (* out = out_return *)
      exists (out_return ret).
      exists te'.
      exists st'.
      split.
      eapply exec_loop_return.
      eassumption.
      left.
      exists ret.  auto.
    Qed.

  End LoopSem.

End Semantics.

#[global] Hint Unfold ptr_offset sizeof bool_to_int: sem.
