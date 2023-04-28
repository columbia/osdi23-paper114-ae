from enum import Enum, auto
from AutoV.IRLoader.irtypes import *
from AutoV.IRLoader.coq import *

class Op(Enum):
    # Cmp Op
    Cslt = auto()
    Csle = auto()
    Cult = auto()
    Cule = auto()
    Ceq = auto()
    Cne = auto()
    Csgt = auto()
    Csge = auto()
    Cugt = auto()
    Cuge = auto()
    # Binary Op
    OAdd = auto()
    OAnd = auto()
    OAshr = auto()
    OFadd = auto()
    OFdiv = auto()
    OFmul = auto()
    OFsub = auto()
    OLshr = auto()
    OMul = auto()
    OOr = auto()
    OSdiv = auto()
    OSrem = auto()
    OShl = auto()
    OSub = auto()
    OUdiv = auto()
    OUrem = auto()
    OXor = auto()
    OBitCast = auto()
    OFPExt = auto()
    OFPToSI = auto()
    OFPToUI = auto()
    OFPTrunc = auto()
    OFneg = auto()
    OIntToPtr = auto()
    OPtrToInt = auto()
    OSExt = auto()
    OSIToFP = auto()
    OTrunc = auto()
    OUIToFP = auto()
    OZExt = auto()
    OGetElementPtr = auto()
    OXchg = auto()
    OSelect = auto()

    def to_coq(self, ty=None) -> str:
        if self in [Op.OBitCast, Op.OFPExt, Op.OFPToSI, Op.OFPToUI, Op.OFPTrunc, Op.OIntToPtr, 
                    Op.OSExt, Op.OSIToFP, Op.OTrunc, Op.OUIToFP, Op.OZExt, Op.OGetElementPtr]:
            return f"({self.name} {ty.to_coq()})"
        return self.name

class IRValue:
    def __init__(self) -> None:
        self.typ = IRType()

    def to_coq(self) -> str:
        return "UNSUPPORTED_VALUE"

class VUndef(IRValue):
    def __init__(self, typ: IRType) -> None:
        self.typ = typ
    def to_coq(self) -> str:
        return f"VUndef"

class VNull(IRValue):
    def __init__(self, typ: IRType) -> None:
        self.typ = typ
    def to_coq(self) -> str:
        return f"VNull"

class VAggZero(IRValue):
    def __init__(self, typ: IRType) -> None:
        self.typ = typ
    def to_coq(self) -> str:
        return f"VAggZero"

class VGlobal(IRValue):
    def __init__(self, typ: IRType, name: str) -> None:
        self.typ = typ
        self.name = name
    def to_coq(self) -> str:
        return f"(VGlobal \"{self.name}\")"

class VLocal(IRValue):
    def __init__(self, typ: IRType, name: str) -> None:
        self.typ = typ
        self.name = to_coq_name(name)
    def to_coq(self) -> str:
        return f"(VLocal \"{self.name}\")"

class VInt(IRValue):
    def __init__(self, typ: IRType, val: int) -> None:
        self.typ = typ
        max_v = 1 << (8 * typ.sizeof())
        if val > max_v - min(256, max_v / 32):
            val = val - max_v
        self.val = val
    def to_coq(self) -> str:
        return f"(VInt ({self.val}))"

class VBool(IRValue):
    def __init__(self, val: bool) -> None:
        self.val = val
        self.typ = TBool()
    def to_coq(self) -> str:
        return f"(VBool {'true' if self.val else 'false'})"

class VPtr(IRValue):
    def __init__(self, typ: IRType, val: IRValue) -> None:
        self.typ = typ
        self.val = val
    def to_coq(self) -> str:
        return f"(VPtr {self.val.to_coq()})"

class VExpr(IRValue):
    def __init__(self, typ: IRType, op: Op, operands: list[IRValue]) -> None:
        self.typ = typ
        self.op = op
        self.operands = operands
    def to_coq(self) -> str:
        operands = to_coq_value_list(self.operands)
        if self.op == Op.OGetElementPtr:
            return f"(VExpr {self.typ.to_coq()} {self.op.to_coq(self.operands[0].typ)} {operands})"
        else:
            return f"(VExpr {self.typ.to_coq()} {self.op.to_coq(self.typ)} {operands})"

class VStruct(IRValue):
    def __init__(self, typ: IRType, contents: list[IRValue]) -> None:
        self.typ = typ
        self.contents = contents
    def to_coq(self) -> str:
        contents = to_coq_value_list(self.contents)
        return f"(VStruct {contents})"

class VLabel(IRValue):
    def __init__(self, name: str) -> None:
        self.name = name
    def to_coq(self) -> str:
        return f"(VLabel \"{self.name}\")"

class VInlineAsm(IRValue):
    def __init__(self, typ: IRType, asm: str, sideeffect: bool, constraints: str) -> None:
        self.typ = typ
        self.asm = asm
        self.sideeffect = sideeffect
        self.constraints = constraints
    def to_coq(self) -> str:
        return "INLINE_ASM"
