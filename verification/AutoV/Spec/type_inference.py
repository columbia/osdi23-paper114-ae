from AutoV.Spec.values import *
from AutoV.Spec.nodes import *

def infer_type(proj, spec: SpecNode, known_types: dict[str, SpecType], final_type: SpecType=None):
    if final_type is not None:
        spec.set_type(final_type)
    stack = [(spec, 0, known_types)]
    while stack:
        spec, n, known_types = stack.pop()
        if isinstance(spec, Symbol):
            '''
            Symbol
            '''
            if spec.text in known_types:
                spec.set_type(known_types[spec.text])
            elif proj.is_ind_constr(spec.text):
                typ = proj.get_indtype_by_constr(spec.text)
                if typ is not None: spec.set_type(typ)
            elif spec.text in proj.symbols:
                info = proj.symbols[spec.text]
                if info["kind"] == "def":
                    spec.set_type(proj.defs[spec.text].get_type())
                elif info["kind"] == "decl":
                    spec.set_type(proj.decls[spec.text].get_type())
        elif isinstance(spec, Const):
            '''
            Const 
            '''
        elif isinstance(spec, Expr):
            '''
            Expr
            '''
            if isinstance(spec.op, str):
                if spec.op in ("+", "-", "*", "/", "mod", "<<", ">>", "&", "|'", "Z.lnot", "Z.lxor"):
                    if n < len(spec.elems):
                        spec.elems[n].set_type(Int())
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[n], 0, known_types))
                    else:
                        spec.set_type(Int())
                elif spec.op in ("=?", "<>?", ">?", ">=?", "<?", "<=?"):
                    if n < len(spec.elems):
                        spec.elems[n].set_type(Int())
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[n], 0, known_types))
                    else:
                        spec.set_type(Bool())
                elif spec.op in ("!",):
                    if n < len(spec.elems):
                        spec.elems[n].set_type(Bool())
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[n], 0, known_types))
                    else:
                        spec.set_type(Bool())
                elif spec.op in ("=s", "<>s"):
                    if n < len(spec.elems):
                        spec.elems[n].set_type(String())
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[n], 0, known_types))
                    else:
                        spec.set_type(Bool())
                elif spec.op in ("&&", "||"):
                    if n < len(spec.elems):
                        spec.elems[n].set_type(Bool())
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[n], 0, known_types))
                    else:
                        spec.set_type(Bool())
                elif spec.op in (">", ">=", "<", "<="):
                    if n < len(spec.elems):
                        spec.elems[n].set_type(Int())
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[n], 0, known_types))
                    else:
                        spec.set_type(Prop())
                elif spec.op in ("=", "<>"):
                    if n < len(spec.elems):
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[n], 0, known_types))
                    elif n == 2:
                        stack.append((spec, n + 1, known_types))
                        if spec.elems[0].get_type() != UNKNOWN_TYPE and spec.elems[1].get_type() == UNKNOWN_TYPE:
                            spec.elems[1].set_type(spec.elems[0].get_type())
                            stack.append((spec.elems[1], 0, known_types))
                    elif n == 3:
                        stack.append((spec, n + 1, known_types))
                        if spec.elems[1].get_type() != UNKNOWN_TYPE and spec.elems[0].get_type() == UNKNOWN_TYPE:
                            spec.elems[0].set_type(spec.elems[1].get_type())
                            stack.append((spec.elems[0], 0, known_types))
                    else:
                        spec.set_type(Prop())
                elif spec.op in ("~",):
                    if n == 0:
                        spec.elems[0].set_type(Prop())
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[0], 0, known_types))
                    else:
                        spec.set_type(Prop())
                elif spec.op in ("/\\", "\\/", "->", "<->"):
                    if n < len(spec.elems):
                        spec.elems[n].set_type(Prop())
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[n], 0, known_types))
                    else:
                        spec.set_type(Prop())
                elif spec.op == 'Tuple':
                    if n < len(spec.elems):
                        if isinstance(spec.type, Tuple):
                            spec.elems[n].set_type(spec.type.elems[n].type)
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[n], 0, known_types))
                    else:
                        spec.set_type(Tuple([e.get_type() for e in spec.elems]))
                elif spec.op == 'ZMap.get':
                    if n == 0:
                        spec.elems[1].set_type(Int())
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[1], 0, known_types))
                    elif n == 1:
                        if spec.has_type():
                            spec.elems[0].set_type(ZMap(spec.type))
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[0], 0, known_types))
                    else:
                        spec.set_type(spec.elems[0].type.elem_type)
                elif spec.op == 'ZMap.set':
                    if n == 0:
                        spec.elems[1].set_type(Int())
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[1], 0, known_types))
                    elif n == 1:
                        if isinstance(spec.type, ZMap):
                            spec.elems[0].set_type(spec.type)
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[0], 0, known_types))
                    elif n == 2:
                        if isinstance(spec.type, ZMap):
                            spec.elems[2].set_type(spec.type.elem_type)
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[2], 0, known_types))
                    elif n == 3:
                        stack.append((spec, n + 1, known_types))
                        if spec.elems[0].get_type() != UNKNOWN_TYPE and spec.elems[2].get_type() == UNKNOWN_TYPE:
                            spec.elems[2].set_type(spec.elems[0].get_type().elem_type)
                            stack.append((spec.elems[2], 0, known_types))
                    elif n == 4:
                        stack.append((spec, n + 1, known_types))
                        if spec.elems[2].get_type() != UNKNOWN_TYPE and spec.elems[0].get_type() == UNKNOWN_TYPE:
                            spec.elems[0].set_type(ZMap(spec.elems[2].get_type()))
                            stack.append((spec.elems[0], 0, known_types))
                    else:
                        spec.set_type(spec.elems[0].get_type())
                elif spec.op == 'zmap_init':
                    if n == 0:
                        if isinstance(spec.type, ZMap):
                            spec.elems[0].set_type(spec.type.elem_type)
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[0], 0, known_types))
                    else:
                        spec.set_type(ZMap(spec.elems[0].get_type()))
                elif spec.op == "Record.get":
                    field = spec.elems[1].text
                    info = proj.symbols[field]
                    if info["kind"] != "struct_elem":
                        raise Exception("Unknown field: %s" % field)
                    rec = proj.structs[info["info"]]
                    if n == 0:
                        spec.elems[0].set_type(rec)
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[0], 0, known_types))
                    else:
                        spec.set_type(rec.elem_type[field])
                elif spec.op == "Record.set":
                    field = spec.elems[1].text
                    info = proj.symbols[field]
                    if info["kind"] != "struct_elem":
                        raise Exception("Unknown field: %s" % field)
                    rec = proj.structs[info["info"]]
                    if n == 0:
                        spec.elems[0].set_type(rec)
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[0], 0, known_types))
                    elif n == 1:
                        T = rec
                        for i in range(1, len(spec.elems) - 1):
                            field = spec.elems[i].text
                            T = T.elem_type[field]
                        spec.elems[-1].set_type(T)
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[-1], 0, known_types))
                    else:
                        spec.set_type(rec)
                elif spec.op == '++':
                    if n == 0:
                        if isinstance(spec.type, List):
                            spec.elems[0].set_type(spec.type)
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[0], 0, known_types))
                    elif n == 1:
                        if isinstance(spec.type, List):
                            spec.elems[1].set_type(spec.type)
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[1], 0, known_types))
                    elif n == 2:
                        stack.append((spec, n + 1, known_types))
                        if spec.elems[0].get_type() != UNKNOWN_TYPE and spec.elems[1].get_type() == UNKNOWN_TYPE:
                            spec.elems[1].set_type(spec.elems[0].get_type())
                            stack.append((spec.elems[1], 0, known_types))
                    elif n == 3:
                        stack.append((spec, n + 1, known_types))
                        if spec.elems[1].get_type() != UNKNOWN_TYPE and spec.elems[0].get_type() == UNKNOWN_TYPE:
                            spec.elems[0].set_type(spec.elems[1].get_type())
                            stack.append((spec.elems[0], 0, known_types))
                    else:
                        spec.set_type(spec.elems[0].get_type())
                elif spec.op == '::':
                    if n == 0:
                        if isinstance(spec.type, List):
                            spec.elems[0].set_type(spec.type.elem_type)
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[0], 0, known_types))
                    elif n == 1:
                        if isinstance(spec.type, List):
                            spec.elems[1].set_type(spec.type)
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[1], 0, known_types))
                    elif n == 2:
                        stack.append((spec, n + 1, known_types))
                        if spec.elems[0].get_type() != UNKNOWN_TYPE and spec.elems[1].get_type() == UNKNOWN_TYPE:
                            spec.elems[1].set_type(List(spec.elems[0].get_type()))
                            stack.append((spec.elems[1], 0, known_types))
                    elif n == 3:
                        stack.append((spec, n + 1, known_types))
                        if spec.elems[1].get_type() != UNKNOWN_TYPE and spec.elems[0].get_type() == UNKNOWN_TYPE:
                            spec.elems[0].set_type(spec.elems[1].get_type().elem_type)
                            stack.append((spec.elems[0], 0, known_types))
                    else:
                        spec.set_type(spec.elems[1].get_type())
                elif spec.op == 'Some':
                    if n == 0:
                        if isinstance(spec.type, Option):
                            spec.elems[0].set_type(spec.type.elem_type)
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[0], 0, known_types))
                    else:
                        spec.set_type(Option(spec.elems[0].get_type()))
                elif spec.op == 'prop':
                    if n == 0:
                        spec.elems[0].set_type(Prop())
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[0], 0, known_types))
                    else:
                        spec.set_type(Bool())
                elif spec.op == 'int_to_ptr':
                    if n == 0:
                        spec.elems[0].set_type(Int())
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[0], 0, known_types))
                    else:
                        spec.set_type(Ptr)
                elif spec.op == 'ptr_to_int':
                    if n == 0:
                        spec.elems[0].set_type(Ptr)
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[0], 0, known_types))
                    else:
                        spec.set_type(Int())
                elif spec.op == 'z_to_nat':
                    if n == 0:
                        spec.elems[0].set_type(Int())
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[0], 0, known_types))
                    else:
                        spec.set_type(Nat)
                elif spec.op in proj.symbols:
                    if n == 0:
                        info = proj.symbols[spec.op]
                        if info["kind"] == "def":
                            typ = proj.defs[spec.op].get_type()
                        elif info["kind"] == "decl":
                            typ = proj.decls[spec.op].get_type()
                        elif info["kind"] == "struct_constr":
                            struct = proj.structs[info["info"]]
                            typ = Function(struct, [e.type for e in struct.elems])
                        elif info["kind"] == "ind_constr":
                            ind = proj.indtypes[info["info"]]
                            args = ind.constr[spec.op]
                            typ = Function(ind, [a.type for a in args])
                        assert(isinstance(typ, Function))
                        spec.tmp = typ
                    if n < len(spec.elems):
                        typ = spec.tmp
                        spec.elems[n].set_type(typ.args[n])
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[n], 0, known_types))
                    else:
                        typ = spec.tmp
                        spec.set_type(typ.rettype)
                        del spec.tmp
                else:
                    raise Exception(f"Unknown operator: {spec.op}")
            else:
                if n == 0:
                    stack.append((spec, n + 1, known_types))
                    stack.append((spec.op, 0, known_types))
                else:
                    n_elem = n - 1
                    typ = spec.op.get_type()
                    assert(isinstance(typ, Function))
                    if n_elem < len(spec.elems):
                        spec.elems[n_elem].set_type(typ.args[n_elem])
                        stack.append((spec, n + 1, known_types))
                        stack.append((spec.elems[n_elem], 0, known_types))
                    else:
                        spec.set_type(typ.rettype)
        elif isinstance(spec, Match):
            '''
            Match
            '''
            def infer_pattern(pattern: SpecNode, known_types: dict[str, SpecType]):
                if isinstance(pattern, Symbol):
                    if not proj.is_known_symbol(pattern.text) and pattern.get_type() != UNKNOWN_TYPE:
                        known_types[pattern.text] = pattern.get_type()
                elif isinstance(pattern, Expr):
                    if isinstance(pattern.op, SpecNode):
                        infer_pattern(pattern.op, known_types)
                    for e in pattern.elems:
                        infer_pattern(e, known_types)
                elif isinstance(pattern, Const):
                    pass
                else:
                    raise Exception(f"Unsupported pattern [{pattern}]")
            if n == 0:
                stack.append((spec, n + 1, known_types))
                stack.append((spec.src, 0, known_types))
            elif (n - 1) // 3 < len(spec.match_list):
                n_pm = (n - 1) // 3
                n_step = (n - 1) % 3
                pm = spec.match_list[n_pm]
                if n_step == 0:
                    pm.pattern.set_type(spec.src.get_type())
                    stack.append((spec, n + 1, known_types))
                    stack.append((pm.pattern, 0, known_types))
                elif n_step == 1:
                    known = known_types.copy()
                    infer_pattern(pm.pattern, known)
                    if spec.has_type():
                        pm.body.set_type(spec.get_type())
                    stack.append((spec, n + 1, known_types))
                    stack.append((pm.body, 0, known))
                else:
                    spec.set_type(pm.body.get_type())
                    if n_pm < len(spec.match_list) - 1:
                        stack.append((spec, n + 1, known_types))
        elif isinstance(spec, (Rely, Anno)):
            '''
            Rely
            '''
            if n == 0:
                spec.prop.set_type(Prop())
                stack.append((spec, n + 1, known_types))
                stack.append((spec.prop, 0, known_types))
            elif n == 1:
                if spec.has_type():
                    spec.body.set_type(spec.get_type())
                stack.append((spec, n + 1, known_types))
                stack.append((spec.body, 0, known_types))
            else:
                spec.set_type(spec.body.get_type())
        elif isinstance(spec, If):
            '''
            If
            '''
            if n == 0:
                spec.cond.set_type(Bool())
                stack.append((spec, n + 1, known_types))
                stack.append((spec.cond, 0, known_types))
            elif n == 1:
                if spec.has_type():
                    spec.then_body.set_type(spec.get_type())
                stack.append((spec, n + 1, known_types))
                stack.append((spec.then_body, 0, known_types))
            elif n == 2:
                if spec.then_body.has_type():
                    spec.set_type(spec.then_body.get_type())
                if spec.has_type():
                    spec.else_body.set_type(spec.get_type())
                stack.append((spec, n + 1, known_types))
                stack.append((spec.else_body, 0, known_types))
            else:
                assert(spec.then_body.has_type())
                assert(spec.then_body.get_type() == spec.else_body.get_type())
                spec.set_type(spec.else_body.get_type())
        elif isinstance(spec, (Forall, Exists)):
            '''
            Forall/Exists
            '''
            if n == 0:
                known = known_types.copy()
                for var in spec.vars:
                    known[var.name] = var.type
                spec.body.set_type(Prop())
                stack.append((spec, n + 1, known_types))
                stack.append((spec.body, 0, known))
            else:
                spec.set_type(Prop())
        else:
            raise Exception(f"Unknown spec node: {type(spec)}")

def check_well_typed(proj, spec: SpecNode, vars: set[str]):
    if isinstance(spec, Symbol) and proj.is_known_symbol(spec.text):
        return True
    if isinstance(spec, Symbol) and not spec.text in vars:
        print("unknown symbol:", spec.text)
        return False
    if not spec.has_type():
        print("unknown type:", spec.text)
        return False
    if isinstance(spec, Expr):
        if any(map(lambda e: not check_well_typed(proj, e, vars), spec.elems)):
            return False
        if isinstance(spec.op, SpecNode) and not check_well_typed(proj, spec.op, vars):
            return False
    elif isinstance(spec, Match):
        if not check_well_typed(proj, spec.src, vars):
            return False
        for pm in spec.match_list:
            _vars = vars.copy()
            def collect_symbols(pattern):
                nonlocal _vars 
                if isinstance(pattern, Symbol):
                    _vars.add(pattern.text)
                elif isinstance(pattern, Expr):
                    list(map(collect_symbols, pattern.elems))
            collect_symbols(pm.pattern)
            if not check_well_typed(proj, pm.pattern, _vars):
                return False
            if not check_well_typed(proj, pm.body, _vars):
                return False
    elif isinstance(spec, Rely):
        if not check_well_typed(proj, spec.prop, vars):
            return False
        if not check_well_typed(proj, spec.body, vars):
            return False
    elif isinstance(spec, Anno):
        if not check_well_typed(proj, spec.prop, vars):
            return False
        if not check_well_typed(proj, spec.body, vars):
            return False
    elif isinstance(spec, If):
        if not check_well_typed(proj, spec.cond, vars):
            return False
        if not check_well_typed(proj, spec.then_body, vars):
            return False
        if not check_well_typed(proj, spec.else_body, vars):
            return False
    elif isinstance(spec, (Forall, Exists)):
        _vars = vars.copy()
        for v in spec.vars:
            _vars.add(v.name)
        if not check_well_typed(proj, spec.body, _vars):
            return False
    return True
