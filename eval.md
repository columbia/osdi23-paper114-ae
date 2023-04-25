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

*Note: Due to hardware resource limitations, only one reviwer can run the
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

### Run the Workloads on SeKVM

We provide the pre-compiled Linux kernel images of the vanilla Raspberry Pi,
SeKVM, the guest VM, as well as QEMU to run the VM.  VMs running under
SeKVM require a guest Linux kernel with modified virtio driver, and a modified
QEMU to support secure boot.  The source code is also provided in this repo.
You can compile those binaries following the instructions at [TBD](#TBD).

You can SSH to the Raspberry Pi via SSH on the client by

```
ssh root@192.168.50.134
```

Once logging in, you need to configure the bridge netwrok by

```
./net
```

and run the VM by

```
./run-guest-sekvm.sh
```

The VM will boot shortly and drop to the virtual serial console.  You can then
start the server application by

```
systemctl start [app]
```

where `app` can be `apache`, `memcached` or `mysql`.

Then you can switch to the client window and run the workload by

```
./[app].sh 192.168.50.24
```

After the benchmark is done, the results are saved in `[app].txt`.

### Run the Workloads on KVM and Vanilla Linux

TODO


### Build the SeKVM Software Stack

#### SeKVM

#### The Guest Kernel with Modified Virtio Driver

#### QEMU


### Install SeKVM on Raspberry Pi
