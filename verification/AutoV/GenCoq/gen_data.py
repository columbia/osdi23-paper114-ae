import os

from AutoV.Spec.values import *
from AutoV.Spec.nodes import *

def generate_data(proj):
    f = "DataTypes.v"
    out = open(os.path.join(proj.base, f), "w")

    out.write("Require Import CommonDeps.\n\n")
    out.write("Local Open Scope Z_scope.\n\n")

    outputs = [s for s in proj.symbols if s not in ['Ptr'] and proj.symbols[s]["loc"] == ("DataTypes",)]
    outputs.sort(key=lambda x: proj.symbols[x]["order"])

    for s in outputs:
        if s in proj.structs:
            out.write(proj.structs[s].define())
            out.write("\n\n")
        elif s in proj.indtypes:
            out.write(proj.indtypes[s].define())
            out.write("\n\n")
        elif s in proj.typedef:
            out.write(f"Definition {s}: Type :=" +  str(proj.typedef[s]) + ".")
            out.write("\n\n")

    # generate update notations
    for s in outputs:
        if s in proj.structs:
            fields = [e.name for e in proj.structs[s].elems]
            for name in fields:
                update = f"Definition update_{s}_{name} (_a: {s}) _b :=\n  mk{s}"
                for i in range(len(fields)):
                    if fields[i] == name:
                        update += " _b"
                    else:
                        update += f" (_a.({fields[i]}))"
                    if i < len(fields) - 1 and (i + 1) % 8 == 0:
                        update += "\n         "
                update += ".\n"
                update += "Notation \"_a '.[%s]' ':<' _b\" := (update_%s_%s _a _b) (at level 1).\n\n" % (name, s, name)
                out.write(update)

    def rec_update(init, fields, cur):
        nonlocal out, proj

        if len(fields) >= 2:
            update =  f"Definition update_{init.name}_{'_'.join(fields)} (_a: {init.name}) _b :=\n"
            elem = "_a" + "".join([f".({f})" for f in fields[:-1]])
            update += f"  update_{init.name}_{'_'.join(fields[:-1])} _a (({elem}).[{fields[-1]}] :< _b).\n"
            notation = "\"_a '" + "".join([f".[{f}]" for f in fields]) + "' ':<' _b\""
            update += f"Notation {notation} := (update_{init.name}_{'_'.join(fields)} _a _b) (at level 1).\n\n"
            out.write(update)

        if isinstance(cur, Struct):
            for e in cur.elems:
                rec_update(init, fields + [e.name], e.type)

    for s in outputs:
        if s in proj.structs:
            rec_update(proj.structs[s], [], proj.structs[s])

    out.close()
    return [f]
