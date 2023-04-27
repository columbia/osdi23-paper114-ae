from AutoV.GenCoq.gen_project import generate_project
from AutoV.Spec.parser.parse import parse
from AutoV.Spec.project import Project

import sys
sys.setrecursionlimit(1000000)

def main():
    if sys.argv[1] == "build":
        proof_path = sys.argv[2]
        proj = Project()
        parse(proj, proof_path)
        proj.finalize_project()
        generate_project(proj)
    else:
        pass

if __name__ == "__main__": 
    main()
