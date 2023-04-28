from AutoV.IRLoader.irloader import parse_module
from AutoV.GenCoq.gen_code import print_module
from tqdm import tqdm
import json
import os

ir2json = os.path.join(os.environ['AUTOV_HOME'], "IR2Json", "ir2json")
        
count = {
    'linux': {'succeeded': 0, 'failed': 0},
    'mbedtls': {'succeeded': 0, 'failed': 0},
    'memcached': {'succeeded': 0, 'failed': 0},
    'openssl': {'succeeded': 0, 'failed': 0},
    'redis': {'succeeded': 0, 'failed': 0},
}

for proj in count:
    print("Testing", proj)
    all_files = []
    for base, dirs, files in os.walk(proj):
        for f in files:
            if not f.endswith(".ll"): continue
            path = os.path.join(base, f)
            all_files.append(path)

    for path in tqdm(all_files):
        json_path = path[:-3] + ".json"
        coq_path = path[:-3] + ".v"

        os.system(f"{ir2json} {path} > {json_path}")
        if not os.path.exists(json_path):
            raise Exception(f"ir2json failed on {path}")
        module = json.load(open(json_path))
        parsed_module = parse_module(module, False)

        for fname in module["functions"]:
            origin = module["functions"][fname]
            converted = parsed_module.functions[fname]
            if origin["is_declaration"] or converted.body is not None:
                count[proj]['succeeded'] += 1
            else:
                count[proj]['failed'] += 1

        print_module(parsed_module, coq_path)

    print(proj, "Succeeded: ", count[proj]['succeeded'])
    print(proj, "Failed: ", count[proj]['failed'])

