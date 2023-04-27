from collections import defaultdict

from AutoV.IRLoader.irtypes import *
from AutoV.IRLoader.values import *
from AutoV.IRLoader.instructions import *
from AutoV.IRLoader.llvm import *
from AutoV.IRLoader.coq import *
from copy import deepcopy

def update_scc(nodes, edges, backwards):
    vis = defaultdict(lambda: False)
    sccCnt = 0
    seq = []

    def dfs1(n):
        nonlocal nodes, edges, backwards, seq, vis
        nodes[n]["scc"] = None
        vis[n] = True
        for e in edges[n]:
            if e["next"] is None: continue
            if not vis[e["next"]]:
                dfs1(e["next"])
        seq.append(n)

    def dfs2(n):
        nonlocal nodes, edges, seq, vis, sccCnt
        nodes[n]["scc"] = sccCnt
        for e in backwards[n]:
            if nodes[e["from"]]["scc"] is None:
                dfs2(e["from"])

    for n in nodes:
        if not vis[n]: dfs1(n)

    for n in reversed(seq):
        if nodes[n]["scc"] is None:
            sccCnt = sccCnt + 1
            dfs2(n)

    return seq


def rule_eliminate_leaf(n, nodes, edges, backwards):
    if len(edges[n]) == 0 and len(backwards[n]) == 1 and len(nodes[n]["loop_use"]) == 0:
        P, e = backwards[n][0]["from"], backwards[n][0]["edge"]
        e["insts"] += nodes[n]["insts"]
        e["next"] = None
        del nodes[n]
        del edges[n]
        del backwards[n]
        return ("eliminate_leaf", n)
    else:
        return None

def rule_eliminate_bridge(n, nodes, edges, backwards):
    if len(edges[n]) == 1 and len(backwards[n]) == 1 and len(nodes[n]["loop_use"]) == 0:
        P, e1 = backwards[n][0]["from"], backwards[n][0]["edge"]
        S, e2 = edges[n][0]["next"], edges[n][0]
        e1["next"] = S
        e1["insts"] = e1["insts"] + nodes[n]["insts"] + e2["insts"]
        e1["backward"] = e2["backward"]
        if e2["backward"] is not None:
            e2["backward"]["from"] = P
            e2["backward"]["edge"] = e1
        del nodes[n]
        del edges[n]
        del backwards[n]
        return ("eliminate_bridge", n)
    else:
        return None

def rule_merge_branches(n, nodes, edges, backwards):
    if len(edges[n]) == 0: return None

    S = None
    for e in edges[n]:
        if e["next"] is not None:
            if S is None:
                S = e["next"]
            elif S != e["next"]:
                return None

    if S is not None and len(edges[n]) <= 1: return None

    if edges[n][0]["cond"] is None:
        t = edges[n][0]
        edges[n][0] = edges[n][-1]
        edges[n][-1] = t

    inst = edges[n][-1]["insts"]
    for e in list(reversed(edges[n]))[1:]:
        assert(e["cond"] is not None)
        inst = [IIf(e["cond"], e["insts"], inst)]
    nodes[n]["insts"] += inst

    if S is None:
        edges[n] = []
    else:
        edges[n] = [{"next": S, "cond": None, "insts": []}]
        backwards[S] = list(filter(lambda be: be["from"] != n, backwards[S]))
        backwards[S].append({"from": n, "edge": edges[n][0]})
        edges[n][0]["backward"] = backwards[S][-1]
    
    return ("merge_branch", n)

def rule_duplicate_node(n, nodes, edges, backwards):
    if len(edges[n]) > 1: return None
    if len(backwards[n]) <= 1: return None
    if len(nodes[n]["loop_use"]) != 0: return None

    if len(edges[n]) == 1:
        S = edges[n][0]["next"]
        if S == n: return None
    else:
        S = None

    if S is not None:
        backwards[S] = list(filter(lambda be: be["from"] != n, backwards[S]))

    for be in backwards[n]:
        be["edge"]["insts"] += nodes[n]["insts"]
        if len(edges[n]) == 1:
            be["edge"]["insts"] += edges[n][0]["insts"]
        be["edge"]["next"] = S
        if S is None:
            be["edge"]["backward"] = None
        else:
            backwards[S].append({"from": be["from"], "edge": be["edge"]})
            be["edge"]["backward"] = backwards[S][-1]
    
    del nodes[n]
    del edges[n]
    del backwards[n]

    return ("duplicate", n)

def collect_continue_break(insts):
    for i in insts:
        if isinstance(i, (IContinue, IBreak)):
            yield i
        elif isinstance(i, IIf):
            for j in collect_continue_break(i.true_body):
                yield j
            for j in collect_continue_break(i.false_body):
                yield j

def rule_destruct_scc(scc, nodes, edges, backwards):
    P = S = None
    scc_nodes = []
    for n in nodes:
        if nodes[n]["scc"] == scc:
            scc_nodes.append(n)
            for be in backwards[n]:
                if nodes[be["from"]]["scc"] != scc:
                    if P is not None:
                        return None
                    P = n
            for i in collect_continue_break(nodes[n]["insts"]):
                if hasattr(i, "Loop") and nodes[i.Loop]["scc"] != scc:
                    return None
            for e in edges[n]:
                for i in collect_continue_break(e["insts"]):
                    if hasattr(i, "Loop") and nodes[i.Loop]["scc"] != scc: return None
                if e["next"] is None or nodes[e["next"]]["scc"] == scc: continue
                if S is not None and S != e["next"]:
                    return None
                S = e["next"]

    if len(scc_nodes) == 1:
        n = scc_nodes[0]
        self_loop = False
        for e in edges[n]:
            if e["next"] == n:
                self_loop = True
        if not self_loop:
            return None
    
    assert(P is not None)
    nodes[P]["loop_use"].add(P)

    # break edges
    for n in scc_nodes:
        for e in edges[n]:
            if e["next"] == P:
                backwards[e["next"]] = list(filter(lambda be: be != e["backward"], backwards[e["next"]]))
                e["backward"] = None
                e["next"] = None
                e["insts"].append(IContinue())
                e["insts"][-1].Loop = P
            elif S is not None and e["next"] == S:
                nodes[S]["loop_use"].add(P)
                backwards[e["next"]] = list(filter(lambda be: be != e["backward"], backwards[e["next"]]))
                e["backward"] = None
                e["next"] = None
                e["insts"].append(IBreak())
                e["insts"][-1].Loop = P
                e["insts"][-1].After = S
    
    return ("destruct_scc", P, S)

def rule_destruct_inner_scc(scc, nodes, edges, backwards):
    P = S = None
    scc_nodes = []
    is_inner = False
    outer_loop = None
    outer_after = None
    for n in nodes:
        if nodes[n]["scc"] == scc:
            scc_nodes.append(n)
            for be in backwards[n]:
                if nodes[be["from"]]["scc"] != scc:
                    if P is not None:
                        return None
                    P = n

            for i in collect_continue_break(nodes[n]["insts"]):
                if hasattr(i, "Loop") and nodes[i.Loop]["scc"] != scc:
                    is_inner = True
                    if outer_loop is not None:
                        assert(outer_loop == i.Loop)
                    outer_loop = i.Loop
                    if isinstance(i, IBreak):
                        if outer_after is not None:
                            assert(outer_after == i.After)
                        outer_after = i.After

            for e in edges[n]:
                for i in collect_continue_break(e["insts"]):
                    if hasattr(i, "Loop") and nodes[i.Loop]["scc"] != scc:
                        is_inner = True
                        if outer_loop is not None:
                            assert (outer_loop == i.Loop)
                        outer_loop = i.Loop
                        if isinstance(i, IBreak):
                            if outer_after is not None:
                                assert (outer_after == i.After)
                            outer_after = i.After

                if e["next"] is None or nodes[e["next"]]["scc"] == scc: continue
                if S is not None and S != e["next"]:
                    return None
                S = e["next"]

    if not is_inner: return None

    if len(scc_nodes) == 1:
        n = scc_nodes[0]
        self_loop = False
        for e in edges[n]:
            if e["next"] == n:
                self_loop = True
        if not self_loop:
            return None

    assert (P is not None)
    nodes[P]["loop_use"].add(P)

    pre_blk = P + "..prep"
    succ_blk = P + "..succ"

    nodes[pre_blk] = {"insts": [IAssign(TBool(), f"{P}_cont", VBool(False)), IAssign(TBool(), f"{P}_brk", VBool(False))], "scc": None, "loop_use": set()}
    edges[pre_blk] = [{"next": P, "cond": None, "insts": []}]
    backwards[pre_blk] = list(filter(lambda be: nodes[be["from"]]["scc"] != scc, backwards[P]))
    for be in backwards[pre_blk]:
        be["edge"]["next"] = pre_blk
    backwards[P] = [{"from": pre_blk, "edge": edges[pre_blk][-1]}]
    edges[pre_blk][-1]["backward"] = backwards[P][-1]

    def modify_continue_break(insts: list[IRInst]):
        new_insts = []
        for i in insts:
            if isinstance(i, (IBreak, IContinue)):
                if hasattr(i, "Loop") and nodes[i.Loop]["scc"] != scc:
                    new_insts += [IAssign(TBool(), f"{P}_brk" if isinstance(i, IBreak) else f"{P}_cont", VBool(True)), IBreak()]
                    new_insts[-1].Loop = P
                    new_insts[-1].After = succ_blk
            elif isinstance(i, IIf):
                new_insts.append(IIf(i.cond, modify_continue_break(i.true_body), modify_continue_break(i.false_body)))
            else:
                new_insts.append(i)

        return new_insts

    # break edges
    for n in scc_nodes:
        nodes[n]["insts"] = modify_continue_break(nodes[n]["insts"])
        for e in edges[n]:
            e["insts"] = modify_continue_break(e["insts"])
            if e["next"] == P:
                backwards[e["next"]] = list(filter(lambda be: be != e["backward"], backwards[e["next"]]))
                e["backward"] = None
                e["next"] = None
                e["insts"].append(IContinue())
                e["insts"][-1].Loop = P
            elif S is not None and e["next"] == S:
                backwards[e["next"]] = list(filter(lambda be: be != e["backward"], backwards[e["next"]]))
                e["backward"] = None
                e["next"] = None
                e["insts"].append(IBreak())
                e["insts"][-1].Loop = P
                e["insts"][-1].After = succ_blk

    cont = IContinue()
    cont.Loop = outer_loop
    brk = IBreak()
    brk.Loop = outer_loop
    brk.After = outer_after
    nodes[succ_blk] = {"insts": [IIf(VLocal(TBool(), f"{P}_cont"), [cont], [IIf(VLocal(TBool(), f"{P}_brk"), [brk], [])])], "scc": None, "loop_use": {P}}
    if S is not None:
        edges[succ_blk] = [{"next": S, "cond": None, "insts": []}]
        backwards[succ_blk] = []
        backwards[S].append({"from": succ_blk, "edge": edges[succ_blk][-1]})
        edges[succ_blk][-1]["backward"] = backwards[S][-1]
    else:
        edges[succ_blk] = []
        backwards[succ_blk] = []

    return ("destruct_inner_scc", P, S)

def rule_duplicate_scc(scc, nodes, edges, backwards):
    P = set()
    S = None
    scc_nodes = []
    for n in nodes:
        if len(nodes[n]["loop_use"]) != 0: return None
        if nodes[n]["scc"] == scc:
            scc_nodes.append(n)
            for be in backwards[n]:
                if nodes[be["from"]]["scc"] != scc:
                    P.add(n)
            for e in edges[n]:
                if e["next"] is None or nodes[e["next"]]["scc"] == scc: continue
                if S is not None and S != e["next"]:
                    return None
                S = e["next"]

    if len(P) <= 1: return None
    P = list(P)

    dup_nodes = dict()
    for pp in P[1:]:
        dup_nodes[pp] = []
        for n in scc_nodes:
            dup = n + "." + pp
            dup_nodes[pp].append(dup)
            nodes[dup] = {"insts": deepcopy(nodes[n]["insts"]), "scc": None, "loop_use": set()}
            edges[dup] = [{"next": e["next"], "insts": deepcopy(e["insts"]), "cond": deepcopy(e["cond"])} for e in edges[n]]
            backwards[dup] = []
            for e in edges[dup]:
                if e["next"] in scc_nodes:
                    e["next"] += "." + pp
        for n in dup_nodes[pp]:
            for e in edges[n]:
                if e["next"] is not None:
                    backwards[e["next"]].append({"from": n, "edge": e})
                    e["backward"] = backwards[e["next"]][-1]

        new_pp_backward = []
        for be in backwards[pp]:
            if nodes[be["from"]]["scc"] != scc:
                e = be["edge"]
                e["next"] = f"{pp}.{pp}"
                backwards[f"{pp}.{pp}"].append({"from": be["from"], "edge": e})
                e["backward"] = backwards[f"{pp}.{pp}"][-1]
            else:
                new_pp_backward.append(be)
        backwards[pp] = new_pp_backward

    return ("duplicate_scc", P)


def rule_construct_loop(n, nodes, edges, backwards):

    break_point = None
    complete_loop = None

    cont_brk = []

    def collect_break_continue(insts, n):
        nonlocal break_point, complete_loop

        for i in insts:
            if isinstance(i, IIf):
                collect_break_continue(i.true_body, n)
                collect_break_continue(i.false_body, n)
            elif isinstance(i, IBreak):
                cont_brk.append(i)
                if i.Loop == n:
                    if complete_loop is None:
                        complete_loop = True
                else:
                    complete_loop = False

                if break_point is None:
                    break_point = i.After
                else:
                    if break_point != i.After:
                        complete_loop = False
            elif isinstance(i, IContinue):
                cont_brk.append(i)
                if i.Loop == n:
                    if complete_loop is None:
                        complete_loop = True
                else:
                    complete_loop = False

    if len(edges[n]) == 0:
        collect_break_continue(nodes[n]["insts"], n)
        if not complete_loop:
            return None
    else:
        return None

    nodes[n]["insts"] = [ILoop(nodes[n]["insts"])]
    nodes[n]["loop_use"].remove(n)
    if break_point is not None:
        edges[n].append({"next": break_point, "cond": None, "insts": []})
        backwards[break_point].append({"from": n, "edge": edges[n][-1]})
        edges[n][-1]["backward"] = backwards[break_point][-1]
        nodes[break_point]["loop_use"].remove(n)

    for i in cont_brk:
        if hasattr(i, "Loop"): del i.Loop
        if hasattr(i, "After"): del i.After

    return ("construct_loop", n)


def control_flow_conversion(blocks):

    nodes = {}
    edges = {}
    backwards = {}
    for blk in blocks:
        edges[blk] = []
        backwards[blk] = []
        nodes[blk] = []

    # calculate out edges
    for blk in blocks:
        node = blk
        insts = blocks[blk]
        nodes[node] = {"insts": insts if isinstance(insts[-1], IReturn) else insts[:-1], "scc": None, "loop_use": set()}

        term = insts[-1]
        if isinstance(term, IBranch):
            edges[node].append({"next": term.succ.name, "cond": None, "insts": []})
        elif isinstance(term, ICondBranch):
            edges[node].append({"next": term.true_succ.name, "cond": term.cond, "insts": []})
            edges[node].append({"next": term.false_succ.name, "cond": None, "insts": []})
        elif isinstance(term, ISwitch):
            edges[node].append({"next": term.default.name, "cond": None, "insts": []})
            term.default = edges[node][-1]
            for i in range(len(term.succ_list)):
                edges[node].append({"next": term.succ_list[i].name, 
                                    "cond": VExpr(TBool(), Op.Ceq, [term.cond, term.val_list[i]]),
                                    "insts": []})
        elif not isinstance(term, (IReturn, IUnreachable)):
            print("terminator not supported", type(term))
            return None

        for e in edges[node]:
            be = {"from": node, "edge": e}
            backwards[e["next"]].append(be)
            e["backward"] = be

    # eliminate phi nodes
    for blk in nodes:
        for inst in nodes[blk]["insts"]:
            if isinstance(inst, IPHI):
                typ = inst.typ
                assg = inst.assign
                for src, val in zip(inst.blocks, inst.values):
                    for e in edges[src.name]:
                        if e["next"] == blk:
                            e["insts"].append(IAssign(typ, assg, val))
        nodes[blk]["insts"] = list(filter(lambda i: not isinstance(i, IPHI) , nodes[blk]["insts"]))

    # main loop
    while len(nodes) > 1 or len(list(edges.values())[0]) > 0:
        '''
        def count(insts):
            cnt = 0
            for i in insts:
                cnt += 1
                if isinstance(i, IIf):
                    cnt += count(i.true_body) + count(i.false_body)
                elif isinstance(i, ILoop):
                    cnt += count(i.body)
            return cnt
        insts = 0
        for n in nodes:
            insts += count(nodes[n]["insts"])
            for e in edges[n]:
                insts += count(e["insts"])
        #print(insts)
        '''

        # calculate SCC
        seq = update_scc(nodes, edges, backwards)
        succ = False
        rules = [
            lambda n: rule_eliminate_leaf(n, nodes, edges, backwards),
            lambda n: rule_eliminate_bridge(n, nodes, edges, backwards),
            lambda n: rule_merge_branches(n, nodes, edges, backwards),
            lambda n: rule_destruct_scc(nodes[n]["scc"], nodes, edges, backwards),
            lambda n: rule_destruct_inner_scc(nodes[n]["scc"], nodes, edges, backwards),
            lambda n: rule_construct_loop(n, nodes, edges, backwards),
            lambda n: rule_duplicate_node(n, nodes, edges, backwards),
            lambda n: rule_duplicate_scc(nodes[n]["scc"], nodes, edges, backwards),
        ]

        for i, r in enumerate(rules):
            succ = False
            for n in seq:
                r_out = r(n)
                if r_out is not None:
                    #print(r_out)
                    succ = True
                    break
            if succ: break

        if not succ:
            print("Fail to convert")
            return []

    # print("Successful")
    return list(nodes.values())[0]["insts"]
