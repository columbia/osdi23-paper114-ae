; ModuleID = 'drivers/base/topology.c'
source_filename = "drivers/base/topology.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_topology__255_154_topology_sysfs_init6:\09\09\09"
module asm ".long\09topology_sysfs_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.61 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.51, %struct.list_head, %struct.list_head, %union.anon.52 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.53 }
%union.anon.53 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.49, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.27 = type { i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics, [24 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [8 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.48, i32, [12 x i8] }
%union.anon.48 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.2, %union.anon.60, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.60 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.50, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.50 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.17, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.18, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.17 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.18 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.54, %struct.qspinlock }
%union.anon.54 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.24, i32 }
%union.anon.24 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.63 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.cpu_topology = type { i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask }

@__UNIQUE_ID___addressable_topology_sysfs_init256 = internal global i8* bitcast (i32 ()* @topology_sysfs_init to i8*), section ".discard.addressable", align 8
@.str = private unnamed_addr constant [22 x i8] c"base/topology:prepare\00", align 1
@topology_attr_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([4 x %struct.attribute*], [4 x %struct.attribute*]* @default_attrs, i32 0, i32 0), %struct.bin_attribute** getelementptr inbounds ([11 x %struct.bin_attribute*], [11 x %struct.bin_attribute*]* @bin_attrs, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"topology\00", align 1
@default_attrs = internal global [4 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_physical_package_id, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_die_id, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_core_id, i32 0, i32 0), %struct.attribute* null], align 8
@bin_attrs = internal global [11 x %struct.bin_attribute*] [%struct.bin_attribute* @bin_attr_core_cpus, %struct.bin_attribute* @bin_attr_core_cpus_list, %struct.bin_attribute* @bin_attr_thread_siblings, %struct.bin_attribute* @bin_attr_thread_siblings_list, %struct.bin_attribute* @bin_attr_core_siblings, %struct.bin_attribute* @bin_attr_core_siblings_list, %struct.bin_attribute* @bin_attr_die_cpus, %struct.bin_attribute* @bin_attr_die_cpus_list, %struct.bin_attribute* @bin_attr_package_cpus, %struct.bin_attribute* @bin_attr_package_cpus_list, %struct.bin_attribute* null], align 8
@dev_attr_physical_package_id = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @physical_package_id_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_die_id = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @die_id_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_core_id = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @core_id_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"physical_package_id\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@cpu_topology = external dso_local global [256 x %struct.cpu_topology], align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"die_id\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"core_id\00", align 1
@bin_attr_core_cpus = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i16 292 }, i64 0, i8* null, %struct.address_space* ()* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @core_cpus_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8
@bin_attr_core_cpus_list = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i16 292 }, i64 0, i8* null, %struct.address_space* ()* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @core_cpus_list_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8
@bin_attr_thread_siblings = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i16 292 }, i64 0, i8* null, %struct.address_space* ()* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @thread_siblings_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8
@bin_attr_thread_siblings_list = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 0, i8* null, %struct.address_space* ()* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @thread_siblings_list_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8
@bin_attr_core_siblings = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 0, i8* null, %struct.address_space* ()* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @core_siblings_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8
@bin_attr_core_siblings_list = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 0, i8* null, %struct.address_space* ()* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @core_siblings_list_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8
@bin_attr_die_cpus = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 0, i8* null, %struct.address_space* ()* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @die_cpus_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8
@bin_attr_die_cpus_list = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 0, i8* null, %struct.address_space* ()* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @die_cpus_list_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8
@bin_attr_package_cpus = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 0, i8* null, %struct.address_space* ()* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @package_cpus_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8
@bin_attr_package_cpus_list = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i16 292 }, i64 0, i8* null, %struct.address_space* ()* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @package_cpus_list_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"core_cpus\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"core_cpus_list\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"thread_siblings\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"thread_siblings_list\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"core_siblings\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"core_siblings_list\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"die_cpus\00", align 1
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"die_cpus_list\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"package_cpus\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"package_cpus_list\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_topology_sysfs_init256 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @topology_sysfs_init() #0 section ".init.text" {
entry:
  %call = call fastcc i32 @cpuhp_setup_state() #4
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state() unnamed_addr #1 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 58, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i1 noundef true, i32 (i32)* noundef nonnull @topology_add_dev, i32 (i32)* noundef nonnull @topology_remove_dev, i1 noundef false) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @topology_add_dev(i32 noundef %cpu) #1 {
entry:
  %call = call %struct.device* @get_cpu_device(i32 noundef %cpu) #5
  %kobj = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 0
  %call1 = call i32 @sysfs_create_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef nonnull @topology_attr_group) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @topology_remove_dev(i32 noundef %cpu) #1 {
entry:
  %call = call %struct.device* @get_cpu_device(i32 noundef %cpu) #5
  %kobj = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 0
  call void @sysfs_remove_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef nonnull @topology_attr_group) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @physical_package_id_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %id = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %idxprom = zext i32 %0 to i64
  %package_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 2
  %1 = load i32, i32* %package_id, align 8
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %1) #5
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(i8* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @die_id_show(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef -1) #5
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @core_id_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %id = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %idxprom = zext i32 %0 to i64
  %core_id = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 1
  %1 = load i32, i32* %core_id, align 4
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %1) #5
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @core_cpus_read(%struct.file* nocapture noundef readnone %file, %struct.kobject* noundef readonly %kobj, %struct.bin_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %off, i64 noundef %count) #1 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #4
  %id = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %idxprom = zext i32 %0 to i64
  %thread_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 4
  %call1 = call fastcc i64 @cpumap_print_bitmask_to_buf(i8* noundef %buf, %struct.cpumask* noundef %thread_sibling, i64 noundef %off, i64 noundef %count) #4
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef readnone %kobj) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.kobject* %kobj to %struct.device*
  ret %struct.device* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @cpumap_print_bitmask_to_buf(i8* noundef %buf, %struct.cpumask* noundef %mask, i64 noundef %off, i64 noundef %count) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %mask, i64 0, i32 0, i64 0
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call = call i32 @bitmap_print_bitmask_to_buf(i8* noundef %buf, i64* noundef %arraydecay, i32 noundef %0, i64 noundef %off, i64 noundef %count) #5
  %sub = add i32 %call, -1
  %conv = sext i32 %sub to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_bitmask_to_buf(i8* noundef, i64* noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @core_cpus_list_read(%struct.file* nocapture noundef readnone %file, %struct.kobject* noundef readonly %kobj, %struct.bin_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %off, i64 noundef %count) #1 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #4
  %id = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %idxprom = zext i32 %0 to i64
  %thread_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 4
  %call1 = call fastcc i64 @cpumap_print_list_to_buf(i8* noundef %buf, %struct.cpumask* noundef %thread_sibling, i64 noundef %off, i64 noundef %count) #4
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @cpumap_print_list_to_buf(i8* noundef %buf, %struct.cpumask* noundef %mask, i64 noundef %off, i64 noundef %count) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %mask, i64 0, i32 0, i64 0
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call = call i32 @bitmap_print_list_to_buf(i8* noundef %buf, i64* noundef %arraydecay, i32 noundef %0, i64 noundef %off, i64 noundef %count) #5
  %sub = add i32 %call, -1
  %conv = sext i32 %sub to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_list_to_buf(i8* noundef, i64* noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @thread_siblings_read(%struct.file* nocapture noundef readnone %file, %struct.kobject* noundef readonly %kobj, %struct.bin_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %off, i64 noundef %count) #1 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #4
  %id = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %idxprom = zext i32 %0 to i64
  %thread_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 4
  %call1 = call fastcc i64 @cpumap_print_bitmask_to_buf(i8* noundef %buf, %struct.cpumask* noundef %thread_sibling, i64 noundef %off, i64 noundef %count) #4
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @thread_siblings_list_read(%struct.file* nocapture noundef readnone %file, %struct.kobject* noundef readonly %kobj, %struct.bin_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %off, i64 noundef %count) #1 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #4
  %id = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %idxprom = zext i32 %0 to i64
  %thread_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 4
  %call1 = call fastcc i64 @cpumap_print_list_to_buf(i8* noundef %buf, %struct.cpumask* noundef %thread_sibling, i64 noundef %off, i64 noundef %count) #4
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @core_siblings_read(%struct.file* nocapture noundef readnone %file, %struct.kobject* noundef readonly %kobj, %struct.bin_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %off, i64 noundef %count) #1 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #4
  %id = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %idxprom = zext i32 %0 to i64
  %core_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 5
  %call1 = call fastcc i64 @cpumap_print_bitmask_to_buf(i8* noundef %buf, %struct.cpumask* noundef %core_sibling, i64 noundef %off, i64 noundef %count) #4
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @core_siblings_list_read(%struct.file* nocapture noundef readnone %file, %struct.kobject* noundef readonly %kobj, %struct.bin_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %off, i64 noundef %count) #1 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #4
  %id = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %idxprom = zext i32 %0 to i64
  %core_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 5
  %call1 = call fastcc i64 @cpumap_print_list_to_buf(i8* noundef %buf, %struct.cpumask* noundef %core_sibling, i64 noundef %off, i64 noundef %count) #4
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @die_cpus_read(%struct.file* nocapture noundef readnone %file, %struct.kobject* noundef readonly %kobj, %struct.bin_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %off, i64 noundef %count) #1 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #4
  %id = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %call1 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %0) #4
  %call2 = call fastcc i64 @cpumap_print_bitmask_to_buf(i8* noundef %buf, %struct.cpumask* noundef nonnull %call1, i64 noundef %off, i64 noundef %count) #4
  ret i64 %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #3 {
entry:
  %rem = and i32 %cpu, 63
  %add = add nuw nsw i32 %rem, 1
  %idxprom = zext i32 %add to i64
  %div = lshr i32 %cpu, 6
  %idx.ext = zext i32 %div to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr [65 x [4 x i64]], [65 x [4 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, i64 %idx.neg
  %0 = bitcast i64* %add.ptr to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @die_cpus_list_read(%struct.file* nocapture noundef readnone %file, %struct.kobject* noundef readonly %kobj, %struct.bin_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %off, i64 noundef %count) #1 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #4
  %id = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %call1 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %0) #4
  %call2 = call fastcc i64 @cpumap_print_list_to_buf(i8* noundef %buf, %struct.cpumask* noundef nonnull %call1, i64 noundef %off, i64 noundef %count) #4
  ret i64 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @package_cpus_read(%struct.file* nocapture noundef readnone %file, %struct.kobject* noundef readonly %kobj, %struct.bin_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %off, i64 noundef %count) #1 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #4
  %id = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %idxprom = zext i32 %0 to i64
  %core_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 5
  %call1 = call fastcc i64 @cpumap_print_bitmask_to_buf(i8* noundef %buf, %struct.cpumask* noundef %core_sibling, i64 noundef %off, i64 noundef %count) #4
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @package_cpus_list_read(%struct.file* nocapture noundef readnone %file, %struct.kobject* noundef readonly %kobj, %struct.bin_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %off, i64 noundef %count) #1 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #4
  %id = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %idxprom = zext i32 %0 to i64
  %core_sibling = getelementptr [256 x %struct.cpu_topology], [256 x %struct.cpu_topology]* @cpu_topology, i64 0, i64 %idxprom, i32 5
  %call1 = call fastcc i64 @cpumap_print_list_to_buf(i8* noundef %buf, %struct.cpumask* noundef %core_sibling, i64 noundef %off, i64 noundef %count) #4
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #2

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
