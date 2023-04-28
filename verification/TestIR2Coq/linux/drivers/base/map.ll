; ModuleID = 'drivers/base/map.c'
source_filename = "drivers/base/map.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
%struct.kobj_map = type { [255 x %struct.probe*], %struct.mutex* }
%struct.probe = type { %struct.probe*, i32, i64, %struct.module*, %struct.kobject* (i32, i32*, i8*)*, i32 (i32, i8*)*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i8* }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.51 }
%union.anon.51 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.seq_file = type opaque
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
%union.anon.61 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.58, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.58 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kobj_map(%struct.kobj_map* nocapture noundef %domain, i32 noundef %dev, i64 noundef %range, %struct.module* noundef %module, %struct.kobject* (i32, i32*, i8*)* noundef %probe, i32 (i32, i8*)* noundef %lock, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %conv = zext i32 %dev to i64
  %add = add i64 %range, 4503599627370495
  %sub = add i64 %add, %conv
  %shr = lshr i64 %sub, 20
  %conv1 = trunc i64 %shr to i32
  %shr2 = lshr i32 %dev, 20
  %sub3 = sub i32 %conv1, %shr2
  %add4 = add i32 %sub3, 1
  %0 = icmp ult i32 %add4, 255
  %spec.store.select = select i1 %0, i32 %add4, i32 255
  %conv7 = zext i32 %spec.store.select to i64
  %call = call fastcc i8* @kmalloc_array(i64 noundef %conv7) #3
  %cmp8 = icmp eq i8* %call, null
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %entry
  %cmp1272.not = icmp eq i32 %spec.store.select, 0
  br i1 %cmp1272.not, label %for.end.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end11
  %1 = bitcast i8* %call to %struct.probe*
  br label %for.body

for.end.thread:                                   ; preds = %if.end11
  %lock1887 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %domain, i64 0, i32 1
  %2 = load %struct.mutex*, %struct.mutex** %lock1887, align 8
  call void @mutex_lock(%struct.mutex* noundef %2) #4
  br label %for.end31

for.body:                                         ; preds = %for.body.preheader, %for.body
  %p.074 = phi %struct.probe* [ %incdec.ptr, %for.body ], [ %1, %for.body.preheader ]
  %i.073 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %owner = getelementptr inbounds %struct.probe, %struct.probe* %p.074, i64 0, i32 3
  store %struct.module* %module, %struct.module** %owner, align 8
  %get = getelementptr inbounds %struct.probe, %struct.probe* %p.074, i64 0, i32 4
  store %struct.kobject* (i32, i32*, i8*)* %probe, %struct.kobject* (i32, i32*, i8*)** %get, align 8
  %lock14 = getelementptr inbounds %struct.probe, %struct.probe* %p.074, i64 0, i32 5
  store i32 (i32, i8*)* %lock, i32 (i32, i8*)** %lock14, align 8
  %dev15 = getelementptr inbounds %struct.probe, %struct.probe* %p.074, i64 0, i32 1
  store i32 %dev, i32* %dev15, align 8
  %range16 = getelementptr inbounds %struct.probe, %struct.probe* %p.074, i64 0, i32 2
  store i64 %range, i64* %range16, align 8
  %data17 = getelementptr inbounds %struct.probe, %struct.probe* %p.074, i64 0, i32 6
  store i8* %data, i8** %data17, align 8
  %inc = add nuw nsw i32 %i.073, 1
  %incdec.ptr = getelementptr %struct.probe, %struct.probe* %p.074, i64 1
  %exitcond.not = icmp eq i32 %inc, %spec.store.select
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %lock18 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %domain, i64 0, i32 1
  %3 = load %struct.mutex*, %struct.mutex** %lock18, align 8
  call void @mutex_lock(%struct.mutex* noundef %3) #4
  br i1 %cmp1272.not, label %for.end31, label %for.body22.preheader

for.body22.preheader:                             ; preds = %for.end
  %idx.neg = sub nsw i64 0, %conv7
  %add.ptr = getelementptr %struct.probe, %struct.probe* %incdec.ptr, i64 %idx.neg
  br label %for.body22

for.body22:                                       ; preds = %for.body22.preheader, %while.end
  %p.184 = phi %struct.probe* [ %incdec.ptr29, %while.end ], [ %add.ptr, %for.body22.preheader ]
  %i.183 = phi i32 [ %inc28, %while.end ], [ 0, %for.body22.preheader ]
  %index.082 = phi i32 [ %inc30, %while.end ], [ %shr2, %for.body22.preheader ]
  %rem = urem i32 %index.082, 255
  %idxprom = zext i32 %rem to i64
  %arrayidx = getelementptr %struct.kobj_map, %struct.kobj_map* %domain, i64 0, i32 0, i64 %idxprom
  %4 = load %struct.probe*, %struct.probe** %arrayidx, align 8
  %tobool.not75 = icmp eq %struct.probe* %4, null
  br i1 %tobool.not75, label %while.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %for.body22
  %range2389 = getelementptr inbounds %struct.probe, %struct.probe* %4, i64 0, i32 2
  %5 = load i64, i64* %range2389, align 8
  %cmp2490 = icmp ult i64 %5, %range
  br i1 %cmp2490, label %while.body, label %while.end

land.rhs:                                         ; preds = %while.body
  %range23 = getelementptr inbounds %struct.probe, %struct.probe* %8, i64 0, i32 2
  %6 = load i64, i64* %range23, align 8
  %cmp24 = icmp ult i64 %6, %range
  br i1 %cmp24, label %while.body, label %while.end.loopexit

while.body:                                       ; preds = %land.rhs.preheader, %land.rhs
  %7 = phi %struct.probe* [ %8, %land.rhs ], [ %4, %land.rhs.preheader ]
  %next = getelementptr inbounds %struct.probe, %struct.probe* %7, i64 0, i32 0
  %8 = load %struct.probe*, %struct.probe** %next, align 8
  %tobool.not = icmp eq %struct.probe* %8, null
  br i1 %tobool.not, label %while.end.loopexit, label %land.rhs

while.end.loopexit:                               ; preds = %land.rhs, %while.body
  %.lcssa.ph = phi %struct.probe* [ %8, %land.rhs ], [ null, %while.body ]
  %next.le = getelementptr inbounds %struct.probe, %struct.probe* %7, i64 0, i32 0
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %land.rhs.preheader, %for.body22
  %s.0.lcssa = phi %struct.probe** [ %arrayidx, %for.body22 ], [ %arrayidx, %land.rhs.preheader ], [ %next.le, %while.end.loopexit ]
  %.lcssa = phi %struct.probe* [ null, %for.body22 ], [ %4, %land.rhs.preheader ], [ %.lcssa.ph, %while.end.loopexit ]
  %next26 = getelementptr inbounds %struct.probe, %struct.probe* %p.184, i64 0, i32 0
  store %struct.probe* %.lcssa, %struct.probe** %next26, align 8
  store %struct.probe* %p.184, %struct.probe** %s.0.lcssa, align 8
  %inc28 = add nuw nsw i32 %i.183, 1
  %incdec.ptr29 = getelementptr %struct.probe, %struct.probe* %p.184, i64 1
  %inc30 = add nuw nsw i32 %index.082, 1
  %exitcond85.not = icmp eq i32 %inc28, %spec.store.select
  br i1 %exitcond85.not, label %for.end31, label %for.body22

for.end31:                                        ; preds = %while.end, %for.end.thread, %for.end
  %lock1888 = phi %struct.mutex** [ %lock1887, %for.end.thread ], [ %lock18, %for.end ], [ %lock18, %while.end ]
  %9 = load %struct.mutex*, %struct.mutex** %lock1888, align 8
  call void @mutex_unlock(%struct.mutex* noundef %9) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end31
  %retval.0 = phi i32 [ 0, %for.end31 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 56)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !7

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3264) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kobj_unmap(%struct.kobj_map* nocapture noundef %domain, i32 noundef %dev, i64 noundef %range) local_unnamed_addr #0 {
entry:
  %conv = zext i32 %dev to i64
  %add = add i64 %range, 4503599627370495
  %sub = add i64 %add, %conv
  %shr = lshr i64 %sub, 20
  %conv1 = trunc i64 %shr to i32
  %shr2 = lshr i32 %dev, 20
  %sub3 = sub i32 %conv1, %shr2
  %add4 = add i32 %sub3, 1
  %0 = icmp ult i32 %add4, 255
  %spec.store.select = select i1 %0, i32 %add4, i32 255
  %lock = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %domain, i64 0, i32 1
  %1 = load %struct.mutex*, %struct.mutex** %lock, align 8
  call void @mutex_lock(%struct.mutex* noundef %1) #4
  %cmp758.not = icmp eq i32 %spec.store.select, 0
  br i1 %cmp758.not, label %for.end25, label %for.body

for.body:                                         ; preds = %entry, %for.end
  %found.061 = phi %struct.probe* [ %found.4, %for.end ], [ null, %entry ]
  %i.060 = phi i32 [ %inc, %for.end ], [ 0, %entry ]
  %index.059 = phi i32 [ %inc24, %for.end ], [ %shr2, %entry ]
  %rem = urem i32 %index.059, 255
  %idxprom = zext i32 %rem to i64
  %arrayidx = getelementptr %struct.kobj_map, %struct.kobj_map* %domain, i64 0, i32 0, i64 %idxprom
  %2 = load %struct.probe*, %struct.probe** %arrayidx, align 8
  %tobool.not55 = icmp eq %struct.probe* %2, null
  br i1 %tobool.not55, label %for.end, label %for.body10

for.body10:                                       ; preds = %for.body, %for.inc
  %3 = phi %struct.probe* [ %7, %for.inc ], [ %2, %for.body ]
  %s.056 = phi %struct.probe** [ %next22, %for.inc ], [ %arrayidx, %for.body ]
  %dev11 = getelementptr inbounds %struct.probe, %struct.probe* %3, i64 0, i32 1
  %4 = load i32, i32* %dev11, align 8
  %cmp12 = icmp eq i32 %4, %dev
  br i1 %cmp12, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body10
  %range14 = getelementptr inbounds %struct.probe, %struct.probe* %3, i64 0, i32 2
  %5 = load i64, i64* %range14, align 8
  %cmp15 = icmp eq i64 %5, %range
  br i1 %cmp15, label %cleanup, label %for.inc

cleanup:                                          ; preds = %land.lhs.true
  %next = getelementptr inbounds %struct.probe, %struct.probe* %3, i64 0, i32 0
  %6 = load %struct.probe*, %struct.probe** %next, align 8
  store %struct.probe* %6, %struct.probe** %s.056, align 8
  %tobool18.not = icmp eq %struct.probe* %found.061, null
  %spec.select = select i1 %tobool18.not, %struct.probe* %3, %struct.probe* %found.061
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true, %for.body10
  %next22 = getelementptr inbounds %struct.probe, %struct.probe* %3, i64 0, i32 0
  %7 = load %struct.probe*, %struct.probe** %next22, align 8
  %tobool.not = icmp eq %struct.probe* %7, null
  br i1 %tobool.not, label %for.end, label %for.body10

for.end:                                          ; preds = %for.inc, %for.body, %cleanup
  %found.4 = phi %struct.probe* [ %spec.select, %cleanup ], [ %found.061, %for.body ], [ %found.061, %for.inc ]
  %inc = add nuw nsw i32 %i.060, 1
  %inc24 = add nuw nsw i32 %index.059, 1
  %exitcond.not = icmp eq i32 %inc, %spec.store.select
  br i1 %exitcond.not, label %for.end25, label %for.body

for.end25:                                        ; preds = %for.end, %entry
  %found.0.lcssa = phi %struct.probe* [ null, %entry ], [ %found.4, %for.end ]
  %8 = load %struct.mutex*, %struct.mutex** %lock, align 8
  call void @mutex_unlock(%struct.mutex* noundef %8) #4
  %9 = bitcast %struct.probe* %found.0.lcssa to i8*
  call void @kfree(i8* noundef %9) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kobject* @kobj_lookup(%struct.kobj_map* nocapture noundef readonly %domain, i32 noundef %dev, i32* noundef %index) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %domain, i64 0, i32 1
  %shr = lshr i32 %dev, 20
  %rem.lhs.trunc = trunc i32 %shr to i16
  %rem85 = urem i16 %rem.lhs.trunc, 255
  %idxprom = zext i16 %rem85 to i64
  %arrayidx = getelementptr %struct.kobj_map, %struct.kobj_map* %domain, i64 0, i32 0, i64 %idxprom
  %conv3 = zext i32 %dev to i64
  br label %retry

retry:                                            ; preds = %if.end28, %entry
  %best.0 = phi i64 [ -1, %entry ], [ %add, %if.end28 ]
  %0 = load %struct.mutex*, %struct.mutex** %lock, align 8
  call void @mutex_lock(%struct.mutex* noundef %0) #4
  %p.088 = load %struct.probe*, %struct.probe** %arrayidx, align 8
  %tobool.not89 = icmp eq %struct.probe* %p.088, null
  br i1 %tobool.not89, label %for.end, label %for.body

for.body:                                         ; preds = %retry, %for.inc
  %p.091 = phi %struct.probe* [ %p.0, %for.inc ], [ %p.088, %retry ]
  %best.190 = phi i64 [ %best.2.ph, %for.inc ], [ %best.0, %retry ]
  %dev1 = getelementptr inbounds %struct.probe, %struct.probe* %p.091, i64 0, i32 1
  %1 = load i32, i32* %dev1, align 8
  %cmp = icmp ugt i32 %1, %dev
  br i1 %cmp, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %conv = zext i32 %1 to i64
  %range = getelementptr inbounds %struct.probe, %struct.probe* %p.091, i64 0, i32 2
  %2 = load i64, i64* %range, align 8
  %add = add i64 %2, -1
  %sub = add i64 %add, %conv
  %cmp4 = icmp ult i64 %sub, %conv3
  br i1 %cmp4, label %for.inc, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp8.not = icmp ult i64 %add, %best.190
  br i1 %cmp8.not, label %if.end11, label %for.end

if.end11:                                         ; preds = %if.end
  %data16 = getelementptr inbounds %struct.probe, %struct.probe* %p.091, i64 0, i32 6
  %3 = load i8*, i8** %data16, align 8
  %get = getelementptr inbounds %struct.probe, %struct.probe* %p.091, i64 0, i32 4
  %4 = load %struct.kobject* (i32, i32*, i8*)*, %struct.kobject* (i32, i32*, i8*)** %get, align 8
  %sub20 = sub i32 %dev, %1
  store i32 %sub20, i32* %index, align 4
  %lock21 = getelementptr inbounds %struct.probe, %struct.probe* %p.091, i64 0, i32 5
  %5 = load i32 (i32, i8*)*, i32 (i32, i8*)** %lock21, align 8
  %tobool22.not = icmp eq i32 (i32, i8*)* %5, null
  br i1 %tobool22.not, label %if.end28, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  %call24 = call i32 %5(i32 noundef %dev, i8* noundef %3) #4
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %for.inc, label %if.end28

if.end28:                                         ; preds = %land.lhs.true, %if.end11
  %6 = load %struct.mutex*, %struct.mutex** %lock, align 8
  call void @mutex_unlock(%struct.mutex* noundef %6) #4
  %call30 = call %struct.kobject* %4(i32 noundef %dev, i32* noundef %index, i8* noundef %3) #4
  %tobool31.not = icmp eq %struct.kobject* %call30, null
  br i1 %tobool31.not, label %retry, label %cleanup37

for.inc:                                          ; preds = %lor.lhs.false, %for.body, %land.lhs.true
  %best.2.ph = phi i64 [ %add, %land.lhs.true ], [ %best.190, %for.body ], [ %best.190, %lor.lhs.false ]
  %next = getelementptr inbounds %struct.probe, %struct.probe* %p.091, i64 0, i32 0
  %p.0 = load %struct.probe*, %struct.probe** %next, align 8
  %tobool.not = icmp eq %struct.probe* %p.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %retry, %for.inc, %if.end
  %7 = load %struct.mutex*, %struct.mutex** %lock, align 8
  call void @mutex_unlock(%struct.mutex* noundef %7) #4
  br label %cleanup37

cleanup37:                                        ; preds = %if.end28, %for.end
  %retval.3 = phi %struct.kobject* [ null, %for.end ], [ %call30, %if.end28 ]
  ret %struct.kobject* %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kobj_map* @kobj_map_init(%struct.kobject* (i32, i32*, i8*)* noundef %base_probe, %struct.mutex* noundef %lock) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 11), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #4
  %1 = bitcast i8* %call.i.i to %struct.kobj_map*
  %call1 = call fastcc i8* @kzalloc() #3
  %cmp = icmp eq i8* %call.i.i, null
  %cmp2 = icmp eq i8* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @kfree(i8* noundef %call.i.i) #4
  call void @kfree(i8* noundef %call1) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %dev to i32*
  store i32 1, i32* %2, align 8
  %range = getelementptr inbounds i8, i8* %call1, i64 16
  %3 = bitcast i8* %range to i64*
  store i64 -1, i64* %3, align 8
  %get = getelementptr inbounds i8, i8* %call1, i64 32
  %4 = bitcast i8* %get to %struct.kobject* (i32, i32*, i8*)**
  store %struct.kobject* (i32, i32*, i8*)* %base_probe, %struct.kobject* (i32, i32*, i8*)** %4, align 8
  %probes = bitcast i8* %call.i.i to [255 x %struct.probe*]*
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %if.end
  %index = phi i64 [ 0, %if.end ], [ %index.next, %vector.body ]
  %induction24 = or i64 %index, 1
  %5 = getelementptr [255 x %struct.probe*], [255 x %struct.probe*]* %probes, i64 0, i64 %index
  %6 = getelementptr [255 x %struct.probe*], [255 x %struct.probe*]* %probes, i64 0, i64 %induction24
  %7 = bitcast %struct.probe** %5 to i8**
  %8 = bitcast %struct.probe** %6 to i8**
  store i8* %call1, i8** %7, align 8
  store i8* %call1, i8** %8, align 8
  %index.next = add nuw i64 %index, 2
  %9 = icmp eq i64 %index.next, 254
  br i1 %9, label %for.body, label %vector.body, !llvm.loop !8

for.body:                                         ; preds = %vector.body
  %arrayidx = getelementptr i8, i8* %call.i.i, i64 2032
  %10 = bitcast i8* %arrayidx to i8**
  store i8* %call1, i8** %10, align 8
  %lock4 = getelementptr inbounds i8, i8* %call.i.i, i64 2040
  %11 = bitcast i8* %lock4 to %struct.mutex**
  store %struct.mutex* %lock, %struct.mutex** %11, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.then
  %retval.0 = phi %struct.kobj_map* [ null, %if.then ], [ %1, %for.body ]
  ret %struct.kobj_map* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #4
  ret i8* %call.i.i
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.isvectorized", i32 1}
