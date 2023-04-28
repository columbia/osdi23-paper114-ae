# AutoV: Scaling Machine-Checkable Verification for Large System Software

This artifact consists of two parts. The first part demonstrates how to leverage AutoV framework to generate
specifications and proofs for SeKVM. The second part evaluates the performance of our modified SeKVM.

## Part 1. Verifying SeKVM with AutoV

### Step 1. Environment Setup

This part is tested on Ubuntu 22.04 x86_64, with 8 CPU cores and 32GB memory.  We first set up the developement environment.

1. First, install dependencies via `apt`, `pip`, and `opam`:

        sudo apt install python3 python3-pip opam gcc-aarch64-linux-gnu flex bison libssl-dev

        pip install z3-solver antlr4-python3-runtime===4.12.0

        opam init --compiler=4.13.1
        opam install ocamlbuild coq.8.16.1

You may need to add `~/.opam/4.13.1/bin/` to `PATH`. Try `coqc -v` to see if Coq is installed properly.

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

4. Compile the Aarch64 Assembly parser. Make sure the executable file `asmgen.native` is in `verification/AsmGen/` after compilation.

        cd AsmGen
        ocamlbuild asmgen.native
        cd ..

5. Compile the AutoV Coq libraries located in `verification/LayerSem/`

        cd LayerSem
        make -j6
        cd ..

6. set the environment variables. Substitute the `/path/to/osdi23-paper114-ae/verification` to the real absolute path.

        export AUTOV_HOME="/path/to/osdi23-paper114-ae/verification"
        export PYTHONPATH=$AUTOV_HOME:$PYTHONPATH
        export COQPATH=$AUTOV_HOME/LayerSem:$COQPATH

### Step 2. Generate a Coq project for SeKVM verification

Now, we are ready to generate the Coq verification project for SeKVM using AutoV framework. Assuming you are at `osdi23-paper114-ae/verification`, simply run the following command to generate the Coq project:

    python3 AutoV/main.py build SeKVMProof/proof.v

This command loads the configuration file `SeKVMProof/proof.v` and generates a Coq project. In `SeKVMProof/proof.v`,
we first define `PROJ_NAME` and `PROJ_BASE`. `PROJ_BASE` is the root path of the Coq project to be generated. It is
set to `./coq_proof_gen` so you will find the generated Coq project in `verification/SeKVMProof/coq_proof_gen`.
Then, the configuration file imports content from other files `datatypes.v`, `constant.v`, and `load_store.v`. They
all located in `SeKVMProof/` folder. After that, we define a list of "Section"s. Each section corresponds to a layer.
Noticeably, in each section, `LAYER_CODE` specifies the path to the SeKVM source code (parsed LLVM IR, see (Optionally)
below for more details).  and `LAYER_PRIMS` defines the functions (primitives) introduced in that layer. 
We allow users to manually define specifications for primitives. For primitives without specifications, AutoV will 
generate specifications given the known ones in the configuration file. You can find that we provide specifications 
for the `Bottom` layer and we mostly rely on AutoV to generate specifications for all other layers.

This step will run roughly 2 hours with 4 processes and 32 GB memory. AutoV currently creates `TOTAL_CORE_NUM / 2` processes to run.

(Optionally) You can generate the `SeKVM.json` file from the C source code. To do this, first set up cross-compiler as below:

    export ARCH=arm64
    export CROSS_COMPILE=aarch64-linux-gnu-

Then, go to `osdi23-paper114-ae/sekvm` and run the following to compile SeKVM.

    make bcm2711_sekvm_defconfig
    make -j6 Image

If the compilation works fine, run the commands below to concat all SeKVM code together and compile them into LLVM IR:

    cat arch/arm64/hypsec_proved/*.c  arch/arm64/kvm/hyp/switch-simple.c arch/arm64/kvm/pvops.c > SeKVM.c

    ../verification/IR2Json/llvm/bin/clang -S -emit-llvm -fno-discard-value-names -fno-inline-functions -fno-inline  --target=aarch64-linux-gnu -nostdinc -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/11/include  -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -Iubuntu/include  -include ./include/linux/compiler_types.h -I./arch/arm64/hypsec_proved -I./arch/arm64/kvm/hyp -D__KERNEL__ -DKASAN_SHADOW_SCALE_SHIFT=3 -std=gnu89 -DCONFIG_AS_LSE=1 -DCONFIG_CC_HAS_K_CONSTRAINT=1 -O1 SeKVM.c -g

After this, you will get `SeKVM.c` and `SeKVM.ll` in `osdi23-paper114-ae/sekvm`.

Then, using the `ir2json` tool from Step 1.3 to convert `SeKVM.ll` to `SeKVM.json`:

    ../verification/IR2Json/ir2json SeKVM.ll > SeKVM.json
    
You may compare and check that the generated `SeKVM.json` is identical with the one in `verification/SeKVMProof/`.

### Step 3. Check the SeKVM Proof

Once finishing Step 2, you may find the generated Coq project at `verification/SeKVMProof/coq_proof_gen/`.
The project is organized as:

    /Code.v  
          -- the generated Coq representation of SeKVM source code
    /Datatypes.v  
          -- the data structure definitions (derived from `SeKVMProof/datatypes.v`)
    /GlobalDefs.v  
          -- constant definitions and common helper functions defined for all layers 
             (mainly derived from `SeKVMProof/constant.v`)
    /LAYER_NAME/Layer.v
          -- layer definition (auto-generated)
    /LAYER_NAME/Spec.v
          -- high-level specifications of the functions in the layer 
             (human-provided or auto-generated)
    /LAYER_NAME/RefineRel.v
          -- refinement relation between this layer and the layer below 
            (generated, can be modified manually)
    /LAYER_NAME/FUNCTION_NAME/LowSpec.v
          -- low-level specification for the function (auto-generated)
    /LAYER_NAME/FUNCTION_NAME/CodeProof.v
          -- identical refinement proof between the source code and the low-level specification 
             (auto-generated proof with minor manual fix)
    /LAYER_NAME/FUNCTION_NAME/RefProof.v
          -- lifting refinement proof between low-level specification and high-level specification 
             (auto-generated proof and manual proof)

This artifact also includes a completed coq proof for SeKVM, modified from the generated one, at `verification/SeKVMProof/coq_proof/`.
You can enter this folder and validate the proof by compilation:
    
    cd verification/SeKVMProof/coq_proof
    make -j6

## Part 2. Performance Evaluation of SeKVM

