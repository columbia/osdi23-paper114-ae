/* Ocamlyacc parser for NanoC */

%{

open Ast
open Option
open Asmsem
open Prettyprint

let print_insn iname = "I" ^ (String.lowercase_ascii iname)
let print_reg rname = String.lowercase_ascii rname

(* These functions might be useful if we want to expand support to general
   assembly. But at the moment, just trust whatever from objdump.
 *)

(*
let insn_nr_operands iname =
  match iname with
    (* 0 operand *)
    "eret" -> 0
    (* 1 operand *)
  | "bl" | "br" | "b.eq" | "b.ne" -> 1

let print_no_oper_insn_stmt iname =
  match iname with
    "eret" -> print_insn iname
  | _ -> raise (Failure(iname ^ "expected to have more than one operand(s)."))
*)

let build_memop reg imm idx_typ = 
	MemOp (reg,imm,idx_typ)
 
let build_purestmt insn op1 op2 op3 cond =
  {
    insn = explode (print_insn insn);
    op1 = op1;
    op2 = op2;
    op3 = op3;
    op4 = None;
    cond = cond;
  }

let build_purestmt4 insn op1 op2 op3 op4 cond =
  {
    insn = explode (print_insn insn);
    op1 = op1;
    op2 = op2;
    op3 = op3;
    op4 = op4;
    cond = cond;
  }

let build_stmt purestmt symbol =
  {
    ps = purestmt;
    sym = symbol;
  }

open Asmsem
let extend_of_string s n =
	match s with
	  "SXTB" -> SXTB n
	| "SXTH" -> SXTH n 
	| "SXTW" -> SXTW n
	| "SXTX" -> SXTX n
	| "UXTB" -> UXTB n
	| "UXTH" -> UXTH n
	| "UXTW" -> UXTW n
	| "UXTX" -> UXTX n
	| "LSL" -> LSL n
	| "LSR" -> LSR n
	| "ASR" -> ASR n


let cond_of_string s =
  match s with
    "cs" -> ACcs
  | "eq" -> ACeq
  | "ne" -> ACne
  | _ -> ACundef

let build_lblstmt insn = build_purestmt "bc" None None None
  (match String.split_on_char '.' insn with
  | f::s::t -> cond_of_string s
  | [] -> raise (Failure("Illega instruction" ^ insn))
  | _ -> ACundef )

let build_symbol sname offset = (sname, offset)

exception LexErr of string
exception ParseErr of string
open Lexing
open Parsing

let error msg start finish  =
  Printf.sprintf "(line %d: char %d..%d): %s" start.pos_lnum
		 (start.pos_cnum -start.pos_bol) (finish.pos_cnum - finish.pos_bol) msg

let parse_error msg =
  raise ( ParseErr (error msg (rhs_start_pos 1) (rhs_end_pos 1)))

%}

%token COMMA LBRACKET RBRACKET BANG COLON LABRACKET RABRACKET HASHTAG SP XZR
%token INT PLUS
%token <int> LITERAL
%token <string> ID
%token <string> INSN
%token <string> LBLINSN
%token <string> GPREG
%token <string> SYSREG
%token <string> EXTEND
%token <int> OFS
%token EOF

%start program
%type <Ast.program> program

%%

program:
  pdecls EOF { $1 }

pdecls:
    { [] }
  | pdecl pdecls { $1 :: $2 }

pdecl:
  LITERAL LABRACKET ID RABRACKET COLON stmts
  {
    {
        def_loc = $1;
        def_pname = explode $3;
        def_body = $6;
    }
  }

stmts:
    { [] }
  | stmt stmts { $1 :: $2 }

/*
 * A hack for objdump-style assembly - if the source operand stores an address to
 * a symbol, it is marked at the end of the statement as "<symbol+offset>".
 */
stmt:
    purestmt { build_stmt $1 None }
  | lblstmt LABRACKET ID RABRACKET
    { build_stmt $1 (Some (build_symbol $3 0)) }
  | lblstmt LABRACKET ID PLUS LITERAL RABRACKET
    { build_stmt $1 (Some (build_symbol $3 $5)) }

/* TODO: Making operand a list */
purestmt:
    /* 0, 1, 2, 3 operand(s) instructions w.o. memory access */
    INSN { build_purestmt $1 None None None ACundef }
  | INSN operand { build_purestmt $1 (Some $2) None None ACundef }
  | INSN operand COMMA operand
    { let reg = Some $4 in build_purestmt $1 (Some $2) reg None ACundef }
  | INSN operand COMMA operand COMMA operand
    {
      let reg = Some $4 in let lit = Some $6 in
        build_purestmt $1 (Some $2) reg lit ACundef
    }
  | INSN operand COMMA operand COMMA operand COMMA ID
    {
      let op1 = Some $2 in
      let op2 = Some $4 in
      let op3 = Some $6 in
      let cond = cond_of_string $8 in
        build_purestmt $1 op1 op2 op3 cond
    }
  | INSN operand COMMA operand COMMA operand COMMA operand
    {
      let op1 = Some $2 in
      let op2 = Some $4 in
      let op3 = Some $6 in
      let op4 = Some $8 in
      build_purestmt4 $1 op1 op2 op3 op4 ACundef
    }
  /* Load/Store instructions */
  | INSN operand COMMA memop
    { let memop = $4 in build_purestmt $1 (Some $2) (Some memop) None ACundef }
  | INSN operand COMMA operand COMMA memop
    {
      let memop = $6 in
      build_purestmt $1 (Some $2) (Some $4) (Some memop) ACundef
    }

/*
 * Some instructions(e.g. b, ldr) can take a label as an operand. We still parse
 * the "pure" part here, but the 2nd operand is omitted since it will be replaced
 * by the label shortly.
 */
lblstmt:
    LBLINSN ID { build_lblstmt $1 }
  | LBLINSN LITERAL { build_lblstmt $1 }
  | INSN operand COMMA ID
    { build_purestmt $1 (Some $2) None None ACundef }
  | INSN operand COMMA LITERAL
    { build_purestmt $1 (Some $2) None None ACundef }

operand:
     pure_operand {OpWithoutExt $1}
   | pure_operand EXTEND LITERAL {EXT ($1, extend_of_string $2 $3)}

pure_operand:
    GPREG { (RegOp (Rgpsp (Rgp (gpreg_of_string (print_reg $1))))) }
  | SP { (RegOp (Rgpsp Rsp)) }
  | HASHTAG LITERAL { (Lit $2) }
  | SYSREG { (RegOp (Rsys (sysreg_of_string (print_reg $1))))}

memop:
    /* Direct address */
    LBRACKET memop_reg RBRACKET { OpWithoutExt (build_memop $2 0 DirectIndex) }
    /* Post-index */
  | LBRACKET memop_reg RBRACKET COMMA HASHTAG LITERAL
    { OpWithoutExt (build_memop $2 $6 PostIndex) }
    /* Pre-index */
  | LBRACKET memop_reg COMMA HASHTAG LITERAL RBRACKET BANG
    { OpWithoutExt (build_memop $2 $5 PreIndex) }
    /* Signed offset */
  | LBRACKET memop_reg COMMA HASHTAG LITERAL RBRACKET
    { OpWithoutExt (build_memop $2 $5 SignedIndex) }

memop_reg:
    GPREG
    {
      let sreg = print_reg $1 in
      let gpreg = gpreg_of_string sreg in
      Rgpsp (Rgp gpreg)
    }
  | SP    { Rgpsp Rsp }

/*
program:
  tokens EOF { $1 }
*/


//tokens:
//   /* nothing */ { [] }
// | one_token tokens { $1 :: $2 }
//
//one_token:
//  | COMMA { "COMMA" }
//  | NEG { "NEG" }
//  | INT { "INT" }
//  | LBRACKET { "LBRACKET" }
//  | RBRACKET { "RBRACKET" }
//  | BANG { "BANG" }
//  | LITERAL { "LITERAL: " ^ string_of_int $1 }
//  | ID { "ID: " ^ $1 }
//  | INSN { "INSN: " ^ (print_insn $1) }
//  | GPREG { "GPREG: " ^ (print_reg $1) }
//  | SYSREG { "SYSREG: " ^ (print_reg $1) }
//  | COLON { "COLON"}
//  | PLUS { "PLUS" }
//  | LABRACKET { "LABRACKET" }
//  | RABRACKET { "RABRACKET" }
//  | HASHTAG { "HASHTAG" }
//  | SP { "SP" }
