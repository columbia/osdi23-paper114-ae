import os

for base, dirs, files in os.walk("."):
    for f in files:
        if f.endswith(".v") or f.endswith(".json"):
            path = os.path.join(base, f)
            os.system("rm " + path)
