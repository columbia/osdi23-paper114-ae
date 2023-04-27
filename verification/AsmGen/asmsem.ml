
type regsize =
| SZ32
| SZ64

type gpreg =
| Rx0 of regsize
| Rx1 of regsize
| Rx2 of regsize
| Rx3 of regsize
| Rx4 of regsize
| Rx5 of regsize
| Rx6 of regsize
| Rx7 of regsize
| Rx8 of regsize
| Rx9 of regsize
| Rx10 of regsize
| Rx11 of regsize
| Rx12 of regsize
| Rx13 of regsize
| Rx14 of regsize
| Rx15 of regsize
| Rx16 of regsize
| Rx17 of regsize
| Rx18 of regsize
| Rx19 of regsize
| Rx20 of regsize
| Rx21 of regsize
| Rx22 of regsize
| Rx23 of regsize
| Rx24 of regsize
| Rx25 of regsize
| Rx26 of regsize
| Rx27 of regsize
| Rx28 of regsize
| Rx29 of regsize
| Rx30 of regsize
| Rxzr

type sysreg =
| Rcntp_ctl_el0
| Rcntp_cval_el0
| Rcntp_tval_el0
| Rcntv_ctl_el0
| Rcntv_cval_el0
| Rcntv_tval_el0
| Rsp_el0
| Rpmcr_el0
| Rpmuserenr_el0
| Rtpidrro_el0
| Rtpidr_el0
| Rsp_el1
| Relr_el1
| Rspsr_el1
| Rcsselr_el1
| Rsctlr_el1
| Ractlr_el1
| Rcpacr_el1
| Rzcr_el1
| Rttbr0_el1
| Rttbr1_el1
| Rtcr_el1
| Resr_el1
| Rafsr0_el1
| Rafsr1_el1
| Rfar_el1
| Rmair_el1
| Rvbar_el1
| Rcontextidr_el1
| Rtpidr_el1
| Ramair_el1
| Rcntkctl_el1
| Rpar_el1
| Rmdscr_el1
| Rmdccint_el1
| Rdisr_el1
| Rmpam0_el1
| Ricc_hppir1_el1
| Rcnthctl_el2
| Rcntvoff_el2
| Rcntpoff_el2
| Rvmpidr_el2
| Rvttbr_el2
| Rvtcr_el2
| Rhcr_el2
| Ractlr_el2
| Rafsr0_el2
| Rafsr1_el2
| Ramair_el2
| Rcptr_el2
| Relr_el2
| Resr_el2
| Rfar_el2
| Rhacr_el2
| Rhpfar_el2
| Rhstr_el2
| Rmair_el2
| Rmpam_el2
| Rmpamhcr_el2
| Rpmscr_el2
| Rsctlr_el2
| Rscxtnum_el2
| Rsp_el2
| Rspsr_el2
| Rtcr_el2
| Rtfsr_el2
| Rtpidr_el2
| Rtrfcr_el2
| Rttbr0_el2
| Rttbr1_el2
| Rvbar_el2
| Rvdisr_el2
| Rvncr_el2
| Rvpidr_el2
| Rvsesr_el2
| Rvstcr_el2
| Rvsttbr_el2
| Rzcr_el2
| Ricc_sre_el2
| Rspsr_el3
| Relr_el3
| Resr_el3
| Rscr_el3
| Rtpidr_el3

type iregsp =
| Rgp of gpreg
| Rsp

type regset =
| Rgpsp of iregsp
| Rsys of sysreg

type flag =
| Fn
| Fz
| Fc
| Fv

type asmcond =
| ACeq
| ACne
| ACcs
| ACcc
| ACmi
| ACpl
| ACvs
| ACvc
| AChi
| ACls
| ACge
| AClt
| ACgt
| ACle
| ACundef

type extend =
| SXTB of int
| SXTH of int
| SXTW of int
| SXTX of int
| UXTB of int
| UXTH of int
| UXTW of int
| UXTX of int
| LSL of int
| LSR of int
| ASR of int

type index_typ =
| PreIndex
| PostIndex
| SignedIndex
| DirectIndex

type op =
| RegOp of regset
| MemOp of regset * int * index_typ
| Lit of int

type op_with_ext =
| OpWithoutExt of op
| EXT of op * extend

type symbol = string * int

type asm_instruction =
| Iadd of op * op * op_with_ext
| Iadr of gpreg * symbol
| Iadrp of gpreg * symbol
| Ibl of char list * int
| Ibr of gpreg
| Ibc of asmcond * symbol
| Icbnz of gpreg * symbol
| Icbz of gpreg * symbol
| Iccmp of gpreg * op * int * asmcond
| Icmp of iregsp * op_with_ext
| Iclz of gpreg * gpreg
| Idsb
| Ieor of iregsp * gpreg * op_with_ext
| Iret
| Ieret
| Iisb
| Ildp of gpreg * gpreg * op
| Ildr of gpreg * op_with_ext * symbol option
| Ilsr of gpreg * gpreg * op
| Imov of iregsp * op
| Imrs of gpreg * sysreg
| Imsr of sysreg * op
| Inop
| Isb
| Ismc of int
| Istp of gpreg * gpreg * op
| Istr of gpreg * op
| Isub of iregsp * iregsp * op_with_ext
| Itst of gpreg * op_with_ext


type procedure = { ploc : int; pname : char list;
                   pbody : asm_instruction list option }


type purestmt = { insn : char list; op1 : op_with_ext option; op2 : op_with_ext option;
                  op3 : op_with_ext option; op4 : op_with_ext option; cond : asmcond }

type stmt = { ps : purestmt; sym : symbol option }

type proc_def = { def_loc : int; def_pname : char list; def_body : stmt list }