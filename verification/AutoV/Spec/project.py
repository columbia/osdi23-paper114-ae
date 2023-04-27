from AutoV.IRLoader.irtypes import *
from AutoV.IRLoader.values import *
from AutoV.IRLoader.instructions import *
from AutoV.IRLoader.llvm import *
from AutoV.IRLoader.post_process import post_process
from AutoV.Spec.values import *
from AutoV.Spec.nodes import *
from AutoV.Spec.ir2spec import ir_to_spec
from AutoV.Spec.asm2spec import asm_to_spec
from AutoV.Spec.transformer.transform import spec_transformer
from AutoV.Spec.transformer.rules import rec_apply, rule_eliminate_anno
import AutoV.Spec.transformer.transform as TR
from AutoV.Spec.parser.parse_light import parse
from AutoV.utils import *

import multiprocessing
import time


class Project:

    def __init__(self) -> None:
        self.name = ""
        self.base = ""
        self.code = None
        self.structs = {}
        self.indtypes = {}
        self.typedef = {}
        self.decls = {}
        self.defs = {}
        self.symbols = {}
        self.layers = []
        self.cmds = {"NoUnfold": set(), "NoTrans": set()}

        self.deps = {}

        self.add_struct(Ptr, None)
        self.add_indtype(Nat, None)
        self.add_indtype(Regsize, None)
        self.add_indtype(Gpreg, None)
        self.add_indtype(Sysreg, None)
        self.add_indtype(Iregsp, None)
        self.add_indtype(Regset, None)
        ptr_offset = Definition("ptr_offset", Ptr, [Arg("_ptr", Ptr), Arg("_offs", Int())],
                                Expr("mkPtr", [Expr("Record.get", [Symbol("_ptr", Ptr), Symbol("pbase")]),
                                               Expr("+", [Expr("Record.get", [Symbol("_ptr", Ptr), Symbol("poffset")]),
                                                          Symbol("_offs", Int())])]))
        self.add_definition(ptr_offset, None)
        bool_to_int = Definition("bool_to_int", Int(), [Arg("_b", Bool())],
                                 If(Symbol("_b", Bool()), IntConst(1), IntConst(0)))
        self.add_definition(bool_to_int, None)

    def is_ind_constr(self, name: str):
        if name in self.symbols and self.symbols[name]["kind"] == "ind_constr":
            return True
        if name in ["None", "Some", "nil", "cons"]:
            return True
        return False

    def get_indtype_by_constr(self, name: str):
        if name in self.symbols and self.symbols[name]["kind"] == "ind_constr":
            return self.indtypes[self.symbols[name]["info"]]
        return None

    def is_struct_elem(self, name: str):
        if name in self.symbols and self.symbols[name]["kind"] == "struct_elem":
            return True
        return False

    def get_struct_by_elem(self, name: str):
        if name in self.symbols and self.symbols[name]["kind"] == "struct_elem":
            return self.structs[self.symbols[name]["info"]]
        return None

    def is_struct_constr(self, name: str):
        if name.startswith("mk") and name[2:] in self.structs:
            return True
        if name in ["Tuple"]:
            return True
        return False

    def is_known_symbol(self, name: str):
        return name in self.symbols or self.is_ind_constr(name) or self.is_struct_constr(name)

    def get_struct_by_constr(self, name: str):
        if name.startswith("mk") and name[2:] in self.structs:
            return self.structs[name[2:]]
        return None

    def set_name(self, name: str):
        self.name = name

    def set_base(self, base: str):
        self.base = base

    def add_symbol(self, symbol: str, kind: str, info: str, loc: tuple[str]):
        self.symbols[symbol] = {"kind": kind, "info": info, "loc": loc, "order": len(self.symbols)}

    def add_struct(self, struct: Struct, loc=("DataTypes",)):
        name = struct.name
        self.structs[name] = struct
        for e in struct.elems:
            self.add_symbol(e.name, "struct_elem", name, loc)
        self.add_symbol(f"mk{name}", "struct_constr", name, loc)
        self.add_symbol(name, "struct", None, loc)

    def add_indtype(self, indtype: Inductive, loc=("DataTypes",)):
        name = indtype.name
        for cons in indtype.constrs:
            self.add_symbol(cons.name, "ind_constr", name, loc)
        self.indtypes[name] = indtype
        self.add_symbol(name, "indtype", None, loc)

    def add_typedef(self, name: str, typ: SpecType):
        self.typedef[name] = typ
        self.add_symbol(name, "typedef", None, ("DataTypes",))

    def add_declaration(self, decl: Declaration, loc: tuple[str]):
        self.decls[decl.name] = decl
        self.add_symbol(decl.name, "decl", None, loc)

    def add_definition(self, def_: Definition, loc: tuple[str]):
        self.defs[def_.name] = def_
        self.add_symbol(def_.name, "def", None, loc)
        def_.infer_type(self)
        self.deps[def_.name] = self.calc_dependencies(def_.body)

    def add_layer(self, layer: Layer):
        self.layers.append(layer)

    def add_command(self, cmd: list[str]):
        if cmd[0] == "NoUnfold":
            self.cmds["NoUnfold"].add(cmd[1])
        if cmd[0] == "NoTrans":
            self.cmds["NoTrans"].add(cmd[1])

    def finalize_project(self):
        # merge code modules
        loaded = set()

        module = {"structs": {}, "globvars": {}, "functions": {}, "debug_info": {}}

        for L in self.layers:
            if L.code is not None and L.code not in loaded:
                mod = L.load_module()
                loaded.add(L.code)
                # TODO: check different instances of the same name
                for s in mod.structs:
                    module["structs"][s] = mod.structs[s]
                for v in mod.globvars:
                    module["globvars"][v] = mod.globvars[v]
                for f in mod.functions:
                    if mod.functions[f].body is not None or f not in module["functions"]:
                        module["functions"][f] = mod.functions[f]
                for d in mod.debug_info:
                    if d not in module["debug_info"]:
                        module["debug_info"][d] = mod.debug_info[d]
                    else:
                        module["debug_info"][d] = module["debug_info"][d].update(mod.debug_info[d])
                
        self.code = post_process(IRModule(**module))

        # calculate passthroughs
        deps = set()
        for L in list(reversed(self.layers))[:-1]:
            for p in L.prims:
                if p in deps: deps.remove(p)
            L.passthrough = list(deps)
            for p in L.prims:
                if p in self.code.functions:
                    for d in get_prim_dependency(self.code.functions[p].body):
                        deps.add(d)
        self.layers[0].prims = list(deps)

        if False:
            for i, L in enumerate(self.layers[1:]):
                for p in L.prims:
                    _, _, specs = infer_spec_task(self, i + 1, p)
                    for s in specs:
                        s = parse(self, s)
                        if s.name.endswith("_low"):
                            self.deps[s.name] = self.calc_dependencies(s.body)
                            self.add_definition(s, (L.name, p, "LowSpec"))
                        elif s.name.endswith("_mid"):
                            self.deps[s.name] = self.calc_dependencies(s.body)
                            self.add_definition(s, (L.name, p, "RefProof"))
                        else:
                            if s.name not in self.deps:
                                self.add_definition(s, (L.name, "Spec"))
        else:
            print("Number of CPU cores: ", multiprocessing.cpu_count())
            pool = multiprocessing.Pool(processes=multiprocessing.cpu_count() // 2)

            prims = []
            for i, L in enumerate(self.layers[1:]):
                for p in L.prims:
                    deps = set()
                    if p in self.code.functions:
                        for d in get_prim_dependency(self.code.functions[p].body):
                            deps.add(d)
                    prims.append((i + 1, p, list(deps)))

                    if p in self.code.functions:
                        ir_to_spec(self, p, L, "_low")

            tasks = []
            while len(prims) or len(tasks):
                import gc; gc.collect()

                not_ready = []
                for i, p, deps in prims:
                    ready = True
                    for d in deps:
                        if f"{d}_spec" not in self.defs and f"{d}_spec" not in self.decls:
                            ready = False
                    if ready:
                        tasks.append(pool.apply_async(infer_spec_task, (self, i, p)))
                        print("start infering spec for", p)
                    else:
                        not_ready.append((i, p, deps))
                prims = not_ready

                not_ready = []
                for t in tasks:
                    if t.ready():
                        i, p, specs = t.get()
                        L = self.layers[i]
                        print("finish infering spec for", p)
                        for s in specs:
                            s = parse(self, s)
                            if s.name.endswith("_low"):
                                self.deps[s.name] = self.calc_dependencies(s.body)
                                self.add_definition(s, (L.name, p, "LowSpec"))
                            elif s.name.endswith("_mid"):
                                self.deps[s.name] = self.calc_dependencies(s.body)
                                self.add_definition(s, (L.name, p, "RefProof"))
                            else:
                                if s.name not in self.deps:
                                    self.add_definition(s, (L.name, "Spec"))
                    else:
                        not_ready.append(t)
                tasks = not_ready

    def calc_dependencies(self, expr: SpecNode):
        deps = set()
        if isinstance(expr, If):
            deps |= self.calc_dependencies(expr.cond)
            deps |= self.calc_dependencies(expr.then_body)
            deps |= self.calc_dependencies(expr.else_body)
        elif isinstance(expr, Match):
            deps |= self.calc_dependencies(expr.src)
            for case in expr.match_list:
                deps |= self.calc_dependencies(case.body)
        elif isinstance(expr, (Rely, Anno)):
            deps |= self.calc_dependencies(expr.prop)
            deps |= self.calc_dependencies(expr.body)
        elif isinstance(expr, (Forall, Exists)):
            deps |= self.calc_dependencies(expr.body)
        elif isinstance(expr, Expr):
            for e in expr.elems:
                deps |= self.calc_dependencies(e)
            deps |= self.calc_dependencies(expr.op)
        elif isinstance(expr, Symbol):
            deps |= self.calc_dependencies(expr.text)
        elif isinstance(expr, str) and expr in self.symbols:
            info = self.symbols[expr]
            if info["kind"] in ("def", "decl"):
                deps.add(expr)

        return deps

def infer_spec_task(proj: Project, layer_id: str, fname: str) -> tuple[str, list[Definition], list[Definition]]:
    import gc; gc.collect()

    L = proj.layers[layer_id]
    # infer low-level spec
    low_specs = []
    if fname in proj.code.functions:
        low_specs = ir_to_spec(proj, fname, L, "_low")
    elif fname in proj.code.asm_procs:
        low_specs = asm_to_spec(proj, fname, L, "_low")
    else:
        raise Exception(f"Unknown primitive implementation {fname}")
    for s in low_specs:
        proj.deps[s.name] = proj.calc_dependencies(s.body)
        if s.name.endswith("_low"):
            proj.add_definition(s, (L.name, fname, "LowSpec"))
        elif s.name.endswith("_mid"):
            proj.add_definition(s, (L.name, fname, "RefProof"))
        else:
            if s.name not in proj.defs:
                proj.add_definition(s, (L.name, "Spec"))

    mid_specs = []
    high_specs = []

    if f"{fname}_spec" not in proj.defs:
        # infer mid-level specs (with anno)
        TR.ANNOTATE = True
        name_map = {}
        for s in low_specs:
            if s.name.endswith("_low"):
                name_map[s.name] = s.name[:-len("_low")] + "_mid"
            else:
                name_map[s.name] = s.name
        for s in low_specs:
            if isinstance(s, Fixpoint):
                mids = Fixpoint(name_map[s.name], s.rettype, s.args, replace_spec_name(s.body, name_map).deepcopy())
            else:
                mids = Definition(name_map[s.name], s.rettype, s.args, replace_spec_name(s.body, name_map).deepcopy())
            if mids.name not in proj.defs:
                proj.defs[mids.name] = mids
            proj.add_symbol(mids.name, "def", None, None)
            mids.infer_type(proj)
            mid_specs.append(mids)
        mid_specs = spec_transformer(proj, mid_specs)
        for s in mid_specs:
            proj.deps[s.name] = proj.calc_dependencies(s.body)
            if s.name.endswith("_low"):
                proj.add_definition(s, (L.name, fname, "LowSpec"))
            elif s.name.endswith("_mid"):
                proj.add_definition(s, (L.name, fname, "RefProof"))
            else:
                if s.name not in proj.defs:
                    proj.add_definition(s, (L.name, "Spec"))

        # infer high-level specs (without anno)
        TR.ANNOTATE = False
        name_map = {}
        for s in mid_specs:
            if s.name.endswith("_mid"):
                name_map[s.name] = s.name[:-len("_mid")]
            else:
                name_map[s.name] = s.name
        for s in mid_specs:
            if name_map[s.name] not in proj.defs:
                if isinstance(s, Fixpoint):
                    highs = Fixpoint(name_map[s.name], s.rettype, s.args, rule_eliminate_anno(proj, replace_spec_name(s.body, name_map).deepcopy()))
                else:
                    highs = Definition(name_map[s.name], s.rettype, s.args, rule_eliminate_anno(proj, replace_spec_name(s.body, name_map).deepcopy()))
                proj.defs[highs.name] = highs
                proj.add_symbol(highs.name, "def", None, None)
                highs.infer_type(proj)
                high_specs.append(highs)
                proj.deps[s.name] = proj.calc_dependencies(s.body)
                proj.add_definition(s, (L.name, "Spec"))

    return (layer_id, fname, [str(s) for s in low_specs + mid_specs + high_specs])

def replace_spec_name(spec, name_map):
    def f(spec):
        if isinstance(spec, Expr) and isinstance(spec.op, str) and spec.op in name_map:
            return Expr(name_map[spec.op], spec.elems, spec.get_type())
        return spec

    return rec_apply(spec, f)
