open Option
open Asmsem
open Prettyprint

type program = proc_def list


let string_of_chars chars =
  let buf = Buffer.create 16 in
  List.iter (Buffer.add_char buf) chars;
    Buffer.contents buf

let explode s = List.init (String.length s) (String.get s)

let string_of_imm imm = "#" ^ string_of_int imm


(* let string_of_memop memop =
  "[" ^ string_of_iregsp memop.reg ^
    match memop.idx_typ with
      Direct -> "]"
    | PostIndex -> "], " ^ string_of_opt_imm memop.imm
    | PreIndex -> ", " ^ string_of_opt_imm memop.imm ^ "]!"
    | Signed -> ", " ^ string_of_opt_imm memop.imm ^ "]" *)

let string_of_idx_typ idx_typ = 
  match idx_typ with
    PostIndex -> "PostIndex"
  | PreIndex -> "PreIndex"
  | SignedIndex -> "SignedIndex"
  | DirectIndex -> "DirectIndex"


let string_of_regset regset = 
  match regset with
  | Rgpsp iregsp -> string_of_iregsp iregsp
  | Rsys sysreg -> string_of_sysreg sysreg


let string_of_op op =
  match op with
    RegOp regset -> string_of_regset regset
  | MemOp (regset,immu,idx_typ) -> "(MemOp " ^ string_of_regset regset ^ " (" ^ string_of_int immu ^ ") " ^ string_of_idx_typ idx_typ ^ ")"
  | Lit op -> string_of_int op
  

let string_of_opt_op opt delim =
  match opt with
    None -> ""
  | Some op -> delim ^ string_of_op op

let string_of_extend extend =
  match extend with
  | SXTB n -> "SXTB" ^ string_of_int n
  | SXTH n -> "SXTH" ^ string_of_int n
  | SXTW n -> "SXTW" ^ string_of_int n
  | SXTX n -> "SXTX" ^ string_of_int n
  | UXTB n -> "UXTB" ^ string_of_int n
  | UXTH n -> "UXTH" ^ string_of_int n
  | UXTW n -> "UXTW" ^ string_of_int n
  | UXTX n -> "UXTX" ^ string_of_int n
  | LSL n -> "LSL" ^ string_of_int n
  | LSR n -> "LSR" ^ string_of_int n
  | ASR n -> "ASR" ^ string_of_int n

let string_of_op_ext opt_ext = 
  match opt_ext with
    OpWithoutExt op -> string_of_op op
  | EXT (op, extend) -> "(EXT (" ^ string_of_op op ^ "," ^ (string_of_extend extend) ^ "))"

let string_of_op_ext2 opt_ext = 
    match opt_ext with
      OpWithoutExt op -> "(OpWithoutExt (" ^ string_of_op op ^ "))"
    | EXT (op, extend) -> "(EXT (" ^ string_of_op op ^ "," ^ (string_of_extend extend) ^ "))"


let string_of_opt_op_extent opt delim =
  match opt with
    None -> ""
  | Some op_ext -> delim ^ string_of_op_ext op_ext


let string_of_purestmt purestmt =
  let instr = string_of_chars purestmt.insn in
    instr ^ 
    ( match purestmt.cond with
        ACundef -> ""
      | _ -> " " ^ string_of_cond purestmt.cond
    ) ^ 
    string_of_opt_op_extent purestmt.op1 " " ^ 
    string_of_opt_op_extent purestmt.op2 " " ^
    string_of_opt_op_extent purestmt.op3 " " ^
    string_of_opt_op_extent purestmt.op4 " "

let string_of_purestmt2 purestmt =
  match string_of_chars purestmt.insn with
    "Ildr" -> "Ildr" ^ string_of_opt_op_extent purestmt.op1 " "
                   ^ (match purestmt.op2 with
                        Some op -> " (Some " ^ string_of_op_ext op ^ ")"
                       | _ -> " None")
  | _ -> string_of_purestmt purestmt

let string_of_symbol symbol =
  match symbol with
  (s, offset) -> "(\"" ^ s ^ "\"%string," ^ string_of_int offset ^ ")"

let string_of_stmt stmt =
  match string_of_chars stmt.ps.insn with
    "Ildr" -> "(Ildr" ^ string_of_opt_op_extent stmt.ps.op1 " "
    ^ (match stmt.ps.op2 with
        Some op -> " (Some " ^ string_of_op_ext2 op ^ ")"
        | _ -> " None")
    ^ (match stmt.sym with
          None -> " None"
        | Some symbol -> " (Some " ^ string_of_symbol symbol ^ ")") ^ ")"
  | _ ->
    "(" ^ string_of_purestmt2 stmt.ps ^
        (match stmt.sym with
          None -> ""
        | Some symbol -> " " ^ string_of_symbol symbol) ^ ")"

let string_of_pdef pdef =
  "Definition p_" ^ string_of_chars pdef.def_pname ^ " :=\n" ^ "  {|\n" ^
  "  ploc := " ^ string_of_int pdef.def_loc ^ ";\n  pname := \"" ^ string_of_chars pdef.def_pname ^ "\";\n  pbody := " ^
    (List.fold_right (fun e s -> string_of_stmt e ^ "\n::" ^ s)
      pdef.def_body "nil") ^ "\n |}"

let string_of_program l =
    (List.fold_left (fun s e -> s ^ "\n" ^ string_of_pdef e) "" l)
