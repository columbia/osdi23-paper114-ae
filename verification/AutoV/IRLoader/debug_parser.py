import json
import sys

def parse_variable_mapping(ll_path, json_path) -> dict[str, dict[str,str]]:
    def lookup(name):
        with open(ll_path, 'r') as fp:
            lines = fp.readlines()
            for line in lines:
                words = line.split(" = ")
                temp = words[0]
                if temp == name:
                    rest = words[1]
                    args = rest[17:-1]
                    args = args.split(", ")
                    real_name = args[0][7:-1]
                    return real_name                    

    mapping = dict()
    jsonobj = json.load(open(json_path))
    functions = jsonobj["functions"]

    for func_name in functions.keys():
        function = functions[func_name]
        if "blocks" in function.keys():
            blocks = function["blocks"]
            for block_name in blocks.keys():
                block = blocks[block_name]
                for inst in block:
                    if "arguments" in inst.keys() and "value" in inst["arguments"][-1] and "value" in inst["arguments"][-1]["value"]:
                        if inst["arguments"][-1]["value"]["value"] == "@llvm.dbg.value":
                            if func_name not in mapping.keys():
                                mapping[func_name] = {}
                            variable = inst["arguments"][0]["value"]
                            variable = variable.split(" ")[1]
                            mapping[func_name][variable] = lookup(inst["arguments"][1]["value"])
        
    return mapping
                
if __name__ == "__main__":
    mapping = parse_variable_mapping("/Users/qiangwei/Documents/CS/VeriFrame/Applications/sekvm/code/SeKVM.ll","/Users/qiangwei/Documents/CS/VeriFrame/Applications/sekvm/code/SeKVM.json")
    print(mapping["v_panic"]["%0"])




