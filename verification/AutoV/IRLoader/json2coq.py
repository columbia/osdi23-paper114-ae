import json
import sys

from AutoV.IRLoader.irloader import *
from AutoV.IRLoader.coq import *
from AutoV.GenCoq.gen_code import print_module

if __name__ == "__main__":
    input_file = sys.argv[1]
    assert(input_file.endswith(".json"))
    print(input_file)

    output_file = sys.argv[2] if len(sys.argv) >= 3 else (input_file[:-5] + ".v")

    ir, _ = parse_module(json.load(open(input_file)))

    print_module(ir, output_file)
