Require Import Coqlib.


(* Registers *)

Inductive regsize : Type := SZ32 | SZ64.

Inductive gpreg : Type :=
| Rx0 (sz: regsize) | Rx1 (sz: regsize) | Rx2 (sz: regsize) | Rx3 (sz: regsize)
| Rx4 (sz: regsize) | Rx5 (sz: regsize) | Rx6 (sz: regsize) | Rx7 (sz: regsize)
| Rx8 (sz: regsize) | Rx9 (sz: regsize) | Rx10 (sz: regsize) | Rx11 (sz: regsize)
| Rx12 (sz: regsize) | Rx13 (sz: regsize) | Rx14 (sz: regsize)
| Rx15 (sz: regsize) | Rx16 (sz: regsize) | Rx17 (sz: regsize)
| Rx18 (sz: regsize) | Rx19 (sz: regsize) | Rx20 (sz: regsize)
| Rx21 (sz: regsize) | Rx22 (sz: regsize) | Rx23 (sz: regsize)
| Rx24 (sz: regsize) | Rx25 (sz: regsize) | Rx26 (sz: regsize)
| Rx27 (sz: regsize) | Rx28 (sz: regsize) | Rx29 (sz: regsize)
| Rx30 (sz: regsize) | Rxzr.

Inductive sysreg : Type :=
| Rcntp_ctl_el0 | Rcntp_cval_el0 | Rcntp_tval_el0 | Rcntv_ctl_el0 | Rcntv_cval_el0 | Rcntv_tval_el0
| Rsp_el0 | Rpmcr_el0 | Rpmuserenr_el0 | Rtpidrro_el0 | Rtpidr_el0
| Rsp_el1 | Relr_el1 | Rspsr_el1 | Rcsselr_el1 | Rsctlr_el1 | Ractlr_el1 | Rcpacr_el1 | Rzcr_el1
| Rttbr0_el1 | Rttbr1_el1 | Rtcr_el1 | Resr_el1 | Rafsr0_el1 | Rafsr1_el1 | Rfar_el1 | Rmair_el1
| Rvbar_el1 | Rcontextidr_el1 | Rtpidr_el1 | Ramair_el1 | Rcntkctl_el1 | Rpar_el1 | Rmdscr_el1
| Rmdccint_el1 | Rdisr_el1 | Rmpam0_el1 | Ricc_hppir1_el1
| Rcnthctl_el2 | Rcntvoff_el2 | Rcntpoff_el2 | Rvmpidr_el2 | Rvttbr_el2 | Rvtcr_el2 | Rhcr_el2
| Ractlr_el2 | Rafsr0_el2 | Rafsr1_el2 | Ramair_el2 | Rcptr_el2 | Relr_el2 | Resr_el2 | Rfar_el2
| Rhacr_el2 | Rhpfar_el2 | Rhstr_el2 | Rmair_el2 | Rmpam_el2 | Rmpamhcr_el2 | Rpmscr_el2 | Rsctlr_el2
| Rscxtnum_el2 | Rsp_el2 | Rspsr_el2 | Rtcr_el2 | Rtfsr_el2 | Rtpidr_el2 | Rtrfcr_el2 | Rttbr0_el2
| Rttbr1_el2 | Rvbar_el2 | Rvdisr_el2 | Rvncr_el2 | Rvpidr_el2 | Rvsesr_el2 | Rvstcr_el2 | Rvsttbr_el2
| Rzcr_el2 | Ricc_sre_el2
| Rspsr_el3 | Relr_el3 | Resr_el3 | Rscr_el3 | Rtpidr_el3.

Inductive iregsp : Type :=
| Rgp (r: gpreg) | Rsp.

Inductive regset : Type :=
| Rgpsp (r: iregsp) | Rsys (r: sysreg).

Coercion Rgp: gpreg >-> iregsp.
Coercion Rgpsp: iregsp >-> regset.
Coercion Rsys: sysreg >-> regset.

Lemma regsize_eq: forall (x y: regsize), {x=y} + {x<>y}.
Proof.
  decide equality.
Defined.

Lemma ireg_eq: forall (x y: gpreg), {x=y} + {x<>y}.
Proof.
  decide equality; apply regsize_eq.
Defined.

Inductive flag: Type :=
| Fn | Fz | Fc | Fv.

(* Instructions *)

Inductive asmcond : Type :=
| ACeq: asmcond    (** equal *)
| ACne: asmcond    (** not equal *)
| ACcs: asmcond    (** unsigned higher or same *)
| ACcc: asmcond    (** unsigned lower *)
| ACmi: asmcond    (** negative *)
| ACpl: asmcond    (** positive *)
| ACvs: asmcond    (** overflow *)
| ACvc: asmcond    (** no overflow *)
| AChi: asmcond    (** unsigned higher *)
| ACls: asmcond    (** unsigned lower or same *)
| ACge: asmcond    (** signed greater or equal *)
| AClt: asmcond    (** signed less than *)
| ACgt: asmcond    (** signed greater *)
| ACle: asmcond    (** signed less than or equal *)
| ACundef: asmcond. (** no cond *)

(* Multiplex extend for both extend and shift *)
Inductive extend : Type :=
| SXTB (amount: Z)
| SXTH (amount: Z)
| SXTW (amount: Z)
| SXTX (amount: Z)
| UXTB (amount: Z)
| UXTH (amount: Z)
| UXTW (amount: Z)
| UXTX (amount: Z)
| LSL (amount: Z)
| LSR (amount: Z)
| ASR (amount: Z).

Inductive index_typ : Type :=
| PreIndex
| PostIndex
| SignedIndex
| DirectIndex.

Inductive op : Type :=
| RegOp (r: regset)
| MemOp (reg: regset) (imm: Z) (idx_typ: index_typ)
| Lit (i: Z).

Coercion RegOp: regset >-> op.
Coercion Lit: Z >-> op.

Inductive op_with_ext : Type :=
| OpWithoutExt (op: op)
| EXT (op: op) (ext: extend).

Coercion OpWithoutExt : op >-> op_with_ext.

Definition symbol : Type := string * Z.


(* Instructions we parsed so far
let insn =
    "add" | "adr" | "adrp" | "br" | "bfxil" | "cbnz" | "cbz" | "ccmp" | "clz" |
    "cmp" | "dsb" | "eor" | "ret" | "eret" | "isb" | "ldp" | "ldr" | "lsr" | "mov"  |
    "mrs" | "msr" | "nop" | "sb" | "smc" | "stp" | "str" | "sub" | "tst"
let lblinsn = "b.cs" | "b.eq" | "b.ne" | "bl" | "b"
 *)

(* Alphabetical order *)
Inductive asm_instruction : Type :=
| Iadd (dst: op) (src1: op) (src2: op_with_ext)
| Iadr (dst: gpreg) (sym: symbol)
| Iadrp (dst: gpreg) (sym: symbol)
(* | Ibfm (dst: op) (src: op) (imm1: Z) (imm2: Z) *)
(* | Ibfxil (reg1: gpreg) (reg2: gpreg) (imm1: Z) (imm2: Z) *)
| Ibl (sym: symbol)
| Ibr (reg: gpreg)
| Ibc (cond: asmcond) (sym: symbol)
| Icbnz (reg: gpreg) (sym: symbol)
| Icbz (reg: gpreg) (sym: symbol)
| Iccmp (cond: asmcond) (dst: gpreg) (src: op) (nzcv: Z)
| Icmp (reg1: iregsp) (op2: op_with_ext)
| Iclz (Rd: gpreg) (Rm: gpreg)
| Idsb
| Ieor (reg1: iregsp) (reg2: gpreg) (op3: op_with_ext)
| Iret
| Ieret
| Iisb
| Ildp (reg1: gpreg) (reg2: gpreg) (mem: op)
| Ildr (reg1: gpreg) (op2: option op_with_ext) (sym: option symbol)
| Ilsr (reg1: gpreg) (reg2: gpreg) (op3: op)
| Imov (reg1: iregsp) (op2: op)
| Imrs (reg: gpreg) (sys: sysreg)
| Imsr (sys: sysreg) (op: op)
| Inop
| Isb
| Ismc (imm: Z)
| Istp (reg1: gpreg) (reg2: gpreg) (mem: op)
| Istr (reg1: gpreg) (mem: op)
| Isub (reg1: iregsp) (reg2: iregsp) (op3: op_with_ext)
| Itst (reg1: gpreg) (op2: op_with_ext).

Record procedure : Type :=
  mkProc {
      ploc: Z;
      pname: string;
      pbody: list asm_instruction;
    }.
