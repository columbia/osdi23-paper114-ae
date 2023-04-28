; ModuleID = 'block/genhd.c'
source_filename = "block/genhd.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_genhd__424_833_genhd_device_init4:\09\09\09"
module asm ".long\09genhd_device_init - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_genhd__443_1209_proc_genhd_init6:\09\09\09"
module asm ".long\09proc_genhd_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.blk_major_name = type { %struct.blk_major_name*, i32, [16 x i8], void (i32)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.74, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35, [48 x i8] }
%struct.anon.35 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.6, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.6 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.7 }
%union.anon.7 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.8, %union.anon.62 }
%union.anon.8 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.62 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.23, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.22, [0 x i64] }
%struct.anon.22 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.57, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.26 }
%union.anon.26 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.28 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
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
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.75, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
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
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.page = type { i64, %union.anon.9, %union.anon.61, %struct.atomic_t, [8 x i8] }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.61 = type { %struct.atomic_t }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.76, %union.anon.77, %union.anon.78, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.81, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.40, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.40 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%union.anon.76 = type { %struct.hlist_node }
%union.anon.77 = type { %struct.rb_node }
%union.anon.78 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.81 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.42, %union.anon.43, i32 }
%union.anon.42 = type { %struct.list_head }
%union.anon.43 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type { %struct.rq_qos_ops*, %struct.request_queue*, i32, %struct.rq_qos* }
%struct.rq_qos_ops = type { void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*)*, void (%struct.rq_qos*)*, %struct.blk_mq_debugfs_attr* }
%struct.blk_mq_debugfs_attr = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon.41, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.41 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
%struct.blk_mq_ctxs = type { %struct.kobject, %struct.blk_mq_ctx* }
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, %struct.blk_rq_stat*, i32 (%struct.request*)*, i32, %struct.blk_rq_stat*, void (%struct.blk_stat_callback*)*, i8*, %struct.callback_head }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type { i8, i8, i64, [2 x %struct.list_head], %struct.list_head, %struct.request*, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type { %struct.device*, i32, i32, i32, i64*, i32, %struct.seqlock_t, i64, i64 }
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.75 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.48 }
%struct.anon.48 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.56, i32, [12 x i8] }
%union.anon.56 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.58, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.58 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.23 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.24, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.25, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.24 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.25 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.66 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.64, %struct.qspinlock }
%union.anon.64 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.66 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.38 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.68, i32 }
%union.anon.68 = type { %struct.kuid_t }
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
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.72 = type { %struct.callback_head }
%union.anon.73 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.74 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, {}*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.39, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.39 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_attribute = type { %struct.attribute, {}*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.class_dev_iter = type { %struct.klist_iter, %struct.device_type* }
%struct.klist_iter = type { %struct.klist*, %struct.klist_node* }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.proc_dir_entry = type opaque

@.str = private unnamed_addr constant [9 x i8] c"RESIZE=1\00", align 1
@__const.set_capacity_and_notify.envp = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"\016%s: detected capacity change from %lld to %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%sp%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@major_names_spinlock = internal global %struct.spinlock zeroinitializer, align 4
@major_names = internal unnamed_addr global [255 x %struct.blk_major_name*] zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"%3d %s\0A\00", align 1
@major_names_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @major_names_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @major_names_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: failed to get major for %s\0A\00", align 1
@__func__.__register_blkdev = private unnamed_addr constant [18 x i8] c"__register_blkdev\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"\013%s: major requested (%u) is greater than the maximum (%u) for %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"register_blkdev: cannot get major %u for %s\0A\00", align 1
@ext_devt_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, i8* null } }, align 8
@.str.9 = private unnamed_addr constant [49 x i8] c"\013block: can't allocate more than %d partitions\0A\00", align 1
@block_depr = internal unnamed_addr global %struct.kobject* null, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"holders\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"slaves\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"bdi\00", align 1
@block_class = dso_local global %struct.class { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), %struct.module* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.kobject* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* @block_uevent, i8* (%struct.device*, i16*)* null, void (%struct.class*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, %struct.kobj_ns_type_operations* null, i8* (%struct.device*)* null, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)* null, %struct.dev_pm_ops* null, %struct.subsys_private* null }, align 8
@disk_type = dso_local constant %struct.device_type { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @disk_attr_groups, i32 0, i32 0), i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* @block_devnode, void (%struct.device*)* @disk_release, %struct.dev_pm_ops* null }, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"%s%s %10llu %pg %s\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c" driver: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c" (driver?)\0A\00", align 1
@__UNIQUE_ID___addressable_genhd_device_init425 = internal global i8* bitcast (i32 ()* @genhd_device_init to i8*), section ".discard.addressable", align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.23 = private unnamed_addr constant [82 x i8] c"%8lu %8lu %8llu %8u %8lu %8lu %8llu %8u %8u %8u %8u %8lu %8lu %8llu %8u %8lu %8u\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%8u %8u\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@disk_attr_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @disk_attr_group, %struct.attribute_group* null], align 8
@__UNIQUE_ID___addressable_proc_genhd_init444 = internal global i8* bitcast (i32 ()* @proc_genhd_init to i8*), section ".discard.addressable", align 8
@__alloc_disk_node.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"&disk->open_mutex\00", align 1
@diskseq = internal global %struct.atomic64_t zeroinitializer, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str.29 = private unnamed_addr constant [9 x i8] c"%02x%02x\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"%-9s\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"%03x:%05x\00", align 1
@sysfs_dev_block_kobj = external dso_local local_unnamed_addr global %struct.kobject*, align 8
@genhd_device_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"blkext\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"DISKSEQ=%llu\00", align 1
@disk_attr_group = internal global %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* @disk_visible, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([17 x %struct.attribute*], [17 x %struct.attribute*]* @disk_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@disk_attrs = internal global [17 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_range to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_ext_range to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_removable to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_hidden to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_ro to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_size to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_alignment_offset to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_discard_alignment to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_capability to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_stat to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_inflight to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* getelementptr inbounds ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }, { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_badblocks, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_events, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_events_async, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_events_poll_msecs, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_diskseq to %struct.device_attribute*), i32 0, i32 0), %struct.attribute* null], align 8
@.str.34 = private unnamed_addr constant [10 x i8] c"badblocks\00", align 1
@dev_attr_badblocks = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @disk_badblocks_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @disk_badblocks_store }, align 8
@dev_attr_events = external dso_local global %struct.device_attribute, align 8
@dev_attr_events_async = external dso_local global %struct.device_attribute, align 8
@dev_attr_events_poll_msecs = external dso_local global %struct.device_attribute, align 8
@.str.36 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@dev_attr_range = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @disk_range_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.38 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"ext_range\00", align 1
@dev_attr_ext_range = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @disk_ext_range_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.41 = private unnamed_addr constant [10 x i8] c"removable\00", align 1
@dev_attr_removable = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @disk_removable_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@dev_attr_hidden = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @disk_hidden_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.45 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@dev_attr_ro = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @disk_ro_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.47 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@dev_attr_size = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @part_size_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.49 = private unnamed_addr constant [17 x i8] c"alignment_offset\00", align 1
@dev_attr_alignment_offset = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @disk_alignment_offset_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.51 = private unnamed_addr constant [18 x i8] c"discard_alignment\00", align 1
@dev_attr_discard_alignment = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @disk_discard_alignment_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.53 = private unnamed_addr constant [11 x i8] c"capability\00", align 1
@dev_attr_capability = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @disk_capability_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.55 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@dev_attr_stat = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @part_stat_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.58 = private unnamed_addr constant [9 x i8] c"inflight\00", align 1
@dev_attr_inflight = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @part_inflight_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.60 = private unnamed_addr constant [8 x i8] c"diskseq\00", align 1
@dev_attr_diskseq = internal global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @diskseq_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.62 = private unnamed_addr constant [10 x i8] c"diskstats\00", align 1
@diskstats_op = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @disk_seqf_start, void (%struct.seq_file*, i8*)* @disk_seqf_stop, i8* (%struct.seq_file*, i8*, i64*)* @disk_seqf_next, i32 (%struct.seq_file*, i8*)* @diskstats_show }, align 8
@.str.63 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@partitions_op = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @show_partition_start, void (%struct.seq_file*, i8*)* @disk_seqf_stop, i8* (%struct.seq_file*, i8*, i64*)* @disk_seqf_next, i32 (%struct.seq_file*, i8*)* @show_partition }, align 8
@.str.64 = private unnamed_addr constant [74 x i8] c"%4d %7d %pg %lu %lu %lu %u %lu %lu %lu %u %u %u %u %lu %lu %lu %u %lu %u\0A\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"major minor  #blocks  name\0A\0A\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"%4d  %7d %10llu %pg\0A\00", align 1
@__const.set_disk_ro_uevent.event = private unnamed_addr constant [10 x i8] c"DISK_RO=1\00", align 1
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_genhd_device_init425 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_proc_genhd_init444 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_capacity(%struct.gendisk* nocapture noundef readonly %disk, i64 noundef %sectors) local_unnamed_addr #0 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %rlock.i = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 6
  %1 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %shl = shl i64 %sectors, 9
  call fastcc void @i_size_write(%struct.inode* noundef %1, i64 noundef %shl) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @i_size_write(%struct.inode* nocapture noundef writeonly %inode, i64 noundef %i_size) unnamed_addr #2 {
entry:
  %i_size1 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  store i64 %i_size, i64* %i_size1, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @set_capacity_and_notify(%struct.gendisk* noundef %disk, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %envp = alloca [2 x i8*], align 8
  %call = call fastcc i64 @get_capacity(%struct.gendisk* noundef %disk) #16
  %0 = bitcast [2 x i8*]* %envp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) bitcast ([2 x i8*]* @__const.set_capacity_and_notify.envp to i8*), i64 16, i1 false)
  call void @set_capacity(%struct.gendisk* noundef %disk, i64 noundef %size) #16
  %cmp = icmp eq i64 %call, %size
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @disk_live(%struct.gendisk* noundef %disk) #16
  br i1 %call1, label %lor.lhs.false2, label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 11
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %cleanup

do.end:                                           ; preds = %lor.lhs.false2
  %arraydecay = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 3, i64 0
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* noundef %arraydecay, i64 noundef %call, i64 noundef %size) #18
  %tobool4 = icmp ne i64 %call, 0
  %tobool6 = icmp ne i64 %size, 0
  %or.cond = and i1 %tobool6, %tobool4
  br i1 %or.cond, label %if.end8, label %cleanup

if.end8:                                          ; preds = %do.end
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %2 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %kobj = getelementptr inbounds %struct.block_device, %struct.block_device* %2, i64 0, i32 9, i32 0
  %arraydecay9 = getelementptr inbounds [2 x i8*], [2 x i8*]* %envp, i64 0, i64 0
  %call10 = call i32 @kobject_uevent_env(%struct.kobject* noundef %kobj, i32 noundef 2, i8** noundef nonnull %arraydecay9) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry, %lor.lhs.false, %lor.lhs.false2, %if.end8
  %retval.0 = phi i1 [ true, %if.end8 ], [ false, %lor.lhs.false2 ], [ false, %lor.lhs.false ], [ false, %entry ], [ false, %do.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @get_capacity(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #3 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %call = call fastcc i64 @bdev_nr_sectors(%struct.block_device* noundef %0) #16
  ret i64 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @disk_live(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #3 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 6
  %1 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call = call fastcc i32 @inode_unhashed(%struct.inode* noundef %1) #16
  %tobool.not = icmp eq i32 %call, 0
  ret i1 %tobool.not
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(%struct.kobject* noundef, i32 noundef, i8** noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @bdevname(%struct.block_device* nocapture noundef readonly %bdev, i8* noundef returned %buf) local_unnamed_addr #0 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 14
  %1 = load i8, i8* %bd_partno, align 8
  %conv = zext i8 %1 to i32
  %tobool.not = icmp eq i8 %1, 0
  %arraydecay = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 3, i64 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef %arraydecay) #15
  br label %if.end16

if.else:                                          ; preds = %entry
  %call4 = call i64 @strlen(i8* noundef %arraydecay) #15
  %sub = add i64 %call4, -1
  %arrayidx = getelementptr %struct.gendisk, %struct.gendisk* %0, i64 0, i32 3, i64 %sub
  %2 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %2 to i32
  %call6 = call fastcc i32 @isdigit(i32 noundef %conv5) #16
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else12, label %if.then8

if.then8:                                         ; preds = %if.else
  %call11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef 32, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %conv) #15
  br label %if.end16

if.else12:                                        ; preds = %if.else
  %call15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %conv) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %if.else12, %if.then
  ret i8* %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @isdigit(i32 noundef %c) unnamed_addr #7 {
entry:
  %0 = add i32 %c, -48
  %1 = icmp ult i32 %0, 10
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blkdev_show(%struct.seq_file* noundef %seqf, i64 noundef %offset) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @major_names_spinlock, i64 0, i32 0, i32 0)) #15
  %conv = trunc i64 %offset to i32
  %call = call fastcc i32 @major_to_index(i32 noundef %conv) #16
  %0 = zext i32 %call to i64
  %arrayidx = getelementptr [255 x %struct.blk_major_name*], [255 x %struct.blk_major_name*]* @major_names, i64 0, i64 %0
  %dp.010 = load %struct.blk_major_name*, %struct.blk_major_name** %arrayidx, align 8
  %tobool.not11 = icmp eq %struct.blk_major_name* %dp.010, null
  br i1 %tobool.not11, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %dp.012 = phi %struct.blk_major_name* [ %dp.0, %for.inc ], [ %dp.010, %entry ]
  %major = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %dp.012, i64 0, i32 1
  %1 = load i32, i32* %major, align 8
  %conv1 = sext i32 %1 to i64
  %cmp = icmp eq i64 %conv1, %offset
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %dp.012, i64 0, i32 2, i64 0
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seqf, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %1, i8* noundef %arraydecay) #15
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %next = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %dp.012, i64 0, i32 0
  %dp.0 = load %struct.blk_major_name*, %struct.blk_major_name** %next, align 8
  %tobool.not = icmp eq %struct.blk_major_name* %dp.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @major_names_spinlock, i64 0, i32 0, i32 0)) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @major_to_index(i32 noundef %major) unnamed_addr #7 {
entry:
  %rem = urem i32 %major, 255
  ret i32 %rem
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__register_blkdev(i32 noundef %major, i8* noundef %name, void (i32)* noundef %probe) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @major_names_lock) #15
  %cmp = icmp eq i32 %major, 0
  br i1 %cmp, label %for.body, label %if.end7

for.body:                                         ; preds = %entry, %for.inc
  %index.089 = phi i32 [ %dec, %for.inc ], [ 254, %entry ]
  %idxprom86 = zext i32 %index.089 to i64
  %arrayidx = getelementptr [255 x %struct.blk_major_name*], [255 x %struct.blk_major_name*]* @major_names, i64 0, i64 %idxprom86
  %0 = load %struct.blk_major_name*, %struct.blk_major_name** %arrayidx, align 8
  %cmp2 = icmp eq %struct.blk_major_name* %0, null
  br i1 %cmp2, label %if.end7, label %for.inc

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %index.089, -1
  %cmp1 = icmp ugt i32 %index.089, 1
  br i1 %cmp1, label %for.body, label %do.end

do.end:                                           ; preds = %for.inc
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.__register_blkdev, i64 0, i64 0), i8* noundef %name) #18
  br label %out

if.end7:                                          ; preds = %for.body, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %index.089, %for.body ]
  %major.addr.0 = phi i32 [ %major, %entry ], [ %index.089, %for.body ]
  %cmp8 = icmp ugt i32 %major.addr.0, 511
  br i1 %cmp8, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end7
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.__register_blkdev, i64 0, i64 0), i32 noundef %major.addr.0, i32 noundef 511, i8* noundef %name) #18
  br label %out

if.end15:                                         ; preds = %if.end7
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef 3264) #15
  %cmp17 = icmp eq i8* %call.i.i, null
  br i1 %cmp17, label %out, label %if.end19

if.end19:                                         ; preds = %if.end15
  %major20 = getelementptr inbounds i8, i8* %call.i.i, i64 8
  %2 = bitcast i8* %major20 to i32*
  store i32 %major.addr.0, i32* %2, align 8
  %probe21 = getelementptr inbounds i8, i8* %call.i.i, i64 32
  %3 = bitcast i8* %probe21 to void (i32)**
  store void (i32)* %probe, void (i32)** %3, align 8
  %name22 = getelementptr inbounds i8, i8* %call.i.i, i64 12
  %call23 = call i64 @strlcpy(i8* noundef %name22, i8* noundef %name, i64 noundef 16) #15
  %next = bitcast i8* %call.i.i to %struct.blk_major_name**
  store %struct.blk_major_name* null, %struct.blk_major_name** %next, align 8
  %call24 = call fastcc i32 @major_to_index(i32 noundef %major.addr.0) #16
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @major_names_spinlock, i64 0, i32 0, i32 0)) #15
  %4 = zext i32 %call24 to i64
  %arrayidx26 = getelementptr [255 x %struct.blk_major_name*], [255 x %struct.blk_major_name*]* @major_names, i64 0, i64 %4
  %5 = load %struct.blk_major_name*, %struct.blk_major_name** %arrayidx26, align 8
  %tobool.not90 = icmp eq %struct.blk_major_name* %5, null
  br i1 %tobool.not90, label %if.end38, label %for.body28

for.cond27:                                       ; preds = %for.body28
  %6 = load %struct.blk_major_name*, %struct.blk_major_name** %next34, align 8
  %tobool.not = icmp eq %struct.blk_major_name* %6, null
  br i1 %tobool.not, label %if.end38, label %for.body28

for.body28:                                       ; preds = %if.end19, %for.cond27
  %7 = phi %struct.blk_major_name* [ %6, %for.cond27 ], [ %5, %if.end19 ]
  %major29 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %7, i64 0, i32 1
  %8 = load i32, i32* %major29, align 8
  %cmp30 = icmp eq i32 %8, %major.addr.0
  %next34 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %7, i64 0, i32 0
  br i1 %cmp30, label %if.end38.thread, label %for.cond27

if.end38.thread:                                  ; preds = %for.body28
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @major_names_spinlock, i64 0, i32 0, i32 0)) #15
  br label %do.end43

if.end38:                                         ; preds = %for.cond27, %if.end19
  %n.0.lcssa = phi %struct.blk_major_name** [ %arrayidx26, %if.end19 ], [ %next34, %for.cond27 ]
  %9 = bitcast %struct.blk_major_name** %n.0.lcssa to i8**
  store i8* %call.i.i, i8** %9, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @major_names_spinlock, i64 0, i32 0, i32 0)) #15
  %cmp39 = icmp slt i32 %ret.0, 0
  br i1 %cmp39, label %do.end43, label %out

do.end43:                                         ; preds = %if.end38.thread, %if.end38
  %ret.185 = phi i32 [ -16, %if.end38.thread ], [ %ret.0, %if.end38 ]
  %call45 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 noundef %major.addr.0, i8* noundef %name) #18
  call void @kfree(i8* noundef nonnull %call.i.i) #15
  br label %out

out:                                              ; preds = %if.end15, %if.end38, %do.end43, %do.end12, %do.end
  %ret.2 = phi i32 [ -16, %do.end ], [ -22, %do.end12 ], [ %ret.185, %do.end43 ], [ %ret.0, %if.end38 ], [ -12, %if.end15 ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @major_names_lock) #15
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unregister_blkdev(i32 noundef %major, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @major_to_index(i32 noundef %major) #16
  call void @mutex_lock(%struct.mutex* noundef nonnull @major_names_lock) #15
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @major_names_spinlock, i64 0, i32 0, i32 0)) #15
  %0 = zext i32 %call to i64
  %arrayidx = getelementptr [255 x %struct.blk_major_name*], [255 x %struct.blk_major_name*]* @major_names, i64 0, i64 %0
  %1 = load %struct.blk_major_name*, %struct.blk_major_name** %arrayidx, align 8
  %tobool.not37 = icmp eq %struct.blk_major_name* %1, null
  br i1 %tobool.not37, label %if.then10, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %major145 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %1, i64 0, i32 1
  %2 = load i32, i32* %major145, align 8
  %cmp46 = icmp eq i32 %2, %major
  br i1 %cmp46, label %lor.lhs.false, label %for.inc

for.body:                                         ; preds = %for.inc
  %major1 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %5, i64 0, i32 1
  %3 = load i32, i32* %major1, align 8
  %cmp = icmp eq i32 %3, %major
  br i1 %cmp, label %lor.lhs.false.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body.preheader, %for.body
  %4 = phi %struct.blk_major_name* [ %5, %for.body ], [ %1, %for.body.preheader ]
  %next = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %4, i64 0, i32 0
  %5 = load %struct.blk_major_name*, %struct.blk_major_name** %next, align 8
  %tobool.not = icmp eq %struct.blk_major_name* %5, null
  br i1 %tobool.not, label %if.then10, label %for.body

lor.lhs.false.loopexit:                           ; preds = %for.body
  %next.le = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %4, i64 0, i32 0
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.false.loopexit, %for.body.preheader
  %.lcssa = phi %struct.blk_major_name* [ %1, %for.body.preheader ], [ %5, %lor.lhs.false.loopexit ]
  %n.038.lcssa = phi %struct.blk_major_name** [ %arrayidx, %for.body.preheader ], [ %next.le, %lor.lhs.false.loopexit ]
  %arraydecay = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %.lcssa, i64 0, i32 2, i64 0
  %call4 = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef %name) #15
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %for.inc, %entry, %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/genhd.c\22; .popsection; .long 14472b - 14470b; .short 310; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !7
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false
  %6 = load %struct.blk_major_name*, %struct.blk_major_name** %n.038.lcssa, align 8
  %next19 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %6, i64 0, i32 0
  %7 = load %struct.blk_major_name*, %struct.blk_major_name** %next19, align 8
  store %struct.blk_major_name* %7, %struct.blk_major_name** %n.038.lcssa, align 8
  %phi.cast = bitcast %struct.blk_major_name* %6 to i8*
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then10
  %p.0 = phi i8* [ null, %if.then10 ], [ %phi.cast, %if.else ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @major_names_spinlock, i64 0, i32 0, i32 0)) #15
  call void @mutex_unlock(%struct.mutex* noundef nonnull @major_names_lock) #15
  call void @kfree(i8* noundef %p.0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_alloc_ext_minor() local_unnamed_addr #0 {
entry:
  %call = call i32 @ida_alloc_range(%struct.ida* noundef nonnull @ext_devt_ida, i32 noundef 0, i32 noundef 1048576, i32 noundef 3264) #15
  %cmp = icmp eq i32 %call, -28
  %.call = select i1 %cmp, i32 -16, i32 %call
  ret i32 %.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(%struct.ida* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_free_ext_minor(i32 noundef %minor) local_unnamed_addr #0 {
entry:
  call void @ida_free(%struct.ida* noundef nonnull @ext_devt_ida, i32 noundef %minor) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(%struct.ida* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disk_uevent(%struct.gendisk* noundef %disk, i32 noundef %action) local_unnamed_addr #0 {
entry:
  %idx = alloca i64, align 8
  %0 = bitcast i64* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  call fastcc void @__rcu_read_lock() #15
  store i64 0, i64* %idx, align 8
  %part_tbl = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 6
  %call = call i8* @xa_find(%struct.xarray* noundef %part_tbl, i64* noundef nonnull %idx, i64 noundef -1, i32 noundef 8) #15
  %tobool.not22 = icmp eq i8* %call, null
  br i1 %tobool.not22, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %part.0.in23 = phi i8* [ %call13, %for.inc ], [ %call, %entry ]
  %part.024 = bitcast i8* %part.0.in23 to %struct.block_device*
  %call1 = call fastcc i1 @bdev_is_partition(%struct.block_device* noundef nonnull %part.024) #16
  br i1 %call1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %call2 = call fastcc i64 @bdev_nr_sectors(%struct.block_device* noundef nonnull %part.024) #16
  %tobool3.not = icmp eq i64 %call2, 0
  br i1 %tobool3.not, label %for.inc, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %bd_device = getelementptr inbounds i8, i8* %part.0.in23, i64 64
  %kobj = bitcast i8* %bd_device to %struct.kobject*
  %call4 = call %struct.kobject* @kobject_get_unless_zero(%struct.kobject* noundef %kobj) #15
  %tobool5.not = icmp eq %struct.kobject* %call4, null
  br i1 %tobool5.not, label %for.inc, label %if.end7

if.end7:                                          ; preds = %if.end
  %1 = bitcast i8* %bd_device to %struct.device*
  call fastcc void @rcu_read_unlock() #16
  %call10 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef %action) #15
  call void @put_device(%struct.device* noundef %1) #15
  call fastcc void @__rcu_read_lock() #15
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true, %if.end7
  %call13 = call i8* @xa_find_after(%struct.xarray* noundef %part_tbl, i64* noundef nonnull %idx, i64 noundef -1, i32 noundef 8) #15
  %tobool.not = icmp eq i8* %call13, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call fastcc void @rcu_read_unlock() #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_find(%struct.xarray* noundef, i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bdev_is_partition(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #3 {
entry:
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 14
  %0 = load i8, i8* %bd_partno, align 8
  %tobool = icmp ne i8 %0, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @bdev_nr_sectors(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #3 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %0) #16
  %shr = ashr i64 %call, 9
  ret i64 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_get_unless_zero(%struct.kobject* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_find_after(%struct.xarray* noundef, i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_add_disk(%struct.device* noundef %parent, %struct.gendisk* noundef %disk, %struct.attribute_group** noundef %groups) local_unnamed_addr #0 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_device = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 9
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 9
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  call void @elevator_init_mq(%struct.request_queue* noundef %1) #15
  %major = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 0
  %2 = load i32, i32* %major, align 8
  %tobool.not = icmp eq i32 %2, 0
  %minors28 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 2
  %3 = load i32, i32* %minors28, align 8
  %tobool29.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool29.not, label %if.then10, label %if.end20, !prof !8

if.then10:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/genhd.c\22; .popsection; .long 14472b - 14470b; .short 415; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !9
  br label %cleanup

if.end20:                                         ; preds = %if.then
  %cmp = icmp sgt i32 %3, 256
  br i1 %cmp, label %do.end, label %if.end61

do.end:                                           ; preds = %if.end20
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 noundef 256) #18
  store i32 256, i32* %minors28, align 8
  br label %if.end61

if.else:                                          ; preds = %entry
  br i1 %tobool29.not, label %if.end54, label %if.then42, !prof !10

if.then42:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/genhd.c\22; .popsection; .long 14472b - 14470b; .short 424; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !11
  br label %cleanup

if.end54:                                         ; preds = %if.else
  %call55 = call i32 @blk_alloc_ext_minor() #16
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %cleanup, label %if.end59

if.end59:                                         ; preds = %if.end54
  store i32 259, i32* %major, align 8
  %first_minor = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 1
  store i32 %call55, i32* %first_minor, align 4
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 11
  %4 = load i32, i32* %flags, align 8
  %or = or i32 %4, 64
  store i32 %or, i32* %flags, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.end20, %do.end, %if.end59
  %call62 = call i32 @disk_alloc_events(%struct.gendisk* noundef %disk) #15
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %out_free_ext_minor

if.end65:                                         ; preds = %if.end61
  call fastcc void @dev_set_uevent_suppress(%struct.device* noundef %bd_device, i32 noundef 1) #16
  %parent66 = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 9, i32 1
  store %struct.device* %parent, %struct.device** %parent66, align 8
  %groups67 = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 9, i32 32
  store %struct.attribute_group** %groups, %struct.attribute_group*** %groups67, align 8
  %arraydecay = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 3, i64 0
  %call68 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %bd_device, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef %arraydecay) #15
  %flags69 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 11
  %5 = load i32, i32* %flags69, align 8
  %and = and i32 %5, 1024
  %tobool70.not = icmp eq i32 %and, 0
  br i1 %tobool70.not, label %if.then71, label %if.end75

if.then71:                                        ; preds = %if.end65
  %6 = load i32, i32* %major, align 8
  %shl = shl i32 %6, 20
  %first_minor73 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 1
  %7 = load i32, i32* %first_minor73, align 4
  %or74 = or i32 %shl, %7
  %devt = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 9, i32 27
  store i32 %or74, i32* %devt, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.end65
  %call76 = call i32 @device_add(%struct.device* noundef %bd_device) #15
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %out_disk_release_events

if.end79:                                         ; preds = %if.end75
  %8 = load %struct.kobject*, %struct.kobject** @block_depr, align 8
  %kobj = getelementptr inbounds %struct.device, %struct.device* %bd_device, i64 0, i32 0
  %call81 = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #16
  %call82 = call i32 @sysfs_create_link(%struct.kobject* noundef %8, %struct.kobject* noundef %kobj, i8* noundef %call81) #15
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %out_device_del

if.end85:                                         ; preds = %if.end79
  %call91 = call %struct.kobject* @kobject_create_and_add(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), %struct.kobject* noundef %kobj) #15
  %9 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_holder_dir = getelementptr inbounds %struct.block_device, %struct.block_device* %9, i64 0, i32 13
  store %struct.kobject* %call91, %struct.kobject** %bd_holder_dir, align 8
  %10 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_holder_dir94 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i64 0, i32 13
  %11 = load %struct.kobject*, %struct.kobject** %bd_holder_dir94, align 8
  %tobool95.not = icmp eq %struct.kobject* %11, null
  br i1 %tobool95.not, label %out_del_integrity, label %if.end97

if.end97:                                         ; preds = %if.end85
  %call99 = call %struct.kobject* @kobject_create_and_add(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), %struct.kobject* noundef %kobj) #15
  %slave_dir = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 16
  store %struct.kobject* %call99, %struct.kobject** %slave_dir, align 8
  %tobool101.not = icmp eq %struct.kobject* %call99, null
  br i1 %tobool101.not, label %out_put_holder_dir, label %if.end103

if.end103:                                        ; preds = %if.end97
  %call109 = call i32 @blk_register_queue(%struct.gendisk* noundef %disk) #15
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %out_put_slave_dir

if.end112:                                        ; preds = %if.end103
  %12 = load i32, i32* %flags69, align 8
  %and114 = and i32 %12, 1024
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.else121, label %if.then116

if.then116:                                       ; preds = %if.end112
  %or120 = or i32 %12, 544
  store i32 %or120, i32* %flags69, align 8
  br label %if.end138

if.else121:                                       ; preds = %if.end112
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 15
  %13 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %14 = load i32, i32* %major, align 8
  %first_minor123 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 1
  %15 = load i32, i32* %first_minor123, align 4
  %call124 = call i32 (%struct.backing_dev_info*, i8*, ...) @bdi_register(%struct.backing_dev_info* noundef %13, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 noundef %14, i32 noundef %15) #15
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %out_unregister_queue

if.end127:                                        ; preds = %if.else121
  %16 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  call void @bdi_set_owner(%struct.backing_dev_info* noundef %16, %struct.device* noundef %bd_device) #15
  %17 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %dev = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %17, i64 0, i32 14
  %18 = load %struct.device*, %struct.device** %dev, align 8
  %kobj131 = getelementptr inbounds %struct.device, %struct.device* %18, i64 0, i32 0
  %call132 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj, %struct.kobject* noundef %kobj131, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #15
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %out_unregister_bdi

if.end135:                                        ; preds = %if.end127
  %19 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %devt137 = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 9, i32 27
  %20 = load i32, i32* %devt137, align 8
  call void @bdev_add(%struct.block_device* noundef %19, i32 noundef %20) #15
  call fastcc void @disk_scan_partitions(%struct.gendisk* noundef %disk) #16
  call fastcc void @dev_set_uevent_suppress(%struct.device* noundef %bd_device, i32 noundef 0) #16
  call void @disk_uevent(%struct.gendisk* noundef %disk, i32 noundef 0) #16
  br label %if.end138

if.end138:                                        ; preds = %if.end135, %if.then116
  call void @disk_update_readahead(%struct.gendisk* noundef %disk) #15
  call void @disk_add_events(%struct.gendisk* noundef %disk) #15
  br label %cleanup

out_unregister_bdi:                               ; preds = %if.end127
  %21 = load i32, i32* %flags69, align 8
  %and140 = and i32 %21, 1024
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.then142, label %out_unregister_queue

if.then142:                                       ; preds = %out_unregister_bdi
  %22 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  call void @bdi_unregister(%struct.backing_dev_info* noundef %22) #15
  br label %out_unregister_queue

out_unregister_queue:                             ; preds = %out_unregister_bdi, %if.then142, %if.else121
  %ret.0 = phi i32 [ %call124, %if.else121 ], [ %call132, %out_unregister_bdi ], [ %call132, %if.then142 ]
  call void @blk_unregister_queue(%struct.gendisk* noundef %disk) #15
  br label %out_put_slave_dir

out_put_slave_dir:                                ; preds = %if.end103, %out_unregister_queue
  %ret.1 = phi i32 [ %call109, %if.end103 ], [ %ret.0, %out_unregister_queue ]
  %23 = load %struct.kobject*, %struct.kobject** %slave_dir, align 8
  call void @kobject_put(%struct.kobject* noundef %23) #15
  br label %out_put_holder_dir

out_put_holder_dir:                               ; preds = %if.end97, %out_put_slave_dir
  %ret.2 = phi i32 [ %ret.1, %out_put_slave_dir ], [ 0, %if.end97 ]
  %24 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_holder_dir147 = getelementptr inbounds %struct.block_device, %struct.block_device* %24, i64 0, i32 13
  %25 = load %struct.kobject*, %struct.kobject** %bd_holder_dir147, align 8
  call void @kobject_put(%struct.kobject* noundef %25) #15
  br label %out_del_integrity

out_del_integrity:                                ; preds = %if.end85, %out_put_holder_dir
  %ret.3 = phi i32 [ %ret.2, %out_put_holder_dir ], [ 0, %if.end85 ]
  %26 = load %struct.kobject*, %struct.kobject** @block_depr, align 8
  %call148 = call fastcc i8* @dev_name(%struct.device* noundef %bd_device) #16
  call void @sysfs_remove_link(%struct.kobject* noundef %26, i8* noundef %call148) #15
  br label %out_device_del

out_device_del:                                   ; preds = %if.end79, %out_del_integrity
  %ret.5 = phi i32 [ %call82, %if.end79 ], [ %ret.3, %out_del_integrity ]
  call void @device_del(%struct.device* noundef %bd_device) #15
  br label %out_disk_release_events

out_disk_release_events:                          ; preds = %if.end75, %out_device_del
  %ret.6 = phi i32 [ %call76, %if.end75 ], [ %ret.5, %out_device_del ]
  call void @disk_release_events(%struct.gendisk* noundef %disk) #15
  br label %out_free_ext_minor

out_free_ext_minor:                               ; preds = %if.end61, %out_disk_release_events
  %ret.7 = phi i32 [ %call62, %if.end61 ], [ %ret.6, %out_disk_release_events ]
  %27 = load i32, i32* %major, align 8
  %cmp150 = icmp eq i32 %27, 259
  br i1 %cmp150, label %if.then152, label %if.end154

if.then152:                                       ; preds = %out_free_ext_minor
  %first_minor153 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 1
  %28 = load i32, i32* %first_minor153, align 4
  call void @blk_free_ext_minor(i32 noundef %28) #16
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %out_free_ext_minor
  %tobool156.not = icmp eq i32 %ret.7, 0
  br i1 %tobool156.not, label %cleanup, label %if.then169, !prof !10

if.then169:                                       ; preds = %if.end154
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/genhd.c\22; .popsection; .long 14472b - 14470b; .short 538; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.then10, %if.end154, %if.then169, %if.end54, %if.end138
  %retval.0 = phi i32 [ 0, %if.end138 ], [ -22, %if.then10 ], [ -22, %if.then42 ], [ %call55, %if.end54 ], [ 1, %if.then169 ], [ 0, %if.end154 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elevator_init_mq(%struct.request_queue* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @disk_alloc_events(%struct.gendisk* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @dev_set_uevent_suppress(%struct.device* nocapture noundef %dev, i32 noundef %val) unnamed_addr #8 {
entry:
  %uevent_suppress = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0, i32 7
  %0 = trunc i32 %val to i8
  %bf.load = load i8, i8* %uevent_suppress, align 4
  %bf.value = shl i8 %0, 4
  %bf.shl = and i8 %bf.value, 16
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %uevent_suppress, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(%struct.device* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #3 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_create_and_add(i8* noundef, %struct.kobject* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_register_queue(%struct.gendisk* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdi_register(%struct.backing_dev_info* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_set_owner(%struct.backing_dev_info* noundef, %struct.device* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdev_add(%struct.block_device* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @disk_scan_partitions(%struct.gendisk* noundef %disk) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @get_capacity(%struct.gendisk* noundef %disk) #16
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @disk_part_scan_enabled(%struct.gendisk* noundef %disk) #16
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 12
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %state) #16
  %call2 = call fastcc i32 @disk_devt(%struct.gendisk* noundef %disk) #16
  %call3 = call %struct.block_device* @blkdev_get_by_dev(i32 noundef %call2, i32 noundef 1, i8* noundef null) #15
  %0 = bitcast %struct.block_device* %call3 to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %0) #16
  br i1 %call4, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @blkdev_put(%struct.block_device* noundef %call3, i32 noundef 1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %entry, %lor.lhs.false
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_update_readahead(%struct.gendisk* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_add_events(%struct.gendisk* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_unregister(%struct.backing_dev_info* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_unregister_queue(%struct.gendisk* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(%struct.kobject* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #3 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(%struct.device* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_release_events(%struct.gendisk* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @del_gendisk(%struct.gendisk* noundef %disk) local_unnamed_addr #0 {
entry:
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 9
  %0 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call = call fastcc i1 @disk_live(%struct.gendisk* noundef %disk) #16
  br i1 %call, label %if.end21, label %land.rhs

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 11
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end21, !prof !8

if.then:                                          ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/genhd.c\22; .popsection; .long 14472b - 14470b; .short 567; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !13
  br label %cleanup

if.end21:                                         ; preds = %entry, %land.rhs
  call void @disk_del_events(%struct.gendisk* noundef %disk) #15
  %open_mutex = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 13
  call void @mutex_lock(%struct.mutex* noundef %open_mutex) #15
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %2 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %2, i64 0, i32 6
  %3 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  call fastcc void @remove_inode_hash(%struct.inode* noundef %3) #16
  call void @blk_drop_partitions(%struct.gendisk* noundef %disk) #15
  call void @mutex_unlock(%struct.mutex* noundef %open_mutex) #15
  %4 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %call24 = call i32 @fsync_bdev(%struct.block_device* noundef %4) #15
  %5 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %call26 = call i32 @__invalidate_device(%struct.block_device* noundef %5, i1 noundef true) #15
  %state = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 12
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %state) #16
  call void @set_capacity(%struct.gendisk* noundef %disk, i64 noundef 0) #16
  call void @blk_queue_start_drain(%struct.request_queue* noundef %0) #15
  %flags27 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 11
  %6 = load i32, i32* %flags27, align 8
  %and28 = and i32 %6, 1024
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end21
  %7 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %kobj = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i64 0, i32 9, i32 0
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #15
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 15
  %8 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  call void @bdi_unregister(%struct.backing_dev_info* noundef %8) #15
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end21
  call void @blk_unregister_queue(%struct.gendisk* noundef %disk) #15
  %9 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_holder_dir = getelementptr inbounds %struct.block_device, %struct.block_device* %9, i64 0, i32 13
  %10 = load %struct.kobject*, %struct.kobject** %bd_holder_dir, align 8
  call void @kobject_put(%struct.kobject* noundef %10) #15
  %slave_dir = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 16
  %11 = load %struct.kobject*, %struct.kobject** %slave_dir, align 8
  call void @kobject_put(%struct.kobject* noundef %11) #15
  %12 = load %struct.block_device*, %struct.block_device** %part0, align 8
  call fastcc void @part_stat_set_all(%struct.block_device* noundef %12) #16
  %13 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_stamp = getelementptr inbounds %struct.block_device, %struct.block_device* %13, i64 0, i32 2
  store i64 0, i64* %bd_stamp, align 8
  %14 = load %struct.kobject*, %struct.kobject** @block_depr, align 8
  %15 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_device37 = getelementptr inbounds %struct.block_device, %struct.block_device* %15, i64 0, i32 9
  %call38 = call fastcc i8* @dev_name(%struct.device* noundef %bd_device37) #16
  call void @sysfs_remove_link(%struct.kobject* noundef %14, i8* noundef %call38) #15
  %16 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_device42 = getelementptr inbounds %struct.block_device, %struct.block_device* %16, i64 0, i32 9
  call void @device_del(%struct.device* noundef %bd_device42) #15
  call void @blk_mq_freeze_queue_wait(%struct.request_queue* noundef %0) #15
  call void @rq_qos_exit(%struct.request_queue* noundef %0) #15
  call void @blk_sync_queue(%struct.request_queue* noundef %0) #15
  call void @blk_queue_flag_clear(i32 noundef 14, %struct.request_queue* noundef %0) #15
  call void @__blk_mq_unfreeze_queue(%struct.request_queue* noundef %0, i1 noundef true) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_del_events(%struct.gendisk* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @remove_inode_hash(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @inode_unhashed(%struct.inode* noundef %inode) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_hash = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 24
  %call1 = call fastcc i1 @hlist_fake(%struct.hlist_node* noundef %i_hash) #16
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__remove_inode_hash(%struct.inode* noundef %inode) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_drop_partitions(%struct.gendisk* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsync_bdev(%struct.block_device* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__invalidate_device(%struct.block_device* noundef, i1 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_start_drain(%struct.request_queue* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @part_stat_set_all(%struct.block_device* nocapture noundef readonly %part) unnamed_addr #0 {
entry:
  %call1 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call1, %0
  br i1 %cmp2, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call3 = phi i32 [ %call1, %do.body.lr.ph ], [ %call, %do.body ]
  %1 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %2 = ptrtoint %struct.disk_stats* %1 to i64
  %idxprom = sext i32 %call3 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to i8*
  %call2 = call i8* @memset(i8* noundef %4, i32 noundef 0, i64 noundef 152) #15
  %call = call i32 @cpumask_next(i32 noundef %call3, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue_wait(%struct.request_queue* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rq_qos_exit(%struct.request_queue* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_sync_queue(%struct.request_queue* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, %struct.request_queue* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_unfreeze_queue(%struct.request_queue* noundef, i1 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_request_module(i32 noundef %devt) local_unnamed_addr #0 {
entry:
  %shr = lshr i32 %devt, 20
  call void @mutex_lock(%struct.mutex* noundef nonnull @major_names_lock) #15
  %call = call fastcc i32 @major_to_index(i32 noundef %shr) #16
  %0 = zext i32 %call to i64
  %arrayidx = getelementptr [255 x %struct.blk_major_name*], [255 x %struct.blk_major_name*]* @major_names, i64 0, i64 %0
  %1 = load %struct.blk_major_name*, %struct.blk_major_name** %arrayidx, align 8
  %tobool.not24 = icmp eq %struct.blk_major_name* %1, null
  br i1 %tobool.not24, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %2 = phi %struct.blk_major_name* [ %5, %for.inc ], [ %1, %entry ]
  %major1 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %2, i64 0, i32 1
  %3 = load i32, i32* %major1, align 8
  %cmp = icmp eq i32 %3, %shr
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %probe = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %2, i64 0, i32 3
  %4 = load void (i32)*, void (i32)** %probe, align 8
  %tobool2.not = icmp eq void (i32)* %4, null
  br i1 %tobool2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %4(i32 noundef %devt) #15
  br label %cleanup

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %next = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %2, i64 0, i32 0
  %5 = load %struct.blk_major_name*, %struct.blk_major_name** %next, align 8
  %tobool.not = icmp eq %struct.blk_major_name* %5, null
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  call void @mutex_unlock(%struct.mutex* noundef nonnull @major_names_lock) #15
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @printk_all_partitions() local_unnamed_addr #9 section ".init.text" {
entry:
  %iter = alloca %struct.class_dev_iter, align 8
  %devt_buf = alloca [10 x i8], align 1
  %idx = alloca i64, align 8
  %0 = bitcast %struct.class_dev_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !14
  call void @class_dev_iter_init(%struct.class_dev_iter* noundef nonnull %iter, %struct.class* noundef nonnull @block_class, %struct.device* noundef null, %struct.device_type* noundef nonnull @disk_type) #15
  %call76 = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef nonnull %iter) #15
  %tobool.not77 = icmp eq %struct.device* %call76, null
  br i1 %tobool.not77, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* %devt_buf, i64 0, i64 0
  %2 = bitcast i64* %idx to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %call78 = phi %struct.device* [ %call76, %while.body.lr.ph ], [ %call, %cleanup ]
  %add.ptr = getelementptr %struct.device, %struct.device* %call78, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %3 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %4 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %1, i8 0, i64 10, i1 false), !annotation !14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #17
  store i64 0, i64* %idx, align 8, !annotation !14
  %call1 = call fastcc i64 @get_capacity(%struct.gendisk* noundef %4) #16
  %cmp = icmp eq i64 %call1, 0
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i64 0, i32 11
  %5 = load i32, i32* %flags, align 8
  %and = and i32 %5, 32
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call fastcc void @__rcu_read_lock() #15
  store i64 0, i64* %idx, align 8
  %part_tbl = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i64 0, i32 6
  %call3 = call i8* @xa_find(%struct.xarray* noundef %part_tbl, i64* noundef nonnull %idx, i64 noundef -1, i32 noundef 8) #15
  %tobool4.not73 = icmp eq i8* %call3, null
  br i1 %tobool4.not73, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %parent = getelementptr inbounds %struct.device, %struct.device* %call78, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %part.0.in74 = phi i8* [ %call3, %for.body.lr.ph ], [ %call48, %for.inc ]
  %part.075 = bitcast i8* %part.0.in74 to %struct.block_device*
  %call5 = call fastcc i64 @bdev_nr_sectors(%struct.block_device* noundef nonnull %part.075) #16
  %tobool6.not = icmp eq i64 %call5, 0
  br i1 %tobool6.not, label %for.inc, label %do.end11

do.end11:                                         ; preds = %for.body
  %call13 = call fastcc i1 @bdev_is_partition(%struct.block_device* noundef nonnull %part.075) #16
  %cond = select i1 %call13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0)
  %bd_dev = getelementptr inbounds i8, i8* %part.0.in74, i64 28
  %6 = bitcast i8* %bd_dev to i32*
  %7 = load i32, i32* %6, align 4
  %call14 = call fastcc i8* @bdevt_str(i32 noundef %7, i8* noundef nonnull %1) #16
  %call15 = call fastcc i64 @bdev_nr_sectors(%struct.block_device* noundef nonnull %part.075) #16
  %shr = lshr i64 %call15, 1
  %bd_meta_info = getelementptr inbounds i8, i8* %part.0.in74, i64 624
  %8 = bitcast i8* %bd_meta_info to %struct.partition_meta_info**
  %9 = load %struct.partition_meta_info*, %struct.partition_meta_info** %8, align 8
  %tobool16.not = icmp eq %struct.partition_meta_info* %9, null
  %arraydecay18 = getelementptr inbounds %struct.partition_meta_info, %struct.partition_meta_info* %9, i64 0, i32 0, i64 0
  %cond19 = select i1 %tobool16.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0), i8* %arraydecay18
  %call20 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* noundef %cond, i8* noundef nonnull %1, i64 noundef %shr, i8* noundef nonnull %part.0.in74, i8* noundef %cond19) #18
  %call21 = call fastcc i1 @bdev_is_partition(%struct.block_device* noundef nonnull %part.075) #16
  br i1 %call21, label %do.end25, label %if.else

do.end25:                                         ; preds = %do.end11
  %call27 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #18
  br label %for.inc

if.else:                                          ; preds = %do.end11
  %10 = load %struct.device*, %struct.device** %parent, align 8
  %tobool28.not = icmp eq %struct.device* %10, null
  br i1 %tobool28.not, label %do.end42, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %driver = getelementptr inbounds %struct.device, %struct.device* %10, i64 0, i32 6
  %11 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool30.not = icmp eq %struct.device_driver* %11, null
  br i1 %tobool30.not, label %do.end42, label %do.end34

do.end34:                                         ; preds = %land.lhs.true
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %11, i64 0, i32 0
  %12 = load i8*, i8** %name, align 8
  %call38 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* noundef %12) #18
  br label %for.inc

do.end42:                                         ; preds = %if.else, %land.lhs.true
  %call44 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #18
  br label %for.inc

for.inc:                                          ; preds = %do.end25, %do.end42, %do.end34, %for.body
  %call48 = call i8* @xa_find_after(%struct.xarray* noundef %part_tbl, i64* noundef nonnull %idx, i64 noundef -1, i32 noundef 8) #15
  %tobool4.not = icmp eq i8* %call48, null
  br i1 %tobool4.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  call fastcc void @rcu_read_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %while.body, %lor.lhs.false, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #17
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %1) #17
  %call = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef nonnull %iter) #15
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %entry
  call void @class_dev_iter_exit(%struct.class_dev_iter* noundef nonnull %iter) #15
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_dev_iter_init(%struct.class_dev_iter* noundef, %struct.class* noundef, %struct.device* noundef, %struct.device_type* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @bdevt_str(i32 noundef %devt, i8* noundef returned %buf) unnamed_addr #0 {
entry:
  %tbuf = alloca [10 x i8], align 1
  %shr = lshr i32 %devt, 20
  %cmp = icmp ult i32 %devt, 268435456
  %and = and i32 %devt, 1048575
  %cmp1 = icmp ult i32 %and, 256
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %tbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %0, i8 0, i64 10, i1 false), !annotation !14
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 10, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i32 noundef %shr, i32 noundef %and) #15
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef 10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* noundef nonnull %0) #15
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #17
  br label %if.end

if.else:                                          ; preds = %entry
  %call8 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef 10, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i32 noundef %shr, i32 noundef %and) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i8* %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_dev_iter_exit(%struct.class_dev_iter* noundef) local_unnamed_addr #6

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @genhd_device_init() #9 section ".init.text" {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @sysfs_dev_block_kobj, align 8
  store %struct.kobject* %0, %struct.kobject** getelementptr inbounds (%struct.class, %struct.class* @block_class, i64 0, i32 4), align 8
  %call = call i32 @__class_register(%struct.class* noundef nonnull @block_class, %struct.lock_class_key* noundef nonnull @genhd_device_init.__key) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !10

if.end:                                           ; preds = %entry
  %call3 = call i32 @blk_dev_init() #15
  %call4 = call i32 @__register_blkdev(i32 noundef 259, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), void (i32)* noundef null) #16
  %call5 = call %struct.kobject* @kobject_create_and_add(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %struct.kobject* noundef null) #15
  store %struct.kobject* %call5, %struct.kobject** @block_depr, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @part_size_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %0 = bitcast %struct.list_head* %add.ptr to %struct.block_device*
  %call = call fastcc i64 @bdev_nr_sectors(%struct.block_device* noundef %0) #16, !range !15
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i64 noundef %call) #15
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @part_stat_show(%struct.device* noundef %dev, %struct.device_attribute* nocapture readnone %attr, i8* noundef %buf) #0 {
entry:
  %stat = alloca %struct.disk_stats, align 8
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %0 = bitcast %struct.list_head* %add.ptr to %struct.block_device*
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %1 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %2 = load %struct.gendisk*, %struct.gendisk** %1, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 9
  %3 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %4 = bitcast %struct.disk_stats* %stat to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %4) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 152, i1 false), !annotation !14
  call fastcc void @part_stat_read_all(%struct.block_device* noundef %0, %struct.disk_stats* noundef nonnull %stat) #16
  %call = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef %3) #16
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @blk_mq_in_flight(%struct.request_queue* noundef %3, %struct.block_device* noundef %0) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call fastcc i32 @part_in_flight(%struct.block_device* noundef %0) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %inflight.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  %arrayidx = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 2, i64 0
  %5 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 3, i64 0
  %6 = load i64, i64* %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 1, i64 0
  %7 = load i64, i64* %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 0, i64 0
  %8 = load i64, i64* %arrayidx5, align 8
  %call6 = call fastcc i64 @div_u64(i64 noundef %8) #16
  %conv = trunc i64 %call6 to i32
  %arrayidx8 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 2, i64 1
  %9 = load i64, i64* %arrayidx8, align 8
  %arrayidx10 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 3, i64 1
  %10 = load i64, i64* %arrayidx10, align 8
  %arrayidx12 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 1, i64 1
  %11 = load i64, i64* %arrayidx12, align 8
  %arrayidx14 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 0, i64 1
  %12 = load i64, i64* %arrayidx14, align 8
  %call15 = call fastcc i64 @div_u64(i64 noundef %12) #16
  %conv16 = trunc i64 %call15 to i32
  %io_ticks = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 4
  %13 = load i64, i64* %io_ticks, align 8
  %call17 = call i32 @jiffies_to_msecs(i64 noundef %13) #15
  %14 = load i64, i64* %arrayidx5, align 8
  %15 = load i64, i64* %arrayidx14, align 8
  %add = add i64 %15, %14
  %arrayidx23 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 0, i64 2
  %16 = load i64, i64* %arrayidx23, align 8
  %add24 = add i64 %add, %16
  %arrayidx26 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 0, i64 3
  %17 = load i64, i64* %arrayidx26, align 8
  %add27 = add i64 %add24, %17
  %call28 = call fastcc i64 @div_u64(i64 noundef %add27) #16
  %conv29 = trunc i64 %call28 to i32
  %arrayidx31 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 2, i64 2
  %18 = load i64, i64* %arrayidx31, align 8
  %arrayidx33 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 3, i64 2
  %19 = load i64, i64* %arrayidx33, align 8
  %arrayidx35 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 1, i64 2
  %20 = load i64, i64* %arrayidx35, align 8
  %21 = load i64, i64* %arrayidx23, align 8
  %call38 = call fastcc i64 @div_u64(i64 noundef %21) #16
  %conv39 = trunc i64 %call38 to i32
  %arrayidx41 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 2, i64 3
  %22 = load i64, i64* %arrayidx41, align 8
  %23 = load i64, i64* %arrayidx26, align 8
  %call44 = call fastcc i64 @div_u64(i64 noundef %23) #16
  %conv45 = trunc i64 %call44 to i32
  %call46 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.23, i64 0, i64 0), i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %conv, i64 noundef %9, i64 noundef %10, i64 noundef %11, i32 noundef %conv16, i32 noundef %inflight.0, i32 noundef %call17, i32 noundef %conv29, i64 noundef %18, i64 noundef %19, i64 noundef %20, i32 noundef %conv39, i64 noundef %22, i32 noundef %conv45) #15
  %conv47 = sext i32 %call46 to i64
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %4) #17
  ret i64 %conv47
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @part_stat_read_all(%struct.block_device* nocapture noundef readonly %part, %struct.disk_stats* noundef %stat) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.disk_stats* %stat to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 152) #15
  %call159 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp60 = icmp ult i32 %call159, %1
  br i1 %cmp60, label %for.body.lr.ph, label %for.end32

for.body.lr.ph:                                   ; preds = %entry
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 1
  %io_ticks30 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 4
  %arrayidx16.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 1, i64 0
  %.pre = load i64, i64* %arrayidx16.phi.trans.insert, align 8
  %arrayidx22.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 2, i64 0
  %.pre63 = load i64, i64* %arrayidx22.phi.trans.insert, align 8
  %arrayidx28.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 3, i64 0
  %.pre64 = load i64, i64* %arrayidx28.phi.trans.insert, align 8
  %arrayidx10.1.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 0, i64 1
  %.pre65 = load i64, i64* %arrayidx10.1.phi.trans.insert, align 8
  %arrayidx16.1.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 1, i64 1
  %.pre66 = load i64, i64* %arrayidx16.1.phi.trans.insert, align 8
  %arrayidx22.1.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 2, i64 1
  %.pre67 = load i64, i64* %arrayidx22.1.phi.trans.insert, align 8
  %arrayidx28.1.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 3, i64 1
  %.pre68 = load i64, i64* %arrayidx28.1.phi.trans.insert, align 8
  %arrayidx10.2.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 0, i64 2
  %.pre69 = load i64, i64* %arrayidx10.2.phi.trans.insert, align 8
  %arrayidx16.2.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 1, i64 2
  %.pre70 = load i64, i64* %arrayidx16.2.phi.trans.insert, align 8
  %arrayidx22.2.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 2, i64 2
  %.pre71 = load i64, i64* %arrayidx22.2.phi.trans.insert, align 8
  %arrayidx28.2.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 3, i64 2
  %.pre72 = load i64, i64* %arrayidx28.2.phi.trans.insert, align 8
  %arrayidx10.3.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 0, i64 3
  %.pre73 = load i64, i64* %arrayidx10.3.phi.trans.insert, align 8
  %arrayidx16.3.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 1, i64 3
  %.pre74 = load i64, i64* %arrayidx16.3.phi.trans.insert, align 8
  %arrayidx22.3.phi.trans.insert = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 2, i64 3
  %.pre75 = load i64, i64* %arrayidx22.3.phi.trans.insert, align 8
  %arrayidx10 = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 0, i64 0
  %arrayidx28.3 = getelementptr %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 3, i64 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %2 = phi i64 [ %.pre75, %for.body.lr.ph ], [ %add23.3, %for.body ]
  %3 = phi i64 [ %.pre74, %for.body.lr.ph ], [ %add17.3, %for.body ]
  %4 = phi i64 [ %.pre73, %for.body.lr.ph ], [ %add11.3, %for.body ]
  %5 = phi i64 [ %.pre72, %for.body.lr.ph ], [ %add29.2, %for.body ]
  %6 = phi i64 [ %.pre71, %for.body.lr.ph ], [ %add23.2, %for.body ]
  %7 = phi i64 [ %.pre70, %for.body.lr.ph ], [ %add17.2, %for.body ]
  %8 = phi i64 [ %.pre69, %for.body.lr.ph ], [ %add11.2, %for.body ]
  %9 = phi i64 [ %.pre68, %for.body.lr.ph ], [ %add29.1, %for.body ]
  %10 = phi i64 [ %.pre67, %for.body.lr.ph ], [ %add23.1, %for.body ]
  %11 = phi i64 [ %.pre66, %for.body.lr.ph ], [ %add17.1, %for.body ]
  %12 = phi i64 [ %.pre65, %for.body.lr.ph ], [ %add11.1, %for.body ]
  %13 = phi i64 [ %.pre64, %for.body.lr.ph ], [ %add29, %for.body ]
  %14 = phi i64 [ %.pre63, %for.body.lr.ph ], [ %add23, %for.body ]
  %15 = phi i64 [ %.pre, %for.body.lr.ph ], [ %add17, %for.body ]
  %call161 = phi i32 [ %call159, %for.body.lr.ph ], [ %call1, %for.body ]
  %16 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %17 = ptrtoint %struct.disk_stats* %16 to i64
  %idxprom = sext i32 %call161 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %18 = load i64, i64* %arrayidx, align 8
  %add = add i64 %18, %17
  %19 = inttoptr i64 %add to %struct.disk_stats*
  %arrayidx7 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 0, i64 0
  %20 = load i64, i64* %arrayidx7, align 8
  %21 = load i64, i64* %arrayidx10, align 8
  %add11 = add i64 %21, %20
  store i64 %add11, i64* %arrayidx10, align 8
  %arrayidx13 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 1, i64 0
  %22 = load i64, i64* %arrayidx13, align 8
  %add17 = add i64 %15, %22
  store i64 %add17, i64* %arrayidx16.phi.trans.insert, align 8
  %arrayidx19 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 2, i64 0
  %23 = load i64, i64* %arrayidx19, align 8
  %add23 = add i64 %14, %23
  store i64 %add23, i64* %arrayidx22.phi.trans.insert, align 8
  %arrayidx25 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 3, i64 0
  %24 = load i64, i64* %arrayidx25, align 8
  %add29 = add i64 %13, %24
  store i64 %add29, i64* %arrayidx28.phi.trans.insert, align 8
  %arrayidx7.1 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 0, i64 1
  %25 = load i64, i64* %arrayidx7.1, align 8
  %add11.1 = add i64 %12, %25
  store i64 %add11.1, i64* %arrayidx10.1.phi.trans.insert, align 8
  %arrayidx13.1 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 1, i64 1
  %26 = load i64, i64* %arrayidx13.1, align 8
  %add17.1 = add i64 %11, %26
  store i64 %add17.1, i64* %arrayidx16.1.phi.trans.insert, align 8
  %arrayidx19.1 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 2, i64 1
  %27 = load i64, i64* %arrayidx19.1, align 8
  %add23.1 = add i64 %10, %27
  store i64 %add23.1, i64* %arrayidx22.1.phi.trans.insert, align 8
  %arrayidx25.1 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 3, i64 1
  %28 = load i64, i64* %arrayidx25.1, align 8
  %add29.1 = add i64 %9, %28
  store i64 %add29.1, i64* %arrayidx28.1.phi.trans.insert, align 8
  %arrayidx7.2 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 0, i64 2
  %29 = load i64, i64* %arrayidx7.2, align 8
  %add11.2 = add i64 %8, %29
  store i64 %add11.2, i64* %arrayidx10.2.phi.trans.insert, align 8
  %arrayidx13.2 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 1, i64 2
  %30 = load i64, i64* %arrayidx13.2, align 8
  %add17.2 = add i64 %7, %30
  store i64 %add17.2, i64* %arrayidx16.2.phi.trans.insert, align 8
  %arrayidx19.2 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 2, i64 2
  %31 = load i64, i64* %arrayidx19.2, align 8
  %add23.2 = add i64 %6, %31
  store i64 %add23.2, i64* %arrayidx22.2.phi.trans.insert, align 8
  %arrayidx25.2 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 3, i64 2
  %32 = load i64, i64* %arrayidx25.2, align 8
  %add29.2 = add i64 %5, %32
  store i64 %add29.2, i64* %arrayidx28.2.phi.trans.insert, align 8
  %arrayidx7.3 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 0, i64 3
  %33 = load i64, i64* %arrayidx7.3, align 8
  %add11.3 = add i64 %4, %33
  store i64 %add11.3, i64* %arrayidx10.3.phi.trans.insert, align 8
  %arrayidx13.3 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 1, i64 3
  %34 = load i64, i64* %arrayidx13.3, align 8
  %add17.3 = add i64 %3, %34
  store i64 %add17.3, i64* %arrayidx16.3.phi.trans.insert, align 8
  %arrayidx19.3 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 2, i64 3
  %35 = load i64, i64* %arrayidx19.3, align 8
  %add23.3 = add i64 %2, %35
  store i64 %add23.3, i64* %arrayidx22.3.phi.trans.insert, align 8
  %arrayidx25.3 = getelementptr %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 3, i64 3
  %36 = load i64, i64* %arrayidx25.3, align 8
  %37 = load i64, i64* %arrayidx28.3, align 8
  %add29.3 = add i64 %37, %36
  store i64 %add29.3, i64* %arrayidx28.3, align 8
  %io_ticks = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %19, i64 0, i32 4
  %38 = load i64, i64* %io_ticks, align 8
  %39 = load i64, i64* %io_ticks30, align 8
  %add31 = add i64 %39, %38
  store i64 %add31, i64* %io_ticks30, align 8
  %call1 = call i32 @cpumask_next(i32 noundef %call161, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %40 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %40
  br i1 %cmp, label %for.body, label %for.end32

for.end32:                                        ; preds = %for.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @queue_is_mq(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 5
  %0 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %tobool = icmp ne %struct.blk_mq_ops* %0, null
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_in_flight(%struct.request_queue* noundef, %struct.block_device* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i32 @part_in_flight(%struct.block_device* nocapture noundef readonly %part) unnamed_addr #11 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call37 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %cmp38 = icmp ult i32 %call37, %0
  br i1 %cmp38, label %do.body.lr.ph, label %for.end.thread

do.body.lr.ph:                                    ; preds = %entry
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 1
  %1 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %2 = ptrtoint %struct.disk_stats* %1 to i64
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call40 = phi i32 [ %call37, %do.body.lr.ph ], [ %call, %do.body ]
  %inflight.039 = phi i32 [ 0, %do.body.lr.ph ], [ %conv21, %do.body ]
  %idxprom = sext i32 %call40 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.disk_stats*
  %counter.i.i = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %4, i64 0, i32 5, i64 0, i32 0, i32 0
  %5 = load volatile i64, i64* %counter.i.i, align 8
  %counter.i.i36 = getelementptr %struct.disk_stats, %struct.disk_stats* %4, i64 0, i32 5, i64 1, i32 0, i32 0
  %6 = load volatile i64, i64* %counter.i.i36, align 8
  %add19 = add i64 %6, %5
  %7 = trunc i64 %add19 to i32
  %conv21 = add i32 %inflight.039, %7
  %call = call i32 @cpumask_next(i32 noundef %call40, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body
  %8 = icmp sgt i32 %conv21, 0
  %spec.select = select i1 %8, i32 %conv21, i32 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %entry
  %9 = phi i32 [ 0, %entry ], [ %spec.select, %for.end ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64(i64 noundef %dividend) unnamed_addr #12 {
entry:
  %remainder = alloca i32, align 4
  %0 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  %call = call fastcc i64 @div_u64_rem(i64 noundef %dividend, i32* noundef nonnull %remainder) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @part_inflight_show(%struct.device* noundef %dev, %struct.device_attribute* nocapture readnone %attr, i8* noundef %buf) #0 {
entry:
  %inflight = alloca i64, align 8, !annotation !14
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %0 = bitcast %struct.list_head* %add.ptr to %struct.block_device*
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %1 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %2 = load %struct.gendisk*, %struct.gendisk** %1, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 9
  %3 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %4 = bitcast i64* %inflight to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #17
  store i64 0, i64* %inflight, align 8, !annotation !14
  %call = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef %3) #16
  %arraydecay = bitcast i64* %inflight to i32*
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @blk_mq_in_flight_rw(%struct.request_queue* noundef %3, %struct.block_device* noundef %0, i32* noundef nonnull %arraydecay) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @part_in_flight_rw(%struct.block_device* noundef %0, i32* noundef nonnull %arraydecay) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx.pre-phi = bitcast i64* %inflight to i32*
  %tmpcast = bitcast i64* %inflight to [2 x i32]*, !annotation !14
  %5 = load i32, i32* %arrayidx.pre-phi, align 8
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1
  %6 = load i32, i32* %arrayidx2, align 4
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 noundef %5, i32 noundef %6) #15
  %conv = sext i32 %call3 to i64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #17
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_in_flight_rw(%struct.request_queue* noundef, %struct.block_device* noundef, i32* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @part_in_flight_rw(%struct.block_device* nocapture noundef readonly %part, i32* nocapture noundef %inflight) unnamed_addr #11 {
entry:
  store i32 0, i32* %inflight, align 4
  %arrayidx1 = getelementptr i32, i32* %inflight, i64 1
  store i32 0, i32* %arrayidx1, align 4
  %call55 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp56 = icmp ult i32 %call55, %0
  br i1 %cmp56, label %do.body.lr.ph, label %if.end37

do.body.lr.ph:                                    ; preds = %entry
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %1 = phi i32 [ 0, %do.body.lr.ph ], [ %conv8, %do.body ]
  %call58 = phi i32 [ %call55, %do.body.lr.ph ], [ %call, %do.body ]
  %storemerge57 = phi i32 [ 0, %do.body.lr.ph ], [ %conv27, %do.body ]
  %2 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %3 = ptrtoint %struct.disk_stats* %2 to i64
  %idxprom = sext i32 %call58 to i64
  %arrayidx3 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx3, align 8
  %add = add i64 %4, %3
  %5 = inttoptr i64 %add to %struct.disk_stats*
  %counter.i.i = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %5, i64 0, i32 5, i64 0, i32 0, i32 0
  %6 = load volatile i64, i64* %counter.i.i, align 8
  %7 = trunc i64 %6 to i32
  %conv8 = add i32 %1, %7
  store i32 %conv8, i32* %inflight, align 4
  %8 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %9 = ptrtoint %struct.disk_stats* %8 to i64
  %10 = load i64, i64* %arrayidx3, align 8
  %add19 = add i64 %10, %9
  %11 = inttoptr i64 %add19 to %struct.disk_stats*
  %counter.i.i54 = getelementptr %struct.disk_stats, %struct.disk_stats* %11, i64 0, i32 5, i64 1, i32 0, i32 0
  %12 = load volatile i64, i64* %counter.i.i54, align 8
  %13 = trunc i64 %12 to i32
  %conv27 = add i32 %storemerge57, %13
  store i32 %conv27, i32* %arrayidx1, align 4
  %call = call i32 @cpumask_next(i32 noundef %call58, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %14 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %14
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body
  %phi.cmp = icmp slt i32 %conv8, 0
  br i1 %phi.cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, i32* %inflight, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %cmp33 = icmp slt i32 %conv27, 0
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end
  store i32 0, i32* %arrayidx1, align 4
  br label %if.end37

if.end37:                                         ; preds = %entry, %if.then35, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @block_uevent(%struct.device* nocapture noundef readonly %dev, %struct.kobj_uevent_env* noundef %env) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %diskseq = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 23
  %2 = load i64, i64* %diskseq, align 8
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i64 noundef %2) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @block_devnode(%struct.device* nocapture noundef readonly %dev, i16* noundef %mode, %struct.kuid_t* nocapture noundef readnone %uid, %struct.kgid_t* nocapture noundef readnone %gid) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 8
  %2 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %devnode = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %2, i64 0, i32 12
  %3 = load i8* (%struct.gendisk*, i16*)*, i8* (%struct.gendisk*, i16*)** %devnode, align 8
  %tobool.not = icmp eq i8* (%struct.gendisk*, i16*)* %3, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* %3(%struct.gendisk* noundef %1, i16* noundef %mode) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @disk_release(%struct.device* nocapture noundef readonly %dev) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %call = call fastcc i1 @disk_live(%struct.gendisk* noundef %1) #16
  br i1 %call, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/genhd.c\22; .popsection; .long 14472b - 14470b; .short 1083; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @disk_release_events(%struct.gendisk* noundef %1) #15
  %random = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 17
  %2 = bitcast %struct.timer_rand_state** %random to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #15
  %part_tbl = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 6
  call void @xa_destroy(%struct.xarray* noundef %part_tbl) #15
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 9
  %4 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %disk21 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %4, i64 0, i32 15
  store %struct.gendisk* null, %struct.gendisk** %disk21, align 8
  %5 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  call void @blk_put_queue(%struct.request_queue* noundef %5) #15
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 7
  %6 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %6, i64 0, i32 6
  %7 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  call void @iput(%struct.inode* noundef %7) #15
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @proc_genhd_init() #9 section ".init.text" {
entry:
  %call = call %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i16 noundef 0, %struct.proc_dir_entry* noundef null, %struct.seq_operations* noundef nonnull @diskstats_op, i32 noundef 0, i8* noundef null) #15
  %call1 = call %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0), i16 noundef 0, %struct.proc_dir_entry* noundef null, %struct.seq_operations* noundef nonnull @partitions_op, i32 noundef 0, i8* noundef null) #15
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @part_devt(%struct.gendisk* noundef %disk, i8 noundef %partno) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #15
  %part_tbl = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 6
  %conv = zext i8 %partno to i64
  %call = call i8* @xa_load(%struct.xarray* noundef %part_tbl, i64 noundef %conv) #15
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %bd_dev = getelementptr inbounds i8, i8* %call, i64 28
  %0 = bitcast i8* %bd_dev to i32*
  %1 = load i32, i32* %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %devt.0 = phi i32 [ %1, %if.then ], [ 0, %entry ]
  call fastcc void @rcu_read_unlock() #16
  ret i32 %devt.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_load(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_lookup_devt(i8* noundef %name, i32 noundef %partno) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.class_dev_iter, align 8
  %0 = bitcast %struct.class_dev_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !14
  call void @class_dev_iter_init(%struct.class_dev_iter* noundef nonnull %iter, %struct.class* noundef nonnull @block_class, %struct.device* noundef null, %struct.device_type* noundef nonnull @disk_type) #15
  %conv = trunc i32 %partno to i8
  %call30 = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef nonnull %iter) #15
  %tobool.not31 = icmp eq %struct.device* %call30, null
  br i1 %tobool.not31, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %call33 = phi %struct.device* [ %call, %cleanup ], [ %call30, %entry ]
  %devt.032 = phi i32 [ %devt.2, %cleanup ], [ 0, %entry ]
  %add.ptr = getelementptr %struct.device, %struct.device* %call33, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %1 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %2 = load %struct.gendisk*, %struct.gendisk** %1, align 8
  %call1 = call fastcc i8* @dev_name(%struct.device* noundef nonnull %call33) #16
  %call2 = call i32 @strcmp(i8* noundef %call1, i8* noundef %name) #15
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %while.body
  %minors = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 2
  %3 = load i32, i32* %minors, align 8
  %cmp = icmp sgt i32 %3, %partno
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %devt5 = getelementptr inbounds %struct.device, %struct.device* %call33, i64 0, i32 27
  %4 = load i32, i32* %devt5, align 8
  %shr = and i32 %4, -1048576
  %and = and i32 %4, 1048575
  %add = add i32 %and, %partno
  %or = or i32 %add, %shr
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call7 = call i32 @part_devt(%struct.gendisk* noundef %2, i8 noundef %conv) #16
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %while.end

cleanup:                                          ; preds = %if.then4, %if.else, %while.body
  %devt.2 = phi i32 [ %devt.032, %while.body ], [ %or, %if.then4 ], [ 0, %if.else ]
  %call = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef nonnull %iter) #15
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %if.else, %entry
  %devt.3 = phi i32 [ 0, %entry ], [ %call7, %if.else ], [ %devt.2, %cleanup ]
  call void @class_dev_iter_exit(%struct.class_dev_iter* noundef nonnull %iter) #15
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #17
  ret i32 %devt.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.gendisk* @__alloc_disk_node(%struct.request_queue* noundef %q, i32 noundef %node_id, %struct.lock_class_key* nocapture readnone %lkclass) local_unnamed_addr #0 {
entry:
  %call = call i1 @blk_get_queue(%struct.request_queue* noundef %q) #15
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @kzalloc_node() #16
  %0 = bitcast i8* %call1 to %struct.gendisk*
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %out_put_queue, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call %struct.backing_dev_info* @bdi_alloc(i32 noundef %node_id) #15
  %bdi = getelementptr inbounds i8, i8* %call1, i64 152
  %1 = bitcast i8* %bdi to %struct.backing_dev_info**
  store %struct.backing_dev_info* %call4, %struct.backing_dev_info** %1, align 8
  %tobool6.not = icmp eq %struct.backing_dev_info* %call4, null
  br i1 %tobool6.not, label %out_free_disk, label %if.end8

if.end8:                                          ; preds = %if.end3
  %call9 = call %struct.block_device* @bdev_alloc(%struct.gendisk* noundef nonnull %0, i8 noundef 0) #15
  %part0 = getelementptr inbounds i8, i8* %call1, i64 64
  %2 = bitcast i8* %part0 to %struct.block_device**
  store %struct.block_device* %call9, %struct.block_device** %2, align 8
  %tobool11.not = icmp eq %struct.block_device* %call9, null
  br i1 %tobool11.not, label %out_free_bdi, label %if.end13

if.end13:                                         ; preds = %if.end8
  %node_id14 = getelementptr inbounds i8, i8* %call1, i64 192
  %3 = bitcast i8* %node_id14 to i32*
  store i32 %node_id, i32* %3, align 8
  %open_mutex = getelementptr inbounds i8, i8* %call1, i64 112
  %4 = bitcast i8* %open_mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @__alloc_disk_node.__key) #15
  %part_tbl = getelementptr inbounds i8, i8* %call1, i64 48
  %5 = bitcast i8* %part_tbl to %struct.xarray*
  call fastcc void @xa_init(%struct.xarray* noundef %5) #16
  %6 = bitcast i8* %part0 to i8**
  %7 = load i8*, i8** %6, align 8
  %call17 = call fastcc i32 @xa_insert(%struct.xarray* noundef %5, i8* noundef %7) #16
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %out_destroy_part_tbl

if.end20:                                         ; preds = %if.end13
  call void @rand_initialize_disk(%struct.gendisk* noundef nonnull %0) #15
  %8 = load %struct.block_device*, %struct.block_device** %2, align 8
  %class = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i64 0, i32 9, i32 31
  store %struct.class* @block_class, %struct.class** %class, align 8
  %9 = load %struct.block_device*, %struct.block_device** %2, align 8
  %type = getelementptr inbounds %struct.block_device, %struct.block_device* %9, i64 0, i32 9, i32 4
  store %struct.device_type* @disk_type, %struct.device_type** %type, align 8
  %10 = load %struct.block_device*, %struct.block_device** %2, align 8
  %bd_device25 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i64 0, i32 9
  call void @device_initialize(%struct.device* noundef %bd_device25) #15
  call void @inc_diskseq(%struct.gendisk* noundef nonnull %0) #16
  %queue = getelementptr inbounds i8, i8* %call1, i64 80
  %11 = bitcast i8* %queue to %struct.request_queue**
  store %struct.request_queue* %q, %struct.request_queue** %11, align 8
  %disk26 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 15
  %12 = bitcast %struct.gendisk** %disk26 to i8**
  store i8* %call1, i8** %12, align 8
  br label %cleanup

out_destroy_part_tbl:                             ; preds = %if.end13
  call void @xa_destroy(%struct.xarray* noundef %5) #15
  %13 = load %struct.block_device*, %struct.block_device** %2, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %13, i64 0, i32 16
  store %struct.gendisk* null, %struct.gendisk** %bd_disk, align 8
  %14 = load %struct.block_device*, %struct.block_device** %2, align 8
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %14, i64 0, i32 6
  %15 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  call void @iput(%struct.inode* noundef %15) #15
  br label %out_free_bdi

out_free_bdi:                                     ; preds = %if.end8, %out_destroy_part_tbl
  %16 = load %struct.backing_dev_info*, %struct.backing_dev_info** %1, align 8
  call void @bdi_put(%struct.backing_dev_info* noundef %16) #15
  br label %out_free_disk

out_free_disk:                                    ; preds = %if.end3, %out_free_bdi
  call void @kfree(i8* noundef nonnull %call1) #15
  br label %out_put_queue

out_put_queue:                                    ; preds = %if.end, %out_free_disk
  call void @blk_put_queue(%struct.request_queue* noundef %q) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_put_queue, %if.end20
  %retval.0 = phi %struct.gendisk* [ null, %out_put_queue ], [ %0, %if.end20 ], [ null, %entry ]
  ret %struct.gendisk* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @blk_get_queue(%struct.request_queue* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc_node() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 8), align 8
  %call.i.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #15
  ret i8* %call.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.backing_dev_info* @bdi_alloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @bdev_alloc(%struct.gendisk* noundef, i8 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xa_init(%struct.xarray* nocapture noundef writeonly %xa) unnamed_addr #2 {
entry:
  call fastcc void @xa_init_flags(%struct.xarray* noundef %xa) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @xa_insert(%struct.xarray* noundef %xa, i8* noundef %entry1) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %call = call i32 @__xa_insert(%struct.xarray* noundef %xa, i64 noundef 0, i8* noundef %entry1, i32 noundef 3264) #15
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rand_initialize_disk(%struct.gendisk* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(%struct.device* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inc_diskseq(%struct.gendisk* nocapture noundef writeonly %disk) local_unnamed_addr #0 {
entry:
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return() #15
  %diskseq = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 23
  store i64 %call.i.i.i, i64* %diskseq, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(%struct.xarray* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_put(%struct.backing_dev_info* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_put_queue(%struct.request_queue* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.gendisk* @__blk_alloc_disk(i32 noundef %node, %struct.lock_class_key* nocapture noundef readnone %lkclass) local_unnamed_addr #0 {
entry:
  %call = call %struct.request_queue* @blk_alloc_queue(i32 noundef %node) #15
  %tobool.not = icmp eq %struct.request_queue* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.gendisk* @__alloc_disk_node(%struct.request_queue* noundef nonnull %call, i32 noundef %node, %struct.lock_class_key* undef) #16
  %tobool2.not = icmp eq %struct.gendisk* %call1, null
  br i1 %tobool2.not, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  call void @blk_cleanup_queue(%struct.request_queue* noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi %struct.gendisk* [ null, %if.then3 ], [ null, %entry ], [ %call1, %if.end ]
  ret %struct.gendisk* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.request_queue* @blk_alloc_queue(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(%struct.request_queue* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @put_disk(%struct.gendisk* noundef readonly %disk) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.gendisk* %disk, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_device = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 9
  call void @put_device(%struct.device* noundef %bd_device) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_cleanup_disk(%struct.gendisk* noundef %disk) local_unnamed_addr #0 {
entry:
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 9
  %0 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  call void @blk_cleanup_queue(%struct.request_queue* noundef %0) #15
  call void @put_disk(%struct.gendisk* noundef %disk) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_disk_ro(%struct.gendisk* noundef %disk, i1 noundef %read_only) local_unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 12
  br i1 %read_only, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @test_and_set_bit(i64* noundef %state) #16
  br i1 %call, label %return, label %if.end6

if.else:                                          ; preds = %entry
  %call3 = call fastcc i1 @test_and_clear_bit(i64* noundef %state) #16
  br i1 %call3, label %if.end6, label %return

if.end6:                                          ; preds = %if.else, %if.then
  %conv = zext i1 %read_only to i32
  call fastcc void @set_disk_ro_uevent(%struct.gendisk* noundef %disk, i32 noundef %conv) #16
  br label %return

return:                                           ; preds = %if.else, %if.then, %if.end6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 2
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %1) #15
  %2 = and i64 %call.i.i.i, 2
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 2
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %1) #15
  %2 = and i64 %call.i.i.i, 2
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_disk_ro_uevent(%struct.gendisk* nocapture noundef readonly %gd, i32 noundef %ro) unnamed_addr #0 {
entry:
  %event = alloca [10 x i8], align 1
  %envp = alloca [2 x i8*], align 8
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %event, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %0, i8* noundef align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @__const.set_disk_ro_uevent.event, i64 0, i64 0), i64 10, i1 false)
  %1 = bitcast [2 x i8*]* %envp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #17
  %arrayinit.begin = getelementptr inbounds [2 x i8*], [2 x i8*]* %envp, i64 0, i64 0
  store i8* %0, i8** %arrayinit.begin, align 8
  %arrayinit.element = getelementptr inbounds [2 x i8*], [2 x i8*]* %envp, i64 0, i64 1
  store i8* null, i8** %arrayinit.element, align 8
  %tobool.not = icmp eq i32 %ro, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %event, i64 0, i64 8
  store i8 48, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %gd, i64 0, i32 7
  %2 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %kobj = getelementptr inbounds %struct.block_device, %struct.block_device* %2, i64 0, i32 9, i32 0
  %call = call i32 @kobject_uevent_env(%struct.kobject* noundef %kobj, i32 noundef 2, i8** noundef nonnull %arrayinit.begin) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @bdev_read_only(%struct.block_device* nocapture noundef readonly %bdev) local_unnamed_addr #13 {
entry:
  %bd_read_only = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 3
  %0 = load i8, i8* %bd_read_only, align 8, !range !17
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %call = call fastcc i32 @get_disk_ro(%struct.gendisk* noundef %1) #16
  %tobool1 = icmp ne i32 %call, 0
  %phi.cast = zext i1 %tobool1 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @get_disk_ro(%struct.gendisk* noundef %disk) unnamed_addr #13 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_read_only = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 3
  %1 = load i8, i8* %bd_read_only, align 8, !range !17
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 12
  %2 = load volatile i64, i64* %state, align 8
  %3 = trunc i64 %2 to i32
  %4 = lshr i32 %3, 1
  %5 = and i32 %4, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i32 [ 1, %entry ], [ %5, %lor.rhs ]
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #17, !srcloc !19
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #17, !srcloc !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @inode_unhashed(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %i_hash = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 24
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %i_hash) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #3 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  call void @rcu_read_unlock_strict() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @disk_part_scan_enabled(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @disk_max_parts(%struct.gendisk* noundef %disk) #16
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 11
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 512
  %tobool.not = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool.not, %land.rhs ]
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @blkdev_get_by_dev(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @disk_devt(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #3 {
entry:
  %major = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 0
  %0 = load i32, i32* %major, align 8
  %shl = shl i32 %0, 20
  %first_minor = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 1
  %1 = load i32, i32* %first_minor, align 4
  %or = or i32 %shl, %1
  ret i32 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(%struct.block_device* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @disk_max_parts(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 11
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %minors = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 2
  %1 = load i32, i32* %minors, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ 256, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @hlist_fake(%struct.hlist_node* noundef readonly %h) unnamed_addr #3 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  %cmp = icmp eq %struct.hlist_node** %0, %next
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__remove_inode_hash(%struct.inode* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !24
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(%struct.class* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_dev_init() local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64_rem(i64 noundef %dividend, i32* nocapture noundef writeonly %remainder) unnamed_addr #2 {
entry:
  %div = udiv i64 %dividend, 1000000
  %0 = mul i64 %div, 1000000
  %rem.decomposed = sub i64 %dividend, %0
  %conv1 = trunc i64 %rem.decomposed to i32
  store i32 %conv1, i32* %remainder, align 4
  ret i64 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i16 @disk_visible(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute* noundef readonly %a, i32 noundef %n) #3 {
entry:
  %cmp = icmp eq %struct.attribute* %a, getelementptr inbounds ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }, { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_badblocks, i64 0, i32 0)
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %bd_disk = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 7, i32 6
  %0 = bitcast %struct.kref* %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %bb = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 21
  %2 = load %struct.badblocks*, %struct.badblocks** %bb, align 8
  %tobool.not = icmp eq %struct.badblocks* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %a, i64 0, i32 1
  %3 = load i16, i16* %mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i16 [ %3, %if.end ], [ 0, %land.lhs.true ]
  ret i16 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @disk_badblocks_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %page) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %bb = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 21
  %2 = load %struct.badblocks*, %struct.badblocks** %bb, align 8
  %tobool.not = icmp eq %struct.badblocks* %2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #15
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i64 @badblocks_show(%struct.badblocks* noundef nonnull %2, i8* noundef %page, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %call2, %if.end ], [ %conv, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @disk_badblocks_store(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %page, i64 noundef %len) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %bb = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 21
  %2 = load %struct.badblocks*, %struct.badblocks** %bb, align 8
  %tobool.not = icmp eq %struct.badblocks* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @badblocks_store(%struct.badblocks* noundef nonnull %2, i8* noundef %page, i64 noundef %len, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ -6, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @badblocks_show(%struct.badblocks* noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @badblocks_store(%struct.badblocks* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @disk_range_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %minors = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 2
  %2 = load i32, i32* %minors, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i32 noundef %2) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @disk_ext_range_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %call = call fastcc i32 @disk_max_parts(%struct.gendisk* noundef %1) #16
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i32 noundef %call) #15
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @disk_removable_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 11
  %2 = load i32, i32* %flags, align 8
  %and = and i32 %2, 1
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i32 noundef %and) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @disk_hidden_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 11
  %2 = load i32, i32* %flags, align 8
  %and = lshr i32 %2, 10
  %and.lobit = and i32 %and, 1
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i32 noundef %and.lobit) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @disk_ro_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %call = call fastcc i32 @get_disk_ro(%struct.gendisk* noundef %1) #16
  %tobool.not = icmp ne i32 %call, 0
  %cond = zext i1 %tobool.not to i32
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i32 noundef %cond) #15
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @disk_alignment_offset_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 9
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call = call fastcc i32 @queue_alignment_offset(%struct.request_queue* noundef %2) #16
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i32 noundef %call) #15
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_alignment_offset(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %misaligned = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 24
  %0 = load i8, i8* %misaligned, align 2
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %alignment_offset = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 10
  %1 = load i32, i32* %alignment_offset, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @disk_discard_alignment_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 9
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call = call fastcc i32 @queue_discard_alignment(%struct.request_queue* noundef %2) #16
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i32 noundef %call) #15
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_discard_alignment(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %discard_misaligned = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 25
  %0 = load i8, i8* %discard_misaligned, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %discard_alignment = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 19
  %1 = load i32, i32* %discard_alignment, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @disk_capability_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 11
  %2 = load i32, i32* %flags, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i32 noundef %2) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @diskseq_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %diskseq = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 23
  %2 = load i64, i64* %diskseq, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i64 noundef %2) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, %struct.seq_operations* noundef, i32 noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @disk_seqf_start(%struct.seq_file* nocapture noundef writeonly %seqf, i64* nocapture noundef readonly %pos) #0 {
entry:
  %0 = load i64, i64* %pos, align 8
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef 3264) #15
  %2 = bitcast i8* %call.i.i to %struct.class_dev_iter*
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %seqf, i64 0, i32 11
  store i8* %call.i.i, i8** %private, align 8
  call void @class_dev_iter_init(%struct.class_dev_iter* noundef nonnull %2, %struct.class* noundef nonnull @block_class, %struct.device* noundef null, %struct.device_type* noundef nonnull @disk_type) #15
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %skip.0 = phi i64 [ %0, %if.end ], [ %dec, %do.cond ]
  %call2 = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef nonnull %2) #15
  %tobool3.not = icmp eq %struct.device* %call2, null
  br i1 %tobool3.not, label %cleanup, label %do.cond

do.cond:                                          ; preds = %do.body
  %dec = add i64 %skip.0, -1
  %tobool6.not = icmp eq i64 %skip.0, 0
  br i1 %tobool6.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  %add.ptr = getelementptr %struct.device, %struct.device* %call2, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %3 = bitcast %struct.list_head** %bd_disk to i8**
  %4 = load i8*, i8** %3, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry, %do.end
  %retval.0 = phi i8* [ %4, %do.end ], [ inttoptr (i64 -12 to i8*), %entry ], [ null, %do.body ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @disk_seqf_stop(%struct.seq_file* nocapture noundef %seqf, i8* nocapture noundef readnone %v) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %seqf, i64 0, i32 11
  %0 = load i8*, i8** %private, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i8* %0 to %struct.class_dev_iter*
  call void @class_dev_iter_exit(%struct.class_dev_iter* noundef nonnull %1) #15
  call void @kfree(i8* noundef nonnull %0) #15
  store i8* null, i8** %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @disk_seqf_next(%struct.seq_file* nocapture noundef readonly %seqf, i8* nocapture noundef readnone %v, i64* nocapture noundef %pos) #0 {
entry:
  %0 = load i64, i64* %pos, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %pos, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %seqf, i64 0, i32 11
  %1 = bitcast i8** %private to %struct.class_dev_iter**
  %2 = load %struct.class_dev_iter*, %struct.class_dev_iter** %1, align 8
  %call = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef %2) #15
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.device, %struct.device* %call, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %3 = bitcast %struct.list_head** %bd_disk to i8**
  %4 = load i8*, i8** %3, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %4, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @diskstats_show(%struct.seq_file* noundef %seqf, i8* noundef %v) #0 {
entry:
  %stat = alloca %struct.disk_stats, align 8
  %idx = alloca i64, align 8
  %0 = bitcast %struct.disk_stats* %stat to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false), !annotation !14
  %1 = bitcast i64* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  call fastcc void @__rcu_read_lock() #15
  store i64 0, i64* %idx, align 8
  %part_tbl = getelementptr inbounds i8, i8* %v, i64 48
  %2 = bitcast i8* %part_tbl to %struct.xarray*
  %call = call i8* @xa_find(%struct.xarray* noundef %2, i64* noundef nonnull %idx, i64 noundef -1, i32 noundef 8) #15
  %tobool.not71 = icmp eq i8* %call, null
  br i1 %tobool.not71, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %queue = getelementptr inbounds i8, i8* %v, i64 80
  %3 = bitcast i8* %queue to %struct.request_queue**
  %arrayidx = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 2, i64 0
  %arrayidx11 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 3, i64 0
  %arrayidx12 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 1, i64 0
  %arrayidx13 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 0, i64 0
  %arrayidx16 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 2, i64 1
  %arrayidx18 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 3, i64 1
  %arrayidx20 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 1, i64 1
  %arrayidx22 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 0, i64 1
  %io_ticks = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 4
  %arrayidx31 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 0, i64 2
  %arrayidx34 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 0, i64 3
  %arrayidx39 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 2, i64 2
  %arrayidx41 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 3, i64 2
  %arrayidx43 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 1, i64 2
  %arrayidx49 = getelementptr inbounds %struct.disk_stats, %struct.disk_stats* %stat, i64 0, i32 2, i64 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %hd.0.in72 = phi i8* [ %call, %for.body.lr.ph ], [ %call55, %for.inc ]
  %hd.073 = bitcast i8* %hd.0.in72 to %struct.block_device*
  %call1 = call fastcc i1 @bdev_is_partition(%struct.block_device* noundef nonnull %hd.073) #16
  br i1 %call1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %call2 = call fastcc i64 @bdev_nr_sectors(%struct.block_device* noundef nonnull %hd.073) #16
  %tobool3.not = icmp eq i64 %call2, 0
  br i1 %tobool3.not, label %for.inc, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  call fastcc void @part_stat_read_all(%struct.block_device* noundef nonnull %hd.073, %struct.disk_stats* noundef nonnull %stat) #16
  %4 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %call4 = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef %4) #16
  br i1 %call4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %call7 = call i32 @blk_mq_in_flight(%struct.request_queue* noundef %4, %struct.block_device* noundef nonnull %hd.073) #15
  br label %if.end9

if.else:                                          ; preds = %if.end
  %call8 = call fastcc i32 @part_in_flight(%struct.block_device* noundef nonnull %hd.073) #16
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %inflight.0 = phi i32 [ %call7, %if.then5 ], [ %call8, %if.else ]
  %bd_dev = getelementptr inbounds i8, i8* %hd.0.in72, i64 28
  %5 = bitcast i8* %bd_dev to i32*
  %6 = load i32, i32* %5, align 4
  %shr = lshr i32 %6, 20
  %and = and i32 %6, 1048575
  %7 = load i64, i64* %arrayidx, align 8
  %8 = load i64, i64* %arrayidx11, align 8
  %9 = load i64, i64* %arrayidx12, align 8
  %10 = load i64, i64* %arrayidx13, align 8
  %call14 = call fastcc i64 @div_u64(i64 noundef %10) #16
  %conv = trunc i64 %call14 to i32
  %11 = load i64, i64* %arrayidx16, align 8
  %12 = load i64, i64* %arrayidx18, align 8
  %13 = load i64, i64* %arrayidx20, align 8
  %14 = load i64, i64* %arrayidx22, align 8
  %call23 = call fastcc i64 @div_u64(i64 noundef %14) #16
  %conv24 = trunc i64 %call23 to i32
  %15 = load i64, i64* %io_ticks, align 8
  %call25 = call i32 @jiffies_to_msecs(i64 noundef %15) #15
  %16 = load i64, i64* %arrayidx13, align 8
  %17 = load i64, i64* %arrayidx22, align 8
  %add = add i64 %17, %16
  %18 = load i64, i64* %arrayidx31, align 8
  %add32 = add i64 %add, %18
  %19 = load i64, i64* %arrayidx34, align 8
  %add35 = add i64 %add32, %19
  %call36 = call fastcc i64 @div_u64(i64 noundef %add35) #16
  %conv37 = trunc i64 %call36 to i32
  %20 = load i64, i64* %arrayidx39, align 8
  %21 = load i64, i64* %arrayidx41, align 8
  %22 = load i64, i64* %arrayidx43, align 8
  %23 = load i64, i64* %arrayidx31, align 8
  %call46 = call fastcc i64 @div_u64(i64 noundef %23) #16
  %conv47 = trunc i64 %call46 to i32
  %24 = load i64, i64* %arrayidx49, align 8
  %25 = load i64, i64* %arrayidx34, align 8
  %call52 = call fastcc i64 @div_u64(i64 noundef %25) #16
  %conv53 = trunc i64 %call52 to i32
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seqf, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.64, i64 0, i64 0), i32 noundef %shr, i32 noundef %and, i8* noundef nonnull %hd.0.in72, i64 noundef %7, i64 noundef %8, i64 noundef %9, i32 noundef %conv, i64 noundef %11, i64 noundef %12, i64 noundef %13, i32 noundef %conv24, i32 noundef %inflight.0, i32 noundef %call25, i32 noundef %conv37, i64 noundef %20, i64 noundef %21, i64 noundef %22, i32 noundef %conv47, i64 noundef %24, i32 noundef %conv53) #15
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end9
  %call55 = call i8* @xa_find_after(%struct.xarray* noundef %2, i64* noundef nonnull %idx, i64 noundef -1, i32 noundef 8) #15
  %tobool.not = icmp eq i8* %call55, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call fastcc void @rcu_read_unlock() #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %0) #17
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @show_partition_start(%struct.seq_file* noundef %seqf, i64* nocapture noundef readonly %pos) #0 {
entry:
  %call = call i8* @disk_seqf_start(%struct.seq_file* noundef %seqf, i64* noundef %pos) #16
  %call1 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %call) #16
  br i1 %call1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load i64, i64* %pos, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @seq_puts(%struct.seq_file* noundef %seqf, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i64 0, i64 0)) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @show_partition(%struct.seq_file* noundef %seqf, i8* noundef %v) #0 {
entry:
  %idx = alloca i64, align 8
  %0 = bitcast i8* %v to %struct.gendisk*
  %1 = bitcast i64* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  %call = call fastcc i64 @get_capacity(%struct.gendisk* noundef %0) #16
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @disk_max_parts(%struct.gendisk* noundef %0) #16
  %tobool2.not = icmp ne i32 %call1, 0
  %flags = getelementptr inbounds i8, i8* %v, i64 96
  %2 = bitcast i8* %flags to i32*
  %3 = load i32, i32* %2, align 8
  %and = and i32 %3, 1
  %tobool3.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  %and5 = and i32 %3, 32
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond37 = select i1 %or.cond, i1 %tobool6.not, i1 false
  br i1 %or.cond37, label %if.end8, label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call fastcc void @__rcu_read_lock() #15
  store i64 0, i64* %idx, align 8
  %part_tbl = getelementptr inbounds i8, i8* %v, i64 48
  %4 = bitcast i8* %part_tbl to %struct.xarray*
  %call9 = call i8* @xa_find(%struct.xarray* noundef %4, i64* noundef nonnull %idx, i64 noundef -1, i32 noundef 8) #15
  %tobool10.not35 = icmp eq i8* %call9, null
  br i1 %tobool10.not35, label %for.end, label %for.body

for.body:                                         ; preds = %if.end8, %for.inc
  %part.0.in36 = phi i8* [ %call20, %for.inc ], [ %call9, %if.end8 ]
  %part.0 = bitcast i8* %part.0.in36 to %struct.block_device*
  %call11 = call fastcc i64 @bdev_nr_sectors(%struct.block_device* noundef nonnull %part.0) #16
  %tobool12.not = icmp eq i64 %call11, 0
  br i1 %tobool12.not, label %for.inc, label %if.end14

if.end14:                                         ; preds = %for.body
  %bd_dev = getelementptr inbounds i8, i8* %part.0.in36, i64 28
  %5 = bitcast i8* %bd_dev to i32*
  %6 = load i32, i32* %5, align 4
  %shr = lshr i32 %6, 20
  %and16 = and i32 %6, 1048575
  %shr18 = lshr i64 %call11, 1
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seqf, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0), i32 noundef %shr, i32 noundef %and16, i64 noundef %shr18, i8* noundef nonnull %part.0.in36) #15
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end14
  %call20 = call i8* @xa_find_after(%struct.xarray* noundef %4, i64* noundef nonnull %idx, i64 noundef -1, i32 noundef 8) #15
  %tobool10.not = icmp eq i8* %call20, null
  br i1 %tobool10.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end8
  call fastcc void @rcu_read_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(%struct.seq_file* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xa_init_flags(%struct.xarray* nocapture noundef writeonly %xa) unnamed_addr #2 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  store i32 0, i32* %xa_flags, align 4
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  store i8* null, i8** %xa_head, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(%struct.xarray* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 2, i64* elementtype(i64) %counter) #17, !srcloc !25
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 2, i64* elementtype(i64) %counter) #17, !srcloc !26
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return() unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @diskseq, i64 0, i32 0), i64 1, i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @diskseq, i64 0, i32 0)) #17, !srcloc !27
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { cold nobuiltin nounwind "no-builtins" }
attributes #19 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2155047416}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2155050293}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2155052436}
!12 = !{i64 2155054181}
!13 = !{i64 2155056006}
!14 = !{!"auto-init"}
!15 = !{i64 -18014398509481984, i64 18014398509481984}
!16 = !{i64 2155130334}
!17 = !{i8 0, i8 2}
!18 = !{i64 2149505313}
!19 = !{i64 2147908377, i64 2147908410, i64 2147908463, i64 2147908522, i64 2147908556, i64 2147908611, i64 2147908640, i64 2147908660}
!20 = !{i64 2149512594}
!21 = !{i64 2149315676}
!22 = !{i64 2149686058}
!23 = !{i64 2149686275}
!24 = !{i64 2147881595, i64 2147882106, i64 2147882136, i64 2147882162, i64 2147882194, i64 2147882223}
!25 = !{i64 2147882441, i64 2147883093, i64 2147883123, i64 2147883154, i64 2147883186, i64 2147883221, i64 2147883246}
!26 = !{i64 2147893018, i64 2147893680, i64 2147893710, i64 2147893741, i64 2147893773, i64 2147893808, i64 2147893833}
!27 = !{i64 2147854049, i64 2147854697, i64 2147854727, i64 2147854758, i64 2147854790, i64 2147854825, i64 2147854850}
