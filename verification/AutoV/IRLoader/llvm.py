from copy import copy
from collections import defaultdict

from AutoV.IRLoader.irtypes import *
from AutoV.IRLoader.values import *
from AutoV.IRLoader.instructions import *
from AutoV.IRLoader.coq import to_coq_list
from AutoV.IRLoader.debug_prims import debug_prims


DEBUG = False

class FuncArg:
    def __init__(self, name, typ):
        self.name = to_coq_name(name)
        self.typ = typ
    def to_coq(self):
        return f"(\"{self.name}\", {self.typ.to_coq()})"

class GlobalVar:
    def __init__(self, vname, vtype, vconst, vinitializer, valign):
        self.vname = vname
        self.vtype = vtype
        self.vconst = vconst
        self.vinitializer = vinitializer
        self.valign = valign
    def to_coq(self):
        vconst =  'true' if self.vconst else 'false'
        vinitializer = f"(Some {self.vinitializer.to_coq()})" if self.vinitializer else "None"
        return "{| vname := \"" + self.vname + "\";\n" +\
               "   vtype := " + self.vtype.to_coq() + ";\n" +\
               "   vconst := " + vconst + ";\n" +\
               "   vinitializer := " + vinitializer + ";\n" +\
               "   valign := " + str(self.valign) + " |}"

class IRFunction:
    def __init__(self, fname, rettype, args, is_decl, entry=None, blocks=None):
        self.fname = fname
        self.rettype = rettype
        self.args = args
        self.is_decl = is_decl
        self.entry = entry
        self.blocks = blocks

class CFunction:
    def __init__(self, fname, rettype, args, is_decl, body=None):
        self.fname = fname
        self.rettype = rettype
        self.args = args
        self.is_decl = is_decl
        self.body = self.filter_icall(body, debug_prims)
        self.alloca_vars = set()
        self.collect_alloca_vars(body)

    def collect_alloca_vars(self, insts):
        for i in insts or []:
            if isinstance(i, IAlloc):
                self.alloca_vars.add(i.assign)
            if isinstance(i, IIf):
                self.collect_alloca_vars(i.true_body)
                self.collect_alloca_vars(i.false_body)
            if isinstance(i, ILoop):
                self.collect_alloca_vars(i.body)

    def filter_icall(self, insts, icall_filter):
        if insts is None: return None

        after_filter = []
        for i in insts:
            if isinstance(i, ICall):
                if (not isinstance(i.func, VGlobal) or\
                    not any(map(lambda f: f(i.func.name), icall_filter))):
                    after_filter.append(i)
            elif isinstance(i, IIf):
                after_filter.append(IIf(i.cond, 
                                        self.filter_icall(i.true_body, icall_filter), 
                                        self.filter_icall(i.false_body, icall_filter)))
            elif isinstance(i, ILoop):
                after_filter.append(ILoop(self.filter_icall(i.body, icall_filter)))
            else:
                after_filter.append(i)
        return after_filter

    def to_coq(self):
        if self.body:
            body = "\n" + add_indent("(Some \n" + add_indent(to_coq_code_block(self.body), 4) + ")", 4)
        else:
            body = "None"
        return "{| fname := \"" + self.fname + "\";\n" +\
               "   rettype := " + self.rettype.to_coq() + ";\n" +\
               "   fargs :=\n" +\
                   add_indent(to_coq_code_block(self.args), 4) + ";\n" +\
               "   falloca_vars := " + to_list([f"\"{s}\"" for s in list(self.alloca_vars)]) + ";\n" +\
               "   fbody := " + body + " |}"

class AsmProcedure:
    def __init__(self, name, origin, objdump, body):
        self.name = name
        self.origin = origin
        self.objdump = objdump
        self.body = body

    def to_coq(self):
        return self.body

class IRModule:
    def __init__(self, structs, globvars, functions, debug_info, asm_procs={}):
        self.structs = structs
        self.globvars = globvars
        self.functions = functions
        self.asm_procs = asm_procs
        self.debug_info = debug_info
