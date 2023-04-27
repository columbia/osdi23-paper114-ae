from enum import Enum
from AutoV.IRLoader.coq import *

class IRType:
    def to_coq(self) -> str:
        return "UNKNOWN_TYPE"
    def sizeof(self) -> int:
        return 0
    def sizeof_verbose(self) -> tuple[int]:
        return (self.sizeof(),)
    def __eq__(self, o: object) -> bool:
        if not isinstance(o, IRType):
            return False
        return self.to_coq() == o.to_coq()

class IntType(Enum):
    TI8 = 0
    TI16 = 1
    TI32 = 2
    TI64 = 3
    TI128 = 4

    def to_coq(self) -> str:
        return self.name
    def sizeof(self) -> int:
        return 1 << self.value
    def __str__(self):
        return self.name

class Ordering(Enum):
    NotAtomic = 0
    Unordered = 1
    Monotonic = 2
    Acquire = 3
    Release = 4
    AcquireRelease = 5
    SequentiallyConsistent = 6

    def to_coq(self) -> str:
        return "Od" + self.name
    def __str__(self):
        return self.name

class TBool(IRType):
    def __init__(self) -> None:
        self.inttype = IntType.TI8

    def to_coq(self) -> str:
        return "TBool"
    def sizeof(self) -> int:
        return 1

class TInt(IRType):
    def __init__(self, inttype: IntType) -> None:
        self.inttype = inttype
    def to_coq(self) -> str:
        return f"(TInt {self.inttype.to_coq()})"
    def sizeof(self) -> int:
        return self.inttype.sizeof()

class TVoid(IRType):
    def to_coq(self) -> str:
        return "TVoid"
    def sizeof(self) -> int:
        return 0

class TLabel(IRType):
    def to_coq(self) -> str:
        return "TLabel"
    def sizeof(self) -> int:
        return 0

class TFunction(IRType):
    def __init__(self, rettype: IRType, arglist: list[IRType]) -> None:
        self.rettype = rettype
        self.arglist = arglist
    def to_coq(self) -> str:
        rettype = self.rettype.to_coq()
        arglist = to_coq_typ_list(self.arglist)
        return f"(TFunction {rettype} {arglist})"
    def sizeof(self) -> int:
        return 0

class TPtr(IRType):
    def __init__(self, subtype: IRType) -> None:
        self.subtype = subtype 
    def to_coq(self) -> str:
        return f"(TPtr {self.subtype.to_coq()})"
    def sizeof(self) -> int:
        return 8

class TNamedStruct(IRType):
    def __init__(self, name: str, structs: dict[str, IRType]) -> None:
        self.name = name
        self.structs = structs
    def to_coq(self) -> str:
        return f"(TNamedStruct \"{self.name}\" {self.sizeof()})"
    def sizeof(self) -> int:
        struct = self.structs[self.name]
        return struct.sizeof()

class TStructElem:
    def __init__(self, name: str, typ: IRType, offset: int) -> None:
        self.name = name
        self.typ = typ
        self.offset = offset
    def to_coq(self) -> str:
        return f"(TElem \"{self.name}\" {self.typ.to_coq()} {self.offset})"

class TStruct(IRType):
    def __init__(self, elems: list[TStructElem], size: int) -> None:
        self.elems = elems
        self.size = size
    def to_coq(self) -> str:
        elems = to_coq_typ_list(self.elems)
        return f"(TStruct {self.size} {elems})"
    def sizeof(self) -> int:
        return self.size

class TArray(IRType):
    def __init__(self, subtype: IRType, length: int) -> None:
        self.subtype = subtype 
        self.length = length
    def to_coq(self) -> str:
        return f"(TArray {self.subtype.to_coq()} {self.length})"
    def sizeof(self) -> int:
        return self.subtype.sizeof() * self.length
    def sizeof_verbose(self) -> tuple[int]:
        return (self.subtype.sizeof(), self.length)

class TFixedVector(IRType):
    def __init__(self, subtype: IRType, length: int) -> None:
        self.subtype = subtype 
        self.length = length
    def to_coq(self) -> str:
        return f"(TFixedVector {self.subtype.to_coq()} {self.length})"
    def sizeof(self) -> int:
        return self.subtype.sizeof() * self.length
    def sizeof_verbose(self) -> tuple[int]:
        return (self.subtype.sizeof(), self.length)

class TScaleVector(IRType):
    def __init__(self, subtype: IRType) -> None:
        self.subtype = subtype 
    def to_coq(self) -> str:
        return f"(TScaleVector {self.subtype.to_coq()})"
    def sizeof(self) -> int:
        return 0
