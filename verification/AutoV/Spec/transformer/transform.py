from AutoV.Spec.transformer.rules import *
from AutoV.Spec.transformer.z3_rules import rule_simple_by_z3
import AutoV.Spec.transformer.z3_checker as CHECKER
import time

ANNOTATE = True
RECONSTRUCT = True

def transform_anno(proj, spec):
    if not ANNOTATE:
        return spec
    anno_rules = [
        rule_move_anno_out_expr,
        rule_move_anno_out_rely,
        rule_move_anno_out_match,
        rule_move_anno_out_if,
        rule_move_anno_out_anno,
        rule_eliminate_duplicate_anno,
    ]
    while True:
        new_spec = spec
        for rule in anno_rules:
            new_spec = rule(proj, new_spec)
        if str(new_spec) == str(spec):
            break
        spec = new_spec
    return spec

def spec_transformer(proj, specs):
    global RECONSTRUCT
    global ANNOTATE 

    simplify_rules = [
        rule_eliminate_let,
        rule_eliminate_when,
        rule_eliminate_if,
        rule_eliminate_match_simple,
        rule_subst_match_src_with_content,
        rule_simple_builtin_functions,
        rule_simple_record_get_set,
        rule_simple_zmap_get_set,
        rule_simplify_expr,
        rule_move_rely_out_when,
        rule_move_when_out_when,
        rule_move_if_out_match,
        rule_move_if_out_expr,
    ]
    if not ANNOTATE:
        simplify_rules.append(rule_eliminate_anno)

    for i in range(len(specs)):
        now = time.time()
        spec = specs[i]
        if spec.name in proj.cmds["NoTrans"]:
            continue
        known = {}
        for arg in spec.args:
            known[arg.name] = arg.type.declare(arg.name, 0)
        RECONSTRUCT = False
        while True:
            new_spec = spec.body
            while True:
                new_spec1 = new_spec
                for rule in simplify_rules:
                    if rule == rule_eliminate_let:
                        new_spec1 = eliminate_ambiguity(proj, new_spec1, set(known.keys()))
                    new_spec1 = rule(proj, new_spec1)
                    new_spec1 = transform_anno(proj, new_spec1)
                if str(new_spec1) == str(new_spec):
                    break
                new_spec = new_spec1
            while True:
                new_spec1 = new_spec
                for rule in [rule_unfold_specs]:
                    new_spec1 = rule(proj, new_spec1)
                if str(new_spec1) == str(new_spec):
                    break
                new_spec = new_spec1
            while True:
                new_spec1 = new_spec
                for rule in [rule_eliminate_let, 
                             rule_eliminate_match_simple, 
                             rule_simple_record_get_set, 
                             rule_simple_zmap_get_set,
                             rule_simplify_expr,
                             ]:
                    if rule == rule_eliminate_let:
                        new_spec1 = eliminate_ambiguity(proj, new_spec1, set(known.keys()))
                    new_spec1 = rule(proj, new_spec1)
                    new_spec1 = transform_anno(proj, new_spec1)
                if str(new_spec1) == str(new_spec):
                    break
                new_spec = new_spec1
            new_spec.clear_z3_eval()
            new_spec = rule_simple_by_z3(proj, new_spec, {"vars": known, "conds": []})
            new_spec.clear_z3_eval()
            CHECKER.cache.clear()
            new_spec = rule_move_match_out_expr(proj, new_spec)
            new_spec = transform_anno(proj, new_spec)
            if str(new_spec) == str(spec.body):
                if RECONSTRUCT: break
                RECONSTRUCT = True
            spec.body = new_spec

        print(f"transform [{spec.name}] using time: ", time.time() - now)
        print("="*20)
        print(spec)
        print("="*20)

    return specs
    

def find_common_subexpr(proj, spec):
    subexprs = []
    if isinstance(spec, Expr):
        for e in spec.elems:
            subexprs += find_common_subexpr(proj, e)
        if isinstance(spec.op, SpecNode):
            subexprs += find_common_subexpr(proj, spec.op)
        subexprs.append(spec)
    elif isinstance(spec, Match):
        subexprs += find_common_subexpr(proj, spec.src)
        for pm in spec.match_list:
            vars = set()
            get_vars_from_pattern(proj, pm.pattern, vars)
            subexprs += list(filter(lambda e: not contains_vars(proj, e, vars), find_common_subexpr(proj, pm.body)))
    elif isinstance(spec, Rely):
        return find_common_subexpr(proj, spec.prop) + find_common_subexpr(proj, spec.body)
    elif isinstance(spec, If):
        return find_common_subexpr(proj, spec.cond) + find_common_subexpr(proj, spec.then_body) + find_common_subexpr(proj, spec.else_body)
    elif isinstance(spec, (Forall, Exists)):
        free_vars = set([v.name for v in spec.vars])
        return list(filter(lambda e: not contains_vars(proj, e, free_vars), find_common_subexpr(proj, spec.body)))
    return subexprs


def extract_common_subexpr(proj, spec, subst_var):
    subexprs = [(str(e), e) for e in find_common_subexpr(proj, spec)]
    subexprs.sort(key=lambda e: e[0])
    repeat = None
    for i, (se, e) in enumerate(subexprs):
        if i > 0 and se == subexprs[i-1][0]:
            if repeat is None or len(repeat[0]) < len(se):
                repeat = (se, e)
    if repeat is not None:
        spec = subst_expr(proj, spec, repeat[1], Symbol(subst_var, repeat[1].get_type()))
        return Match.let(subst_var, repeat[1].deepcopy(), spec, repeat[1].get_type())
    
    if isinstance(spec, Expr):
        if isinstance(spec.op, SpecNode):
            op = extract_common_subexpr(proj, spec.op, subst_var)
            if op != spec.op:
                return Expr(op, spec.elems, spec.get_type())
        for i, e in enumerate(spec.elems):
            ee = extract_common_subexpr(proj, e, subst_var)
            if ee != e:
                return Expr(spec.op, spec.elems[:i] + [ee] + spec.elems[i+1:], spec.get_type())
    elif isinstance(spec, Match):
        src = extract_common_subexpr(proj, spec.src, subst_var)
        if src != spec.src:
            return Match(src, spec.match_list)
        for i, pm in enumerate(spec.match_list):
            body = extract_common_subexpr(proj, pm.body, subst_var)
            if body != pm.body:
                return Match(src, spec.match_list[:i] + [PatternMatch(pm.pattern, body)] + spec.match_list[i+1:])
    elif isinstance(spec, Rely):
        prop = extract_common_subexpr(proj, spec.prop, subst_var)
        if prop != spec.prop:
            return Rely(prop, spec.body)
        body = extract_common_subexpr(proj, spec.body, subst_var)
        if body != spec.body:
            return Rely(spec.prop, body)
    elif isinstance(spec, If):
        cond = extract_common_subexpr(proj, spec.cond, subst_var)
        if cond != spec.cond:
            return If(cond, spec.then_body, spec.else_body)
        then_body = extract_common_subexpr(proj, spec.then_body, subst_var)
        if then_body != spec.then_body:
            return If(spec.cond, then_body, spec.else_body)
        else_body = extract_common_subexpr(proj, spec.else_body, subst_var)
        if else_body != spec.else_body:
            return If(spec.cond, spec.then_body, else_body)
    elif isinstance(spec, Forall):
        body = extract_common_subexpr(proj, spec.body, subst_var)
        if body != spec.body:
            return Forall(spec.vars, body)
    elif isinstance(spec, Exists):
        body = extract_common_subexpr(proj, spec.body, subst_var)
        if body != spec.body:
            return Exists(spec.vars, body)
    return spec
