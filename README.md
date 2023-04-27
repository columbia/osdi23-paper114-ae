# AutoV: Scaling Machine-Checkable Verification for Large System Software

This artifact consists of two parts. The first part demonstrates how to leverage AutoV framework to generate
specifications and proofs for SeKVM. The second part evaluates the performance of our modified SeKVM.

## Part 1. Verifying SeKVM with AutoV

### Step 1. Environment Setup

This part is tested on Ubuntu 22.04 x86_64, with 8 CPU cores and 32GB memory.  We first set up the developement environment.

1. First, install dependencies via `apt`, `pip`, and `opam`:

        sudo apt install python3 python3-pip opam

        pip install 

        opam init --compiler=4.13.1
        opam install ocamlbuild coq.8.16.1

2. Clone the repo and enter `verification/` folder:

        git clone git@github.com:columbia/osdi23-paper114-ae.git --recursive
        cd osdi23-paper114-ae/verification

3. Compile the LLVM IR parser. Download clang+llvm 14.0.0 pre-built from [https://github.com/llvm/llvm-project/releases/tag/llvmorg-14.0.0](https://github.com/llvm/llvm-project/releases/tag/llvmorg-14.0.0). Decompress clang and llvm to `verification/IR2Json/llvm`. Then, compile `ir2json`. After compilation, `ir2json` executable should be found in `verification/IR2Json/`.

        cd IR2Json
        wget https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.0/clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz
        mkdir llvm
        tar xvf clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz --strip 1 -C llvm
        rm clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz
        make -j6
        cd ..

3. Compile the Aarch64 Assembly parser. Make sure the executable file `asmgen.native` is in `verification/AsmGen/` after compilation.

        cd AsmGen
        ocamlbuild asmgen.native
        cd ..

### Step 2. Environment Setup


## Part 2. Performance Evaluation of SeKVM

