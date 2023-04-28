; ModuleID = 'fs/sysfs/group.c'
source_filename = "fs/sysfs/group.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i8* }
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
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque

@.str = private unnamed_addr constant [47 x i8] c"\014sysfs group '%s' not found for kobject '%s'\0A\00", align 1
@sysfs_symlink_target_lock = external dso_local global %struct.spinlock, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"sysfs: (bin_)attrs not set by subsystem for group: %s/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\014Can't update unknown attr grp name: %s/%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Attribute %s: Invalid permissions 0%o\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_create_group(%struct.kobject* noundef %kobj, %struct.attribute_group* nocapture noundef readonly %grp) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @internal_create_group(%struct.kobject* noundef %kobj, i32 noundef 0, %struct.attribute_group* noundef %grp) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @internal_create_group(%struct.kobject* noundef %kobj, i32 noundef %update, %struct.attribute_group* nocapture noundef readonly %grp) unnamed_addr #0 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %0 = bitcast %struct.kuid_t* %uid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %1 = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %uid, i64 0, i32 0, !annotation !7
  store i32 0, i32* %1, align 4, !annotation !7
  %2 = bitcast %struct.kgid_t* %gid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  %3 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %gid, i64 0, i32 0, !annotation !7
  store i32 0, i32* %3, align 4, !annotation !7
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %if.then, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %tobool1.not = icmp eq i32 %update, 0
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %tobool2.not = icmp eq %struct.kernfs_node* %4, null
  br i1 %tobool1.not, label %land.rhs, label %land.rhs22

land.rhs:                                         ; preds = %lor.rhs
  br i1 %tobool2.not, label %if.then, label %if.end36, !prof !8

if.then:                                          ; preds = %entry, %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/sysfs/group.c\22; .popsection; .long 14472b - 14470b; .short 116; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !9
  br label %cleanup

land.rhs22:                                       ; preds = %lor.rhs
  br i1 %tobool2.not, label %cleanup, label %if.end36, !prof !8

if.end36:                                         ; preds = %land.rhs, %land.rhs22
  %attrs = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 3
  %5 = load %struct.attribute**, %struct.attribute*** %attrs, align 8
  %tobool37.not = icmp eq %struct.attribute** %5, null
  br i1 %tobool37.not, label %land.lhs.true, label %if.end67

land.lhs.true:                                    ; preds = %if.end36
  %bin_attrs = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 4
  %6 = load %struct.bin_attribute**, %struct.bin_attribute*** %bin_attrs, align 8
  %tobool38.not = icmp eq %struct.bin_attribute** %6, null
  br i1 %tobool38.not, label %do.end, label %if.end67

do.end:                                           ; preds = %land.lhs.true
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %7 = load i8*, i8** %name, align 8
  %name51 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 0
  %8 = load i8*, i8** %name51, align 8
  %tobool52.not = icmp eq i8* %8, null
  %. = select i1 %tobool52.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* noundef %7, i8* noundef %.) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/sysfs/group.c\22; .popsection; .long 14472b - 14470b; .short 124; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !10
  br label %cleanup

if.end67:                                         ; preds = %land.lhs.true, %if.end36
  call void @kobject_get_ownership(%struct.kobject* noundef nonnull %kobj, %struct.kuid_t* noundef nonnull %uid, %struct.kgid_t* noundef nonnull %gid) #9
  %name68 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 0
  %9 = load i8*, i8** %name68, align 8
  %tobool69.not = icmp eq i8* %9, null
  %sd103 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %10 = load %struct.kernfs_node*, %struct.kernfs_node** %sd103, align 8
  br i1 %tobool69.not, label %if.end104, label %if.then70

if.then70:                                        ; preds = %if.end67
  br i1 %tobool1.not, label %if.else, label %if.then72

if.then72:                                        ; preds = %if.then70
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %10, i8* noundef nonnull %9) #7
  %tobool75.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool75.not, label %do.end79, label %if.end104

do.end79:                                         ; preds = %if.then72
  %name81 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %11 = load i8*, i8** %name81, align 8
  %12 = load i8*, i8** %name68, align 8
  %call83 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* noundef %11, i8* noundef %12) #10
  br label %cleanup

if.else:                                          ; preds = %if.then70
  %13 = bitcast %struct.kobject* %kobj to i8*
  %14 = load i32, i32* %1, align 4
  %coerce.val.ii = zext i32 %14 to i64
  %15 = load i32, i32* %3, align 4
  %coerce.val.ii88 = zext i32 %15 to i64
  %call89 = call %struct.kernfs_node* @kernfs_create_dir_ns(%struct.kernfs_node* noundef %10, i8* noundef nonnull %9, i16 noundef 493, i64 %coerce.val.ii, i64 %coerce.val.ii88, i8* noundef nonnull %13, i8* noundef null) #9
  %16 = bitcast %struct.kernfs_node* %call89 to i8*
  %call90 = call fastcc i1 @IS_ERR(i8* noundef %16) #7
  br i1 %call90, label %if.then91, label %if.end104

if.then91:                                        ; preds = %if.else
  %call92 = call fastcc i64 @PTR_ERR(i8* noundef %16) #7
  %cmp = icmp eq i64 %call92, -17
  br i1 %cmp, label %if.then94, label %if.end97

if.then94:                                        ; preds = %if.then91
  %17 = load %struct.kernfs_node*, %struct.kernfs_node** %sd103, align 8
  %18 = load i8*, i8** %name68, align 8
  call void @sysfs_warn_dup(%struct.kernfs_node* noundef %17, i8* noundef %18) #9
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.then91
  %conv99 = trunc i64 %call92 to i32
  br label %cleanup

if.end104:                                        ; preds = %if.end67, %if.then72, %if.else
  %kn.0 = phi %struct.kernfs_node* [ %call, %if.then72 ], [ %call89, %if.else ], [ %10, %if.end67 ]
  call void @kernfs_get(%struct.kernfs_node* noundef %kn.0) #9
  %19 = load i32, i32* %1, align 4
  %coerce.val.ii106 = zext i32 %19 to i64
  %20 = load i32, i32* %3, align 4
  %coerce.val.ii108 = zext i32 %20 to i64
  %call109 = call fastcc i32 @create_files(%struct.kernfs_node* noundef %kn.0, %struct.kobject* noundef nonnull %kobj, i64 %coerce.val.ii106, i64 %coerce.val.ii108, %struct.attribute_group* noundef %grp, i32 noundef %update) #7
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end116, label %if.then111

if.then111:                                       ; preds = %if.end104
  %21 = load i8*, i8** %name68, align 8
  %tobool113.not = icmp eq i8* %21, null
  br i1 %tobool113.not, label %if.end116, label %if.then114

if.then114:                                       ; preds = %if.then111
  call void @kernfs_remove(%struct.kernfs_node* noundef %kn.0) #9
  br label %if.end116

if.end116:                                        ; preds = %if.then111, %if.then114, %if.end104
  call void @kernfs_put(%struct.kernfs_node* noundef %kn.0) #9
  %22 = load i8*, i8** %name68, align 8
  %tobool118 = icmp eq i8* %22, null
  %23 = or i1 %tobool1.not, %tobool118
  br i1 %23, label %cleanup, label %if.then121

if.then121:                                       ; preds = %if.end116
  call void @kernfs_put(%struct.kernfs_node* noundef %kn.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end116, %if.then121, %land.rhs22, %if.end97, %do.end79, %do.end
  %retval.0 = phi i32 [ -22, %do.end79 ], [ %conv99, %if.end97 ], [ -22, %do.end ], [ -22, %if.then ], [ -22, %land.rhs22 ], [ %call109, %if.then121 ], [ %call109, %if.end116 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_create_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %groups) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @internal_create_groups(%struct.kobject* noundef %kobj, i32 noundef 0, %struct.attribute_group** noundef %groups) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @internal_create_groups(%struct.kobject* noundef %kobj, i32 noundef %update, %struct.attribute_group** noundef readonly %groups) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.attribute_group** %groups, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = load %struct.attribute_group*, %struct.attribute_group** %groups, align 8
  %tobool1.not24 = icmp eq %struct.attribute_group* %0, null
  br i1 %tobool1.not24, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %1 = phi %struct.attribute_group* [ %3, %for.inc ], [ %0, %for.cond.preheader ]
  %i.025 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call = call fastcc i32 @internal_create_group(%struct.kobject* noundef %kobj, i32 noundef %update, %struct.attribute_group* noundef nonnull %1) #7
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  %dec26 = add i32 %i.025, -1
  %cmp27 = icmp sgt i32 %dec26, -1
  br i1 %cmp27, label %while.body, label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %dec28 = phi i32 [ %dec, %while.body ], [ %dec26, %while.cond.preheader ]
  %idxprom621 = zext i32 %dec28 to i64
  %arrayidx7 = getelementptr %struct.attribute_group*, %struct.attribute_group** %groups, i64 %idxprom621
  %2 = load %struct.attribute_group*, %struct.attribute_group** %arrayidx7, align 8
  call void @sysfs_remove_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef %2) #7
  %dec = add nsw i32 %dec28, -1
  %cmp = icmp sgt i32 %dec28, 0
  br i1 %cmp, label %while.body, label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.025, 1
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr %struct.attribute_group*, %struct.attribute_group** %groups, i64 %idxprom
  %3 = load %struct.attribute_group*, %struct.attribute_group** %arrayidx, align 8
  %tobool1.not = icmp eq %struct.attribute_group* %3, null
  br i1 %tobool1.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %while.body, %for.cond.preheader, %while.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call, %while.cond.preheader ], [ 0, %for.cond.preheader ], [ %call, %while.body ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_update_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %groups) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @internal_create_groups(%struct.kobject* noundef %kobj, i32 noundef 1, %struct.attribute_group** noundef %groups) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_update_group(%struct.kobject* noundef %kobj, %struct.attribute_group* nocapture noundef readonly %grp) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @internal_create_group(%struct.kobject* noundef %kobj, i32 noundef 1, %struct.attribute_group* noundef %grp) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sysfs_remove_group(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute_group* nocapture noundef readonly %grp) local_unnamed_addr #0 {
entry:
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %name = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %0, i8* noundef nonnull %1) #7
  %tobool2.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool2.not, label %do.end, label %if.end30

do.end:                                           ; preds = %if.then
  %2 = load i8*, i8** %name, align 8
  %call16 = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #7
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* noundef %2, i8* noundef %call16) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/sysfs/group.c\22; .popsection; .long 14472b - 14470b; .short 281; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @kernfs_get(%struct.kernfs_node* noundef %0) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then, %if.else
  %kn.0 = phi %struct.kernfs_node* [ %call, %if.then ], [ %0, %if.else ]
  call fastcc void @remove_files(%struct.kernfs_node* noundef %kn.0, %struct.attribute_group* noundef %grp) #7
  %3 = load i8*, i8** %name, align 8
  %tobool32.not = icmp eq i8* %3, null
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @kernfs_remove(%struct.kernfs_node* noundef %kn.0) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30
  call void @kernfs_put(%struct.kernfs_node* noundef %kn.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %kn, i8* noundef %name) unnamed_addr #0 {
entry:
  %call = call %struct.kernfs_node* @kernfs_find_and_get_ns(%struct.kernfs_node* noundef %kn, i8* noundef %name, i8* noundef null) #9
  ret %struct.kernfs_node* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #3 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(%struct.kernfs_node* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @remove_files(%struct.kernfs_node* noundef %parent, %struct.attribute_group* nocapture noundef readonly %grp) unnamed_addr #0 {
entry:
  %attrs = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 3
  %0 = load %struct.attribute**, %struct.attribute*** %attrs, align 8
  %tobool.not = icmp eq %struct.attribute** %0, null
  br i1 %tobool.not, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %1 = load %struct.attribute*, %struct.attribute** %0, align 8
  %tobool2.not29 = icmp eq %struct.attribute* %1, null
  br i1 %tobool2.not29, label %if.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %2 = phi %struct.attribute* [ %4, %for.body ], [ %1, %for.cond.preheader ]
  %attr.030 = phi %struct.attribute** [ %incdec.ptr, %for.body ], [ %0, %for.cond.preheader ]
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %2, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  call fastcc void @kernfs_remove_by_name(%struct.kernfs_node* noundef %parent, i8* noundef %3) #7
  %incdec.ptr = getelementptr %struct.attribute*, %struct.attribute** %attr.030, i64 1
  %4 = load %struct.attribute*, %struct.attribute** %incdec.ptr, align 8
  %tobool2.not = icmp eq %struct.attribute* %4, null
  br i1 %tobool2.not, label %if.end, label %for.body

if.end:                                           ; preds = %for.body, %for.cond.preheader, %entry
  %bin_attrs = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 4
  %5 = load %struct.bin_attribute**, %struct.bin_attribute*** %bin_attrs, align 8
  %tobool3.not = icmp eq %struct.bin_attribute** %5, null
  br i1 %tobool3.not, label %if.end15, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %if.end
  %6 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %tobool7.not31 = icmp eq %struct.bin_attribute* %6, null
  br i1 %tobool7.not31, label %if.end15, label %for.body8

for.body8:                                        ; preds = %for.cond6.preheader, %for.body8
  %7 = phi %struct.bin_attribute* [ %9, %for.body8 ], [ %6, %for.cond6.preheader ]
  %bin_attr.032 = phi %struct.bin_attribute** [ %incdec.ptr13, %for.body8 ], [ %5, %for.cond6.preheader ]
  %name10 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %7, i64 0, i32 0, i32 0
  %8 = load i8*, i8** %name10, align 8
  call fastcc void @kernfs_remove_by_name(%struct.kernfs_node* noundef %parent, i8* noundef %8) #7
  %incdec.ptr13 = getelementptr %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.032, i64 1
  %9 = load %struct.bin_attribute*, %struct.bin_attribute** %incdec.ptr13, align 8
  %tobool7.not = icmp eq %struct.bin_attribute* %9, null
  br i1 %tobool7.not, label %if.end15, label %for.body8

if.end15:                                         ; preds = %for.body8, %for.cond6.preheader, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_remove(%struct.kernfs_node* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(%struct.kernfs_node* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sysfs_remove_groups(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute_group** noundef readonly %groups) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.attribute_group** %groups, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = load %struct.attribute_group*, %struct.attribute_group** %groups, align 8
  %tobool1.not9 = icmp eq %struct.attribute_group* %0, null
  br i1 %tobool1.not9, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %1 = phi %struct.attribute_group* [ %2, %for.body ], [ %0, %for.cond.preheader ]
  %i.010 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @sysfs_remove_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef nonnull %1) #7
  %inc = add i32 %i.010, 1
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr %struct.attribute_group*, %struct.attribute_group** %groups, i64 %idxprom
  %2 = load %struct.attribute_group*, %struct.attribute_group** %arrayidx, align 8
  %tobool1.not = icmp eq %struct.attribute_group* %2, null
  br i1 %tobool1.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_merge_group(%struct.kobject* noundef %kobj, %struct.attribute_group* nocapture noundef readonly %grp) local_unnamed_addr #0 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %0 = bitcast %struct.kuid_t* %uid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %1 = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %uid, i64 0, i32 0, !annotation !7
  store i32 0, i32* %1, align 4, !annotation !7
  %2 = bitcast %struct.kgid_t* %gid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  %3 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %gid, i64 0, i32 0, !annotation !7
  store i32 0, i32* %3, align 4, !annotation !7
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %name = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %4, i8* noundef %5) #7
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @kobject_get_ownership(%struct.kobject* noundef %kobj, %struct.kuid_t* noundef nonnull %uid, %struct.kgid_t* noundef nonnull %gid) #9
  %attrs = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 3
  %6 = load %struct.attribute**, %struct.attribute*** %attrs, align 8
  %7 = load %struct.attribute*, %struct.attribute** %6, align 8
  %tobool133.not = icmp eq %struct.attribute* %7, null
  br i1 %tobool133.not, label %if.end11, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %8 = phi %struct.attribute* [ %12, %for.body ], [ %7, %if.end ]
  %i.035 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %attr.034 = phi %struct.attribute** [ %incdec.ptr, %for.body ], [ %6, %if.end ]
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i64 0, i32 1
  %9 = load i16, i16* %mode, align 8
  %10 = load i32, i32* %1, align 4
  %coerce.val.ii = zext i32 %10 to i64
  %11 = load i32, i32* %3, align 4
  %coerce.val.ii4 = zext i32 %11 to i64
  %call5 = call i32 @sysfs_add_file_mode_ns(%struct.kernfs_node* noundef nonnull %call, %struct.attribute* noundef nonnull %8, i1 noundef false, i16 noundef %9, i64 %coerce.val.ii, i64 %coerce.val.ii4, i8* noundef null) #9
  %inc = add i32 %i.035, 1
  %incdec.ptr = getelementptr %struct.attribute*, %struct.attribute** %attr.034, i64 1
  %12 = load %struct.attribute*, %struct.attribute** %incdec.ptr, align 8
  %tobool1 = icmp ne %struct.attribute* %12, null
  %tobool2.not = icmp eq i32 %call5, 0
  %13 = select i1 %tobool1, i1 %tobool2.not, i1 false
  br i1 %13, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %phi.bo = xor i1 %tobool2.not, true
  %cmp40 = icmp sgt i32 %i.035, -1
  %or.cond = select i1 %phi.bo, i1 %cmp40, i1 false
  br i1 %or.cond, label %while.body, label %if.end11

while.body:                                       ; preds = %for.end, %while.body
  %dec42 = phi i32 [ %dec, %while.body ], [ %i.035, %for.end ]
  %attr.141 = phi %struct.attribute** [ %incdec.ptr8, %while.body ], [ %incdec.ptr, %for.end ]
  %incdec.ptr8 = getelementptr %struct.attribute*, %struct.attribute** %attr.141, i64 -1
  %14 = load %struct.attribute*, %struct.attribute** %incdec.ptr8, align 8
  %name9 = getelementptr inbounds %struct.attribute, %struct.attribute* %14, i64 0, i32 0
  %15 = load i8*, i8** %name9, align 8
  call fastcc void @kernfs_remove_by_name(%struct.kernfs_node* noundef nonnull %call, i8* noundef %15) #7
  %dec = add nsw i32 %dec42, -1
  %cmp = icmp sgt i32 %dec42, 0
  br i1 %cmp, label %while.body, label %if.end11

if.end11:                                         ; preds = %while.body, %if.end, %for.end
  %error.0.lcssa51 = phi i32 [ %call5, %for.end ], [ 0, %if.end ], [ %call5, %while.body ]
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11
  %retval.0 = phi i32 [ %error.0.lcssa51, %if.end11 ], [ -2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_get_ownership(%struct.kobject* noundef, %struct.kuid_t* noundef, %struct.kgid_t* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_add_file_mode_ns(%struct.kernfs_node* noundef, %struct.attribute* noundef, i1 noundef, i16 noundef, i64, i64, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kernfs_remove_by_name(%struct.kernfs_node* noundef %parent, i8* noundef %name) unnamed_addr #0 {
entry:
  %call = call i32 @kernfs_remove_by_name_ns(%struct.kernfs_node* noundef %parent, i8* noundef %name, i8* noundef null) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sysfs_unmerge_group(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute_group* nocapture noundef readonly %grp) local_unnamed_addr #0 {
entry:
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %name = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %0, i8* noundef %1) #7
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %attrs = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 3
  %2 = load %struct.attribute**, %struct.attribute*** %attrs, align 8
  %3 = load %struct.attribute*, %struct.attribute** %2, align 8
  %tobool1.not11 = icmp eq %struct.attribute* %3, null
  br i1 %tobool1.not11, label %for.end, label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %4 = phi %struct.attribute* [ %6, %for.body ], [ %3, %if.then ]
  %attr.012 = phi %struct.attribute** [ %incdec.ptr, %for.body ], [ %2, %if.then ]
  %name2 = getelementptr inbounds %struct.attribute, %struct.attribute* %4, i64 0, i32 0
  %5 = load i8*, i8** %name2, align 8
  call fastcc void @kernfs_remove_by_name(%struct.kernfs_node* noundef nonnull %call, i8* noundef %5) #7
  %incdec.ptr = getelementptr %struct.attribute*, %struct.attribute** %attr.012, i64 1
  %6 = load %struct.attribute*, %struct.attribute** %incdec.ptr, align 8
  %tobool1.not = icmp eq %struct.attribute* %6, null
  br i1 %tobool1.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.then
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #9
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_add_link_to_group(%struct.kobject* nocapture noundef readonly %kobj, i8* noundef %group_name, %struct.kobject* noundef %target, i8* noundef %link_name) local_unnamed_addr #0 {
entry:
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %0, i8* noundef %group_name) #7
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @sysfs_create_link_sd(%struct.kernfs_node* noundef nonnull %call, %struct.kobject* noundef %target, i8* noundef %link_name) #9
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link_sd(%struct.kernfs_node* noundef, %struct.kobject* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sysfs_remove_link_from_group(%struct.kobject* nocapture noundef readonly %kobj, i8* noundef %group_name, i8* noundef %link_name) local_unnamed_addr #0 {
entry:
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %0, i8* noundef %group_name) #7
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @kernfs_remove_by_name(%struct.kernfs_node* noundef nonnull %call, i8* noundef %link_name) #7
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @compat_only_sysfs_link_entry_to_kobj(%struct.kobject* nocapture noundef readonly %kobj, %struct.kobject* nocapture noundef readonly %target_kobj, i8* noundef %target_name, i8* noundef %symlink_name) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #9
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %target_kobj, i64 0, i32 5
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %tobool.not = icmp eq %struct.kernfs_node* %0, null
  br i1 %tobool.not, label %if.then3.critedge, label %if.then

if.then:                                          ; preds = %entry
  call void @kernfs_get(%struct.kernfs_node* noundef nonnull %0) #9
  call fastcc void @__raw_spin_unlock() #9
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef nonnull %0, i8* noundef %target_name) #7
  %tobool5.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then3.critedge:                                ; preds = %entry
  call fastcc void @__raw_spin_unlock() #9
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %0) #9
  br label %cleanup

if.end7:                                          ; preds = %if.then
  %tobool8.not = icmp eq i8* %symlink_name, null
  %spec.select = select i1 %tobool8.not, i8* %target_name, i8* %symlink_name
  %sd11 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %sd11, align 8
  %call12 = call %struct.kernfs_node* @kernfs_create_link(%struct.kernfs_node* noundef %1, i8* noundef %spec.select, %struct.kernfs_node* noundef nonnull %call) #9
  %2 = bitcast %struct.kernfs_node* %call12 to i8*
  %call13 = call fastcc i64 @PTR_ERR(i8* noundef %2) #7
  %cmp = icmp eq i64 %call13, -17
  br i1 %cmp, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end7
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %sd11, align 8
  call void @sysfs_warn_dup(%struct.kernfs_node* noundef %3, i8* noundef %spec.select) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end7
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #9
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %0) #9
  %call17 = call fastcc i32 @PTR_ERR_OR_ZERO(i8* noundef %2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3.critedge, %if.end16, %if.then6
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ -2, %if.then6 ], [ -2, %if.then3.critedge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kernfs_node* @kernfs_create_link(%struct.kernfs_node* noundef, i8* noundef, %struct.kernfs_node* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_warn_dup(%struct.kernfs_node* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @PTR_ERR_OR_ZERO(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %call = call fastcc i1 @IS_ERR(i8* noundef %ptr) #7
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @PTR_ERR(i8* noundef %ptr) #7
  %conv = trunc i64 %call1 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_group_change_owner(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute_group* nocapture noundef readonly %grp, i64 %kuid.coerce, i64 %kgid.coerce) local_unnamed_addr #0 {
entry:
  %newattrs = alloca %struct.iattr, align 8
  %coerce.val.ii = trunc i64 %kuid.coerce to i32
  %coerce.val.ii2 = trunc i64 %kgid.coerce to i32
  %0 = bitcast %struct.iattr* %newattrs to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #8
  %ia_valid = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 0
  %1 = bitcast %struct.iattr* %newattrs to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  store i32 6, i32* %ia_valid, align 8
  %kuid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 2, i32 0
  store i32 %coerce.val.ii, i32* %kuid.sroa.0.0..sroa_idx, align 8
  %kgid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 3, i32 0
  store i32 %coerce.val.ii2, i32* %kgid.sroa.0.0..sroa_idx, align 4
  %state_in_sysfs = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_in_sysfs, align 4
  %2 = and i8 %bf.load, 2
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %tobool3.not = icmp eq i8* %3, null
  %sd6 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %sd6, align 8
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %4, i8* noundef nonnull %3) #7
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @kernfs_get(%struct.kernfs_node* noundef %4) #9
  %5 = load %struct.kernfs_node*, %struct.kernfs_node** %sd6, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %grp_kn.0 = phi %struct.kernfs_node* [ %call, %if.then4 ], [ %5, %if.else ]
  %tobool9.not = icmp eq %struct.kernfs_node* %grp_kn.0, null
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end8
  %call12 = call i32 @kernfs_setattr(%struct.kernfs_node* noundef nonnull %grp_kn.0, %struct.iattr* noundef nonnull %newattrs) #9
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %call15 = call fastcc i32 @sysfs_group_attrs_change_owner(%struct.kernfs_node* noundef nonnull %grp_kn.0, %struct.attribute_group* noundef %grp, %struct.iattr* noundef nonnull %newattrs) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11
  %error.0 = phi i32 [ %call12, %if.end11 ], [ %call15, %if.then14 ]
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %grp_kn.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry, %if.end16
  %retval.0 = phi i32 [ %error.0, %if.end16 ], [ -22, %entry ], [ -2, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_setattr(%struct.kernfs_node* noundef, %struct.iattr* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysfs_group_attrs_change_owner(%struct.kernfs_node* noundef %grp_kn, %struct.attribute_group* nocapture noundef readonly %grp, %struct.iattr* noundef %newattrs) unnamed_addr #0 {
entry:
  %attrs = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 3
  %0 = load %struct.attribute**, %struct.attribute*** %attrs, align 8
  %tobool.not = icmp eq %struct.attribute** %0, null
  br i1 %tobool.not, label %if.end9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %1 = load %struct.attribute*, %struct.attribute** %0, align 8
  %tobool2.not67 = icmp eq %struct.attribute* %1, null
  br i1 %tobool2.not67, label %if.end9, label %for.body

for.cond:                                         ; preds = %if.end
  %2 = load %struct.attribute*, %struct.attribute** %incdec.ptr, align 8
  %tobool2.not = icmp eq %struct.attribute* %2, null
  br i1 %tobool2.not, label %if.end9, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %3 = phi %struct.attribute* [ %2, %for.cond ], [ %1, %for.cond.preheader ]
  %attr.068 = phi %struct.attribute** [ %incdec.ptr, %for.cond ], [ %0, %for.cond.preheader ]
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %3, i64 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %grp_kn, i8* noundef %4) #7
  %tobool3.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool3.not, label %cleanup33, label %if.end

if.end:                                           ; preds = %for.body
  %call5 = call i32 @kernfs_setattr(%struct.kernfs_node* noundef nonnull %call, %struct.iattr* noundef %newattrs) #9
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #9
  %tobool6.not = icmp eq i32 %call5, 0
  %incdec.ptr = getelementptr %struct.attribute*, %struct.attribute** %attr.068, i64 1
  br i1 %tobool6.not, label %for.cond, label %cleanup33

if.end9:                                          ; preds = %for.cond, %for.cond.preheader, %entry
  %bin_attrs = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 4
  %5 = load %struct.bin_attribute**, %struct.bin_attribute*** %bin_attrs, align 8
  %tobool10.not = icmp eq %struct.bin_attribute** %5, null
  br i1 %tobool10.not, label %cleanup33, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %if.end9
  %6 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %tobool14.not69 = icmp eq %struct.bin_attribute* %6, null
  br i1 %tobool14.not69, label %cleanup33, label %for.body15

for.cond13:                                       ; preds = %if.end21
  %7 = load %struct.bin_attribute*, %struct.bin_attribute** %incdec.ptr27, align 8
  %tobool14.not = icmp eq %struct.bin_attribute* %7, null
  br i1 %tobool14.not, label %cleanup33, label %for.body15

for.body15:                                       ; preds = %for.cond13.preheader, %for.cond13
  %8 = phi %struct.bin_attribute* [ %7, %for.cond13 ], [ %6, %for.cond13.preheader ]
  %bin_attr.070 = phi %struct.bin_attribute** [ %incdec.ptr27, %for.cond13 ], [ %5, %for.cond13.preheader ]
  %name17 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %8, i64 0, i32 0, i32 0
  %9 = load i8*, i8** %name17, align 8
  %call18 = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %grp_kn, i8* noundef %9) #7
  %tobool19.not = icmp eq %struct.kernfs_node* %call18, null
  br i1 %tobool19.not, label %cleanup33, label %if.end21

if.end21:                                         ; preds = %for.body15
  %call22 = call i32 @kernfs_setattr(%struct.kernfs_node* noundef nonnull %call18, %struct.iattr* noundef %newattrs) #9
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call18) #9
  %tobool23.not = icmp eq i32 %call22, 0
  %incdec.ptr27 = getelementptr %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.070, i64 1
  br i1 %tobool23.not, label %for.cond13, label %cleanup33

cleanup33:                                        ; preds = %if.end, %for.body, %for.cond13, %for.body15, %if.end21, %for.cond13.preheader, %if.end9
  %retval.3 = phi i32 [ 0, %if.end9 ], [ 0, %for.cond13.preheader ], [ 0, %for.cond13 ], [ -2, %for.body15 ], [ %call22, %if.end21 ], [ -2, %for.body ], [ %call5, %if.end ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysfs_groups_change_owner(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute_group** noundef readonly %groups, i64 %kuid.coerce, i64 %kgid.coerce) local_unnamed_addr #0 {
entry:
  %state_in_sysfs = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_in_sysfs, align 4
  %0 = and i8 %bf.load, 2
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq %struct.attribute_group** %groups, null
  br i1 %tobool3.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %coerce.val.ii10 = and i64 %kuid.coerce, 4294967295
  %coerce.val.ii12 = and i64 %kgid.coerce, 4294967295
  %1 = load %struct.attribute_group*, %struct.attribute_group** %groups, align 8
  %tobool6.not25 = icmp eq %struct.attribute_group* %1, null
  br i1 %tobool6.not25, label %cleanup, label %for.body

for.cond:                                         ; preds = %for.body
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr %struct.attribute_group*, %struct.attribute_group** %groups, i64 %idxprom
  %2 = load %struct.attribute_group*, %struct.attribute_group** %arrayidx, align 8
  %tobool6.not = icmp eq %struct.attribute_group* %2, null
  br i1 %tobool6.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %3 = phi %struct.attribute_group* [ %2, %for.cond ], [ %1, %for.cond.preheader ]
  %i.026 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call = call i32 @sysfs_group_change_owner(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef nonnull %3, i64 %coerce.val.ii10, i64 %coerce.val.ii12) #7
  %tobool13.not = icmp eq i32 %call, 0
  %inc = add i32 %i.026, 1
  br i1 %tobool13.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.body, %for.cond, %for.cond.preheader, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.end ], [ 0, %for.cond.preheader ], [ %call, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kernfs_node* @kernfs_create_dir_ns(%struct.kernfs_node* noundef, i8* noundef, i16 noundef, i64, i64, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @create_files(%struct.kernfs_node* noundef %parent, %struct.kobject* noundef %kobj, i64 %uid.coerce, i64 %gid.coerce, %struct.attribute_group* nocapture noundef readonly %grp, i32 noundef %update) unnamed_addr #0 {
entry:
  %attrs = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 3
  %0 = load %struct.attribute**, %struct.attribute*** %attrs, align 8
  %tobool.not = icmp eq %struct.attribute** %0, null
  br i1 %tobool.not, label %if.end65, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %1 = load %struct.attribute*, %struct.attribute** %0, align 8
  %tobool4228.not = icmp eq %struct.attribute* %1, null
  br i1 %tobool4228.not, label %if.end65, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool7.not = icmp eq i32 %update, 0
  %is_visible = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 1
  %coerce.val.ii48 = and i64 %uid.coerce, 4294967295
  %coerce.val.ii50 = and i64 %gid.coerce, 4294967295
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi %struct.attribute* [ %1, %for.body.lr.ph ], [ %10, %for.inc ]
  %attr.0230 = phi %struct.attribute** [ %0, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %i.0229 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %mode6 = getelementptr inbounds %struct.attribute, %struct.attribute* %2, i64 0, i32 1
  %3 = load i16, i16* %mode6, align 8
  br i1 %tobool7.not, label %if.end, label %if.then8

if.then8:                                         ; preds = %for.body
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %2, i64 0, i32 0
  %4 = load i8*, i8** %name, align 8
  call fastcc void @kernfs_remove_by_name(%struct.kernfs_node* noundef %parent, i8* noundef %4) #7
  br label %if.end

if.end:                                           ; preds = %if.then8, %for.body
  %5 = load i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.attribute*, i32)** %is_visible, align 8
  %tobool9.not = icmp eq i16 (%struct.kobject*, %struct.attribute*, i32)* %5, null
  br i1 %tobool9.not, label %if.end16, label %if.then10

if.then10:                                        ; preds = %if.end
  %6 = load %struct.attribute*, %struct.attribute** %attr.0230, align 8
  %call12 = call i16 %5(%struct.kobject* noundef %kobj, %struct.attribute* noundef %6, i32 noundef %i.0229) #9
  %tobool13.not = icmp eq i16 %call12, 0
  br i1 %tobool13.not, label %for.inc, label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end
  %mode.0 = phi i16 [ %call12, %if.then10 ], [ %3, %if.end ]
  %conv = zext i16 %mode.0 to i32
  %and = and i32 %conv, 61003
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %cleanup, label %do.end, !prof !12

do.end:                                           ; preds = %if.end16
  %7 = load %struct.attribute*, %struct.attribute** %attr.0230, align 8
  %name29 = getelementptr inbounds %struct.attribute, %struct.attribute* %7, i64 0, i32 0
  %8 = load i8*, i8** %name29, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* noundef %8, i32 noundef %conv) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/sysfs/group.c\22; .popsection; .long 14472b - 14470b; .short 61; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end
  %and45 = and i16 %mode.0, 4532
  %9 = load %struct.attribute*, %struct.attribute** %attr.0230, align 8
  %call51 = call i32 @sysfs_add_file_mode_ns(%struct.kernfs_node* noundef %parent, %struct.attribute* noundef %9, i1 noundef false, i16 noundef %and45, i64 %coerce.val.ii48, i64 %coerce.val.ii50, i8* noundef null) #9
  %tobool52.not.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not.not, label %for.inc, label %exit.sink.split

for.inc:                                          ; preds = %if.then10, %cleanup
  %inc = add i32 %i.0229, 1
  %incdec.ptr = getelementptr %struct.attribute*, %struct.attribute** %attr.0230, i64 1
  %10 = load %struct.attribute*, %struct.attribute** %incdec.ptr, align 8
  %tobool4.not = icmp eq %struct.attribute* %10, null
  br i1 %tobool4.not, label %if.end65, label %for.body

if.end65:                                         ; preds = %for.inc, %for.cond.preheader, %entry
  %bin_attrs = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 4
  %11 = load %struct.bin_attribute**, %struct.bin_attribute*** %bin_attrs, align 8
  %tobool66.not = icmp eq %struct.bin_attribute** %11, null
  br i1 %tobool66.not, label %exit, label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %if.end65
  %12 = load %struct.bin_attribute*, %struct.bin_attribute** %11, align 8
  %tobool70.not232 = icmp eq %struct.bin_attribute* %12, null
  br i1 %tobool70.not232, label %exit, label %for.body71.lr.ph

for.body71.lr.ph:                                 ; preds = %for.cond69.preheader
  %tobool75.not = icmp eq i32 %update, 0
  %is_bin_visible = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %grp, i64 0, i32 2
  %coerce.val.ii132 = and i64 %uid.coerce, 4294967295
  %coerce.val.ii134 = and i64 %gid.coerce, 4294967295
  br label %for.body71

for.body71:                                       ; preds = %for.body71.lr.ph, %for.inc142
  %13 = phi %struct.bin_attribute* [ %12, %for.body71.lr.ph ], [ %21, %for.inc142 ]
  %bin_attr.0235 = phi %struct.bin_attribute** [ %11, %for.body71.lr.ph ], [ %incdec.ptr144, %for.inc142 ]
  %i.1234 = phi i32 [ 0, %for.body71.lr.ph ], [ %inc143, %for.inc142 ]
  %mode74 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %13, i64 0, i32 0, i32 1
  %14 = load i16, i16* %mode74, align 8
  br i1 %tobool75.not, label %if.end80, label %if.then76

if.then76:                                        ; preds = %for.body71
  %name78 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %13, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %name78, align 8
  call fastcc void @kernfs_remove_by_name(%struct.kernfs_node* noundef %parent, i8* noundef %15) #7
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %for.body71
  %16 = load i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)** %is_bin_visible, align 8
  %tobool81.not = icmp eq i16 (%struct.kobject*, %struct.bin_attribute*, i32)* %16, null
  br i1 %tobool81.not, label %if.end88, label %if.then82

if.then82:                                        ; preds = %if.end80
  %17 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.0235, align 8
  %call84 = call i16 %16(%struct.kobject* noundef %kobj, %struct.bin_attribute* noundef %17, i32 noundef %i.1234) #9
  %tobool85.not = icmp eq i16 %call84, 0
  br i1 %tobool85.not, label %for.inc142, label %if.end88

if.end88:                                         ; preds = %if.then82, %if.end80
  %mode72.0 = phi i16 [ %call84, %if.then82 ], [ %14, %if.end80 ]
  %conv90 = zext i16 %mode72.0 to i32
  %and91 = and i32 %conv90, 61003
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %cleanup139, label %do.end109, !prof !12

do.end109:                                        ; preds = %if.end88
  %18 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.0235, align 8
  %name111 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %18, i64 0, i32 0, i32 0
  %19 = load i8*, i8** %name111, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* noundef %19, i32 noundef %conv90) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/sysfs/group.c\22; .popsection; .long 14472b - 14470b; .short 90; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !14
  br label %cleanup139

cleanup139:                                       ; preds = %if.end88, %do.end109
  %and128 = and i16 %mode72.0, 4532
  %20 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.0235, align 8
  %attr130 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %20, i64 0, i32 0
  %call135 = call i32 @sysfs_add_file_mode_ns(%struct.kernfs_node* noundef %parent, %struct.attribute* noundef %attr130, i1 noundef true, i16 noundef %and128, i64 %coerce.val.ii132, i64 %coerce.val.ii134, i8* noundef null) #9
  %tobool136.not.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not.not, label %for.inc142, label %exit.sink.split

for.inc142:                                       ; preds = %if.then82, %cleanup139
  %inc143 = add i32 %i.1234, 1
  %incdec.ptr144 = getelementptr %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.0235, i64 1
  %21 = load %struct.bin_attribute*, %struct.bin_attribute** %incdec.ptr144, align 8
  %tobool70.not = icmp eq %struct.bin_attribute* %21, null
  br i1 %tobool70.not, label %exit, label %for.body71

exit.sink.split:                                  ; preds = %cleanup, %cleanup139
  %error.7.ph = phi i32 [ %call135, %cleanup139 ], [ %call51, %cleanup ]
  call fastcc void @remove_files(%struct.kernfs_node* noundef %parent, %struct.attribute_group* noundef %grp) #7
  br label %exit

exit:                                             ; preds = %for.inc142, %exit.sink.split, %for.cond69.preheader, %if.end65
  %error.7 = phi i32 [ 0, %if.end65 ], [ 0, %for.cond69.preheader ], [ %error.7.ph, %exit.sink.split ], [ 0, %for.inc142 ]
  ret i32 %error.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kernfs_node* @kernfs_find_and_get_ns(%struct.kernfs_node* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_remove_by_name_ns(%struct.kernfs_node* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  call fastcc void @do_raw_spin_lock() #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysfs_symlink_target_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #9
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysfs_symlink_target_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysfs_symlink_target_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #8, !srcloc !16
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #7
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @sysfs_symlink_target_lock to i8*), i8 0) #8, !srcloc !18
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2152033964}
!10 = !{i64 2152036010}
!11 = !{i64 2152039161}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2152030253}
!14 = !{i64 2152032322}
!15 = !{i64 2149506605}
!16 = !{i64 2147871321, i64 2147871354, i64 2147871407, i64 2147871466, i64 2147871500, i64 2147871555, i64 2147871584, i64 2147871604}
!17 = !{i64 2149513886}
!18 = !{i64 2149460746}
