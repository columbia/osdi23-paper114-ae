from AutoV.Spec.nodes import *
from AutoV.Spec.values import *
from typing import Callable, Union
import AutoV.Spec.transformer.transform as TR

'''
recursively subst [name] with [value] in [spec] until [name] is assigned by a value using Match in [spec]
e.g.
subst(let x := x + 1 in x, "x", 1) => let x := 1 + 1 in x
'''
def subst(spec: SpecNode, name: str, value: SpecNode) -> SpecNode:
    if isinstance(spec, Symbol):
        if spec.text == name:
            value = value.deepcopy()
            if isinstance(value, Symbol):
                value.set_type(spec.get_type())
            return value
    elif isinstance(spec, Expr):
        if isinstance(spec.op, SpecNode):
            return Expr(subst(spec.op, name, value), [subst(e, name, value) for e in spec.elems], spec.get_type())
        else:
            return Expr(spec.op, [subst(e, name, value) for e in spec.elems], spec.get_type())
    elif isinstance(spec, Match):
        def exists_in_pattern(pattern) -> bool:
            if isinstance(pattern, Symbol):
                return pattern.text == name
            elif isinstance(pattern, Expr):
                return any(map(exists_in_pattern, pattern.elems))
            return False
        src = subst(spec.src, name, value)
        matches = []
        for pm in spec.match_list:
            if not exists_in_pattern(pm.pattern):
                matches.append(PatternMatch(pm.pattern, subst(pm.body, name, value)))
            else:
                matches.append(pm)
        return Match(src, matches)
    elif isinstance(spec, Rely):
        return Rely(subst(spec.prop, name, value), subst(spec.body, name, value))
    elif isinstance(spec, Anno):
        return Anno(subst(spec.prop, name, value), subst(spec.body, name, value))
    elif isinstance(spec, If):
        return If(subst(spec.cond, name, value), subst(spec.then_body, name, value), subst(spec.else_body, name, value))
    elif isinstance(spec, Forall):
        if not any(map(lambda v: v.name == name, spec.vars)):
            return Forall(spec.vars, subst(spec.body, name, value))
    elif isinstance(spec, Exists):
        if not any(map(lambda v: v.name == name, spec.vars)):
            return Forall(spec.vars, subst(spec.body, name, value))
    elif isinstance(spec, Const):
        pass
    else:
        raise Exception("Unknown node type: " + str(type(spec)))
    return spec


def eliminate_ambiguity(proj, spec, prev_symbols: set[str]):
    def pick_new_name(sym, prev):
        new_sym = sym
        while new_sym in prev:
            frags = new_sym.split("_")
            if len(frags) > 1:
                try:
                    n = int(frags[-1])
                    new_sym = "_".join(frags[:-1]) + "_" + str(n + 1)
                except:
                    new_sym = new_sym + "_0"
            else:
                new_sym = new_sym + "_0"
        return new_sym
    if isinstance(spec, Expr):
        if isinstance(spec.op, SpecNode):
            return Expr(eliminate_ambiguity(proj, spec.op, prev_symbols), 
                        [eliminate_ambiguity(proj, e, prev_symbols) for e in spec.elems], spec.get_type())
        else:
            return Expr(spec.op, [eliminate_ambiguity(proj, e, prev_symbols) for e in spec.elems], spec.get_type())
    elif isinstance(spec, Match):
        src = eliminate_ambiguity(proj, spec.src, prev_symbols)
        matches = []
        for pm in spec.match_list:
            symbols = {}
            def collect_symbols(pattern):
                nonlocal symbols
                if isinstance(pattern, Symbol):
                    symbols[pattern.text] = pattern
                elif isinstance(pattern, Expr):
                    list(map(collect_symbols, pattern.elems))
            collect_symbols(pm.pattern)
            prev = prev_symbols.copy()
            pattern = pm.pattern
            body = pm.body
            for sym in symbols:
                if sym == "_": continue
                if not proj.is_known_symbol(sym):
                    new_sym = pick_new_name(sym, prev)
                    prev.add(new_sym)
                    if sym != new_sym:
                        pattern = subst(pattern, sym, Symbol(new_sym))
                        body = subst(body, sym, Symbol(new_sym))
            body = eliminate_ambiguity(proj, body, prev)
            matches.append(PatternMatch(pattern, body))
        return Match(src, matches)
    elif isinstance(spec, Rely):
        return Rely(eliminate_ambiguity(proj, spec.prop, prev_symbols), 
                    eliminate_ambiguity(proj, spec.body, prev_symbols))
    elif isinstance(spec, Anno):
        return Anno(eliminate_ambiguity(proj, spec.prop, prev_symbols), 
                    eliminate_ambiguity(proj, spec.body, prev_symbols))
    elif isinstance(spec, If):
        return If(eliminate_ambiguity(proj, spec.cond, prev_symbols),
                  eliminate_ambiguity(proj, spec.then_body, prev_symbols),
                  eliminate_ambiguity(proj, spec.else_body, prev_symbols))
    elif isinstance(spec, Forall):
        prev = prev_symbols.copy()
        body = spec.body
        for v in spec.vars:
            new_name = pick_new_name(v.name, prev_symbols)
            if v.name != new_sym:
                body = subst(body, v.name, Symbol(new_name, v.type))
            prev.add(new_name)
        return Forall(spec.vars, eliminate_ambiguity(proj, body, prev))
    elif isinstance(spec, Exists):
        prev = prev_symbols.copy()
        body = spec.body
        for v in spec.vars:
            new_name = pick_new_name(v.name, prev_symbols)
            if v.name != new_sym:
                body = subst(body, v.name, Symbol(new_name, v.type))
            prev.add(new_name)
        return Exists(spec.vars, eliminate_ambiguity(proj, body, prev))
    return spec


'''
recursively apply [f] to all nodes in [spec]
[f] must be a function from SpecNode to SpecNode
e.g. SpecNode(child_1, child_2, ...) => f(SpecNode(f(child_1), f(child_2), ..))
'''
def rec_apply(spec: SpecNode, f: Callable[[SpecNode], SpecNode] = lambda x: x, apply_anno=True) -> SpecNode:
    if isinstance(spec, Symbol):
        return f(spec)
    elif isinstance(spec, Const):
        return f(spec)
    elif isinstance(spec, Expr):
        op = rec_apply(spec.op, f, apply_anno) if isinstance(spec.op, SpecNode) else spec.op
        elems = [rec_apply(e, f, apply_anno) for e in spec.elems]
        return f(Expr(op, elems, spec.get_type()))
    elif isinstance(spec, Match):
        src = rec_apply(spec.src, f, apply_anno)
        matches = [PatternMatch(pm.pattern, rec_apply(pm.body, f, apply_anno)) for pm in spec.match_list]
        return f(Match(src, matches))
    elif isinstance(spec, Rely):
        return f(Rely(rec_apply(spec.prop, f, apply_anno), rec_apply(spec.body, f, apply_anno)))
    elif isinstance(spec, Anno):
        return f(Anno(rec_apply(spec.prop, f, apply_anno) if apply_anno else spec.prop, rec_apply(spec.body, f, apply_anno)))
    elif isinstance(spec, If):
        return f(If(rec_apply(spec.cond, f, apply_anno), rec_apply(spec.then_body, f, apply_anno), rec_apply(spec.else_body, f, apply_anno)))
    elif isinstance(spec, Forall):
        return f(Forall(spec.vars, rec_apply(spec.body, f, apply_anno)))
    elif isinstance(spec, Exists):
        return f(Exists(spec.vars, rec_apply(spec.body, f, apply_anno)))
    else:
        raise Exception("Unknown node type: " + str(type(spec)))


def subst_expr(proj, spec: SpecNode, expr: SpecNode, var: SpecNode) -> SpecNode:
    if str(spec) == str(expr): 
        return var.deepcopy()

    if isinstance(spec, Expr):
        if isinstance(spec.op, SpecNode):
            return Expr(subst_expr(proj, spec.op, expr, var), [subst_expr(proj, e, expr, var) for e in spec.elems], spec.get_type())
        else:
            return Expr(spec.op, [subst_expr(proj, e, expr, var) for e in spec.elems], spec.get_type())
    elif isinstance(spec, Match):
        src = subst_expr(proj, spec.src, expr, var)
        matches = []
        for pm in spec.match_list:
            vars = set()
            get_vars_from_pattern(proj, pm.pattern, vars)
            if contains_vars(proj, expr, vars) or contains_vars(proj, var, vars):
                matches.append(pm)
            else:
                matches.append(PatternMatch(pm.pattern, subst_expr(proj, pm.body, expr, var)))
        return Match(src, matches)
    elif isinstance(spec, Rely):
        return Rely(subst_expr(proj, spec.prop, expr, var), subst_expr(proj, spec.body, expr, var))
    elif isinstance(spec, Anno):
        return Anno(subst_expr(proj, spec.prop, expr, var), subst_expr(proj, spec.body, expr, var))
    elif isinstance(spec, If):
        return If(subst_expr(proj, spec.cond, expr, var), subst_expr(proj, spec.then_body, expr, var), subst_expr(proj, spec.else_body, expr, var))
    elif isinstance(spec, Forall):
        free_vars = set([v.name for v in spec.vars])
        if contains_vars(proj, expr, free_vars):
            return spec
        else:
            return Forall(spec.vars, subst_expr(proj, spec.body, expr, var))
    elif isinstance(spec, Exists):
        free_vars = set([v.name for v in spec.vars])
        if contains_vars(proj, expr, free_vars):
            return spec
        else:
            return Exists(spec.vars, subst_expr(proj, spec.body, expr, var))
    return spec


def get_vars_from_pattern(proj, pattern: SpecNode, vars: set[str]):
    if isinstance(pattern, Symbol):
        if not proj.is_known_symbol(pattern.text) and pattern.get_type() != UNKNOWN_TYPE:
            vars.add(pattern.text)
    elif isinstance(pattern, Expr):
        if isinstance(pattern.op, SpecNode):
            get_vars_from_pattern(proj, pattern.op, vars)
        for e in pattern.elems:
            get_vars_from_pattern(proj, e, vars)


def contains_vars(proj, spec: SpecNode, vars: set[str]):
    if isinstance(spec, Symbol):
        return spec.text in vars
    elif isinstance(spec, Expr):
        if any(map(lambda e: contains_vars(proj, e, vars), spec.elems)): return True
        if isinstance(spec.op, SpecNode) and contains_vars(proj, spec.op, vars): return True
        return False
    elif isinstance(spec, Match):
        if contains_vars(proj, spec.src, vars): return True
        for pm in spec.match_list:
            pm_vars = set()
            get_vars_from_pattern(proj, pm.pattern, pm_vars)
            if contains_vars(proj, pm.body, vars - pm_vars): return True
        return False
    elif isinstance(spec, Rely):
        if contains_vars(proj, spec.prop, vars): return True
        if contains_vars(proj, spec.body, vars): return True
        return False
    elif isinstance(spec, Anno):
        if contains_vars(proj, spec.prop, vars): return True
        if contains_vars(proj, spec.body, vars): return True
        return False
    elif isinstance(spec, If):
        if contains_vars(proj, spec.cond, vars): return True
        if contains_vars(proj, spec.then_body, vars): return True
        if contains_vars(proj, spec.else_body, vars): return True
        return False
    elif isinstance(spec, (Forall, Exists)):
        free_vars = set([v.name for v in spec.vars])
        return contains_vars(proj, spec.body, vars - free_vars)
    return False
        

def rule_unfold_specs(proj, spec):

    def f(spec):
        if isinstance(spec, Expr) and spec.op in proj.defs:
            define = proj.defs[spec.op]
            if not isinstance(define, Fixpoint) and define.name not in proj.cmds["NoUnfold"]:
                assert(len(spec.elems) == len(define.args))
                body = define.body.deepcopy()
                if len(spec.elems) == 0: 
                    return body
                elif len(spec.elems) == 1:
                    return Match.let(define.args[0].name, spec.elems[0], body, define.args[0].type)
                else:
                    src = Expr("Tuple", spec.elems, Tuple([e.get_type() for e in spec.elems]))
                    pattern = Expr("Tuple", [Symbol(arg.name, arg.type) for arg in define.args], src.get_type())
                    return Match(src, [PatternMatch(pattern, body)])
        return spec

    return rec_apply(spec, f)


def rule_move_anno_out_expr(proj, spec):

    def f(spec):
        if isinstance(spec, Expr):
            for i in range(len(spec.elems)):
                if isinstance(spec.elems[i], Anno):
                    return Anno(spec.elems[i].prop, Expr(spec.op, spec.elems[:i] + [spec.elems[i].body] + spec.elems[i+1:], spec.get_type()))
        return spec
    
    return rec_apply(spec, f)


def rule_move_anno_out_rely(proj, spec):

    def f(spec):
        if isinstance(spec, Rely) and isinstance(spec.prop, Anno):
            return Anno(spec.prop.prop, Rely(spec.prop.body, spec.body))
        else:
            return spec
    
    return rec_apply(spec, f)



def rule_move_anno_out_match(proj, spec):
    
    def f(spec):
        if isinstance(spec, Match) and isinstance(spec.src, Anno):
            return Anno(spec.src.prop, Match(spec.src.body, spec.match_list))
        else:
            return spec
    
    return rec_apply(spec, f)


def rule_move_anno_out_if(proj, spec):
    
    def f(spec):
        if isinstance(spec, If) and isinstance(spec.cond, Anno):
            return Anno(spec.cond.prop, If(spec.cond.body, spec.then_body, spec.else_body))
        else:
            return spec
    
    return rec_apply(spec, f)


def rule_move_anno_out_anno(proj, spec):
    
    def f(spec):
        if isinstance(spec, Anno) and isinstance(spec.prop, Anno):
            return Anno(spec.prop.prop, Anno(spec.prop.body, spec.body))
        else:
            return spec
    
    return rec_apply(spec, f)


def rule_eliminate_duplicate_anno(proj, spec):
    
    def f(spec):
        annos = []
        while isinstance(spec, Anno):
            annos.append(spec.prop)
            spec = spec.body
        added = set()
        for a in reversed(annos):
            if str(a) in added: continue
            spec = Anno(a, spec)
            added.add(str(a))
        return spec
    
    return rec_apply(spec, f)



def rule_move_if_out_match(proj, spec):
    
    def f(spec):
        if isinstance(spec, Match) and isinstance(spec.src, If):
            s1 = spec.deepcopy()
            return If(spec.src.cond, Match(spec.src.then_body, spec.match_list), Match(spec.src.else_body, s1.match_list))
        else:
            return spec
    
    return rec_apply(spec, f, False)


def rule_move_if_out_expr(proj, spec):

    def f(spec):
        if isinstance(spec, Expr):
            for i in range(len(spec.elems)):
                if isinstance(spec.elems[i], If):
                    e1 = spec.deepcopy()
                    e2 = spec.deepcopy()
                    return If(spec.elems[i].cond, 
                              Expr(e1.op, e1.elems[:i] + [e1.elems[i].then_body] + e1.elems[i+1:], spec.get_type()), 
                              Expr(e2.op, e2.elems[:i] + [e2.elems[i].else_body] + e2.elems[i+1:], spec.get_type()))
        return spec
    
    return rec_apply(spec, f, False)


def rule_eliminate_anno(proj, spec):

    def f(spec):
        if isinstance(spec, Anno):
            return spec.body
        return spec
    
    return rec_apply(spec, f)

    
def rule_move_match_out_expr(proj, spec):

    def f(spec):
        if isinstance(spec, Expr):
            for i in range(len(spec.elems)):
                if isinstance(spec.elems[i], Match):
                    movable = True
                    for pm in spec.elems[i].match_list:
                        vars = set()
                        get_vars_from_pattern(proj, pm.pattern, vars)
                        if any(map(lambda e: contains_vars(proj, e, vars), spec.elems[:i] + spec.elems[i+1:])):
                            movable = False
                    if movable:
                        src = spec.elems[i].src
                        matches = []
                        for pm in spec.elems[i].match_list:
                            matches.append(PatternMatch(pm.pattern, Expr(spec.op if isinstance(spec.op, str) else spec.op.deepcopy(), 
                                                                         [e.deepcopy() for e in spec.elems[:i]] +\
                                                                         [pm.body] + [e.deepcopy() for e in spec.elems[i+1:]],
                                                                             spec.get_type())))
                        return Match(src, matches)
        return spec
    
    return rec_apply(spec, f, False)


def rule_move_rely_out_when(proj, spec):

    def f(spec):
        if isinstance(spec, Match) and isinstance(spec.src, Rely) and isinstance(spec.type, Option):
            for pm in spec.match_list:
                if str(pm.pattern) == "None" and str(pm.body) == "None":
                    return Rely(spec.src.prop, Match(spec.src.body, spec.match_list))
            return spec
        return spec
    
    return rec_apply(spec, f, False)

def rule_move_when_out_when(proj, spec):

    def f(spec):
        if isinstance(spec, Match) and isinstance(spec.src, Match) and spec.src.is_when() and isinstance(spec.type, Option):
            for pm in spec.match_list:
                if str(pm.pattern) == "None" and str(pm.body) == "None":
                    return Match.when(spec.src.match_list[0].pattern.elems[0], spec.src.src, Match(spec.src.match_list[0].body, spec.match_list))
            return spec
        return spec
    
    return rec_apply(spec, f, False)

def rule_eliminate_if(proj, spec):
    def f(spec):
        if isinstance(spec, If) and str(spec.then_body) == str(spec.else_body):
            return spec.then_body
        return spec

    return rec_apply(spec, f, False)


def rule_eliminate_let(proj, spec):
    def f(spec):
        if isinstance(spec, Match) and spec.is_let() and isinstance(spec.match_list[0].pattern, Symbol):
            name = spec.match_list[0].pattern.text
            if not proj.is_known_symbol(name):
                value = spec.src
                body = spec.match_list[0].body
                return subst(body, name, value)
        return spec

    return rec_apply(spec, f, False)

def rule_eliminate_when(proj, spec):
    def f(spec):
        if isinstance(spec, Match) and spec.is_when():
            src = spec.src
            pat = spec.match_list[0].pattern.elems[0]
            when_body = spec.match_list[0].body

            def subst_when(spec: SpecNode) -> SpecNode:
                if isinstance(spec, Symbol):
                    if spec.text == "None": 
                        return Symbol("None", when_body.get_type())
                    else:
                        return None
                elif isinstance(spec, Expr):
                    if spec.op == "Some":
                        return Match(spec.elems[0], [PatternMatch(pat, when_body)])
                    else:
                        return None
                elif isinstance(spec, Match):
                    src0 = spec.src
                    matches = []
                    for pm in spec.match_list:
                        matches.append(PatternMatch(pm.pattern, subst_when(pm.body)))
                        if matches[-1].body is None:
                            return None
                    return Match(src0, matches)
                elif isinstance(spec, Rely):
                    body = subst_when(spec.body)
                    if body is None: return None
                    return Rely(spec.prop, body)
                elif isinstance(spec, Anno):
                    body = subst_when(spec.body)
                    if body is None: return None
                    return Anno(spec.prop, body)
                elif isinstance(spec, If):
                    then_body = subst_when(spec.then_body)
                    else_body = subst_when(spec.else_body)
                    if then_body is None or else_body is None: return None
                    return If(spec.cond, then_body, else_body)
                elif isinstance(spec, Forall):
                    return spec
                elif isinstance(spec, Exists):
                    return spec
                elif isinstance(spec, Const):
                    return None
                else:
                    raise Exception("Unknown node type: " + str(type(spec)))
            new_body = subst_when(src)
            if new_body is None: return spec
            return new_body
        else:
            return spec

    return rec_apply(spec, f, False)


'''
try to match [pattern] with [src]. return true if match success, and [assigns] will be filled with the matched variables
return [default] is not sure
'''
def try_match(proj, pattern, src, assigns, default):
    if isinstance(pattern, Const) and isinstance(src, Const): 
        return pattern.value == src.value

    if isinstance(pattern, Symbol): pattern_constr = pattern.text
    elif isinstance(pattern, Expr) and isinstance(pattern.op, str): pattern_constr = pattern.op
    else: pattern_constr = None

    if isinstance(src, Symbol): src_constr = src.text
    elif isinstance(src, Expr) and isinstance(src.op, str): src_constr = src.op
    else: src_constr = None

    if pattern_constr is not None and src_constr is not None and\
        (proj.is_ind_constr(pattern_constr) or proj.is_struct_constr(pattern_constr)) and\
        (proj.is_ind_constr(src_constr) or proj.is_struct_constr(src_constr)):
        if pattern_constr != src_constr: 
            return False
        else:
            if isinstance(pattern, Symbol) and isinstance(src, Symbol):
                return True
            else:
                assert(isinstance(pattern, Expr) and isinstance(src, Expr))
                for i in range(len(pattern.elems)):
                    if not try_match(proj, pattern.elems[i], src.elems[i], assigns, default): return False
                return True

    if isinstance(pattern, Symbol) and not proj.is_known_symbol(pattern.text): 
        assigns[pattern.text] = src
        return True

    return default


def rule_eliminate_match_simple(proj, spec):

    def f(spec):
        if isinstance(spec, Match):
            possible = False
            for i in range(len(spec.match_list)):
                if try_match(proj, spec.match_list[i].pattern, spec.src, {}, True):
                    possible = True
                    assigns = {}
                    if try_match(proj, spec.match_list[i].pattern, spec.src, assigns, False):
                        new_body = spec.match_list[i].body
                        for k, v in assigns.items():
                            new_body = Match.let(k, v, new_body, v.get_type())
                        return new_body
                if possible: break
            return spec
        else:
            return spec

    return rec_apply(spec, f, False)


def rule_subst_match_src_with_content(proj, spec):

    def f(spec):
        if isinstance(spec, Match):
            matches = []
            for pm in spec.match_list:
                vars = set()
                get_vars_from_pattern(proj, pm.pattern, vars)
                if not contains_vars(proj, spec.src, vars):
                    body = subst_expr(proj, pm.body, spec.src, pm.pattern)
                    matches.append(PatternMatch(pm.pattern, body))
                else:
                    matches.append(pm)
            return Match(spec.src, matches)
        return spec
    return rec_apply(spec, f, False)


def rule_simple_builtin_functions(proj, spec):

    def f(spec):
        if isinstance(spec, Expr) and spec.op == "ptr_to_int" and\
            isinstance(spec.elems[0], Expr) and spec.elems[0].op == "int_to_ptr":
            return spec.elems[0].elems[0]
        if isinstance(spec, Expr) and spec.op == "int_to_ptr" and\
            isinstance(spec.elems[0], Expr) and spec.elems[0].op == "ptr_to_int":
            return spec.elems[0].elems[0]
        return spec

    return rec_apply(spec, f, False)


def try_divide_const_factor(expr: SpecNode, factor: int):
    if isinstance(expr, IntConst) and expr.value != 0 and expr.value % factor == 0:
        return IntConst(expr.value // factor)
    elif isinstance(expr, Expr) and expr.op in ["+", "-"] and len(expr.elems) == 2:
        a = try_divide_const_factor(expr.elems[0], factor)
        b = try_divide_const_factor(expr.elems[1], factor)
        if a is None or b is None: return None
        return Expr(expr.op, [a, b], expr.get_type())
    elif isinstance(expr, Expr) and expr.op == "*":
        a = try_divide_const_factor(expr.elems[0], factor)
        b = try_divide_const_factor(expr.elems[1], factor)
        if a is not None:
            return Expr("*", [a, expr.elems[1]], expr.get_type())
        elif b is not None:
            return Expr("*", [expr.elems[0], b], expr.get_type())
        else:
            return None
    return None


prim_nums = []
for i in range(2, 1000):
    is_prim = True
    for j in range(2, int(i**0.5)+1):
        if i % j == 0:
            is_prim = False
            break
    if is_prim: prim_nums.append(i)


def rule_simplify_expr(proj, spec):

    def f(spec):
        if isinstance(spec, If) and isinstance(spec.cond, BoolConst):
            if spec.cond.value:
                return spec.then_body
            else:
                return spec.else_body
        expr = spec
        if isinstance(spec, Expr):
            if spec.op in ['=?', '<>?', '>=?', '<=?', '>?', '<?', '=', '<>', '>', '<', '>=', '<='] and\
                spec.elems[0].get_type() == Int() and spec.elems[1].get_type() == Int() and\
                not isinstance(spec.elems[1], Const):
                left = Expr('-', [spec.elems[0], spec.elems[1]], Int())
                right = IntConst(0)
                return Expr(spec.op, [left, right], spec.get_type())
            if spec.op in ['~', '!'] and isinstance(spec.elems[0], Expr) and\
                spec.elems[0].op in ['=?', '<>?', '>=?', '<=?', '>?', '<?', '=', '<>', '>', '<', '>=', '<=']:
                rev = {'=?': '<>?', '<>?': '=?', '>=?': '<?', '<=?': '>?', '>?': '<=?', '<?': '>=?', 
                        '=': '<>', '<>': '=', '>': '<=', '<': '>=', '>=': '<', '<=': '>'}
                return Expr(rev[spec.elems[0].op], spec.elems[0].elems, spec.get_type())
            if spec.op in ['+', '-'] and len(spec.elems) == 2:
                factor = 1
                expr = spec
                for i in prim_nums:
                    while True:
                        e = try_divide_const_factor(expr, i)
                        if e is None: break
                        factor *= i
                        expr = e
                if factor > 1:
                    expr = Expr('*', [IntConst(factor), expr], expr.get_type())
                else:
                    expr = spec
            if all([isinstance(e, IntConst) for e in spec.elems]):
                if spec.op == "+":
                    expr = IntConst(spec.elems[0].value + spec.elems[1].value)
                elif spec.op == "-" and len(spec.elems) == 1:
                    expr = IntConst(-spec.elems[0].value)
                elif spec.op == "-" and len(spec.elems) == 2:
                    expr = IntConst(spec.elems[0].value - spec.elems[1].value)
                elif spec.op == "*":
                    expr = IntConst(spec.elems[0].value * spec.elems[1].value)
                elif spec.op == "/":
                    expr = IntConst(spec.elems[0].value // spec.elems[1].value)
                elif spec.op == "mod":
                    expr = IntConst(spec.elems[0].value % spec.elems[1].value)
                elif spec.op == "&":
                    expr = IntConst(spec.elems[0].value & spec.elems[1].value)
                elif spec.op == "|'":
                    expr = IntConst(spec.elems[0].value | spec.elems[1].value)
                elif spec.op == "<<":
                    expr = IntConst(spec.elems[0].value << spec.elems[1].value)
                elif spec.op == ">>":
                    expr = IntConst(spec.elems[0].value >> spec.elems[1].value)
                elif spec.op == "=?":
                    expr = BoolConst(spec.elems[0].value == spec.elems[1].value)
                elif spec.op == "<>?":
                    expr = BoolConst(spec.elems[0].value != spec.elems[1].value)
                elif spec.op == ">?":
                    expr = BoolConst(spec.elems[0].value > spec.elems[1].value)
                elif spec.op == ">=?":
                    expr = BoolConst(spec.elems[0].value >= spec.elems[1].value)
                elif spec.op == "<?":
                    expr = BoolConst(spec.elems[0].value < spec.elems[1].value)
                elif spec.op == "<=?":
                    expr = BoolConst(spec.elems[0].value <= spec.elems[1].value)
        if not TR.ANNOTATE or str(expr) == str(spec) or expr.get_type() != Int():
            return spec
        return Anno(Expr("=", [spec, expr]), expr)

    return rec_apply(spec, f, False)


def rule_simple_record_get_set(proj, spec):

    def f(spec):
        if isinstance(spec, Expr) and spec.op == "Record.get":
            rec = spec.elems[0]
            field = spec.elems[1].text
            typ = proj.structs[proj.symbols[field]["info"]]
            if isinstance(rec, Expr) and rec.op == f"mk{typ.name}":
                for i in range(len(rec.elems)):
                    if typ.elems[i].name == field:
                        return rec.elems[i]
            if isinstance(rec, Expr) and rec.op == "Record.set":
                set_field = rec.elems[1].text
                if field == set_field:
                    if len(rec.elems) == 3:
                        return rec.elems[2]
                    else:
                        return Expr("Record.set", [Expr("Record.get", [rec.elems[0], rec.elems[1]])] + rec.elems[2:])
                else:
                    return Expr("Record.get", [rec.elems[0], Symbol(field)])
        if isinstance(spec, Expr) and spec.op == "Record.set":
            rec = spec.elems[0]
            fields = [e.text for e in spec.elems[1:-1]]
            old_value = rec
            for f in fields:
                old_value = Expr("Record.get", [old_value, Symbol(f)])
            value = spec.elems[-1]
            if isinstance(rec, Expr) and rec.op == "Record.set":
                obj = rec.elems[0]
                subfields = [e.text for e in rec.elems[1:-1]]
                if len(fields) <= len(subfields) and fields == subfields[:len(fields)]:
                    return Expr("Record.set", [obj] + spec.elems[1:])

                if len(fields) > len(subfields) and fields[:len(subfields)] == subfields:
                    return Expr("Record.set", rec.elems[:-1] + [Expr("Record.set", [rec.elems[-1]] + spec.elems[1+len(subfields):])])

                if fields < subfields:
                    return Expr("Record.set", [Expr("Record.set", [obj] + spec.elems[1:])] + rec.elems[1:])
            if isinstance(value, Expr) and value.op == "Record.get" and value.elems[1].text == fields[-1]:
                valid = True
                for f in reversed(fields):
                    if isinstance(value, Expr) or value.op == "Record.get" or value.elems[1].text == f:
                        value = value.elems[0]
                    else:
                        valid = False
                        break
                if valid and str(value) == str(rec):
                    return rec
                else:
                    return spec
            if isinstance(value, Expr) and value.op == "Record.set" and str(value.elems[0]) == str(old_value):
                return Expr("Record.set", [rec] + spec.elems[1:-1] + value.elems[1:])
                
        return spec

    return rec_apply(spec, f, False)


def rule_simple_zmap_get_set(proj, spec):

    def f(spec):
        if isinstance(spec, Expr) and spec.op == "ZMap.get":
            map = spec.elems[0]
            idx = spec.elems[1]
            if isinstance(map, Expr) and map.op == f"zmap_init":
                return map.elems[0]
            if isinstance(map, Expr) and map.op == "ZMap.set":
                idx2 = map.elems[1]
                if str(idx) == str(idx2):
                    return map.elems[2]
                if isinstance(idx, Const) and isinstance(idx2, Const) and idx.value != idx2.value:
                    return Expr("ZMap.get", [map.elems[0], idx], spec.get_type())
        if isinstance(spec, Expr) and spec.op == "ZMap.set":
            map = spec.elems[0]
            idx = spec.elems[1]
            value = spec.elems[2]
            if isinstance(map, Expr) and map.op == "ZMap.set":
                idx2 = map.elems[1]
                if str(idx) == str(idx2):
                    return Expr("ZMap.set", [map.elems[0], idx, spec.elems[2]])
            elif isinstance(value, Expr) and value.op == "ZMap.get" and str(value.elems[1]) == str(idx) and str(value.elems[0]) == str(map):
                return map

        return spec

    return rec_apply(spec, f, False)
