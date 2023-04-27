def to_coq_list(lst):
    out = " :: ".join([a.to_coq() for a in lst] + ["nil"])
    if lst:
        out = "(" + out + ")"
    return out

def to_coq_value_list(lst):
    out = "; ".join([a.to_coq() for a in lst])
    if not lst: out = " "
    out = "[" + out + "]"
    return out

def to_coq_typ_list(lst):
    out = "; ".join([a.to_coq() for a in lst])
    if not lst: out = " "
    out = "[[" + out + "]]"
    return out

def to_coq_code_block(lst):
    out = "\n :: ".join([a.to_coq() for a in lst] + ["nil"])
    if lst:
        out = "(" + out + ")"
    return out

def to_list(lst):
    out = " :: ".join([str(a) for a in lst] + ["nil"])
    if lst:
        out = "(" + out + ")"
    return out

def to_code_block(lst):
    out = "\n :: ".join([str(a) for a in lst] + ["nil"])
    if lst:
        out = "(" + out + ")"
    return out

def to_coq_name(name: str):
    name = name.replace("@", "_")
    name = name.replace("%", "v_")
    name = name.replace(".", "_")
    name = name.replace("-", "_")
    name = name.replace(":", "_")
    return name

def add_indent(text, indent):
    text = text.split("\n")
    text = list(map(lambda s: (" " * indent) + s, text))
    return "\n".join(text)