from AutoV.IRLoader.llvm import *
from AutoV.IRLoader.instructions import *
from AutoV.IRLoader.values import *
from AutoV.IRLoader.irtypes import *

def find_layer_by_prim(proj, p):
    for L in proj.layers:
        if p in L.prims:
            return L
    return None


def get_prim_dependency(insts):
    deps = set()
    for i in insts:
        if isinstance(i, IIf):
            deps |= get_prim_dependency(i.true_body)
            deps |= get_prim_dependency(i.false_body)
        elif isinstance(i, ILoop):
            deps |= get_prim_dependency(i.body)
        elif isinstance(i, ICall):
            if isinstance(i.func, VGlobal):
                deps.add(i.func.name)
    return deps