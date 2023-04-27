open Option
open Asmsem

let string_of_cond cond =
  match cond with
  ACeq -> "ACeq"
| ACne -> "ACne"
| ACcs -> "ACcs"
| ACcc -> "ACcc"
| ACmi -> "ACmi"
| ACpl -> "ACpl"
| ACvs -> "ACvs"
| ACvc -> "ACvc"
| AChi -> "AChi"
| ACls -> "ACls"
| ACge -> "ACge"
| AClt -> "AClt"
| ACgt -> "ACgt"
| ACle -> "ACle"
| ACundef -> ""

let string_of_gpreg reg =
  "(" ^ (
  match reg with
    Rx0  SZ64 -> "Rx0 SZ64"
  | Rx1  SZ64 -> "Rx1 SZ64"
  | Rx2  SZ64 -> "Rx2 SZ64"
  | Rx3  SZ64 -> "Rx3 SZ64"
  | Rx4  SZ64 -> "Rx4 SZ64"
  | Rx5  SZ64 -> "Rx5 SZ64"
  | Rx6  SZ64 -> "Rx6 SZ64"
  | Rx7  SZ64 -> "Rx7 SZ64"
  | Rx8  SZ64 -> "Rx8 SZ64"
  | Rx9  SZ64 -> "Rx9 SZ64"
  | Rx10 SZ64 -> "Rx10 SZ64"
  | Rx11 SZ64 -> "Rx11 SZ64"
  | Rx12 SZ64 -> "Rx12 SZ64"
  | Rx13 SZ64 -> "Rx13 SZ64"
  | Rx14 SZ64 -> "Rx14 SZ64"
  | Rx15 SZ64 -> "Rx15 SZ64"
  | Rx16 SZ64 -> "Rx16 SZ64"
  | Rx17 SZ64 -> "Rx17 SZ64"
  | Rx18 SZ64 -> "Rx18 SZ64"
  | Rx19 SZ64 -> "Rx19 SZ64"
  | Rx20 SZ64 -> "Rx20 SZ64"
  | Rx21 SZ64 -> "Rx21 SZ64"
  | Rx22 SZ64 -> "Rx22 SZ64"
  | Rx23 SZ64 -> "Rx23 SZ64"
  | Rx24 SZ64 -> "Rx24 SZ64"
  | Rx25 SZ64 -> "Rx25 SZ64"
  | Rx26 SZ64 -> "Rx26 SZ64"
  | Rx27 SZ64 -> "Rx27 SZ64"
  | Rx28 SZ64 -> "Rx28 SZ64"
  | Rx29 SZ64 -> "Rx29 SZ64"
  | Rx30 SZ64 -> "Rx30 SZ64"
  | Rx0  SZ32 -> "Rx0 SZ32"
  | Rx1  SZ32 -> "Rx1 SZ32"
  | Rx2  SZ32 -> "Rx2 SZ32"
  | Rx3  SZ32 -> "Rx3 SZ32"
  | Rx4  SZ32 -> "Rx4 SZ32"
  | Rx5  SZ32 -> "Rx5 SZ32"
  | Rx6  SZ32 -> "Rx6 SZ32"
  | Rx7  SZ32 -> "Rx7 SZ32"
  | Rx8  SZ32 -> "Rx8 SZ32"
  | Rx9  SZ32 -> "Rx9 SZ32"
  | Rx10 SZ32 -> "Rx10 SZ32"
  | Rx11 SZ32 -> "Rx11 SZ32"
  | Rx12 SZ32 -> "Rx12 SZ32"
  | Rx13 SZ32 -> "Rx13 SZ32"
  | Rx14 SZ32 -> "Rx14 SZ32"
  | Rx15 SZ32 -> "Rx15 SZ32"
  | Rx16 SZ32 -> "Rx16 SZ32"
  | Rx17 SZ32 -> "Rx17 SZ32"
  | Rx18 SZ32 -> "Rx18 SZ32"
  | Rx19 SZ32 -> "Rx19 SZ32"
  | Rx20 SZ32 -> "Rx20 SZ32"
  | Rx21 SZ32 -> "Rx21 SZ32"
  | Rx22 SZ32 -> "Rx22 SZ32"
  | Rx23 SZ32 -> "Rx23 SZ32"
  | Rx24 SZ32 -> "Rx24 SZ32"
  | Rx25 SZ32 -> "Rx25 SZ32"
  | Rx26 SZ32 -> "Rx26 SZ32"
  | Rx27 SZ32 -> "Rx27 SZ32"
  | Rx28 SZ32 -> "Rx28 SZ32"
  | Rx29 SZ32 -> "Rx29 SZ32"
  | Rx30 SZ32 -> "Rx30 SZ32"
  | Rxzr -> "Rxzr")
  ^ ")"


let gpreg_of_string s =
  match s with
    "x0"  -> Rx0 SZ64
  | "x1"  -> Rx1 SZ64
  | "x2"  -> Rx2 SZ64
  | "x3"  -> Rx3 SZ64
  | "x4"  -> Rx4 SZ64
  | "x5"  -> Rx5 SZ64
  | "x6"  -> Rx6 SZ64
  | "x7"  -> Rx7 SZ64
  | "x8"  -> Rx8 SZ64
  | "x9"  -> Rx9 SZ64
  | "x10" -> Rx10 SZ64
  | "x11" -> Rx11 SZ64
  | "x12" -> Rx12 SZ64
  | "x13" -> Rx13 SZ64
  | "x14" -> Rx14 SZ64
  | "x15" -> Rx15 SZ64
  | "x16" -> Rx16 SZ64
  | "x17" -> Rx17 SZ64
  | "x18" -> Rx18 SZ64
  | "x19" -> Rx19 SZ64
  | "x20" -> Rx20 SZ64
  | "x21" -> Rx21 SZ64
  | "x22" -> Rx22 SZ64
  | "x23" -> Rx23 SZ64
  | "x24" -> Rx24 SZ64
  | "x25" -> Rx25 SZ64
  | "x26" -> Rx26 SZ64
  | "x27" -> Rx27 SZ64
  | "x28" -> Rx28 SZ64
  | "x29" -> Rx29 SZ64
  | "x30" -> Rx30 SZ64
  | "w0"  -> Rx0 SZ32
  | "w1"  -> Rx1 SZ32
  | "w2"  -> Rx2 SZ32
  | "w3"  -> Rx3 SZ32
  | "w4"  -> Rx4 SZ32
  | "w5"  -> Rx5 SZ32
  | "w6"  -> Rx6 SZ32
  | "w7"  -> Rx7 SZ32
  | "w8"  -> Rx8 SZ32
  | "w9"  -> Rx9 SZ32
  | "w10" -> Rx10 SZ32
  | "w11" -> Rx11 SZ32
  | "w12" -> Rx12 SZ32
  | "w13" -> Rx13 SZ32
  | "w14" -> Rx14 SZ32
  | "w15" -> Rx15 SZ32
  | "w16" -> Rx16 SZ32
  | "w17" -> Rx17 SZ32
  | "w18" -> Rx18 SZ32
  | "w19" -> Rx19 SZ32
  | "w20" -> Rx20 SZ32
  | "w21" -> Rx21 SZ32
  | "w22" -> Rx22 SZ32
  | "w23" -> Rx23 SZ32
  | "w24" -> Rx24 SZ32
  | "w25" -> Rx25 SZ32
  | "w26" -> Rx26 SZ32
  | "w27" -> Rx27 SZ32
  | "w28" -> Rx28 SZ32
  | "w29" -> Rx29 SZ32
  | "w30" -> Rx30 SZ32
  | "xzr" -> Rxzr
  | _ -> raise (Failure("illegal gpreg" ^ s))

let string_of_iregsp reg =
  match reg with
    Rgp reg -> string_of_gpreg reg
  | Rsp -> "(Rsp)"

let string_of_sysreg reg =
  match reg with
  | Rcntp_ctl_el0 -> "Rcntp_ctl_el0"
  | Rcntp_cval_el0 -> "Rcntp_cval_el0"
  | Rcntp_tval_el0 -> "Rcntp_tval_el0"
  | Rcntv_ctl_el0 -> "Rcntv_ctl_el0"
  | Rcntv_cval_el0 -> "Rcntv_cval_el0"
  | Rcntv_tval_el0 -> "Rcntv_tval_el0"
  | Rsp_el0 -> "Rsp_el0"
  | Rpmcr_el0 -> "Rpmcr_el0"
  | Rpmuserenr_el0 -> "Rpmuserenr_el0"
  | Rtpidrro_el0 -> "Rtpidrro_el0"
  | Rtpidr_el0 -> "Rtpidr_el0"
  | Rsp_el1 -> "Rsp_el1"
  | Relr_el1 -> "Relr_el1"
  | Rspsr_el1 -> "Rspsr_el1"
  | Rcsselr_el1 -> "Rcsselr_el1"
  | Rsctlr_el1 -> "Rsctlr_el1"
  | Ractlr_el1 -> "Ractlr_el1"
  | Rcpacr_el1 -> "Rcpacr_el1"
  | Rzcr_el1 -> "Rzcr_el1"
  | Rttbr0_el1 -> "Rttbr0_el1"
  | Rttbr1_el1 -> "Rttbr1_el1"
  | Rtcr_el1 -> "Rtcr_el1"
  | Resr_el1 -> "Resr_el1"
  | Rafsr0_el1 -> "Rafsr0_el1"
  | Rafsr1_el1 -> "Rafsr1_el1"
  | Rfar_el1 -> "Rfar_el1"
  | Rmair_el1 -> "Rmair_el1"
  | Rvbar_el1 -> "Rvbar_el1"
  | Rcontextidr_el1 -> "Rcontextidr_el1"
  | Rtpidr_el1 -> "Rtpidr_el1"
  | Ramair_el1 -> "Ramair_el1"
  | Rcntkctl_el1 -> "Rcntkctl_el1"
  | Rpar_el1 -> "Rpar_el1"
  | Rmdscr_el1 -> "Rmdscr_el1"
  | Rmdccint_el1 -> "Rmdccint_el1"
  | Rdisr_el1 -> "Rdisr_el1"
  | Rmpam0_el1 -> "Rmpam0_el1"
  | Rcnthctl_el2 -> "Rcnthctl_el2"
  | Rcntvoff_el2 -> "Rcntvoff_el2"
  | Rcntpoff_el2 -> "Rcntpoff_el2"
  | Rvmpidr_el2 -> "Rvmpidr_el2"
  | Rvttbr_el2 -> "Rvttbr_el2"
  | Rvtcr_el2 -> "Rvtcr_el2"
  | Rhcr_el2 -> "Rhcr_el2"
  | Ractlr_el2 -> "Ractlr_el2"
  | Rafsr0_el2 -> "Rafsr0_el2"
  | Rafsr1_el2 -> "Rafsr1_el2"
  | Ramair_el2 -> "Ramair_el2"
  | Rcptr_el2 -> "Rcptr_el2"
  | Relr_el2 -> "Relr_el2"
  | Resr_el2 -> "Resr_el2"
  | Rfar_el2 -> "Rfar_el2"
  | Rhacr_el2 -> "Rhacr_el2"
  | Rhpfar_el2 -> "Rhpfar_el2"
  | Rhstr_el2 -> "Rhstr_el2"
  | Rmair_el2 -> "Rmair_el2"
  | Rmpam_el2 -> "Rmpam_el2"
  | Rmpamhcr_el2 -> "Rmpamhcr_el2"
  | Rpmscr_el2 -> "Rpmscr_el2"
  | Rsctlr_el2 -> "Rsctlr_el2"
  | Rscxtnum_el2 -> "Rscxtnum_el2"
  | Rsp_el2 -> "Rsp_el2"
  | Rspsr_el2 -> "Rspsr_el2"
  | Rtcr_el2 -> "Rtcr_el2"
  | Rtfsr_el2 -> "Rtfsr_el2"
  | Rtpidr_el2 -> "Rtpidr_el2"
  | Rtrfcr_el2 -> "Rtrfcr_el2"
  | Rttbr0_el2 -> "Rttbr0_el2"
  | Rttbr1_el2 -> "Rttbr1_el2"
  | Rvbar_el2 -> "Rvbar_el2"
  | Rvdisr_el2 -> "Rvdisr_el2"
  | Rvncr_el2 -> "Rvncr_el2"
  | Rvpidr_el2 -> "Rvpidr_el2"
  | Rvsesr_el2 -> "Rvsesr_el2"
  | Rvstcr_el2 -> "Rvstcr_el2"
  | Rvsttbr_el2 -> "Rvsttbr_el2"
  | Rzcr_el2 -> "Rzcr_el2"
  | Ricc_sre_el2 -> "Ricc_sre_el2"
  | Ricc_hppir1_el1 -> "Ricc_hppir1_el1"
  | Rspsr_el3 -> "Rspsr_el3"
  | Relr_el3 -> "Relr_el3"
  | Resr_el3 -> "Resr_el3"
  | Rscr_el3 -> "Rscr_el3"
  | Rtpidr_el3 -> "Rtpidr_el3"



let sysreg_of_string s =
  match s with
  | "cntp_ctl_el0" -> Rcntp_ctl_el0
  | "cntp_cval_el0" -> Rcntp_cval_el0
  | "cntp_tval_el0" -> Rcntp_tval_el0
  | "cntv_ctl_el0" -> Rcntv_ctl_el0
  | "cntv_cval_el0" -> Rcntv_cval_el0
  | "cntv_tval_el0" -> Rcntv_tval_el0
  | "sp_el0" -> Rsp_el0
  | "pmcr_el0" -> Rpmcr_el0
  | "pmuserenr_el0" -> Rpmuserenr_el0
  | "tpidrro_el0" -> Rtpidrro_el0
  | "tpidr_el0" -> Rtpidr_el0
  | "sp_el1" -> Rsp_el1
  | "elr_el1" -> Relr_el1
  | "spsr_el1" -> Rspsr_el1
  | "csselr_el1" -> Rcsselr_el1
  | "sctlr_el1" -> Rsctlr_el1
  | "actlr_el1" -> Ractlr_el1
  | "cpacr_el1" -> Rcpacr_el1
  | "zcr_el1" -> Rzcr_el1
  | "ttbr0_el1" -> Rttbr0_el1
  | "ttbr1_el1" -> Rttbr1_el1
  | "tcr_el1" -> Rtcr_el1
  | "esr_el1" -> Resr_el1
  | "afsr0_el1" -> Rafsr0_el1
  | "afsr1_el1" -> Rafsr1_el1
  | "far_el1" -> Rfar_el1
  | "mair_el1" -> Rmair_el1
  | "vbar_el1" -> Rvbar_el1
  | "contextidr_el1" -> Rcontextidr_el1
  | "tpidr_el1" -> Rtpidr_el1
  | "amair_el1" -> Ramair_el1
  | "cntkctl_el1" -> Rcntkctl_el1
  | "par_el1" -> Rpar_el1
  | "mdscr_el1" -> Rmdscr_el1
  | "mdccint_el1" -> Rmdccint_el1
  | "disr_el1" -> Rdisr_el1
  | "mpam0_el1" -> Rmpam0_el1
  | "cnthctl_el2" -> Rcnthctl_el2
  | "cntvoff_el2" -> Rcntvoff_el2
  | "cntpoff_el2" -> Rcntpoff_el2
  | "vmpidr_el2" -> Rvmpidr_el2
  | "vttbr_el2" -> Rvttbr_el2
  | "vtcr_el2" -> Rvtcr_el2
  | "hcr_el2" -> Rhcr_el2
  | "actlr_el2" -> Ractlr_el2
  | "afsr0_el2" -> Rafsr0_el2
  | "afsr1_el2" -> Rafsr1_el2
  | "amair_el2" -> Ramair_el2
  | "cptr_el2" -> Rcptr_el2
  | "elr_el2" -> Relr_el2
  | "esr_el2" -> Resr_el2
  | "far_el2" -> Rfar_el2
  | "hacr_el2" -> Rhacr_el2
  | "hpfar_el2" -> Rhpfar_el2
  | "hstr_el2" -> Rhstr_el2
  | "mair_el2" -> Rmair_el2
  | "mpam_el2" -> Rmpam_el2
  | "mpamhcr_el2" -> Rmpamhcr_el2
  | "pmscr_el2" -> Rpmscr_el2
  | "sctlr_el2" -> Rsctlr_el2
  | "scxtnum_el2" -> Rscxtnum_el2
  | "sp_el2" -> Rsp_el2
  | "spsr_el2" -> Rspsr_el2
  | "tcr_el2" -> Rtcr_el2
  | "tfsr_el2" -> Rtfsr_el2
  | "tpidr_el2" -> Rtpidr_el2
  | "trfcr_el2" -> Rtrfcr_el2
  | "ttbr0_el2" -> Rttbr0_el2
  | "ttbr1_el2" -> Rttbr1_el2
  | "vbar_el2" -> Rvbar_el2
  | "vdisr_el2" -> Rvdisr_el2
  | "vncr_el2" -> Rvncr_el2
  | "vpidr_el2" -> Rvpidr_el2
  | "vsesr_el2" -> Rvsesr_el2
  | "vstcr_el2" -> Rvstcr_el2
  | "vsttbr_el2" -> Rvsttbr_el2
  | "zcr_el2" -> Rzcr_el2
  | "icc_sre_el2" -> Ricc_sre_el2
  | "icc_hppir1_el1" -> Ricc_hppir1_el1
  | "spsr_el3" -> Rspsr_el3
  | "elr_el3" -> Relr_el3
  | "esr_el3" -> Resr_el3
  | "scr_el3" -> Rscr_el3
  | "tpidr_el3" -> Rtpidr_el3
  | _ -> raise (Failure("illegal sysreg " ^ s))


