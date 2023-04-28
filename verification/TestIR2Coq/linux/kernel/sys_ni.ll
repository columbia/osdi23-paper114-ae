; ModuleID = 'kernel/sys_ni.c'
source_filename = "kernel/sys_ni.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".weak compat_sys_io_setup"
module asm "\09.set  compat_sys_io_setup,sys_ni_syscall"
module asm ".weak compat_sys_io_submit"
module asm "\09.set  compat_sys_io_submit,sys_ni_syscall"
module asm ".weak compat_sys_io_pgetevents_time32"
module asm "\09.set  compat_sys_io_pgetevents_time32,sys_ni_syscall"
module asm ".weak compat_sys_io_pgetevents"
module asm "\09.set  compat_sys_io_pgetevents,sys_ni_syscall"
module asm ".weak compat_sys_lookup_dcookie"
module asm "\09.set  compat_sys_lookup_dcookie,sys_ni_syscall"
module asm ".weak compat_sys_epoll_pwait"
module asm "\09.set  compat_sys_epoll_pwait,sys_ni_syscall"
module asm ".weak compat_sys_epoll_pwait2"
module asm "\09.set  compat_sys_epoll_pwait2,sys_ni_syscall"
module asm ".weak compat_sys_signalfd4"
module asm "\09.set  compat_sys_signalfd4,sys_ni_syscall"
module asm ".weak compat_sys_set_robust_list"
module asm "\09.set  compat_sys_set_robust_list,sys_ni_syscall"
module asm ".weak compat_sys_get_robust_list"
module asm "\09.set  compat_sys_get_robust_list,sys_ni_syscall"
module asm ".weak compat_sys_kexec_load"
module asm "\09.set  compat_sys_kexec_load,sys_ni_syscall"
module asm ".weak compat_sys_mq_open"
module asm "\09.set  compat_sys_mq_open,sys_ni_syscall"
module asm ".weak compat_sys_mq_notify"
module asm "\09.set  compat_sys_mq_notify,sys_ni_syscall"
module asm ".weak compat_sys_mq_getsetattr"
module asm "\09.set  compat_sys_mq_getsetattr,sys_ni_syscall"
module asm ".weak compat_sys_msgctl"
module asm "\09.set  compat_sys_msgctl,sys_ni_syscall"
module asm ".weak compat_sys_old_msgctl"
module asm "\09.set  compat_sys_old_msgctl,sys_ni_syscall"
module asm ".weak compat_sys_msgrcv"
module asm "\09.set  compat_sys_msgrcv,sys_ni_syscall"
module asm ".weak compat_sys_msgsnd"
module asm "\09.set  compat_sys_msgsnd,sys_ni_syscall"
module asm ".weak compat_sys_semctl"
module asm "\09.set  compat_sys_semctl,sys_ni_syscall"
module asm ".weak compat_sys_old_semctl"
module asm "\09.set  compat_sys_old_semctl,sys_ni_syscall"
module asm ".weak compat_sys_shmctl"
module asm "\09.set  compat_sys_shmctl,sys_ni_syscall"
module asm ".weak compat_sys_old_shmctl"
module asm "\09.set  compat_sys_old_shmctl,sys_ni_syscall"
module asm ".weak compat_sys_shmat"
module asm "\09.set  compat_sys_shmat,sys_ni_syscall"
module asm ".weak compat_sys_setsockopt"
module asm "\09.set  compat_sys_setsockopt,sys_ni_syscall"
module asm ".weak compat_sys_getsockopt"
module asm "\09.set  compat_sys_getsockopt,sys_ni_syscall"
module asm ".weak compat_sys_recvfrom"
module asm "\09.set  compat_sys_recvfrom,sys_ni_syscall"
module asm ".weak compat_sys_sendmsg"
module asm "\09.set  compat_sys_sendmsg,sys_ni_syscall"
module asm ".weak compat_sys_recvmsg"
module asm "\09.set  compat_sys_recvmsg,sys_ni_syscall"
module asm ".weak compat_sys_keyctl"
module asm "\09.set  compat_sys_keyctl,sys_ni_syscall"
module asm ".weak compat_sys_recvmmsg_time32"
module asm "\09.set  compat_sys_recvmmsg_time32,sys_ni_syscall"
module asm ".weak compat_sys_recvmmsg_time64"
module asm "\09.set  compat_sys_recvmmsg_time64,sys_ni_syscall"
module asm ".weak compat_sys_open_by_handle_at"
module asm "\09.set  compat_sys_open_by_handle_at,sys_ni_syscall"
module asm ".weak compat_sys_sendmmsg"
module asm "\09.set  compat_sys_sendmmsg,sys_ni_syscall"
module asm ".weak compat_sys_process_vm_readv"
module asm "\09.set  compat_sys_process_vm_readv,sys_ni_syscall"
module asm ".weak compat_sys_process_vm_writev"
module asm "\09.set  compat_sys_process_vm_writev,sys_ni_syscall"
module asm ".weak compat_sys_socketcall"
module asm "\09.set  compat_sys_socketcall,sys_ni_syscall"
module asm ".weak compat_sys_fanotify_mark"
module asm "\09.set  compat_sys_fanotify_mark,sys_ni_syscall"
module asm ".weak compat_sys_s390_ipc"
module asm "\09.set  compat_sys_s390_ipc,sys_ni_syscall"
module asm ".weak compat_sys_signalfd"
module asm "\09.set  compat_sys_signalfd,sys_ni_syscall"
module asm ".weak compat_sys_recv"
module asm "\09.set  compat_sys_recv,sys_ni_syscall"
module asm ".weak compat_sys_rt_sigtimedwait_time32"
module asm "\09.set  compat_sys_rt_sigtimedwait_time32,sys_ni_syscall"
module asm ".weak compat_sys_pselect6_time32"
module asm "\09.set  compat_sys_pselect6_time32,sys_ni_syscall"
module asm ".weak compat_sys_ppoll_time32"
module asm "\09.set  compat_sys_ppoll_time32,sys_ni_syscall"
module asm ".weak compat_sys_ipc"
module asm "\09.set  compat_sys_ipc,sys_ni_syscall"

%struct.pt_regs = type opaque

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @sys_ni_syscall() local_unnamed_addr #0 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_io_setup(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_io_destroy(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_io_submit(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_io_cancel(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_io_getevents_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_io_getevents(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_io_pgetevents_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_io_pgetevents(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_io_uring_setup(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_io_uring_enter(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_io_uring_register(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_lookup_dcookie(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_eventfd2(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_epoll_create1(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_epoll_ctl(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_epoll_pwait(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_epoll_pwait2(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_inotify_init1(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_inotify_add_watch(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_inotify_rm_watch(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_ioprio_set(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_ioprio_get(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_flock(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_quotactl(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_quotactl_fd(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_signalfd4(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_timerfd_create(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_timerfd_settime(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_timerfd_settime32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_timerfd_gettime(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_timerfd_gettime32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_acct(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_capget(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_capset(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_clone3(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_futex(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_futex_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_set_robust_list(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_get_robust_list(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_kexec_load(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_init_module(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_delete_module(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_syslog(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setregid(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setgid(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setreuid(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setuid(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setresuid(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_getresuid(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setresgid(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_getresgid(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setfsuid(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setfsgid(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setgroups(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_getgroups(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mq_open(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mq_unlink(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mq_timedsend(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mq_timedsend_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mq_timedreceive(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mq_timedreceive_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mq_notify(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mq_getsetattr(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_msgget(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_old_msgctl(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_msgctl(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_msgrcv(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_msgsnd(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_semget(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_old_semctl(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_semctl(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_semtimedop(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_semtimedop_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_semop(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_shmget(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_old_shmctl(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_shmctl(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_shmat(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_shmdt(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_socket(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_socketpair(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_bind(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_listen(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_accept(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_connect(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_getsockname(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_getpeername(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setsockopt(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_getsockopt(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_sendto(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_shutdown(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_recvfrom(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_sendmsg(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_recvmsg(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mremap(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_add_key(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_request_key(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_keyctl(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_landlock_create_ruleset(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_landlock_add_rule(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_landlock_restrict_self(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_fadvise64_64(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_swapon(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_swapoff(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mprotect(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_msync(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mlock(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_munlock(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mlockall(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_munlockall(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mincore(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_madvise(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_process_madvise(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_process_mrelease(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_remap_file_pages(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mbind(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_get_mempolicy(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_set_mempolicy(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_migrate_pages(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_move_pages(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_perf_event_open(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_accept4(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_recvmmsg(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_recvmmsg_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_fanotify_init(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_fanotify_mark(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_name_to_handle_at(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_open_by_handle_at(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_sendmmsg(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_process_vm_readv(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_process_vm_writev(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_kcmp(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_finit_module(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_seccomp(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_memfd_create(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_bpf(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_execveat(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_userfaultfd(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_membarrier(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_mlock2(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_copy_file_range(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_pkey_mprotect(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_pkey_alloc(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_pkey_free(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_memfd_secret(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_pciconfig_read(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_pciconfig_write(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_pciconfig_iobase(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_socketcall(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_vm86old(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_modify_ldt(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_vm86(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_kexec_file_load(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_s390_pci_mmio_read(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_s390_pci_mmio_write(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_s390_ipc(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_rtas(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_spu_run(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_spu_create(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_subpage_prot(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_epoll_create(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_inotify_init(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_eventfd(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_signalfd(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_fadvise64(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_epoll_wait(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_recv(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_send(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_uselib(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_stime32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_utime32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_adjtimex_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_sched_rr_get_interval_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_nanosleep_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_rt_sigtimedwait_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_timer_settime32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_timer_gettime32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_clock_settime32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_clock_gettime32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_clock_getres_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_clock_nanosleep_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_utimes_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_futimesat_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_pselect6_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_ppoll_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_utimensat_time32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_clock_adjtime32(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_sgetmask(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_ssetmask(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_sysfs(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_ipc(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_chown16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_fchown16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_getegid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_geteuid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_getgid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_getgroups16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_getresgid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_getresuid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_getuid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_lchown16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setfsgid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setfsuid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setgid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setgroups16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setregid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setresgid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setresuid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setreuid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_setuid16(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i64 @__arm64_sys_rseq(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  ret i64 -38
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
