import z3
import random
import string
import pprint

from AutoV.IRLoader.coq import *


class SpecType:

    def __init__(self, name: str):
        self.name = name

    def get_z3_type(self):
        if self.name in Inductive.created_z3_types:
            return Inductive.created_z3_types[self.name]
        if self.name in Struct.created_z3_types:
            return Struct.created_z3_types[self.name]
        return z3.DeclareSort(self.name)

    def from_z3_value(self, value):
        return SpecValue(self, value)

    def declare(self, name: str, nid: int):
        return SpecValue(self, z3.Const(f"{name}.{nid}", self.get_z3_type()))

    def __eq__(self, other):
        if not isinstance(other, SpecType):
            return False
        return self.name == other.name

    def __str__(self):
        return self.name

UNKNOWN_TYPE = SpecType("UNKNOWN_TYPE")

'''
Built-in Types
'''

class Int(SpecType):

    def __init__(self):
        super().__init__("Z")

    def get_z3_type(self):
        return z3.IntSort()

    def from_z3_value(self, value):
        return IntValue(value)

    def declare(self, name: str, nid: int):
        return IntValue(z3.Const(f"{name}.{nid}", self.get_z3_type()))

    def __str__(self):
        return "Z"


class String(SpecType):

    def __init__(self):
        super().__init__("string")

    def get_z3_type(self):
        return z3.StringSort()

    def from_z3_value(self, value):
        return StringValue(value)

    def declare(self, name: str, nid: int):
        return StringValue(z3.Const(f"{name}.{nid}", self.get_z3_type()))

    def __str__(self):
        return "string"

class Bool(SpecType):

    def __init__(self):
        super().__init__("bool")

    def get_z3_type(self):
        return z3.BoolSort()

    def from_z3_value(self, value):
        return BoolValue(value)

    def declare(self, name: str, nid: int):
        return BoolValue(z3.Const(f"{name}.{nid}", self.get_z3_type()))

    def __str__(self):
        return "bool"

class Prop(SpecType):

    def __init__(self):
        super().__init__("Prop")

    def get_z3_type(self):
        return z3.BoolSort()

    def from_z3_value(self, value):
        return BoolValue(value)

    def declare(self, name: str, nid: int):
        return BoolValue(z3.Const(f"{name}.{nid}", self.get_z3_type()))

    def __str__(self):
        return "Prop"


class Type(SpecType):

    def __init__(self):
        super().__init__("Type")

    def get_z3_type(self):
        raise Exception("Type does not have a z3 type")

    def from_z3_value(self, value):
        raise Exception("Type does not have instance")

    def declare(self, name: str, nid: int):
        raise Exception("Type does not have a z3 type")

    def __str__(self):
        return "Type"


class ZMap(SpecType):

    def __init__(self, elem_type: SpecType):
        super().__init__(f"ZMap_{elem_type.name}")
        self.elem_type = elem_type

    def get_z3_type(self):
        return z3.ArraySort(z3.IntSort(), self.elem_type.get_z3_type())

    def from_z3_value(self, value):
        return ZMapValue(self, value)

    def declare(self, name: str, nid: int):
        return ZMapValue(self, z3.Array(f"name.{nid}", z3.IntSort(), self.elem_type.get_z3_type()))

    def __str__(self):
        return "(ZMap.t " + str(self.elem_type) + ")"


'''
Structural Types
'''


class Arg:

    def __init__(self, name: str, typ: SpecType):
        self.name = name
        self.type = typ

    def __str__(self):
        return f"({self.name}: {self.type})"


class Struct(SpecType):

    created_z3_types = {}

    def __init__(self, name: str, elems: list[Arg]):
        super().__init__(name)
        self.elems = elems
        self.elem_type = {}
        for elem in elems:
            self.elem_type[elem.name] = elem.type
        self._z3_type = None

        '''
        if name in Struct.created_z3_types:
            self.z3_type = Struct.created_z3_types[name]
            return

        elems = []
        for e in self.elems:
            t = e.type.get_z3_type()
            elems.append((e.name, t))
        T = z3.Datatype(self.name)
        T.declare(f"mk{self.name}", *elems)
        self.z3_type = T.create()

        Struct.created_z3_types[name] = self.z3_type
        '''

    def __str__(self):
        return self.name

    def define(self):
        args = ";\n".join(f"{e.name}: {e.type}" for e in self.elems)
        return f"Record {self.name} :=\n" +\
               f"  mk{self.name}" + " {\n" +\
                add_indent(args, 4) + "\n" +\
                "  }."

    def get_z3_type(self):
        if self._z3_type is not None:
            return self._z3_type
        elems = []
        for e in self.elems:
            t = e.type.get_z3_type()
            elems.append((e.name, t))
        T = z3.Datatype(self.name)
        T.declare(f"mk{self.name}", *elems)
        self._z3_type = T.create()
        Struct.created_z3_types[self.name] = self._z3_type
        return self._z3_type

    def from_z3_value(self, value):
        return StructValue(self, value)

    def construct(self, elems):
        elems = [e.get_z3_value() for e in elems]
        return self.from_z3_value(getattr(self.get_z3_type(), f"mk{self.name}")(*elems))

    def declare(self, name: str, nid: int):
        return StructValue(self, z3.Const(f"{name}.{nid}", self.get_z3_type()))


class IndConstr:

    def __init__(self, name: str, args: list[Arg]):
        self.name = name
        self.args = args

    def __str__(self):
        args = " ".join([str(a) for a in self.args])
        return f"{self.name} {args}"


class Inductive(SpecType):

    created_z3_types = {}

    def __init__(self, name: str, constrs: list[IndConstr]):
        super().__init__(name)
        self.constrs = constrs 
        self.constr = {}
        self.arg_type = {}
        for cons in constrs:
            self.constr[cons.name] = cons.args
            for arg in cons.args:
                assert(arg.name not in self.arg_type)
                self.arg_type[arg.name] = arg.type
        self._z3_type = None

        '''
        if name in Inductive.created_z3_types:
            self.z3_type = Inductive.created_z3_types[name]
            return

        T = z3.Datatype(self.name)
        for c in self.constrs:
            cons = []
            for a in c.args:
                if a.type.name == self.name:
                    cons.append((a.name, T))
                else:
                    cons.append((a.name, a.type.get_z3_type()))
            T.declare(c.name, *cons)

        self.z3_type = T.create()
        Inductive.created_z3_types[name] = self.z3_type
        '''

    def __str__(self):
        return self.name

    def define(self):
        arms = "\n| ".join([str(c) for c in self.constrs])
        return f"Inductive {self.name}: Type := \n| {arms}."

    def get_z3_type(self):
        if self._z3_type is not None:
            return self._z3_type
        T = z3.Datatype(self.name)
        for c in self.constrs:
            cons = []
            for a in c.args:
                if a.type.name == self.name:
                    cons.append((a.name, T))
                else:
                    cons.append((a.name, a.type.get_z3_type()))
            T.declare(c.name, *cons)
        self._z3_type = T.create()
        Inductive.created_z3_types[self.name] = self._z3_type
        return self._z3_type

    def from_z3_value(self, value):
        return IndValue(self, value)

    def declare(self, name: str, nid: int):
        return IndValue(self, z3.Const(f"{name}.{nid}", self.get_z3_type()))

    def construct(self, constr, args):
        if isinstance(self, (Option, List)):
            constr = f"{constr}_{self.elem_type.name}"
        args = [a.get_z3_value() for a in args]
        if len(args) == 0:
            return self.from_z3_value(getattr(self.get_z3_type(), constr))
        else:
            return self.from_z3_value(getattr(self.get_z3_type(), constr)(*args))


class Function(SpecType):

    def __init__(self, rettype: SpecType, args: list[SpecType]):
        super().__init__("Func_" + "_".join([a.name for a in args]) + "_" + rettype.name)
        self.rettype = rettype
        self.args = args
        
    def declare(self, name: str, nid: int):
        return FuncValue(self, z3.Const(f"{name}.{nid}", self.get_z3_type()))

    def from_z3_value(self, value):
        return FuncValue(self, value)

    def __str__(self):
        args = ""
        for i in range(len(self.args)):
            args = args + str(self.args[i]) + " -> "
        return f"{args}{self.rettype}"


Ptr = Struct("Ptr", [Arg("pbase", String()), Arg("poffset", Int())])


class Tuple(Struct):

    def __init__(self, types: list[SpecType]):
        self.types = types
        type_name = f"Tuple_{'_'.join(t.name for t in types)}"
        elems = [Arg(f"elem_{i}", types[i]) for i in range(len(types))]
        super().__init__(type_name, elems)

    def __str__(self):
        types = " * ".join(str(t) for t in self.types)
        return f"({types})"


class List(Inductive):

    def __init__(self, elem_type):
        self.elem_type = elem_type
        elem_name = elem_type.name
        type_name = f"List_{elem_name}"
        cons = f"cons_{elem_name}"
        head = f"head_{elem_name}"
        tail = f"tail_{elem_name}"
        nil = f"nil_{elem_name}"
        super().__init__(type_name, [IndConstr(cons, [Arg(head, elem_type), Arg(tail, SpecType(type_name))]),
                                     IndConstr(nil, [])])

        #fargs = [self.get_z3_type(), self.get_z3_type(), self.get_z3_type()]
        #self.concat_func = z3.Function(self.name + "_concat", *fargs)

    def __str__(self):
        return f"list {self.elem_type}"

    @property
    def concat_func(self):
        fargs = [self.get_z3_type(), self.get_z3_type(), self.get_z3_type()]
        return z3.Function(self.name + "_concat", *fargs)


class Option(Inductive):

    def __init__(self, elem_type: SpecType):
        self.elem_type = elem_type
        elem_name = elem_type.name
        type_name = f"Option_{elem_name}"
        some = f"Some_{elem_name}"
        value = f"value_{elem_name}"
        none = f"None_{elem_name}"
        super().__init__(type_name, [IndConstr(some, [Arg(value, elem_type)]), IndConstr(none, [])])
    
    def __str__(self):
        return f"(option {self.elem_type})"

Nat = Inductive("nat", [IndConstr("O", []), IndConstr("S", [Arg("pred", SpecType("nat"))])])


'''
Spec Value
'''


class SpecValue:

    def __init__(self, typ: SpecType, val):
        self.type = typ
        if isinstance(val, bool):
            val = z3.BoolVal(val)
        elif isinstance(val, int):
            val = z3.IntVal(val)
        elif isinstance(val, str):
            val = z3.StringVal(val)
        self.value = val

    def get_type(self):
        return self.type

    def get_z3_value(self):
        return self.value

    def __str__(self):
        return f"Value({self.type} {self.value})"


class IntValue(SpecValue):

    land_func = z3.Function("land", z3.IntSort(), z3.IntSort(), z3.IntSort())
    lor_func = z3.Function("lor", z3.IntSort(), z3.IntSort(), z3.IntSort())
    lxor_func = z3.Function("lxor", z3.IntSort(), z3.IntSort(), z3.IntSort())
    lnot_func = z3.Function("lxor", z3.IntSort(), z3.IntSort())

    def __init__(self, value):
        if isinstance(value, int):
            super().__init__(Int(), z3.IntVal(value))
        else:
            super().__init__(Int(), value)

    def neg(self):
        return IntValue(z3.simplify(-self.value))

    def add(self, other):
        if isinstance(other, IntValue):
            return IntValue(z3.simplify(self.value + other.value))
        else:
            raise Exception(f"Cannot add IntValue with {type(other)}")

    def sub(self, other):
        if isinstance(other, IntValue):
            return IntValue(z3.simplify(self.value - other.value))
        else:
            raise Exception(f"Cannot sub IntValue with {type(other)}")

    def mul(self, other):
        if isinstance(other, IntValue):
            return IntValue(z3.simplify(self.value * other.value))
        else:
            raise Exception(f"Cannot mul IntValue with {type(other)}")

    def div(self, other):
        if isinstance(other, IntValue):
            return IntValue(z3.simplify(self.value / other.value))
        else:
            raise Exception(f"Cannot div IntValue with {type(other)}")

    def mod(self, other):
        if isinstance(other, IntValue):
            return IntValue(z3.simplify(self.value % other.value))
        else:
            raise Exception(f"Cannot mod IntValue with {type(other)}")

    def shiftl(self, other):
        if isinstance(other, IntValue):
            return IntValue(z3.simplify(self.value * z3.ToInt(2 ** other.value)))
        else:
            raise Exception(f"Cannot shiftl IntValue with {type(other)}")

    def shiftr(self, other):
        if isinstance(other, IntValue):
            return IntValue(z3.simplify(self.value / z3.ToInt(2 ** other.value)))
        else:
            raise Exception(f"Cannot shiftr IntValue with {type(other)}")

    def land(self, other):
        if isinstance(other, IntValue):
            return IntValue(z3.simplify(self.land_func(self.value, other.value)))
        else:
            raise Exception(f"Cannot land IntValue with {type(other)}")

    def lor(self, other):
        if isinstance(other, IntValue):
            return IntValue(z3.simplify(self.lor_func(self.value, other.value)))
        else:
            raise Exception(f"Cannot lor IntValue with {type(other)}")

    def lxor(self, other):
        if isinstance(other, IntValue):
            return IntValue(z3.simplify(self.lxor_func(self.value, other.value)))
        else:
            raise Exception(f"Cannot lxor IntValue with {type(other)}")

    def lnot(self):
        return IntValue(z3.simplify(self.lnot_func(self.value)))

    def eq(self, other):
        if isinstance(other, IntValue):
            return BoolValue(z3.simplify(self.value == other.value))
        else: 
            raise Exception(f"Cannot eq IntValue with {type(other)}")

    def ne(self, other):
        if isinstance(other, IntValue):
            return BoolValue(z3.simplify(self.value != other.value))
        else:
            raise Exception(f"Cannot ne IntValue with {type(other)}")

    def lt(self, other):
        if isinstance(other, IntValue):
            return BoolValue(z3.simplify(self.value < other.value))
        else:
            raise Exception(f"Cannot lt IntValue with {type(other)}")

    def le(self, other):
        if isinstance(other, IntValue):
            return BoolValue(z3.simplify(self.value <= other.value))
        else:
            raise Exception(f"Cannot le IntValue with {type(other)}")

    def gt(self, other):
        if isinstance(other, IntValue):
            return BoolValue(z3.simplify(self.value > other.value))
        else:
            raise Exception(f"Cannot gt IntValue with {type(other)}")

    def ge(self, other):
        if isinstance(other, IntValue):
            return BoolValue(z3.simplify(self.value >= other.value))
        else:
            raise Exception(f"Cannot ge IntValue with {type(other)}")


class StringValue(SpecValue):

    def __init__(self, value: str):
        super().__init__(String(), value)

    def get_z3_value(self):
        return self.value

    def eq(self, other):
        if isinstance(other, StringValue):
            return BoolValue(z3.simplify(self.get_z3_value() == other.get_z3_value()))
        else:
            raise Exception(f"Cannot eq StringValue with {type(other)}")

    def ne(self, other):
        if isinstance(other, StringValue):
            return BoolValue(z3.simplify(self.get_z3_value() != other.get_z3_value()))
        else:
            raise Exception(f"Cannot ne StringValue with {type(other)}")


class BoolValue(SpecValue):

    def __init__(self, value):
        super().__init__(Bool(), value)

    def eq(self, other):
        if isinstance(other, BoolValue):
            return BoolValue(z3.simplify(self.value == other.value))
        else:
            raise Exception(f"Cannot eq BoolValue with {type(other)}")

    def ne(self, other):
        if isinstance(other, BoolValue):
            return BoolValue(z3.simplify(self.value != other.value))
        else:
            raise Exception(f"Cannot ne BoolValue with {type(other)}")

    def andb(self, other):
        if isinstance(other, BoolValue):
            return BoolValue(z3.simplify(z3.And(self.value, other.value)))
        else:
            raise Exception(f"Cannot andb BoolValue with {type(other)}")

    def orb(self, other):
        if isinstance(other, BoolValue):
            return BoolValue(z3.simplify(z3.Or(self.value, other.value)))
        else:
            raise Exception(f"Cannot orb BoolValue with {type(other)}")

    def negb(self):
        return BoolValue(z3.simplify(z3.Not(self.value)))

    def xorb(self, other):
        if isinstance(other, BoolValue):
            return BoolValue(z3.simplify(z3.Xor(self.value, other.value)))
        else:
            raise Exception(f"Cannot xorb BoolValue with {type(other)}")


class ZMapValue(SpecValue):

    def __init__(self, typ, value):
        super().__init__(typ, value)

    def get(self, idx: IntValue):
        assert(idx.get_type() == Int())
        return self.get_type().elem_type.from_z3_value(z3.simplify(self.value[idx.value]))  # type: ignore

    def set(self, idx: IntValue, value: SpecValue):
        assert(isinstance(idx, IntValue))
        assert(isinstance(value, SpecValue) and value.get_type() == self.type.elem_type)  # type: ignore
        return ZMapValue(self.type, z3.simplify(z3.Store(self.value, idx.value, value.get_z3_value())))

    def eq(self, other):
        if isinstance(other, ZMapValue):
            return BoolValue(z3.simplify(self.value == other.value))
        else:
            raise Exception(f"Cannot eq ZMapValue with {type(other)}")


class FuncValue(SpecValue):

    def __init__(self, typ: Function, value):
        super().__init__(typ, value)
        fargs = [a.get_z3_type() for a in typ.args] + [typ.rettype.get_z3_type()]
        self.z3_func = z3.Function(str(self.value) + "_call", *fargs)

    def call(self, args: list[SpecValue]):
        return self.get_type().rettype.from_z3_value(z3.simplify(self.z3_func(*[v.get_z3_value() for v in args])))


class StructValue(SpecValue):

    def __init__(self, typ: Struct, value):
        super().__init__(typ, value)

    def get(self, field: str):
        if isinstance(self.type, Tuple):
            field = f"elem_{field}"
        T = self.get_type()
        assert(isinstance(T, Struct))
        return T.elem_type[field].from_z3_value(z3.simplify(getattr(T.get_z3_type(), field)(self.get_z3_value())))

    def set(self, field: str, value: SpecValue):
        if isinstance(self.type, Tuple):
            field = f"elem_{field}"
        T = self.get_type()
        assert(isinstance(T, Struct))
        mk = getattr(T.get_z3_type(), f"mk{self.get_type().name}")
        elems = []
        for e in T.elems:
            if e.name == field:
                elems.append(value.get_z3_value())
            else:
                elems.append(getattr(T.get_z3_type(), e.name)(self.get_z3_value()))
        return self.get_type().from_z3_value(z3.simplify(mk(*elems)))

    def eq(self, other):
        if isinstance(other, StructValue):
            return BoolValue(z3.simplify(self.value == other.value))
        else: 
            raise Exception(f"Cannot eq StructValue with {type(other)}")


class IndValue(SpecValue):

    def __init__(self, typ, value):
        super().__init__(typ, value)

    def get(self, field: str):
        if isinstance(self.type, (Option, List)):
            field = f"{field}_{self.type.elem_type.name}"
        T = self.get_type()
        assert(isinstance(T, Inductive))
        return T.arg_type[field].from_z3_value(z3.simplify(getattr(T.get_z3_type(), field)(self.get_z3_value())))

    def concat(self, another):
        T = self.get_type()
        assert(isinstance(T, List))
        assert(another.get_type() == T)
        return T.from_z3_value(z3.simplify(T.concat_func(self.get_z3_value(), another.get_z3_value())))

    def eq(self, other):
        if isinstance(other, IndValue):
            return BoolValue(z3.simplify(self.value == other.value))
        else:
            raise Exception(f"Cannot eq IndValue with {type(other)}")


def int_to_ptr():
    return Function(Ptr, [Int()]).declare("int_to_ptr", 0)
def ptr_to_int():
    return Function(Int(), [Ptr]).declare("ptr_to_int", 0)
def z_to_nat():
    return Function(Nat, [Int()]).declare("z_to_nat", 0)

'''
Register Inductive Types
'''

Regsize = Inductive("regsize", [IndConstr("SZ32", []), IndConstr("SZ64", [])])
Gpreg = Inductive("gpreg", [IndConstr(f"Rx{i}", [Arg(f"sz_x{i}", Regsize)]) for i in range(31)] + [IndConstr("Rxzr", [])])
Sysreg = Inductive("sysreg", 
    [IndConstr("Rcntp_ctl_el0", []), IndConstr("Rcntp_cval_el0", []), IndConstr("Rcntp_tval_el0", []), IndConstr("Rcntv_ctl_el0", []), 
     IndConstr("Rcntv_cval_el0", []), IndConstr("Rcntv_tval_el0", []),IndConstr("Rsp_el0", []), IndConstr("Rpmcr_el0", []), 
     IndConstr("Rpmuserenr_el0", []), IndConstr("Rtpidrro_el0", []), IndConstr("Rtpidr_el0 ", []),IndConstr("Rsp_el1", []), 
     IndConstr("Relr_el1", []), IndConstr("Rspsr_el1", []), IndConstr("Rcsselr_el1", []), IndConstr("Rsctlr_el1", []), 
     IndConstr("Ractlr_el1", []), IndConstr("Rcpacr_el1", []), IndConstr("Rzcr_el1", []),IndConstr("Rttbr0_el1", []), 
     IndConstr("Rttbr1_el1", []), IndConstr("Rtcr_el1", []), IndConstr("Resr_el1", []), IndConstr("Rafsr0_el1", []), 
     IndConstr("Rafsr1_el1", []), IndConstr("Rfar_el1", []), IndConstr("Rmair_el1", []), IndConstr("Rvbar_el1", []), 
     IndConstr("Rcontextidr_el1", []), IndConstr("Rtpidr_el1", []), IndConstr("Ramair_el1", []), IndConstr("Rcntkctl_el1", []),
     IndConstr("Rpar_el1", []), IndConstr("Rmdscr_el1", []),IndConstr("Rmdccint_el1", []), IndConstr("Rdisr_el1", []), 
     IndConstr("Rmpam0_el1", []), IndConstr("Ricc_hppir1_el1", []),IndConstr("Rcnthctl_el2", []), IndConstr("Rcntvoff_el2", []), 
     IndConstr("Rcntpoff_el2", []), IndConstr("Rvmpidr_el2", []), IndConstr("Rvttbr_el2", []), IndConstr("Rvtcr_el2", []), 
     IndConstr("Rhcr_el2", []),IndConstr("Ractlr_el2", []), IndConstr("Rafsr0_el2", []), IndConstr("Rafsr1_el2", []), 
     IndConstr("Ramair_el2", []), IndConstr("Rcptr_el2", []), IndConstr("Relr_el2", []), IndConstr("Resr_el2", []), 
     IndConstr("Rfar_el2", []),IndConstr("Rhacr_el2", []), IndConstr("Rhpfar_el2", []), IndConstr("Rhstr_el2", []), 
     IndConstr("Rmair_el2", []), IndConstr("Rmpam_el2", []), IndConstr("Rmpamhcr_el2", []), IndConstr("Rpmscr_el2", []), 
     IndConstr("Rsctlr_el2", []),IndConstr("Rscxtnum_el2", []), IndConstr("Rsp_el2", []), IndConstr("Rspsr_el2", []), 
     IndConstr("Rtcr_el2", []), IndConstr("Rtfsr_el2", []), IndConstr("Rtpidr_el2", []), IndConstr("Rtrfcr_el2", []), 
     IndConstr("Rttbr0_el2", []),IndConstr("Rttbr1_el2", []), IndConstr("Rvbar_el2", []), IndConstr("Rvdisr_el2", []), 
     IndConstr("Rvncr_el2", []), IndConstr("Rvpidr_el2", []), IndConstr("Rvsesr_el2", []), IndConstr("Rvstcr_el2", []), 
     IndConstr("Rvsttbr_el2", []),IndConstr("Rzcr_el2", []), IndConstr("Ricc_sre_el2", []),IndConstr("Rspsr_el3", []), 
     IndConstr("Relr_el3", []), IndConstr("Resr_el3", []), IndConstr("Rscr_el3", []), IndConstr("Rtpidr_el3", [])])
Iregsp = Inductive("iregsp", [IndConstr("Rgp", [Arg("rgp", Gpreg)]), IndConstr("Rsp", [])])
Regset = Inductive("regset", [IndConstr("Rgpsp", [Arg("gpsp", Iregsp)]), IndConstr("Rsys", [Arg("sys", Sysreg)])])
