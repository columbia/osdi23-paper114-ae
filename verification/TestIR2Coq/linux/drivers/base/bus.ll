; ModuleID = 'drivers/base/bus.c'
source_filename = "drivers/base/bus.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.58, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.58 = type { %struct.kernfs_elem_dir }
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
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.63, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.49, %struct.list_head, %struct.list_head, %union.anon.50 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.18, i8* }
%union.anon.18 = type { i64 }
%struct.lockref = type { %union.anon.20 }
%union.anon.20 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.49 = type { %struct.list_head }
%union.anon.50 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.17, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.51 }
%union.anon.51 = type { %struct.wait_page_queue* }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.47, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.23 }
%union.anon.23 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.25 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.request_queue = type opaque
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.34 }
%struct.anon.34 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.46, i32, [12 x i8] }
%union.anon.46 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.2, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.57 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.48, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.48 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.54 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.52, %struct.qspinlock }
%union.anon.52 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.54 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.22, i32 }
%union.anon.22 = type { %struct.kuid_t }
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
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.61 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.62 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.63 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.driver_attribute = type { %struct.attribute, i64 (%struct.device_driver*, i8*)*, i64 (%struct.device_driver*, i8*, i64)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.59, %struct.device* }
%union.anon.59 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.iommu_ops = type opaque
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
%struct.bus_attribute = type { %struct.attribute, i64 (%struct.bus_type*, i8*)*, i64 (%struct.bus_type*, i8*, i64)* }
%struct.klist_iter = type { %struct.klist*, %struct.klist_node* }
%struct.subsys_interface = type { i8*, %struct.bus_type*, %struct.list_head, i32 (%struct.device*, %struct.subsys_interface*)*, void (%struct.device*, %struct.subsys_interface*)* }
%struct.subsys_dev_iter = type { %struct.klist_iter, %struct.device_type* }

@.str = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@driver_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @driver_release, %struct.sysfs_ops* @driver_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@driver_attr_uevent = internal global %struct.driver_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i16 128 }, i64 (%struct.device_driver*, i8*)* null, i64 (%struct.device_driver*, i8*, i64)* @uevent_store }, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"\013%s: uevent attr (%s) failed\0A\00", align 1
@__func__.bus_add_driver = private unnamed_addr constant [15 x i8] c"bus_add_driver\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\013%s: driver_add_groups(%s) failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\013%s: add_bind_files(%s) failed\0A\00", align 1
@bus_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"&(&priv->bus_notifier)->rwsem\00", align 1
@bus_kset = internal unnamed_addr global %struct.kset* null, align 8
@bus_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @bus_release, %struct.sysfs_ops* @bus_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@bus_attr_uevent = internal global %struct.bus_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i16 128 }, i64 (%struct.bus_type*, i8*)* null, i64 (%struct.bus_type*, i8*, i64)* @bus_uevent_store }, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"subsys mutex\00", align 1
@system_kset = internal unnamed_addr global %struct.kset* null, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@bus_uevent_ops = internal constant %struct.kset_uevent_ops { i32 (%struct.kset*, %struct.kobject*)* @bus_uevent_filter, i8* (%struct.kset*, %struct.kobject*)* null, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* null }, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@devices_kset = external dso_local local_unnamed_addr global %struct.kset*, align 8
@driver_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @drv_attr_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @drv_attr_store }, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"uevent\00", align 1
@driver_attr_unbind = internal global %struct.driver_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i16 128 }, i64 (%struct.device_driver*, i8*)* null, i64 (%struct.device_driver*, i8*, i64)* @unbind_store }, align 8
@driver_attr_bind = internal global %struct.driver_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i16 128 }, i64 (%struct.device_driver*, i8*)* null, i64 (%struct.device_driver*, i8*, i64)* @bind_store }, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"unbind\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@bus_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @bus_attr_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @bus_attr_store }, align 8
@bus_attr_drivers_probe = internal global %struct.bus_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i16 128 }, i64 (%struct.bus_type*, i8*)* null, i64 (%struct.bus_type*, i8*, i64)* @drivers_probe_store }, align 8
@bus_attr_drivers_autoprobe = internal global %struct.bus_attribute { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i16 420 }, i64 (%struct.bus_type*, i8*)* @drivers_autoprobe_show, i64 (%struct.bus_type*, i8*, i64)* @drivers_autoprobe_store }, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"drivers_probe\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"drivers_autoprobe\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bus_create_file(%struct.bus_type* noundef %bus, %struct.bus_attribute* noundef %attr) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.bus_type* @bus_get(%struct.bus_type* noundef %bus) #10
  %tobool.not = icmp eq %struct.bus_type* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %kobj = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0, i32 2
  %attr1 = getelementptr inbounds %struct.bus_attribute, %struct.bus_attribute* %attr, i64 0, i32 0
  %call2 = call fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr1) #10
  call fastcc void @bus_put(%struct.bus_type* noundef %bus) #10
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %error.0 = phi i32 [ %call2, %if.then ], [ -22, %entry ]
  ret i32 %error.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bus_type* @bus_get(%struct.bus_type* noundef readonly %bus) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.bus_type* %bus, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0
  call fastcc void @kset_get(%struct.kset* noundef %subsys) #10
  br label %return

return:                                           ; preds = %entry, %if.then
  ret %struct.bus_type* %bus
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr) unnamed_addr #0 {
entry:
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef null) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bus_put(%struct.bus_type* noundef readonly %bus) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.bus_type* %bus, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0
  call fastcc void @kset_put(%struct.kset* noundef %subsys) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bus_remove_file(%struct.bus_type* noundef %bus, %struct.bus_attribute* noundef %attr) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.bus_type* @bus_get(%struct.bus_type* noundef %bus) #10
  %tobool.not = icmp eq %struct.bus_type* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %kobj = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0, i32 2
  %attr1 = getelementptr inbounds %struct.bus_attribute, %struct.bus_attribute* %attr, i64 0, i32 0
  call fastcc void @sysfs_remove_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr1) #10
  call fastcc void @bus_put(%struct.bus_type* noundef %bus) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sysfs_remove_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr) unnamed_addr #0 {
entry:
  call void @sysfs_remove_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef null) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bus_for_each_dev(%struct.bus_type* noundef readonly %bus, %struct.device* noundef readonly %start, i8* noundef %data, i32 (%struct.device*, i8*)* nocapture noundef readonly %fn) local_unnamed_addr #0 {
entry:
  %i = alloca %struct.klist_iter, align 8
  %0 = bitcast %struct.klist_iter* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.bus_type* %bus, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %tobool1.not = icmp eq %struct.subsys_private* %1, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 5
  %tobool3.not = icmp eq %struct.device* %start, null
  br i1 %tobool3.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %p4 = getelementptr inbounds %struct.device, %struct.device* %start, i64 0, i32 2
  %2 = load %struct.device_private*, %struct.device_private** %p4, align 8
  %knode_bus = getelementptr inbounds %struct.device_private, %struct.device_private* %2, i64 0, i32 3
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.klist_node* [ %knode_bus, %cond.true ], [ null, %if.end ]
  call void @klist_iter_init_node(%struct.klist* noundef %klist_devices, %struct.klist_iter* noundef nonnull %i, %struct.klist_node* noundef %cond) #11
  br label %land.rhs

land.rhs:                                         ; preds = %cond.end, %while.body
  %call = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #10
  %tobool6.not = icmp eq %struct.device* %call, null
  br i1 %tobool6.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %call7 = call i32 %fn(%struct.device* noundef nonnull %call, i8* noundef %data) #11
  %tobool5.not = icmp eq i32 %call7, 0
  br i1 %tobool5.not, label %land.rhs, label %while.end

while.end:                                        ; preds = %while.body, %land.rhs
  %error.0.lcssa = phi i32 [ %call7, %while.body ], [ 0, %land.rhs ]
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %i) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %while.end
  %retval.0 = phi i32 [ %error.0.lcssa, %while.end ], [ -22, %lor.lhs.false ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init_node(%struct.klist* noundef, %struct.klist_iter* noundef, %struct.klist_node* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device* @next_device(%struct.klist_iter* noundef %i) unnamed_addr #0 {
entry:
  %call = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef %i) #11
  %tobool.not = icmp eq %struct.klist_node* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.klist_node, %struct.klist_node* %call, i64 -4, i32 2
  %device = getelementptr inbounds %struct.kref, %struct.kref* %add.ptr, i64 50
  %0 = bitcast %struct.kref* %device to %struct.device**
  %1 = load %struct.device*, %struct.device** %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dev.0 = phi %struct.device* [ %1, %if.then ], [ null, %entry ]
  ret %struct.device* %dev.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(%struct.klist_iter* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @bus_find_device(%struct.bus_type* noundef readonly %bus, %struct.device* noundef readonly %start, i8* noundef %data, i32 (%struct.device*, i8*)* nocapture noundef readonly %match) local_unnamed_addr #0 {
entry:
  %i = alloca %struct.klist_iter, align 8
  %0 = bitcast %struct.klist_iter* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.bus_type* %bus, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %tobool1.not = icmp eq %struct.subsys_private* %1, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 5
  %tobool3.not = icmp eq %struct.device* %start, null
  br i1 %tobool3.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %p4 = getelementptr inbounds %struct.device, %struct.device* %start, i64 0, i32 2
  %2 = load %struct.device_private*, %struct.device_private** %p4, align 8
  %knode_bus = getelementptr inbounds %struct.device_private, %struct.device_private* %2, i64 0, i32 3
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.klist_node* [ %knode_bus, %cond.true ], [ null, %if.end ]
  call void @klist_iter_init_node(%struct.klist* noundef %klist_devices, %struct.klist_iter* noundef nonnull %i, %struct.klist_node* noundef %cond) #11
  %call19 = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #10
  %tobool5.not20 = icmp eq %struct.device* %call19, null
  br i1 %tobool5.not20, label %while.end, label %while.body

while.body:                                       ; preds = %cond.end, %if.end11
  %call21 = phi %struct.device* [ %call, %if.end11 ], [ %call19, %cond.end ]
  %call6 = call i32 %match(%struct.device* noundef nonnull %call21, i8* noundef %data) #11
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %call8 = call %struct.device* @get_device(%struct.device* noundef nonnull %call21) #11
  %tobool9.not = icmp eq %struct.device* %call8, null
  br i1 %tobool9.not, label %if.end11, label %while.end

if.end11:                                         ; preds = %land.lhs.true, %while.body
  %call = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #10
  %tobool5.not = icmp eq %struct.device* %call, null
  br i1 %tobool5.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end11, %land.lhs.true, %cond.end
  %call.lcssa = phi %struct.device* [ null, %cond.end ], [ %call21, %land.lhs.true ], [ null, %if.end11 ]
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %i) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %while.end
  %retval.0 = phi %struct.device* [ %call.lcssa, %while.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret %struct.device* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_device(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @subsys_find_device_by_id(%struct.bus_type* noundef readonly %subsys, i32 noundef %id, %struct.device* noundef readonly %hint) local_unnamed_addr #0 {
entry:
  %i = alloca %struct.klist_iter, align 8
  %0 = bitcast %struct.klist_iter* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.bus_type* %subsys, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.device* %hint, null
  br i1 %tobool1.not, label %if.end11, label %if.then2

if.then2:                                         ; preds = %if.end
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %subsys, i64 0, i32 20
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 5
  %p3 = getelementptr inbounds %struct.device, %struct.device* %hint, i64 0, i32 2
  %2 = load %struct.device_private*, %struct.device_private** %p3, align 8
  %knode_bus = getelementptr inbounds %struct.device_private, %struct.device_private* %2, i64 0, i32 3
  call void @klist_iter_init_node(%struct.klist* noundef %klist_devices, %struct.klist_iter* noundef nonnull %i, %struct.klist_node* noundef %knode_bus) #11
  %call = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #10
  %tobool4.not = icmp eq %struct.device* %call, null
  br i1 %tobool4.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then2
  %id5 = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 28
  %3 = load i32, i32* %id5, align 4
  %cmp = icmp eq i32 %3, %id
  br i1 %cmp, label %land.lhs.true6, label %if.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %call7 = call %struct.device* @get_device(%struct.device* noundef nonnull %call) #11
  %tobool8.not = icmp eq %struct.device* %call7, null
  br i1 %tobool8.not, label %if.end10, label %cleanup.sink.split

if.end10:                                         ; preds = %land.lhs.true6, %land.lhs.true, %if.then2
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %i) #11
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %p12 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %subsys, i64 0, i32 20
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p12, align 8
  %klist_devices13 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i64 0, i32 5
  call void @klist_iter_init_node(%struct.klist* noundef %klist_devices13, %struct.klist_iter* noundef nonnull %i, %struct.klist_node* noundef null) #11
  %call1436 = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #10
  %tobool15.not37 = icmp eq %struct.device* %call1436, null
  br i1 %tobool15.not37, label %cleanup.sink.split, label %while.body

while.body:                                       ; preds = %if.end11, %if.end22
  %call1438 = phi %struct.device* [ %call14, %if.end22 ], [ %call1436, %if.end11 ]
  %id16 = getelementptr inbounds %struct.device, %struct.device* %call1438, i64 0, i32 28
  %5 = load i32, i32* %id16, align 4
  %cmp17 = icmp eq i32 %5, %id
  br i1 %cmp17, label %land.lhs.true18, label %if.end22

land.lhs.true18:                                  ; preds = %while.body
  %call19 = call %struct.device* @get_device(%struct.device* noundef nonnull %call1438) #11
  %tobool20.not = icmp eq %struct.device* %call19, null
  br i1 %tobool20.not, label %if.end22, label %cleanup.sink.split

if.end22:                                         ; preds = %land.lhs.true18, %while.body
  %call14 = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #10
  %tobool15.not = icmp eq %struct.device* %call14, null
  br i1 %tobool15.not, label %cleanup.sink.split, label %while.body

cleanup.sink.split:                               ; preds = %if.end22, %land.lhs.true18, %if.end11, %land.lhs.true6
  %retval.0.ph = phi %struct.device* [ %call, %land.lhs.true6 ], [ null, %if.end11 ], [ %call1438, %land.lhs.true18 ], [ null, %if.end22 ]
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi %struct.device* [ null, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret %struct.device* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bus_for_each_drv(%struct.bus_type* noundef readonly %bus, %struct.device_driver* noundef readonly %start, i8* noundef %data, i32 (%struct.device_driver*, i8*)* nocapture noundef readonly %fn) local_unnamed_addr #0 {
entry:
  %i = alloca %struct.klist_iter, align 8
  %0 = bitcast %struct.klist_iter* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.bus_type* %bus, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %klist_drivers = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 6
  %tobool1.not = icmp eq %struct.device_driver* %start, null
  br i1 %tobool1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %p2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %start, i64 0, i32 18
  %2 = load %struct.driver_private*, %struct.driver_private** %p2, align 8
  %knode_bus = getelementptr inbounds %struct.driver_private, %struct.driver_private* %2, i64 0, i32 2
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.klist_node* [ %knode_bus, %cond.true ], [ null, %if.end ]
  call void @klist_iter_init_node(%struct.klist* noundef %klist_drivers, %struct.klist_iter* noundef nonnull %i, %struct.klist_node* noundef %cond) #11
  %call13 = call fastcc %struct.device_driver* @next_driver(%struct.klist_iter* noundef nonnull %i) #10
  %tobool314.not = icmp eq %struct.device_driver* %call13, null
  br i1 %tobool314.not, label %while.end, label %while.body

while.body:                                       ; preds = %cond.end, %while.body
  %call15 = phi %struct.device_driver* [ %call, %while.body ], [ %call13, %cond.end ]
  %call5 = call i32 %fn(%struct.device_driver* noundef nonnull %call15, i8* noundef %data) #11
  %call = call fastcc %struct.device_driver* @next_driver(%struct.klist_iter* noundef nonnull %i) #10
  %tobool3 = icmp ne %struct.device_driver* %call, null
  %tobool4.not = icmp eq i32 %call5, 0
  %3 = select i1 %tobool3, i1 %tobool4.not, i1 false
  br i1 %3, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %cond.end
  %error.0.lcssa = phi i32 [ 0, %cond.end ], [ %call5, %while.body ]
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %i) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %error.0.lcssa, %while.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_driver* @next_driver(%struct.klist_iter* noundef %i) unnamed_addr #0 {
entry:
  %call = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef %i) #11
  %tobool.not = icmp eq %struct.klist_node* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.klist_node, %struct.klist_node* %call, i64 -4, i32 2
  %driver = getelementptr inbounds %struct.kref, %struct.kref* %add.ptr, i64 36
  %0 = bitcast %struct.kref* %driver to %struct.device_driver**
  %1 = load %struct.device_driver*, %struct.device_driver** %0, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.device_driver* [ %1, %if.then ], [ null, %entry ]
  ret %struct.device_driver* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bus_add_device(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %bus1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %0 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8
  %call = call fastcc %struct.bus_type* @bus_get(%struct.bus_type* noundef %0) #10
  %tobool.not = icmp eq %struct.bus_type* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %dev_groups = getelementptr inbounds %struct.bus_type, %struct.bus_type* %call, i64 0, i32 4
  %1 = load %struct.attribute_group**, %struct.attribute_group*** %dev_groups, align 8
  %call2 = call i32 @device_add_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %1) #11
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %out_put

if.end:                                           ; preds = %if.then
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %call, i64 0, i32 20
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %devices_kset = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i64 0, i32 1
  %3 = load %struct.kset*, %struct.kset** %devices_kset, align 8
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %3, i64 0, i32 2
  %kobj5 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call6 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #10
  %call7 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj, %struct.kobject* noundef %kobj5, i8* noundef %call6) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %out_groups

if.end10:                                         ; preds = %if.end
  %4 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8
  %p13 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %4, i64 0, i32 20
  %5 = load %struct.subsys_private*, %struct.subsys_private** %p13, align 8
  %kobj14 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %5, i64 0, i32 0, i32 2
  %call15 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj5, %struct.kobject* noundef %kobj14, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %out_subsys

if.end18:                                         ; preds = %if.end10
  %p19 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %6 = load %struct.device_private*, %struct.device_private** %p19, align 8
  %knode_bus = getelementptr inbounds %struct.device_private, %struct.device_private* %6, i64 0, i32 3
  %7 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %7, i64 0, i32 5
  call void @klist_add_tail(%struct.klist_node* noundef %knode_bus, %struct.klist* noundef %klist_devices) #11
  br label %cleanup

out_subsys:                                       ; preds = %if.end10
  %8 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %devices_kset23 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %8, i64 0, i32 1
  %9 = load %struct.kset*, %struct.kset** %devices_kset23, align 8
  %kobj24 = getelementptr inbounds %struct.kset, %struct.kset* %9, i64 0, i32 2
  %call25 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #10
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj24, i8* noundef %call25) #11
  br label %out_groups

out_groups:                                       ; preds = %if.end, %out_subsys
  %error.0 = phi i32 [ %call7, %if.end ], [ %call15, %out_subsys ]
  %10 = load %struct.attribute_group**, %struct.attribute_group*** %dev_groups, align 8
  call void @device_remove_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %10) #11
  br label %out_put

out_put:                                          ; preds = %if.then, %out_groups
  %error.1 = phi i32 [ %call2, %if.then ], [ %error.0, %out_groups ]
  %11 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8
  call fastcc void @bus_put(%struct.bus_type* noundef %11) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end18, %out_put
  %retval.0 = phi i32 [ %error.1, %out_put ], [ 0, %if.end18 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(%struct.device* noundef, %struct.attribute_group** noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #4 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_add_tail(%struct.klist_node* noundef, %struct.klist* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(%struct.kobject* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(%struct.device* noundef, %struct.attribute_group** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bus_probe_device(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %bus1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %0 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8
  %tobool.not = icmp eq %struct.bus_type* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 20
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 8
  %bf.load = load i8, i8* %drivers_autoprobe, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool2.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @device_initial_probe(%struct.device* noundef %dev) #11
  %.pre = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = phi %struct.subsys_private* [ %.pre, %if.then3 ], [ %1, %if.end ]
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i64 0, i32 3
  call void @mutex_lock(%struct.mutex* noundef %mutex) #11
  %3 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %next = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %3, i64 0, i32 2, i32 0
  %4 = bitcast %struct.list_head** %next to i8**
  %.pn40 = load i8*, i8** %4, align 8
  %5 = bitcast i8* %.pn40 to %struct.list_head*
  %interfaces843 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %3, i64 0, i32 2
  %cmp.not44 = icmp eq %struct.list_head* %interfaces843, %5
  br i1 %cmp.not44, label %for.end, label %for.body

for.body:                                         ; preds = %if.end4, %for.inc
  %6 = phi %struct.subsys_private* [ %9, %for.inc ], [ %3, %if.end4 ]
  %.pn45 = phi i8* [ %.pn, %for.inc ], [ %.pn40, %if.end4 ]
  %add_dev = getelementptr i8, i8* %.pn45, i64 16
  %7 = bitcast i8* %add_dev to i32 (%struct.device*, %struct.subsys_interface*)**
  %8 = load i32 (%struct.device*, %struct.subsys_interface*)*, i32 (%struct.device*, %struct.subsys_interface*)** %7, align 8
  %tobool9.not = icmp eq i32 (%struct.device*, %struct.subsys_interface*)* %8, null
  br i1 %tobool9.not, label %for.inc, label %if.then10

if.then10:                                        ; preds = %for.body
  %sif.046.in = getelementptr i8, i8* %.pn45, i64 -16
  %sif.046 = bitcast i8* %sif.046.in to %struct.subsys_interface*
  %call = call i32 %8(%struct.device* noundef %dev, %struct.subsys_interface* noundef %sif.046) #11
  %.pre48 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then10
  %9 = phi %struct.subsys_private* [ %6, %for.body ], [ %.pre48, %if.then10 ]
  %10 = bitcast i8* %.pn45 to i8**
  %.pn = load i8*, i8** %10, align 8
  %11 = bitcast i8* %.pn to %struct.list_head*
  %interfaces8 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %9, i64 0, i32 2
  %cmp.not = icmp eq %struct.list_head* %interfaces8, %11
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end4
  %.lcssa = phi %struct.subsys_private* [ %3, %if.end4 ], [ %9, %for.inc ]
  %mutex22 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %.lcssa, i64 0, i32 3
  call void @mutex_unlock(%struct.mutex* noundef %mutex22) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initial_probe(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bus_remove_device(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %bus1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %0 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8
  %tobool.not = icmp eq %struct.bus_type* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 20
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 3
  call void @mutex_lock(%struct.mutex* noundef %mutex) #11
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %next = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i64 0, i32 2, i32 0
  %3 = bitcast %struct.list_head** %next to i8**
  %.pn56 = load i8*, i8** %3, align 8
  %4 = bitcast i8* %.pn56 to %struct.list_head*
  %interfaces459 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i64 0, i32 2
  %cmp.not60 = icmp eq %struct.list_head* %interfaces459, %4
  br i1 %cmp.not60, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %5 = phi %struct.subsys_private* [ %8, %for.inc ], [ %2, %if.end ]
  %.pn61 = phi i8* [ %.pn, %for.inc ], [ %.pn56, %if.end ]
  %remove_dev = getelementptr i8, i8* %.pn61, i64 24
  %6 = bitcast i8* %remove_dev to void (%struct.device*, %struct.subsys_interface*)**
  %7 = load void (%struct.device*, %struct.subsys_interface*)*, void (%struct.device*, %struct.subsys_interface*)** %6, align 8
  %tobool5.not = icmp eq void (%struct.device*, %struct.subsys_interface*)* %7, null
  br i1 %tobool5.not, label %for.inc, label %if.then6

if.then6:                                         ; preds = %for.body
  %sif.062.in = getelementptr i8, i8* %.pn61, i64 -16
  %sif.062 = bitcast i8* %sif.062.in to %struct.subsys_interface*
  call void %7(%struct.device* noundef %dev, %struct.subsys_interface* noundef %sif.062) #11
  %.pre = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then6
  %8 = phi %struct.subsys_private* [ %5, %for.body ], [ %.pre, %if.then6 ]
  %9 = bitcast i8* %.pn61 to i8**
  %.pn = load i8*, i8** %9, align 8
  %10 = bitcast i8* %.pn to %struct.list_head*
  %interfaces4 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %8, i64 0, i32 2
  %cmp.not = icmp eq %struct.list_head* %interfaces4, %10
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  %.lcssa = phi %struct.subsys_private* [ %2, %if.end ], [ %8, %for.inc ]
  %mutex18 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %.lcssa, i64 0, i32 3
  call void @mutex_unlock(%struct.mutex* noundef %mutex18) #11
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #11
  %11 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8
  %p20 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %11, i64 0, i32 20
  %12 = load %struct.subsys_private*, %struct.subsys_private** %p20, align 8
  %devices_kset = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %12, i64 0, i32 1
  %13 = load %struct.kset*, %struct.kset** %devices_kset, align 8
  %kobj21 = getelementptr inbounds %struct.kset, %struct.kset* %13, i64 0, i32 2
  %call = call fastcc i8* @dev_name(%struct.device* noundef %dev) #10
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj21, i8* noundef %call) #11
  %14 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8
  %dev_groups = getelementptr inbounds %struct.bus_type, %struct.bus_type* %14, i64 0, i32 4
  %15 = load %struct.attribute_group**, %struct.attribute_group*** %dev_groups, align 8
  call void @device_remove_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %15) #11
  %p23 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %16 = load %struct.device_private*, %struct.device_private** %p23, align 8
  %knode_bus = getelementptr inbounds %struct.device_private, %struct.device_private* %16, i64 0, i32 3
  %call24 = call i32 @klist_node_attached(%struct.klist_node* noundef %knode_bus) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %for.end
  %17 = load %struct.device_private*, %struct.device_private** %p23, align 8
  %knode_bus28 = getelementptr inbounds %struct.device_private, %struct.device_private* %17, i64 0, i32 3
  call void @klist_del(%struct.klist_node* noundef %knode_bus28) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %for.end
  call void @device_release_driver(%struct.device* noundef %dev) #11
  %18 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8
  call fastcc void @bus_put(%struct.bus_type* noundef %18) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @klist_node_attached(%struct.klist_node* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_del(%struct.klist_node* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bus_add_driver(%struct.device_driver* noundef %drv) local_unnamed_addr #0 {
entry:
  %bus1 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 1
  %0 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8
  %call = call fastcc %struct.bus_type* @bus_get(%struct.bus_type* noundef %0) #10
  %tobool.not = icmp eq %struct.bus_type* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @kzalloc(i64 noundef 152) #10
  %tobool3.not = icmp eq i8* %call2, null
  br i1 %tobool3.not, label %out_put_bus, label %if.end5

if.end5:                                          ; preds = %if.end
  %klist_devices = getelementptr inbounds i8, i8* %call2, i64 64
  %1 = bitcast i8* %klist_devices to %struct.klist*
  call void @klist_init(%struct.klist* noundef %1, void (%struct.klist_node*)* noundef null, void (%struct.klist_node*)* noundef null) #11
  %driver = getelementptr inbounds i8, i8* %call2, i64 144
  %2 = bitcast i8* %driver to %struct.device_driver**
  store %struct.device_driver* %drv, %struct.device_driver** %2, align 8
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 18
  %3 = bitcast %struct.driver_private** %p to i8**
  store i8* %call2, i8** %3, align 8
  %p6 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %call, i64 0, i32 20
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p6, align 8
  %drivers_kset = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i64 0, i32 4
  %5 = load %struct.kset*, %struct.kset** %drivers_kset, align 8
  %kobj = bitcast i8* %call2 to %struct.kobject*
  %kset = getelementptr inbounds i8, i8* %call2, i64 32
  %6 = bitcast i8* %kset to %struct.kset**
  store %struct.kset* %5, %struct.kset** %6, align 8
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 0
  %7 = load i8*, i8** %name, align 8
  %call8 = call i32 (%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.kobject* noundef nonnull %kobj, %struct.kobj_type* noundef nonnull @driver_ktype, %struct.kobject* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %7) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %out_unregister

if.end11:                                         ; preds = %if.end5
  %knode_bus = getelementptr inbounds i8, i8* %call2, i64 104
  %8 = bitcast i8* %knode_bus to %struct.klist_node*
  %9 = load %struct.subsys_private*, %struct.subsys_private** %p6, align 8
  %klist_drivers = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %9, i64 0, i32 6
  call void @klist_add_tail(%struct.klist_node* noundef %8, %struct.klist* noundef %klist_drivers) #11
  %10 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8
  %p14 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %10, i64 0, i32 20
  %11 = load %struct.subsys_private*, %struct.subsys_private** %p14, align 8
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %11, i64 0, i32 8
  %bf.load = load i8, i8* %drivers_autoprobe, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool15.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool15.not, label %if.end21, label %if.then16

if.then16:                                        ; preds = %if.end11
  %call17 = call i32 @driver_attach(%struct.device_driver* noundef %drv) #11
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %out_unregister

if.end21:                                         ; preds = %if.then16, %if.end11
  %call22 = call i32 @driver_create_file(%struct.device_driver* noundef %drv, %struct.driver_attribute* noundef nonnull @driver_attr_uevent) #11
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end28, label %do.end

do.end:                                           ; preds = %if.end21
  %12 = load i8*, i8** %name, align 8
  %call27 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.bus_add_driver, i64 0, i64 0), i8* noundef %12) #13
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.end21
  %drv_groups = getelementptr inbounds %struct.bus_type, %struct.bus_type* %call, i64 0, i32 5
  %13 = load %struct.attribute_group**, %struct.attribute_group*** %drv_groups, align 8
  %call29 = call i32 @driver_add_groups(%struct.device_driver* noundef %drv, %struct.attribute_group** noundef %13) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end38, label %do.end34

do.end34:                                         ; preds = %if.end28
  %14 = load i8*, i8** %name, align 8
  %call37 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.bus_add_driver, i64 0, i64 0), i8* noundef %14) #13
  br label %if.end38

if.end38:                                         ; preds = %do.end34, %if.end28
  %suppress_bind_attrs = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 4
  %15 = load i8, i8* %suppress_bind_attrs, align 8, !range !8
  %tobool39.not = icmp eq i8 %15, 0
  br i1 %tobool39.not, label %if.then40, label %cleanup

if.then40:                                        ; preds = %if.end38
  %call41 = call fastcc i32 @add_bind_files(%struct.device_driver* noundef %drv) #10
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup, label %do.end46

do.end46:                                         ; preds = %if.then40
  %16 = load i8*, i8** %name, align 8
  %call49 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.bus_add_driver, i64 0, i64 0), i8* noundef %16) #13
  br label %cleanup

out_unregister:                                   ; preds = %if.then16, %if.end5
  %error.0 = phi i32 [ %call8, %if.end5 ], [ %call17, %if.then16 ]
  call void @kobject_put(%struct.kobject* noundef nonnull %kobj) #11
  store %struct.driver_private* null, %struct.driver_private** %p, align 8
  br label %out_put_bus

out_put_bus:                                      ; preds = %if.end, %out_unregister
  %error.1 = phi i32 [ %error.0, %out_unregister ], [ -12, %if.end ]
  call fastcc void @bus_put(%struct.bus_type* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end46, %if.then40, %entry, %out_put_bus
  %retval.0 = phi i32 [ %error.1, %out_put_bus ], [ -22, %entry ], [ 0, %if.then40 ], [ 0, %do.end46 ], [ 0, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #11
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_init(%struct.klist* noundef, void (%struct.klist_node*)* noundef, void (%struct.klist_node*)* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(%struct.kobject* noundef, %struct.kobj_type* noundef, %struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_attach(%struct.device_driver* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_create_file(%struct.device_driver* noundef, %struct.driver_attribute* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_add_groups(%struct.device_driver* noundef, %struct.attribute_group** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @add_bind_files(%struct.device_driver* noundef %drv) unnamed_addr #0 {
entry:
  %call = call i32 @driver_create_file(%struct.device_driver* noundef %drv, %struct.driver_attribute* noundef nonnull @driver_attr_unbind) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call1 = call i32 @driver_create_file(%struct.device_driver* noundef %drv, %struct.driver_attribute* noundef nonnull @driver_attr_bind) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @driver_remove_file(%struct.device_driver* noundef %drv, %struct.driver_attribute* noundef nonnull @driver_attr_unbind) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.then2, %entry
  %ret.0 = phi i32 [ %call1, %if.then2 ], [ 0, %if.then ], [ %call, %entry ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bus_remove_driver(%struct.device_driver* noundef %drv) local_unnamed_addr #0 {
entry:
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 1
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool.not = icmp eq %struct.bus_type* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %suppress_bind_attrs = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 4
  %1 = load i8, i8* %suppress_bind_attrs, align 8, !range !8
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call fastcc void @remove_bind_files(%struct.device_driver* noundef %drv) #10
  %.pre = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = phi %struct.bus_type* [ %.pre, %if.then2 ], [ %0, %if.end ]
  %drv_groups = getelementptr inbounds %struct.bus_type, %struct.bus_type* %2, i64 0, i32 5
  %3 = load %struct.attribute_group**, %struct.attribute_group*** %drv_groups, align 8
  call void @driver_remove_groups(%struct.device_driver* noundef %drv, %struct.attribute_group** noundef %3) #11
  call void @driver_remove_file(%struct.device_driver* noundef %drv, %struct.driver_attribute* noundef nonnull @driver_attr_uevent) #11
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 18
  %4 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %knode_bus = getelementptr inbounds %struct.driver_private, %struct.driver_private* %4, i64 0, i32 2
  call void @klist_remove(%struct.klist_node* noundef %knode_bus) #11
  call void @driver_detach(%struct.device_driver* noundef %drv) #11
  %5 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %kobj = getelementptr inbounds %struct.driver_private, %struct.driver_private* %5, i64 0, i32 0
  call void @kobject_put(%struct.kobject* noundef %kobj) #11
  %6 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  call fastcc void @bus_put(%struct.bus_type* noundef %6) #10
  br label %return

return:                                           ; preds = %entry, %if.end3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @remove_bind_files(%struct.device_driver* noundef %drv) unnamed_addr #0 {
entry:
  call void @driver_remove_file(%struct.device_driver* noundef %drv, %struct.driver_attribute* noundef nonnull @driver_attr_bind) #11
  call void @driver_remove_file(%struct.device_driver* noundef %drv, %struct.driver_attribute* noundef nonnull @driver_attr_unbind) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_remove_groups(%struct.device_driver* noundef, %struct.attribute_group** noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_remove_file(%struct.device_driver* noundef, %struct.driver_attribute* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_remove(%struct.klist_node* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_detach(%struct.device_driver* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bus_rescan_devices(%struct.bus_type* noundef %bus) local_unnamed_addr #0 {
entry:
  %call = call i32 @bus_for_each_dev(%struct.bus_type* noundef %bus, %struct.device* noundef null, i8* noundef null, i32 (%struct.device*, i8*)* noundef nonnull @bus_rescan_devices_helper) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @bus_rescan_devices_helper(%struct.device* noundef %dev, i8* nocapture noundef readnone %data) #0 {
entry:
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %0 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool.not = icmp eq %struct.device_driver* %0, null
  br i1 %tobool.not, label %if.then, label %if.end14.thread

if.then:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 1
  %1 = load %struct.device*, %struct.device** %parent, align 8
  %tobool1.not = icmp eq %struct.device* %1, null
  br i1 %tobool1.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %need_parent_lock = getelementptr inbounds %struct.bus_type, %struct.bus_type* %2, i64 0, i32 22
  %3 = load i8, i8* %need_parent_lock, align 8, !range !8
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  call fastcc void @device_lock(%struct.device* noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  %call = call i32 @device_attach(%struct.device* noundef %dev) #11
  %4 = load %struct.device*, %struct.device** %parent, align 8
  %tobool6.not = icmp eq %struct.device* %4, null
  br i1 %tobool6.not, label %if.end14, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end
  %bus8 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %5 = load %struct.bus_type*, %struct.bus_type** %bus8, align 8
  %need_parent_lock9 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %5, i64 0, i32 22
  %6 = load i8, i8* %need_parent_lock9, align 8, !range !8
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %land.lhs.true7
  call fastcc void @device_unlock(%struct.device* noundef nonnull %4) #10
  br label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true7, %if.then11
  %cmp = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp, i32 %call, i32 0
  br label %if.end14.thread

if.end14.thread:                                  ; preds = %if.end14, %entry
  %7 = phi i32 [ 0, %entry ], [ %spec.select, %if.end14 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_reprobe(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %0 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool.not = icmp eq %struct.device_driver* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @device_driver_detach(%struct.device* noundef %dev) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @bus_rescan_devices_helper(%struct.device* noundef %dev, i8* noundef null) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_driver_detach(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bus_register(%struct.bus_type* noundef %bus) local_unnamed_addr #0 {
entry:
  %lock_key = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 21
  %call = call fastcc i8* @kzalloc(i64 noundef 408) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bus2 = getelementptr inbounds i8, i8* %call, i64 296
  %0 = bitcast i8* %bus2 to %struct.bus_type**
  store %struct.bus_type* %bus, %struct.bus_type** %0, align 8
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %1 = bitcast %struct.subsys_private** %p to i8**
  store i8* %call, i8** %1, align 8
  %bus_notifier = getelementptr inbounds i8, i8* %call, i64 240
  %rwsem = bitcast i8* %bus_notifier to %struct.rw_semaphore*
  call void @__init_rwsem(%struct.rw_semaphore* noundef %rwsem, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @bus_register.__key) #11
  %head = getelementptr inbounds i8, i8* %call, i64 280
  %2 = bitcast i8* %head to %struct.notifier_block**
  store %struct.notifier_block* null, %struct.notifier_block** %2, align 8
  %kobj = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %kobj to %struct.kobject*
  %name = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %call7 = call i32 (%struct.kobject*, i8*, ...) @kobject_set_name(%struct.kobject* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %4) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %out

if.end10:                                         ; preds = %if.end
  %subsys = bitcast i8* %call to %struct.kset*
  %5 = load %struct.kset*, %struct.kset** @bus_kset, align 8
  %kset = getelementptr inbounds i8, i8* %call, i64 56
  %6 = bitcast i8* %kset to %struct.kset**
  store %struct.kset* %5, %struct.kset** %6, align 8
  %ktype = getelementptr inbounds i8, i8* %call, i64 64
  %7 = bitcast i8* %ktype to %struct.kobj_type**
  store %struct.kobj_type* @bus_ktype, %struct.kobj_type** %7, align 8
  %8 = getelementptr inbounds i8, i8* %call, i64 288
  %bf.load = load i8, i8* %8, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %8, align 8
  %call16 = call i32 @kset_register(%struct.kset* noundef nonnull %subsys) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %out

if.end19:                                         ; preds = %if.end10
  %call20 = call i32 @bus_create_file(%struct.bus_type* noundef %bus, %struct.bus_attribute* noundef nonnull @bus_attr_uevent) #10
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %bus_uevent_fail

if.end23:                                         ; preds = %if.end19
  %call26 = call %struct.kset* @kset_create_and_add(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.kset_uevent_ops* noundef null, %struct.kobject* noundef %3) #11
  %devices_kset = getelementptr inbounds i8, i8* %call, i64 96
  %9 = bitcast i8* %devices_kset to %struct.kset**
  store %struct.kset* %call26, %struct.kset** %9, align 8
  %tobool28.not = icmp eq %struct.kset* %call26, null
  br i1 %tobool28.not, label %bus_devices_fail, label %if.end30

if.end30:                                         ; preds = %if.end23
  %call33 = call %struct.kset* @kset_create_and_add(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %struct.kset_uevent_ops* noundef null, %struct.kobject* noundef %3) #11
  %drivers_kset = getelementptr inbounds i8, i8* %call, i64 152
  %10 = bitcast i8* %drivers_kset to %struct.kset**
  store %struct.kset* %call33, %struct.kset** %10, align 8
  %tobool35.not = icmp eq %struct.kset* %call33, null
  br i1 %tobool35.not, label %bus_drivers_fail, label %if.end37

if.end37:                                         ; preds = %if.end30
  %interfaces = getelementptr inbounds i8, i8* %call, i64 104
  %11 = bitcast i8* %interfaces to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %11) #10
  %mutex = getelementptr inbounds i8, i8* %call, i64 120
  %12 = bitcast i8* %mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %12, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %struct.lock_class_key* noundef %lock_key) #11
  %klist_devices = getelementptr inbounds i8, i8* %call, i64 160
  %13 = bitcast i8* %klist_devices to %struct.klist*
  call void @klist_init(%struct.klist* noundef %13, void (%struct.klist_node*)* noundef nonnull @klist_devices_get, void (%struct.klist_node*)* noundef nonnull @klist_devices_put) #11
  %klist_drivers = getelementptr inbounds i8, i8* %call, i64 200
  %14 = bitcast i8* %klist_drivers to %struct.klist*
  call void @klist_init(%struct.klist* noundef %14, void (%struct.klist_node*)* noundef null, void (%struct.klist_node*)* noundef null) #11
  %call38 = call fastcc i32 @add_probe_files(%struct.bus_type* noundef %bus) #10
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %bus_probe_files_fail

if.end41:                                         ; preds = %if.end37
  %bus_groups = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 3
  %15 = load %struct.attribute_group**, %struct.attribute_group*** %bus_groups, align 8
  %call42 = call fastcc i32 @bus_add_groups(%struct.bus_type* noundef %bus, %struct.attribute_group** noundef %15) #10
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %bus_groups_fail

bus_groups_fail:                                  ; preds = %if.end41
  call fastcc void @remove_probe_files(%struct.bus_type* noundef %bus) #10
  br label %bus_probe_files_fail

bus_probe_files_fail:                             ; preds = %if.end37, %bus_groups_fail
  %retval1.0 = phi i32 [ %call38, %if.end37 ], [ %call42, %bus_groups_fail ]
  %16 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %drivers_kset47 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %16, i64 0, i32 4
  %17 = load %struct.kset*, %struct.kset** %drivers_kset47, align 8
  call void @kset_unregister(%struct.kset* noundef %17) #11
  br label %bus_drivers_fail

bus_drivers_fail:                                 ; preds = %if.end30, %bus_probe_files_fail
  %retval1.1 = phi i32 [ %retval1.0, %bus_probe_files_fail ], [ -12, %if.end30 ]
  %18 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %devices_kset49 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %18, i64 0, i32 1
  %19 = load %struct.kset*, %struct.kset** %devices_kset49, align 8
  call void @kset_unregister(%struct.kset* noundef %19) #11
  br label %bus_devices_fail

bus_devices_fail:                                 ; preds = %if.end23, %bus_drivers_fail
  %retval1.2 = phi i32 [ %retval1.1, %bus_drivers_fail ], [ -12, %if.end23 ]
  call void @bus_remove_file(%struct.bus_type* noundef %bus, %struct.bus_attribute* noundef nonnull @bus_attr_uevent) #10
  br label %bus_uevent_fail

bus_uevent_fail:                                  ; preds = %if.end19, %bus_devices_fail
  %retval1.3 = phi i32 [ %call20, %if.end19 ], [ %retval1.2, %bus_devices_fail ]
  %20 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %subsys51 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %20, i64 0, i32 0
  call void @kset_unregister(%struct.kset* noundef %subsys51) #11
  br label %out

out:                                              ; preds = %if.end10, %if.end, %bus_uevent_fail
  %retval1.4 = phi i32 [ %call7, %if.end ], [ %call16, %if.end10 ], [ %retval1.3, %bus_uevent_fail ]
  %21 = load i8*, i8** %1, align 8
  call void @kfree(i8* noundef %21) #11
  store %struct.subsys_private* null, %struct.subsys_private** %p, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %entry, %out
  %retval.0 = phi i32 [ %retval1.4, %out ], [ -12, %entry ], [ 0, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(%struct.rw_semaphore* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(%struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kset_register(%struct.kset* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kset* @kset_create_and_add(i8* noundef, %struct.kset_uevent_ops* noundef, %struct.kobject* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @klist_devices_get(%struct.klist_node* nocapture noundef readonly %n) #0 {
entry:
  %add.ptr = getelementptr %struct.klist_node, %struct.klist_node* %n, i64 -4, i32 2
  %device = getelementptr inbounds %struct.kref, %struct.kref* %add.ptr, i64 50
  %0 = bitcast %struct.kref* %device to %struct.device**
  %1 = load %struct.device*, %struct.device** %0, align 8
  %call = call %struct.device* @get_device(%struct.device* noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @klist_devices_put(%struct.klist_node* nocapture noundef readonly %n) #0 {
entry:
  %add.ptr = getelementptr %struct.klist_node, %struct.klist_node* %n, i64 -4, i32 2
  %device = getelementptr inbounds %struct.kref, %struct.kref* %add.ptr, i64 50
  %0 = bitcast %struct.kref* %device to %struct.device**
  %1 = load %struct.device*, %struct.device** %0, align 8
  call void @put_device(%struct.device* noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @add_probe_files(%struct.bus_type* noundef %bus) unnamed_addr #0 {
entry:
  %call = call i32 @bus_create_file(%struct.bus_type* noundef %bus, %struct.bus_attribute* noundef nonnull @bus_attr_drivers_probe) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %call2 = call i32 @bus_create_file(%struct.bus_type* noundef %bus, %struct.bus_attribute* noundef nonnull @bus_attr_drivers_autoprobe) #10
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %out, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @bus_remove_file(%struct.bus_type* noundef %bus, %struct.bus_attribute* noundef nonnull @bus_attr_drivers_probe) #10
  br label %out

out:                                              ; preds = %if.end, %if.then4, %entry
  %retval1.0 = phi i32 [ %call, %entry ], [ %call2, %if.then4 ], [ 0, %if.end ]
  ret i32 %retval1.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bus_add_groups(%struct.bus_type* nocapture noundef readonly %bus, %struct.attribute_group** noundef %groups) unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %kobj = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0, i32 2
  %call = call i32 @sysfs_create_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %groups) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @remove_probe_files(%struct.bus_type* noundef %bus) unnamed_addr #0 {
entry:
  call void @bus_remove_file(%struct.bus_type* noundef %bus, %struct.bus_attribute* noundef nonnull @bus_attr_drivers_autoprobe) #10
  call void @bus_remove_file(%struct.bus_type* noundef %bus, %struct.bus_attribute* noundef nonnull @bus_attr_drivers_probe) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(%struct.kset* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bus_unregister(%struct.bus_type* noundef %bus) local_unnamed_addr #0 {
entry:
  %dev_root = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 2
  %0 = load %struct.device*, %struct.device** %dev_root, align 8
  %tobool.not = icmp eq %struct.device* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @device_unregister(%struct.device* noundef nonnull %0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bus_groups = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 3
  %1 = load %struct.attribute_group**, %struct.attribute_group*** %bus_groups, align 8
  call fastcc void @bus_remove_groups(%struct.bus_type* noundef %bus, %struct.attribute_group** noundef %1) #10
  call fastcc void @remove_probe_files(%struct.bus_type* noundef %bus) #10
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %drivers_kset = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i64 0, i32 4
  %3 = load %struct.kset*, %struct.kset** %drivers_kset, align 8
  call void @kset_unregister(%struct.kset* noundef %3) #11
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %devices_kset = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i64 0, i32 1
  %5 = load %struct.kset*, %struct.kset** %devices_kset, align 8
  call void @kset_unregister(%struct.kset* noundef %5) #11
  call void @bus_remove_file(%struct.bus_type* noundef %bus, %struct.bus_attribute* noundef nonnull @bus_attr_uevent) #10
  %6 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %6, i64 0, i32 0
  call void @kset_unregister(%struct.kset* noundef %subsys) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bus_remove_groups(%struct.bus_type* nocapture noundef readonly %bus, %struct.attribute_group** noundef %groups) unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %kobj = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0, i32 2
  call void @sysfs_remove_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %groups) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bus_register_notifier(%struct.bus_type* nocapture noundef readonly %bus, %struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %bus_notifier = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 7
  %call = call i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* noundef %bus_notifier, %struct.notifier_block* noundef %nb) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bus_unregister_notifier(%struct.bus_type* nocapture noundef readonly %bus, %struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %bus_notifier = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 7
  %call = call i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* noundef %bus_notifier, %struct.notifier_block* noundef %nb) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.kset* @bus_get_kset(%struct.bus_type* nocapture noundef readonly %bus) local_unnamed_addr #4 {
entry:
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0
  ret %struct.kset* %subsys
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.klist* @bus_get_device_klist(%struct.bus_type* nocapture noundef readonly %bus) local_unnamed_addr #4 {
entry:
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 5
  ret %struct.klist* %klist_devices
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bus_sort_breadthfirst(%struct.bus_type* nocapture noundef readonly %bus, i32 (%struct.device*, %struct.device*)* nocapture noundef readonly %compare) local_unnamed_addr #0 {
entry:
  %sorted_devices = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %sorted_devices to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %sorted_devices, i64 0, i32 0
  store %struct.list_head* %sorted_devices, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %sorted_devices, i64 0, i32 1
  store %struct.list_head* %sorted_devices, %struct.list_head** %prev, align 8
  %call = call %struct.klist* @bus_get_device_klist(%struct.bus_type* noundef %bus) #10
  %rlock.i = getelementptr inbounds %struct.klist, %struct.klist* %call, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %k_list = getelementptr inbounds %struct.klist, %struct.klist* %call, i64 0, i32 1
  %1 = bitcast %struct.list_head* %k_list to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.list_head*
  %cmp.not46 = icmp eq %struct.list_head* %k_list, %3
  br i1 %cmp.not46, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn.in.in47 = phi i8* [ %.pn, %for.body ], [ %2, %entry ]
  %.pn.in = bitcast i8* %.pn.in.in47 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  %device = getelementptr i8, i8* %.pn.in.in47, i64 88
  %4 = bitcast i8* %device to %struct.device**
  %5 = load %struct.device*, %struct.device** %4, align 8
  call fastcc void @device_insertion_sort_klist(%struct.device* noundef %5, %struct.list_head* noundef nonnull %sorted_devices, i32 (%struct.device*, %struct.device*)* noundef %compare) #10
  %6 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %k_list, %6
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call fastcc void @list_splice(%struct.list_head* noundef nonnull %sorted_devices, %struct.list_head* noundef %k_list) #10
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_insertion_sort_klist(%struct.device* noundef %a, %struct.list_head* noundef %list, i32 (%struct.device*, %struct.device*)* nocapture noundef readonly %compare) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.list_head* %list to i8**
  %.pn38 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn38 to %struct.list_head*
  %cmp.not39 = icmp eq %struct.list_head* %1, %list
  br i1 %cmp.not39, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn40 = phi i8* [ %.pn, %for.inc ], [ %.pn38, %entry ]
  %device = getelementptr i8, i8* %.pn40, i64 88
  %2 = bitcast i8* %device to %struct.device**
  %3 = load %struct.device*, %struct.device** %2, align 8
  %call = call i32 %compare(%struct.device* noundef %a, %struct.device* noundef %3) #11
  %cmp7 = icmp slt i32 %call, 1
  br i1 %cmp7, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %p9 = getelementptr inbounds %struct.device, %struct.device* %3, i64 0, i32 2
  %4 = load %struct.device_private*, %struct.device_private** %p9, align 8
  %n_node11 = getelementptr inbounds %struct.device_private, %struct.device_private* %4, i64 0, i32 3, i32 1
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %5 = bitcast i8* %.pn40 to i8**
  %.pn = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %6, %list
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %list.sink = phi %struct.list_head* [ %n_node11, %if.then ], [ %list, %entry ], [ %list, %for.inc ]
  %.pn43.in = getelementptr inbounds %struct.device, %struct.device* %a, i64 0, i32 2
  %.pn43 = load %struct.device_private*, %struct.device_private** %.pn43.in, align 8
  %n_node22.sink = getelementptr inbounds %struct.device_private, %struct.device_private* %.pn43, i64 0, i32 3, i32 1
  call fastcc void @list_move_tail(%struct.list_head* noundef %n_node22.sink, %struct.list_head* noundef %list.sink) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @subsys_dev_iter_init(%struct.subsys_dev_iter* noundef %iter, %struct.bus_type* nocapture noundef readonly %subsys, %struct.device* noundef readonly %start, %struct.device_type* noundef %type) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %start, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.device, %struct.device* %start, i64 0, i32 2
  %0 = load %struct.device_private*, %struct.device_private** %p, align 8
  %knode_bus = getelementptr inbounds %struct.device_private, %struct.device_private* %0, i64 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %start_knode.0 = phi %struct.klist_node* [ %knode_bus, %if.then ], [ null, %entry ]
  %p1 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %subsys, i64 0, i32 20
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p1, align 8
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 5
  %ki = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %iter, i64 0, i32 0
  call void @klist_iter_init_node(%struct.klist* noundef %klist_devices, %struct.klist_iter* noundef %ki, %struct.klist_node* noundef %start_knode.0) #11
  %type2 = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %iter, i64 0, i32 1
  store %struct.device_type* %type, %struct.device_type** %type2, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @subsys_dev_iter_next(%struct.subsys_dev_iter* noundef %iter) local_unnamed_addr #0 {
entry:
  %ki = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %iter, i64 0, i32 0
  %type = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %iter, i64 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false, %entry
  %call = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef %ki) #11
  %tobool.not = icmp eq %struct.klist_node* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.cond
  %add.ptr = getelementptr %struct.klist_node, %struct.klist_node* %call, i64 -4, i32 2
  %device = getelementptr inbounds %struct.kref, %struct.kref* %add.ptr, i64 50
  %0 = bitcast %struct.kref* %device to %struct.device**
  %1 = load %struct.device*, %struct.device** %0, align 8
  %2 = load %struct.device_type*, %struct.device_type** %type, align 8
  %tobool1.not = icmp eq %struct.device_type* %2, null
  br i1 %tobool1.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %type3 = getelementptr inbounds %struct.device, %struct.device* %1, i64 0, i32 4
  %3 = load %struct.device_type*, %struct.device_type** %type3, align 8
  %cmp = icmp eq %struct.device_type* %2, %3
  br i1 %cmp, label %cleanup, label %for.cond

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %for.cond
  %retval.0 = phi %struct.device* [ null, %for.cond ], [ %1, %lor.lhs.false ], [ %1, %if.end ]
  ret %struct.device* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.klist_node* @klist_next(%struct.klist_iter* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @subsys_dev_iter_exit(%struct.subsys_dev_iter* noundef %iter) local_unnamed_addr #0 {
entry:
  %ki = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %iter, i64 0, i32 0
  call void @klist_iter_exit(%struct.klist_iter* noundef %ki) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @subsys_interface_register(%struct.subsys_interface* noundef %sif) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.subsys_dev_iter, align 8
  %0 = bitcast %struct.subsys_dev_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.subsys_interface* %sif, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %subsys1 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %sif, i64 0, i32 1
  %1 = load %struct.bus_type*, %struct.bus_type** %subsys1, align 8
  %tobool2.not = icmp eq %struct.bus_type* %1, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call fastcc %struct.bus_type* @bus_get(%struct.bus_type* noundef nonnull %1) #10
  %tobool4.not = icmp eq %struct.bus_type* %call, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %call, i64 0, i32 20
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i64 0, i32 3
  call void @mutex_lock(%struct.mutex* noundef %mutex) #11
  %node = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %sif, i64 0, i32 2
  %3 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %interfaces = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %3, i64 0, i32 2
  call fastcc void @list_add_tail(%struct.list_head* noundef %node, %struct.list_head* noundef %interfaces) #10
  %add_dev = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %sif, i64 0, i32 3
  %4 = load i32 (%struct.device*, %struct.subsys_interface*)*, i32 (%struct.device*, %struct.subsys_interface*)** %add_dev, align 8
  %tobool8.not = icmp eq i32 (%struct.device*, %struct.subsys_interface*)* %4, null
  br i1 %tobool8.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @subsys_dev_iter_init(%struct.subsys_dev_iter* noundef nonnull %iter, %struct.bus_type* noundef nonnull %call, %struct.device* noundef null, %struct.device_type* noundef null) #10
  %call1031 = call %struct.device* @subsys_dev_iter_next(%struct.subsys_dev_iter* noundef nonnull %iter) #10
  %tobool11.not32 = icmp eq %struct.device* %call1031, null
  br i1 %tobool11.not32, label %while.end, label %while.body

while.body:                                       ; preds = %if.then9, %while.body
  %call1033 = phi %struct.device* [ %call10, %while.body ], [ %call1031, %if.then9 ]
  %5 = load i32 (%struct.device*, %struct.subsys_interface*)*, i32 (%struct.device*, %struct.subsys_interface*)** %add_dev, align 8
  %call13 = call i32 %5(%struct.device* noundef nonnull %call1033, %struct.subsys_interface* noundef nonnull %sif) #11
  %call10 = call %struct.device* @subsys_dev_iter_next(%struct.subsys_dev_iter* noundef nonnull %iter) #10
  %tobool11.not = icmp eq %struct.device* %call10, null
  br i1 %tobool11.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.then9
  call void @subsys_dev_iter_exit(%struct.subsys_dev_iter* noundef nonnull %iter) #10
  br label %if.end14

if.end14:                                         ; preds = %while.end, %if.end6
  %6 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %mutex16 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %6, i64 0, i32 3
  call void @mutex_unlock(%struct.mutex* noundef %mutex16) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.end14
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -19, %lor.lhs.false ], [ -19, %entry ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @subsys_interface_unregister(%struct.subsys_interface* noundef %sif) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.subsys_dev_iter, align 8
  %0 = bitcast %struct.subsys_dev_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.subsys_interface* %sif, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %subsys1 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %sif, i64 0, i32 1
  %1 = load %struct.bus_type*, %struct.bus_type** %subsys1, align 8
  %tobool2.not = icmp eq %struct.bus_type* %1, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %1, i64 0, i32 20
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i64 0, i32 3
  call void @mutex_lock(%struct.mutex* noundef %mutex) #11
  %node = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %sif, i64 0, i32 2
  call fastcc void @list_del_init(%struct.list_head* noundef %node) #10
  %remove_dev = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %sif, i64 0, i32 4
  %3 = load void (%struct.device*, %struct.subsys_interface*)*, void (%struct.device*, %struct.subsys_interface*)** %remove_dev, align 8
  %tobool4.not = icmp eq void (%struct.device*, %struct.subsys_interface*)* %3, null
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @subsys_dev_iter_init(%struct.subsys_dev_iter* noundef nonnull %iter, %struct.bus_type* noundef nonnull %1, %struct.device* noundef null, %struct.device_type* noundef null) #10
  %call24 = call %struct.device* @subsys_dev_iter_next(%struct.subsys_dev_iter* noundef nonnull %iter) #10
  %tobool6.not25 = icmp eq %struct.device* %call24, null
  br i1 %tobool6.not25, label %while.end, label %while.body

while.body:                                       ; preds = %if.then5, %while.body
  %call26 = phi %struct.device* [ %call, %while.body ], [ %call24, %if.then5 ]
  %4 = load void (%struct.device*, %struct.subsys_interface*)*, void (%struct.device*, %struct.subsys_interface*)** %remove_dev, align 8
  call void %4(%struct.device* noundef nonnull %call26, %struct.subsys_interface* noundef nonnull %sif) #11
  %call = call %struct.device* @subsys_dev_iter_next(%struct.subsys_dev_iter* noundef nonnull %iter) #10
  %tobool6.not = icmp eq %struct.device* %call, null
  br i1 %tobool6.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.then5
  call void @subsys_dev_iter_exit(%struct.subsys_dev_iter* noundef nonnull %iter) #10
  br label %if.end8

if.end8:                                          ; preds = %while.end, %if.end
  %5 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %mutex10 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %5, i64 0, i32 3
  call void @mutex_unlock(%struct.mutex* noundef %mutex10) #11
  call fastcc void @bus_put(%struct.bus_type* noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #10
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @subsys_system_register(%struct.bus_type* noundef %subsys, %struct.attribute_group** noundef %groups) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kset*, %struct.kset** @system_kset, align 8
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %0, i64 0, i32 2
  %call = call fastcc i32 @subsys_register(%struct.bus_type* noundef %subsys, %struct.attribute_group** noundef %groups, %struct.kobject* noundef %kobj) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @subsys_register(%struct.bus_type* noundef %subsys, %struct.attribute_group** noundef %groups, %struct.kobject* noundef %parent_of_root) unnamed_addr #0 {
entry:
  %call = call i32 @bus_register(%struct.bus_type* noundef %subsys) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @kzalloc(i64 noundef 472) #10
  %0 = bitcast i8* %call1 to %struct.device*
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %err_dev, label %if.end3

if.end3:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.bus_type, %struct.bus_type* %subsys, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call4 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef nonnull %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %1) #11
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %err_name, label %if.end7

if.end7:                                          ; preds = %if.end3
  %parent = getelementptr inbounds i8, i8* %call1, i64 24
  %2 = bitcast i8* %parent to %struct.kobject**
  store %struct.kobject* %parent_of_root, %struct.kobject** %2, align 8
  %groups8 = getelementptr inbounds i8, i8* %call1, i64 432
  %3 = bitcast i8* %groups8 to %struct.attribute_group***
  store %struct.attribute_group** %groups, %struct.attribute_group*** %3, align 8
  %release = getelementptr inbounds i8, i8* %call1, i64 440
  %4 = bitcast i8* %release to void (%struct.device*)**
  store void (%struct.device*)* @system_root_device_release, void (%struct.device*)** %4, align 8
  %call9 = call i32 @device_register(%struct.device* noundef nonnull %0) #11
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %err_dev_reg, label %if.end12

if.end12:                                         ; preds = %if.end7
  %dev_root = getelementptr inbounds %struct.bus_type, %struct.bus_type* %subsys, i64 0, i32 2
  %5 = bitcast %struct.device** %dev_root to i8**
  store i8* %call1, i8** %5, align 8
  br label %cleanup

err_dev_reg:                                      ; preds = %if.end7
  call void @put_device(%struct.device* noundef nonnull %0) #11
  br label %err_name

err_name:                                         ; preds = %if.end3, %err_dev_reg
  %6 = phi i8* [ %call1, %if.end3 ], [ null, %err_dev_reg ]
  %err.0 = phi i32 [ %call4, %if.end3 ], [ %call9, %err_dev_reg ]
  call void @kfree(i8* noundef %6) #11
  br label %err_dev

err_dev:                                          ; preds = %if.end, %err_name
  %err.1 = phi i32 [ %err.0, %err_name ], [ -12, %if.end ]
  call void @bus_unregister(%struct.bus_type* noundef %subsys) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %err_dev, %if.end12
  %retval.0 = phi i32 [ %err.1, %err_dev ], [ 0, %if.end12 ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @subsys_virtual_register(%struct.bus_type* noundef %subsys, %struct.attribute_group** noundef %groups) local_unnamed_addr #0 {
entry:
  %call = call %struct.kobject* @virtual_device_parent(%struct.device* noundef null) #11
  %tobool.not = icmp eq %struct.kobject* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @subsys_register(%struct.bus_type* noundef %subsys, %struct.attribute_group** noundef %groups, %struct.kobject* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @virtual_device_parent(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @buses_init() local_unnamed_addr #8 section ".init.text" {
entry:
  %call = call %struct.kset* @kset_create_and_add(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.kset_uevent_ops* noundef nonnull @bus_uevent_ops, %struct.kobject* noundef null) #11
  store %struct.kset* %call, %struct.kset** @bus_kset, align 8
  %tobool.not = icmp eq %struct.kset* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %0, i64 0, i32 2
  %call1 = call %struct.kset* @kset_create_and_add(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %struct.kset_uevent_ops* noundef null, %struct.kobject* noundef %kobj) #11
  store %struct.kset* %call1, %struct.kset** @system_kset, align 8
  %tobool2.not = icmp eq %struct.kset* %call1, null
  %. = select i1 %tobool2.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kset_get(%struct.kset* noundef %k) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kset* %k, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %k, i64 0, i32 2
  %call = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj) #11
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_get(%struct.kobject* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject* noundef, %struct.attribute* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kset_put(%struct.kset* noundef %k) unnamed_addr #0 {
entry:
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %k, i64 0, i32 2
  call void @kobject_put(%struct.kobject* noundef %kobj) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(%struct.kobject* noundef, %struct.attribute* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #4 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @driver_release(%struct.kobject* noundef %kobj) #0 {
entry:
  %0 = bitcast %struct.kobject* %kobj to i8*
  call void @kfree(i8* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @drv_attr_show(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %buf) #0 {
entry:
  %show = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1
  %0 = bitcast %struct.attribute* %show to i64 (%struct.device_driver*, i8*)**
  %1 = load i64 (%struct.device_driver*, i8*)*, i64 (%struct.device_driver*, i8*)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.device_driver*, i8*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %driver = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 2, i32 1, i32 1
  %2 = bitcast %struct.list_head** %driver to %struct.device_driver**
  %3 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %call = call i64 %1(%struct.device_driver* noundef %3, i8* noundef %buf) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %call, %if.then ], [ -5, %entry ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @drv_attr_store(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %store = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1, i32 1
  %0 = bitcast i16* %store to i64 (%struct.device_driver*, i8*, i64)**
  %1 = load i64 (%struct.device_driver*, i8*, i64)*, i64 (%struct.device_driver*, i8*, i64)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.device_driver*, i8*, i64)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %driver = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 2, i32 1, i32 1
  %2 = bitcast %struct.list_head** %driver to %struct.device_driver**
  %3 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %call = call i64 %1(%struct.device_driver* noundef %3, i8* noundef %buf, i64 noundef %count) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %call, %if.then ], [ -5, %entry ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @uevent_store(%struct.device_driver* nocapture noundef readonly %drv, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 18
  %0 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %kobj = getelementptr inbounds %struct.driver_private, %struct.driver_private* %0, i64 0, i32 0
  %call = call i32 @kobject_synth_uevent(%struct.kobject* noundef %kobj, i8* noundef %buf, i64 noundef %count) #11
  %tobool.not = icmp eq i32 %call, 0
  %conv = sext i32 %call to i64
  %cond = select i1 %tobool.not, i64 %count, i64 %conv
  ret i64 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_synth_uevent(%struct.kobject* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @unbind_store(%struct.device_driver* noundef readonly %drv, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %bus1 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 1
  %0 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8
  %call = call fastcc %struct.bus_type* @bus_get(%struct.bus_type* noundef %0) #10
  %call2 = call fastcc %struct.device* @bus_find_device_by_name(%struct.bus_type* noundef %call, i8* noundef %buf) #10
  %tobool.not = icmp eq %struct.device* %call2, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %driver = getelementptr inbounds %struct.device, %struct.device* %call2, i64 0, i32 6
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %cmp = icmp eq %struct.device_driver* %1, %drv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @device_driver_detach(%struct.device* noundef nonnull %call2) #11
  %sext = shl i64 %count, 32
  %phi.cast = ashr exact i64 %sext, 32
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %err.0 = phi i64 [ %phi.cast, %if.then ], [ -19, %land.lhs.true ], [ -19, %entry ]
  call void @put_device(%struct.device* noundef %call2) #11
  call fastcc void @bus_put(%struct.bus_type* noundef %call) #10
  ret i64 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device* @bus_find_device_by_name(%struct.bus_type* noundef %bus, i8* noundef %name) unnamed_addr #0 {
entry:
  %call = call %struct.device* @bus_find_device(%struct.bus_type* noundef %bus, %struct.device* noundef null, i8* noundef %name, i32 (%struct.device*, i8*)* noundef nonnull @device_match_name) #10
  ret %struct.device* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_name(%struct.device* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @bind_store(%struct.device_driver* noundef %drv, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %bus1 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 1
  %0 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8
  %call = call fastcc %struct.bus_type* @bus_get(%struct.bus_type* noundef %0) #10
  %call2 = call fastcc %struct.device* @bus_find_device_by_name(%struct.bus_type* noundef %call, i8* noundef %buf) #10
  %tobool.not = icmp eq %struct.device* %call2, null
  br i1 %tobool.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call3 = call fastcc i32 @driver_match_device(%struct.device_driver* noundef %drv, %struct.device* noundef nonnull %call2) #10
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call5 = call i32 @device_driver_attach(%struct.device_driver* noundef %drv, %struct.device* noundef nonnull %call2) #11
  %tobool6.not = icmp eq i32 %call5, 0
  %conv = trunc i64 %count to i32
  %spec.select = select i1 %tobool6.not, i32 %conv, i32 %call5
  %phi.cast = sext i32 %spec.select to i64
  br label %if.end8

if.end8:                                          ; preds = %if.then, %land.lhs.true, %entry
  %err.0 = phi i64 [ -19, %land.lhs.true ], [ -19, %entry ], [ %phi.cast, %if.then ]
  call void @put_device(%struct.device* noundef %call2) #11
  call fastcc void @bus_put(%struct.bus_type* noundef %call) #10
  ret i64 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @driver_match_device(%struct.device_driver* noundef %drv, %struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 1
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %match = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 6
  %1 = load i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.device_driver*)** %match, align 8
  %tobool.not = icmp eq i32 (%struct.device*, %struct.device_driver*)* %1, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = call i32 %1(%struct.device* noundef %dev, %struct.device_driver* noundef %drv) #11
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 1, %entry ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_driver_attach(%struct.device_driver* noundef, %struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_lock(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 9
  call void @mutex_lock(%struct.mutex* noundef %mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_unlock(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 9
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @bus_release(%struct.kobject* noundef %kobj) #0 {
entry:
  %add.ptr = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 4
  %0 = bitcast %struct.kobj_type** %add.ptr to i8*
  %bus1 = getelementptr inbounds %struct.kobj_type*, %struct.kobj_type** %add.ptr, i64 37
  %1 = bitcast %struct.kobj_type** %bus1 to %struct.bus_type**
  %2 = load %struct.bus_type*, %struct.bus_type** %1, align 8
  call void @kfree(i8* noundef %0) #11
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %2, i64 0, i32 20
  store %struct.subsys_private* null, %struct.subsys_private** %p, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @bus_attr_show(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %buf) #0 {
entry:
  %show = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1
  %0 = bitcast %struct.attribute* %show to i64 (%struct.bus_type*, i8*)**
  %1 = load i64 (%struct.bus_type*, i8*)*, i64 (%struct.bus_type*, i8*)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.bus_type*, i8*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr6 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 4
  %bus = getelementptr inbounds %struct.kobj_type*, %struct.kobj_type** %add.ptr6, i64 37
  %2 = bitcast %struct.kobj_type** %bus to %struct.bus_type**
  %3 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %call = call i64 %1(%struct.bus_type* noundef %3, i8* noundef %buf) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %call, %if.then ], [ 0, %entry ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @bus_attr_store(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %store = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1, i32 1
  %0 = bitcast i16* %store to i64 (%struct.bus_type*, i8*, i64)**
  %1 = load i64 (%struct.bus_type*, i8*, i64)*, i64 (%struct.bus_type*, i8*, i64)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.bus_type*, i8*, i64)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr6 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 4
  %bus = getelementptr inbounds %struct.kobj_type*, %struct.kobj_type** %add.ptr6, i64 37
  %2 = bitcast %struct.kobj_type** %bus to %struct.bus_type**
  %3 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %call = call i64 %1(%struct.bus_type* noundef %3, i8* noundef %buf, i64 noundef %count) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %call, %if.then ], [ 0, %entry ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @bus_uevent_store(%struct.bus_type* nocapture noundef readonly %bus, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %kobj = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 0, i32 2
  %call = call i32 @kobject_synth_uevent(%struct.kobject* noundef %kobj, i8* noundef %buf, i64 noundef %count) #11
  %tobool.not = icmp eq i32 %call, 0
  %conv = sext i32 %call to i64
  %cond = select i1 %tobool.not, i64 %count, i64 %conv
  ret i64 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @drivers_probe_store(%struct.bus_type* noundef %bus, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %call = call fastcc %struct.device* @bus_find_device_by_name(%struct.bus_type* noundef %bus, i8* noundef %buf) #10
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @bus_rescan_devices_helper(%struct.device* noundef nonnull %call, i8* noundef null) #10
  %cmp = icmp eq i32 %call1, 0
  %sext = shl i64 %count, 32
  %phi.cast = ashr exact i64 %sext, 32
  %err.0 = select i1 %cmp, i64 %phi.cast, i64 -22
  call void @put_device(%struct.device* noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %err.0, %if.end ], [ -19, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @drivers_autoprobe_show(%struct.bus_type* nocapture noundef readonly %bus, i8* noundef %buf) #0 {
entry:
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 8
  %bf.load = load i8, i8* %drivers_autoprobe, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 noundef %bf.cast) #11
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i64 @drivers_autoprobe_store(%struct.bus_type* nocapture noundef readonly %bus, i8* nocapture noundef readonly %buf, i64 noundef returned %count) #9 {
entry:
  %0 = load i8, i8* %buf, align 1
  %cmp = icmp ne i8 %0, 48
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 8
  %bf.load = load i8, i8* %drivers_autoprobe, align 8
  %bf.clear = and i8 %bf.load, -2
  %masksel = zext i1 %cmp to i8
  %bf.set6.sink = or i8 %bf.clear, %masksel
  store i8 %bf.set6.sink, i8* %drivers_autoprobe, align 8
  ret i64 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(%struct.kobject* noundef, %struct.attribute_group** noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(%struct.kobject* noundef, %struct.attribute_group** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #12, !srcloc !11
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #10
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #9 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next4, align 8
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next5, align 8
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev6, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #12, !srcloc !13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @system_root_device_release(%struct.device* noundef %dev) #0 {
entry:
  %0 = bitcast %struct.device* %dev to i8*
  call void @kfree(i8* noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @bus_uevent_filter(%struct.kset* nocapture noundef readnone %kset, %struct.kobject* nocapture noundef readonly %kobj) #4 {
entry:
  %call = call fastcc %struct.kobj_type* @get_ktype(%struct.kobject* noundef %kobj) #10
  %cmp = icmp eq %struct.kobj_type* %call, @bus_ktype
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kobj_type* @get_ktype(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #4 {
entry:
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 4
  %0 = load %struct.kobj_type*, %struct.kobj_type** %ktype, align 8
  ret %struct.kobj_type* %0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2149759009}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147883060, i64 2147883093, i64 2147883146, i64 2147883205, i64 2147883239, i64 2147883294, i64 2147883323, i64 2147883343}
!12 = !{i64 2149766290}
!13 = !{i64 2149713138}
