; ModuleID = 'drivers/power/supply/power_supply_core.c'
source_filename = "drivers/power/supply/power_supply_core.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_power_supply__212_1399_power_supply_class_init4:\09\09\09"
module asm ".long\09power_supply_class_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
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
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.58, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.58 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.kmem_cache = type opaque
%struct.power_supply = type { %struct.power_supply_desc*, i8**, i64, i8**, i64, %struct.device_node*, i8*, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t }
%struct.power_supply_desc = type { i8*, i32, i32*, i64, i32*, i64, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32)*, {}*, {}*, i8, i32 }
%union.power_supply_propval = type { i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.psy_am_i_supplied_data = type { %struct.power_supply*, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x %struct.power_supply_battery_ocv_table*], [20 x i32], %struct.power_supply_resistance_temp_table*, i32 }
%struct.power_supply_battery_ocv_table = type { i32, i32 }
%struct.power_supply_resistance_temp_table = type { i32, i32 }
%struct.power_supply_config = type { %struct.device_node*, %struct.fwnode_handle*, i8*, %struct.attribute_group**, i8**, i64 }

@power_supply_notifier = dso_local global %struct.atomic_notifier_head zeroinitializer, align 8
@power_supply_class = dso_local local_unnamed_addr global %struct.class* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"devm_power_supply_put\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%s currently only supports devicetree\0A\00", align 1
@__func__.power_supply_get_battery_info = private unnamed_addr constant [30 x i8] c"power_supply_get_battery_info\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"monitored-battery\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"simple-battery\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"device-chemistry\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"nickel-cadmium\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"nickel-metal-hydride\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"lithium-ion\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"lithium-ion-polymer\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"lithium-ion-iron-phosphate\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"lithium-ion-manganese-oxide\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"%s unknown battery type\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"energy-full-design-microwatt-hours\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"charge-full-design-microamp-hours\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"voltage-min-design-microvolt\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"voltage-max-design-microvolt\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"trickle-charge-current-microamp\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"precharge-current-microamp\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"precharge-upper-limit-microvolt\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"charge-term-current-microamp\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"re-charge-voltage-microvolt\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"over-voltage-threshold-microvolt\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"constant-charge-current-max-microamp\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"constant-charge-voltage-max-microvolt\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"factory-internal-resistance-micro-ohms\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"ambient-celsius\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"alert-celsius\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"operating-range-celsius\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"ocv-capacity-celsius\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Too many temperature values\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"ocv-capacity-table-%d\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"failed to get %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"resistance-temp-table\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"powers\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"devm_power_supply_release\00", align 1
@__UNIQUE_ID___addressable_power_supply_class_init213 = internal global i8* bitcast (i32 ()* @power_supply_class_init to i8*), section ".discard.addressable", align 8
@__exitcall_power_supply_class_exit = internal global void ()* @power_supply_class_exit, section ".exitcall.exit", align 8
@__UNIQUE_ID_description214 = internal constant [62 x i8] c"power_supply.description=Universal power supply monitor class\00", section ".modinfo", align 1
@__UNIQUE_ID_author215 = internal constant [96 x i8] c"power_supply.author=Ian Molton <spyro@f2s.com>, Szabolcs Gyurko, Anton Vorontsov <cbou@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_file216 = internal constant [52 x i8] c"power_supply.file=drivers/power/supply/power_supply\00", section ".modinfo", align 1
@__UNIQUE_ID_license217 = internal constant [25 x i8] c"power_supply.license=GPL\00", section ".modinfo", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str.36 = private unnamed_addr constant [46 x i8] c"\014%s: Expected proper parent device for '%s'\0A\00", align 1
@__func__.__power_supply_register = private unnamed_addr constant [24 x i8] c"__power_supply_register\00", align 1
@power_supply_dev_type = internal global %struct.device_type zeroinitializer, align 8
@.str.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@.str.38 = private unnamed_addr constant [15 x i8] c"power-supplies\00", align 1
@power_supply_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"power_supply\00", align 1
@llvm.compiler.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_power_supply_class_init213 to i8*), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @__UNIQUE_ID_author215, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_description214, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_file216, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license217, i32 0, i32 0), i8* bitcast (void ()** @__exitcall_power_supply_class_exit to i8*), i8* bitcast (void ()* @power_supply_class_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @power_supply_changed(%struct.power_supply* noundef %psy) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 10, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #16
  %changed = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 11
  store i8 1, i8* %changed, align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #17
  %changed_work = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 8
  call fastcc void @schedule_work(%struct.work_struct* noundef %changed_work) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !7
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @power_supply_am_i_supplied(%struct.power_supply* noundef %psy) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.psy_am_i_supplied_data, align 8
  %0 = bitcast %struct.psy_am_i_supplied_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.psy_am_i_supplied_data, %struct.psy_am_i_supplied_data* %data, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*, !annotation !8
  store i64 0, i64* %2, align 8, !annotation !8
  %psy1 = getelementptr inbounds %struct.psy_am_i_supplied_data, %struct.psy_am_i_supplied_data* %data, i64 0, i32 0
  store %struct.power_supply* %psy, %struct.power_supply** %psy1, align 8
  %count = getelementptr inbounds %struct.psy_am_i_supplied_data, %struct.psy_am_i_supplied_data* %data, i64 0, i32 1
  %3 = load %struct.class*, %struct.class** @power_supply_class, align 8
  %call = call i32 @class_for_each_device(%struct.class* noundef %3, %struct.device* noundef null, i8* noundef nonnull %0, i32 (%struct.device*, i8*)* noundef nonnull @__power_supply_am_i_supplied) #17
  %4 = load i32, i32* %count, align 8
  %cmp = icmp eq i32 %4, 0
  %.call = select i1 %cmp, i32 -19, i32 %call
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(%struct.class* noundef, %struct.device* noundef, i8* noundef, i32 (%struct.device*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @__power_supply_am_i_supplied(%struct.device* nocapture noundef readonly %dev, i8* nocapture noundef %_data) #0 {
entry:
  %ret = alloca %union.power_supply_propval, align 8
  %0 = bitcast %union.power_supply_propval* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  %1 = bitcast %union.power_supply_propval* %ret to i64*
  store i64 0, i64* %1, align 8
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #16
  %2 = bitcast i8* %call to %struct.power_supply*
  %psy = bitcast i8* %_data to %struct.power_supply**
  %3 = load %struct.power_supply*, %struct.power_supply** %psy, align 8
  %call1 = call fastcc i1 @__power_supply_is_supplied_by(%struct.power_supply* noundef %2, %struct.power_supply* noundef %3) #16
  br i1 %call1, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds i8, i8* %_data, i64 8
  %4 = bitcast i8* %count to i32*
  %5 = load i32, i32* %4, align 8
  %inc = add i32 %5, 1
  store i32 %inc, i32* %4, align 8
  %desc = bitcast i8* %call to %struct.power_supply_desc**
  %6 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %get_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %6, i64 0, i32 6
  %7 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %get_property, align 8
  %call2 = call i32 %7(%struct.power_supply* noundef %2, i32 noundef 4, %union.power_supply_propval* noundef nonnull %ret) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.then
  %intval = bitcast %union.power_supply_propval* %ret to i32*
  %8 = load i32, i32* %intval, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then, %if.then3
  %retval.0 = phi i32 [ %8, %if.then3 ], [ 0, %if.then ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @power_supply_is_system_supplied() local_unnamed_addr #0 {
entry:
  %count = alloca i32, align 4
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18
  store i32 0, i32* %count, align 4
  %1 = load %struct.class*, %struct.class** @power_supply_class, align 8
  %call = call i32 @class_for_each_device(%struct.class* noundef %1, %struct.device* noundef null, i8* noundef nonnull %0, i32 (%struct.device*, i8*)* noundef nonnull @__power_supply_is_system_supplied) #17
  %2 = load i32, i32* %count, align 4
  %cmp = icmp eq i32 %2, 0
  %.call = select i1 %cmp, i32 1, i32 %call
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  ret i32 %.call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @__power_supply_is_system_supplied(%struct.device* nocapture noundef readonly %dev, i8* nocapture noundef %data) #0 {
entry:
  %ret = alloca %union.power_supply_propval, align 8
  %0 = bitcast %union.power_supply_propval* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  %1 = bitcast %union.power_supply_propval* %ret to i64*
  store i64 0, i64* %1, align 8
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #16
  %2 = bitcast i8* %data to i32*
  %3 = load i32, i32* %2, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %2, align 4
  %desc = bitcast i8* %call to %struct.power_supply_desc**
  %4 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %4, i64 0, i32 1
  %5 = load i32, i32* %type, align 8
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %6 = bitcast i8* %call to %struct.power_supply*
  %get_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %4, i64 0, i32 6
  %7 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %get_property, align 8
  %call2 = call i32 %7(%struct.power_supply* noundef %6, i32 noundef 4, %union.power_supply_propval* noundef nonnull %ret) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.then
  %intval = bitcast %union.power_supply_propval* %ret to i32*
  %8 = load i32, i32* %intval, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then, %if.then3
  %retval.0 = phi i32 [ %8, %if.then3 ], [ 0, %if.then ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @power_supply_set_input_current_limit_from_supplier(%struct.power_supply* noundef %psy) local_unnamed_addr #0 {
entry:
  %val = alloca %union.power_supply_propval, align 8
  %0 = bitcast %union.power_supply_propval* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  %1 = bitcast %union.power_supply_propval* %val to i64*
  store i64 0, i64* %1, align 8
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 0
  %2 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %set_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %2, i64 0, i32 7
  %3 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %set_property, align 8
  %tobool.not = icmp eq i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* %3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = load %struct.class*, %struct.class** @power_supply_class, align 8
  %5 = bitcast %struct.power_supply* %psy to i8*
  %call = call i32 @class_for_each_device(%struct.class* noundef %4, %struct.device* noundef null, i8* noundef %5, i32 (%struct.device*, i8*)* noundef nonnull @__power_supply_get_supplier_max_current) #17
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %cmp2 = icmp eq i32 %call, 0
  %cond = select i1 %cmp2, i32 -19, i32 %call
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %intval = bitcast %union.power_supply_propval* %val to i32*
  store i32 %call, i32* %intval, align 8
  %6 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %set_property5 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %6, i64 0, i32 7
  %7 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %set_property5, align 8
  %call6 = call i32 %7(%struct.power_supply* noundef %psy, i32 noundef 37, %union.power_supply_propval* noundef nonnull %val) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then1
  %retval.0 = phi i32 [ %cond, %if.then1 ], [ %call6, %if.end3 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @__power_supply_get_supplier_max_current(%struct.device* nocapture noundef readonly %dev, i8* nocapture noundef readonly %data) #0 {
entry:
  %ret = alloca %union.power_supply_propval, align 8
  %0 = bitcast %union.power_supply_propval* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  %1 = bitcast %union.power_supply_propval* %ret to i64*
  store i64 0, i64* %1, align 8
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #16
  %2 = bitcast i8* %call to %struct.power_supply*
  %3 = bitcast i8* %data to %struct.power_supply*
  %call1 = call fastcc i1 @__power_supply_is_supplied_by(%struct.power_supply* noundef %2, %struct.power_supply* noundef %3) #16
  br i1 %call1, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %desc = bitcast i8* %call to %struct.power_supply_desc**
  %4 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %get_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %4, i64 0, i32 6
  %5 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %get_property, align 8
  %call2 = call i32 %5(%struct.power_supply* noundef %2, i32 noundef 16, %union.power_supply_propval* noundef nonnull %ret) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.then
  %intval = bitcast %union.power_supply_propval* %ret to i32*
  %6 = load i32, i32* %intval, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then, %if.then3
  %retval.0 = phi i32 [ %6, %if.then3 ], [ 0, %if.then ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @power_supply_set_battery_charged(%struct.power_supply* noundef %psy) local_unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 14, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 0
  %1 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %1, i64 0, i32 1
  %2 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %land.lhs.true2, label %return

land.lhs.true2:                                   ; preds = %land.lhs.true
  %set_charged = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %1, i64 0, i32 10
  %set_charged4 = bitcast {}** %set_charged to void (%struct.power_supply*)**
  %3 = load void (%struct.power_supply*)*, void (%struct.power_supply*)** %set_charged4, align 8
  %tobool.not = icmp eq void (%struct.power_supply*)* %3, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  call void %3(%struct.power_supply* noundef %psy) #17
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %land.lhs.true2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %land.lhs.true2 ], [ -22, %land.lhs.true ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.power_supply* @power_supply_get_by_name(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %0 = load %struct.class*, %struct.class** @power_supply_class, align 8
  %call = call %struct.device* @class_find_device(%struct.class* noundef %0, %struct.device* noundef null, i8* noundef %name, i32 (%struct.device*, i8*)* noundef nonnull @power_supply_match_device_by_name) #17
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @dev_get_drvdata(%struct.device* noundef nonnull %call) #16
  %1 = bitcast i8* %call1 to %struct.power_supply*
  %use_cnt = getelementptr inbounds i8, i8* %call1, i64 656
  %2 = bitcast i8* %use_cnt to %struct.atomic_t*
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %2) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %psy.0 = phi %struct.power_supply* [ %1, %if.then ], [ null, %entry ]
  ret %struct.power_supply* %psy.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @class_find_device(%struct.class* noundef, %struct.device* noundef, i8* noundef, i32 (%struct.device*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @power_supply_match_device_by_name(%struct.device* nocapture noundef readonly %dev, i8* noundef %data) #0 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #16
  %desc = bitcast i8* %call to %struct.power_supply_desc**
  %0 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %name1 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %0, i64 0, i32 0
  %1 = load i8*, i8** %name1, align 8
  %call2 = call i32 @strcmp(i8* noundef %1, i8* noundef %data) #17
  %cmp = icmp eq i32 %call2, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_get_drvdata(%struct.device* nocapture noundef readonly %dev) unnamed_addr #3 {
entry:
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 8
  %0 = load i8*, i8** %driver_data, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @power_supply_put(%struct.power_supply* noundef %psy) local_unnamed_addr #0 {
entry:
  %use_cnt = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 14
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %use_cnt) #17
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 7
  call void @put_device(%struct.device* noundef %dev) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.power_supply* @power_supply_get_by_phandle(%struct.device_node* noundef %np, i8* noundef %property) local_unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef %np, i8* noundef %property, i32 noundef 0) #17
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -19) #16
  %0 = bitcast i8* %call1 to %struct.power_supply*
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load %struct.class*, %struct.class** @power_supply_class, align 8
  %2 = bitcast %struct.device_node* %call to i8*
  %call2 = call %struct.device* @class_find_device(%struct.class* noundef %1, %struct.device* noundef null, i8* noundef nonnull %2, i32 (%struct.device*, i8*)* noundef nonnull @power_supply_match_device_node) #17
  %tobool3.not = icmp eq %struct.device* %call2, null
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i8* @dev_get_drvdata(%struct.device* noundef nonnull %call2) #16
  %3 = bitcast i8* %call5 to %struct.power_supply*
  %use_cnt = getelementptr inbounds i8, i8* %call5, i64 656
  %4 = bitcast i8* %use_cnt to %struct.atomic_t*
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %4) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi %struct.power_supply* [ %0, %if.then ], [ %3, %if.then4 ], [ null, %if.end ]
  ret %struct.power_supply* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @power_supply_match_device_node(%struct.device* nocapture noundef readonly %dev, i8* noundef readnone %data) #3 {
entry:
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 1
  %0 = load %struct.device*, %struct.device** %parent, align 8
  %tobool.not = icmp eq %struct.device* %0, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i64 0, i32 25
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %2 = bitcast i8* %data to %struct.device_node*
  %cmp = icmp eq %struct.device_node* %1, %2
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.power_supply* @devm_power_supply_get_by_phandle(%struct.device* noundef %dev, i8* noundef %property) local_unnamed_addr #0 {
entry:
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -19) #16
  %1 = bitcast i8* %call to %struct.power_supply*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_power_supply_put, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0)) #17
  %2 = bitcast i8* %call1 to %struct.power_supply**
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef -12) #16
  %3 = bitcast i8* %call4 to %struct.power_supply*
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %call7 = call %struct.power_supply* @power_supply_get_by_phandle(%struct.device_node* noundef %4, i8* noundef %property) #16
  %5 = bitcast %struct.power_supply* %call7 to i8*
  %call8 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %5) #16
  br i1 %call8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  call void @devres_free(i8* noundef nonnull %call1) #17
  br label %cleanup

if.else:                                          ; preds = %if.end5
  store %struct.power_supply* %call7, %struct.power_supply** %2, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.else, %if.then3, %if.then
  %retval.0 = phi %struct.power_supply* [ %3, %if.then3 ], [ %1, %if.then ], [ %call7, %if.else ], [ %call7, %if.then9 ]
  ret %struct.power_supply* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_power_supply_put(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %0 = bitcast i8* %res to %struct.power_supply**
  %1 = load %struct.power_supply*, %struct.power_supply** %0, align 8
  call void @power_supply_put(%struct.power_supply* noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @power_supply_get_battery_info(%struct.power_supply* noundef %psy, %struct.power_supply_battery_info* noundef %info) local_unnamed_addr #0 {
entry:
  %value = alloca i8*, align 8
  %len = alloca i32, align 4
  %size = alloca i32, align 4
  %0 = bitcast i8** %value to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i8* null, i8** %value, align 8, !annotation !8
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #18
  store i32 0, i32* %len, align 4, !annotation !8
  %technology = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 0
  store i32 0, i32* %technology, align 8
  %energy_full_design_uwh = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 1
  store i32 -22, i32* %energy_full_design_uwh, align 4
  %charge_full_design_uah = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 2
  store i32 -22, i32* %charge_full_design_uah, align 8
  %voltage_min_design_uv = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 3
  store i32 -22, i32* %voltage_min_design_uv, align 4
  %voltage_max_design_uv = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 4
  store i32 -22, i32* %voltage_max_design_uv, align 8
  %precharge_current_ua = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 6
  store i32 -22, i32* %precharge_current_ua, align 8
  %charge_term_current_ua = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 8
  store i32 -22, i32* %charge_term_current_ua, align 8
  %constant_charge_current_max_ua = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 11
  store i32 -22, i32* %constant_charge_current_max_ua, align 4
  %constant_charge_voltage_max_uv = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 12
  store i32 -22, i32* %constant_charge_voltage_max_uv, align 8
  %temp_ambient_alert_min = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 15
  store i32 -2147483648, i32* %temp_ambient_alert_min, align 8
  %temp_ambient_alert_max = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 16
  store i32 2147483647, i32* %temp_ambient_alert_max, align 4
  %temp_alert_min = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 17
  store i32 -2147483648, i32* %temp_alert_min, align 8
  %temp_alert_max = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 18
  store i32 2147483647, i32* %temp_alert_max, align 4
  %temp_min = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 19
  store i32 -2147483648, i32* %temp_min, align 8
  %temp_max = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 20
  store i32 2147483647, i32* %temp_max, align 4
  %factory_internal_resistance_uohm = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 13
  store i32 -22, i32* %factory_internal_resistance_uohm, align 4
  %resist_table1 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 23
  store %struct.power_supply_resistance_temp_table* null, %struct.power_supply_resistance_temp_table** %resist_table1, align 8
  %arrayidx = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 0
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 0
  store i32 -22, i32* %arrayidx3, align 4
  %arrayidx5 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 0
  store i32 -22, i32* %arrayidx5, align 4
  %arrayidx.1 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 1
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.1, align 8
  %arrayidx3.1 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 1
  store i32 -22, i32* %arrayidx3.1, align 4
  %arrayidx5.1 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 1
  store i32 -22, i32* %arrayidx5.1, align 4
  %arrayidx.2 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 2
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.2, align 8
  %arrayidx3.2 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 2
  store i32 -22, i32* %arrayidx3.2, align 4
  %arrayidx5.2 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 2
  store i32 -22, i32* %arrayidx5.2, align 4
  %arrayidx.3 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 3
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.3, align 8
  %arrayidx3.3 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 3
  store i32 -22, i32* %arrayidx3.3, align 4
  %arrayidx5.3 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 3
  store i32 -22, i32* %arrayidx5.3, align 4
  %arrayidx.4 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 4
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.4, align 8
  %arrayidx3.4 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 4
  store i32 -22, i32* %arrayidx3.4, align 4
  %arrayidx5.4 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 4
  store i32 -22, i32* %arrayidx5.4, align 4
  %arrayidx.5 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 5
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.5, align 8
  %arrayidx3.5 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 5
  store i32 -22, i32* %arrayidx3.5, align 4
  %arrayidx5.5 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 5
  store i32 -22, i32* %arrayidx5.5, align 4
  %arrayidx.6 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 6
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.6, align 8
  %arrayidx3.6 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 6
  store i32 -22, i32* %arrayidx3.6, align 4
  %arrayidx5.6 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 6
  store i32 -22, i32* %arrayidx5.6, align 4
  %arrayidx.7 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 7
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.7, align 8
  %arrayidx3.7 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 7
  store i32 -22, i32* %arrayidx3.7, align 4
  %arrayidx5.7 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 7
  store i32 -22, i32* %arrayidx5.7, align 4
  %arrayidx.8 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 8
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.8, align 8
  %arrayidx3.8 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 8
  store i32 -22, i32* %arrayidx3.8, align 4
  %arrayidx5.8 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 8
  store i32 -22, i32* %arrayidx5.8, align 4
  %arrayidx.9 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 9
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.9, align 8
  %arrayidx3.9 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 9
  store i32 -22, i32* %arrayidx3.9, align 4
  %arrayidx5.9 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 9
  store i32 -22, i32* %arrayidx5.9, align 4
  %arrayidx.10 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 10
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.10, align 8
  %arrayidx3.10 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 10
  store i32 -22, i32* %arrayidx3.10, align 4
  %arrayidx5.10 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 10
  store i32 -22, i32* %arrayidx5.10, align 4
  %arrayidx.11 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 11
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.11, align 8
  %arrayidx3.11 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 11
  store i32 -22, i32* %arrayidx3.11, align 4
  %arrayidx5.11 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 11
  store i32 -22, i32* %arrayidx5.11, align 4
  %arrayidx.12 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 12
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.12, align 8
  %arrayidx3.12 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 12
  store i32 -22, i32* %arrayidx3.12, align 4
  %arrayidx5.12 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 12
  store i32 -22, i32* %arrayidx5.12, align 4
  %arrayidx.13 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 13
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.13, align 8
  %arrayidx3.13 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 13
  store i32 -22, i32* %arrayidx3.13, align 4
  %arrayidx5.13 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 13
  store i32 -22, i32* %arrayidx5.13, align 4
  %arrayidx.14 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 14
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.14, align 8
  %arrayidx3.14 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 14
  store i32 -22, i32* %arrayidx3.14, align 4
  %arrayidx5.14 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 14
  store i32 -22, i32* %arrayidx5.14, align 4
  %arrayidx.15 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 15
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.15, align 8
  %arrayidx3.15 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 15
  store i32 -22, i32* %arrayidx3.15, align 4
  %arrayidx5.15 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 15
  store i32 -22, i32* %arrayidx5.15, align 4
  %arrayidx.16 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 16
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.16, align 8
  %arrayidx3.16 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 16
  store i32 -22, i32* %arrayidx3.16, align 4
  %arrayidx5.16 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 16
  store i32 -22, i32* %arrayidx5.16, align 4
  %arrayidx.17 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 17
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.17, align 8
  %arrayidx3.17 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 17
  store i32 -22, i32* %arrayidx3.17, align 4
  %arrayidx5.17 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 17
  store i32 -22, i32* %arrayidx5.17, align 4
  %arrayidx.18 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 18
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.18, align 8
  %arrayidx3.18 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 18
  store i32 -22, i32* %arrayidx3.18, align 4
  %arrayidx5.18 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 18
  store i32 -22, i32* %arrayidx5.18, align 4
  %arrayidx.19 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 19
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx.19, align 8
  %arrayidx3.19 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 19
  store i32 -22, i32* %arrayidx3.19, align 4
  %arrayidx5.19 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 19
  store i32 -22, i32* %arrayidx5.19, align 4
  %of_node = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 5
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool.not = icmp eq %struct.device_node* %2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 7
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.power_supply_get_battery_info, i64 0, i64 0)) #19
  br label %cleanup222

if.end:                                           ; preds = %entry
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef nonnull %2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 0) #17
  %tobool7.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool7.not, label %cleanup222, label %if.end9

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @of_property_read_string(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** noundef nonnull %value) #17
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup222

if.end13:                                         ; preds = %if.end9
  %3 = load i8*, i8** %value, align 8
  %call14 = call i32 @strcmp(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* noundef %3) #17
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %cleanup222

if.end17:                                         ; preds = %if.end13
  %call18 = call i32 @of_property_read_string(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** noundef nonnull %value) #17
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end60

if.then20:                                        ; preds = %if.end17
  %4 = load i8*, i8** %value, align 8
  %call21 = call i32 @strcmp(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* noundef %4) #17
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  store i32 5, i32* %technology, align 8
  br label %if.end60

if.else:                                          ; preds = %if.then20
  %5 = load i8*, i8** %value, align 8
  %call25 = call i32 @strcmp(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* noundef %5) #17
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else
  store i32 1, i32* %technology, align 8
  br label %if.end60

if.else29:                                        ; preds = %if.else
  %6 = load i8*, i8** %value, align 8
  %call30 = call i32 @strcmp(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* noundef %6) #17
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else29
  store i32 2, i32* %technology, align 8
  br label %if.end60

if.else34:                                        ; preds = %if.else29
  %7 = load i8*, i8** %value, align 8
  %call35 = call i32 @strcmp(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* noundef %7) #17
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.else34
  store i32 3, i32* %technology, align 8
  br label %if.end60

if.else39:                                        ; preds = %if.else34
  %8 = load i8*, i8** %value, align 8
  %call40 = call i32 @strcmp(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* noundef %8) #17
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else39
  store i32 4, i32* %technology, align 8
  br label %if.end60

if.else44:                                        ; preds = %if.else39
  %9 = load i8*, i8** %value, align 8
  %call45 = call i32 @strcmp(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* noundef %9) #17
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %do.end52

if.then47:                                        ; preds = %if.else44
  store i32 6, i32* %technology, align 8
  br label %if.end60

do.end52:                                         ; preds = %if.else44
  %dev53 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 7
  %10 = load i8*, i8** %value, align 8
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %dev53, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* noundef %10) #19
  br label %if.end60

if.end60:                                         ; preds = %if.then23, %if.then32, %if.then42, %do.end52, %if.then47, %if.then37, %if.then27, %if.end17
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32* noundef %energy_full_design_uwh) #16
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32* noundef %charge_full_design_uah) #16
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32* noundef %voltage_min_design_uv) #16
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32* noundef %voltage_max_design_uv) #16
  %tricklecharge_current_ua = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 5
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32* noundef %tricklecharge_current_ua) #16
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32* noundef %precharge_current_ua) #16
  %precharge_voltage_max_uv = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 7
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i32* noundef %precharge_voltage_max_uv) #16
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32* noundef %charge_term_current_ua) #16
  %charge_restart_voltage_uv = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 9
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32* noundef %charge_restart_voltage_uv) #16
  %overvoltage_limit_uv = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 10
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32* noundef %overvoltage_limit_uv) #16
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i32* noundef %constant_charge_current_max_ua) #16
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i32* noundef %constant_charge_voltage_max_uv) #16
  call fastcc void @of_property_read_u32(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i32* noundef %factory_internal_resistance_uohm) #16
  %call84 = call i32 @of_property_read_u32_index(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 noundef 0, i32* noundef %temp_ambient_alert_min) #17
  %call86 = call i32 @of_property_read_u32_index(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 noundef 1, i32* noundef %temp_ambient_alert_max) #17
  %call88 = call i32 @of_property_read_u32_index(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 noundef 0, i32* noundef %temp_alert_min) #17
  %call90 = call i32 @of_property_read_u32_index(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 noundef 1, i32* noundef %temp_alert_max) #17
  %call92 = call i32 @of_property_read_u32_index(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i32 noundef 0, i32* noundef %temp_min) #17
  %call94 = call i32 @of_property_read_u32_index(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i32 noundef 1, i32* noundef %temp_max) #17
  %call95 = call fastcc i32 @of_property_count_u32_elems(%struct.device_node* noundef nonnull %call) #16
  store i32 %call95, i32* %len, align 4
  %cmp96 = icmp slt i32 %call95, 0
  %cmp97 = icmp ne i32 %call95, -22
  %or.cond = and i1 %cmp96, %cmp97
  br i1 %or.cond, label %cleanup222, label %if.else99

if.else99:                                        ; preds = %if.end60
  %cmp100 = icmp sgt i32 %call95, 20
  br i1 %cmp100, label %do.end104, label %if.else106

do.end104:                                        ; preds = %if.else99
  %dev105 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 7
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev105, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0)) #19
  br label %cleanup222

if.else106:                                       ; preds = %if.else99
  %cmp107 = icmp sgt i32 %call95, 0
  br i1 %cmp107, label %for.body117.lr.ph, label %for.end187

for.body117.lr.ph:                                ; preds = %if.else106
  %conv381 = zext i32 %call95 to i64
  call fastcc void @of_property_read_u32_array(%struct.device_node* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32* noundef %arrayidx3, i64 noundef %conv381) #16
  %11 = bitcast i32* %size to i8*
  %dev133 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 7
  %12 = sext i32 %call95 to i64
  br label %for.body117

for.body117:                                      ; preds = %for.body117.lr.ph, %for.inc185
  %indvars.iv397 = phi i64 [ 0, %for.body117.lr.ph ], [ %indvars.iv.next398, %for.inc185 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #18
  store i32 0, i32* %size, align 4, !annotation !8
  %13 = trunc i64 %indvars.iv397 to i32
  %call118 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0), i32 noundef %13) #17
  %call119 = call i8* @of_get_property(%struct.device_node* noundef %call, i8* noundef %call118, i32* noundef nonnull %size) #17
  %tobool120 = icmp ne i8* %call119, null
  %14 = load i32, i32* %size, align 4
  %tobool121 = icmp ne i32 %14, 0
  %or.cond229 = select i1 %tobool120, i1 %tobool121, i1 false
  br i1 %or.cond229, label %if.end127, label %do.end125

do.end125:                                        ; preds = %for.body117
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev133, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i8* noundef %call118) #19
  call void @kfree(i8* noundef %call118) #17
  br label %cleanup.thread

if.end127:                                        ; preds = %for.body117
  call void @kfree(i8* noundef %call118) #17
  %15 = load i32, i32* %size, align 4
  %conv129 = ashr i32 %15, 3
  %arrayidx132 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 %indvars.iv397
  store i32 %conv129, i32* %arrayidx132, align 4
  %conv134 = sext i32 %conv129 to i64
  %call135 = call fastcc i8* @devm_kcalloc(%struct.device* noundef %dev133, i64 noundef %conv134) #16
  %16 = bitcast i8* %call135 to %struct.power_supply_battery_ocv_table*
  %arrayidx138 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 %indvars.iv397
  %17 = bitcast %struct.power_supply_battery_ocv_table** %arrayidx138 to i8**
  store i8* %call135, i8** %17, align 8
  %tobool142.not = icmp eq i8* %call135, null
  br i1 %tobool142.not, label %cleanup.thread, label %for.cond145.preheader

for.cond145.preheader:                            ; preds = %if.end127
  %cmp146385 = icmp sgt i32 %15, 7
  br i1 %cmp146385, label %for.body148.preheader, label %for.inc185

for.body148.preheader:                            ; preds = %for.cond145.preheader
  %18 = bitcast i8* %call119 to i32*
  %smax = call i32 @llvm.smax.i32(i32 %conv129, i32 1)
  %wide.trip.count = zext i32 %smax to i64
  br label %cond.end

cond.end:                                         ; preds = %for.body148.preheader, %cond.end
  %indvars.iv = phi i64 [ 0, %for.body148.preheader ], [ %indvars.iv.next, %cond.end ]
  %list.0386 = phi i32* [ %18, %for.body148.preheader ], [ %incdec.ptr177, %cond.end ]
  %19 = load i32, i32* %list.0386, align 4
  %call156 = call fastcc i32 @__fswab32(i32 noundef %19) #20
  %ocv = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %16, i64 %indvars.iv, i32 0
  store i32 %call156, i32* %ocv, align 4
  %incdec.ptr = getelementptr i32, i32* %list.0386, i64 1
  %20 = load i32, i32* %incdec.ptr, align 4
  %call172 = call fastcc i32 @__fswab32(i32 noundef %20) #20
  %capacity = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %16, i64 %indvars.iv, i32 1
  store i32 %call172, i32* %capacity, align 4
  %incdec.ptr177 = getelementptr i32, i32* %list.0386, i64 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc185, label %cond.end

cleanup.thread:                                   ; preds = %if.end127, %do.end125
  %err.1.ph = phi i32 [ -22, %do.end125 ], [ -12, %if.end127 ]
  call void @power_supply_put_battery_info(%struct.power_supply* noundef %psy, %struct.power_supply_battery_info* noundef %info) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #18
  br label %cleanup222

for.inc185:                                       ; preds = %cond.end, %for.cond145.preheader
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #18
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1
  %cmp115 = icmp slt i64 %indvars.iv.next398, %12
  br i1 %cmp115, label %for.body117, label %for.end187

for.end187:                                       ; preds = %for.inc185, %if.else106
  %call188 = call i8* @of_get_property(%struct.device_node* noundef %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i32* noundef nonnull %len) #17
  %tobool189 = icmp ne i8* %call188, null
  %21 = load i32, i32* %len, align 4
  %tobool191 = icmp ne i32 %21, 0
  %or.cond230 = select i1 %tobool189, i1 %tobool191, i1 false
  br i1 %or.cond230, label %if.end193, label %cleanup222

if.end193:                                        ; preds = %for.end187
  %conv196 = ashr i32 %21, 3
  %resist_table_size = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 24
  store i32 %conv196, i32* %resist_table_size, align 8
  %dev197 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 7
  %conv199 = sext i32 %conv196 to i64
  %call200 = call fastcc i8* @devm_kcalloc(%struct.device* noundef %dev197, i64 noundef %conv199) #16
  %22 = bitcast i8* %call200 to %struct.power_supply_resistance_temp_table*
  %23 = bitcast %struct.power_supply_resistance_temp_table** %resist_table1 to i8**
  store i8* %call200, i8** %23, align 8
  %tobool203.not = icmp eq i8* %call200, null
  br i1 %tobool203.not, label %if.then204, label %for.cond206.preheader

for.cond206.preheader:                            ; preds = %if.end193
  %24 = load i32, i32* %resist_table_size, align 8
  %cmp208390 = icmp sgt i32 %24, 0
  br i1 %cmp208390, label %for.body210.preheader, label %cleanup222

for.body210.preheader:                            ; preds = %for.cond206.preheader
  %25 = bitcast i8* %call188 to i32*
  %wide.trip.count403 = zext i32 %24 to i64
  br label %for.body210

if.then204:                                       ; preds = %if.end193
  call void @power_supply_put_battery_info(%struct.power_supply* noundef %psy, %struct.power_supply_battery_info* noundef %info) #16
  br label %cleanup222

for.body210:                                      ; preds = %for.body210.preheader, %for.body210
  %indvars.iv400 = phi i64 [ 0, %for.body210.preheader ], [ %indvars.iv.next401, %for.body210 ]
  %list.1392 = phi i32* [ %25, %for.body210.preheader ], [ %incdec.ptr215, %for.body210 ]
  %incdec.ptr211 = getelementptr i32, i32* %list.1392, i64 1
  %26 = load i32, i32* %list.1392, align 4
  %call212 = call fastcc i32 @__fswab32(i32 noundef %26) #20
  %temp = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %22, i64 %indvars.iv400, i32 0
  store i32 %call212, i32* %temp, align 4
  %incdec.ptr215 = getelementptr i32, i32* %list.1392, i64 2
  %27 = load i32, i32* %incdec.ptr211, align 4
  %call216 = call fastcc i32 @__fswab32(i32 noundef %27) #20
  %resistance = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %22, i64 %indvars.iv400, i32 1
  store i32 %call216, i32* %resistance, align 4
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 1
  %exitcond404.not = icmp eq i64 %indvars.iv.next401, %wide.trip.count403
  br i1 %exitcond404.not, label %cleanup222, label %for.body210

cleanup222:                                       ; preds = %for.body210, %for.cond206.preheader, %do.end104, %if.then204, %if.end9, %for.end187, %if.end13, %if.end60, %cleanup.thread, %if.end, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -19, %if.end ], [ %call10, %if.end9 ], [ -22, %do.end104 ], [ -12, %if.then204 ], [ 0, %for.end187 ], [ -19, %if.end13 ], [ %call95, %if.end60 ], [ %err.1.ph, %cleanup.thread ], [ 0, %for.cond206.preheader ], [ 0, %for.body210 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(%struct.device_node* noundef, i8* noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_value) unnamed_addr #0 {
entry:
  call fastcc void @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_value, i64 noundef 1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(%struct.device_node* noundef, i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_count_u32_elems(%struct.device_node* noundef %np) unnamed_addr #0 {
entry:
  %call = call i32 @of_property_count_elems_of_size(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 4) #17
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_values, i64 noundef %sz) unnamed_addr #0 {
entry:
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_values, i64 noundef %sz, i64 noundef 0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kasprintf(i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_get_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @power_supply_put_battery_info(%struct.power_supply* noundef %psy, %struct.power_supply_battery_info* nocapture noundef readonly %info) local_unnamed_addr #0 {
entry:
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 %indvars.iv
  %0 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %arrayidx, align 8
  %tobool.not = icmp eq %struct.power_supply_battery_ocv_table* %0, null
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %1 = bitcast %struct.power_supply_battery_ocv_table* %0 to i8*
  call void @devm_kfree(%struct.device* noundef %dev, i8* noundef nonnull %1) #17
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %resist_table = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 23
  %2 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %resist_table, align 8
  %tobool4.not = icmp eq %struct.power_supply_resistance_temp_table* %2, null
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %for.end
  %3 = bitcast %struct.power_supply_resistance_temp_table* %2 to i8*
  call void @devm_kfree(%struct.device* noundef %dev, i8* noundef nonnull %3) #17
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @devm_kcalloc(%struct.device* noundef %dev, i64 noundef %n) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @devm_kmalloc_array(%struct.device* noundef %dev, i64 noundef %n) #16
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #6 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(%struct.device* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @power_supply_temp2resist_simple(%struct.power_supply_resistance_temp_table* nocapture noundef readonly %table, i32 noundef %table_len, i32 noundef %temp) local_unnamed_addr #7 {
entry:
  %cmp71 = icmp sgt i32 %table_len, 0
  br i1 %cmp71, label %for.body.preheader, label %if.then28

for.body.preheader:                               ; preds = %entry
  %temp189 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %table, i64 0, i32 0
  %0 = load i32, i32* %temp189, align 4
  %cmp290 = icmp slt i32 %0, %temp
  br i1 %cmp290, label %for.end, label %for.inc

for.body:                                         ; preds = %for.inc
  %idxprom = sext i32 %inc to i64
  %temp1 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %table, i64 %idxprom, i32 0
  %1 = load i32, i32* %temp1, align 4
  %cmp2 = icmp slt i32 %1, %temp
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.inc:                                          ; preds = %for.body.preheader, %for.body
  %i.07291 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %inc = add nuw i32 %i.07291, 1
  %exitcond.not = icmp eq i32 %inc, %table_len
  br i1 %exitcond.not, label %if.else31, label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  %cmp = icmp slt i32 %inc, %table_len
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.preheader
  %cmp73.lcssa = phi i1 [ %cmp, %for.body.for.end_crit_edge ], [ true, %for.body.preheader ]
  %i.072.lcssa = phi i32 [ %inc, %for.body.for.end_crit_edge ], [ 0, %for.body.preheader ]
  %idxprom.lcssa = phi i64 [ %idxprom, %for.body.for.end_crit_edge ], [ 0, %for.body.preheader ]
  %.lcssa = phi i32 [ %1, %for.body.for.end_crit_edge ], [ %0, %for.body.preheader ]
  %cmp3 = icmp sgt i32 %i.072.lcssa, 0
  %2 = and i1 %cmp73.lcssa, %cmp3
  br i1 %2, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.end
  %sub = add nsw i32 %i.072.lcssa, -1
  %3 = zext i32 %sub to i64
  %resistance = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %table, i64 %3, i32 1
  %4 = load i32, i32* %resistance, align 4
  %resistance10 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %table, i64 %idxprom.lcssa, i32 1
  %5 = load i32, i32* %resistance10, align 4
  %sub11 = sub i32 %4, %5
  %sub15 = sub i32 %temp, %.lcssa
  %mul = mul i32 %sub15, %sub11
  %temp19 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %table, i64 %3, i32 0
  %6 = load i32, i32* %temp19, align 4
  %sub23 = sub i32 %6, %.lcssa
  %div = sdiv i32 %mul, %sub23
  %add = add i32 %div, %5
  br label %if.end37

if.else:                                          ; preds = %for.end
  %cmp27 = icmp eq i32 %i.072.lcssa, 0
  br i1 %cmp27, label %if.then28, label %if.else31

if.then28:                                        ; preds = %entry, %if.else
  %resistance30 = getelementptr inbounds %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %table, i64 0, i32 1
  %7 = load i32, i32* %resistance30, align 4
  br label %if.end37

if.else31:                                        ; preds = %for.inc, %if.else
  %sub32 = add i32 %table_len, -1
  %idxprom33 = sext i32 %sub32 to i64
  %resistance35 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %table, i64 %idxprom33, i32 1
  %8 = load i32, i32* %resistance35, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then28, %if.else31, %if.then5
  %resist.0 = phi i32 [ %add, %if.then5 ], [ %7, %if.then28 ], [ %8, %if.else31 ]
  ret i32 %resist.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @power_supply_ocv2cap_simple(%struct.power_supply_battery_ocv_table* nocapture noundef readonly %table, i32 noundef %table_len, i32 noundef %ocv) local_unnamed_addr #7 {
entry:
  %cmp71 = icmp sgt i32 %table_len, 0
  br i1 %cmp71, label %for.body.preheader, label %if.then28

for.body.preheader:                               ; preds = %entry
  %ocv189 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %table, i64 0, i32 0
  %0 = load i32, i32* %ocv189, align 4
  %cmp290 = icmp slt i32 %0, %ocv
  br i1 %cmp290, label %for.end, label %for.inc

for.body:                                         ; preds = %for.inc
  %idxprom = sext i32 %inc to i64
  %ocv1 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %table, i64 %idxprom, i32 0
  %1 = load i32, i32* %ocv1, align 4
  %cmp2 = icmp slt i32 %1, %ocv
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.inc:                                          ; preds = %for.body.preheader, %for.body
  %i.07291 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %inc = add nuw i32 %i.07291, 1
  %exitcond.not = icmp eq i32 %inc, %table_len
  br i1 %exitcond.not, label %if.else31, label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  %cmp = icmp slt i32 %inc, %table_len
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.preheader
  %cmp73.lcssa = phi i1 [ %cmp, %for.body.for.end_crit_edge ], [ true, %for.body.preheader ]
  %i.072.lcssa = phi i32 [ %inc, %for.body.for.end_crit_edge ], [ 0, %for.body.preheader ]
  %idxprom.lcssa = phi i64 [ %idxprom, %for.body.for.end_crit_edge ], [ 0, %for.body.preheader ]
  %.lcssa = phi i32 [ %1, %for.body.for.end_crit_edge ], [ %0, %for.body.preheader ]
  %cmp3 = icmp sgt i32 %i.072.lcssa, 0
  %2 = and i1 %cmp73.lcssa, %cmp3
  br i1 %2, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.end
  %sub = add nsw i32 %i.072.lcssa, -1
  %3 = zext i32 %sub to i64
  %capacity = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %table, i64 %3, i32 1
  %4 = load i32, i32* %capacity, align 4
  %capacity10 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %table, i64 %idxprom.lcssa, i32 1
  %5 = load i32, i32* %capacity10, align 4
  %sub11 = sub i32 %4, %5
  %sub15 = sub i32 %ocv, %.lcssa
  %mul = mul i32 %sub15, %sub11
  %ocv19 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %table, i64 %3, i32 0
  %6 = load i32, i32* %ocv19, align 4
  %sub23 = sub i32 %6, %.lcssa
  %div = sdiv i32 %mul, %sub23
  %add = add i32 %div, %5
  br label %if.end37

if.else:                                          ; preds = %for.end
  %cmp27 = icmp eq i32 %i.072.lcssa, 0
  br i1 %cmp27, label %if.then28, label %if.else31

if.then28:                                        ; preds = %entry, %if.else
  %capacity30 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %table, i64 0, i32 1
  %7 = load i32, i32* %capacity30, align 4
  br label %if.end37

if.else31:                                        ; preds = %for.inc, %if.else
  %sub32 = add i32 %table_len, -1
  %idxprom33 = sext i32 %sub32 to i64
  %capacity35 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %table, i64 %idxprom33, i32 1
  %8 = load i32, i32* %capacity35, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then28, %if.else31, %if.then5
  %cap.0 = phi i32 [ %add, %if.then5 ], [ %7, %if.then28 ], [ %8, %if.else31 ]
  ret i32 %cap.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local %struct.power_supply_battery_ocv_table* @power_supply_find_ocv2cap_table(%struct.power_supply_battery_info* nocapture noundef readonly %info, i32 noundef %temp, i32* nocapture noundef writeonly %table_len) local_unnamed_addr #8 {
entry:
  %arrayidx = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 0
  %0 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %arrayidx, align 8
  %tobool.not = icmp eq %struct.power_supply_battery_ocv_table* %0, null
  br i1 %tobool.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %best_temp_diff.034 = phi i32 [ %spec.select31, %for.body ], [ 2147483647, %entry ]
  %best_index.033 = phi i8 [ %spec.select, %for.body ], [ 0, %entry ]
  %arrayidx2 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 14, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4
  %sub = sub i32 %1, %temp
  %2 = call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %cmp6 = icmp slt i32 %2, %best_temp_diff.034
  %3 = trunc i64 %indvars.iv to i8
  %spec.select = select i1 %cmp6, i8 %3, i8 %best_index.033
  %spec.select31 = select i1 %cmp6, i32 %2, i32 %best_temp_diff.034
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %idxprom10 = zext i8 %spec.select to i64
  %arrayidx11 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 22, i64 %idxprom10
  %4 = load i32, i32* %arrayidx11, align 4
  store i32 %4, i32* %table_len, align 4
  %arrayidx14 = getelementptr %struct.power_supply_battery_info, %struct.power_supply_battery_info* %info, i64 0, i32 21, i64 %idxprom10
  %5 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %arrayidx14, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi %struct.power_supply_battery_ocv_table* [ %5, %for.end ], [ null, %entry ]
  ret %struct.power_supply_battery_ocv_table* %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @power_supply_batinfo_ocv2cap(%struct.power_supply_battery_info* nocapture noundef readonly %info, i32 noundef %ocv, i32 noundef %temp) local_unnamed_addr #8 {
entry:
  %table_len = alloca i32, align 4
  %0 = bitcast i32* %table_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18
  store i32 0, i32* %table_len, align 4, !annotation !8
  %call = call %struct.power_supply_battery_ocv_table* @power_supply_find_ocv2cap_table(%struct.power_supply_battery_info* noundef %info, i32 noundef %temp, i32* noundef nonnull %table_len) #16
  %tobool.not = icmp eq %struct.power_supply_battery_ocv_table* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %table_len, align 4
  %call1 = call i32 @power_supply_ocv2cap_simple(%struct.power_supply_battery_ocv_table* noundef nonnull %call, i32 noundef %1, i32 noundef %ocv) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @power_supply_get_property(%struct.power_supply* noundef %psy, i32 noundef %psp, %union.power_supply_propval* noundef %val) local_unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 14, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %initialized = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 12
  %1 = load i8, i8* %initialized, align 1, !range !9
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %tobool.not, i32 -11, i32 -19
  br label %return

if.end2:                                          ; preds = %entry
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 0
  %2 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %get_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %2, i64 0, i32 6
  %3 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %get_property, align 8
  %call3 = call i32 %3(%struct.power_supply* noundef %psy, i32 noundef %psp, %union.power_supply_propval* noundef %val) #17
  br label %return

return:                                           ; preds = %if.then, %if.end2
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ %., %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @power_supply_set_property(%struct.power_supply* noundef %psy, i32 noundef %psp, %union.power_supply_propval* noundef %val) local_unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 14, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 0
  %1 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %set_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %1, i64 0, i32 7
  %2 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %set_property, align 8
  %tobool.not = icmp eq i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* %2, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 %2(%struct.power_supply* noundef %psy, i32 noundef %psp, %union.power_supply_propval* noundef %val) #17
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ -19, %lor.lhs.false ], [ -19, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @power_supply_property_is_writeable(%struct.power_supply* noundef %psy, i32 noundef %psp) local_unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 14, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 0
  %1 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %property_is_writeable = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %1, i64 0, i32 8
  %2 = load i32 (%struct.power_supply*, i32)*, i32 (%struct.power_supply*, i32)** %property_is_writeable, align 8
  %tobool.not = icmp eq i32 (%struct.power_supply*, i32)* %2, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 %2(%struct.power_supply* noundef %psy, i32 noundef %psp) #17
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ -19, %lor.lhs.false ], [ -19, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @power_supply_external_power_changed(%struct.power_supply* noundef %psy) local_unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 14, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 0
  %1 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %external_power_changed = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %1, i64 0, i32 9
  %external_power_changed1 = bitcast {}** %external_power_changed to void (%struct.power_supply*)**
  %2 = load void (%struct.power_supply*)*, void (%struct.power_supply*)** %external_power_changed1, align 8
  %tobool.not = icmp eq void (%struct.power_supply*)* %2, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void %2(%struct.power_supply* noundef %psy) #17
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @power_supply_powers(%struct.power_supply* noundef %psy, %struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %kobj = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 7, i32 0
  %kobj2 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj, %struct.kobject* noundef %kobj2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @power_supply_reg_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef nonnull @power_supply_notifier, %struct.notifier_block* noundef %nb) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @power_supply_unreg_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head* noundef nonnull @power_supply_notifier, %struct.notifier_block* noundef %nb) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.power_supply* @power_supply_register(%struct.device* noundef %parent, %struct.power_supply_desc* noundef %desc, %struct.power_supply_config* noundef %cfg) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.power_supply* @__power_supply_register(%struct.device* noundef %parent, %struct.power_supply_desc* noundef %desc, %struct.power_supply_config* noundef %cfg, i1 noundef true) #16
  ret %struct.power_supply* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.power_supply* @__power_supply_register(%struct.device* noundef %parent, %struct.power_supply_desc* noundef %desc, %struct.power_supply_config* noundef readonly %cfg, i1 noundef %ws) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %parent, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %desc, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.__power_supply_register, i64 0, i64 0), i8* noundef %0) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %tobool1.not = icmp eq %struct.power_supply_desc* %desc, null
  br i1 %tobool1.not, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %name2 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %desc, i64 0, i32 0
  %1 = load i8*, i8** %name2, align 8
  %tobool3.not = icmp eq i8* %1, null
  br i1 %tobool3.not, label %if.then8, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %desc, i64 0, i32 4
  %2 = load i32*, i32** %properties, align 8
  %tobool5.not = icmp eq i32* %2, null
  br i1 %tobool5.not, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %num_properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %desc, i64 0, i32 5
  %3 = load i64, i64* %num_properties, align 8
  %tobool7.not = icmp eq i64 %3, 0
  br i1 %tobool7.not, label %if.then8, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %lor.lhs.false6
  %usb_types = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %desc, i64 0, i32 2
  %num_usb_types = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %desc, i64 0, i32 3
  br label %for.body

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false, %if.end
  %call9 = call fastcc i8* @ERR_PTR(i64 noundef -22) #16
  %4 = bitcast i8* %call9 to %struct.power_supply*
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %conv203 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %for.inc ]
  %arrayidx = getelementptr i32, i32* %2, i64 %conv203
  %5 = load i32, i32* %arrayidx, align 4
  %cmp14 = icmp eq i32 %5, 64
  br i1 %cmp14, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32*, i32** %usb_types, align 8
  %tobool16.not = icmp eq i32* %6, null
  br i1 %tobool16.not, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %land.lhs.true
  %7 = load i64, i64* %num_usb_types, align 8
  %tobool18.not = icmp eq i64 %7, 0
  br i1 %tobool18.not, label %if.then19, label %for.inc

if.then19:                                        ; preds = %lor.lhs.false17, %land.lhs.true
  %call20 = call fastcc i8* @ERR_PTR(i64 noundef -22) #16
  %8 = bitcast i8* %call20 to %struct.power_supply*
  br label %cleanup

for.inc:                                          ; preds = %for.body, %lor.lhs.false17
  %inc = shl nsw i64 %conv203, 32
  %sext = add i64 %inc, 4294967296
  %conv = ashr exact i64 %sext, 32
  %cmp = icmp ugt i64 %3, %conv
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %call22 = call fastcc i8* @kzalloc() #16
  %9 = bitcast i8* %call22 to %struct.power_supply*
  %tobool23.not = icmp eq i8* %call22, null
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %for.end
  %call25 = call fastcc i8* @ERR_PTR(i64 noundef -12) #16
  %10 = bitcast i8* %call25 to %struct.power_supply*
  br label %cleanup

if.end26:                                         ; preds = %for.end
  %dev27 = getelementptr inbounds i8, i8* %call22, i64 56
  %11 = bitcast i8* %dev27 to %struct.device*
  call void @device_initialize(%struct.device* noundef %11) #17
  %12 = load %struct.class*, %struct.class** @power_supply_class, align 8
  %class = getelementptr inbounds i8, i8* %call22, i64 480
  %13 = bitcast i8* %class to %struct.class**
  store %struct.class* %12, %struct.class** %13, align 8
  %type = getelementptr inbounds i8, i8* %call22, i64 144
  %14 = bitcast i8* %type to %struct.device_type**
  store %struct.device_type* @power_supply_dev_type, %struct.device_type** %14, align 8
  %parent28 = getelementptr inbounds i8, i8* %call22, i64 120
  %15 = bitcast i8* %parent28 to %struct.device**
  store %struct.device* %parent, %struct.device** %15, align 8
  %release = getelementptr inbounds i8, i8* %call22, i64 496
  %16 = bitcast i8* %release to void (%struct.device*)**
  store void (%struct.device*)* @power_supply_dev_release, void (%struct.device*)** %16, align 8
  call fastcc void @dev_set_drvdata(%struct.device* noundef %11, i8* noundef nonnull %call22) #16
  %desc29 = bitcast i8* %call22 to %struct.power_supply_desc**
  store %struct.power_supply_desc* %desc, %struct.power_supply_desc** %desc29, align 8
  %tobool30.not = icmp eq %struct.power_supply_config* %cfg, null
  br i1 %tobool30.not, label %if.end49, label %if.then31

if.then31:                                        ; preds = %if.end26
  %attr_grp = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %cfg, i64 0, i32 3
  %17 = load %struct.attribute_group**, %struct.attribute_group*** %attr_grp, align 8
  %groups = getelementptr inbounds i8, i8* %call22, i64 488
  %18 = bitcast i8* %groups to %struct.attribute_group***
  store %struct.attribute_group** %17, %struct.attribute_group*** %18, align 8
  %drv_data = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %cfg, i64 0, i32 2
  %19 = load i8*, i8** %drv_data, align 8
  %drv_data32 = getelementptr inbounds i8, i8* %call22, i64 48
  %20 = bitcast i8* %drv_data32 to i8**
  store i8* %19, i8** %20, align 8
  %fwnode = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %cfg, i64 0, i32 1
  %21 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %tobool33.not = icmp eq %struct.fwnode_handle* %21, null
  br i1 %tobool33.not, label %cond.false43, label %cond.true

cond.true:                                        ; preds = %if.then31
  %call36 = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef nonnull %21) #16
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %21, i64 -1, i32 4
  %22 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call36, %struct.device_node* %22, %struct.device_node* null
  br label %cond.end44

cond.false43:                                     ; preds = %if.then31
  %of_node = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %cfg, i64 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %cond.true
  %cond45 = phi %struct.device_node* [ %cond, %cond.true ], [ %23, %cond.false43 ]
  %of_node46 = getelementptr inbounds i8, i8* %call22, i64 40
  %24 = bitcast i8* %of_node46 to %struct.device_node**
  store %struct.device_node* %cond45, %struct.device_node** %24, align 8
  %supplied_to = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %cfg, i64 0, i32 4
  %25 = load i8**, i8*** %supplied_to, align 8
  %supplied_to47 = getelementptr inbounds i8, i8* %call22, i64 8
  %26 = bitcast i8* %supplied_to47 to i8***
  store i8** %25, i8*** %26, align 8
  %num_supplicants = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %cfg, i64 0, i32 5
  %27 = load i64, i64* %num_supplicants, align 8
  %num_supplicants48 = getelementptr inbounds i8, i8* %call22, i64 16
  %28 = bitcast i8* %num_supplicants48 to i64*
  store i64 %27, i64* %28, align 8
  br label %if.end49

if.end49:                                         ; preds = %cond.end44, %if.end26
  %29 = load i8*, i8** %name2, align 8
  %call51 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* noundef %29) #17
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body55, label %dev_set_name_failed

do.body55:                                        ; preds = %if.end49
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call22, i64 528
  %30 = bitcast i8* %.compoundliteral.sroa.0.0..sroa_idx to i64*
  store i64 68719476704, i64* %30, align 8
  %entry58 = getelementptr inbounds i8, i8* %call22, i64 536
  %31 = bitcast i8* %entry58 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %31) #16
  %func = getelementptr inbounds i8, i8* %call22, i64 552
  %32 = bitcast i8* %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @power_supply_changed_work, void (%struct.work_struct*)** %32, align 8
  %deferred_register_work = getelementptr inbounds i8, i8* %call22, i64 560
  %33 = bitcast i8* %deferred_register_work to %struct.delayed_work*
  %34 = bitcast i8* %deferred_register_work to i64*
  store i64 68719476704, i64* %34, align 8
  %entry71 = getelementptr inbounds i8, i8* %call22, i64 568
  %35 = bitcast i8* %entry71 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %35) #16
  %func74 = getelementptr inbounds i8, i8* %call22, i64 584
  %36 = bitcast i8* %func74 to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @power_supply_deferred_register_work, void (%struct.work_struct*)** %36, align 8
  %timer = getelementptr inbounds i8, i8* %call22, i64 592
  %37 = bitcast i8* %timer to %struct.timer_list*
  call void @init_timer_key(%struct.timer_list* noundef %37, void (%struct.timer_list*)* noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, i8* noundef null, %struct.lock_class_key* noundef null) #17
  %call80 = call fastcc i32 @power_supply_check_supplies(%struct.power_supply* noundef nonnull %9) #16
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.body84, label %dev_set_name_failed

do.body84:                                        ; preds = %do.body55
  %changed_lock = getelementptr inbounds i8, i8* %call22, i64 648
  %38 = bitcast i8* %changed_lock to i32*
  store i32 0, i32* %38, align 8
  %call91 = call i32 @device_add(%struct.device* noundef %11) #17
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %dev_set_name_failed

if.end94:                                         ; preds = %do.body84
  call fastcc void @device_init_wakeup(%struct.device* noundef %11, i1 noundef %ws) #16
  %use_cnt = getelementptr inbounds i8, i8* %call22, i64 656
  %39 = bitcast i8* %use_cnt to %struct.atomic_t*
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %39) #17
  %40 = getelementptr inbounds i8, i8* %call22, i64 653
  store i8 1, i8* %40, align 1
  %41 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_power_efficient_wq, align 8
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %41, %struct.delayed_work* noundef %33) #16
  br label %cleanup

dev_set_name_failed:                              ; preds = %do.body55, %do.body84, %if.end49
  %rc.3 = phi i32 [ %call51, %if.end49 ], [ %call80, %do.body55 ], [ %call91, %do.body84 ]
  call void @put_device(%struct.device* noundef %11) #17
  %conv119 = sext i32 %rc.3 to i64
  %call120 = call fastcc i8* @ERR_PTR(i64 noundef %conv119) #16
  %42 = bitcast i8* %call120 to %struct.power_supply*
  br label %cleanup

cleanup:                                          ; preds = %dev_set_name_failed, %if.end94, %if.then24, %if.then19, %if.then8
  %retval.0 = phi %struct.power_supply* [ %8, %if.then19 ], [ %42, %dev_set_name_failed ], [ %9, %if.end94 ], [ %10, %if.then24 ], [ %4, %if.then8 ]
  ret %struct.power_supply* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.power_supply* @power_supply_register_no_ws(%struct.device* noundef %parent, %struct.power_supply_desc* noundef %desc, %struct.power_supply_config* noundef %cfg) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.power_supply* @__power_supply_register(%struct.device* noundef %parent, %struct.power_supply_desc* noundef %desc, %struct.power_supply_config* noundef %cfg, i1 noundef false) #16
  ret %struct.power_supply* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.power_supply* @devm_power_supply_register(%struct.device* noundef %parent, %struct.power_supply_desc* noundef %desc, %struct.power_supply_config* noundef %cfg) local_unnamed_addr #0 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_power_supply_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0)) #17
  %0 = bitcast i8* %call to %struct.power_supply**
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -12) #16
  %1 = bitcast i8* %call1 to %struct.power_supply*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.power_supply* @__power_supply_register(%struct.device* noundef %parent, %struct.power_supply_desc* noundef %desc, %struct.power_supply_config* noundef %cfg, i1 noundef true) #16
  %2 = bitcast %struct.power_supply* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %2) #16
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #17
  br label %cleanup

if.else:                                          ; preds = %if.end
  store %struct.power_supply* %call2, %struct.power_supply** %0, align 8
  call void @devres_add(%struct.device* noundef %parent, i8* noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else, %if.then
  %retval.0 = phi %struct.power_supply* [ %1, %if.then ], [ %call2, %if.else ], [ %call2, %if.then4 ]
  ret %struct.power_supply* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_power_supply_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %0 = bitcast i8* %res to %struct.power_supply**
  %1 = load %struct.power_supply*, %struct.power_supply** %0, align 8
  call void @power_supply_unregister(%struct.power_supply* noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.power_supply* @devm_power_supply_register_no_ws(%struct.device* noundef %parent, %struct.power_supply_desc* noundef %desc, %struct.power_supply_config* noundef %cfg) local_unnamed_addr #0 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_power_supply_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0)) #17
  %0 = bitcast i8* %call to %struct.power_supply**
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -12) #16
  %1 = bitcast i8* %call1 to %struct.power_supply*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.power_supply* @__power_supply_register(%struct.device* noundef %parent, %struct.power_supply_desc* noundef %desc, %struct.power_supply_config* noundef %cfg, i1 noundef false) #16
  %2 = bitcast %struct.power_supply* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %2) #16
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #17
  br label %cleanup

if.else:                                          ; preds = %if.end
  store %struct.power_supply* %call2, %struct.power_supply** %0, align 8
  call void @devres_add(%struct.device* noundef %parent, i8* noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else, %if.then
  %retval.0 = phi %struct.power_supply* [ %1, %if.then ], [ %call2, %if.else ], [ %call2, %if.then4 ]
  ret %struct.power_supply* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @power_supply_unregister(%struct.power_supply* noundef %psy) local_unnamed_addr #0 {
entry:
  %use_cnt = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 14
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %use_cnt) #17
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/power/supply/power_supply_core.c\22; .popsection; .long 14472b - 14470b; .short 1361; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %removing = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 13
  store i8 1, i8* %removing, align 2
  %changed_work = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 8
  %call15 = call i1 @cancel_work_sync(%struct.work_struct* noundef %changed_work) #17
  %deferred_register_work = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 9
  %call16 = call i1 @cancel_delayed_work_sync(%struct.delayed_work* noundef %deferred_register_work) #17
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 7
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)) #17
  call fastcc void @device_init_wakeup(%struct.device* noundef %dev, i1 noundef false) #16
  call void @device_unregister(%struct.device* noundef %dev) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cancel_work_sync(%struct.work_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cancel_delayed_work_sync(%struct.delayed_work* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(%struct.kobject* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @device_init_wakeup(%struct.device* nocapture noundef %dev, i1 noundef %val) unnamed_addr #9 {
entry:
  call fastcc void @device_set_wakeup_capable(%struct.device* noundef %dev, i1 noundef %val) #16
  call fastcc void @device_set_wakeup_enable(%struct.device* noundef %dev, i1 noundef %val) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @power_supply_get_drvdata(%struct.power_supply* nocapture noundef readonly %psy) local_unnamed_addr #3 {
entry:
  %drv_data = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 6
  %0 = load i8*, i8** %drv_data, align 8
  ret i8* %0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal void @power_supply_class_exit() #10 section ".exit.text" {
entry:
  %0 = load %struct.class*, %struct.class** @power_supply_class, align 8
  call void @class_destroy(%struct.class* noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(%struct.class* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @power_supply_class_init() #10 section ".init.text" {
entry:
  %call = call %struct.class* @__class_create(%struct.module* noundef null, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @power_supply_class_init.__key) #17
  store %struct.class* %call, %struct.class** @power_supply_class, align 8
  %0 = bitcast %struct.class* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #16
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #16
  %conv = trunc i64 %call2 to i32
  br label %return

if.end:                                           ; preds = %entry
  %dev_uevent = getelementptr inbounds %struct.class, %struct.class* %call, i64 0, i32 5
  store i32 (%struct.device*, %struct.kobj_uevent_env*)* @power_supply_uevent, i32 (%struct.device*, %struct.kobj_uevent_env*)** %dev_uevent, align 8
  call void @power_supply_init_attrs(%struct.device_type* noundef nonnull @power_supply_dev_type) #17
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #16
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #18, !srcloc !12
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #18, !srcloc !13
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #16
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !14

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #18, !srcloc !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #11 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #18, !srcloc !16
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #18, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #18, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__power_supply_is_supplied_by(%struct.power_supply* nocapture noundef readonly %supplier, %struct.power_supply* nocapture noundef readonly %supply) unnamed_addr #0 {
entry:
  %supplied_from = getelementptr inbounds %struct.power_supply, %struct.power_supply* %supply, i64 0, i32 3
  %0 = load i8**, i8*** %supplied_from, align 8
  %tobool.not = icmp eq i8** %0, null
  br i1 %tobool.not, label %land.lhs.true, label %if.then4

land.lhs.true:                                    ; preds = %entry
  %supplied_to = getelementptr inbounds %struct.power_supply, %struct.power_supply* %supplier, i64 0, i32 1
  %1 = load i8**, i8*** %supplied_to, align 8
  %tobool1.not = icmp eq i8** %1, null
  br i1 %tobool1.not, label %cleanup, label %if.else

if.then4:                                         ; preds = %entry
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %supplier, i64 0, i32 0
  %2 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %name = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %2, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %tobool5.not = icmp eq i8* %3, null
  br i1 %tobool5.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then4
  %num_supplies = getelementptr inbounds %struct.power_supply, %struct.power_supply* %supply, i64 0, i32 4
  %4 = load i64, i64* %num_supplies, align 8
  %cmp55.not = icmp eq i64 %4, 0
  br i1 %cmp55.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %5 = load i8*, i8** %0, align 8
  %call77 = call i32 @strcmp(i8* noundef nonnull %3, i8* noundef %5) #17
  %tobool12.not78 = icmp eq i32 %call77, 0
  br i1 %tobool12.not78, label %cleanup, label %for.cond

for.cond:                                         ; preds = %for.body.preheader, %for.cond.for.body_crit_edge
  %conv5779 = phi i64 [ %conv, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %inc = shl nsw i64 %conv5779, 32
  %sext = add i64 %inc, 4294967296
  %conv = ashr exact i64 %sext, 32
  %6 = load i64, i64* %num_supplies, align 8
  %cmp = icmp ugt i64 %6, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  %.pre = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %name10.phi.trans.insert = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %.pre, i64 0, i32 0
  %.pre67 = load i8*, i8** %name10.phi.trans.insert, align 8
  %.pre68 = load i8**, i8*** %supplied_from, align 8
  %arrayidx = getelementptr i8*, i8** %.pre68, i64 %conv
  %7 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* noundef %.pre67, i8* noundef %7) #17
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %cleanup, label %for.cond

if.else:                                          ; preds = %land.lhs.true
  %desc15 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %supply, i64 0, i32 0
  %8 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc15, align 8
  %name16 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %8, i64 0, i32 0
  %9 = load i8*, i8** %name16, align 8
  %tobool17.not = icmp eq i8* %9, null
  br i1 %tobool17.not, label %cleanup, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %if.else
  %num_supplicants = getelementptr inbounds %struct.power_supply, %struct.power_supply* %supplier, i64 0, i32 2
  %10 = load i64, i64* %num_supplicants, align 8
  %cmp2259.not = icmp eq i64 %10, 0
  br i1 %cmp2259.not, label %cleanup, label %for.body24.preheader

for.body24.preheader:                             ; preds = %for.cond20.preheader
  %11 = load i8*, i8** %1, align 8
  %call3081 = call i32 @strcmp(i8* noundef %11, i8* noundef nonnull %9) #17
  %tobool31.not82 = icmp eq i32 %call3081, 0
  br i1 %tobool31.not82, label %cleanup, label %for.cond20

for.cond20:                                       ; preds = %for.body24.preheader, %for.cond20.for.body24_crit_edge
  %conv216183 = phi i64 [ %conv21, %for.cond20.for.body24_crit_edge ], [ 0, %for.body24.preheader ]
  %inc35 = shl nsw i64 %conv216183, 32
  %sext72 = add i64 %inc35, 4294967296
  %conv21 = ashr exact i64 %sext72, 32
  %12 = load i64, i64* %num_supplicants, align 8
  %cmp22 = icmp ugt i64 %12, %conv21
  br i1 %cmp22, label %for.cond20.for.body24_crit_edge, label %cleanup

for.cond20.for.body24_crit_edge:                  ; preds = %for.cond20
  %.pre69 = load i8**, i8*** %supplied_to, align 8
  %.pre70 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc15, align 8
  %name29.phi.trans.insert = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %.pre70, i64 0, i32 0
  %.pre71 = load i8*, i8** %name29.phi.trans.insert, align 8
  %arrayidx27 = getelementptr i8*, i8** %.pre69, i64 %conv21
  %13 = load i8*, i8** %arrayidx27, align 8
  %call30 = call i32 @strcmp(i8* noundef %13, i8* noundef %.pre71) #17
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup, label %for.cond20

cleanup:                                          ; preds = %for.cond, %for.cond.for.body_crit_edge, %for.cond20, %for.cond20.for.body24_crit_edge, %for.body.preheader, %for.body24.preheader, %for.cond.preheader, %for.cond20.preheader, %if.else, %if.then4, %land.lhs.true
  %retval.0 = phi i1 [ false, %land.lhs.true ], [ false, %if.then4 ], [ false, %if.else ], [ false, %for.cond20.preheader ], [ false, %for.cond.preheader ], [ true, %for.body24.preheader ], [ true, %for.body.preheader ], [ %cmp22, %for.cond20.for.body24_crit_edge ], [ %cmp22, %for.cond20 ], [ %cmp, %for.cond.for.body_crit_edge ], [ %cmp, %for.cond ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node* noundef, i8* noundef, i32* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @devm_kmalloc_array(%struct.device* noundef %dev, i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end, !prof !14

if.end:                                           ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call6 = call noalias i8* @devm_kmalloc(%struct.device* noundef %dev, i64 noundef %2, i32 noundef 3520) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call6, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @devm_kmalloc(%struct.device* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 10), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #17
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @power_supply_dev_release(%struct.device* noundef %dev) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30, i32 1
  %0 = bitcast %struct.list_head** %add.ptr to i8*
  call void @kfree(i8* noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @dev_set_drvdata(%struct.device* nocapture noundef writeonly %dev, i8* noundef %data) unnamed_addr #13 {
entry:
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 8
  store i8* %data, i8** %driver_data, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #16
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %1 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %cmp = icmp eq %struct.fwnode_operations* %1, @of_fwnode_ops
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #14 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @power_supply_changed_work(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -17, i32 1, i32 1
  %0 = bitcast %struct.list_head** %add.ptr to i8*
  %1 = bitcast %struct.list_head** %add.ptr to %struct.power_supply*
  %changed_lock = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 81
  %rlock.i = bitcast %struct.list_head** %changed_lock to %struct.raw_spinlock*
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #16
  %changed = getelementptr inbounds %struct.power_supply, %struct.power_supply* %1, i64 0, i32 11
  %2 = load i8, i8* %changed, align 4, !range !9
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end44, label %if.end, !prof !14

if.end:                                           ; preds = %entry
  store i8 0, i8* %changed, align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call4) #17
  %3 = load %struct.class*, %struct.class** @power_supply_class, align 8
  %call14 = call i32 @class_for_each_device(%struct.class* noundef %3, %struct.device* noundef null, i8* noundef %0, i32 (%struct.device*, i8*)* noundef nonnull @__power_supply_changed_work) #17
  %call15 = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @power_supply_notifier, i64 noundef 0, i8* noundef %0) #17
  %dev = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 7
  %kobj = bitcast %struct.list_head** %dev to %struct.kobject*
  %call16 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 2) #17
  %call26 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #16
  br label %if.end44

if.end44:                                         ; preds = %if.end, %entry
  %flags.066 = phi i64 [ %call26, %if.end ], [ %call4, %entry ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %flags.066) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @power_supply_deferred_register_work(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -18, i32 1, i32 1
  %0 = bitcast %struct.list_head** %add.ptr to %struct.power_supply*
  %parent = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 15
  %1 = bitcast %struct.list_head** %parent to %struct.device**
  %2 = load %struct.device*, %struct.device** %1, align 8
  %tobool.not = icmp eq %struct.device* %2, null
  br i1 %tobool.not, label %if.end6, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %mutex22 = getelementptr inbounds %struct.device, %struct.device* %2, i64 0, i32 9
  %call23 = call i32 @mutex_trylock(%struct.mutex* noundef %mutex22) #17
  %tobool3.not24 = icmp eq i32 %call23, 0
  br i1 %tobool3.not24, label %while.body.lr.ph, label %if.end6

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %removing = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i64 0, i32 13
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %3 = load i8, i8* %removing, align 2, !range !9
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end, label %cleanup

if.end:                                           ; preds = %while.body
  call void @msleep(i32 noundef 10) #17
  %4 = load %struct.device*, %struct.device** %1, align 8
  %mutex = getelementptr inbounds %struct.device, %struct.device* %4, i64 0, i32 9
  %call = call i32 @mutex_trylock(%struct.mutex* noundef %mutex) #17
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %while.body, label %if.end6

if.end6:                                          ; preds = %if.end, %while.cond.preheader, %entry
  call void @power_supply_changed(%struct.power_supply* noundef %0) #16
  %5 = load %struct.device*, %struct.device** %1, align 8
  %tobool9.not = icmp eq %struct.device* %5, null
  br i1 %tobool9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.end6
  %mutex13 = getelementptr inbounds %struct.device, %struct.device* %5, i64 0, i32 9
  call void @mutex_unlock(%struct.mutex* noundef %mutex13) #17
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.end6, %if.then10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(%struct.timer_list* noundef, void (%struct.timer_list*)* noundef, i32 noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @power_supply_check_supplies(%struct.power_supply* noundef %psy) unnamed_addr #0 {
entry:
  %supplied_from = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 3
  %0 = load i8**, i8*** %supplied_from, align 8
  %tobool.not = icmp eq i8** %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %num_supplies = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 4
  %1 = load i64, i64* %num_supplies, align 8
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %if.end, label %cleanup30

if.end:                                           ; preds = %land.lhs.true, %entry
  %of_node = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 5
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool1.not = icmp eq %struct.device_node* %2, null
  br i1 %tobool1.not, label %cleanup30, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end
  %call61 = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef nonnull %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i32 noundef 0) #17
  %tobool5.not62 = icmp eq %struct.device_node* %call61, null
  br i1 %tobool5.not62, label %do.end, label %if.end7

if.end7:                                          ; preds = %do.body.preheader, %if.end7.do.body_crit_edge
  %call64 = phi %struct.device_node* [ %call, %if.end7.do.body_crit_edge ], [ %call61, %do.body.preheader ]
  %cnt.063 = phi i32 [ %inc, %if.end7.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %call8 = call fastcc i32 @power_supply_find_supply_from_node(%struct.device_node* noundef nonnull %call64) #16
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.do.body_crit_edge, label %cleanup30

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  %inc = add i32 %cnt.063, 1
  %.pre = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef %.pre, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i32 noundef %inc) #17
  %tobool5.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end7.do.body_crit_edge, %do.body.preheader
  %cnt.0.lcssa = phi i32 [ 0, %do.body.preheader ], [ %inc, %if.end7.do.body_crit_edge ]
  %cmp13 = icmp eq i32 %cnt.0.lcssa, 0
  br i1 %cmp13, label %cleanup30, label %if.end15

if.end15:                                         ; preds = %do.end
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %psy, i64 0, i32 7
  %call16 = call fastcc i8* @devm_kzalloc(%struct.device* noundef %dev) #16
  %3 = bitcast i8*** %supplied_from to i8**
  store i8* %call16, i8** %3, align 8
  %tobool19.not = icmp eq i8* %call16, null
  br i1 %tobool19.not, label %cleanup30, label %if.end21

if.end21:                                         ; preds = %if.end15
  %conv = sext i32 %cnt.0.lcssa to i64
  %call23 = call fastcc i8* @devm_kcalloc(%struct.device* noundef %dev, i64 noundef %conv) #16
  %4 = load i8**, i8*** %supplied_from, align 8
  store i8* %call23, i8** %4, align 8
  %5 = load i8**, i8*** %supplied_from, align 8
  %6 = load i8*, i8** %5, align 8
  %tobool26.not = icmp eq i8* %6, null
  br i1 %tobool26.not, label %cleanup30, label %if.end28

if.end28:                                         ; preds = %if.end21
  %call29 = call fastcc i32 @power_supply_populate_supplied_from(%struct.power_supply* noundef %psy) #16
  br label %cleanup30

cleanup30:                                        ; preds = %if.end7, %if.end21, %if.end15, %do.end, %if.end, %land.lhs.true, %if.end28
  %retval.2 = phi i32 [ %call29, %if.end28 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %do.end ], [ -12, %if.end15 ], [ -12, %if.end21 ], [ %call8, %if.end7 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork) unnamed_addr #0 {
entry:
  %call = call i1 @queue_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef 3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @__power_supply_changed_work(%struct.device* nocapture noundef readonly %dev, i8* nocapture noundef readonly %data) #0 {
entry:
  %0 = bitcast i8* %data to %struct.power_supply*
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #16
  %1 = bitcast i8* %call to %struct.power_supply*
  %call1 = call fastcc i1 @__power_supply_is_supplied_by(%struct.power_supply* noundef %0, %struct.power_supply* noundef %1) #16
  br i1 %call1, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %desc = bitcast i8* %call to %struct.power_supply_desc**
  %2 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %external_power_changed = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %2, i64 0, i32 9
  %external_power_changed2 = bitcast {}** %external_power_changed to void (%struct.power_supply*)**
  %3 = load void (%struct.power_supply*)*, void (%struct.power_supply*)** %external_power_changed2, align 8
  %tobool.not = icmp eq void (%struct.power_supply*)* %3, null
  br i1 %tobool.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.then
  call void %3(%struct.power_supply* noundef %1) #17
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then3, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @power_supply_find_supply_from_node(%struct.device_node* noundef %supply_node) unnamed_addr #0 {
entry:
  %0 = load %struct.class*, %struct.class** @power_supply_class, align 8
  %1 = bitcast %struct.device_node* %supply_node to i8*
  %call = call i32 @class_for_each_device(%struct.class* noundef %0, %struct.device* noundef null, i8* noundef %1, i32 (%struct.device*, i8*)* noundef nonnull @__power_supply_find_supply_from_node) #17
  %tobool.not = icmp eq i32 %call, 0
  %cmp = icmp eq i32 %call, 1
  %cond = select i1 %cmp, i32 0, i32 %call
  %cond4 = select i1 %tobool.not, i32 -517, i32 %cond
  ret i32 %cond4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @devm_kzalloc(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %call = call noalias i8* @devm_kmalloc(%struct.device* noundef %dev, i64 noundef 8, i32 noundef 3520) #17
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @power_supply_populate_supplied_from(%struct.power_supply* noundef %psy) unnamed_addr #0 {
entry:
  %0 = load %struct.class*, %struct.class** @power_supply_class, align 8
  %1 = bitcast %struct.power_supply* %psy to i8*
  %call = call i32 @class_for_each_device(%struct.class* noundef %0, %struct.device* noundef null, i8* noundef %1, i32 (%struct.device*, i8*)* noundef nonnull @__power_supply_populate_supplied_from) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @__power_supply_find_supply_from_node(%struct.device* nocapture noundef readonly %dev, i8* noundef readnone %data) #3 {
entry:
  %0 = bitcast i8* %data to %struct.device_node*
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #16
  %of_node = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %of_node to %struct.device_node**
  %2 = load %struct.device_node*, %struct.device_node** %1, align 8
  %cmp = icmp eq %struct.device_node* %2, %0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @__power_supply_populate_supplied_from(%struct.device* nocapture noundef readonly %dev, i8* nocapture noundef %data) #0 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #16
  %of_node = getelementptr inbounds i8, i8* %data, i64 40
  %0 = bitcast i8* %of_node to %struct.device_node**
  %of_node2 = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %of_node2 to %struct.device_node**
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %2 = load %struct.device_node*, %struct.device_node** %0, align 8
  %call1 = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i32 noundef %i.0) #17
  %tobool.not = icmp eq %struct.device_node* %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

if.end:                                           ; preds = %do.body
  %inc = add i32 %i.0, 1
  %3 = load %struct.device_node*, %struct.device_node** %1, align 8
  %cmp = icmp eq %struct.device_node* %call1, %3
  br i1 %cmp, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  %desc = bitcast i8* %call to %struct.power_supply_desc**
  %4 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8
  %name = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %4, i64 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %supplied_from = getelementptr inbounds i8, i8* %data, i64 24
  %6 = bitcast i8* %supplied_from to i8***
  %7 = load i8**, i8*** %6, align 8
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr i8*, i8** %7, i64 %idxprom
  store i8* %5, i8** %arrayidx, align 8
  %num_supplies = getelementptr inbounds i8, i8* %data, i64 32
  %8 = bitcast i8* %num_supplies to i64*
  %9 = load i64, i64* %8, align 8
  %inc4 = add i64 %9, 1
  store i64 %inc4, i64* %8, align 8
  br label %do.end

do.end:                                           ; preds = %do.body, %if.then3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !22
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @device_set_wakeup_capable(%struct.device* nocapture noundef %dev, i1 noundef %capable) unnamed_addr #9 {
entry:
  %can_wakeup = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 11, i32 1
  %0 = zext i1 %capable to i16
  %bf.load = load i16, i16* %can_wakeup, align 4
  %bf.clear = and i16 %bf.load, -2
  %bf.set = or i16 %bf.clear, %0
  store i16 %bf.set, i16* %can_wakeup, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @device_set_wakeup_enable(%struct.device* nocapture noundef %dev, i1 noundef %enable) unnamed_addr #9 {
entry:
  %should_wakeup = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 11, i32 4
  %0 = zext i1 %enable to i8
  %bf.load = load i8, i8* %should_wakeup, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %0
  store i8 %bf.set, i8* %should_wakeup, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.class* @__class_create(%struct.module* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_uevent(%struct.device* noundef, %struct.kobj_uevent_env* noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_init_attrs(%struct.device_type* noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { cold nobuiltin nounwind "no-builtins" }
attributes #20 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149492920}
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152571371}
!12 = !{i64 2149272091, i64 2149272138, i64 2149272144, i64 2149272181, i64 2149272199, i64 2149273510, i64 2149273558, i64 2149273606, i64 2149273669, i64 2149273718, i64 2149272277, i64 2149272302, i64 2149272328, i64 2149272334, i64 2149273176, i64 2149273216, i64 2149273234, i64 2149273266, i64 2149273294, i64 2149273348, i64 2149273368, i64 2149273465, i64 2149272357, i64 2149272371, i64 2149272377, i64 2149272427, i64 2149272473, i64 2149272506}
!13 = !{i64 2149274270, i64 2149274317, i64 2149274323, i64 2149274360, i64 2149274378, i64 2149275321, i64 2149275369, i64 2149275417, i64 2149275480, i64 2149275529, i64 2149274456, i64 2149274481, i64 2149274507, i64 2149274513, i64 2149274550, i64 2149274556, i64 2149274606, i64 2149274652, i64 2149274685}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2149266388, i64 2149266435, i64 2149266441, i64 2149266478, i64 2149266496, i64 2149267837, i64 2149267885, i64 2149267933, i64 2149267996, i64 2149268045, i64 2149266574, i64 2149266599, i64 2149266625, i64 2149266631, i64 2149267503, i64 2149267543, i64 2149267561, i64 2149267593, i64 2149267621, i64 2149267675, i64 2149267695, i64 2149267792, i64 2149266654, i64 2149266668, i64 2149266674, i64 2149266724, i64 2149266770, i64 2149266803}
!16 = !{i64 2147910985, i64 2147911018, i64 2147911071, i64 2147911130, i64 2147911164, i64 2147911219, i64 2147911248, i64 2147911268}
!17 = !{i64 2149518763}
!18 = !{i64 2149318284}
!19 = !{i64 2149282165, i64 2149282212, i64 2149282218, i64 2149282255, i64 2149282273, i64 2149283584, i64 2149283632, i64 2149283680, i64 2149283743, i64 2149283792, i64 2149282351, i64 2149282376, i64 2149282402, i64 2149282408, i64 2149283250, i64 2149283290, i64 2149283308, i64 2149283340, i64 2149283368, i64 2149283422, i64 2149283442, i64 2149283539, i64 2149282431, i64 2149282445, i64 2149282451, i64 2149282501, i64 2149282547, i64 2149282580}
!20 = !{i64 2147815123, i64 2147815639, i64 2147815669, i64 2147815696, i64 2147815730, i64 2147815760}
!21 = !{i64 2147824844, i64 2147825360, i64 2147825390, i64 2147825417, i64 2147825451, i64 2147825481}
!22 = !{i64 2147825696, i64 2147826344, i64 2147826374, i64 2147826406, i64 2147826440, i64 2147826476, i64 2147826501}
