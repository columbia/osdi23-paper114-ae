import z3
from AutoV.Spec.nodes import *
from AutoV.Spec.values import *
from typing import Callable, Union
from copy import copy, deepcopy

#z3.set_param('parallel.enable', True)
#z3.set_param('parallel.threads.max', 32)
#z3.set_param('sat.local_search_threads', 8)
#z3.set_param('sat.threads', 8)


def copy_state(state):
    return {"vars": copy(state["vars"]), "conds": copy(state["conds"])}


Z3Solver = z3.Solver()
cache = {}

def hash_z3_state(state, cond, timeout):
    conds = []
    for c in state["conds"]:
        conds.append(hash(c))
    conds.sort()
    return hash((tuple(conds), cond, timeout))

def z3_check(state, cond=None, timeout=100, p=False):
    global cache
    S = Z3Solver
    S.set("timeout", timeout)

    if cond is not None and "..." in str(cond):
        return None
        
    state["conds"] = [c for c in state["conds"] if "..." not in str(c)]
    hash_state = hash_z3_state(state, cond, timeout)

    if hash_state in cache:
        return cache[hash_state]

    S.reset()
    S.add(*state["conds"])
    if p:
        for c in state["conds"]:
            print(c)
            print("---")
    if cond is not None:
        if p: print("Check: ", cond)
        if z3.is_true(cond) or S.check(z3.Not(cond)) == z3.unsat:
            if p: print("True")
            if p: print("------------------")
            cache[hash_state] = True
            return True
        if z3.is_false(cond) or S.check(cond) == z3.unsat:
            if p: print("False")
            if p: print("------------------")
            cache[hash_state] = False
            return False
    else:
        if S.check() == z3.unsat:
            if p: print("False")
            if p: print("------------------")
            cache[hash_state] = False
            return False
    if p: print("Unknown")
    if p: print("------------------")
    cache[hash_state] = None
    return None


def complexity(spec: SpecNode) -> int:
    return len(str(spec))


def z3_eval(proj, val: SpecNode, state):
    state = copy_state(state)

    if val.z3_eval is not None:
        return val.z3_eval

    def _cache(return_val):
        nonlocal val
        val.set_z3_eval(return_val)
        return return_val

    if isinstance(val, Symbol):
        if val.text in state["vars"]:
            return _cache(state["vars"][val.text])
        elif val.text in proj.defs:
            df = proj.defs[val.text]
            assert(isinstance(df, Definition))
            assert(len(df.args) == 0)
            if isinstance(df.body, Const):
                return _cache(z3_eval(proj, df.body, state))
            else:
                return _cache(df.absf.call([]))
        elif val.text in proj.decls:
            decl = proj.decls[val.text]
            assert(not isinstance(decl.type, Function))
            return _cache(decl.absf)
        elif proj.is_ind_constr(val.text):
            return _cache(val.get_type().construct(val.text, []))
        elif val.text in proj.symbols:
            info = proj.symbols[val.text]
            if info["kind"] == "struct_elem":
                return _cache(val)
        else:
            raise Exception("Unknown symbol: " + val.text)

    elif isinstance(val, IntConst):
        return _cache(IntValue(val.value))
    elif isinstance(val, BoolConst):
        return _cache(BoolValue(val.value))
    elif isinstance(val, StringConst):
        return _cache(StringValue(val.value))

    elif isinstance(val, Expr):
        elems = [z3_eval(proj, e, state) for e in val.elems]
        if val.op == '+': return _cache(elems[0].add(elems[1]))
        elif val.op == '-': 
            if len(elems) == 1:
                return _cache(elems[0].neg())
            else:
                return _cache(elems[0].sub(elems[1]))
        elif val.op == '*': return _cache(elems[0].mul(elems[1]))
        elif val.op == '/': return _cache(elems[0].div(elems[1]))
        elif val.op == 'mod': return _cache(elems[0].mod(elems[1]))
        elif val.op == '<<': return _cache(elems[0].shiftl(elems[1]))
        elif val.op == '>>': return _cache(elems[0].shiftr(elems[1]))
        elif val.op == '&': return _cache(elems[0].land(elems[1]))
        elif val.op == "|'": return _cache(elems[0].lor(elems[1]))
        elif val.op == 'Z.lxor': return _cache(elems[0].lxor(elems[1]))
        elif val.op == 'Z.lnot': return _cache(elems[0].lnot(elems[1]))
        elif val.op in ['=', '=?', '=s']: return _cache(elems[0].eq(elems[1]))
        elif val.op in ['<>', '<>?', '<>s']: return _cache(elems[0].ne(elems[1]))
        elif val.op in ['>', '>?']: return _cache(elems[0].gt(elems[1]))
        elif val.op in ['>=', '>=?']: return _cache(elems[0].ge(elems[1]))
        elif val.op in ['<', '<?']: return _cache(elems[0].lt(elems[1]))
        elif val.op in ['<=', '<=?']: return _cache(elems[0].le(elems[1]))
        elif val.op in ['~', '!']: return _cache(elems[0].negb())
        elif val.op in ['&&', '/\\']: return _cache(elems[0].andb(elems[1]))
        elif val.op in ['||', '\\/']: return _cache(elems[0].orb(elems[1]))
        elif val.op == 'ZMap.get': return _cache(elems[0].get(elems[1]))
        elif val.op == 'ZMap.set': return _cache(elems[0].set(elems[1], elems[2]))
        elif val.op == 'Record.get': return _cache(elems[0].get(val.elems[1].text))
        elif val.op == 'Record.set': 
            for i in range(1, len(val.elems) - 2):
                elems[i] = elems[i-1].get(val.elems[i].text)
            elems[-2] = elems[-1]
            for i in range(len(val.elems) - 2, 0, -1):
                elems[i-1] = elems[i-1].set(val.elems[i].text, elems[i])
            return _cache(elems[0])
        elif val.op == '::':
            return _cache(val.get_type().construct("cons", [elems[0], elems[1]]))
        elif val.op == '++':
            return _cache(elems[0].concat(elems[1]))
        elif val.op == 'Some': return _cache(val.get_type().construct("Some", [elems[0]]))
        elif val.op == 'prop': return _cache(elems[0])
        elif val.op == 'Tuple':
            return _cache(val.get_type().construct(elems))
        elif val.op == 'ptr_to_int': 
            return _cache(ptr_to_int().call(elems))
        elif val.op == 'int_to_ptr': 
            return _cache(int_to_ptr().call(elems))
        elif val.op == 'z_to_nat': 
            return _cache(z_to_nat().call(elems))
        elif val.op == 'zmap_init':
            return _cache(val.get_type().from_z3_value(z3.K(z3.IntSort(), elems[0].get_z3_value())))
        elif val.op in proj.symbols:
            info = proj.symbols[val.op]
            if info['kind'] == "struct_constr":
                return _cache(val.get_type().construct(elems))
            elif info['kind'] == "ind_constr":
                return _cache(val.get_type().construct(val.op, elems))
            elif info['kind'] == "def":
                df = proj.defs[val.op]
                return _cache(df.absf.call(elems))
            elif info['kind'] == "decl":
                df = proj.decls[val.op]
                return _cache(df.absf.call(elems))
            else:
                raise Exception("Unsupported")
        else:
            assert(isinstance(val.op, SpecNode))
            op = z3_eval(proj, val.op, state)
            assert(isinstance(op, FuncValue))
            return _cache(op.call(elems))

    elif isinstance(val, Match):
        ##############################
        def resolve_pattern(pat: SpecNode, src: SpecValue, vars: dict[str, SpecValue], assigns: dict[str, SpecValue]) -> SpecValue:
            typ = src.get_type()
            if isinstance(pat, Symbol):
                if proj.is_ind_constr(pat.text):
                    return typ.construct(pat.text, [])
                else:
                    assert(not proj.is_known_symbol(pat.text))
                    vars[pat.text] = typ.declare(pat.text, val.nid)
                    assigns[pat.text] = src
                    return vars[pat.text]
            elif isinstance(pat, Const):
                return pat.get_value()
            elif isinstance(pat, Expr):
                if pat.op == "Some":
                    v = resolve_pattern(pat.elems[0], src.get("value"), vars, assigns)
                    return typ.construct("Some", [v])
                elif pat.op == "Tuple":
                    elems = [resolve_pattern(pat.elems[i], src.get(i), vars, assigns) for i in range(len(pat.elems))]
                    return typ.construct(elems)
                elif pat.op == "::":
                    head = resolve_pattern(pat.elems[0], src.get("head"), vars, assigns)
                    tail = resolve_pattern(pat.elems[1], src.get("tail"), vars, assigns)
                    return typ.construct("cons", [head, tail])
                elif proj.get_indtype_by_constr(pat.op) is not None:
                    args = []
                    for i, arg in enumerate(typ.constr[pat.op]):
                        args.append(resolve_pattern(pat.elems[i], src.get(arg.name), vars, assigns))
                    return typ.construct(pat.op, args)
                else:
                    raise Exception("Unknown pattern: " + str(pat))
            else:
                raise Exception("Unknown pattern: " + str(pat))
        ##############################
        src = z3_eval(proj, val.src, state)
        match_val = None

        for pm in reversed(val.match_list):
            vars = {}
            assigns = {}
            pat = resolve_pattern(pm.pattern, src, vars, assigns)
            if len(vars) == 0:
                cond = pat.get_z3_value() == src.get_z3_value()
            else:
                cond = z3.Exists([v.get_z3_value() for v in vars.values()], pat.get_z3_value() == src.get_z3_value())
            if z3_check(state, cond) is False:
                continue
            new_state = copy_state(state)
            for v in assigns: new_state["vars"][v] = assigns[v]
            if match_val is None:
                match_val = z3_eval(proj, pm.body, new_state)
            else:
                then_val = z3_eval(proj, pm.body, new_state)
                match_val = match_val.get_type().from_z3_value(z3.If(cond, then_val.get_z3_value(), match_val.get_z3_value()))
        if match_val is None:
            assert(isinstance(val.get_type(), Option))
            return _cache(val.get_type().construct("None", []))
        else:
            return _cache(match_val)

    elif isinstance(val, Rely):
        cond = z3_eval(proj, val.prop, state)
        res = z3_check(state, cond.get_z3_value())
        state["conds"].append(cond.get_z3_value())
        if res is None:
            body = z3_eval(proj, val.body, state)
            none = val.get_type().construct("None", [])
            z3_val = z3.If(cond.get_z3_value(), body.get_z3_value(), none.get_z3_value())
            return _cache(val.get_type().from_z3_value(z3.simplify(z3_val)))
        elif res:
            return _cache(z3_eval(proj, val.body, state))
        else:
            return _cache(val.get_type().construct("None", []))

    elif isinstance(val, Anno):
        return _cache(z3_eval(proj, val.body, state))
        
    elif isinstance(val, If):
        c = z3_eval(proj, val.cond, state)
        res = z3_check(state, c.get_z3_value())
        if res is None:
            true_state = copy_state(state)
            true_state["conds"].append(c.get_z3_value())
            true = z3_eval(proj, val.then_body, true_state)
            false_state = copy_state(state)
            false_state["conds"].append(z3.Not(c.get_z3_value()))
            false = z3_eval(proj, val.else_body, false_state)
            return _cache(true.get_type().from_z3_value(z3.simplify(z3.If(c.get_z3_value(), true.get_z3_value(), false.get_z3_value()))))
        elif res:
            state["conds"].append(c.get_z3_value())
            return _cache(z3_eval(proj, val.then_body, state))
        else:
            state["conds"].append(z3.Not(c.get_z3_value()))
            return _cache(z3_eval(proj, val.else_body, state))

    elif isinstance(val, Forall):
        vars = []
        for v in val.vars:
            var = v.type.declare(v.name, val.nid)
            state["vars"][v.name] = var
            vars.append(var)
        return _cache(z3.ForAll(vars, z3_eval(proj, val.body, state)))

    elif isinstance(val, Exists):
        vars = []
        for v in val.vars:
            var = v.type.declare(v.name, val.nid)
            state["vars"][v.name] = var
            vars.append(var)
        return _cache(z3.Exists(vars, z3_eval(proj, val.body, state)))

    else:
        raise Exception("Unknown node type: " + str(type(val)))
