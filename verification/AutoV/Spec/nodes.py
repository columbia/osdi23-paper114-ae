from AutoV.Spec.values import *
from AutoV.IRLoader.coq import *
from AutoV.IRLoader.llvm import IRModule
from AutoV.IRLoader.irloader import parse_module
from typing import Union
import json


class SpecNode:

    id = 1

    def __init__(self, typ: SpecType = UNKNOWN_TYPE) -> None:
        self.type = typ
        self.z3_eval = None
        self.nid = SpecNode.id
        SpecNode.id += 1
        self._str = None

    def __str__(self) -> str:
        if self._str is None:
            self._str = self.to_str()
        return self._str

    def get_type(self) -> SpecType:
        return self.type

    def infer_type(self, proj, known_types: dict[str, SpecType], result_type: Union[SpecType, None] = None):
        pass

    def set_z3_eval(self, val):
        self.z3_eval = val

    def clear_z3_eval(self):
        self.z3_eval = None

    def has_type(self) -> bool:
        return self.type is not None and self.type != UNKNOWN_TYPE

    def set_type(self, typ: SpecType):
        if self.has_type() and self.type != typ:
            print(f"Type mismatch: {self.type} vs {typ} in {self}")
            raise Exception(f"Type mismatch: {self.type} vs {typ} in {self}")
        self.type = typ

    def deepcopy(self):
        return SpecNode(self.type)


class Symbol(SpecNode):

    def __init__(self, text, typ=UNKNOWN_TYPE):
        self.text = text
        super().__init__(typ)

    def to_str(self):
        return self.text
        
    def deepcopy(self):
        return Symbol(self.text, self.get_type())

    def infer_type(self, proj, known_types: dict[str, SpecType], result_type: Union[SpecType, None] = None):
        candidate_types = []
        if result_type is not None:
            candidate_types.append(result_type)
        if proj.is_ind_constr(self.text):
            typ = proj.get_indtype_by_constr(self.text)
            if typ is not None: candidate_types.append(typ)
        elif self.text in known_types:
            candidate_types.append(known_types[self.text])
        if self.type is not None and self.type != UNKNOWN_TYPE:
            candidate_types.append(self.type)
        if self.text in proj.symbols:
            info = proj.symbols[self.text]
            if info["kind"] == "def":
                candidate_types.append(proj.defs[self.text].get_type())
            elif info["kind"] == "decl":
                candidate_types.append(proj.decls[self.text].get_type())
        if len(candidate_types) > 0:
            for t in candidate_types:
                assert(t == candidate_types[0])
            self.type = candidate_types[0]


class Const(SpecNode):
    
    def __init__(self, value, typ):
        self.value = value
        super().__init__(typ)

    def get_value(self) -> SpecValue:
        return SpecValue(self.type, self.value)

    def to_str(self):
        return str(self.value)
        
    def deepcopy(self):
        return Const(self.value, self.get_type())


class IntConst(Const):

    def __init__(self, value):
        super().__init__(value, Int())

    def get_value(self) -> SpecValue:
        return IntValue(self.value)
        
    def deepcopy(self):
        return IntConst(self.value)

    def to_str(self):
        if self.value < 0:
            return f"({self.value})"
        else:
            return str(self.value)


class StringConst(Const):

    def __init__(self, value):
        super().__init__(value, String())

    def to_str(self):
        return f"\"{self.value}\""

    def get_value(self) -> SpecValue:
        return StringValue(self.value)
        
    def deepcopy(self):
        return StringConst(self.value)


class BoolConst(Const):

    def __init__(self, value):
        super().__init__(value, Bool())

    def to_str(self):
        return f"true" if self.value else "false"

    def get_value(self) -> SpecValue:
        return BoolValue(self.value)
        
    def deepcopy(self):
        return BoolConst(self.value)


class Expr(SpecNode):

    def __init__(self, op, elems: list[SpecNode], typ=UNKNOWN_TYPE):
        if op == "Tuple":
            assert(len(elems) > 1)
        self.op = op
        self.elems = elems
        super().__init__(typ)
        
    def deepcopy(self):
        if isinstance(self.op, str):
            return Expr(self.op, [e.deepcopy() for e in self.elems], self.get_type())
        else:
            return Expr(self.op.deepcopy(), [e.deepcopy() for e in self.elems], self.get_type())

    def to_str(self):
        op = self.op
        if isinstance(op, str):
            if op in ("+", "-", "*", "/", "mod", "<<", ">>", "&", "&&", "||", "|'",
                      "=", ">", ">=", "<", "<=", "<>", "=?", ">?", ">=?", "<?", "<=?", 
                      "<>?", "=s", "<>s", "++", "::", "->", "<->", "/\\", "\\/"):
                if len(self.elems) == 1:
                    if len(str(self.elems[0])) > 160:
                        return f"({op}\n{add_indent(str(self.elems[0]), 2)})"
                    else:
                        return f"({op} {self.elems[0]})"
                else:
                    if len(str(self.elems[0])) + len(str(self.elems[1])) > 160:
                        return f"({self.elems[0]} {op}\n{add_indent(str(self.elems[1]), 2)})"
                    else:
                        return f"({self.elems[0]} {op} {self.elems[1]})"
            elif op == 'Tuple':
                if len("(" + ", ".join([str(e) for e in self.elems]) + ")") > 160:
                    return "(\n" + '  ,\n'.join([add_indent(str(e), 2) for e in self.elems]) + "\n)"
                else:
                    return "(" + ', '.join([str(e) for e in self.elems]) + ")"
            elif op == 'ZMap.get':
                if len(str(self.elems[1])) > 160:
                    return f"({self.elems[0]} @\n{add_indent(str(self.elems[1]), 2)})"
                else:
                    return f"({self.elems[0]} @ {self.elems[1]})"
            elif op == 'ZMap.set':
                if len(f"({self.elems[0]} # {self.elems[1]} == {self.elems[2]})") > 160:
                    return f"({self.elems[0]} #\n{add_indent(str(self.elems[1]), 2)} ==\n{add_indent(str(self.elems[2]), 2)})"
                else:
                    return f"({self.elems[0]} # {self.elems[1]} == {self.elems[2]})"
            elif op == "Record.get":
                return f"({self.elems[0]}.({self.elems[1]}))"
            elif op == 'Record.set':
                s = f'({self.elems[0]}'
                for i in range(1, len(self.elems) - 1):
                    s += f'.[{self.elems[i]}]'
                if len(s + f' :< {self.elems[-1]})') > 160:
                    s += f' :<\n{add_indent(str(self.elems[-1]), 2)})'
                else:
                    s += f' :< {self.elems[-1]})'
                return s
            elif op == 'Some':
                return f"(Some {self.elems[0]})"
            else:
                if len("(" + " ".join([op] + [str(e) for e in self.elems]) + ")") > 160:
                    return "(" + op + " ".join(["\n" + add_indent(str(e), 2) for e in self.elems]) + ")"
                else:
                    return "(" + " ".join([op] + [str(e) for e in self.elems]) + ")"
        else:
            if len("(" + " ".join([str(op)] + [str(e) for e in self.elems]) + ")") > 160:
                return "(" + op + " ".join(["\n" + add_indent(str(e), 2) for e in self.elems]) + ")"
            else:
                return "(" + " ".join([str(op)] + [str(e) for e in self.elems]) + ")"

    def infer_type(self, proj, known_types: dict[str, SpecType], result_type: Union[SpecType, None] = None):
        if isinstance(self.op, str):
            if self.op in ("+", "-", "*", "/", "mod", "<<", ">>", "&", "|'", "Z.lnot", "Z.lxor"):
                for e in self.elems:
                    e.infer_type(proj, known_types, Int())
                self.type = Int()
            elif self.op in ("=?", "<>?", ">?", ">=?", "<?", "<=?"):
                for e in self.elems:
                    e.infer_type(proj, known_types, Int())
                self.type = Bool()
            elif self.op in ("!",):
                self.elems[0].infer_type(proj, known_types, Bool())
                self.type = Bool()
            elif self.op in ("=s", "<>s"):
                for e in self.elems:
                    e.infer_type(proj, known_types, String())
                self.type = Bool()
            elif self.op in ("&&", "||"):
                for e in self.elems:
                    e.infer_type(proj, known_types, Bool())
                self.type = Bool()
            elif self.op in (">", ">=", "<", "<="):
                for e in self.elems:
                    e.infer_type(proj, known_types, Int())
                self.type = Prop()
            elif self.op in ("=", "<>"):
                self.elems[0].infer_type(proj, known_types, None)
                self.elems[1].infer_type(proj, known_types, None)
                if self.elems[0].get_type() != UNKNOWN_TYPE and self.elems[1].get_type() == UNKNOWN_TYPE:
                    self.elems[1].infer_type(proj, known_types, self.elems[0].get_type())
                if self.elems[1].get_type() != UNKNOWN_TYPE and self.elems[0].get_type() == UNKNOWN_TYPE:
                    self.elems[0].infer_type(proj, known_types, self.elems[1].get_type())
                self.type = Prop()
            elif self.op in ("~",):
                self.elems[0].infer_type(proj, known_types, Prop())
                self.type = Prop()
            elif self.op in ("/\\", "\\/", "->", "<->"):
                for e in self.elems:
                    e.infer_type(proj, known_types, Prop())
                self.type = Prop()
            elif self.op == 'Tuple':
                if isinstance(result_type, Tuple):
                    for e, t in zip(self.elems, result_type.types):
                        e.infer_type(proj, known_types, t)
                else:
                    for e in self.elems:
                        e.infer_type(proj, known_types, None)
                self.type = Tuple([e.get_type() for e in self.elems])
            elif self.op == 'ZMap.get':
                self.elems[1].infer_type(proj, known_types, Int())
                if result_type is not None:
                    self.elems[0].infer_type(proj, known_types, ZMap(result_type))
                else:
                    self.elems[0].infer_type(proj, known_types, None)
                self.type = self.elems[0].get_type().elem_type
            elif self.op == 'ZMap.set':
                self.elems[1].infer_type(proj, known_types, Int())
                if result_type is not None:
                    assert(isinstance(result_type, ZMap))
                    self.elems[0].infer_type(proj, known_types, result_type)
                    self.elems[2].infer_type(proj, known_types, result_type.elem_type)
                else:
                    self.elems[0].infer_type(proj, known_types, None)
                    self.elems[2].infer_type(proj, known_types, None)
                    if self.elems[0].get_type() != UNKNOWN_TYPE and self.elems[2].get_type() == UNKNOWN_TYPE:
                        self.elems[2].infer_type(proj, known_types, self.elems[0].get_type().elem_type)
                    if self.elems[2].get_type() != UNKNOWN_TYPE and self.elems[0].get_type() == UNKNOWN_TYPE:
                        self.elems[0].infer_type(proj, known_types, ZMap(self.elems[2].get_type()))
                self.type = self.elems[0].get_type()
            elif self.op == 'zmap_init':
                if result_type is not None:
                    assert(isinstance(result_type, ZMap))
                    self.elems[0].infer_type(proj, known_types, result_type.elem_type)
                else:
                    self.elems[0].infer_type(proj, known_types, None)
                self.type = ZMap(self.elems[0].get_type())
            elif self.op == "Record.get":
                field = self.elems[1].text
                info = proj.symbols[field]
                assert(info["kind"] == "struct_elem")
                rec = proj.structs[info["info"]]
                self.elems[0].infer_type(proj, known_types, rec)
                self.type = rec.elem_type[field]
            elif self.op == "Record.set":
                field = self.elems[1].text
                info = proj.symbols[field]
                assert(info["kind"] == "struct_elem")
                rec = proj.structs[info["info"]]
                self.elems[0].infer_type(proj, known_types, rec)
                T = rec
                for i in range(1, len(self.elems) - 1):
                    field = self.elems[i].text
                    T = T.elem_type[field]
                self.elems[-1].infer_type(proj, known_types, T)
                self.type = rec
            elif self.op == '++':
                if result_type is not None:
                    self.elems[0].infer_type(proj, known_types, result_type)
                    self.elems[1].infer_type(proj, known_types, result_type)
                else:
                    self.elems[0].infer_type(proj, known_types, None)
                    self.elems[1].infer_type(proj, known_types, None)
                    if self.elems[0].get_type() != UNKNOWN_TYPE and self.elems[1].get_type() == UNKNOWN_TYPE:
                        self.elems[1].infer_type(proj, known_types, self.elems[0].get_type())
                    if self.elems[1].get_type() != UNKNOWN_TYPE and self.elems[0].get_type() == UNKNOWN_TYPE:
                        self.elems[1].infer_type(proj, known_types, self.elems[0].get_type())
                self.type = self.elems[0].get_type()
            elif self.op == '::':
                if result_type is not None:
                    self.elems[0].infer_type(proj, known_types, result_type.elem_type)
                    self.elems[1].infer_type(proj, known_types, result_type)
                else:
                    self.elems[0].infer_type(proj, known_types, None)
                    self.elems[1].infer_type(proj, known_types, None)
                    if self.elems[0].get_type() != UNKNOWN_TYPE and self.elems[1].get_type() == UNKNOWN_TYPE:
                        self.elems[1].infer_type(proj, known_types, List(self.elems[0].get_type()))
                    if self.elems[1].get_type() != UNKNOWN_TYPE and self.elems[0].get_type() == UNKNOWN_TYPE:
                        self.elems[0].infer_type(proj, known_types, self.elems[1].get_type().elem_type)
                self.type = List(self.elems[0].get_type())
            elif self.op == 'Some':
                if result_type is not None:
                    self.elems[0].infer_type(proj, known_types, result_type.elem_type)
                else:
                    self.elems[0].infer_type(proj, known_types, None)
                self.type = Option(self.elems[0].get_type())
            elif self.op == 'prop':
                self.elems[0].infer_type(proj, known_types, Prop())
                self.type = Bool()
            elif self.op == 'int_to_ptr':
                self.elems[0].infer_type(proj, known_types, Int())
                self.type = Ptr
            elif self.op == 'ptr_to_int':
                self.elems[0].infer_type(proj, known_types, Ptr)
                self.type = Int()
            elif self.op == 'z_to_nat':
                self.elems[0].infer_type(proj, known_types, Int())
                self.type = Nat
            elif self.op in proj.symbols:
                info = proj.symbols[self.op]
                if info["kind"] == "def":
                    typ = proj.defs[self.op].get_type()
                elif info["kind"] == "decl":
                    typ = proj.decls[self.op].get_type()
                elif info["kind"] == "struct_constr":
                    struct = proj.structs[info["info"]]
                    typ = Function(struct, [e.type for e in struct.elems])
                elif info["kind"] == "ind_constr":
                    ind = proj.indtypes[info["info"]]
                    args = ind.constr[self.op]
                    typ = Function(ind, [a.type for a in args])
                assert(isinstance(typ, Function))
                for i in range(len(self.elems)):
                    self.elems[i].infer_type(proj, known_types, typ.args[i])
                self.type = typ.rettype
            else:
                raise Exception(f"Unknown operator: {self.op}")
        else:
            self.op.infer_type(proj, known_types, None)
            typ = self.op.get_type()
            assert(isinstance(typ, Function))
            for i in range(len(self.elems)):
                self.elems[i].infer_type(proj, known_types, typ.args[i])
            self.type = typ.rettype

    def clear_z3_eval(self):
        super().clear_z3_eval()
        for e in self.elems:
            e.clear_z3_eval()
        if isinstance(self.op, SpecNode):
            self.op.clear_z3_eval()


class PatternMatch:

    def __init__(self, pattern: SpecNode, body: SpecNode):
        self.pattern = pattern
        self.body = body
        self._str = None

    def __str__(self):
        if self._str is None:
            self._str = self.to_str()
        return self._str

    def to_str(self):
        body = str(self.body)
        if "\n" in body:
            return f"| {str(self.pattern)} =>\n" +\
                    add_indent(str(self.body), 2)
        else:
            return f"| {str(self.pattern)} => {str(self.body)}"

    def clear_z3_eval(self):
        self.pattern.clear_z3_eval()
        self.body.clear_z3_eval()

    def deepcopy(self):
        return PatternMatch(self.pattern.deepcopy(), self.body.deepcopy())


class Match(SpecNode):

    def __init__(self, src: SpecNode, match_list: list[PatternMatch]):
        self.src = src
        self.match_list = match_list
        super().__init__(match_list[0].body.get_type())

    def deepcopy(self):
        return Match(self.src.deepcopy(), [pm.deepcopy() for pm in self.match_list])

    def is_let(self) -> bool:
        if len(self.match_list) == 1:
            pm = self.match_list[0]
            if isinstance(pm.pattern, Symbol):
                return True
            if isinstance(pm.pattern, Expr) and pm.pattern.op == "Tuple" and all(isinstance(e, Symbol) for e in pm.pattern.elems):
                return True
        return False

    def is_when(self) -> bool:
        if len(self.match_list) == 2:
            pm = self.match_list[0]
            none = self.match_list[1]
            if not (isinstance(pm.pattern, Expr) and pm.pattern.op == "Some" and\
                    isinstance(none.pattern, Symbol) and none.pattern.text == "None" and\
                    isinstance(none.body, Symbol) and none.body.text == "None"):
                return False
            elem = pm.pattern.elems[0]
            if isinstance(elem, Symbol):
                return True
            if isinstance(elem, Expr) and elem.op == "Tuple" and len(elem.elems) < 3 and all(isinstance(e, Symbol) for e in elem.elems):
                return True
        return False

    @classmethod
    def let(cls, name: str, value: SpecNode, body: SpecNode, typ=UNKNOWN_TYPE):
        return cls(value, [PatternMatch(Symbol(name, typ), body)])

    @classmethod
    def when(cls, pattern: SpecNode, value: SpecNode, body: SpecNode):
        return cls(value, [PatternMatch(Expr('Some', [pattern]), body), PatternMatch(Symbol("None"), Symbol("None"))])


    def to_str(self):
        src = str(self.src)

        if self.is_let():
            pm = self.match_list[0]
            body = str(pm.body)
            if "\n" in src:
                return f"let {pm.pattern} := (\n" +\
                        add_indent(src, 4) + ") in\n" +\
                        body
            else:
                return f"let {pm.pattern} := {src} in\n" + body

        elif self.is_when():
            pm = self.match_list[0]
            if isinstance(pm.pattern.elems[0], Symbol):
                patt = [pm.pattern.elems[0]]
            else:
                patt = pm.pattern.elems[0].elems

            # generate when
            body = str(pm.body)
            if "\n" in src:
                return f"when {', '.join([str(e) for e in patt])} == (\n" +\
                        add_indent(src, 4) + ");\n" +\
                        body
            else:
                return f"when {', '.join([str(e) for e in patt])} == ({src});\n" + body

        # general cases
        arms = []
        for pm in self.match_list:
            arms.append(str(pm))
        arms = "\n".join(arms)

        src = str(self.src)

        if "\n" in src:
            return f"match (\n" +\
                    add_indent(src, 2) + "\n" +\
                    f") with\n" +\
                    arms + "\n" +\
                    "end"
        else:
            return f"match ({src}) with\n" +\
                    arms + "\n" +\
                    "end"
    

    def infer_type(self, proj, known_types: dict[str, SpecType], result_type: Union[SpecType, None] = None):
        self.src.infer_type(proj, known_types, None)
        pattern_types = []
        for pattern in self.match_list:
            pattern.pattern.infer_type(proj, known_types, self.src.get_type())
            known = known_types.copy()
            self.infer_pattern(proj, pattern.pattern, known)
            pattern.body.infer_type(proj, known, result_type)
            if  pattern.body.has_type():
                pattern_types.append(pattern.body.get_type())
        if len(pattern_types) > 0:
            for t in pattern_types:
                assert(t == pattern_types[0])
            for pattern in self.match_list:
                pattern.pattern.infer_type(proj, known_types, self.src.get_type())
                known = known_types.copy()
                self.infer_pattern(proj, pattern.pattern, known)
                pattern.body.infer_type(proj, known, pattern_types[0])

        self.type = self.match_list[0].body.get_type()

    def clear_z3_eval(self):
        super().clear_z3_eval()
        self.src.clear_z3_eval()
        for pm in self.match_list:
            pm.clear_z3_eval()
            

class Rely(SpecNode):

    def __init__(self, prop: SpecNode, body: SpecNode):
        self.prop = prop
        self.body = body
        super().__init__(body.get_type())

    def deepcopy(self):
        return Rely(self.prop.deepcopy(), self.body.deepcopy())

    def to_str(self):
        prop = str(self.prop)
        if "\n" in prop:
            return f"rely (\n" +\
                    add_indent(prop, 2) + ");\n" +\
                    str(self.body)
        else:
            return f"rely ({prop});\n{str(self.body)}"

    def infer_type(self, proj, known_types: dict[str, SpecType], result_type: Union[SpecType, None] = None):
        self.prop.infer_type(proj, known_types, Prop())
        self.body.infer_type(proj, known_types, result_type)
        self.type = self.body.get_type()

    def clear_z3_eval(self):
        super().clear_z3_eval()
        self.prop.clear_z3_eval()
        self.body.clear_z3_eval()


class Anno(SpecNode):

    def __init__(self, prop: SpecNode, body: SpecNode):
        self.prop = prop
        self.body = body
        super().__init__(body.get_type())

    def deepcopy(self):
        return Anno(self.prop.deepcopy(), self.body.deepcopy())

    def to_str(self):
        prop = str(self.prop)
        if "\n" in prop:
            return f"(anno (\n" +\
                    add_indent(prop, 2) + ");\n" +\
                    str(self.body) + ")"
        else:
            return f"(anno ({prop});\n{str(self.body)})"

    def infer_type(self, proj, known_types: dict[str, SpecType], result_type: Union[SpecType, None] = None):
        self.prop.infer_type(proj, known_types, Prop())
        self.body.infer_type(proj, known_types, result_type)
        self.type = self.body.get_type()

    def clear_z3_eval(self):
        super().clear_z3_eval()
        self.prop.clear_z3_eval()
        self.body.clear_z3_eval()
            

class If(SpecNode):

    def __init__(self, cond: SpecNode, then_body: SpecNode, else_body: SpecNode):
        self.cond = cond
        self.then_body = then_body
        self.else_body = else_body
        super().__init__(then_body.get_type())

    def deepcopy(self):
        return If(self.cond.deepcopy(), self.then_body.deepcopy(), self.else_body.deepcopy())

    def to_str(self):
        cond = str(self.cond)
        then_body = str(self.then_body)
        else_body = str(self.else_body)

        if "\n" in cond:
            cond = "(\n" + add_indent(cond, 2) + ")"

        if "\n" in then_body:
            then_body = "(\n" + add_indent(then_body, 2) + ")"

        if "\n" in else_body:
            else_body = "(\n" + add_indent(else_body, 2) + ")"

        return f"if {cond}\n" \
               f"then {then_body}\n" \
               f"else {else_body}"

    def infer_type(self, proj, known_types: dict[str, SpecType], result_type: Union[SpecType, None] = None):
        self.cond.infer_type(proj, known_types, Bool())
        self.then_body.infer_type(proj, known_types, result_type)
        self.else_body.infer_type(proj, known_types, result_type)
        if self.then_body.get_type() != UNKNOWN_TYPE and self.else_body.get_type() == UNKNOWN_TYPE:
            self.else_body.infer_type(proj, known_types, self.then_body.get_type())
        if self.else_body.get_type() != UNKNOWN_TYPE and self.then_body.get_type() == UNKNOWN_TYPE:
            self.then_body.infer_type(proj, known_types, self.else_body.get_type())
        assert(self.then_body.get_type() == self.else_body.get_type())
        self.type = self.then_body.get_type()

    def clear_z3_eval(self):
        super().clear_z3_eval()
        self.cond.clear_z3_eval()
        self.then_body.clear_z3_eval()
        self.else_body.clear_z3_eval()


'''
Definition of Spec Op
'''

class Forall(SpecNode):

    def __init__(self, vars: list[Arg], body:SpecNode):
        self.vars = vars
        self.body = body
        super().__init__(Prop())

    def deepcopy(self):
        return Forall(self.vars, self.body.deepcopy())

    def to_str(self):
        vars = " ".join([str(v) for v in self.vars])
        return f"(forall {vars}, {self.body})"

    def infer_type(self, proj, known_types: dict[str, SpecType], result_type: Union[SpecType, None] = None):
        known = known_types.copy()
        for var in self.vars:
            known[var.name] = var.type
        self.body.infer_type(proj, known, Prop())

    def clear_z3_eval(self):
        super().clear_z3_eval()
        self.body.clear_z3_eval()


class Exists(SpecNode):

    def __init__(self, vars: list[Arg], body:SpecNode):
        self.vars = vars
        self.body = body
        super().__init__(Prop())

    def deepcopy(self):
        return Exists(self.vars, self.body.deepcopy())

    def to_str(self):
        vars = " ".join([str(v) for v in self.vars])
        return f"(exists {vars}, {self.body})"

    def infer_type(self, proj, known_types: dict[str, SpecType], result_type: Union[SpecType, None] = None):
        known = known_types.copy()
        for var in self.vars:
            known[var.name] = var.type
        self.body.infer_type(proj, known, Prop())
    
    def clear_z3_eval(self):
        super().clear_z3_eval()
        self.body.clear_z3_eval()


class Declaration:

    def __init__(self, name: str, type: SpecType):
        self.name = name
        self.type = type
        #self.absf = type.declare(name, 0)

    def __str__(self):
        return f"Parameter {self.name} : {self.type}."

    def get_type(self):
        return self.type

    @property
    def absf(self):
        return self.type.declare(self.name, 0)


class Definition:

    def __init__(self, name: str, rettype: SpecType, args: list[Arg], body: SpecNode):
        self.name = name
        self.rettype = rettype
        self.args = args
        self.body = body
        #self.absf = Function(rettype, [a.type for a in args]).declare(name, 0)

    def __str__(self):
        args = ""
        for i in range(len(self.args)):
            if i < len(self.args) - 1:
                args = args + str(self.args[i]) + " "
            else:
                args = args + str(self.args[i])

        return f"Definition {self.name} {args} : {self.rettype} :=\n" +\
               add_indent(str(self.body), 2) + "."

    def infer_type(self, proj):
        known = {}
        for arg in self.args:
            known[arg.name] = arg.type
        import AutoV.Spec.type_inference as ti
        ti.infer_type(proj, self.body, known, self.rettype)
        assert(ti.check_well_typed(proj, self.body, set([a.name for a in self.args])))

    def get_type(self):
        if len(self.args) > 0:
            return Function(self.rettype, [a.type for a in self.args])
        else:
            return self.rettype

    @property
    def absf(self):
        return Function(self.rettype, [a.type for a in self.args]).declare(self.name, 0)


class Fixpoint(Definition):

    def __str__(self):
        args = ""
        for i in range(len(self.args)):
            if i < len(self.args) - 1:
                args = args + str(self.args[i]) + " "
            else:
                args = args + str(self.args[i])
        return f"Fixpoint {self.name} {args} : {self.rettype} :=\n" +\
                add_indent(str(self.body), 2) + "."


class Layer:

    def __init__(self, name: str, abs_data: SpecType, ops: dict[str, str], prims: list[str], code: IRModule):
        self.name = name
        self.abs_data = abs_data
        self.ops = ops
        self.prims = prims
        self.code = code
        self.passthrough = []

    def load_module(self):
        return parse_module(json.load(open(self.code)), postprocess=False) if self.code else None
