Require Import Coqlib.
Require Import SMap.
Require Import Notations.
Require Import AsmInsn.
Require Import LayerSem.IRSem.
Require Import LayerSem.IR.
Require Import RecordUpdate.

Section Semantics.

  Context (L: Layer).
  Context (md: module).
  Context `{IntPtrCast}.

  Notation gvars := md.(global_vars).
  Notation funcs := md.(functions).
  Notation procs := md.(asm_procedures).
  Notation state := L.(State).
  Notation init := L.(Init).
  Notation get_flag := L.(GetFlag).
  Notation set_flag := L.(SetFlag).
  Notation get_reg := L.(GetReg).
  Notation set_reg := L.(SetReg).
  Notation load := L.(Load).
  Notation store := L.(Store).

  Definition next_instr (pc: Ptr) := ptr_offset pc 4.

  Definition find_instr (pc: Ptr) : option asm_instruction :=
    when proc == gets (pc.(pbase)) procs;
    let insts := proc.(pbody) in
    nth_error insts (Z.to_nat (Z.div pc.(poffset) 4)).

  Notation u64_carry v := (v >? 18446744073709551615).

  Definition Z64_lsl (v: Z) (n: Z) : Z := Zmod (Z.shiftl v n) (Z.pow 2 64).

  Definition signed (v: Z) : Z :=
    if zlt v (Z.pow 2 63) then v else v - (Z.pow 2 64).

  Definition add_with_carry (x: Z) (y: Z) (carry_in: Z) : (Z * (bool * bool * bool * bool)) :=
    let sum := x + y + carry_in in
    let ssum := (signed x) + (signed y) + carry_in in
    let res := Zmod sum (Z.pow 2 64) in
    let n := Z.testbit res 63 in
    let z := res =? 0 in
    let c := negb (res =? sum) in
    let v := negb ((signed res) =? ssum) in
    (res, (n, z, c, v)).

  Definition set_flags flags st : option state :=
    match flags with
      (n, z, c, v) =>
        when st1 == (set_flag Fn n st);
        when st2 == (set_flag Fz z st1);
        when st3 == (set_flag Fc c st2);
        when st4 == (set_flag Fv v st3);
        Some st4
    end.

  Definition exec_bfm (reg1: gpreg) (reg2: gpreg) imms immr st : option state :=
    rely (imms <= 63) /\ (imms >= 0);
    rely (immr <= 63) /\ (immr >= 0);
    when dst == get_reg reg1 st;
    when src == get_reg reg2 st;
    if imms >=? immr then
      let wmask := ((Z.shiftl 1 (imms - immr + 1)) - 1) in
      let bot := Z.lor (Z.land dst (Z.lnot wmask)) (Z.land (Z.shiftr src immr) wmask) in
      set_reg reg1 bot st
    else
      let wmask := ((Z.shiftl 1 (imms + 1)) - 1) in
      let res := Z.lor (Z.land dst (Z.lnot (Z.shiftl wmask (64 - immr)))) (Z.shiftl (Z.land src wmask) (64 - immr)) in
      set_reg reg1 res st.

  Definition cond_hold (cond: asmcond) (st: state): bool :=
    match cond with
      ACeq => get_flag Fz st
    | ACne => negb (get_flag Fz st)
    | ACcs => get_flag Fc st
    | ACcc => negb (get_flag Fc st)
    | ACmi => get_flag Fn st
    | ACpl => negb (get_flag Fn st)
    | ACvs => get_flag Fv st
    | ACvc => negb (get_flag Fv st)
    | AChi => (get_flag Fc st) && (negb (get_flag Fz st))
    | ACls => negb ((get_flag Fc st) && (get_flag Fz st))
    | ACge => eqb (get_flag Fn st) (get_flag Fv st)
    | AClt => eqb (negb (get_flag Fn st)) (get_flag Fv st)
    | ACgt => (negb (get_flag Fz st)) && (eqb (get_flag Fn st) (get_flag Fv st))
    | ACle => negb ((negb (get_flag Fz st)) && (eqb (get_flag Fn st) (get_flag Fv st)))
    | _ => true
    end.

  Definition eval_op (src: op) (st: state) : option (Z * state) :=
    match src with
    | RegOp r => when v == get_reg r st; Some (v, st)
    | Lit i => Some (i, st)
    | MemOp r imm idx => None
    end.

  Definition bytes_of_regsize (sz: regsize) : Z :=
    match sz with
    | SZ32 => 4
    | SZ64 => 8
    end.

  Definition load_mem_op (src: op_with_ext) (sz: Z) (n: Z) (st: state) : option (list Z * state) :=
    match src with
		| MemOp reg imm idx =>
		when addr == get_reg reg st;
		match idx with
		| PreIndex =>
			when v, st' == load sz (int_to_ptr (addr + imm)) st;
			if n =? 1 then Some (v :: nil, st')
			else if n =? 2 then
			when v2, st'' == load sz (int_to_ptr (addr + imm + sz)) st';
			Some (v :: v2 :: nil, st'')
			else None
		| PostIndex =>
			when st == set_reg reg (addr + imm) st;
			when v, st' == load sz (int_to_ptr addr) st;
			if n =? 1 then Some (v :: nil, st')
			else if n =? 2 then
			when v2, st'' == load sz (int_to_ptr (addr + imm + sz)) st';
			Some (v :: v2 :: nil, st'')
			else None
		| _ => None
		end
		| _ => None
	end.

  Definition store_mem_op (dst: op) (sz: Z) (vals: list Z) (st: state) : option state :=
    match dst with
		| MemOp reg imm idx =>
		when addr == get_reg reg st;
		match idx with
		| PreIndex =>
			match vals with
			| v :: nil =>
			when st' == store sz (int_to_ptr (addr + imm)) v st;
			Some st'
			| v :: v2 :: nil =>
			when st' == store sz (int_to_ptr (addr + imm)) v st;
			when st'' == store sz (int_to_ptr (addr + imm + sz)) v2 st';
			Some st''
			| _ => None
			end
		| PostIndex =>
			when st == set_reg reg (addr + imm) st;
			match vals with
			| v :: nil =>
			when st' == store sz (int_to_ptr addr) v st;
			Some st'
			| v :: v2 :: nil =>
			when st' == store sz (int_to_ptr addr) v st;
			when st'' == store sz (int_to_ptr (addr + sz)) v2 st';
			Some st''
			| _ => None
			end
		| _ => None
		end
		| _ => None
	end.


  Definition eval_op_with_extend (src: op_with_ext) (st: state) : option (Z * state) :=
    match src with
    | OpWithoutExt op => eval_op op st
    | EXT op ext =>
      match eval_op op st, ext with
      | Some (i, st), (SXTB n) => Some (i, st)
      | Some (i, st), (SXTH n) => Some (i, st)
      | Some (i, st), (SXTW n) => Some (i, st)
      | Some (i, st), (SXTX n) => Some (i, st)
      | Some (i, st), (UXTB n) => Some (i, st)
      | Some (i, st), (UXTH n) => Some (i, st)
      | Some (i, st), (UXTW n) => Some (i, st)
      | Some (i, st), (UXTX n) => Some (i, st)
      | Some (i, st), (LSL n) => Some (Z.shiftl i n, st)
      | Some (i, st), (LSR n) => Some (Z.shiftr i n, st)
      | Some (i, st), (ASR n) => Some (Z.shiftr i n, st)
      | _, _ => None
      end
    end.

  Definition sizeof_gpreg (reg: gpreg) :=
    match reg with
    | Rx0 sz | Rx1 sz | Rx2 sz | Rx3 sz
    | Rx4 sz | Rx5 sz | Rx6 sz | Rx7 sz
    | Rx8 sz | Rx9 sz | Rx10 sz | Rx11 sz
    | Rx12 sz | Rx13 sz | Rx14 sz
    | Rx15 sz | Rx16 sz | Rx17 sz
    | Rx18 sz | Rx19 sz | Rx20 sz
    | Rx21 sz | Rx22 sz | Rx23 sz
    | Rx24 sz | Rx25 sz | Rx26 sz
    | Rx27 sz | Rx28 sz | Rx29 sz
    | Rx30 sz => sz
    | Rxzr => SZ64
    end.

  Definition exec_insn (insn: asm_instruction) (pc: Ptr) (st: state) : option (Ptr * state) :=
    match insn with
    | Iadd (RegOp dst) src1 src2 =>
      when i, st == eval_op src1 st;
      when j, st == eval_op_with_extend src2 st;
      let (res, _) := add_with_carry i j 0 in
      when st' == set_reg dst res st;
      Some (next_instr pc, st)
    | Iadr reg (sym, _) =>
      when st' == set_reg reg (ptr_to_int (mkPtr sym 0)) st;
      Some (next_instr pc, st')
    | Iadrp reg (sym, _) =>
      when st' == set_reg reg ((ptr_to_int (mkPtr sym 0)) mod 4096) st;
      Some (next_instr pc, st')
    | Ibr reg =>  
      when adr == get_reg reg st;
      Some (int_to_ptr adr, st)
    | Ibc cond (sym, offs) => 
      if cond_hold cond st then Some (mkPtr sym offs, st)
      else Some (next_instr pc, st)
    | Icbnz reg (sym, offs) => 
      when v == get_reg reg st;
      if v =? 0 then Some (next_instr pc, st)
      else Some (mkPtr sym offs, st)
    | Icbz reg (sym, offs) => 
      when v == get_reg reg st;
      if v =? 0 then Some (mkPtr sym offs, st)
      else Some (next_instr pc, st)
    | Icmp reg1 op2 =>
      when i == get_reg reg1 st;
      when j, st == eval_op_with_extend op2 st;
      let (_, nzcv) := add_with_carry i ((Z.pow 2 64) - j) 0 in
      when st' == set_flags nzcv st;
      Some (next_instr pc, st')
    | Iccmp cond reg1 op2 nzcv =>
      if cond_hold cond st then
        when i == get_reg reg1 st;
        when j, st == eval_op op2 st;
        let (_, nzcv) := add_with_carry i ((Z.pow 2 64) - j) 0 in
        when st' == set_flags nzcv st;
        Some (next_instr pc, st')
      else
        let n := Z.testbit nzcv 0 in
        let z := Z.testbit nzcv 1 in
        let c := Z.testbit nzcv 2 in
        let v := Z.testbit nzcv 4 in
        when st' == set_flags (n, z, c, v) st;
        Some (next_instr pc, st')
    | Iclz Rd Rm =>
      when v == get_reg Rm st;
      let n_zeros := (if v =? 0 then 64 else 63 - (Z.log2 v)) in
      when st' == set_reg Rd n_zeros st;
      Some (next_instr pc, st')
    | Ieor Rd Rn op2 =>
      when v1 == get_reg Rn st;
      when v2, st == eval_op_with_extend op2 st;
      when st' == set_reg Rd (Z.lxor v1 v2) st;
      Some (next_instr pc, st')
    | Ildp dst1 dst2 memop =>
      match sizeof_gpreg dst1, sizeof_gpreg dst2 with
      | SZ32, SZ32 =>
        match load_mem_op memop 4 2 st with
        | Some (v1 :: v2 :: nil, st) =>
          when st' == set_reg dst1 v1 st;
          when st'' == set_reg dst2 v2 st';
          Some (next_instr pc, st'')
        | _ => None
        end
      | SZ64, SZ64 =>
        match load_mem_op memop 8 2 st with
        | Some (v1 :: v2 :: nil, st) =>
          when st' == set_reg dst1 v1 st;
          when st'' == set_reg dst2 v2 st';
          Some (next_instr pc, st'')
        | _ => None
        end
      | _, _ => None
      end
    | Ildr dst op sym =>
      let sz := (match sizeof_gpreg dst with SZ32 => 4 | SZ64 => 8 end) in
      match sym, op with
      | Some (base, offs), None =>
        when v, st == load sz (mkPtr base offs) st;
        when st' == set_reg dst v st;
        Some (next_instr pc, st')
      | None, Some (MemOp r n i) =>
        match load_mem_op (MemOp r n i) sz 1 st with
        | Some (v :: nil, st) =>
          when st' == set_reg dst v st;
          Some (next_instr pc, st')
        | _ => None
        end
      | None, Some op =>
        when addr, st == eval_op_with_extend op st;
        when v, st == load sz (int_to_ptr addr) st;
        when st' == set_reg dst v st;
        Some (next_instr pc, st')
	  | _, _ => None
      end
    | Imov reg1 op2 =>
      when v, st == eval_op op2 st;
      when st' == set_reg reg1 v st;
      Some (next_instr pc, st')
    | Imrs reg sys =>
      when v == get_reg sys st;
      when st' == set_reg reg v st;
      Some (next_instr pc, st')
    | Imsr sys op =>
      when v, st == eval_op op st;
      when st' == set_reg sys v st;
      Some (next_instr pc, st')
    | Istp src1 src2 memop =>
      when v1 == get_reg src1 st;
      when v2 == get_reg src2 st;
      match sizeof_gpreg src1, sizeof_gpreg src2 with
      | SZ32, SZ32 =>
        when st' == store_mem_op memop 4 (v1 :: v2 :: nil) st;
        Some (next_instr pc, st')
      | SZ64, SZ64 =>
        when st' == store_mem_op memop 8 (v1 :: v2 :: nil) st;
        Some (next_instr pc, st')
      | _, _ => None
      end
    | Iret =>
      when ret_pc == get_reg (Rx30 SZ64) st;
      Some (int_to_ptr ret_pc, st)
    | _ => None
    end.

  (* | Ibfm reg1 reg2 imms immr => next_instr2 pc (exec_bfm reg1 reg2 imms immr st) *)
  (* | Ibfxil reg1 reg2 lsb width => next_instr2 pc (exec_bfm reg1 reg2 lsb (lsb + width - 1) st) *)
  (* | Ilsr reg1 reg2 op3 =>
      when vreg2 == Z_of_reg reg2 st;
      let operand2 := Zmod vreg2 (Z.pow 64 2) in
      match op3 with
        Lit imm =>
          let res := Zmod (Z.shiftl operand2 imm) (Z.pow 64 2) in
          next_instr2 pc (set_reg reg1 (VInt res) st)
      | GPReg r =>
          when vreg3 == Z_of_reg r st;
          let res := Zmod (Z.shiftl operand2 (Zmod vreg3 (Z.pow 64 2))) (Z.pow 64 2) in
          next_instr2 pc (set_reg reg1 (VInt res) st)
      | _ => None
      end *)

  Inductive exec_step: (state * Ptr) -> (state * Ptr) -> Prop :=
  | exec_one_step :
    forall st pc st' pc' insn (Hinstr: find_instr pc = Some insn)
           (Hexec: exec_insn insn pc st = Some (pc', st')),
        exec_step (st, pc) (st', pc').

  Inductive exec_step_star: (state * Ptr) -> (state * Ptr) -> Prop :=
  | exec_stop : forall p, exec_step_star p p
  | exec_trans :
    forall p p' p'',
      exec_step p p' ->
      exec_step_star p' p'' ->
      exec_step_star p p''.

Inductive exec_proc (name: string) (st: state) (st': state) : Prop :=
| exec_proc_intro :
  forall pc'
    (Hexec: exec_step_star (st, mkPtr name 0) (st', pc'))
    (Hret_pc: get_reg (Rx30 SZ64) st = Some (ptr_to_int pc')),
    exec_proc name st st'.

End Semantics.

(*
Section AsmTest.

  Local Open Scope Z.
  Local Open Scope string.
  (* Icmp (reg1: iregsp) (op2: op) (ext: option extend) *)

  Definition icmp_insn := Icmp (Rx0 SZ64) (Lit 10).

  Definition p_test_proc :=
    {|
      ploc := 0;
      pname := "test_proc";
      pbody := Some
                 (Iadd (Rx0 SZ64) (RegOp (Rx1 SZ64)) (RegOp (Rx2 SZ64))
                    :: Ibr (Rx3 SZ64)
                    :: nil)
    |}.

  Definition p_test_proc2 :=
    {|
      ploc := 0;
      pname := "test_proc2";
      pbody := Some
                 (Iadd (Rx4 SZ64) (Rx5 SZ64) (RegOp (Rx6 SZ64))
                    :: nil)
    |}.

  Definition p_test_bc :=
    {|
      ploc := 0;
      pname := "test_bc";
      pbody := Some
                 (Iadd (Rx0 SZ64) (Rx1 SZ64) (RegOp (Rx2 SZ64))
                    :: Ibc ACeq ("test_proc", 1)
                    :: nil)
    |}.

  Definition module :=
    {| structs := nil;
      global_vars := nil;
      functions := nil;
      asm_procedures := (("test_proc", p_test_proc)
                           :: ("test_proc2", p_test_proc2)
                           :: ("test_bc", p_test_bc)
                           :: nil)
    |}.

  Context `{int_ptr: IntPtrCast}.
  Context (L: Layer).

  Record RRegs :=
    mkRRegs {
        x0: value; x1: value; x2: value; x3: value; x4: value; x5: value; x6: value; x7: value; x8: value; x9: value;
        x10: value; x11: value; x12: value; x13: value; x14: value; x15: value; x16: value; x17: value; x18: value;
        x19: value; x20: value; x21: value; x22: value; x23: value; x24: value; x25: value; x26: value; x27: value;
        x28: value; x29: value; x30: value;

        sp: value;

        v_esr_el2: value; v_vbar_el2: value
      }.

  Instance etaRRegs : Settable _ := settable! mkRRegs<
    x0; x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16;
    x17; x18; x19; x20; x21; x22; x23; x24; x25; x26; x27; x28; x29; x30; sp;
    v_esr_el2; v_vbar_el2
  >.

  Record RData :=
    mkRData {
        reg_state: RRegs;
      }.

  Instance etaRData : Settable _ := settable! mkRData<reg_state>.
  Notation reg_init_val := (VInt 0).
  Definition sync_initial_pc := (mkPtr "el1_sync" 0).
  Definition rreg_init :=
    {|
      x0 := reg_init_val; x1 := reg_init_val; x2 := reg_init_val; x3 := reg_init_val; x4 := reg_init_val; x5 := reg_init_val; x6 := reg_init_val; x7 :=reg_init_val;
      x8 := reg_init_val; x9 := reg_init_val; x10 := reg_init_val; x11 := reg_init_val; x12 := reg_init_val; x13 := reg_init_val; x14 := reg_init_val; x15 :=reg_init_val;
      x16 := reg_init_val; x17 := reg_init_val; x18 := reg_init_val; x19 := reg_init_val; x20 := reg_init_val; x21 := reg_init_val; x22 := reg_init_val; x23 :=reg_init_val;
      x24 := reg_init_val; x25 := reg_init_val; x26 := reg_init_val; x27 := reg_init_val; x28 := reg_init_val; x29 := reg_init_val; x30 := reg_init_val;

      sp := reg_init_val;

      v_esr_el2 := reg_init_val; v_vbar_el2 := reg_init_val;
    |}.

  Definition rdata_init :=
    {| reg_state := rreg_init |}.

  Notation get_reg_match r sz st :=
    match (st.(reg_state)).(r), sz with
    | VInt v, SZ64 => Some (VInt (v mod 18446744073709551616))
    | VInt v, SZ32 => Some (VInt (v mod 4294967296))
    | _, _ => None
    end.

  Definition r_get_reg (r: regset) (st: RData) : option value :=
    match r with
    | Rgp r => 
      match r with
      | Rx0 sz => get_reg_match x0 sz st
      | Rx1 sz => get_reg_match x1 sz st
      | Rx2 sz => get_reg_match x2 sz st
      | Rx3 sz => get_reg_match x3 sz st
      | Rx4 sz => get_reg_match x4 sz st
      | Rx5 sz => get_reg_match x5 sz st
      | Rx6 sz => get_reg_match x6 sz st
      | Rx7 sz => get_reg_match x7 sz st
      | _ => None
      end
    | Rsp => Some (st.(reg_state)).(sp)
    | Rsys sys => 
      match sys with
      | Resr_el2 => Some (st.(reg_state).(v_esr_el2))
      | Rvbar_el2 => Some (st.(reg_state).(v_vbar_el2))
      | _ => None
      end
    end.

  Notation set_reg_match r sz val st :=
    match val, sz with
      VInt v, SZ64 => Some (st <| reg_state := st.(reg_state) <| r := (VInt v) |> |>)
    | VInt v, SZ32 => Some (st <| reg_state := st.(reg_state) <| r := (VInt (int_val_of false TI32 v)) |> |>)
    | VPtr _, SZ64 => Some (st <| reg_state := st.(reg_state) <| r := val |>|>)
    | _, _ => None
    end.

  Definition r_set_reg (r: regset) (v: value) (st: RData) : option RData :=
    match r with
    | Rx0 sz => set_reg_match x0 sz v st
    | Rx1 sz => set_reg_match x1 sz v st
    | Rx2 sz => set_reg_match x2 sz v st
    | Rx3 sz => set_reg_match x3 sz v st
    | Rx4 sz => set_reg_match x4 sz v st
    | Rx5 sz => set_reg_match x5 sz v st
    | Rx6 sz => set_reg_match x6 sz v st
    | Rx7 sz => set_reg_match x7 sz v st
    | Rsp =>
          match v with
            VInt _ =>
              Some (st <| reg_state := st.(reg_state) <| sp := v |>|>)
          | _ => None
          end
        end
    | _ => None
    end.

  Definition proc_ptr2 := mkPtr "test_proc2"%string 0 0.

  Definition test_proc (st: RData) :=
    match st.(reg_state).(x2), st.(reg_state).(x1),
      st.(reg_state).(x5), st.(reg_state).(x6)
    with
      VInt vx2, VInt vx1, VInt vx5, VInt vx6 =>
        let sum := vx2 + vx1 in
        let sum2 := vx5 + vx6 in
        Some (st <| reg_state :=
                st.(reg_state) <| x0 := (VInt (Zmod sum (Z.pow_pos 2 64))) |>
                               <| x4 := (VInt (Zmod sum2 (Z.pow_pos 2 64))) |>
                 |>)
    | _, _, _, _ => None
    end.


  Parameter alloca: Z -> Z -> RData -> option (Ptr * RData).
  Parameter free: Ptr -> RData -> option RData.
  Parameter get_flag: flag -> RData -> bool.
  Parameter set_flag: flag -> bool -> RData -> option RData.
  Parameter load_rdata: Z -> Ptr -> RData -> option (Z * RData).
  Parameter store_rdata: Z -> Ptr -> Z -> RData -> option RData.

  Definition Rec_bottom := 
    {|
      State := RData;
      Init := rdata_init;
      Load := load_rdata;
      Store := store_rdata;
      Alloca := alloca;
      Free := free;
      GetReg := r_get_reg;
      SetReg := r_set_reg;
      GetFlag := get_flag;
      SetFlag := set_flag;
      PrimCall := nil
    |}.
(*
  Lemma f_test_proc_correctness:
    forall st st',
      GetReg Rec_bottom (Rx3 SZ64) st = Some (VPtr (TCode 0) proc_ptr2) ->
      test_proc st = Some st' ->
      exec_proc_func Rec_bottom module "test_proc" st st'.
  Proof.
    intros. unfold test_proc in H0. repeat simpl_hyp H0.
    eapply exec_proc. reflexivity. reflexivity.
    eapply exec_asm_list. eapply exec_add. simpl.
    assert (val0 + val + 0 = val + val0) by lia.
    rewrite C. rewrite C1. rewrite H1. reflexivity.
    econstructor. destruct st. simpl.
    unfold GetReg in H. simpl in H. rewrite H. reflexivity.
    econstructor. reflexivity. reflexivity.
    econstructor. simpl. rewrite C5. rewrite C3.
    rewrite <- H0. destruct st. simpl.
    assert (val1 + val2 + 0 = val1 + val2) by lia. rewrite H1.
    reflexivity.
  Qed.
*)
  Definition ESR_ELx_EC_SHIFT := 26.
  Definition ESR_ELx_EC_HVC64 := 22.
  Definition ESR_ELx_EC_HVC32 := 18.
  Definition ESR_ELx_EC_DABT_LOW := 36.
  Definition ESR_ELx_EC_IABT_LOW := 32.
  Definition HVC_GET_VECTORS := 5.
  Definition ARM_EXCEPTION_TRAP := 2.
  Definition ARM_EXCEPTION_IRQ := 0.
  Definition ARM_EXCEPTION_EL1_SERROR := 1.
  Definition ARM_EXIT_WITH_SERROR_BIT := 31.
  Definition PSR_F_BIT := 64.
  Definition PSR_I_BIT := 128.
  Definition PSR_A_BIT := 256.
  Definition PSR_D_BIT := 512.
  Definition PSR_MODE_EL1h := 5.

  Definition el1_sync_insn : list asm_instruction :=
    (Imrs (Rx0 SZ64) Resr_el2)
      :: (Ilsr (Rx0 SZ64) (Rx0 SZ64) ESR_ELx_EC_SHIFT)
      :: (Icmp  (Rx0 SZ64) ESR_ELx_EC_HVC64 None)
      :: (Iccmp (Rx0 SZ64) ESR_ELx_EC_HVC32 4 ACeq)
      :: (Ibc ACeq (mkSymbol "el1_sync"%string 192))
      :: (Icmp (Rx0 SZ64) ESR_ELx_EC_DABT_LOW None)
      :: (Ibc ACeq (mkSymbol "el1_sync"%string 36))
      :: (Icmp (Rx0 SZ64) ESR_ELx_EC_IABT_LOW None)
      :: (Ibc ACne (mkSymbol "el1_trap"%string 0))
      :: (Imrs (Rx1 SZ64) Rtpidr_el2)
      :: (Icbnz (Rx1 SZ64) (mkSymbol "el1_trap"%string 0))
      :: (Ildp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Istp (Rx30 SZ64) Rxzr (mkMemop Rsp 16 PostIndex))
      :: (Istp (Rx28 SZ64) (Rx29 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx26 SZ64) (Rx27 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx24 SZ64) (Rx25 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx22 SZ64) (Rx23 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx20 SZ64) (Rx21 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx18 SZ64) (Rx19 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx16 SZ64) (Rx17 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx14 SZ64) (Rx15 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx12 SZ64) (Rx13 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx10 SZ64) (Rx11 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx8 SZ64) (Rx9 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx6 SZ64) (Rx7 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx4 SZ64) (Rx5 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx2 SZ64) (Rx3 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Imov (Rx1 SZ64) Rsp)
      :: (Imov (Rx0 SZ64) (Rx30 SZ64))
      :: (Ibl (mkSymbol "handle_host_stage2_fault"%string 0))
      :: (Ildp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx2 SZ64) (Rx3 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx4 SZ64) (Rx5 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx6 SZ64) (Rx7 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx8 SZ64) (Rx9 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx10 SZ64) (Rx11 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx12 SZ64) (Rx13 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx14 SZ64) (Rx15 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx16 SZ64) (Rx17 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx18 SZ64) (Rx19 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx20 SZ64) (Rx21 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx22 SZ64) (Rx23 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx24 SZ64) (Rx25 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx26 SZ64) (Rx27 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx28 SZ64) (Rx29 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx30 SZ64) Rxzr (mkMemop Rsp 16 PostIndex))
      :: Ieret
      :: (Imrs (Rx1 SZ64) Rtpidr_el2)
      :: (Icbnz (Rx1 SZ64) (mkSymbol "el1_hvc_guest"%string 0))
      :: (Ildp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Icmp (Rx0 SZ64) HVC_GET_VECTORS None)
      :: (Ibc ACne (mkSymbol "el1_sync"%string 220))
      :: (Imrs (Rx0 SZ64) Rvbar_el2)
      :: Ieret
      :: (Istp (Rx30 SZ64) Rxzr (mkMemop Rsp 16 PostIndex))
      :: (Istp (Rx28 SZ64) (Rx29 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx26 SZ64) (Rx27 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx24 SZ64) (Rx25 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx22 SZ64) (Rx23 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx20 SZ64) (Rx21 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx18 SZ64) (Rx19 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx16 SZ64) (Rx17 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx14 SZ64) (Rx15 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx12 SZ64) (Rx13 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx10 SZ64) (Rx11 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx8 SZ64) (Rx9 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx6 SZ64) (Rx7 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx4 SZ64) (Rx5 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx2 SZ64) (Rx3 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Istp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PreIndex))
      :: (Imov (Rx1 SZ64) Rsp)
      :: (Ibl (mkSymbol "handle_host_hvc"%string 0))
      :: (Ildp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx2 SZ64) (Rx3 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx4 SZ64) (Rx5 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx6 SZ64) (Rx7 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx8 SZ64) (Rx9 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx10 SZ64) (Rx11 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx12 SZ64) (Rx13 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx14 SZ64) (Rx15 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx16 SZ64) (Rx17 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx18 SZ64) (Rx19 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx20 SZ64) (Rx21 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx22 SZ64) (Rx23 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx24 SZ64) (Rx25 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx26 SZ64) (Rx27 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx28 SZ64) (Rx29 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx30 SZ64) Rxzr (mkMemop Rsp 16 PostIndex))
      :: Ieret
      :: nil.

  Definition p_el1_sync :=
    {|
      pname := "el1_sync"%string;
      ploc := 0;
      pbody := Some el1_sync_insn;
    |}.

  Definition guest_enter_insn : list asm_instruction :=
    (Istp (Rx19 SZ64) (Rx20 SZ64) (mkMemop (Rx1 SZ64) 152 PreIndex))
      :: (Istp (Rx21 SZ64) (Rx22 SZ64) (mkMemop (Rx1 SZ64) 168 PreIndex))
      :: (Istp (Rx23 SZ64) (Rx24 SZ64) (mkMemop (Rx1 SZ64) 184 PreIndex))
      :: (Istp (Rx25 SZ64) (Rx26 SZ64) (mkMemop (Rx1 SZ64) 200 PreIndex))
      :: (Istp (Rx27 SZ64) (Rx28 SZ64) (mkMemop (Rx1 SZ64) 216 PreIndex))
      :: (Istp (Rx29 SZ64) (Rx30 SZ64) (mkMemop (Rx1 SZ64) 216 PreIndex))
      :: (Istr (Rx1 SZ64) (mkMemop Rsp (-16)%Z PreIndex))
      :: (Imov (Rx18 SZ64) (Rx0 SZ64))
      :: (Ildp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx2 SZ64) (Rx3 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx4 SZ64) (Rx5 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx6 SZ64) (Rx7 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx8 SZ64) (Rx9 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx10 SZ64) (Rx11 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx12 SZ64) (Rx13 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx14 SZ64) (Rx15 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx16 SZ64) (Rx17 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx19 SZ64) (Rx20 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx21 SZ64) (Rx22 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx23 SZ64) (Rx24 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx25 SZ64) (Rx26 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx27 SZ64) (Rx28 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildp (Rx29 SZ64) (Rx30 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Ildr (Rx18 SZ64) (mkMemop (Rx18 SZ64) 144 PostIndex) None)
      :: Ieret
      :: Idsb
      :: Iisb
      :: nil.

  Definition p_guest_enter :=
    {|
      pname := "guest_enter"%string;
      ploc := 0;
      pbody := Some guest_enter_insn;
    |}.

  Definition guest_exit_insn : list asm_instruction :=
    (Istp (Rx2 SZ64) (Rx3 SZ64) (mkMemop (Rx1 SZ64) 16 PreIndex))
      :: (Ildp (Rx2 SZ64) (Rx3 SZ64) (mkMemop Rsp 16 PostIndex))
      :: (Istp (Rx2 SZ64) (Rx3 SZ64) (mkMemop (Rx1 SZ64) 0 PreIndex))
      :: (Istp (Rx4 SZ64) (Rx5 SZ64) (mkMemop (Rx1 SZ64) 32 PreIndex))
      :: (Istp (Rx6 SZ64) (Rx7 SZ64) (mkMemop (Rx1 SZ64) 48 PreIndex))
      :: (Istp (Rx8 SZ64) (Rx9 SZ64) (mkMemop (Rx1 SZ64) 64 PreIndex))
      :: (Istp (Rx10 SZ64) (Rx11 SZ64) (mkMemop (Rx1 SZ64) 80 PreIndex))
      :: (Istp (Rx12 SZ64) (Rx13 SZ64) (mkMemop (Rx1 SZ64) 96 PreIndex))
      :: (Istp (Rx14 SZ64) (Rx15 SZ64) (mkMemop (Rx1 SZ64) 112 PreIndex))
      :: (Istp (Rx16 SZ64) (Rx17 SZ64) (mkMemop (Rx1 SZ64) 128 PreIndex))
      :: (Istr (Rx18 SZ64) (mkMemop (Rx1 SZ64) 144 PreIndex))
      :: (Istp (Rx19 SZ64) (Rx20 SZ64) (mkMemop (Rx1 SZ64) 152 PreIndex))
      :: (Istp (Rx21 SZ64) (Rx22 SZ64) (mkMemop (Rx1 SZ64) 168 PreIndex))
      :: (Istp (Rx23 SZ64) (Rx24 SZ64) (mkMemop (Rx1 SZ64) 184 PreIndex))
      :: (Istp (Rx25 SZ64) (Rx26 SZ64) (mkMemop (Rx1 SZ64) 200 PreIndex))
      :: (Istp (Rx27 SZ64) (Rx28 SZ64) (mkMemop (Rx1 SZ64) 216 PreIndex))
      :: (Istp (Rx29 SZ64) (Rx30 SZ64) (mkMemop (Rx1 SZ64) 232 PreIndex))
      :: (Ildr (Rx2 SZ64) (mkMemop Rsp 16 PostIndex) None)
      :: (Ildp (Rx19 SZ64) (Rx20 SZ64) (mkMemop (Rx2 SZ64) 152 PostIndex))
      :: (Ildp (Rx21 SZ64) (Rx22 SZ64) (mkMemop (Rx2 SZ64) 168 PostIndex))
      :: (Ildp (Rx23 SZ64) (Rx24 SZ64) (mkMemop (Rx2 SZ64) 184 PostIndex))
      :: (Ildp (Rx25 SZ64) (Rx26 SZ64) (mkMemop (Rx2 SZ64) 200 PostIndex))
      :: (Ildp (Rx27 SZ64) (Rx28 SZ64) (mkMemop (Rx2 SZ64) 216 PostIndex))
      :: (Ildp (Rx29 SZ64) (Rx30 SZ64) (mkMemop (Rx2 SZ64) 232 PostIndex))
      :: (Imrs (Rx2 SZ64) Relr_el2)
      :: (Imrs (Rx3 SZ64) Resr_el2)
      :: (Imrs (Rx4 SZ64) Rspsr_el2)
      :: (Imov (Rx5 SZ64) (Rx0 SZ64))
      :: nil.

  Definition p_guest_exit :=
    {|
      pname := "guest_exit"%string;
      ploc := 0;
      pbody := Some guest_exit_insn;
    |}.

  Definition asm_module :=
    {| structs := nil;
      global_vars := nil;
      functions := nil;
      asm_procedures := (("el1_sync"%string, p_el1_sync)
                           :: ("guest_enter"%string, p_guest_enter)
                           :: ("guest_exit"%string, p_guest_exit)
                           :: nil)
    |}.

  Definition asm_layer :=
    {|
      State := RData;
      Init := rdata_init;
      Load := load_rdata;
      Store := store_rdata;
      Alloca := alloca;
      Free := free;
      GetReg := r_get_reg;
      SetReg := r_set_reg;
      GetFlag := get_flag;
      SetFlag := set_flag;
      PrimCall := nil
    |}.

  Print eval.
  

  Definition el1_sync (st: RData * Ptr) :=
    when st == eval asm_layer (Imrs (Rx0 SZ64) Resr_el2) st;
    when st == eval asm_layer (Ilsr (Rx0 SZ64) (Rx0 SZ64) ESR_ELx_EC_SHIFT) st;
    when st == eval asm_layer (Icmp  (Rx0 SZ64) ESR_ELx_EC_HVC64 None) st;
    when st == eval asm_layer (Iccmp (Rx0 SZ64) ESR_ELx_EC_HVC32 4 ACeq) st;
    when st == eval asm_layer (Ibc ACeq (mkSymbol "el1_sync"%string 192)) st;
    when st == eval asm_layer (Icmp (Rx0 SZ64) ESR_ELx_EC_DABT_LOW None) st;
    when st == eval asm_layer (Ibc ACeq (mkSymbol "el1_sync"%string 36)) st;
    when st == eval asm_layer (Icmp (Rx0 SZ64) ESR_ELx_EC_IABT_LOW None) st;
    when st == eval asm_layer (Ibc ACne (mkSymbol "el1_trap"%string 0)) st;
    when st == eval asm_layer (Imrs (Rx1 SZ64) Rtpidr_el2) st;
    when st == eval asm_layer (Icbnz (Rx1 SZ64) (mkSymbol "el1_trap"%string 0)) st;
    when st == eval asm_layer (Ildp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Istp (Rx30 SZ64) Rxzr (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Istp (Rx28 SZ64) (Rx29 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx26 SZ64) (Rx27 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx24 SZ64) (Rx25 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx22 SZ64) (Rx23 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx20 SZ64) (Rx21 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx18 SZ64) (Rx19 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx16 SZ64) (Rx17 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx14 SZ64) (Rx15 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx12 SZ64) (Rx13 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx10 SZ64) (Rx11 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx8 SZ64) (Rx9 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx6 SZ64) (Rx7 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx4 SZ64) (Rx5 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx2 SZ64) (Rx3 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Imov (Rx1 SZ64) Rsp) st;
    when st == eval asm_layer (Imov (Rx0 SZ64) (Rx30 SZ64)) st;
    when st == eval asm_layer (Ibl (mkSymbol "handle_host_stage2_fault"%string 0)) st;
    when st == eval asm_layer (Ildp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx2 SZ64) (Rx3 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx4 SZ64) (Rx5 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx6 SZ64) (Rx7 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx8 SZ64) (Rx9 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx10 SZ64) (Rx11 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx12 SZ64) (Rx13 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx14 SZ64) (Rx15 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx16 SZ64) (Rx17 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx18 SZ64) (Rx19 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx20 SZ64) (Rx21 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx22 SZ64) (Rx23 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx24 SZ64) (Rx25 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx26 SZ64) (Rx27 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx28 SZ64) (Rx29 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx30 SZ64) Rxzr (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer Ieret st;
    when st == eval asm_layer (Imrs (Rx1 SZ64) Rtpidr_el2) st;
    when st == eval asm_layer (Icbnz (Rx1 SZ64) (mkSymbol "el1_hvc_guest"%string 0)) st;
    when st == eval asm_layer (Ildp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Icmp (Rx0 SZ64) HVC_GET_VECTORS None) st;
    when st == eval asm_layer (Ibc ACne (mkSymbol "el1_sync"%string 220)) st;
    when st == eval asm_layer (Imrs (Rx0 SZ64) Rvbar_el2) st;
    when st == eval asm_layer Ieret st;
    when st == eval asm_layer (Istp (Rx30 SZ64) Rxzr (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Istp (Rx28 SZ64) (Rx29 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx26 SZ64) (Rx27 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx24 SZ64) (Rx25 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx22 SZ64) (Rx23 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx20 SZ64) (Rx21 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx18 SZ64) (Rx19 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx16 SZ64) (Rx17 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx14 SZ64) (Rx15 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx12 SZ64) (Rx13 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx10 SZ64) (Rx11 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx8 SZ64) (Rx9 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx6 SZ64) (Rx7 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx4 SZ64) (Rx5 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx2 SZ64) (Rx3 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PreIndex)) st;
    when st == eval asm_layer (Imov (Rx1 SZ64) Rsp) st;
    when st == eval asm_layer (Ibl (mkSymbol "handle_host_hvc"%string 0)) st;
    when st == eval asm_layer (Ildp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx2 SZ64) (Rx3 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx4 SZ64) (Rx5 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx6 SZ64) (Rx7 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx8 SZ64) (Rx9 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx10 SZ64) (Rx11 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx12 SZ64) (Rx13 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx14 SZ64) (Rx15 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx16 SZ64) (Rx17 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx18 SZ64) (Rx19 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx20 SZ64) (Rx21 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx22 SZ64) (Rx23 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx24 SZ64) (Rx25 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx26 SZ64) (Rx27 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx28 SZ64) (Rx29 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx30 SZ64) Rxzr (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer Ieret st;
    Some st.

  Definition guest_enter (st: RData * Ptr) :=
      when st == eval asm_layer (Istp (Rx19 SZ64) (Rx20 SZ64) (mkMemop (Rx1 SZ64) 152 PreIndex)) st;
      when st == eval asm_layer (Istp (Rx21 SZ64) (Rx22 SZ64) (mkMemop (Rx1 SZ64) 168 PreIndex)) st;
      when st == eval asm_layer (Istp (Rx23 SZ64) (Rx24 SZ64) (mkMemop (Rx1 SZ64) 184 PreIndex)) st;
      when st == eval asm_layer (Istp (Rx25 SZ64) (Rx26 SZ64) (mkMemop (Rx1 SZ64) 200 PreIndex)) st;
      when st == eval asm_layer (Istp (Rx27 SZ64) (Rx28 SZ64) (mkMemop (Rx1 SZ64) 216 PreIndex)) st;
      when st == eval asm_layer (Istp (Rx29 SZ64) (Rx30 SZ64) (mkMemop (Rx1 SZ64) 216 PreIndex)) st;
      when st == eval asm_layer (Istr (Rx1 SZ64) (mkMemop Rsp (-16)%Z PreIndex)) st;
      when st == eval asm_layer (Imov (Rx18 SZ64) (Rx0 SZ64)) st;
      when st == eval asm_layer (Ildp (Rx0 SZ64) (Rx1 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx2 SZ64) (Rx3 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx4 SZ64) (Rx5 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx6 SZ64) (Rx7 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx8 SZ64) (Rx9 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx10 SZ64) (Rx11 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx12 SZ64) (Rx13 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx14 SZ64) (Rx15 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx16 SZ64) (Rx17 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx19 SZ64) (Rx20 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx21 SZ64) (Rx22 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx23 SZ64) (Rx24 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx25 SZ64) (Rx26 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx27 SZ64) (Rx28 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildp (Rx29 SZ64) (Rx30 SZ64) (mkMemop Rsp 16 PostIndex)) st;
      when st == eval asm_layer (Ildr (Rx18 SZ64) (mkMemop (Rx18 SZ64) 144 PostIndex) None) st;
      when st == eval asm_layer Ieret st;
      when st == eval asm_layer Idsb st;
      when st == eval asm_layer Iisb st;
      Some st.

  Definition guest_exit (st: RData * Ptr) :=
    when st == eval asm_layer (Istp (Rx2 SZ64) (Rx3 SZ64) (mkMemop (Rx1 SZ64) 16 PreIndex)) st;
    when st == eval asm_layer (Ildp (Rx2 SZ64) (Rx3 SZ64) (mkMemop Rsp 16 PostIndex)) st;
    when st == eval asm_layer (Istp (Rx2 SZ64) (Rx3 SZ64) (mkMemop (Rx1 SZ64) 0 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx4 SZ64) (Rx5 SZ64) (mkMemop (Rx1 SZ64) 32 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx6 SZ64) (Rx7 SZ64) (mkMemop (Rx1 SZ64) 48 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx8 SZ64) (Rx9 SZ64) (mkMemop (Rx1 SZ64) 64 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx10 SZ64) (Rx11 SZ64) (mkMemop (Rx1 SZ64) 80 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx12 SZ64) (Rx13 SZ64) (mkMemop (Rx1 SZ64) 96 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx14 SZ64) (Rx15 SZ64) (mkMemop (Rx1 SZ64) 112 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx16 SZ64) (Rx17 SZ64) (mkMemop (Rx1 SZ64) 128 PreIndex)) st;
    when st == eval asm_layer (Istr (Rx18 SZ64) (mkMemop (Rx1 SZ64) 144 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx19 SZ64) (Rx20 SZ64) (mkMemop (Rx1 SZ64) 152 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx21 SZ64) (Rx22 SZ64) (mkMemop (Rx1 SZ64) 168 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx23 SZ64) (Rx24 SZ64) (mkMemop (Rx1 SZ64) 184 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx25 SZ64) (Rx26 SZ64) (mkMemop (Rx1 SZ64) 200 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx27 SZ64) (Rx28 SZ64) (mkMemop (Rx1 SZ64) 216 PreIndex)) st;
    when st == eval asm_layer (Istp (Rx29 SZ64) (Rx30 SZ64) (mkMemop (Rx1 SZ64) 232 PreIndex)) st;
    when st == eval asm_layer (Ildr (Rx2 SZ64) (mkMemop Rsp 16 PostIndex) None) st;
    when st == eval asm_layer (Ildp (Rx19 SZ64) (Rx20 SZ64) (mkMemop (Rx2 SZ64) 152 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx21 SZ64) (Rx22 SZ64) (mkMemop (Rx2 SZ64) 168 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx23 SZ64) (Rx24 SZ64) (mkMemop (Rx2 SZ64) 184 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx25 SZ64) (Rx26 SZ64) (mkMemop (Rx2 SZ64) 200 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx27 SZ64) (Rx28 SZ64) (mkMemop (Rx2 SZ64) 216 PostIndex)) st;
    when st == eval asm_layer (Ildp (Rx29 SZ64) (Rx30 SZ64) (mkMemop (Rx2 SZ64) 232 PostIndex)) st;
    when st == eval asm_layer (Imrs (Rx2 SZ64) Relr_el2) st;
    when st == eval asm_layer (Imrs (Rx3 SZ64) Resr_el2) st;
    when st == eval asm_layer (Imrs (Rx4 SZ64) Rspsr_el2) st;
    when st == eval asm_layer (Imov (Rx5 SZ64) (Rx0 SZ64)) st;
    Some st.

  Ltac simpl_regstate :=
    repeat match goal with
      [ |- context [ ?st <| reg_state := ?X |> <| reg_state := ?Y |> ] ] =>
        replace ( st <| reg_state := X|> <| reg_state := Y|> )
        with (st <| reg_state := Y |>) by reflexivity
    | [ |- context [ reg_state ?st <| ?R := ?X |> <| ?R := ?Y |> ] ] =>
        replace ( reg_state st <| R := X |> <| R := Y |> )
        with ( reg_state st <| R := Y |>) by reflexivity
    | _ => idtac
      end.

  (*
  Ltac BANG :=
    match goal with
    | [ |- context [ exec_asm ?L ?M (?I :: nil) ?st ?st' ] ] =>
        econstructor
    | [ |- context [ exec_asm ?L ?M (?I :: ?cons) ?st ?st' ] ] =>
        eapply exec_asm_list; [ econstructor | BANG ]
    | _ => idtac
    end.
  *)
  Definition el1_sync_pc := (mkPtr "el1_sync"%string 0 0).

  Opaque Z.shiftl.
  Lemma el1_sync_insn_correct:
    forall pc st pc' st',
      initial_state asm_layer asm_module "el1_sync"%string (st,pc) ->
      final_state asm_layer asm_module "el1_sync"%string (st',pc') ->
      exec_step_star asm_layer asm_module (st,pc) (st', pc').
  Proof.
    intros. econstructor. 
    unfold bind in H. repeat simpl_hyp H.
    destruct p.
    eapply exec_trans. eapply exec_one_step. 
    unfold find_instr2. simpl. reflexivity. apply C.
    destruct p0.
    eapply exec_trans. eapply exec_one_step.
    unfold find_instr2. simpl. reflexivity.
    

    match goal with
    [|- exec_step_star _ _ _ _] => eapply exec_trans
    | [|- exec_step _ _ ?p0 _] => destruct p0; eapply exec_one_step
    | [|- find_instr2 _ _ = Some _] => unfold find_instr2; simpl; reflexivity
    | [ H: eval _ _ _ = Some _ |- eval _ _ _ = Some ?p ] =>
      apply H; tryif reflexivity then clear H else idtac
    | _ => idtac
    end.
    unfold find_instr2. simpl. reflexivity.
    match goal with
    [|- exec_step_star _ _ _ _] => eapply exec_trans
    | [|- exec_step _ _ ?p0 _] => destruct p0; eapply exec_one_step
    | [|- find_instr2 _ _ = Some _] => unfold find_instr2; simpl; reflexivity
    | [ H: eval _ _ _ = Some _ |- eval _ _ _ = Some ?p ] =>
      apply H; tryif reflexivity then clear H else idtac
    | _ => idtac
    end.

 

    eapply exec_trans. eapply exec_one_step.
    unfold find_instr2. simpl. reflexivity. apply C.


    eapply exec_trans.

    repeat
    match reverse goal with
      [ H: eval _ ?I ?st = Some ?st' |- eval _ ?I ?st = Some ?st'' ] =>
        rewrite H; tryif reflexivity then clear H else idtac
    | _ => idtac
    end. auto.
  Defined.

  Lemma guest_enter_insn_correct:
    forall st st',
      guest_enter st = Some st' ->
      exec_proc_func asm_layer asm_module "guest_enter" st st'.
  Proof.
    intros. unfold guest_enter in H. unfold bind in H. repeat simpl_hyp H.
    eapply exec_proc. reflexivity. reflexivity. unfold guest_enter_insn.
    BANG;
    repeat
    match reverse goal with
      [ H: eval _ ?I ?st = Some ?st' |- eval _ ?I ?st = Some ?st'' ] =>
        rewrite H; tryif reflexivity then clear H else idtac
    | _ => idtac
    end. auto.
  Defined.

  Lemma guest_exit_insn_correct:
    forall st st',
      guest_exit st = Some st' ->
      exec_proc_func asm_layer asm_module "guest_exit" st st'.
  Proof.
    intros. unfold guest_exit in H. unfold bind in H. repeat simpl_hyp H.
    eapply exec_proc. reflexivity. reflexivity. unfold guest_exit_insn.
    BANG;
    repeat
    match reverse goal with
      [ H: eval _ ?I ?st = Some ?st' |- eval _ ?I ?st = Some ?st'' ] =>
        rewrite H; tryif reflexivity then clear H else idtac
    | _ => idtac
    end. auto.
  Defined.

End AsmTest.
*)

  (* Definition eval (insn: asm_instruction) (st: state) : option state :=
    match insn with
      Iadd op1 op2 op3 op4 sz1 sz2 => (* Experimental *)
        match op1, op2, op3, op4, sz1, sz2 with
          (* add imm *)
        | _, _, Lit imm, _, _, _ =>
            if imm >? 4095 then None else
              match get_gpsp op2 st with
                Some (VInt add1) =>
                  match op4 with
                    None =>
                      let (res, _) := add_with_carry add1 imm 0 in
                      next_instr (set_gpsp op1 (VInt res) st)
                  | Some ext =>
                      match ext.(ext_t) with
                      | LSL =>
                          let imm := Z.shiftl imm 12 in
                          let (res, _) := add_with_carry add1 imm 0 in
                          if ext.(amount) =? 12 then 
                          next_instr (set_gpsp op1 (VInt res) st)
                          else None
                      | _ => None
                      end
                  end
              | _ => None
              end
        | _, _, _, _, _, _ =>
            (* op2 must be extended *)
            if (sz1 =? 64) && (sz2 =? 32) then
              match get_gpsp op2 st with
                Some (VInt add1) =>
                  match op4 with
                    None => None
                  | Some ext =>
                      match ext.(ext_t) with
                      (* LSL *)
                      | SXTX =>
                          match get_gpsp op3 st with
                            Some (VInt reg3) =>
                              let add2 := Z64_lsl reg3 ext.(amount) in
                              let (res, _) := add_with_carry add1 add2 0 in
                              next_instr (set_gpsp op1 (VInt res) st)
                          | _ => None
                          end
                      | _ => None (* Other extend type not supported yet*)
                      end
                  end
              | _ => None
              end
            else
              if (sz1 =? 64) && (sz2 =? 64) then
                match get_gpsp op3 st with
                  Some (VInt reg3) =>
                    match op4 with
                      None =>
                        match get_gpsp op2 st with
                          Some (VInt add1) =>
                            let add2 := reg3 in
                            let (res, _) := add_with_carry add1 add2 0 in
                            next_instr (set_gpsp op1 (VInt res) st)
                        | _ => None
                        end
                    | Some ext =>
                        match ext.(ext_t) with
                        (* LSL *)
                        | LSL
                        | SXTX =>
                            match get_gpsp op2 st with
                              Some (VInt add1) =>
                                let add2 := Z64_lsl reg3 ext.(amount) in
                                let (res, _) := add_with_carry add1 add2 0 in
                                next_instr (set_gpsp op1 (VInt res) st)
                            | _ => None
                            end
                        | _ => None (* Other extend type not supported yet*)
                        end
                    end
                | _ => None
                end
              else None
        end
    | Iadr reg sym =>
        let sname := sym.(sname) in
        let ptr := (mkPtr sname 0 0) in
        next_instr (set_reg reg (VInt (ptr_to_int ptr)) st)
    | Iadrp reg sym =>
        let sname := sym.(sname) in
        let ptr := (mkPtr sname 0 0) in
        next_instr (set_reg reg (VInt (Zmod (ptr_to_int ptr) 4096)) st)
    | Ibfm reg1 reg2 imms immr => next_instr (exec_bfm reg1 reg2 imms immr st)
    | Ibfxil reg1 reg2 lsb width => next_instr (exec_bfm reg1 reg2 lsb (lsb + width - 1) st)
    | Ibr adr =>  match get_reg adr st with
                      | Some adr => go_to_adr adr st
                      | None => None
                  end
    | Ibc cond sym => if cond_hold cond st 
                      then go_to_label sym st
                      else next_instr (Some st)
    | Icbnz reg sym => match get_reg reg st with
                       | Some (VInt v) => if v =? 0
                                          then next_instr (Some st)
                                          else go_to_label sym st
                       | _ => None
                       end
    | Icbz reg sym => match get_reg reg st with
                        | Some (VInt v) => if v =? 0
                                          then go_to_label sym st
                                          else next_instr (Some st)
                        | _ => None
                  end
    | Iccmp reg op2 nzcv cond =>
        if cond_hold cond st then
          match Z_of_reg reg st with
            Some op1 =>
              let operand1 := Zmod op1 (Z.pow 2 64) in
              match op2 with
                Lit imm =>
                  let operand2 := Zmod (Z.lnot imm) (Z.pow 2 64) in
                  let (_, flags) := add_with_carry operand1 operand2 1 in
                  next_instr (set_flags flags st)
              | GPReg reg2 =>
                  match Z_of_reg reg2 st with
                    Some v =>
                      let operand2 := Zmod (Z.lnot v) (Z.pow 2 64) in
                      let (_, flags) := add_with_carry operand1 operand2 1 in
                      next_instr (set_flags flags st)
                  | _ => None
                  end
              | _ => None
              end
          | _ => None
          end
        else
          let n := Z.testbit nzcv 0 in
          let z := Z.testbit nzcv 1 in
          let c := Z.testbit nzcv 2 in
          let v := Z.testbit nzcv 4 in
          next_instr (set_flags (n, z, c, v) st)
    | Icmp reg1 op2 op3 =>
        when zreg1 == (Z_of_reg reg1 st);
        let operand1 := Zmod zreg1 (Z.pow 2 64) in
        match op2 with
          Lit imm =>
            let amount :=
              match op3 with
                None => 0
              | Some ext => ext.(amount)
              end
            in
            let imm := Zmod (Z.shiftl imm amount) (Z.pow 2 64) in
            let operand2 := Zmod (Z.lnot imm) (Z.pow 2 64) in
            let (_, nzcv) := add_with_carry operand1 operand2 1 in
            next_instr (set_flags nzcv st)
        | GPReg r
        | RegSp r =>
            let (ext_typ, amount) :=
              match op3 with
                None => (LSL, 0)
              | Some ext => (ext.(ext_t), ext.(amount))
              end
            in
            when zreg2 == (Z_of_reg r st);
            let vreg2 := Zmod zreg2 (Z.pow 2 64) in
            match ext_typ with
              LSL
            | UXTX =>
                let operand2 := Zmod (Z.shiftl vreg2 amount) (Z.pow 2 64) in
                let (_, nzcv) := add_with_carry operand1 operand2 1 in
                next_instr (set_flags nzcv st)
            | _ => None
            end
        | _ => None
        end
    | Iclz reg1 reg2 =>
        match Z_of_reg reg2 st with
          Some v =>
            let operand := Zmod v (Z.pow 64 2) in
            if operand =? 0 then
              next_instr (set_reg reg1 (VInt 64) st)
            else
              next_instr (set_reg reg1 (VInt (63 - (Z.log2 operand))) st)
        | _ => None
        end
    | Ieor reg1 reg2 op3 op4 =>
        when zreg2 == (Z_of_reg reg2 st);
        let operand1 := Zmod zreg2 (Z.pow 2 64)in
        match op3 with
          Lit imm =>
            next_instr (set_reg reg1 (VInt (Z.lxor operand1 imm)) st)
        | GPReg r => None
        | _ => None
        end
    | Ildp reg1 reg2 mem =>
        when vreg3 == get_reg mem.(reg) st;
        when addr ==
          match vreg3 with
            (VInt v) => Some v
          | _ => None
          end;
        let offset := mem.(imm) in
        let idx := mem.(idx_typ) in
        match idx with
          PostIndex =>
            when val1, st1 == (load (load_store_typ TI64) (int_to_ptr addr) st);
            when val2, st2 == (load (load_store_typ TI64) (int_to_ptr (addr + 8)) st1);
            when st3 == (set_reg reg1 (VInt val1) st2);
            when st4 == (set_reg reg2 (VInt val2) st3);
            when st5 == (set_reg mem.(reg) (VInt (addr + offset)) st4);
            next_instr (Some st5)
        | _ => None
        end
    | Ildr reg1 op symbol =>
        match symbol with
          Some sym =>
            when val, st1 == load (load_store_typ TI64) (mkPtr sym.(sname) 8 sym.(soffset)) st;
            when st2 == set_reg reg1 (VInt val) st;
            next_instr (Some st2)
          | None => None
          end
    | Ilsr reg1 reg2 op3 =>
        when vreg2 == Z_of_reg reg2 st;
        let operand2 := Zmod vreg2 (Z.pow 64 2) in
        match op3 with
          Lit imm =>
            let res := Zmod (Z.shiftl operand2 imm) (Z.pow 64 2) in
            next_instr (set_reg reg1 (VInt res) st)
        | GPReg r =>
            when vreg3 == Z_of_reg r st;
            let res := Zmod (Z.shiftl operand2 (Zmod vreg3 (Z.pow 64 2))) (Z.pow 64 2) in
            next_instr (set_reg reg1 (VInt res) st)
        | _ => None
        end
    | Imov reg1 op2 =>
        match op2 with
          GPReg r
        | RegSp r =>
            match get_reg r st with
              Some v => next_instr (set_reg reg1 v st)
            | _ => None
            end
        | Lit imm =>
          next_instr (set_reg reg1 (VInt imm) st)
        | _ => None
        end
    | Imrs reg sys =>
        when v == get_sysreg sys st;
        next_instr (set_reg reg v st)
    | Imsr sys op =>
        match op with
          Lit imm => next_instr (set_sysreg sys (VInt imm) st)
        | GPReg reg =>
            match get_reg reg st with
              Some (VInt reg) =>
                next_instr (set_sysreg sys (VInt reg) st)
            | _ => None
            end
        | _ => None
        end
    | Istp reg1 reg2 mem =>
        let offset := mem.(imm) in
        when vreg3 == get_reg mem.(reg) st;
        when addr ==
          match vreg3 with
          | (VInt v) => Some v
          | _ => None
          end;
        when st1 == set_reg mem.(reg) (VInt (addr + offset)) st;
        let idx := mem.(idx_typ) in
        when val1 == get_reg reg1 st;
        when val2 == get_reg reg2 st;
        when val1 ==  Z_of_val val1;
        when val2 == Z_of_val val2;
        match idx with
          PreIndex =>
            when st2 == (store (load_store_typ TI64) (int_to_ptr (addr + offset)) val1 st1);
            when st3 == (store (load_store_typ TI64) (int_to_ptr (addr + offset + 8)) val2 st2);
            next_instr (Some st3)
        | _ => None
        end
     | _ => next_instr (Some st)
  end. *)

  (* Definition get_pc (st: state) : option value :=
    get_reg PC st.

  Definition set_pc (st: state) (v: value) : option state :=
    set_reg PC v st. *)
  
  (* Definition next_instr (st: option state) : option state :=
    match st with
      Some st =>
      match get_pc st with
      | Some (VPtr ptr) => set_pc st (VPtr (mkPtr ptr.(pbase) ptr.(psize) (ptr.(poffset) + 4)))
      | _ => None
      end
    | None => None
    end. *)

  (* Definition go_to_label (sym: symbol) (st: state) : option state :=
    set_pc st (VPtr (mkPtr sym.(sname) 0 sym.(soffset))). *)

  
  (* Definition go_to_adr (adr: value) (st: state) : option state :=
    match adr with
    | VInt v => set_pc st (VPtr (int_to_ptr v))
    | VPtr ptr => set_pc st (VPtr ptr)
    | _ => None
    end. *)

    (*
  Definition exec_add (dst: op) (src: op) (op3: op) (op4: option extend) (sz1: Z) (sz2: Z) (stpc: state * Ptr) : option (state * Ptr) :=
    match op1, op2, op3, op4, sz1, sz2 with
    | _, _, Lit imm, _, _, _ =>
      (* add imm *)
        if imm >? 4095 then None else
          match get_gpsp op2 st with
            Some (VInt add1) =>
              match op4 with
                None =>
                  let (res, _) := add_with_carry add1 imm 0 in
                  next_instr2 pc (set_gpsp op1 (VInt res) st)
              | Some ext =>
                  match ext.(ext_t) with
                  | LSL =>
                      let imm := Z.shiftl imm 12 in
                      let (res, _) := add_with_carry add1 imm 0 in
                      if ext.(amount) =? 12 then 
                      next_instr2 pc (set_gpsp op1 (VInt res) st)
                      else None
                  | _ => None
                  end
              end
          | _ => None
          end
    | _, _, _, _, _, _ =>
        (* op2 must be extended *)
        if (sz1 =? 64) && (sz2 =? 32) then
          match get_gpsp op2 st with
            Some (VInt add1) =>
              match op4 with
                None => None
              | Some ext =>
                  match ext.(ext_t) with
                  (* LSL *)
                  | SXTX =>
                      match get_gpsp op3 st with
                        Some (VInt reg3) =>
                          let add2 := Z64_lsl reg3 ext.(amount) in
                          let (res, _) := add_with_carry add1 add2 0 in
                          next_instr2 pc (set_gpsp op1 (VInt res) st)
                      | _ => None
                      end
                  | _ => None (* Other extend type not supported yet*)
                  end
              end
          | _ => None
          end
        else
          if (sz1 =? 64) && (sz2 =? 64) then
            match get_gpsp op3 st with
              Some (VInt reg3) =>
                match op4 with
                  None =>
                    match get_gpsp op2 st with
                      Some (VInt add1) =>
                        let add2 := reg3 in
                        let (res, _) := add_with_carry add1 add2 0 in
                        next_instr2 pc (set_gpsp op1 (VInt res) st)
                    | _ => None
                    end
                | Some ext =>
                    match ext.(ext_t) with
                    (* LSL *)
                    | LSL
                    | SXTX =>
                        match get_gpsp op2 st with
                          Some (VInt add1) =>
                            let add2 := Z64_lsl reg3 ext.(amount) in
                            let (res, _) := add_with_carry add1 add2 0 in
                            next_instr2 pc (set_gpsp op1 (VInt res) st)
                        | _ => None
                        end
                    | _ => None (* Other extend type not supported yet*)
                    end
                end
            | _ => None
            end
          else None
    end.
    *)

  (*
  Inductive exec_asm: (list asm_instruction) -> state -> state -> Prop :=
    exec_nil:
      forall st,
        exec_asm nil st st
  | exec_add:
    forall op1 op2 op3 op4 sz1 sz2 st st',
      eval (Iadd op1 op2 op3 op4 sz1 sz2) st = Some st' ->
      exec_asm (Iadd op1 op2 op3 op4 sz1 sz2 :: nil) st st'
  (*
  | exec_bc_true:
    forall sym cond st st',
      cond_hold cond st = true ->
      exec_sym_asm sym st st' ->
      exec_asm (Ibc cond sym :: nil) st st'
  | exec_bc_false:
    forall sym cond st st',
      cond_hold cond st = false ->
      exec_asm (Ibc cond sym :: nil) st st'
  | exec_bl:
    forall sym st st',
      exec_sym_asm sym st st' ->
      exec_asm (Ibl sym :: nil) st st'
  | exec_br:
    forall (reg: gpreg) st st' pp,
      get_reg reg st = Some (VPtr pp) ->
      exec_proc_func pp.(pbase) st st' ->
      exec_asm (Ibr reg :: nil) st st'
  | exec_cbnz_nz:
    forall (reg: gpreg) sym v st st',
      get_reg reg st = Some (VInt v) ->
      v =? 0 = false ->
      exec_sym_asm sym st st' ->
      exec_asm (Icbnz reg sym :: nil) st st'
  | exec_cbnz_z:
    forall (reg: gpreg) sym v st st',
      get_reg reg st = Some (VInt v) ->
      v =? 0 = true ->
      exec_asm (Icbnz reg sym :: nil) st st'
  | exec_cbz_z:
    forall (reg: gpreg) sym v st st',
      get_reg reg st = Some (VInt v) ->
      v =? 0 = true ->
      exec_sym_asm sym st st' ->
      exec_asm (Icbz reg sym :: nil) st st'
  | exec_cbz_nz:
    forall (reg: gpreg) sym v st st',
      get_reg reg st = Some (VInt v) ->
      v =? 0 = false ->
      exec_asm (Icbz reg sym :: nil) st st'
        (* Cheating *)
  *)
  | exec_bc_true:
    forall sym cond st st',
      cond_hold cond st = true ->
      eval (Ibc cond sym) st = Some st' ->
      exec_asm (Ibc cond sym :: nil) st st'
  | exec_bc_false:
    forall sym cond st st',
      cond_hold cond st = false ->
      eval (Ibc cond sym) st = Some st' ->
      exec_asm (Ibc cond sym :: nil) st st'
  | exec_bl:
    forall sym st st',
      eval (Ibl sym) st = Some st' ->
      exec_asm (Ibl sym :: nil) st st'
  | exec_br:
    forall (reg: gpreg) st st',
      eval (Ibr reg) st = Some st' ->
      exec_asm (Ibr reg :: nil) st st'
  | exec_cbnz_nz:
    forall (reg: gpreg) sym st st',
      eval (Icbnz reg sym) st = Some st' ->
      exec_asm (Icbnz reg sym :: nil) st st'
  | exec_cbnz_z:
    forall (reg: gpreg) sym st st',
      eval (Icbnz reg sym) st = Some st' ->
      exec_asm (Icbnz reg sym :: nil) st st'
  | exec_cbz_z:
    forall (reg: gpreg) sym st st',
      eval (Icbz reg sym) st = Some st' ->
      exec_asm (Icbz reg sym :: nil) st st'
  | exec_cbz_nz:
    forall (reg: gpreg) sym st st',
      eval (Icbz reg sym) st = Some st' ->
      exec_asm (Icbz reg sym :: nil) st st'
  | exec_ccmp:
    forall (reg: gpreg) (op2: op) (nzcv: Z) (cond: asmcond) st st',
      eval (Iccmp reg op2 nzcv cond) st = Some st' ->
      exec_asm (Iccmp reg op2 nzcv cond :: nil) st st'
  | exec_cmp:
    forall (reg1: iregsp) (op2: op) (ext: option extend) st st',
      eval (Icmp reg1 op2 ext) st = Some st' ->
      exec_asm (Icmp reg1 op2 ext :: nil) st st'
  | exec_clz:
    forall (reg1: gpreg) (reg2: gpreg) st st',
      eval (Iclz reg1 reg2) st = Some st' ->
      exec_asm (Iclz reg1 reg2 :: nil) st st'
  | exec_dsb:
    forall st st',
      eval Idsb st = Some st' ->
      exec_asm (Idsb :: nil) st st'
  | exec_eor:
    forall (reg1: iregsp) (reg2: gpreg) (op3: op) (ext: option extend) st st',
      eval (Ieor reg1 reg2 op3 ext) st = Some st' ->
      exec_asm (Ieor reg1 reg2 op3 ext :: nil) st st'
  | exec_eret:
    forall st st',
      eval Ieret st = Some st' ->
      exec_asm (Ieret :: nil) st st'
  | exec_isb:
    forall st st',
      eval Iisb st = Some st' ->
      exec_asm (Iisb :: nil) st st'
  | exec_ldp:
    forall (reg1: gpreg) (reg2: gpreg) (mem: memop) st st',
      eval (Ildp reg1 reg2 mem) st = Some st' ->
      exec_asm (Ildp reg1 reg2 mem :: nil) st st'
  | exec_ldr:
    forall (reg1: gpreg) (op2: op) (sym: option symbol) st st',
      eval (Ildr reg1 op2 sym) st = Some st' ->
      exec_asm (Ildr reg1 op2 sym :: nil) st st'
  | exec_lsr:
    forall (reg1: gpreg) (reg2: gpreg) (op3: op) st st',
      eval (Ilsr reg1 reg2 op3) st = Some st' ->
      exec_asm (Ilsr reg1 reg2 op3 :: nil) st st'
  | exec_mov:
    forall (reg1: iregsp) (op2: op) st st',
      eval (Imov reg1 op2) st = Some st' ->
      exec_asm (Imov reg1 op2 :: nil) st st'
  | exec_mrs:
    forall (reg: gpreg) (sys: sysreg) st st',
      eval (Imrs reg sys) st = Some st' ->
      exec_asm (Imrs reg sys :: nil) st st'
  | exec_msr:
    forall (sys: sysreg) (op: op) st st',
      eval (Imsr sys op) st = Some st' ->
      exec_asm (Imsr sys op :: nil) st st'
  | exec_stp:
    forall (reg1: gpreg) (reg2: gpreg) (mem: memop) st st',
      eval (Istp reg1 reg2 mem) st = Some st' ->
      exec_asm (Istp reg1 reg2 mem :: nil) st st'
  | exec_str:
    forall (reg1: gpreg) (mem: memop) st st',
      eval (Istr reg1 mem) st = Some st' ->
      exec_asm (Istr reg1 mem :: nil) st st'
  | exec_asm_list:
    forall i insts st st' st'',
      exec_asm (i :: nil) st st' ->
      exec_asm insts st' st'' ->
      exec_asm (i :: insts) st st''
  with exec_proc_func: string -> state -> state -> Prop :=
  | exec_proc:
    forall pname proc body st st',
      gets pname procs = Some proc ->
      proc.(pbody) = Some body ->
      exec_asm body st st' ->
      exec_proc_func pname st st'
  with exec_sym_asm: symbol -> state -> state -> Prop :=
  | exec_sym:
    forall sym proc body st st',
      gets sym.(sname) procs = Some proc ->
      proc.(pbody) = Some body ->
      exec_asm (skipn (Z.to_nat sym.(soffset)) body) st st' ->
      exec_sym_asm sym st st'.  
*)

  (*
  Fixpoint smap_to_typ_list_help (s: @smap typ) (tl: typ_list): typ_list :=
    match s with
      nil => tl
    | (_, ty) :: t => smap_to_typ_list_help t (TCons ty tl)
    end.

  Definition typ_list_app : typ_list -> typ -> typ_list :=
    fix typ_list_app l m :=
      match l with
        TNil => TCons m TNil
      | TCons a l1 => TCons a (typ_list_app l1 m)
      end.

  Fixpoint typ_list_rev (l: typ_list) : typ_list :=
    match l with
      TNil => TNil
    | TCons x l' => typ_list_app (typ_list_rev l') x
    end.

  Definition typ_list_of_smap (s: @smap typ) : typ_list :=
    typ_list_rev (smap_to_typ_list_help s TNil).

  Definition get_ptr_by_name (name: string) : option value :=
    match gets name gvars with
      Some v =>
        Some (VPtr (mkPtr name 0))
    | None => match gets name funcs with
                None => None
              | Some v => Some (VPtr (mkPtr name 0))
              end
    end.

  *)

  (*
Inductive initial_state : string -> (state * Ptr) -> Prop :=
  | initial_st :
    forall st pc pname proc,
      gets pname procs = Some proc ->
      pc = mkPtr (pname) 0 ->
      initial_state pname (st,pc).

Inductive final_state : string -> (state * Ptr) -> Prop :=
  | final_st :
    forall st pc pname body proc,
    gets pname procs = Some proc ->
    proc.(pbody) = Some body ->
    pc = mkPtr (pname) (Z.of_nat (length body)*4) ->
    final_state pname (st,pc).
    *)
Definition l1_sync := 
	(Imrs (Rx0 SZ64) Resr_el2)
::(Ilsr (Rx0 SZ64) (Rx0 SZ64) 38)
::(Icmp (Rx0 SZ64) 22)
::(Iccmp ACne (Rx0 SZ64) 18 4)
::(Ibc ACeq ("el1_sync"%string,192))
::(Icmp (Rx0 SZ64) 36)
::(Ibc ACeq ("el1_sync"%string,36))
::(Icmp (Rx0 SZ64) 32)
::(Ibc ACne ("el1_trap"%string,0))
::(Imrs (Rx1 SZ64) Rtpidr_el2)
::(Icbnz (Rx1 SZ64) ("el1_trap"%string,0))
::(Ildp (Rx0 SZ64) (Rx1 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Istp (Rx30 SZ64) (Rxzr) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx28 SZ64) (Rx29 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx26 SZ64) (Rx27 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx24 SZ64) (Rx25 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx22 SZ64) (Rx23 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx20 SZ64) (Rx21 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx18 SZ64) (Rx19 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx16 SZ64) (Rx17 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx14 SZ64) (Rx15 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx12 SZ64) (Rx13 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx10 SZ64) (Rx11 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx8 SZ64) (Rx9 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx6 SZ64) (Rx7 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx4 SZ64) (Rx5 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx2 SZ64) (Rx3 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx0 SZ64) (Rx1 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Imov (Rx1 SZ64) (Rsp))
::(Imov (Rx0 SZ64) (Rx30 SZ64))
::(Ibl ("handle_host_stage2_fault"%string,0))
::(Ildp (Rx0 SZ64) (Rx1 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx2 SZ64) (Rx3 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx4 SZ64) (Rx5 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx6 SZ64) (Rx7 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx8 SZ64) (Rx9 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx10 SZ64) (Rx11 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx12 SZ64) (Rx13 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx14 SZ64) (Rx15 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx16 SZ64) (Rx17 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx18 SZ64) (Rx19 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx20 SZ64) (Rx21 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx22 SZ64) (Rx23 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx24 SZ64) (Rx25 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx26 SZ64) (Rx27 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx28 SZ64) (Rx29 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx30 SZ64) (Rxzr) (MemOp (Rsp) (22) PostIndex))
::(Ieret)
::(Ildp (Rx0 SZ64) (Rx1 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Icmp (Rx0 SZ64) 5)
::(Ibc ACne ("el1_sync"%string,220))
::(Imrs (Rx0 SZ64) Rvbar_el2)
::(Ieret)
::(Icmp (Rx0 SZ64) 3)
::(Ibc ACcs ("el1_sync"%string,248))
::(Ildr (Rx5 SZ64) None (Some ("el1_fiq_invalid"%string,8)))
::(Iadrp (Rx6 SZ64) ("kimage_voffset"%string,0))
::(Ildr (Rx6 SZ64) (Some (OpWithoutExt ((MemOp (Rx6 SZ64) (0) DirectIndex)))) None)
::(Isub (Rx5 SZ64) (Rx5 SZ64) (Rx6 SZ64))
::(Ibr (Rx5 SZ64))
::(Istp (Rx30 SZ64) (Rxzr) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx28 SZ64) (Rx29 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx26 SZ64) (Rx27 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx24 SZ64) (Rx25 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx22 SZ64) (Rx23 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx20 SZ64) (Rx21 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx18 SZ64) (Rx19 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx16 SZ64) (Rx17 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx14 SZ64) (Rx15 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx12 SZ64) (Rx13 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx10 SZ64) (Rx11 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx8 SZ64) (Rx9 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx6 SZ64) (Rx7 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx4 SZ64) (Rx5 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx2 SZ64) (Rx3 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Istp (Rx0 SZ64) (Rx1 SZ64) (MemOp (Rsp) (-16) PreIndex))
::(Imov (Rx0 SZ64) (Rsp))
::(Ibl ("handle_host_hvc"%string,0))
::(Ildp (Rx0 SZ64) (Rx1 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx2 SZ64) (Rx3 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx4 SZ64) (Rx5 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx6 SZ64) (Rx7 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx8 SZ64) (Rx9 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx10 SZ64) (Rx11 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx12 SZ64) (Rx13 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx14 SZ64) (Rx15 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx16 SZ64) (Rx17 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx18 SZ64) (Rx19 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx20 SZ64) (Rx21 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx22 SZ64) (Rx23 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx24 SZ64) (Rx25 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx26 SZ64) (Rx27 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx28 SZ64) (Rx29 SZ64) (MemOp (Rsp) (22) PostIndex))
::(Ildp (Rx30 SZ64) (Rxzr) (MemOp (Rsp) (22) PostIndex))
::(Ieret)
::nil.
