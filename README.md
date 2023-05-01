# AutoV: Scaling Machine-Checkable Verification for Large System Software

This artifact consists of three parts. 
The first part demonstrates how to leverage AutoV framework to generate specifications and proofs for SeKVM. 
The second part demonstrates the ability of AutoV to translate LLVM IR files to Coq.
The third part evaluates the performance of our modified SeKVM.

## Part 1. Verifying SeKVM with AutoV

### Step 1. Environment Setup

This part is tested on Ubuntu 22.04 x86_64, with 8 CPU cores and 32GB memory.  We first set up the developement environment.

1. First, install dependencies via `apt`, `pip`, and `opam`:

        sudo apt install python3 python3-pip opam gcc-aarch64-linux-gnu flex bison libssl-dev

        pip install z3-solver antlr4-python3-runtime===4.12.0 tqdm

        opam init --compiler=4.13.1
        opam install ocamlbuild coq.8.16.1

You may need to add `~/.opam/4.13.1/bin/` to `PATH` manually. Try `coqc -v` to see if Coq is installed properly.

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
        export COQPATH=$AUTOV_HOME:$COQPATH

### Step 2. Generate a Coq project for SeKVM verification

Now, we are ready to generate the Coq verification project for SeKVM using AutoV framework. Assuming you are at `osdi23-paper114-ae/verification`, simply run the following command to generate the Coq project:

    python3 AutoV/main.py build SeKVMProof/proof.v

This command loads the configuration file `SeKVMProof/proof.v` and generates a Coq project. In `SeKVMProof/proof.v`,
we first define `PROJ_NAME` and `PROJ_BASE`. `PROJ_BASE` is the root path of the Coq project to be generated. It is
set to `./ProofGen` so you will find the generated Coq project in `verification/SeKVMProof/ProofGen`.
Then, the configuration file imports content from other files `datatypes.v`, `constant.v`, and `load_store.v`. They
all located in `SeKVMProof/` folder. After that, we define a list of "Section"s. Each section corresponds to a layer.
Noticeably, in each section, `LAYER_CODE` specifies the path to the SeKVM source code (parsed LLVM IR, see (Optionally)
below for more details).  and `LAYER_PRIMS` defines the functions (primitives) introduced in that layer. 
We allow users to manually define specifications for primitives. For primitives without specifications, AutoV will 
generate specifications given the known ones in the configuration file. You can find that we provide specifications 
for the `Bottom` layer and we mostly rely on AutoV to generate specifications for all other layers.

This step will run roughly 2 hours with 4 processes and 32 GB memory. AutoV currently creates `TOTAL_CORE_NUM / 2` processes to run.

(Optional) You can generate the `SeKVM.json` file from the C source code. To do this, first set up cross-compiler as below:

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

Once finishing Step 2, you may find the generated Coq project at `verification/SeKVMProof/ProofGen/`.
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

This artifact also includes a completed coq proof for SeKVM, modified from the generated one, at `verification/SeKVMProof/Proof/`.
You can enter this folder and validate the proof by compilation:
    
    cd verification/SeKVMProof/Proof
    make -j6

## Part 2. Converting LLVM IR to Coq

Before following the instructions below, please make sure the developement environment is set up (See Part 1. Step 1.)

We need two steps to convert a LLVM IR file to Coq. First, we run `ir2json` to parse a LLVM IR file to json. 
Then, we use `AutoV.IRLoader.irloader.parse_module` to load the json file and convert LLVM IR to Coq representations.

To evaluate this functionality, we pre-compiled five open-source projects and obtained the LLVM IR files.
Those are `linux`, `mbedtls`, `memcached`, `openssl`, and `redis`.
The LLVM IR files are in `verification/TestIR2Coq/`. We also provide a script to test the conversion for all IR files.
To run the test:

    cd verification/TestIR2Coq
    python3 test_conversion.py

The script traveres all LLVM IR files and executes the two steps for each one. It counts the succeeded and failed functions as below:

1. If a function only has declaration but no definition, `succeeded += 1`.
2. If a function is converted without error (the function body is not None), `succeeded += 1`.
3. If the function conversion failed (due to unknown instructions/failed control flow graph conversion/other exceptions), `failed += 1`.

After the test, for each LLVM IR file `**/*.ll`, a converted `**/*.v` will be created.

## Part 3. Performance Evaluation of SeKVM
As described in Section 6 in paper 114, we verified an updated version of an
open-source KVM hypervisor, [SeKVM](https://github.com/verigu/vrm), using AutoV.
The updated version now runs on Raspberry Pi 4B.  We provide the same testbed
as described in the paper for reviewers to evaluate the performance.  We also
provide instructions to build and install SeKVM from scratch in case reviewers
want to test on their own Raspberry Pi.

### Prelude

The testbed can be accessed through SSH. Please send your public key via HotCRP.
Once we pulled your key, you can login with

```
ssh osdiae@osdi.spoq.dev
```

The Raspberry Pi is connected to the machine by a serial port and a private
network.  The machine is also served as the client for the client-server
benchmarks.

**Note: Due to hardware resource limitations, only one reviewer can run the
performance evaluation at a time.  We are sorry for this inconvenience and
appreciate your understanding.**

To simplify the evaluation, there is also a alternative Raspberry Pi running
the vanilla Linux for the baseline benchmarks. The two Pi's are connected to
the client via a private network and can be accessed with the following IP
addresses:

| Host Name | Description          | IP             |
| --------- | -------------------- | -------------- |
| sekvm     | SeKVM - host         | 192.168.50.134 |
| kvm       | Vanilla KVM - host   | 192.168.50.246 |
| vmsekvm   | SeKVM - VM           | 192.168.50.24  |
| vmkvm     | Vanilla KVM - VM     | 192.168.50.26  |

We recommend using a terminal mutiplexer to access the Pi while running other
workloads on the client.

Below is a simple instruction for GNU Screen.  You may refer to the manual page
for more information.
If you are familiar with GNU Screen or prefer to use your favorite terminal
multiplexer, you can go ahead to the [next section](#run-the-workloads-on-the-VM).

You can create a screen session by

```
screen
```

and then SSH to the Pi by

```
ssh root@sekvm
```

or

```
ssh root@kvm
```

Then you can use `Ctrl-a` `c` to create a new window to continue working on the
shell of the client.

To switch between different windows in a session, you can use `Ctrl-a` `SPACE` to
switch directly or use `Ctrl-a` `"` to show a list of windows and choose the one
you want to switch to.

To kill a window, you may `Ctrl-d` if the window opens a shell or `Ctrl-a` `k` if
the window opens a serial port.
You can also use `Ctrl-a` `\` to kill all windows and terminate the current
screen session.

If you disconnected from your ssh session, you can use:

```
screen -rd
```

to resume your previous screen session.

### Run the Workloads on the VM

We provide the pre-compiled Linux kernel images of the vanilla Raspberry Pi,
SeKVM, the guest VM, as well as QEMU to run the VM.  VMs running under
SeKVM require a guest Linux kernel with modified virtio driver, and a modified
QEMU to support secure boot.  The source code is also provided in this repo.
You can compile those binaries following the instructions at [Build the SeKVM Software Stack](#build-the-sekvm-software-stack).


#### Configure and Run the VM

On the Pi host, you need to configure the bridge netwrok if it has not been
created yet:

```
./net
```

- If you are on SeKVM, run:

```
./run-guest-sekvm.sh
```

- If you are on vanilla KVM, run:

```
./run-guest-kvm.sh
```

The VM will boot shortly and drop to the virtual serial console.

You can check the ip address of the VM by

```
ip addr
```

**Note: If only `lo0` shows up, it is most likely you forgot to run `./net.sh`.
Shutdown the VM(`shutdown -p`), run `./net.sh` and run the VM again.**

#### Run the Workloads

You can then start the server application by

```
systemctl start [app]
```

where `app` can be `apache`, `memcached` or `mysql`.

Then you can switch to the client window(`Ctrl-a "`) and run the workload by

```
cd scripts
./[app].sh IP
```

After the benchmark is done, the results are saved in `[app].txt`.

For local application, kernbench, you only can to run

```
./kern.sh IP
```

### Run the Workloads on the Vanilla Linux

To evaluate the baseline performance on the vanilla Linux, the Pi needs to capped
to the same hardware capcity of the VM. On the vanilla KVM host(`ssh root@kvm`),
Run

```
./reboot-baseline.sh
```

The script changes the boot option of the Pi, caps the Pi to two CPUs and 4G
RAM, and reboot the Pi.

When the Pi boots up, following the same instruction on [here](#build-the-sekvm-software-stack)
to run the benchmarks.


### Build the SeKVM Software Stack

**Note: this instruction is for the reviewers to install and test SeKVM on their
own Raspberry Pi. Please kindly do NOT update the kernel of the testbed to avoid
troubles for the artifact evaluation ;).**

#### Prerequisites

This instruction assumes the Linux kernel is cross-compiled on an x86 machine. If
you use an Arm-based machine, you can ignore the parts that configure the
cross-compile environments.

Install the dependencies:

```
apt install binutils-aarch64-linux-gnu gcc-aarch64-linux-gnu
apt install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison
```

#### SeKVM

Clone the source code:

```
git clone https://github.com/columbia/osdi23-paper114-sekvm.git sekvm
```

Configure cross-compile:

```
export CROSS_COMPILE=aarch64-linux-gnu-
export ARCH=arm64
```

Build:

```
cd sekvm
make bcm2711_sekvm_defconfig
make -j`nproc` Image
```

The SeKVM kernel will be compiled at `arch/arm64/boot/Image`.


#### The Guest Kernel with Modified Virtio Driver

A guest kernel with a modified Virtio front-end drvier is required for SeKVM
guest. You can checkout the details in [this paper](https://www.usenix.org/system/files/sec21-li-shih-wei.pdf).

Clone the source code:

```
https://github.com/columbia/osdi23-paper114-pv-guest.git pv-guest
```

Configure cross-compile:

```
export CROSS_COMPILE=aarch64-linux-gnu-
export ARCH=arm64
```

Configure the kernel

```
cd pv-guest
make defconfig
make menuconfig
```

Select `Virtualization -> PVOPS for the guest kernel`, save and exit.

```
make -j`nproc` Image
```

The guest kernel will be compiled at `arch/arm64/boot/Image`.

#### QEMU

SeKVM requires a modified QEMU for secure boot. Configuring cross-compile of
QEMU is not as easy as the kernel(and might cause issues of the host package
manager).  So we will compile the QEMU on the Raspberry Pi.

Clone the source code:

```
https://github.com/columbia/osdi23-paper114-qemu.git qemu
```

Install the dependencies:

```
apt install git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev ninja-build
```

Build:

```
cd qemu
./configure --target-list=aarch64-softmmu --disable-werror
make -j`nproc`
```

The QEMU will be compiled at `qemu/aarch64-softmmu/qemu-system-aarch64`.

#### Install SeKVM on Raspberry Pi

SeKVM has been tested on Ubuntu for Raspberry Pi and Raspbian.  You can follow
the instruction on the [offical website](https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi#1-overview)
to flash the OS for the Pi.

The kernel for the Pi locates on the first partition of the SD card, or
`/boot/firmware/` accessing from inside of the Pi.  The default kernel image
is `vmlinuz`. You can overwrite it  by `sekvm/arch/arm64/boot/Image` to update
the kernel.
