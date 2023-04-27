import z3
from AutoV.Spec.nodes import *
from AutoV.Spec.values import *
from AutoV.Spec.transformer.z3_checker import *
from typing import Callable, Union
import AutoV.Spec.transformer.transform as TR
from copy import copy, deepcopy


def simple_rely_by_z3(proj, spec: Rely, state={"vars": {}, "conds": []}):
    cond = rule_simple_by_z3(proj, spec.prop, state)
    if cond is None: return None
    c = z3_eval(proj, cond, state)
    res = z3_check(state, c.get_z3_value(), timeout=1000)
    if res is None:
        state["conds"].append(c.get_z3_value())
        body = rule_simple_by_z3(proj, spec.body, state)
        if body is None:
            return None
        return Rely(cond, body)
    elif res:
        if TR.ANNOTATE and False:
            body = rule_simple_by_z3(proj, spec.body, state)
            if body is None: return None
            return Anno(cond, rule_simple_by_z3(proj, spec.body, state))
        else:
            return rule_simple_by_z3(proj, spec.body, state)
    else:
        return None


def simple_anno_by_z3(proj, spec: Anno, state={"vars": {}, "conds": []}):
    body = rule_simple_by_z3(proj, spec.body, state)
    if body is None: return None
    return Anno(spec.prop, body)


def simple_if_by_z3(proj, spec: If, state={"vars": {}, "conds": []}):
    cond = rule_simple_by_z3(proj, spec.cond, state)
    if cond is None: return None
    c = z3_eval(proj, cond, state)
    res = z3_check(state, c.get_z3_value(), timeout=1000)
    if res is None:
        state["conds"].append(c.get_z3_value())
        then_body = rule_simple_by_z3(proj, spec.then_body, state)
        state["conds"][-1] = z3.Not(c.get_z3_value())
        else_body = rule_simple_by_z3(proj, spec.else_body, state)
        if then_body is None and else_body is None:
            return None
        elif then_body is None and isinstance(else_body.get_type(), Option):
            return Rely(Expr("=", [cond, BoolConst(False)]), else_body)
        elif else_body is None and isinstance(then_body.get_type(), Option):
            return Rely(Expr("=", [cond, BoolConst(True)]), then_body)
        if then_body is None: then_body = spec.then_body
        if else_body is None: else_body = spec.else_body
        return If(cond, then_body, else_body)
    elif res:
        if TR.ANNOTATE and str(cond) != "true" and False:
            return Anno(Expr("=", [cond, BoolConst(True)], Prop()), 
                        rule_simple_by_z3(proj, spec.then_body, state))
        else:
            return rule_simple_by_z3(proj, spec.then_body, state)
    else:
        if TR.ANNOTATE and str(cond) != "false" and False:
            return Anno(Expr("=", [cond, BoolConst(False)], Prop()), 
                        rule_simple_by_z3(proj, spec.else_body, state))
        else:
            return rule_simple_by_z3(proj, spec.else_body, state)


def simple_expr_by_z3(proj, spec: Expr, state={"vars": {}, "conds": []}):
    spec = TR.transform_anno(proj, spec)
    if isinstance(spec, Anno):
        return simple_anno_by_z3(proj, spec, state)
    elems = [rule_simple_by_z3(proj, e, state) for e in spec.elems]
    if any([e is None for e in elems]):
        return None
    spec = TR.transform_anno(proj, Expr(spec.op, elems, spec.get_type()))

    annos = []
    while isinstance(spec, Anno):
        annos.append(spec.prop)
        spec = spec.body
    def reannotate(spec):
        nonlocal annos
        for anno in reversed(annos):
            spec = Anno(anno, spec)
        return spec
    
    exp_val = z3_eval(proj, spec, state)

    subexprs = {}
    def collect_exprs(expr: SpecNode):
        if isinstance(expr, Expr):
            for e in expr.elems:
                collect_exprs(e)
        if isinstance(expr, Anno):
            collect_exprs(expr.body)
        if expr.z3_eval is not None and isinstance(expr.z3_eval, SpecValue):
            h = hash(expr.z3_eval.get_z3_value())
            if h not in subexprs or len(str(expr)) < len(str(subexprs[h][1])):
                subexprs[h] = (expr.z3_eval.get_z3_value(), expr)
    collect_exprs(spec)

    def reconstruct_expr(z3_val, try_subexpr=True):
        if not TR.RECONSTRUCT:
            return None

        if isinstance(z3_val, z3.IntNumRef):
            return IntConst(z3_val.as_long())
        if isinstance(z3_val, z3.BoolRef):
            if z3.is_true(z3_val):
                return BoolConst(True)
            if z3.is_false(z3_val):
                return BoolConst(False)
        '''
        For example:
        we want to simplify (100 * x + 1) / 100 ==> x
        z3 cannot simplify this expression directly, so we heuristically try to find a subexpression [x]
        that is equal to the original expression [(100 * x + 1) / 100)].
        At the same time, we try to avoid replacing [x] with a longer expression [(100 * x + 1) / 100)].

        So we first try finding a subexpression from the original expr; then we follow the expression structure of z3_val;
        at last, we try to find a subexpression from the original expr again without enforcing new_len < old_len.
        '''
        candidates = []
        if try_subexpr:
            for e_val, e in sorted(subexprs.values(), key=lambda x: len(str(x[1]))):
                if len(str(e_val)) > len(str(z3_val)): continue
                if str(e_val) == str(z3_val) or\
                    (e_val.sort() == z3_val.sort() and z3_check(state, e_val == z3_val)):
                    candidates.append(e)
        if isinstance(z3_val, z3.ArithRef) and z3_val.num_args() > 0:
            elems = [reconstruct_expr(z3_val.arg(i)) for i in range(z3_val.num_args())]
            if all([e is not None for e in elems]):
                if str(z3_val.decl()) in ["+", "-", "*", "/", "mod"]:
                    expr = Expr(str(z3_val.decl()), [elems[0], elems[1]], Int())
                    for e in elems[2:]:
                        expr = Expr(str(z3_val.decl()), [expr, e], Int())
                    candidates.append(expr)
                elif str(z3_val.decl()) == 'Not':
                    if isinstance(elems[0], Expr) and\
                        elems[0].op in ['=?', '<>?', '>=?', '<=?', '>?', '<?', '=', '<>', '>', '<', '>=', '<=']:
                        rev = {'=?': '<>?', '<>?': '=?', '>=?': '<?', '<=?': '>?', '>?': '<=?', '<?': '>=?', 
                                '=': '<>', '<>': '=', '>': '<=', '<': '>=', '>=': '<', '<=': '>'}
                        candidates.append(Expr(rev[elems[0].op], elems[0].elems, Bool()))
                    candidates.append(Expr("!", [elems[0]], Bool()))
                elif str(z3_val.decl()) in ['<', '>', '<=', '>=']:
                    candidates.append(Expr(str(z3_val.decl()) + '?', [elems[0], elems[1]], Bool()))
        candidates.sort(key=lambda x: len(str(x)))
        if len(candidates) > 0:
            return candidates[0].deepcopy()
        else:
            return None

    if spec.get_type() == Int() or spec.get_type() == Bool() and len(str(spec)) <= 200:
        expr = reconstruct_expr(exp_val.get_z3_value())
        if expr is not None and len(str(expr)) < len(str(spec)):
            if TR.ANNOTATE and str(spec) != str(expr) and expr.get_type() == Int():
                return reannotate(Anno(Expr("=", [spec, expr], Prop()), expr))
            else:
                return reannotate(expr)

    if spec.op == "/" and isinstance(spec.elems[0], Expr) and spec.elems[0].op == "+":
        ea = spec.elems[0].elems[0]
        eb = spec.elems[0].elems[1]
        ed = spec.elems[1]
        a = z3_eval(proj, spec.elems[0].elems[0], state)
        b = z3_eval(proj, spec.elems[0].elems[1], state)
        d = z3_eval(proj, spec.elems[1], state)
        if z3_check(state, a.get_z3_value() >= 0) and z3_check(state, b.get_z3_value() >= 0) and z3_check(state, d.get_z3_value() > 0) and\
            z3_check(state, a.get_z3_value() % d.get_z3_value() == 0) or z3_check(state, b.get_z3_value() % d.get_z3_value() == 0):
            expr = Expr(spec.elems[0].op, [Expr("/", [ea, ed], Int()), Expr("/", [eb, ed], Int())], Int())
            if TR.ANNOTATE and str(spec) != str(expr) and expr.get_type() == Int():
                return reannotate(Anno(Expr("=", [spec, expr], Prop()), expr))
            else:
                return reannotate(expr)

    return reannotate(spec)


def simple_match_by_z3(proj, spec: Match, state={"vars": {}, "conds": []}):
    src = rule_simple_by_z3(proj, spec.src, state)
    if src is None: return None
    src_val = z3_eval(proj, src, state)
    match_list = []

    for pm in spec.match_list:
        new_state = copy_state(state)
        ##############################
        def resolve_pattern(pat: SpecNode, src: SpecValue):
            nonlocal state, new_state
            if isinstance(pat, Symbol):
                if proj.is_ind_constr(pat.text):
                    t = src.get_type()
                    new_state["conds"].append(src.get_z3_value() == t.construct(pat.text, []).get_z3_value())
                else:
                    new_state["vars"][pat.text] = src
            elif isinstance(pat, Const):
                new_state["conds"].append(src.get_z3_value() == StringValue(pat.value).get_z3_value())
            elif isinstance(pat, Expr):
                if pat.op == "Some":
                    t = src.get_type()
                    assert(isinstance(t, Option))
                    v = t.elem_type.declare("v", spec.nid)
                    #new_state["conds"].append(z3.Exists([v.get_z3_value()], src.get_z3_value() == t.construct("Some", [v]).get_z3_value()))
                    resolve_pattern(pat.elems[0], src.get("value"))
                elif pat.op == "Tuple":
                    for i in range(len(pat.elems)):
                        resolve_pattern(pat.elems[i], src.get(i))
                elif pat.op == "::":
                    t = src.get_type()
                    assert(isinstance(t, List))
                    hh = t.element_type.declare("h", spec.nid)
                    tt = t.declare("t", spec.nid)
                    #new_state["conds"].append(z3.Exists([hh.get_z3_value(), tt.get_z3_value()], src.get_z3_value() == t.construct("Cons", [hh, tt])))
                    resolve_pattern(pat.elems[0], src.get("head"))
                    resolve_pattern(pat.elems[1], src.get("tail"))
                elif isinstance(pat.op, str) and pat.op in proj.symbols and proj.symbols[pat.op]["kind"] == "ind_constr":
                    t = src.get_type()
                    assert(isinstance(t, Inductive))
                    vars = [arg.type.declare(f"v{i}", spec.nid) for i, arg in enumerate(t.constr[pat.op])]
                    #new_state["conds"].append(z3.Exists([v.get_z3_value() for v in vars], src.get_z3_value() == t.construct(pat.op, vars).get_z3_value()))
                    for i, arg in enumerate(t.constr[pat.op]):
                        resolve_pattern(pat.elems[i], src.get(arg.name))
                else:
                    raise Exception("Unknown pattern: " + str(pat))
            else:
                raise Exception("Unknown pattern: " + str(pat))
        ##############################
        resolve_pattern(pm.pattern, src_val)
        if z3_check(new_state) is False:
            continue
        body = rule_simple_by_z3(proj, pm.body, new_state)
        if body is not None:
            match_list.append(PatternMatch(pm.pattern, body))
    if len(match_list) == 0:
        return None
    else:
        return Match(src, match_list)

def rule_simple_by_z3(proj, spec: SpecNode, state={"vars": {}, "conds": []}):
    state = copy_state(state)

    if isinstance(spec, Symbol):
        return spec

    elif isinstance(spec, Const):
        return spec

    elif isinstance(spec, Expr):
        return simple_expr_by_z3(proj, spec, state)
        
    elif isinstance(spec, Match):
        return simple_match_by_z3(proj, spec, state)

    elif isinstance(spec, Rely):
        return simple_rely_by_z3(proj, spec, state)

    elif isinstance(spec, Anno):
        return simple_anno_by_z3(proj, spec, state)
        
    elif isinstance(spec, If):
        return simple_if_by_z3(proj, spec, state)

    elif isinstance(spec, Forall):
        for v in spec.vars:
            state["vars"][v.name] = v.type.declare(v.name, spec.nid)
        spec = Forall(spec.vars, rule_simple_by_z3(proj, spec.body, state))
        spec.clear_z3_eval()
        return spec

    elif isinstance(spec, Exists):
        for v in spec.vars:
            state["vars"][v.name] = v.type.declare(v.name, spec.nid)
        spec = Exists(spec.vars, rule_simple_by_z3(proj, spec.body, state))
        spec.clear_z3_eval()
        return spec

    else:
        raise Exception("Unknown node type: " + str(type(spec)))
