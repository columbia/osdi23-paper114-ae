## Evaluation of SeKVM

As described in Section 6 in paper 114, we verified an updated version of an
open-source KVM hypervisor, [SeKVM](https://github.com/verigu/vrm), using Spoq.
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

*Note: Due to hardware resource limitations, only one reviewer can run the
performance evaluation at a time.  We are sorry for this inconvenience and
appreciate your understanding.*

We recommend using a terminal mutiplexer to access the serial port while running
other workloads on the client.

Below is a simple instruction for GNU Screen.  You may refer to the manual page
for more information.
If you are familiar with GNU Screen or prefer to use your favorite terminal
multiplexer, you can go ahead to [TBD](#TBD).

You can create a screen session and access the serial port by

```
screen /dev/ttyUSB0 115200
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

To simplify the evaluation, there is also a alternative Raspberry Pi running
the vanilla Linux for the baseline benchmarks. You can connect the serial port
of the baseline Pi via `ttyUSB1` by the following steps:

1. Create a new window on your current screen session by `Ctrl-a c`.

2. In the new window:

```
screen /dev/ttyUSB1 115200
```

### Run the Workloads on the VM

We provide the pre-compiled Linux kernel images of the vanilla Raspberry Pi,
SeKVM, the guest VM, as well as QEMU to run the VM.  VMs running under
SeKVM require a guest Linux kernel with modified virtio driver, and a modified
QEMU to support secure boot.  The source code is also provided in this repo.
You can compile those binaries following the instructions at [TBD](#TBD).


#### Configure and Run the VM

On the serial port, you need to configure the bridge netwrok by

```
./net
```

- If you are on `ttyUSB0`, run:

```
./run-guest-sekvm.sh
```

- If you are on `ttyUSB1`, run:

```
./run-guest-kvm.sh
```

The VM will boot shortly and drop to the virtual serial console.

You can check the ip address of the VM by

```
ip addr
```

*Note: If only `lo0` shows up, it is most likely you forgot to run `./net.sh`.
Shutdown the VM(`shutdown -p`), run `./net.sh` and run the VM again.*

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

### Run the Workloads on the Vanilla Linux

To evaluate the baseline performance on the vanilla Linux, the Pi needs to capped
to the same hardware capcity of the VM. On `ttyUSB1`, Run

```
./reboot-baseline.sh
```

The script changes the boot option of the Pi and caps the Pi to two CPUs and 4G
RAM, and reboot the Pi.

When the Pi boots up, following the same instruction on [TBD](TBD)
to run the benchmarks.


### Build the SeKVM Software Stack

*Note: this instruction is for the reviewers to install and test SeKVM on their
own Raspberry Pi. Please kindly do NOT update the kernel of the testbed to avoid
troubles for the artifact evaluation ;).*

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
guest. You can checkout the details in [this paper](TBD).

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
