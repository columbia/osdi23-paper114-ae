(* Ocamllex scanner for NanoC *)

{
open Asmparser
open Lexing
open Ast

exception LexErr of string
exception ParseErr of string

let error msg start finish  =
  Printf.sprintf "(line %d: char %d-%d): %s" start.pos_lnum
    (start.pos_cnum -start.pos_bol) (finish.pos_cnum - finish.pos_bol) msg

  let lex_error lexbuf =
    raise ( LexErr (error (lexeme lexbuf) (lexeme_start_p lexbuf) (lexeme_end_p lexbuf)))
}

let digit = ['0'-'9']
let hexdigit = ['0'-'9' 'a'-'f']
let letter = ['a'-'z' 'A'-'Z']
let gpreg = ('x' | 'w') (digit | (['1'-'2'] digit) | "30" )
let sysreg = "currentel" | 
          (* "cntp_ctl_el0" | "cntp_cval_el0" | "cntp_tval_el0" | "cntv_ctl_el0" | "cntv_cval_el0" | "cntv_tval_el0" | *)
             "sp_el0" | "pmcr_el0" | "pmuserenr_el0" | "tpidrro_el0" | 
             "tpidr_el0" | "pmselr_el0" | "sp_el1" | "elr_el1" | "spsr_el1" | "mpidr_el1" | "csselr_el1" | 
             "sctlr_el1" | "actlr_el1" | "cpacr_el1" | "zcr_el1" | "ttbr0_el1" | "ttbr1_el1" | "tcr_el1" | 
             "esr_el1" | "afsr0_el1" | "afsr1_el1" | "far_el1" | "mair_el1" | "vbar_el1" | "contextidr_el1" | 
             "tpidr_el1" | "amair_el1" | "cntkctl_el1" | "par_el1" | "mdscr_el1" | "mdccint_el1" | "disr_el1" | 
             "mpam0_el1" | "id_aa64mmfr0_el1" | "id_aa64mmfr1_el1" | "cnthctl_el2" | "cntvoff_el2" | "cntpoff_el2" | 
             "vmpidr_el2" | "vttbr_el2" | "vtcr_el2" | "hcr_el2" | "actlr_el2" | "afsr0_el2" | "afsr1_el2" | 
             "amair_el2" | "cptr_el2" | "elr_el2" | "esr_el2" | "far_el2" | "hacr_el2" | "hpfar_el2" | "hstr_el2" | 
             "mair_el2" | "mdcr_el2" | "mpam_el2" | "mpamhcr_el2" | "pmscr_el2" | "sctlr_el2" | "scxtnum_el2" | "sp_el2" | "spsr_el2" |
             "tcr_el2" | "tfsr_el2" | "tpidr_el2" | "trfcr_el2" | "ttbr0_el2" | "ttbr1_el2" | "vbar_el2" | "vdisr_el2" |
             "vncr_el2" | "vpidr_el2" (* | "vsesr_el2" | "vstcr_el2" | "vsttbr_el2" | "zcr_el2" | "icc_sre_el2"
             "icc_hppir1_el1" | "spsr_el3" | "elr_el3" | "esr_el3" | "scr_el3" | "tpidr_el3" *)
let SP = "sp"
let insn =
    "add" | "adr" | "adrp" | "br" | "bfxil" | "cbnz" | "cbz" | "ccmp" | "clz" |
    "cmp" | "dsb" | "eor" | "eret" | "isb" | "ldp" | "ldr" | "lsr" | "mov"  |
    "mrs" | "msr" | "nop" | "sb" | "smc" | "stp" | "str" | "sub" | "tst" | "ret"

let extend = "lsl" | "lsr" | "asr" | "sxtb" | "sxth" | "sxtw" | "sxtx" | "uxtb" | "uxth" | "uxtw" | "uxtx"

let lblinsn = "b.cs" | "b.eq" | "b.ne" | "b" | "bl"

rule token = parse
  [' ' '\t' '\r' '\n']  { token lexbuf } (* Whitespace *)
| "//"                  { comment lexbuf }           (* Comments *)
| ';'                   { comment lexbuf }
| ','                   { COMMA }
| '<'                   { LABRACKET  }
| '>'                   { RABRACKET }
| '+'                   { PLUS }
| '#'                   { HASHTAG }
| '['                   { LBRACKET }
| ']'                   { RBRACKET }
| '!'                   { BANG }
| ':'                   { COLON }
| "xzr"                 { GPREG("xzr") }
| "0x"hexdigit+ as lem  { LITERAL(int_of_string lem) }
| (digit hexdigit+) as lem    { LITERAL(int_of_string ("0x" ^ lem)) }
| insn as lem           { INSN(lem) }
| lblinsn as lem        { LBLINSN(lem) }
| gpreg as lem          { GPREG(lem) }
| sysreg as lem         { SYSREG(lem) }
| "sp"                  { SP }
| extend as lem         { EXTEND(lem) }
| digit+ as lem         { LITERAL(int_of_string lem) }
| "-"digit+ as lem      { LITERAL(int_of_string lem) }
| letter (letter | '.' | digit | '_' )* as lem { ID(lem) }
| eof                   { EOF }
| _                     { lex_error lexbuf }

and comment = parse
  ['\r' '\n'] { token lexbuf }
| _    { comment lexbuf }
