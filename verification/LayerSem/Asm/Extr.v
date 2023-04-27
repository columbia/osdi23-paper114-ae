Require Extraction.
Require Import Coq.extraction.ExtrOcamlZInt.
Require Import Coq.extraction.ExtrOcamlString.
Require Import Coqlib.
Require Import AsmType.
Require Import AsmInsn.

Extraction "asmsem.ml" regsize gpreg sysreg iregsp regset flag asmcond extend index_typ op op_with_ext 
symbol asm_instruction procedure.
