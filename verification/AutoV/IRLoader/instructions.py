from AutoV.IRLoader.irtypes import *
from AutoV.IRLoader.values import *
from AutoV.IRLoader.coq import *

class IRInst:
    def to_coq(self) -> str:
        return "UNKNOWN_INSTRUCTION"

class IAlloc(IRInst):
    def __init__(self, typ: IRType, assign: str, align: int) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.align = align
    def to_coq(self) -> str:
        return f"(IAlloca {self.typ.to_coq()} \"{self.assign}\" {self.align})"

class IAtomicRMW(IRInst):
    def __init__(self, typ: IRType, assign: str, op: Op, ptr: IRValue, val: IRValue, 
                       order: Ordering, align: int) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.op = op
        self.ptr = ptr
        self.val = val
        self.order = order
        self.align = align
    def to_coq(self) -> str:
        return f"(IAtomicRMW {self.typ.to_coq()} \"{self.assign}\" {self.op.to_coq()} {self.ptr.to_coq()} {self.val.to_coq()} {self.order.to_coq()} {self.align})"

class IBinOp(IRInst):
    def __init__(self, typ: IRType, assign: str, op: Op, a: IRValue, b: IRValue) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.op = op
        self.a = a
        self.b = b
    def to_coq(self) -> str:
        return f"(IBinOp {self.typ.to_coq()} \"{self.assign}\" {self.op.to_coq(self.typ)} {self.a.to_coq()} {self.b.to_coq()})"

class IBranch(IRInst):
    def __init__(self, succ) -> None:
        self.succ = succ 
    def to_coq(self) -> str:
        return f"(IBranch {self.succ.to_coq()})"

class ICall(IRInst):
    def __init__(self, typ, assign, func, args) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.func = func
        self.args = args
    def to_coq(self) -> str:
        if isinstance(self.typ, TVoid):
            return f"(ICall {self.typ.to_coq()} None {self.func.to_coq()} {to_coq_value_list(self.args)})"
        else:
            return f"(ICall {self.typ.to_coq()} (Some \"{self.assign}\") {self.func.to_coq()} {to_coq_value_list(self.args)})"

class ICmpXchg(IRInst):
    def __init__(self, typ: IRType, assign: str, ptr: IRValue, cmp: IRValue, val: IRValue, 
                       succ_order: Ordering, fail_order: Ordering, align: int) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.ptr = ptr
        self.cmp = cmp
        self.val = val
        self.succ_order = succ_order
        self.fail_order = fail_order
        self.align = align
    def to_coq(self) -> str:
        return f"(ICmpXchg {self.typ.to_coq()} \"{self.assign}\" {self.ptr.to_coq()} {self.cmp.to_coq()} {self.val.to_coq()} {self.succ_order.to_coq()} {self.fail_order.to_coq()} {self.align})"

class ICondBranch(IRInst):
    def __init__(self, cond, true_succ, false_succ) -> None:
        self.cond = cond
        self.true_succ = true_succ 
        self.false_succ = false_succ 
    def to_coq(self) -> str:
        return f"(ICondBranch {self.cond.to_coq()} {self.true_succ.to_coq()} {self.false_succ.to_coq()})"

class IExtractElem(IRInst):
    def __init__(self, typ, assign, val, idx) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.val = val
        self.idx = idx
    def to_coq(self) -> str:
        return f"(IExtractElem {self.typ.to_coq()} \"{self.assign}\" {self.val.to_coq()} {self.idx.to_coq()})"

class IExtractValue(IRInst):
    def __init__(self, typ, assign, val, idx) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.val = val
        self.idx = idx
    def to_coq(self) -> str:
        return f"(IExtractValue {self.typ.to_coq()} \"{self.assign}\" {self.val.to_coq()} {to_list(self.idx)})"

class IFence(IRInst):
    def __init__(self, order: Ordering) -> None:
        self.order = order
    def to_coq(self) -> str:
        return f"(IFence {self.order.to_coq()})"

class IFreeze(IRInst):
    def __init__(self, typ, assign, val) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.val = val
    def to_coq(self) -> str:
        return f"(IFreeze {self.typ.to_coq()} \"{self.assign}\" {self.val.to_coq()})"

class IGetElemPtr(IRInst):
    def __init__(self, typ, assign, val, idx) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.val = val
        self.idx = idx
    def to_coq(self) -> str:
        return f"(IGetElemPtr {self.typ.to_coq()} \"{self.assign}\" {self.val.typ.to_coq()} {self.val.to_coq()} {to_coq_value_list(self.idx)})"

class IInsertElem(IRInst):
    def __init__(self, typ, assign, target, val, idx) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.target = target
        self.val = val
        self.idx = idx
    def to_coq(self) -> str:
        return f"(IInsertElem {self.typ.to_coq()} \"{self.assign}\" {self.target.to_coq()} {self.val.to_coq()} {self.idx.to_coq()})"

class IInsertValue(IRInst):
    def __init__(self, typ, assign, target, val, idx) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.target = target
        self.val = val
        self.idx = idx
    def to_coq(self) -> str:
        return f"(IInsertValue {self.typ.to_coq()} \"{self.assign}\" {self.target.to_coq()} {self.val.to_coq()} {to_list(self.idx)})"

class ILoad(IRInst):
    def __init__(self, typ, assign, ptr, align) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.ptr = ptr
        self.align = align
    def to_coq(self) -> str:
        return f"(ILoad {self.typ.to_coq()} \"{self.assign}\" {self.ptr.to_coq()} {self.align})"

class IPHI(IRInst):
    def __init__(self, typ, assign, values, blocks) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.values = values
        self.blocks = blocks

class IUnaryOp(IRInst):
    def __init__(self, typ, assign, op, a) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.op = op
        self.a = a
    def to_coq(self) -> str:
        return f"(IUnaryOp {self.typ.to_coq()} \"{self.assign}\" {self.op.to_coq(self.typ)} {self.a.to_coq()})"

class IReturn(IRInst):
    def __init__(self, typ, val) -> None:
        self.typ = typ
        self.val = val
    def to_coq(self) -> str:
        if self.val:
            return f"(IReturn {self.typ.to_coq()} (Some {self.val.to_coq()}))"
        else:
            return f"(IReturn {self.typ.to_coq()} None)"

class ISelect(IRInst):
    def __init__(self, typ, assign, cond, true_val, false_val) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.cond = cond
        self.true_val = true_val
        self.false_val = false_val
    def to_coq(self) -> str:
        return f"(ISelect {self.typ.to_coq()} \"{self.assign}\" {self.cond.to_coq()} {self.true_val.to_coq()} {self.false_val.to_coq()})"

class IShuffleVec(IRInst):
    def __init__(self, typ, assign, operands) -> None:
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.operands = operands
    def to_coq(self) -> str:
        return f"(IShuffleVec {self.typ.to_coq()} \"{self.assign}\" {to_coq_value_list(self.operands)})"

class IStore(IRInst):
    def __init__(self, ptr, val, align) -> None:
        self.ptr = ptr
        self.val = val
        self.align = align
    def to_coq(self) -> str:
        return f"(IStore {self.val.typ.to_coq()} {self.ptr.to_coq()} {self.val.to_coq()} {self.align})"

class ISwitch(IRInst):
    def __init__(self, cond, default, val_list, succ_list) -> None:
        self.cond = cond
        self.default = default
        self.val_list = val_list
        self.succ_list = succ_list

class IUnreachable(IRInst):
    def to_coq(self) -> str:
        return f"IUnreachable"

class IAssign(IRInst):
    def __init__(self, typ, assign, value):
        self.typ = typ
        self.assign = to_coq_name(assign)
        self.value = value
    def to_coq(self) -> str:
        return f"(IAssign {self.typ.to_coq()} \"{self.assign}\" {self.value.to_coq()})"

class IIf(IRInst):
    def __init__(self, cond, true_body, false_body=None):
        self.cond = cond
        self.true_body = true_body
        self.false_body = false_body
    def to_coq(self) -> str:
        true_block = to_coq_code_block(self.true_body)
        false_block = to_coq_code_block(self.false_body)
        return f"(IIf {self.cond.to_coq()}\n" + add_indent(true_block, 5) + "\n" + add_indent(false_block, 5) + ")"

class ILoop(IRInst):
    def __init__(self, body):
        self.body = body
    def to_coq(self) -> str:
        loop_block = to_coq_code_block(self.body)
        return f"(ILoop\n" + add_indent(loop_block, 7) + ")"

class IContinue(IRInst):
    def to_coq(self) -> str:
        return f"IContinue"

class IBreak(IRInst):
    def to_coq(self) -> str:
        return f"IBreak"
