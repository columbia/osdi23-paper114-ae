; ModuleID = 'drivers/base/class.c'
source_filename = "drivers/base/class.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.4, i8* }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.65 }
%union.anon.65 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.3, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.16 }
%union.anon.16 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.17, %union.anon.18 }
%union.anon.17 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.18 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.11, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.55, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.9, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.9 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
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
%struct.cgroup_namespace = type opaque
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.40, %union.anon.41, i32 }
%struct.request_queue = type opaque
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.42 }
%struct.anon.42 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.54, i32, [12 x i8] }
%union.anon.54 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.14, %union.anon.33, %struct.atomic_t, [8 x i8] }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.33 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.56, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.56 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.11 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.12, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.13, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.12 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.13 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.62 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.60, %struct.qspinlock }
%union.anon.60 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.62 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.39 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.6, i32 }
%union.anon.6 = type { %struct.kuid_t }
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
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_type = type { i8*, %struct.attribute_group**, {}*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, {}*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
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
%struct.block_device_operations = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
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
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.58 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.59 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.class_attribute = type { %struct.attribute, i64 (%struct.class*, %struct.class_attribute*, i8*)*, i64 (%struct.class*, %struct.class_attribute*, i8*, i64)* }
%struct.class_dev_iter = type { %struct.klist_iter, %struct.device_type* }
%struct.klist_iter = type { %struct.klist*, %struct.klist_node* }
%struct.class_interface = type { %struct.list_head, %struct.class*, i32 (%struct.device*, %struct.class_interface*)*, void (%struct.device*, %struct.class_interface*)* }
%struct.class_compat = type { %struct.kobject* }

@.str = private unnamed_addr constant [13 x i8] c"subsys mutex\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@sysfs_dev_char_kobj = external dso_local local_unnamed_addr global %struct.kobject*, align 8
@class_kset = internal unnamed_addr global %struct.kset* null, align 8
@class_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @class_release, %struct.sysfs_ops* @class_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* @class_child_ns_type, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"%s called for class '%s' before it was initialized\00", align 1
@__func__.class_for_each_device = private unnamed_addr constant [22 x i8] c"class_for_each_device\00", align 1
@__func__.class_find_device = private unnamed_addr constant [18 x i8] c"class_find_device\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@class_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @class_attr_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @class_attr_store }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @class_create_file_ns(%struct.class* noundef readonly %cls, %struct.class_attribute* noundef %attr, i8* noundef %ns) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.class* %cls, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.class, %struct.class* %cls, i64 0, i32 14
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %kobj = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0, i32 2
  %attr1 = getelementptr inbounds %struct.class_attribute, %struct.class_attribute* %attr, i64 0, i32 0
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr1, i8* noundef %ns) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %error.0 = phi i32 [ %call, %if.then ], [ -22, %entry ]
  ret i32 %error.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject* noundef, %struct.attribute* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @class_remove_file_ns(%struct.class* noundef readonly %cls, %struct.class_attribute* noundef %attr, i8* noundef %ns) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.class* %cls, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.class, %struct.class* %cls, i64 0, i32 14
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %kobj = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0, i32 2
  %attr1 = getelementptr inbounds %struct.class_attribute, %struct.class_attribute* %attr, i64 0, i32 0
  call void @sysfs_remove_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr1, i8* noundef %ns) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(%struct.kobject* noundef, %struct.attribute* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__class_register(%struct.class* noundef %cls, %struct.lock_class_key* noundef %key) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 408) #9
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %klist_devices = getelementptr inbounds i8, i8* %call, i64 160
  %0 = bitcast i8* %klist_devices to %struct.klist*
  call void @klist_init(%struct.klist* noundef %0, void (%struct.klist_node*)* noundef nonnull @klist_class_dev_get, void (%struct.klist_node*)* noundef nonnull @klist_class_dev_put) #8
  %interfaces = getelementptr inbounds i8, i8* %call, i64 104
  %1 = bitcast i8* %interfaces to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %1) #9
  %glue_dirs = getelementptr inbounds i8, i8* %call, i64 304
  %2 = bitcast i8* %glue_dirs to %struct.kset*
  call void @kset_init(%struct.kset* noundef %2) #8
  %mutex = getelementptr inbounds i8, i8* %call, i64 120
  %3 = bitcast i8* %mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef %key) #8
  %subsys = bitcast i8* %call to %struct.kset*
  %kobj = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %kobj to %struct.kobject*
  %name = getelementptr inbounds %struct.class, %struct.class* %cls, i64 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %call1 = call i32 (%struct.kobject*, i8*, ...) @kobject_set_name(%struct.kobject* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %5) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev_kobj = getelementptr inbounds %struct.class, %struct.class* %cls, i64 0, i32 4
  %6 = load %struct.kobject*, %struct.kobject** %dev_kobj, align 8
  %tobool5.not = icmp eq %struct.kobject* %6, null
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %7 = load %struct.kobject*, %struct.kobject** @sysfs_dev_char_kobj, align 8
  store %struct.kobject* %7, %struct.kobject** %dev_kobj, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %8 = load %struct.kset*, %struct.kset** @class_kset, align 8
  %kset = getelementptr inbounds i8, i8* %call, i64 56
  %9 = bitcast i8* %kset to %struct.kset**
  store %struct.kset* %8, %struct.kset** %9, align 8
  %ktype = getelementptr inbounds i8, i8* %call, i64 64
  %10 = bitcast i8* %ktype to %struct.kobj_type**
  store %struct.kobj_type* @class_ktype, %struct.kobj_type** %10, align 8
  %class = getelementptr inbounds i8, i8* %call, i64 400
  %11 = bitcast i8* %class to %struct.class**
  store %struct.class* %cls, %struct.class** %11, align 8
  %p = getelementptr inbounds %struct.class, %struct.class* %cls, i64 0, i32 14
  %12 = bitcast %struct.subsys_private** %p to i8**
  store i8* %call, i8** %12, align 8
  %call14 = call i32 @kset_register(%struct.kset* noundef nonnull %subsys) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end8
  call void @kfree(i8* noundef nonnull %call) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %call18 = call fastcc %struct.class* @class_get(%struct.class* noundef %cls) #9
  %class_groups = getelementptr inbounds %struct.class, %struct.class* %cls, i64 0, i32 2
  %13 = load %struct.attribute_group**, %struct.attribute_group*** %class_groups, align 8
  %call19 = call fastcc i32 @class_add_groups(%struct.class* noundef %cls, %struct.attribute_group** noundef %13) #9
  call fastcc void @class_put(%struct.class* noundef %cls) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end17, %if.then16, %if.then3
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call14, %if.then16 ], [ %call19, %if.end17 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #8
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_init(%struct.klist* noundef, void (%struct.klist_node*)* noundef, void (%struct.klist_node*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @klist_class_dev_get(%struct.klist_node* nocapture noundef readonly %n) #0 {
entry:
  %call = call fastcc %struct.device* @klist_class_to_dev(%struct.klist_node* noundef %n) #9
  %call1 = call %struct.device* @get_device(%struct.device* noundef %call) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @klist_class_dev_put(%struct.klist_node* nocapture noundef readonly %n) #0 {
entry:
  %call = call fastcc %struct.device* @klist_class_to_dev(%struct.klist_node* noundef %n) #9
  call void @put_device(%struct.device* noundef %call) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_init(%struct.kset* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(%struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kset_register(%struct.kset* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @class_add_groups(%struct.class* nocapture noundef readonly %cls, %struct.attribute_group** noundef %groups) unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.class, %struct.class* %cls, i64 0, i32 14
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %kobj = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0, i32 2
  %call = call i32 @sysfs_create_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %groups) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.class* @class_get(%struct.class* noundef readonly returned %cls) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.class* %cls, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.class, %struct.class* %cls, i64 0, i32 14
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0
  call fastcc void @kset_get(%struct.kset* noundef %subsys) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.class* %cls
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @class_put(%struct.class* noundef readonly %cls) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.class* %cls, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.class, %struct.class* %cls, i64 0, i32 14
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0
  call fastcc void @kset_put(%struct.kset* noundef %subsys) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @class_unregister(%struct.class* nocapture noundef readonly %cls) local_unnamed_addr #0 {
entry:
  %class_groups = getelementptr inbounds %struct.class, %struct.class* %cls, i64 0, i32 2
  %0 = load %struct.attribute_group**, %struct.attribute_group*** %class_groups, align 8
  call fastcc void @class_remove_groups(%struct.class* noundef %cls, %struct.attribute_group** noundef %0) #9
  %p = getelementptr inbounds %struct.class, %struct.class* %cls, i64 0, i32 14
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 0
  call void @kset_unregister(%struct.kset* noundef %subsys) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @class_remove_groups(%struct.class* nocapture noundef readonly %cls, %struct.attribute_group** noundef %groups) unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.class, %struct.class* %cls, i64 0, i32 14
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %kobj = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0, i32 2
  call void @sysfs_remove_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %groups) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(%struct.kset* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.class* @__class_create(%struct.module* noundef %owner, i8* noundef %name, %struct.lock_class_key* noundef %key) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 120) #9
  %0 = bitcast i8* %call to %struct.class*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %error, label %if.end

if.end:                                           ; preds = %entry
  %name2 = bitcast i8* %call to i8**
  store i8* %name, i8** %name2, align 8
  %owner3 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %owner3 to %struct.module**
  store %struct.module* %owner, %struct.module** %1, align 8
  %class_release = getelementptr inbounds i8, i8* %call, i64 56
  %2 = bitcast i8* %class_release to void (%struct.class*)**
  store void (%struct.class*)* @class_create_release, void (%struct.class*)** %2, align 8
  %call4 = call i32 @__class_register(%struct.class* noundef nonnull %0, %struct.lock_class_key* noundef %key) #9
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %error

error:                                            ; preds = %entry, %if.end
  %retval1.0 = phi i32 [ %call4, %if.end ], [ -12, %entry ]
  call void @kfree(i8* noundef %call) #8
  %conv = sext i32 %retval1.0 to i64
  %call8 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #9
  %3 = bitcast i8* %call8 to %struct.class*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %error
  %retval.0 = phi %struct.class* [ %3, %error ], [ %0, %if.end ]
  ret %struct.class* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @class_create_release(%struct.class* noundef %cls) #0 {
entry:
  %0 = bitcast %struct.class* %cls to i8*
  call void @kfree(i8* noundef %0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @class_destroy(%struct.class* noundef %cls) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.class* %cls, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = bitcast %struct.class* %cls to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef nonnull %0) #9
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @class_unregister(%struct.class* noundef nonnull %cls) #9
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @class_dev_iter_init(%struct.class_dev_iter* noundef %iter, %struct.class* nocapture noundef readonly %class, %struct.device* noundef readonly %start, %struct.device_type* noundef %type) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %start, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.device, %struct.device* %start, i64 0, i32 2
  %0 = load %struct.device_private*, %struct.device_private** %p, align 8
  %knode_class = getelementptr inbounds %struct.device_private, %struct.device_private* %0, i64 0, i32 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %start_knode.0 = phi %struct.klist_node* [ %knode_class, %if.then ], [ null, %entry ]
  %p1 = getelementptr inbounds %struct.class, %struct.class* %class, i64 0, i32 14
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p1, align 8
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 5
  %ki = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %iter, i64 0, i32 0
  call void @klist_iter_init_node(%struct.klist* noundef %klist_devices, %struct.klist_iter* noundef %ki, %struct.klist_node* noundef %start_knode.0) #8
  %type2 = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %iter, i64 0, i32 1
  store %struct.device_type* %type, %struct.device_type** %type2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init_node(%struct.klist* noundef, %struct.klist_iter* noundef, %struct.klist_node* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef %iter) local_unnamed_addr #0 {
entry:
  %ki = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %iter, i64 0, i32 0
  %type = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %iter, i64 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false, %entry
  %call = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef %ki) #8
  %tobool.not = icmp eq %struct.klist_node* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %while.cond
  %call1 = call fastcc %struct.device* @klist_class_to_dev(%struct.klist_node* noundef nonnull %call) #9
  %0 = load %struct.device_type*, %struct.device_type** %type, align 8
  %tobool2.not = icmp eq %struct.device_type* %0, null
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %type4 = getelementptr inbounds %struct.device, %struct.device* %call1, i64 0, i32 4
  %1 = load %struct.device_type*, %struct.device_type** %type4, align 8
  %cmp = icmp eq %struct.device_type* %0, %1
  br i1 %cmp, label %cleanup, label %while.cond

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %while.cond
  %retval.0 = phi %struct.device* [ null, %while.cond ], [ %call1, %lor.lhs.false ], [ %call1, %if.end ]
  ret %struct.device* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.klist_node* @klist_next(%struct.klist_iter* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.device* @klist_class_to_dev(%struct.klist_node* nocapture noundef readonly %n) unnamed_addr #5 {
entry:
  %add.ptr = getelementptr %struct.klist_node, %struct.klist_node* %n, i64 -5, i32 2
  %device = getelementptr inbounds %struct.kref, %struct.kref* %add.ptr, i64 50
  %0 = bitcast %struct.kref* %device to %struct.device**
  %1 = load %struct.device*, %struct.device** %0, align 8
  ret %struct.device* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @class_dev_iter_exit(%struct.class_dev_iter* noundef %iter) local_unnamed_addr #0 {
entry:
  %ki = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %iter, i64 0, i32 0
  call void @klist_iter_exit(%struct.klist_iter* noundef %ki) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(%struct.klist_iter* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @class_for_each_device(%struct.class* noundef readonly %class, %struct.device* noundef %start, i8* noundef %data, i32 (%struct.device*, i8*)* nocapture noundef readonly %fn) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.class_dev_iter, align 8
  %0 = bitcast %struct.class_dev_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.class* %class, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.class, %struct.class* %class, i64 0, i32 14
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %tobool1.not = icmp eq %struct.subsys_private* %1, null
  br i1 %tobool1.not, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end
  %name = getelementptr inbounds %struct.class, %struct.class* %class, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.class_for_each_device, i64 0, i64 0), i8* noundef %2) #8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/class.c\22; .popsection; .long 14472b - 14470b; .short 363; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !8
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @class_dev_iter_init(%struct.class_dev_iter* noundef nonnull %iter, %struct.class* noundef nonnull %class, %struct.device* noundef %start, %struct.device_type* noundef null) #9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end21
  %call = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef nonnull %iter) #9
  %tobool22.not = icmp eq %struct.device* %call, null
  br i1 %tobool22.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call23 = call i32 %fn(%struct.device* noundef nonnull %call, i8* noundef %data) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %while.cond, label %while.end

while.end:                                        ; preds = %while.body, %while.cond
  %error.1 = phi i32 [ %call23, %while.body ], [ 0, %while.cond ]
  call void @class_dev_iter_exit(%struct.class_dev_iter* noundef nonnull %iter) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end, %do.end
  %retval.0 = phi i32 [ %error.1, %while.end ], [ -22, %do.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @class_find_device(%struct.class* noundef readonly %class, %struct.device* noundef %start, i8* noundef %data, i32 (%struct.device*, i8*)* nocapture noundef readonly %match) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.class_dev_iter, align 8
  %0 = bitcast %struct.class_dev_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.class* %class, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.class, %struct.class* %class, i64 0, i32 14
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %tobool1.not = icmp eq %struct.subsys_private* %1, null
  br i1 %tobool1.not, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end
  %name = getelementptr inbounds %struct.class, %struct.class* %class, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.class_find_device, i64 0, i64 0), i8* noundef %2) #8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/class.c\22; .popsection; .long 14472b - 14470b; .short 410; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !9
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @class_dev_iter_init(%struct.class_dev_iter* noundef nonnull %iter, %struct.class* noundef nonnull %class, %struct.device* noundef %start, %struct.device_type* noundef null) #9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end21
  %call = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef nonnull %iter) #9
  %tobool22.not = icmp eq %struct.device* %call, null
  br i1 %tobool22.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call23 = call i32 %match(%struct.device* noundef nonnull %call, i8* noundef %data) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %while.cond, label %if.then25

if.then25:                                        ; preds = %while.body
  %call26 = call %struct.device* @get_device(%struct.device* noundef nonnull %call) #8
  br label %while.end

while.end:                                        ; preds = %while.cond, %if.then25
  call void @class_dev_iter_exit(%struct.class_dev_iter* noundef nonnull %iter) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end, %do.end
  %retval.0 = phi %struct.device* [ %call, %while.end ], [ null, %do.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #10
  ret %struct.device* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @class_interface_register(%struct.class_interface* noundef %class_intf) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.class_dev_iter, align 8
  %0 = bitcast %struct.class_dev_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.class_interface* %class_intf, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %class = getelementptr inbounds %struct.class_interface, %struct.class_interface* %class_intf, i64 0, i32 1
  %1 = load %struct.class*, %struct.class** %class, align 8
  %tobool1.not = icmp eq %struct.class* %1, null
  br i1 %tobool1.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %call = call fastcc %struct.class* @class_get(%struct.class* noundef nonnull %1) #9
  %p = getelementptr inbounds %struct.class, %struct.class* %1, i64 0, i32 14
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i64 0, i32 3
  call void @mutex_lock(%struct.mutex* noundef %mutex) #8
  %node = getelementptr inbounds %struct.class_interface, %struct.class_interface* %class_intf, i64 0, i32 0
  %3 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %interfaces = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %3, i64 0, i32 2
  call fastcc void @list_add_tail(%struct.list_head* noundef %node, %struct.list_head* noundef %interfaces) #9
  %add_dev = getelementptr inbounds %struct.class_interface, %struct.class_interface* %class_intf, i64 0, i32 2
  %4 = load i32 (%struct.device*, %struct.class_interface*)*, i32 (%struct.device*, %struct.class_interface*)** %add_dev, align 8
  %tobool7.not = icmp eq i32 (%struct.device*, %struct.class_interface*)* %4, null
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @class_dev_iter_init(%struct.class_dev_iter* noundef nonnull %iter, %struct.class* noundef nonnull %1, %struct.device* noundef null, %struct.device_type* noundef null) #9
  %call930 = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef nonnull %iter) #9
  %tobool10.not31 = icmp eq %struct.device* %call930, null
  br i1 %tobool10.not31, label %while.end, label %while.body

while.body:                                       ; preds = %if.then8, %while.body
  %call932 = phi %struct.device* [ %call9, %while.body ], [ %call930, %if.then8 ]
  %5 = load i32 (%struct.device*, %struct.class_interface*)*, i32 (%struct.device*, %struct.class_interface*)** %add_dev, align 8
  %call12 = call i32 %5(%struct.device* noundef nonnull %call932, %struct.class_interface* noundef nonnull %class_intf) #8
  %call9 = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef nonnull %iter) #9
  %tobool10.not = icmp eq %struct.device* %call9, null
  br i1 %tobool10.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.then8
  call void @class_dev_iter_exit(%struct.class_dev_iter* noundef nonnull %iter) #9
  br label %if.end13

if.end13:                                         ; preds = %while.end, %if.end5
  %6 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %mutex15 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %6, i64 0, i32 3
  call void @mutex_unlock(%struct.mutex* noundef %mutex15) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -19, %lor.lhs.false ], [ -19, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @class_interface_unregister(%struct.class_interface* noundef %class_intf) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.class_dev_iter, align 8
  %class = getelementptr inbounds %struct.class_interface, %struct.class_interface* %class_intf, i64 0, i32 1
  %0 = load %struct.class*, %struct.class** %class, align 8
  %1 = bitcast %struct.class_dev_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.class* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.class, %struct.class* %0, i64 0, i32 14
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i64 0, i32 3
  call void @mutex_lock(%struct.mutex* noundef %mutex) #8
  %node = getelementptr inbounds %struct.class_interface, %struct.class_interface* %class_intf, i64 0, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %node) #9
  %remove_dev = getelementptr inbounds %struct.class_interface, %struct.class_interface* %class_intf, i64 0, i32 3
  %3 = load void (%struct.device*, %struct.class_interface*)*, void (%struct.device*, %struct.class_interface*)** %remove_dev, align 8
  %tobool1.not = icmp eq void (%struct.device*, %struct.class_interface*)* %3, null
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @class_dev_iter_init(%struct.class_dev_iter* noundef nonnull %iter, %struct.class* noundef nonnull %0, %struct.device* noundef null, %struct.device_type* noundef null) #9
  %call20 = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef nonnull %iter) #9
  %tobool3.not21 = icmp eq %struct.device* %call20, null
  br i1 %tobool3.not21, label %while.end, label %while.body

while.body:                                       ; preds = %if.then2, %while.body
  %call22 = phi %struct.device* [ %call, %while.body ], [ %call20, %if.then2 ]
  %4 = load void (%struct.device*, %struct.class_interface*)*, void (%struct.device*, %struct.class_interface*)** %remove_dev, align 8
  call void %4(%struct.device* noundef nonnull %call22, %struct.class_interface* noundef %class_intf) #8
  %call = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* noundef nonnull %iter) #9
  %tobool3.not = icmp eq %struct.device* %call, null
  br i1 %tobool3.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.then2
  call void @class_dev_iter_exit(%struct.class_dev_iter* noundef nonnull %iter) #9
  br label %if.end5

if.end5:                                          ; preds = %while.end, %if.end
  %5 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %mutex7 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %5, i64 0, i32 3
  call void @mutex_unlock(%struct.mutex* noundef %mutex7) #8
  call fastcc void @class_put(%struct.class* noundef nonnull %0) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #9
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @show_class_attr_string(%struct.class* nocapture noundef readnone %class, %struct.class_attribute* nocapture noundef readonly %attr, i8* noundef %buf) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.class_attribute, %struct.class_attribute* %attr, i64 1, i32 0, i32 0
  %1 = load i8*, i8** %0, align 8
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %1) #8
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(i8* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.class_compat* @class_compat_register(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #8
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call.i.i to %struct.class_compat*
  %2 = load %struct.kset*, %struct.kset** @class_kset, align 8
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %2, i64 0, i32 2
  %call1 = call %struct.kobject* @kobject_create_and_add(i8* noundef %name, %struct.kobject* noundef %kobj) #8
  %kobj2 = bitcast i8* %call.i.i to %struct.kobject**
  store %struct.kobject* %call1, %struct.kobject** %kobj2, align 8
  %tobool4.not = icmp eq %struct.kobject* %call1, null
  br i1 %tobool4.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then5
  %retval.0 = phi %struct.class_compat* [ null, %if.then5 ], [ null, %entry ], [ %1, %if.end ]
  ret %struct.class_compat* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_create_and_add(i8* noundef, %struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @class_compat_unregister(%struct.class_compat* noundef %cls) local_unnamed_addr #0 {
entry:
  %kobj = getelementptr inbounds %struct.class_compat, %struct.class_compat* %cls, i64 0, i32 0
  %0 = load %struct.kobject*, %struct.kobject** %kobj, align 8
  call void @kobject_put(%struct.kobject* noundef %0) #8
  %1 = bitcast %struct.class_compat* %cls to i8*
  call void @kfree(i8* noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @class_compat_create_link(%struct.class_compat* nocapture noundef readonly %cls, %struct.device* noundef %dev, %struct.device* noundef %device_link) local_unnamed_addr #0 {
entry:
  %kobj = getelementptr inbounds %struct.class_compat, %struct.class_compat* %cls, i64 0, i32 0
  %0 = load %struct.kobject*, %struct.kobject** %kobj, align 8
  %kobj1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @dev_name(%struct.device* noundef %dev) #9
  %call2 = call i32 @sysfs_create_link(%struct.kobject* noundef %0, %struct.kobject* noundef %kobj1, i8* noundef %call) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq %struct.device* %device_link, null
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  %kobj6 = getelementptr inbounds %struct.device, %struct.device* %device_link, i64 0, i32 0
  %call7 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj1, %struct.kobject* noundef %kobj6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.then4
  %1 = load %struct.kobject*, %struct.kobject** %kobj, align 8
  %call11 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #9
  call void @sysfs_remove_link(%struct.kobject* noundef %1, i8* noundef %call11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then9, %if.then4, %entry
  %retval.0 = phi i32 [ %call2, %entry ], [ %call7, %if.then9 ], [ 0, %if.then4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #5 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(%struct.kobject* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @class_compat_remove_link(%struct.class_compat* nocapture noundef readonly %cls, %struct.device* noundef %dev, %struct.device* noundef readnone %device_link) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %device_link, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %kobj1 = getelementptr inbounds %struct.class_compat, %struct.class_compat* %cls, i64 0, i32 0
  %0 = load %struct.kobject*, %struct.kobject** %kobj1, align 8
  %call = call fastcc i8* @dev_name(%struct.device* noundef %dev) #9
  call void @sysfs_remove_link(%struct.kobject* noundef %0, i8* noundef %call) #8
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @classes_init() local_unnamed_addr #7 section ".init.text" {
entry:
  %call = call %struct.kset* @kset_create_and_add(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.kset_uevent_ops* noundef null, %struct.kobject* noundef null) #8
  store %struct.kset* %call, %struct.kset** @class_kset, align 8
  %tobool.not = icmp eq %struct.kset* %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kset* @kset_create_and_add(i8* noundef, %struct.kset_uevent_ops* noundef, %struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @class_release(%struct.kobject* noundef %kobj) #0 {
entry:
  %add.ptr = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 4
  %class1 = getelementptr inbounds %struct.kobj_type*, %struct.kobj_type** %add.ptr, i64 50
  %0 = bitcast %struct.kobj_type** %class1 to %struct.class**
  %1 = load %struct.class*, %struct.class** %0, align 8
  %class_release = getelementptr inbounds %struct.class, %struct.class* %1, i64 0, i32 7
  %2 = load void (%struct.class*)*, void (%struct.class*)** %class_release, align 8
  %tobool.not = icmp eq void (%struct.class*)* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %2(%struct.class* noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %3 = bitcast %struct.kobj_type** %add.ptr to i8*
  call void @kfree(i8* noundef %3) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal %struct.kobj_ns_type_operations* @class_child_ns_type(%struct.kobject* nocapture noundef readonly %kobj) #5 {
entry:
  %add.ptr = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 4
  %class1 = getelementptr inbounds %struct.kobj_type*, %struct.kobj_type** %add.ptr, i64 50
  %0 = bitcast %struct.kobj_type** %class1 to %struct.class**
  %1 = load %struct.class*, %struct.class** %0, align 8
  %ns_type = getelementptr inbounds %struct.class, %struct.class* %1, i64 0, i32 10
  %2 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %ns_type, align 8
  ret %struct.kobj_ns_type_operations* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @class_attr_show(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute* noundef %attr, i8* noundef %buf) #0 {
entry:
  %show = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1
  %0 = bitcast %struct.attribute* %show to i64 (%struct.class*, %struct.class_attribute*, i8*)**
  %1 = load i64 (%struct.class*, %struct.class_attribute*, i8*)*, i64 (%struct.class*, %struct.class_attribute*, i8*)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.class*, %struct.class_attribute*, i8*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.attribute* %attr to %struct.class_attribute*
  %add.ptr6 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 4
  %class = getelementptr inbounds %struct.kobj_type*, %struct.kobj_type** %add.ptr6, i64 50
  %3 = bitcast %struct.kobj_type** %class to %struct.class**
  %4 = load %struct.class*, %struct.class** %3, align 8
  %call = call i64 %1(%struct.class* noundef %4, %struct.class_attribute* noundef %2, i8* noundef %buf) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %call, %if.then ], [ -5, %entry ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @class_attr_store(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute* noundef %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %store = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1, i32 1
  %0 = bitcast i16* %store to i64 (%struct.class*, %struct.class_attribute*, i8*, i64)**
  %1 = load i64 (%struct.class*, %struct.class_attribute*, i8*, i64)*, i64 (%struct.class*, %struct.class_attribute*, i8*, i64)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.class*, %struct.class_attribute*, i8*, i64)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.attribute* %attr to %struct.class_attribute*
  %add.ptr6 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 4
  %class = getelementptr inbounds %struct.kobj_type*, %struct.kobj_type** %add.ptr6, i64 50
  %3 = bitcast %struct.kobj_type** %class to %struct.class**
  %4 = load %struct.class*, %struct.class** %3, align 8
  %call = call i64 %1(%struct.class* noundef %4, %struct.class_attribute* noundef %2, i8* noundef %buf, i64 noundef %count) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %call, %if.then ], [ -5, %entry ]
  ret i64 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(%struct.kobject* noundef, %struct.attribute_group** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kset_get(%struct.kset* noundef %k) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kset* %k, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %k, i64 0, i32 2
  %call = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj) #8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_get(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kset_put(%struct.kset* noundef %k) unnamed_addr #0 {
entry:
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %k, i64 0, i32 2
  call void @kobject_put(%struct.kobject* noundef %kobj) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(%struct.kobject* noundef, %struct.attribute_group** noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #5 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"auto-init"}
!8 = !{i64 2153956320}
!9 = !{i64 2153958476}
