; ModuleID = 'drivers/input/input.c'
source_filename = "drivers/input/input.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_input_core__312_2634_input_init4:\09\09\09"
module asm ".long\09input_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.61, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.62 }
%union.anon.62 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.36 }
%union.anon.36 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.37, %union.anon.38 }
%union.anon.37 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.38 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.33, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.18, %union.anon.19, i32 }
%struct.request_queue = type opaque
%union.anon.18 = type { %struct.list_head }
%union.anon.19 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.20 }
%struct.anon.20 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.24 }
%struct.anon.24 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.32, i32, [12 x i8] }
%union.anon.32 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.33 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.34, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.52 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.53, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.53 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.59 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.57, %struct.qspinlock }
%union.anon.57 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.59 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.17 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.17 = type { %struct.callback_head }
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
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.55 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.61 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.atomic_t = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.66, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.66 = type { %struct.kernfs_elem_dir }
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
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.ida = type { %struct.xarray }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.proc_dir_entry = type opaque
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.input_dev_poller = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.input_mt = type { i32, i32, i32, i32, i32, i32*, [0 x %struct.input_mt_slot] }
%struct.input_mt_slot = type { [14 x i32], i32, i32 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.input_value = type { i16, i16, i32 }
%struct.anon.71 = type { i16, i8 }

@__UNIQUE_ID_author211 = internal constant [51 x i8] c"input_core.author=Vojtech Pavlik <vojtech@suse.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [34 x i8] c"input_core.description=Input core\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [41 x i8] c"input_core.file=drivers/input/input-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [23 x i8] c"input_core.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [31 x i8] c"%s: unable to allocate memory\0A\00", align 1
@__func__.input_alloc_absinfo = private unnamed_addr constant [20 x i8] c"input_alloc_absinfo\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: got too big old keycode %#x\0A\00", align 1
@__func__.input_set_keycode = private unnamed_addr constant [18 x i8] c"input_set_keycode\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@input_class = dso_local global %struct.class { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct.module* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.kobject* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*)* @input_devnode, void (%struct.class*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, %struct.kobj_ns_type_operations* null, i8* (%struct.device*)* null, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)* null, %struct.dev_pm_ops* null, %struct.subsys_private* null }, align 8
@input_allocate_device.input_no = internal global %struct.atomic_t { i32 -1 }, align 4
@input_dev_type = internal constant %struct.device_type { i8* null, %struct.attribute_group** getelementptr inbounds ([5 x %struct.attribute_group*], [5 x %struct.attribute_group*]* @input_dev_attr_groups, i32 0, i32 0), i32 (%struct.device*, %struct.kobj_uevent_env*)* @input_dev_uevent, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* null, void (%struct.device*)* @input_dev_release, %struct.dev_pm_ops* null }, align 8
@input_allocate_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&dev->mutex\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"input%lu\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"devm_input_device_release\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\013input: %s: unknown type %u (code %u)\0A\00", align 1
@__func__.input_set_capability = private unnamed_addr constant [21 x i8] c"input_set_capability\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Absolute device without dev->absinfo, refusing to register\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"devm_input_device_unregister\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"\016input: %s as %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Unspecified device\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@input_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @input_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @input_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@input_dev_list = internal global %struct.list_head { %struct.list_head* @input_dev_list, %struct.list_head* @input_dev_list }, align 8
@input_handler_list = internal global %struct.list_head { %struct.list_head* @input_handler_list, %struct.list_head* @input_handler_list }, align 8
@input_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, i8* null } }, align 8
@__UNIQUE_ID___addressable_input_init313 = internal global i8* bitcast (i32 ()* @input_init to i8*), section ".discard.addressable", align 8
@__exitcall_input_exit = internal global void ()* @input_exit, section ".exitcall.exit", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.12 = private unnamed_addr constant [9 x i8] c"input/%s\00", align 1
@input_dev_attr_groups = internal global [5 x %struct.attribute_group*] [%struct.attribute_group* @input_dev_attr_group, %struct.attribute_group* @input_dev_id_attr_group, %struct.attribute_group* @input_dev_caps_attr_group, %struct.attribute_group* @input_poller_attribute_group, %struct.attribute_group* null], align 8
@input_dev_attr_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([7 x %struct.attribute*], [7 x %struct.attribute*]* @input_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@input_dev_id_attr_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([5 x %struct.attribute*], [5 x %struct.attribute*]* @input_dev_id_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@input_dev_caps_attr_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([10 x %struct.attribute*], [10 x %struct.attribute*]* @input_dev_caps_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@input_poller_attribute_group = external dso_local global %struct.attribute_group, align 8
@input_dev_attrs = internal global [7 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_name, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_phys, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_uniq, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_modalias, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_properties, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_inhibited, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_name, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_phys = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_phys, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_uniq = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_uniq, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_modalias, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_properties = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_properties, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_inhibited = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @inhibited_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @inhibited_store }, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"uniq\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"input:b%04Xv%04Xp%04Xe%04X-\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%X,\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"inhibited\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@input_dev_id_attrs = internal global [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_bustype, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_vendor, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_product, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_version, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_bustype = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_id_bustype, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_vendor = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_id_vendor, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_product = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_id_product, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_version = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_id_version, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.30 = private unnamed_addr constant [8 x i8] c"bustype\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%04x\0A\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"capabilities\00", align 1
@input_dev_caps_attrs = internal global [10 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_ev, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_key, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_rel, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_abs, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_msc, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_led, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_snd, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_ff, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_sw, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_ev = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_cap_ev, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_key = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_cap_key, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_rel = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_cap_rel, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_abs = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_cap_abs, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_msc = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_cap_msc, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_led = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_cap_led, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_snd = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_cap_snd, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_ff = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_cap_ff, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_sw = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @input_dev_show_cap_sw, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.36 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"rel\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"msc\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"led\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"snd\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"PRODUCT=%x/%x/%x/%x\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"NAME=\22%s\22\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"PHYS=\22%s\22\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"UNIQ=\22%s\22\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"PROP=\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"EV=\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"KEY=\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"REL=\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"ABS=\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"MSC=\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"LED=\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"SND=\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"FF=\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"SW=\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1
@.str.61 = private unnamed_addr constant [62 x i8] c"\013input: failed to attach handler %s to device %s, error: %d\0A\00", align 1
@input_devices_state = internal unnamed_addr global i32 0, align 4
@input_devices_poll_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @input_devices_poll_wait to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @input_devices_poll_wait to i8*), i64 8) to %struct.list_head*) } }, align 8
@.str.62 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@proc_bus_input_dir = internal unnamed_addr global %struct.proc_dir_entry* null, align 8
@.str.63 = private unnamed_addr constant [9 x i8] c"handlers\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"bus/input\00", align 1
@input_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.65 = private unnamed_addr constant [45 x i8] c"\013input: unable to register input_dev class\0A\00", align 1
@.str.66 = private unnamed_addr constant [42 x i8] c"\013input: unable to register char major %d\00", align 1
@input_devices_proc_ops = internal constant %struct.proc_ops { i32 0, i32 (%struct.inode*, %struct.file*)* @input_proc_devices_open, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i32 (%struct.inode*, %struct.file*)* @seq_release, i32 (%struct.file*, %struct.poll_table_struct*)* @input_proc_devices_poll, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 (%struct.file*, i64, i64, i64, i64)* null }, align 8
@input_handlers_proc_ops = internal constant %struct.proc_ops { i32 0, i32 (%struct.inode*, %struct.file*)* @input_proc_handlers_open, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i32 (%struct.inode*, %struct.file*)* @seq_release, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 (%struct.file*, i64, i64, i64, i64)* null }, align 8
@input_devices_seq_ops = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @input_devices_seq_start, void (%struct.seq_file*, i8*)* @input_seq_stop, i8* (%struct.seq_file*, i8*, i64*)* @input_devices_seq_next, i32 (%struct.seq_file*, i8*)* @input_devices_seq_show }, align 8
@.str.67 = private unnamed_addr constant [51 x i8] c"I: Bus=%04x Vendor=%04x Product=%04x Version=%04x\0A\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"N: Name=\22%s\22\0A\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"P: Phys=%s\0A\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"S: Sysfs=%s\0A\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"U: Uniq=%s\0A\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"H: Handlers=\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"PROP\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"EV\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"REL\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"ABS\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"MSC\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"LED\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"SND\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"FF\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"SW\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"B: %s=\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@input_handlers_seq_ops = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @input_handlers_seq_start, void (%struct.seq_file*, i8*)* @input_seq_stop, i8* (%struct.seq_file*, i8*, i64*)* @input_handlers_seq_next, i32 (%struct.seq_file*, i8*)* @input_handlers_seq_show }, align 8
@.str.86 = private unnamed_addr constant [21 x i8] c"N: Number=%u Name=%s\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c" (filter)\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c" Minor=%d\00", align 1
@llvm.compiler.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_input_init313 to i8*), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_author211, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_description212, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_file213, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_license214, i32 0, i32 0), i8* bitcast (void ()** @__exitcall_input_exit to i8*), i8* bitcast (void ()* @input_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_event(%struct.input_dev* noundef %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %call = call fastcc i32 @is_event_supported(i32 noundef %type, i64* noundef %arraydecay, i32 noundef 31) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body1

do.body1:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 36, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #14
  call fastcc void @input_handle_event(%struct.input_dev* noundef %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #14
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #15
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @is_event_supported(i32 noundef %code, i64* noundef %bm, i32 noundef %max) unnamed_addr #2 {
entry:
  %cmp.not = icmp ugt i32 %code, %max
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %div.i = lshr i32 %code, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %bm, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %code, 63
  %sh_prom.i = zext i32 %and.i to i64
  %1 = shl nuw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool = icmp ne i64 %2, 0
  %phi.cast = zext i1 %tobool to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !7
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_handle_event(%struct.input_dev* noundef %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) unnamed_addr #0 {
entry:
  %value.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  %inhibited = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 48
  %0 = load i8, i8* %inhibited, align 8, !range !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @input_get_disposition(%struct.input_dev* noundef %dev, i32 noundef %type, i32 noundef %code, i32* noundef nonnull %value.addr) #14
  %cmp = icmp ne i32 %call, 0
  %cmp1 = icmp ne i32 %type, 0
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %1 = load i32, i32* %value.addr, align 4
  call void @add_input_randomness(i32 noundef %type, i32 noundef %code, i32 noundef %1) #15
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %and = and i32 %call, 2
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end10, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end3
  %event = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 34
  %2 = load i32 (%struct.input_dev*, i32, i32, i32)*, i32 (%struct.input_dev*, i32, i32, i32)** %event, align 8
  %tobool6.not = icmp eq i32 (%struct.input_dev*, i32, i32, i32)* %2, null
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %land.lhs.true5
  %3 = load i32, i32* %value.addr, align 4
  %call9 = call i32 %2(%struct.input_dev* noundef %dev, i32 noundef %type, i32 noundef %code, i32 noundef %3) #15
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true5, %if.end3
  %vals = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 45
  %4 = load %struct.input_value*, %struct.input_value** %vals, align 8
  %tobool11.not = icmp eq %struct.input_value* %4, null
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end10
  %and14 = and i32 %call, 1
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end34, label %if.then16

if.then16:                                        ; preds = %if.end13
  %and17 = and i32 %call, 4
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end24, label %if.then19

if.then19:                                        ; preds = %if.then16
  %num_vals = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 43
  %5 = load i32, i32* %num_vals, align 8
  %inc = add i32 %5, 1
  store i32 %inc, i32* %num_vals, align 8
  %idxprom = zext i32 %5 to i64
  %type21 = getelementptr %struct.input_value, %struct.input_value* %4, i64 %idxprom, i32 0
  store i16 3, i16* %type21, align 4
  %code22 = getelementptr %struct.input_value, %struct.input_value* %4, i64 %idxprom, i32 1
  store i16 47, i16* %code22, align 2
  %mt = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 25
  %6 = load %struct.input_mt*, %struct.input_mt** %mt, align 8
  %slot = getelementptr inbounds %struct.input_mt, %struct.input_mt* %6, i64 0, i32 2
  %7 = load i32, i32* %slot, align 8
  %value23 = getelementptr %struct.input_value, %struct.input_value* %4, i64 %idxprom, i32 2
  store i32 %7, i32* %value23, align 4
  %.pre = load %struct.input_value*, %struct.input_value** %vals, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then16
  %8 = phi %struct.input_value* [ %.pre, %if.then19 ], [ %4, %if.then16 ]
  %num_vals26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 43
  %9 = load i32, i32* %num_vals26, align 8
  %inc27 = add i32 %9, 1
  store i32 %inc27, i32* %num_vals26, align 8
  %idxprom28 = zext i32 %9 to i64
  %conv = trunc i32 %type to i16
  %type30 = getelementptr %struct.input_value, %struct.input_value* %8, i64 %idxprom28, i32 0
  store i16 %conv, i16* %type30, align 4
  %conv31 = trunc i32 %code to i16
  %code32 = getelementptr %struct.input_value, %struct.input_value* %8, i64 %idxprom28, i32 1
  store i16 %conv31, i16* %code32, align 2
  %10 = load i32, i32* %value.addr, align 4
  %value33 = getelementptr %struct.input_value, %struct.input_value* %8, i64 %idxprom28, i32 2
  store i32 %10, i32* %value33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end24, %if.end13
  %and35 = and i32 %call, 8
  %tobool36.not = icmp eq i32 %and35, 0
  %num_vals48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 43
  %11 = load i32, i32* %num_vals48, align 8
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end34
  %cmp39 = icmp ugt i32 %11, 1
  br i1 %cmp39, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.then37
  %12 = load %struct.input_value*, %struct.input_value** %vals, align 8
  call fastcc void @input_pass_values(%struct.input_dev* noundef %dev, %struct.input_value* noundef %12, i32 noundef %11) #14
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.then37
  store i32 0, i32* %num_vals48, align 8
  %arrayidx47 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 47, i64 1
  store i64 0, i64* %arrayidx47, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end34
  %max_vals = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 44
  %13 = load i32, i32* %max_vals, align 4
  %sub = add i32 %13, -2
  %cmp49.not = icmp ult i32 %11, %sub
  br i1 %cmp49.not, label %cleanup, label %if.then51

if.then51:                                        ; preds = %if.else
  %14 = load %struct.input_value*, %struct.input_value** %vals, align 8
  %inc54 = add i32 %11, 1
  store i32 %inc54, i32* %num_vals48, align 8
  %idxprom55 = zext i32 %11 to i64
  %arrayidx56 = getelementptr %struct.input_value, %struct.input_value* %14, i64 %idxprom55
  %15 = bitcast %struct.input_value* %arrayidx56 to i64*
  store i64 4294967296, i64* %15, align 4
  %16 = load %struct.input_value*, %struct.input_value** %vals, align 8
  %17 = load i32, i32* %num_vals48, align 8
  call fastcc void @input_pass_values(%struct.input_dev* noundef %dev, %struct.input_value* noundef %16, i32 noundef %17) #14
  store i32 0, i32* %num_vals48, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then51, %if.else, %if.end10, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_inject_event(%struct.input_handle* noundef readonly %handle, i32 noundef %type, i32 noundef %code, i32 noundef %value) local_unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %0 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 5, i64 0
  %call = call fastcc i32 @is_event_supported(i32 noundef %type, i64* noundef %arraydecay, i32 noundef 31) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end21, label %do.body2

do.body2:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 36, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #14
  call fastcc void @__rcu_read_lock() #15
  %grab11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 35
  %1 = load volatile %struct.input_handle*, %struct.input_handle** %grab11, align 8
  %tobool16.not = icmp eq %struct.input_handle* %1, null
  %cmp17 = icmp eq %struct.input_handle* %1, %handle
  %or.cond = or i1 %tobool16.not, %cmp17
  br i1 %or.cond, label %if.then19, label %if.end

if.then19:                                        ; preds = %do.body2
  call fastcc void @input_handle_event(%struct.input_dev* noundef %0, i32 noundef %type, i32 noundef %code, i32 noundef %value) #14
  br label %if.end

if.end:                                           ; preds = %do.body2, %if.then19
  call fastcc void @rcu_read_unlock() #14
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call4) #15
  br label %if.end21

if.end21:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_alloc_absinfo(%struct.input_dev* noundef %dev) local_unnamed_addr #0 {
entry:
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %0 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8
  %tobool.not = icmp eq %struct.input_absinfo* %0, null
  br i1 %tobool.not, label %if.end, label %if.end8

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @kcalloc(i64 noundef 64, i64 noundef 24) #14
  %1 = bitcast %struct.input_absinfo** %absinfo to i8**
  store i8* %call, i8** %1, align 8
  %tobool3.not = icmp eq i8* %call, null
  br i1 %tobool3.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40
  %parent = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40, i32 1
  %2 = load %struct.device*, %struct.device** %parent, align 8
  %tobool6.not = icmp eq %struct.device* %2, null
  %cond = select i1 %tobool6.not, %struct.device* %dev5, %struct.device* %2
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %cond, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.input_alloc_absinfo, i64 0, i64 0)) #17
  br label %if.end8

if.end8:                                          ; preds = %entry, %do.end, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n, i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size) #14
  ret i8* %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_set_abs_params(%struct.input_dev* noundef %dev, i32 noundef %axis, i32 noundef %min, i32 noundef %max, i32 noundef %fuzz, i32 noundef %flat) local_unnamed_addr #0 {
entry:
  call void @input_alloc_absinfo(%struct.input_dev* noundef %dev) #14
  %absinfo1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %0 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo1, align 8
  %tobool.not = icmp eq %struct.input_absinfo* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = zext i32 %axis to i64
  %minimum = getelementptr %struct.input_absinfo, %struct.input_absinfo* %0, i64 %idxprom, i32 1
  store i32 %min, i32* %minimum, align 4
  %maximum = getelementptr %struct.input_absinfo, %struct.input_absinfo* %0, i64 %idxprom, i32 2
  store i32 %max, i32* %maximum, align 4
  %fuzz3 = getelementptr %struct.input_absinfo, %struct.input_absinfo* %0, i64 %idxprom, i32 3
  store i32 %fuzz, i32* %fuzz3, align 4
  %flat4 = getelementptr %struct.input_absinfo, %struct.input_absinfo* %0, i64 %idxprom, i32 4
  store i32 %flat, i32* %flat4, align 4
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %1 = load i64, i64* %arraydecay, align 8
  %or.i = or i64 %1, 8
  store i64 %or.i, i64* %arraydecay, align 8
  %rem.i = and i32 %axis, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %axis, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 8, i64 %idx.ext.i
  %2 = load i64, i64* %add.ptr.i, align 8
  %or.i15 = or i64 %2, %shl.i
  store i64 %or.i15, i64* %add.ptr.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_grab_device(%struct.input_handle* noundef %handle) local_unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %0 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8
  %mutex = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 37
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %mutex) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %grab = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 35
  %1 = load %struct.input_handle*, %struct.input_handle** %grab, align 8
  %tobool3.not = icmp eq %struct.input_handle* %1, null
  br i1 %tobool3.not, label %do.body, label %out

do.body:                                          ; preds = %if.end
  %2 = ptrtoint %struct.input_handle* %handle to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.input_handle** elementtype(%struct.input_handle*) %grab, i64 %2) #16, !srcloc !9
  br label %out

out:                                              ; preds = %if.end, %do.body
  %retval2.0 = phi i32 [ 0, %do.body ], [ -16, %if.end ]
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %retval2.0, %out ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_release_device(%struct.input_handle* noundef %handle) local_unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %0 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8
  %mutex = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 37
  call void @mutex_lock(%struct.mutex* noundef %mutex) #15
  call fastcc void @__input_release_device(%struct.input_handle* noundef %handle) #14
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__input_release_device(%struct.input_handle* noundef readonly %handle) unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %0 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8
  %grab = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 35
  %1 = load %struct.input_handle*, %struct.input_handle** %grab, align 8
  %cmp = icmp eq %struct.input_handle* %1, %handle
  br i1 %cmp, label %do.body9, label %if.end43

do.body9:                                         ; preds = %entry
  store volatile %struct.input_handle* null, %struct.input_handle** %grab, align 8
  call void @synchronize_rcu() #15
  %h_list = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 41
  %2 = bitcast %struct.list_head* %h_list to i8**
  %.pn65 = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn65 to %struct.list_head*
  %cmp29.not68 = icmp eq %struct.list_head* %h_list, %3
  br i1 %cmp29.not68, label %if.end43, label %for.body

for.body:                                         ; preds = %do.body9, %for.inc
  %.pn69 = phi i8* [ %.pn, %for.inc ], [ %.pn65, %do.body9 ]
  %handle.addr.071.in = getelementptr i8, i8* %.pn69, i64 -40
  %handle.addr.071 = bitcast i8* %handle.addr.071.in to %struct.input_handle*
  %open = getelementptr i8, i8* %.pn69, i64 -32
  %4 = bitcast i8* %open to i32*
  %5 = load i32, i32* %4, align 8
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %handler = getelementptr i8, i8* %.pn69, i64 -8
  %6 = bitcast i8* %handler to %struct.input_handler**
  %7 = load %struct.input_handler*, %struct.input_handler** %6, align 8
  %start = getelementptr inbounds %struct.input_handler, %struct.input_handler* %7, i64 0, i32 7
  %8 = load void (%struct.input_handle*)*, void (%struct.input_handle*)** %start, align 8
  %tobool30.not = icmp eq void (%struct.input_handle*)* %8, null
  br i1 %tobool30.not, label %for.inc, label %if.then31

if.then31:                                        ; preds = %land.lhs.true
  call void %8(%struct.input_handle* noundef %handle.addr.071) #15
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then31
  %9 = bitcast i8* %.pn69 to i8**
  %.pn = load i8*, i8** %9, align 8
  %10 = bitcast i8* %.pn to %struct.list_head*
  %cmp29.not = icmp eq %struct.list_head* %h_list, %10
  br i1 %cmp29.not, label %if.end43, label %for.body

if.end43:                                         ; preds = %for.inc, %do.body9, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_open_device(%struct.input_handle* nocapture noundef %handle) local_unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %0 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8
  %mutex = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 37
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %mutex) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %going_away = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 39
  %1 = load i8, i8* %going_away, align 4, !range !8
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %if.end5, label %out

if.end5:                                          ; preds = %if.end
  %open = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 1
  %2 = load i32, i32* %open, align 8
  %inc = add i32 %2, 1
  store i32 %inc, i32* %open, align 8
  %users = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 38
  %3 = load i32, i32* %users, align 8
  %inc6 = add i32 %3, 1
  store i32 %inc6, i32* %users, align 8
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %out

lor.lhs.false:                                    ; preds = %if.end5
  %inhibited = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 48
  %4 = load i8, i8* %inhibited, align 8, !range !8
  %tobool8.not = icmp eq i8 %4, 0
  br i1 %tobool8.not, label %if.end10, label %out

if.end10:                                         ; preds = %lor.lhs.false
  %open11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 31
  %5 = load i32 (%struct.input_dev*)*, i32 (%struct.input_dev*)** %open11, align 8
  %tobool12.not = icmp eq i32 (%struct.input_dev*)* %5, null
  br i1 %tobool12.not, label %if.end22, label %if.then13

if.then13:                                        ; preds = %if.end10
  %call15 = call i32 %5(%struct.input_dev* noundef %0) #15
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %if.then17

if.then17:                                        ; preds = %if.then13
  %6 = load i32, i32* %users, align 8
  %dec = add i32 %6, -1
  store i32 %dec, i32* %users, align 8
  %7 = load i32, i32* %open, align 8
  %dec20 = add i32 %7, -1
  store i32 %dec20, i32* %open, align 8
  call void @synchronize_rcu() #15
  br label %out

if.end22:                                         ; preds = %if.then13, %if.end10
  %poller = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 21
  %8 = load %struct.input_dev_poller*, %struct.input_dev_poller** %poller, align 8
  %tobool23.not = icmp eq %struct.input_dev_poller* %8, null
  br i1 %tobool23.not, label %out, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void @input_dev_poller_start(%struct.input_dev_poller* noundef nonnull %8) #15
  br label %out

out:                                              ; preds = %if.end, %if.end22, %if.then24, %if.end5, %lor.lhs.false, %if.then17
  %retval2.1 = phi i32 [ 0, %if.end5 ], [ 0, %lor.lhs.false ], [ %call15, %if.then17 ], [ 0, %if.then24 ], [ 0, %if.end22 ], [ -19, %if.end ]
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %retval2.1, %out ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_dev_poller_start(%struct.input_dev_poller* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_flush_device(%struct.input_handle* nocapture noundef readonly %handle, %struct.file* noundef %file) local_unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %0 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8
  %mutex = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 37
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %mutex) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %flush = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 33
  %1 = load i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, %struct.file*)** %flush, align 8
  %tobool3.not = icmp eq i32 (%struct.input_dev*, %struct.file*)* %1, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %call6 = call i32 %1(%struct.input_dev* noundef %0, %struct.file* noundef %file) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %retval2.0 = phi i32 [ %call6, %if.then4 ], [ 0, %if.end ]
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7
  %retval.0 = phi i32 [ %retval2.0, %if.end7 ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_close_device(%struct.input_handle* noundef %handle) local_unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %0 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8
  %mutex = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 37
  call void @mutex_lock(%struct.mutex* noundef %mutex) #15
  call fastcc void @__input_release_device(%struct.input_handle* noundef %handle) #14
  %inhibited = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 48
  %1 = load i8, i8* %inhibited, align 8, !range !8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %entry
  %users = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 38
  %2 = load i32, i32* %users, align 8
  %dec = add i32 %2, -1
  store i32 %dec, i32* %users, align 8
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.then, label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %poller = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 21
  %3 = load %struct.input_dev_poller*, %struct.input_dev_poller** %poller, align 8
  %tobool3.not = icmp eq %struct.input_dev_poller* %3, null
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @input_dev_poller_stop(%struct.input_dev_poller* noundef nonnull %3) #15
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %close = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 32
  %4 = load void (%struct.input_dev*)*, void (%struct.input_dev*)** %close, align 8
  %tobool6.not = icmp eq void (%struct.input_dev*)* %4, null
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  call void %4(%struct.input_dev* noundef %0) #15
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then7, %land.lhs.true, %entry
  %open = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 1
  %5 = load i32, i32* %open, align 8
  %dec11 = add i32 %5, -1
  store i32 %dec11, i32* %open, align 8
  %tobool12.not = icmp eq i32 %dec11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @synchronize_rcu() #15
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_dev_poller_stop(%struct.input_dev_poller* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @input_scancode_to_scalar(%struct.input_keymap_entry* nocapture noundef readonly %ke, i32* nocapture noundef writeonly %scancode) local_unnamed_addr #6 {
entry:
  %len = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 1
  %0 = load i8, i8* %len, align 1
  switch i8 %0, label %return [
    i8 1, label %sw.bb
    i8 2, label %sw.bb3
    i8 4, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 4, i64 0
  %1 = load i8, i8* %arraydecay, align 4
  %conv2 = zext i8 %1 to i32
  br label %return.sink.split

sw.bb3:                                           ; preds = %entry
  %arraydecay5 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 4, i64 0
  %2 = bitcast i8* %arraydecay5 to i16*
  %3 = load i16, i16* %2, align 4
  %conv6 = zext i16 %3 to i32
  br label %return.sink.split

sw.bb7:                                           ; preds = %entry
  %arraydecay9 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 4, i64 0
  %4 = bitcast i8* %arraydecay9 to i32*
  %5 = load i32, i32* %4, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb7, %sw.bb3, %sw.bb
  %conv2.sink = phi i32 [ %conv2, %sw.bb ], [ %conv6, %sw.bb3 ], [ %5, %sw.bb7 ]
  store i32 %conv2.sink, i32* %scancode, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_get_keycode(%struct.input_dev* noundef %dev, %struct.input_keymap_entry* noundef %ke) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 36, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #14
  %getkeycode = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 19
  %0 = load i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)** %getkeycode, align 8
  %call6 = call i32 %0(%struct.input_dev* noundef %dev, %struct.input_keymap_entry* noundef %ke) #15
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #15
  ret i32 %call6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_set_keycode(%struct.input_dev* noundef %dev, %struct.input_keymap_entry* noundef %ke) local_unnamed_addr #0 {
entry:
  %old_keycode = alloca i32, align 4
  %vals = alloca [2 x %struct.input_value], align 4
  %0 = bitcast i32* %old_keycode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  store i32 0, i32* %old_keycode, align 4, !annotation !10
  %keycode = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 3
  %1 = load i32, i32* %keycode, align 4
  %cmp = icmp ugt i32 %1, 767
  br i1 %cmp, label %cleanup, label %do.body2

do.body2:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 36, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #14
  %setkeycode = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 18
  %2 = load i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)** %setkeycode, align 8
  %call7 = call i32 %2(%struct.input_dev* noundef %dev, %struct.input_keymap_entry* noundef %ke, i32* noundef nonnull %old_keycode) #15
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %out

if.end9:                                          ; preds = %do.body2
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 6, i64 0
  %3 = load i64, i64* %arraydecay, align 8
  %and.i = and i64 %3, -2
  store i64 %and.i, i64* %arraydecay, align 8
  %4 = load i32, i32* %old_keycode, align 4
  %cmp10 = icmp ugt i32 %4, 767
  br i1 %cmp10, label %do.end15, label %if.else

do.end15:                                         ; preds = %if.end9
  %dev16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40
  %parent = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40, i32 1
  %5 = load %struct.device*, %struct.device** %parent, align 8
  %tobool17.not = icmp eq %struct.device* %5, null
  %cond = select i1 %tobool17.not, %struct.device* %dev16, %struct.device* %5
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %cond, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.input_set_keycode, i64 0, i64 0), i32 noundef %4) #17
  br label %out

if.else:                                          ; preds = %if.end9
  %arraydecay19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %6 = load volatile i64, i64* %arraydecay19, align 8
  %7 = and i64 %6, 2
  %tobool21.not = icmp eq i64 %7, 0
  br i1 %tobool21.not, label %out, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %call24 = call fastcc i32 @is_event_supported(i32 noundef %4, i64* noundef %arraydecay, i32 noundef 767) #14
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %out

land.lhs.true26:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* %old_keycode, align 4
  %rem.i = and i32 %8, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %8, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 27, i64 %idx.ext.i
  %9 = load i64, i64* %add.ptr.i, align 8
  %neg.i = xor i64 %shl.i, -1
  %and.i52 = and i64 %9, %neg.i
  store i64 %and.i52, i64* %add.ptr.i, align 8
  %and1.i = and i64 %shl.i, %9
  %cmp.i.not = icmp eq i64 %and1.i, 0
  br i1 %cmp.i.not, label %out, label %if.then30

if.then30:                                        ; preds = %land.lhs.true26
  %10 = bitcast [2 x %struct.input_value]* %vals to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #16
  %arrayinit.begin = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %vals, i64 0, i64 0
  %type = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %vals, i64 0, i64 0, i32 0
  store i16 1, i16* %type, align 4
  %code = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %vals, i64 0, i64 0, i32 1
  %conv31 = trunc i32 %8 to i16
  store i16 %conv31, i16* %code, align 2
  %value = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %vals, i64 0, i64 0, i32 2
  store i32 0, i32* %value, align 4
  %arrayinit.element = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %vals, i64 0, i64 1
  %11 = bitcast %struct.input_value* %arrayinit.element to i64*
  store i64 4294967296, i64* %11, align 4
  call fastcc void @input_pass_values(%struct.input_dev* noundef %dev, %struct.input_value* noundef nonnull %arrayinit.begin, i32 noundef 2) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #16
  br label %out

out:                                              ; preds = %do.end15, %if.then30, %land.lhs.true26, %land.lhs.true, %if.else, %do.body2
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call4) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %call7, %out ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_pass_values(%struct.input_dev* noundef %dev, %struct.input_value* noundef %vals, i32 noundef %count) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #15
  %grab = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 35
  %0 = load volatile %struct.input_handle*, %struct.input_handle** %grab, align 8
  %tobool5.not = icmp eq %struct.input_handle* %0, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %call = call fastcc i32 @input_to_handler(%struct.input_handle* noundef nonnull %0, %struct.input_value* noundef %vals, i32 noundef %count) #14
  br label %if.end35

if.else:                                          ; preds = %if.end
  %h_list = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 41
  %.pn.in95 = getelementptr inbounds %struct.list_head, %struct.list_head* %h_list, i64 0, i32 0
  %.pn96 = load volatile %struct.list_head*, %struct.list_head** %.pn.in95, align 8
  %handle.0.in97 = getelementptr %struct.list_head, %struct.list_head* %.pn96, i64 -3, i32 1
  %d_node99 = getelementptr inbounds %struct.list_head*, %struct.list_head** %handle.0.in97, i64 5
  %1 = bitcast %struct.list_head** %d_node99 to %struct.list_head*
  %cmp.not100 = icmp eq %struct.list_head* %h_list, %1
  br i1 %cmp.not100, label %if.end35, label %for.body

for.body:                                         ; preds = %if.else, %for.inc
  %2 = phi %struct.list_head* [ %5, %for.inc ], [ %1, %if.else ]
  %handle.0.in102 = phi %struct.list_head** [ %handle.0.in, %for.inc ], [ %handle.0.in97, %if.else ]
  %count.addr.0101 = phi i32 [ %count.addr.1, %for.inc ], [ %count, %if.else ]
  %open = getelementptr inbounds %struct.list_head*, %struct.list_head** %handle.0.in102, i64 1
  %3 = bitcast %struct.list_head** %open to i32*
  %4 = load i32, i32* %3, align 8
  %tobool16.not = icmp eq i32 %4, 0
  br i1 %tobool16.not, label %for.inc, label %if.then17

if.then17:                                        ; preds = %for.body
  %handle.0103 = bitcast %struct.list_head** %handle.0.in102 to %struct.input_handle*
  %call18 = call fastcc i32 @input_to_handler(%struct.input_handle* noundef %handle.0103, %struct.input_value* noundef %vals, i32 noundef %count.addr.0101) #14
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end35, label %for.inc

for.inc:                                          ; preds = %for.body, %if.then17
  %count.addr.1 = phi i32 [ %call18, %if.then17 ], [ %count.addr.0101, %for.body ]
  %.pn.in = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i64 0, i32 0
  %.pn = load volatile %struct.list_head*, %struct.list_head** %.pn.in, align 8
  %handle.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -3, i32 1
  %d_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %handle.0.in, i64 5
  %5 = bitcast %struct.list_head** %d_node to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %h_list, %5
  br i1 %cmp.not, label %if.end35, label %for.body

if.end35:                                         ; preds = %if.then17, %for.inc, %if.else, %if.then6
  %count.addr.2 = phi i32 [ %call, %if.then6 ], [ %count, %if.else ], [ 0, %if.then17 ], [ %count.addr.1, %for.inc ]
  call fastcc void @rcu_read_unlock() #14
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %6 = load volatile i64, i64* %arraydecay, align 8
  %7 = and i64 %6, 1048576
  %tobool37.not = icmp eq i64 %7, 0
  br i1 %tobool37.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end35
  %8 = load volatile i64, i64* %arraydecay, align 8
  %9 = and i64 %8, 2
  %tobool41.not = icmp eq i64 %9, 0
  br i1 %tobool41.not, label %cleanup, label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %land.lhs.true
  %idx.ext = zext i32 %count.addr.2 to i64
  %add.ptr44 = getelementptr %struct.input_value, %struct.input_value* %vals, i64 %idx.ext
  %cmp45.not105 = icmp eq %struct.input_value* %add.ptr44, %vals
  br i1 %cmp45.not105, label %cleanup, label %for.body46

for.body46:                                       ; preds = %for.cond43.preheader, %for.inc60
  %v.0106 = phi %struct.input_value* [ %incdec.ptr, %for.inc60 ], [ %vals, %for.cond43.preheader ]
  %type = getelementptr inbounds %struct.input_value, %struct.input_value* %v.0106, i64 0, i32 0
  %10 = load i16, i16* %type, align 4
  %cmp47 = icmp eq i16 %10, 1
  br i1 %cmp47, label %land.lhs.true49, label %for.inc60

land.lhs.true49:                                  ; preds = %for.body46
  %value = getelementptr inbounds %struct.input_value, %struct.input_value* %v.0106, i64 0, i32 2
  %11 = load i32, i32* %value, align 4
  switch i32 %11, label %if.then55 [
    i32 2, label %for.inc60
    i32 0, label %if.else57
  ]

if.then55:                                        ; preds = %land.lhs.true49
  %code = getelementptr inbounds %struct.input_value, %struct.input_value* %v.0106, i64 0, i32 1
  %12 = load i16, i16* %code, align 2
  %conv56 = zext i16 %12 to i32
  call fastcc void @input_start_autorepeat(%struct.input_dev* noundef %dev, i32 noundef %conv56) #14
  br label %for.inc60

if.else57:                                        ; preds = %land.lhs.true49
  call fastcc void @input_stop_autorepeat(%struct.input_dev* noundef %dev) #14
  br label %for.inc60

for.inc60:                                        ; preds = %land.lhs.true49, %for.body46, %if.else57, %if.then55
  %incdec.ptr = getelementptr %struct.input_value, %struct.input_value* %v.0106, i64 1
  %cmp45.not = icmp eq %struct.input_value* %incdec.ptr, %add.ptr44
  br i1 %cmp45.not, label %cleanup, label %for.body46

cleanup:                                          ; preds = %for.inc60, %for.cond43.preheader, %if.end35, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @input_match_device_id(%struct.input_dev* noundef %dev, %struct.input_device_id* noundef %id) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 0
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %bustype = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 1
  %1 = load i16, i16* %bustype, align 8
  %bustype2 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 3, i32 0
  %2 = load i16, i16* %bustype2, align 8
  %cmp.not = icmp eq i16 %1, %2
  br i1 %cmp.not, label %if.end6, label %return

if.end6:                                          ; preds = %if.then, %entry
  %and8 = and i64 %0, 2
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %if.end19, label %if.then10

if.then10:                                        ; preds = %if.end6
  %vendor = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 2
  %3 = load i16, i16* %vendor, align 2
  %vendor13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 3, i32 1
  %4 = load i16, i16* %vendor13, align 2
  %cmp15.not = icmp eq i16 %3, %4
  br i1 %cmp15.not, label %if.end19, label %return

if.end19:                                         ; preds = %if.then10, %if.end6
  %and21 = and i64 %0, 4
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.end32, label %if.then23

if.then23:                                        ; preds = %if.end19
  %product = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 3
  %5 = load i16, i16* %product, align 4
  %product26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 3, i32 2
  %6 = load i16, i16* %product26, align 4
  %cmp28.not = icmp eq i16 %5, %6
  br i1 %cmp28.not, label %if.end32, label %return

if.end32:                                         ; preds = %if.then23, %if.end19
  %and34 = and i64 %0, 8
  %tobool35.not = icmp eq i64 %and34, 0
  br i1 %tobool35.not, label %if.end45, label %if.then36

if.then36:                                        ; preds = %if.end32
  %version = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 4
  %7 = load i16, i16* %version, align 2
  %version39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 3, i32 3
  %8 = load i16, i16* %version39, align 2
  %cmp41.not = icmp eq i16 %7, %8
  br i1 %cmp41.not, label %if.end45, label %return

if.end45:                                         ; preds = %if.then36, %if.end32
  %arraydecay = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 5, i64 0
  %arraydecay47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %call = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay, i64* noundef %arraydecay47, i32 noundef 31) #14
  %tobool48.not = icmp eq i32 %call, 0
  br i1 %tobool48.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end45
  %arraydecay49 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 6, i64 0
  %arraydecay51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 6, i64 0
  %call52 = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay49, i64* noundef %arraydecay51, i32 noundef 767) #14
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %return, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false
  %arraydecay55 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 7, i64 0
  %arraydecay57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 7, i64 0
  %call58 = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay55, i64* noundef %arraydecay57, i32 noundef 15) #14
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %return, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false54
  %arraydecay61 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 8, i64 0
  %arraydecay63 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 8, i64 0
  %call64 = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay61, i64* noundef %arraydecay63, i32 noundef 63) #14
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %return, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false60
  %arraydecay67 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 9, i64 0
  %arraydecay69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 9, i64 0
  %call70 = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay67, i64* noundef %arraydecay69, i32 noundef 7) #14
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %return, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false66
  %arraydecay73 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 10, i64 0
  %arraydecay75 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 10, i64 0
  %call76 = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay73, i64* noundef %arraydecay75, i32 noundef 15) #14
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %return, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false72
  %arraydecay79 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 11, i64 0
  %arraydecay81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 11, i64 0
  %call82 = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay79, i64* noundef %arraydecay81, i32 noundef 7) #14
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %return, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false78
  %arraydecay85 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 12, i64 0
  %arraydecay87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 12, i64 0
  %call88 = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay85, i64* noundef %arraydecay87, i32 noundef 127) #14
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %return, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false84
  %arraydecay91 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 13, i64 0
  %arraydecay93 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 13, i64 0
  %call94 = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay91, i64* noundef %arraydecay93, i32 noundef 16) #14
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %return, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %lor.lhs.false90
  %arraydecay97 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id, i64 0, i32 14, i64 0
  %arraydecay99 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 4, i64 0
  %call100 = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay97, i64* noundef %arraydecay99, i32 noundef 31) #14
  %tobool101.not = icmp ne i32 %call100, 0
  br label %return

return:                                           ; preds = %lor.lhs.false96, %if.end45, %lor.lhs.false, %lor.lhs.false54, %lor.lhs.false60, %lor.lhs.false66, %lor.lhs.false72, %lor.lhs.false78, %lor.lhs.false84, %lor.lhs.false90, %if.then36, %if.then23, %if.then10, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then10 ], [ false, %if.then23 ], [ false, %if.then36 ], [ false, %lor.lhs.false90 ], [ false, %lor.lhs.false84 ], [ false, %lor.lhs.false78 ], [ false, %lor.lhs.false72 ], [ false, %lor.lhs.false66 ], [ false, %lor.lhs.false60 ], [ false, %lor.lhs.false54 ], [ false, %lor.lhs.false ], [ false, %if.end45 ], [ %tobool101.not, %lor.lhs.false96 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_subset(i64* noundef %src1, i64* noundef %src2, i32 noundef %nbits) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_subset(i64* noundef %src1, i64* noundef %src2, i32 noundef %nbits) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_reset_device(%struct.input_dev* noundef %dev) local_unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 37
  call void @mutex_lock(%struct.mutex* noundef %mutex) #15
  %rlock.i = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 36, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #14
  call fastcc void @input_dev_toggle(%struct.input_dev* noundef %dev, i1 noundef true) #14
  call fastcc void @input_dev_release_keys(%struct.input_dev* noundef %dev) #14
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #15
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_dev_toggle(%struct.input_dev* noundef %dev, i1 noundef %activate) unnamed_addr #0 {
entry:
  %event = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 34
  %0 = load i32 (%struct.input_dev*, i32, i32, i32)*, i32 (%struct.input_dev*, i32, i32, i32)** %event, align 8
  %tobool.not = icmp eq i32 (%struct.input_dev*, i32, i32, i32)* %0, null
  br i1 %tobool.not, label %if.end89, label %do.body

do.body:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %1 = load volatile i64, i64* %arraydecay, align 8
  %2 = and i64 %1, 131072
  %tobool1.not = icmp eq i64 %2, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %do.body
  %arraydecay4 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 10, i64 0
  %call5 = call fastcc i64 @find_first_bit(i64* noundef %arraydecay4, i64 noundef 16) #14
  %i.0141 = trunc i64 %call5 to i32
  %cmp142 = icmp slt i32 %i.0141, 16
  br i1 %cmp142, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end3, %for.inc
  %i.0144 = phi i32 [ %i.0, %for.inc ], [ %i.0141, %if.end3 ]
  %i.0.in143 = phi i64 [ %call24, %for.inc ], [ %call5, %if.end3 ]
  %div.i = lshr i64 %i.0.in143, 6
  %idxprom.i = and i64 %div.i, 67108863
  %arrayidx.i = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 28, i64 %idxprom.i
  %3 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i64 %i.0.in143, 63
  %4 = shl nuw i64 1, %and.i
  %5 = and i64 %3, %4
  %tobool9 = icmp ne i64 %5, 0
  %brmerge = or i1 %tobool9, %activate
  br i1 %brmerge, label %if.end14, label %for.inc

if.end14:                                         ; preds = %for.body
  %6 = load i32 (%struct.input_dev*, i32, i32, i32)*, i32 (%struct.input_dev*, i32, i32, i32)** %event, align 8
  %narrow124 = select i1 %activate, i1 %tobool9, i1 false
  %cond = zext i1 %narrow124 to i32
  %call20 = call i32 %6(%struct.input_dev* noundef %dev, i32 noundef 17, i32 noundef %i.0144, i32 noundef %cond) #15
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end14
  %add = shl i64 %i.0.in143, 32
  %sext123 = add i64 %add, 4294967296
  %conv23 = ashr exact i64 %sext123, 32
  %call24 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay4, i64 noundef 16, i64 noundef %conv23) #14
  %i.0 = trunc i64 %call24 to i32
  %cmp = icmp slt i32 %i.0, 16
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.inc, %if.end3, %do.body
  %7 = load volatile i64, i64* %arraydecay, align 8
  %8 = and i64 %7, 262144
  %tobool33.not = icmp eq i64 %8, 0
  br i1 %tobool33.not, label %cleanup70, label %if.end35

if.end35:                                         ; preds = %cleanup
  %arraydecay36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 11, i64 0
  %call37 = call fastcc i64 @find_first_bit(i64* noundef %arraydecay36, i64 noundef 8) #14
  %i28.0145 = trunc i64 %call37 to i32
  %cmp40146 = icmp slt i32 %i28.0145, 8
  br i1 %cmp40146, label %for.body42, label %cleanup70

for.body42:                                       ; preds = %if.end35, %for.inc62
  %i28.0148 = phi i32 [ %i28.0, %for.inc62 ], [ %i28.0145, %if.end35 ]
  %i28.0.in147 = phi i64 [ %call67, %for.inc62 ], [ %call37, %if.end35 ]
  %div.i130 = lshr i64 %i28.0.in147, 6
  %idxprom.i131 = and i64 %div.i130, 67108863
  %arrayidx.i132 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 29, i64 %idxprom.i131
  %9 = load volatile i64, i64* %arrayidx.i132, align 8
  %and.i133 = and i64 %i28.0.in147, 63
  %10 = shl nuw i64 1, %and.i133
  %11 = and i64 %9, %10
  %tobool45 = icmp ne i64 %11, 0
  %brmerge125 = or i1 %tobool45, %activate
  br i1 %brmerge125, label %if.end51, label %for.inc62

if.end51:                                         ; preds = %for.body42
  %12 = load i32 (%struct.input_dev*, i32, i32, i32)*, i32 (%struct.input_dev*, i32, i32, i32)** %event, align 8
  %narrow = select i1 %activate, i1 %tobool45, i1 false
  %cond60 = zext i1 %narrow to i32
  %call61 = call i32 %12(%struct.input_dev* noundef %dev, i32 noundef 18, i32 noundef %i28.0148, i32 noundef %cond60) #15
  br label %for.inc62

for.inc62:                                        ; preds = %for.body42, %if.end51
  %add65 = shl i64 %i28.0.in147, 32
  %sext = add i64 %add65, 4294967296
  %conv66 = ashr exact i64 %sext, 32
  %call67 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay36, i64 noundef 8, i64 noundef %conv66) #14
  %i28.0 = trunc i64 %call67 to i32
  %cmp40 = icmp slt i32 %i28.0, 8
  br i1 %cmp40, label %for.body42, label %cleanup70

cleanup70:                                        ; preds = %for.inc62, %if.end35, %cleanup
  br i1 %activate, label %land.lhs.true77, label %if.end89

land.lhs.true77:                                  ; preds = %cleanup70
  %13 = load volatile i64, i64* %arraydecay, align 8
  %14 = and i64 %13, 1048576
  %tobool81.not = icmp eq i64 %14, 0
  br i1 %tobool81.not, label %if.end89, label %if.then82

if.then82:                                        ; preds = %land.lhs.true77
  %15 = load i32 (%struct.input_dev*, i32, i32, i32)*, i32 (%struct.input_dev*, i32, i32, i32)** %event, align 8
  %arrayidx = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 24, i64 1
  %16 = load i32, i32* %arrayidx, align 4
  %call84 = call i32 %15(%struct.input_dev* noundef %dev, i32 noundef 20, i32 noundef 1, i32 noundef %16) #15
  %17 = load i32 (%struct.input_dev*, i32, i32, i32)*, i32 (%struct.input_dev*, i32, i32, i32)** %event, align 8
  %arrayidx87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 24, i64 0
  %18 = load i32, i32* %arrayidx87, align 8
  %call88 = call i32 %17(%struct.input_dev* noundef %dev, i32 noundef 20, i32 noundef 0, i32 noundef %18) #15
  br label %if.end89

if.end89:                                         ; preds = %entry, %if.then82, %land.lhs.true77, %cleanup70
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_dev_release_keys(%struct.input_dev* noundef %dev) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %call = call fastcc i32 @is_event_supported(i32 noundef 1, i64* noundef %arraydecay, i32 noundef 31) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 27, i64 0
  %call2 = call fastcc i64 @find_first_bit(i64* noundef %arraydecay1, i64 noundef 768) #14
  %code.023 = trunc i64 %call2 to i32
  %cmp24 = icmp slt i32 %code.023, 768
  br i1 %cmp24, label %for.body, label %if.end

for.body:                                         ; preds = %if.then, %for.body
  %code.026 = phi i32 [ %code.0, %for.body ], [ %code.023, %if.then ]
  %code.0.in25 = phi i64 [ %call7, %for.body ], [ %call2, %if.then ]
  call fastcc void @input_pass_event(%struct.input_dev* noundef %dev, i32 noundef 1, i32 noundef %code.026, i32 noundef 0) #14
  %add = shl i64 %code.0.in25, 32
  %sext = add i64 %add, 4294967296
  %conv6 = ashr exact i64 %sext, 32
  %call7 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay1, i64 noundef 768, i64 noundef %conv6) #14
  %code.0 = trunc i64 %call7 to i32
  %cmp = icmp slt i32 %code.0, 768
  br i1 %cmp, label %for.body, label %if.then10

if.then10:                                        ; preds = %for.body
  call fastcc void @input_pass_event(%struct.input_dev* noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10
  %0 = bitcast i64* %arraydecay1 to i8*
  %call13 = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 96) #15
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal noalias i8* @input_devnode(%struct.device* nocapture noundef readonly %dev, i16* nocapture noundef readnone %mode) #0 {
entry:
  %call = call fastcc i8* @dev_name(%struct.device* noundef %dev) #14
  %call1 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call) #15
  ret i8* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.input_dev* @input_allocate_device() local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc() #14
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %dev1 = getelementptr inbounds i8, i8* %call, i64 544
  %0 = bitcast i8* %dev1 to %struct.device*
  %type = getelementptr inbounds i8, i8* %call, i64 632
  %1 = bitcast i8* %type to %struct.device_type**
  store %struct.device_type* @input_dev_type, %struct.device_type** %1, align 8
  %class = getelementptr inbounds i8, i8* %call, i64 968
  %2 = bitcast i8* %class to %struct.class**
  store %struct.class* @input_class, %struct.class** %2, align 8
  call void @device_initialize(%struct.device* noundef %0) #15
  %mutex = getelementptr inbounds i8, i8* %call, i64 504
  %3 = bitcast i8* %mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %3, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @input_allocate_device.__key) #15
  %event_lock = getelementptr inbounds i8, i8* %call, i64 496
  %4 = bitcast i8* %event_lock to i32*
  store i32 0, i32* %4, align 8
  %timer = getelementptr inbounds i8, i8* %call, i64 272
  %5 = bitcast i8* %timer to %struct.timer_list*
  call void @init_timer_key(%struct.timer_list* noundef %5, void (%struct.timer_list*)* noundef null, i32 noundef 0, i8* noundef null, %struct.lock_class_key* noundef null) #15
  %h_list = getelementptr inbounds i8, i8* %call, i64 1016
  %6 = bitcast i8* %h_list to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %6) #14
  %node = getelementptr inbounds i8, i8* %call, i64 1032
  %7 = bitcast i8* %node to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %7) #14
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return() #15
  %conv = sext i32 %call.i.i.i to i64
  %call11 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 noundef %conv) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = bitcast i8* %call to %struct.input_dev*
  ret %struct.input_dev* %8
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 11), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #15
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(%struct.timer_list* noundef, void (%struct.timer_list*)* noundef, i32 noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_input_device_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #15
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.input_dev* @input_allocate_device() #14
  %tobool2.not = icmp eq %struct.input_dev* %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.input_dev, %struct.input_dev* %call1, i64 0, i32 40, i32 1
  store %struct.device* %dev, %struct.device** %parent, align 8
  %devres_managed = getelementptr inbounds %struct.input_dev, %struct.input_dev* %call1, i64 0, i32 46
  store i8 1, i8* %devres_managed, align 8
  %input6 = bitcast i8* %call to %struct.input_dev**
  store %struct.input_dev* %call1, %struct.input_dev** %input6, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi %struct.input_dev* [ %call1, %if.end4 ], [ null, %if.then3 ], [ null, %entry ]
  ret %struct.input_dev* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_input_device_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %input1 = bitcast i8* %res to %struct.input_dev**
  %0 = load %struct.input_dev*, %struct.input_dev** %input1, align 8
  call fastcc void @input_put_device(%struct.input_dev* noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_free_device(%struct.input_dev* noundef %dev) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.input_dev* %dev, null
  br i1 %tobool.not, label %if.end21, label %if.then

if.then:                                          ; preds = %entry
  %devres_managed = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 46
  %0 = load i8, i8* %devres_managed, align 8, !range !8
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.end20, label %if.then2

if.then2:                                         ; preds = %if.then
  %parent = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40, i32 1
  %1 = load %struct.device*, %struct.device** %parent, align 8
  %2 = bitcast %struct.input_dev* %dev to i8*
  %call = call i32 @devres_destroy(%struct.device* noundef %1, void (%struct.device*, i8*)* noundef nonnull @devm_input_device_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_input_device_match, i8* noundef nonnull %2) #15
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end20, label %if.then12, !prof !11

if.then12:                                        ; preds = %if.then2
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/input/input.c\22; .popsection; .long 14472b - 14470b; .short 2020; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !12
  br label %if.end20

if.end20:                                         ; preds = %if.then2, %if.then12, %if.then
  call fastcc void @input_put_device(%struct.input_dev* noundef nonnull %dev) #14
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(%struct.device* noundef, void (%struct.device*, i8*)* noundef, i32 (%struct.device*, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @devm_input_device_match(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res, i8* noundef readnone %data) #8 {
entry:
  %input = bitcast i8* %res to %struct.input_dev**
  %0 = load %struct.input_dev*, %struct.input_dev** %input, align 8
  %1 = bitcast i8* %data to %struct.input_dev*
  %cmp = icmp eq %struct.input_dev* %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_put_device(%struct.input_dev* noundef %dev) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.input_dev* %dev, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40
  call void @put_device(%struct.device* noundef %dev1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_set_timestamp(%struct.input_dev* nocapture noundef writeonly %dev, i64 noundef %timestamp) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 47, i64 1
  store i64 %timestamp, i64* %arrayidx, align 8
  %call = call fastcc i64 @ktime_mono_to_real(i64 noundef %timestamp) #14
  %arrayidx3 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 47, i64 0
  store i64 %call, i64* %arrayidx3, align 8
  %call4 = call i64 @ktime_mono_to_any(i64 noundef %timestamp, i32 noundef 1) #15
  %arrayidx6 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 47, i64 2
  store i64 %call4, i64* %arrayidx6, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_mono_to_real(i64 noundef %mono) unnamed_addr #0 {
entry:
  %call = call i64 @ktime_mono_to_any(i64 noundef %mono, i32 noundef 0) #15
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_mono_to_any(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64* @input_get_timestamp(%struct.input_dev* noundef %dev) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 47, i64 1
  %0 = load i64, i64* %arrayidx, align 8
  %call1 = call fastcc i32 @ktime_compare(i64 noundef %0) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @ktime_get() #15
  call void @input_set_timestamp(%struct.input_dev* noundef %dev, i64 noundef %call2) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 47, i64 0
  ret i64* %arraydecay
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @ktime_compare(i64 noundef %cmp1) unnamed_addr #9 {
entry:
  %cmp = icmp slt i64 %cmp1, 0
  %cmp3.not = icmp ne i64 %cmp1, 0
  %. = zext i1 %cmp3.not to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_set_capability(%struct.input_dev* noundef %dev, i32 noundef %type, i32 noundef %code) local_unnamed_addr #0 {
entry:
  switch i32 %type, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
    i32 17, label %sw.bb9
    i32 18, label %sw.bb11
    i32 21, label %sw.bb13
    i32 22, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %div.i = lshr i32 %code, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 6, i64 %idx.ext.i
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %div.i39 = lshr i32 %code, 6
  %idx.ext.i40 = zext i32 %div.i39 to i64
  %add.ptr.i41 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 7, i64 %idx.ext.i40
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @input_alloc_absinfo(%struct.input_dev* noundef %dev) #14
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %0 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8
  %tobool.not = icmp eq %struct.input_absinfo* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %sw.bb3
  %div.i46 = lshr i32 %code, 6
  %idx.ext.i47 = zext i32 %div.i46 to i64
  %add.ptr.i48 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 8, i64 %idx.ext.i47
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  %div.i53 = lshr i32 %code, 6
  %idx.ext.i54 = zext i32 %div.i53 to i64
  %add.ptr.i55 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 9, i64 %idx.ext.i54
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %entry
  %div.i60 = lshr i32 %code, 6
  %idx.ext.i61 = zext i32 %div.i60 to i64
  %add.ptr.i62 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 13, i64 %idx.ext.i61
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %entry
  %div.i67 = lshr i32 %code, 6
  %idx.ext.i68 = zext i32 %div.i67 to i64
  %add.ptr.i69 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 10, i64 %idx.ext.i68
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %entry
  %div.i74 = lshr i32 %code, 6
  %idx.ext.i75 = zext i32 %div.i74 to i64
  %add.ptr.i76 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 11, i64 %idx.ext.i75
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %entry
  %div.i81 = lshr i32 %code, 6
  %idx.ext.i82 = zext i32 %div.i81 to i64
  %add.ptr.i83 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 12, i64 %idx.ext.i82
  br label %sw.epilog.sink.split

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.input_set_capability, i64 0, i64 0), i32 noundef %type, i32 noundef %code) #17
  call void @dump_stack() #17
  br label %return

sw.epilog.sink.split:                             ; preds = %sw.bb, %sw.bb1, %if.end, %sw.bb5, %sw.bb7, %sw.bb9, %sw.bb11, %sw.bb13
  %add.ptr.i83.sink92 = phi i64* [ %add.ptr.i83, %sw.bb13 ], [ %add.ptr.i76, %sw.bb11 ], [ %add.ptr.i69, %sw.bb9 ], [ %add.ptr.i62, %sw.bb7 ], [ %add.ptr.i55, %sw.bb5 ], [ %add.ptr.i48, %if.end ], [ %add.ptr.i41, %sw.bb1 ], [ %add.ptr.i, %sw.bb ]
  %sh_prom.i79.pn.in = and i32 %code, 63
  %sh_prom.i79.pn = zext i32 %sh_prom.i79.pn.in to i64
  %shl.i80.sink = shl nuw i64 1, %sh_prom.i79.pn
  %1 = load i64, i64* %add.ptr.i83.sink92, align 8
  %or.i84 = or i64 %1, %shl.i80.sink
  store i64 %or.i84, i64* %add.ptr.i83.sink92, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry
  %sh_prom.i86 = zext i32 %type to i64
  %shl.i87 = shl nuw nsw i64 1, %sh_prom.i86
  %div.i88 = lshr i32 %type, 6
  %idx.ext.i89 = zext i32 %div.i88 to i64
  %add.ptr.i90 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 %idx.ext.i89
  %2 = load i64, i64* %add.ptr.i90, align 8
  %or.i91 = or i64 %2, %shl.i87
  store i64 %or.i91, i64* %add.ptr.i90, align 8
  br label %return

return:                                           ; preds = %sw.bb3, %sw.epilog, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @input_enable_softrepeat(%struct.input_dev* nocapture noundef writeonly %dev, i32 noundef %delay, i32 noundef %period) local_unnamed_addr #10 {
entry:
  %function = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 23, i32 2
  store void (%struct.timer_list*)* @input_repeat_key, void (%struct.timer_list*)** %function, align 8
  %arrayidx = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 24, i64 0
  store i32 %delay, i32* %arrayidx, align 8
  %arrayidx2 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 24, i64 1
  store i32 %period, i32* %arrayidx2, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @input_repeat_key(%struct.timer_list* noundef %t) #0 {
entry:
  %vals = alloca [2 x %struct.input_value], align 4
  %add.ptr = getelementptr %struct.timer_list, %struct.timer_list* %t, i64 -7, i32 0, i32 1
  %0 = bitcast %struct.hlist_node*** %add.ptr to %struct.input_dev*
  %event_lock = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %add.ptr, i64 62
  %rlock.i = bitcast %struct.hlist_node*** %event_lock to %struct.raw_spinlock*
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #14
  %repeat_key = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %add.ptr, i64 33
  %1 = bitcast %struct.hlist_node*** %repeat_key to i32*
  %2 = load i32, i32* %1, align 8
  %key = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %add.ptr, i64 42
  %div.i = lshr i32 %2, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i41 = getelementptr %struct.hlist_node**, %struct.hlist_node*** %key, i64 %idxprom.i
  %arrayidx.i = bitcast %struct.hlist_node*** %arrayidx.i41 to i64*
  %3 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %2, 63
  %sh_prom.i = zext i32 %and.i to i64
  %4 = shl nuw i64 1, %sh_prom.i
  %5 = and i64 %4, %3
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %keybit = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %add.ptr, i64 6
  %arraydecay11 = bitcast %struct.hlist_node*** %keybit to i64*
  %call12 = call fastcc i32 @is_event_supported(i32 noundef %2, i64* noundef %arraydecay11, i32 noundef 767) #14
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end24, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = bitcast [2 x %struct.input_value]* %vals to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #16
  %arrayinit.begin = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %vals, i64 0, i64 0
  %type = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %vals, i64 0, i64 0, i32 0
  store i16 1, i16* %type, align 4
  %code = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %vals, i64 0, i64 0, i32 1
  %7 = load i32, i32* %1, align 8
  %conv15 = trunc i32 %7 to i16
  store i16 %conv15, i16* %code, align 2
  %value = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %vals, i64 0, i64 0, i32 2
  store i32 2, i32* %value, align 4
  %arrayinit.element = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %vals, i64 0, i64 1
  %8 = bitcast %struct.input_value* %arrayinit.element to i64*
  store i64 4294967296, i64* %8, align 4
  %call16 = call i64 @ktime_get() #15
  call void @input_set_timestamp(%struct.input_dev* noundef %0, i64 noundef %call16) #14
  call fastcc void @input_pass_values(%struct.input_dev* noundef %0, %struct.input_value* noundef nonnull %arrayinit.begin, i32 noundef 2) #14
  %rep = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %add.ptr, i64 39
  %9 = bitcast %struct.hlist_node*** %rep to [2 x i32]*
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %10 = load i32, i32* %arrayidx, align 4
  %tobool18.not = icmp eq i32 %10, 0
  br i1 %tobool18.not, label %if.end, label %if.then19

if.then19:                                        ; preds = %if.then
  %timer = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %add.ptr, i64 34
  %11 = bitcast %struct.hlist_node*** %timer to %struct.timer_list*
  %12 = load volatile i64, i64* @jiffies, align 64
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %10) #15
  %add = add i64 %call2.i, %12
  %call23 = call i32 @mod_timer(%struct.timer_list* noundef %11, i64 noundef %add) #15
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.then
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #16
  br label %if.end24

if.end24:                                         ; preds = %if.end, %land.lhs.true, %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call4) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @input_device_enabled(%struct.input_dev* nocapture noundef readonly %dev) local_unnamed_addr #8 {
entry:
  %inhibited = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 48
  %0 = load i8, i8* %inhibited, align 8, !range !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %users = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 38
  %1 = load i32, i32* %users, align 8
  %cmp = icmp ne i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_register_device(%struct.input_dev* noundef %dev) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %0 = load volatile i64, i64* %arraydecay, align 8
  %1 = and i64 %0, 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %2 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8
  %tobool1.not = icmp eq %struct.input_absinfo* %2, null
  br i1 %tobool1.not, label %do.end, label %if.end

do.end:                                           ; preds = %land.lhs.true
  %dev2 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev2, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0)) #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %devres_managed = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 46
  %3 = load i8, i8* %devres_managed, align 8, !range !8
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_input_device_unregister, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0)) #15
  %tobool6.not = icmp eq i8* %call5, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.then4
  %input = bitcast i8* %call5 to %struct.input_dev**
  store %struct.input_dev* %dev, %struct.input_dev** %input, align 8
  %.pre = load i64, i64* %arraydecay, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  %4 = phi i64 [ %.pre, %if.end8 ], [ %0, %if.end ]
  %5 = phi i8* [ %call5, %if.end8 ], [ null, %if.end ]
  %or.i = or i64 %4, 1
  store i64 %or.i, i64* %arraydecay, align 8
  %arraydecay12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 6, i64 0
  %6 = load i64, i64* %arraydecay12, align 8
  %and.i = and i64 %6, -2
  store i64 %and.i, i64* %arraydecay12, align 8
  call fastcc void @input_cleanse_bitmasks(%struct.input_dev* noundef %dev) #14
  %call13 = call fastcc i32 @input_estimate_events_per_packet(%struct.input_dev* noundef %dev) #14
  %hint_events_per_packet = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 14
  %7 = load i32, i32* %hint_events_per_packet, align 8
  %cmp = icmp ult i32 %7, %call13
  br i1 %cmp, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end9
  store i32 %call13, i32* %hint_events_per_packet, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9
  %8 = phi i32 [ %call13, %if.then14 ], [ %7, %if.end9 ]
  %add = add i32 %8, 2
  %max_vals = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 44
  store i32 %add, i32* %max_vals, align 4
  %conv = zext i32 %add to i64
  %call19 = call fastcc i8* @kcalloc(i64 noundef %conv, i64 noundef 8) #14
  %vals = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 45
  %9 = bitcast %struct.input_value** %vals to i8**
  store i8* %call19, i8** %9, align 8
  %tobool21.not = icmp eq i8* %call19, null
  br i1 %tobool21.not, label %err_devres_free, label %if.end23

if.end23:                                         ; preds = %if.end16
  %arrayidx = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 24, i64 0
  %10 = load i32, i32* %arrayidx, align 8
  %tobool24.not = icmp eq i32 %10, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %if.end30

land.lhs.true25:                                  ; preds = %if.end23
  %arrayidx27 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 24, i64 1
  %11 = load i32, i32* %arrayidx27, align 4
  %tobool28.not = icmp eq i32 %11, 0
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true25
  call void @input_enable_softrepeat(%struct.input_dev* noundef %dev, i32 noundef 250, i32 noundef 33) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true25, %if.end23
  %getkeycode = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 19
  %12 = load i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)** %getkeycode, align 8
  %tobool31.not = icmp eq i32 (%struct.input_dev*, %struct.input_keymap_entry*)* %12, null
  br i1 %tobool31.not, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end30
  store i32 (%struct.input_dev*, %struct.input_keymap_entry*)* @input_default_getkeycode, i32 (%struct.input_dev*, %struct.input_keymap_entry*)** %getkeycode, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30
  %setkeycode = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 18
  %13 = load i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)** %setkeycode, align 8
  %tobool35.not = icmp eq i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)* %13, null
  br i1 %tobool35.not, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end34
  store i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)* @input_default_setkeycode, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)** %setkeycode, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end34
  %poller = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 21
  %14 = load %struct.input_dev_poller*, %struct.input_dev_poller** %poller, align 8
  %tobool39.not = icmp eq %struct.input_dev_poller* %14, null
  br i1 %tobool39.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end38
  call void @input_dev_poller_finalize(%struct.input_dev_poller* noundef nonnull %14) #15
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end38
  %dev43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40
  %call44 = call i32 @device_add(%struct.device* noundef %dev43) #15
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %err_free_vals

if.end47:                                         ; preds = %if.end42
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev43, i64 0, i32 0
  %call49 = call i8* @kobject_get_path(%struct.kobject* noundef %kobj, i32 noundef 3264) #15
  %name = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 0
  %15 = load i8*, i8** %name, align 8
  %tobool53.not = icmp eq i8* %15, null
  %spec.select = select i1 %tobool53.not, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %15
  %tobool55.not = icmp eq i8* %call49, null
  %cond59 = select i1 %tobool55.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %call49
  %call60 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* noundef %spec.select, i8* noundef %cond59) #17
  call void @kfree(i8* noundef %call49) #15
  %call61 = call i32 @mutex_lock_interruptible(%struct.mutex* noundef nonnull @input_mutex) #15
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %err_device_del

if.end64:                                         ; preds = %if.end47
  %node = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 42
  call fastcc void @list_add_tail(%struct.list_head* noundef %node, %struct.list_head* noundef nonnull @input_dev_list) #14
  %.pn146 = load i8*, i8** bitcast (%struct.list_head* @input_handler_list to i8**), align 8
  %cmp70.not147 = icmp eq i8* %.pn146, bitcast (%struct.list_head* @input_handler_list to i8*)
  br i1 %cmp70.not147, label %for.end, label %for.body

for.body:                                         ; preds = %if.end64, %for.body
  %.pn148 = phi i8* [ %.pn, %for.body ], [ %.pn146, %if.end64 ]
  %handler.0.in = getelementptr i8, i8* %.pn148, i64 -104
  %handler.0 = bitcast i8* %handler.0.in to %struct.input_handler*
  call fastcc void @input_attach_handler(%struct.input_dev* noundef %dev, %struct.input_handler* noundef %handler.0) #14
  %16 = bitcast i8* %.pn148 to i8**
  %.pn = load i8*, i8** %16, align 8
  %cmp70.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @input_handler_list to i8*)
  br i1 %cmp70.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end64
  call fastcc void @input_wakeup_procfs_readers() #14
  call void @mutex_unlock(%struct.mutex* noundef nonnull @input_mutex) #15
  %17 = load i8, i8* %devres_managed, align 8, !range !8
  %tobool81.not = icmp eq i8 %17, 0
  br i1 %tobool81.not, label %cleanup, label %if.then82

if.then82:                                        ; preds = %for.end
  %parent = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40, i32 1
  %18 = load %struct.device*, %struct.device** %parent, align 8
  call void @devres_add(%struct.device* noundef %18, i8* noundef %5) #15
  br label %cleanup

err_device_del:                                   ; preds = %if.end47
  call void @device_del(%struct.device* noundef %dev43) #15
  br label %err_free_vals

err_free_vals:                                    ; preds = %if.end42, %err_device_del
  %error.0 = phi i32 [ %call44, %if.end42 ], [ %call61, %err_device_del ]
  %19 = load i8*, i8** %9, align 8
  call void @kfree(i8* noundef %19) #15
  store %struct.input_value* null, %struct.input_value** %vals, align 8
  br label %err_devres_free

err_devres_free:                                  ; preds = %if.end16, %err_free_vals
  %error.1 = phi i32 [ %error.0, %err_free_vals ], [ -12, %if.end16 ]
  call void @devres_free(i8* noundef %5) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then82, %if.then4, %err_devres_free, %do.end
  %retval.0 = phi i32 [ %error.1, %err_devres_free ], [ -22, %do.end ], [ -12, %if.then4 ], [ 0, %if.then82 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_input_device_unregister(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %input1 = bitcast i8* %res to %struct.input_dev**
  %0 = load %struct.input_dev*, %struct.input_dev** %input1, align 8
  call fastcc void @__input_unregister_device(%struct.input_dev* noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_cleanse_bitmasks(%struct.input_dev* noundef %dev) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %0 = load volatile i64, i64* %arraydecay, align 8
  %1 = and i64 %0, 2
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.then, label %do.body3

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 6, i64 0
  %2 = bitcast i64* %arraydecay1 to i8*
  %call2 = call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef 96) #15
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  %3 = load volatile i64, i64* %arraydecay, align 8
  %4 = and i64 %3, 4
  %tobool7.not = icmp eq i64 %4, 0
  br i1 %tobool7.not, label %if.then8, label %do.body13

if.then8:                                         ; preds = %do.body3
  %arraydecay9 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 7, i64 0
  %5 = bitcast i64* %arraydecay9 to i8*
  %call10 = call i8* @memset(i8* noundef %5, i32 noundef 0, i64 noundef 8) #15
  br label %do.body13

do.body13:                                        ; preds = %if.then8, %do.body3
  %6 = load volatile i64, i64* %arraydecay, align 8
  %7 = and i64 %6, 8
  %tobool17.not = icmp eq i64 %7, 0
  br i1 %tobool17.not, label %if.then18, label %do.body23

if.then18:                                        ; preds = %do.body13
  %arraydecay19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 8, i64 0
  %8 = bitcast i64* %arraydecay19 to i8*
  %call20 = call i8* @memset(i8* noundef %8, i32 noundef 0, i64 noundef 8) #15
  br label %do.body23

do.body23:                                        ; preds = %if.then18, %do.body13
  %9 = load volatile i64, i64* %arraydecay, align 8
  %10 = and i64 %9, 16
  %tobool27.not = icmp eq i64 %10, 0
  br i1 %tobool27.not, label %if.then28, label %do.body33

if.then28:                                        ; preds = %do.body23
  %arraydecay29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 9, i64 0
  %11 = bitcast i64* %arraydecay29 to i8*
  %call30 = call i8* @memset(i8* noundef %11, i32 noundef 0, i64 noundef 8) #15
  br label %do.body33

do.body33:                                        ; preds = %if.then28, %do.body23
  %12 = load volatile i64, i64* %arraydecay, align 8
  %13 = and i64 %12, 131072
  %tobool37.not = icmp eq i64 %13, 0
  br i1 %tobool37.not, label %if.then38, label %do.body43

if.then38:                                        ; preds = %do.body33
  %arraydecay39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 10, i64 0
  %14 = bitcast i64* %arraydecay39 to i8*
  %call40 = call i8* @memset(i8* noundef %14, i32 noundef 0, i64 noundef 8) #15
  br label %do.body43

do.body43:                                        ; preds = %if.then38, %do.body33
  %15 = load volatile i64, i64* %arraydecay, align 8
  %16 = and i64 %15, 262144
  %tobool47.not = icmp eq i64 %16, 0
  br i1 %tobool47.not, label %if.then48, label %do.body53

if.then48:                                        ; preds = %do.body43
  %arraydecay49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 11, i64 0
  %17 = bitcast i64* %arraydecay49 to i8*
  %call50 = call i8* @memset(i8* noundef %17, i32 noundef 0, i64 noundef 8) #15
  br label %do.body53

do.body53:                                        ; preds = %if.then48, %do.body43
  %18 = load volatile i64, i64* %arraydecay, align 8
  %19 = and i64 %18, 2097152
  %tobool57.not = icmp eq i64 %19, 0
  br i1 %tobool57.not, label %if.then58, label %do.body63

if.then58:                                        ; preds = %do.body53
  %arraydecay59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 12, i64 0
  %20 = bitcast i64* %arraydecay59 to i8*
  %call60 = call i8* @memset(i8* noundef %20, i32 noundef 0, i64 noundef 16) #15
  br label %do.body63

do.body63:                                        ; preds = %if.then58, %do.body53
  %21 = load volatile i64, i64* %arraydecay, align 8
  %22 = and i64 %21, 32
  %tobool67.not = icmp eq i64 %22, 0
  br i1 %tobool67.not, label %if.then68, label %do.end72

if.then68:                                        ; preds = %do.body63
  %arraydecay69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 13, i64 0
  %23 = bitcast i64* %arraydecay69 to i8*
  %call70 = call i8* @memset(i8* noundef %23, i32 noundef 0, i64 noundef 8) #15
  br label %do.end72

do.end72:                                         ; preds = %do.body63, %if.then68
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @input_estimate_events_per_packet(%struct.input_dev* noundef %dev) unnamed_addr #0 {
entry:
  %mt = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 25
  %0 = load %struct.input_mt*, %struct.input_mt** %mt, align 8
  %tobool.not = icmp eq %struct.input_mt* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %num_slots = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 1
  %1 = load i32, i32* %num_slots, align 4
  br label %if.end20

if.else:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 8, i64 0
  %2 = load volatile i64, i64* %arraydecay, align 8
  %3 = and i64 %2, 144115188075855872
  %tobool2.not = icmp eq i64 %3, 0
  br i1 %tobool2.not, label %if.else12, label %if.then3

if.then3:                                         ; preds = %if.else
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %4 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8
  %maximum = getelementptr %struct.input_absinfo, %struct.input_absinfo* %4, i64 57, i32 2
  %5 = load i32, i32* %maximum, align 4
  %minimum = getelementptr %struct.input_absinfo, %struct.input_absinfo* %4, i64 57, i32 1
  %6 = load i32, i32* %minimum, align 4
  %sub = sub i32 %5, %6
  %add = add i32 %sub, 1
  %cmp = icmp sgt i32 %add, 2
  %cond = select i1 %cmp, i32 %add, i32 2
  %cmp7 = icmp ult i32 %cond, 32
  %cond11 = select i1 %cmp7, i32 %cond, i32 32
  br label %if.end20

if.else12:                                        ; preds = %if.else
  %7 = load volatile i64, i64* %arraydecay, align 8
  %8 = lshr i64 %7, 52
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 2
  br label %if.end20

if.end20:                                         ; preds = %if.else12, %if.then3, %if.then
  %mt_slots.0 = phi i32 [ %1, %if.then ], [ %cond11, %if.then3 ], [ %10, %if.else12 ]
  %add21 = add i32 %mt_slots.0, 1
  %arraydecay22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %11 = load volatile i64, i64* %arraydecay22, align 8
  %12 = and i64 %11, 8
  %tobool24.not = icmp eq i64 %12, 0
  br i1 %tobool24.not, label %if.end44, label %if.then25

if.then25:                                        ; preds = %if.end20
  %arraydecay27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 8, i64 0
  %call28 = call fastcc i64 @find_first_bit(i64* noundef %arraydecay27, i64 noundef 64) #14
  %i.092 = trunc i64 %call28 to i32
  %cmp2993 = icmp slt i32 %i.092, 64
  br i1 %cmp2993, label %for.body, label %if.end44

for.body:                                         ; preds = %if.then25, %for.body
  %i.096 = phi i32 [ %i.0, %for.body ], [ %i.092, %if.then25 ]
  %i.0.in95 = phi i64 [ %call42, %for.body ], [ %call28, %if.then25 ]
  %events.094 = phi i32 [ %add37, %for.body ], [ %add21, %if.then25 ]
  %call31 = call fastcc i1 @input_is_mt_axis(i32 noundef %i.096) #14
  %cond36 = select i1 %call31, i32 %mt_slots.0, i32 1
  %add37 = add i32 %cond36, %events.094
  %add40 = shl i64 %i.0.in95, 32
  %sext = add i64 %add40, 4294967296
  %conv41 = ashr exact i64 %sext, 32
  %call42 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay27, i64 noundef 64, i64 noundef %conv41) #14
  %i.0 = trunc i64 %call42 to i32
  %cmp29 = icmp slt i32 %i.0, 64
  br i1 %cmp29, label %for.body, label %if.end44

if.end44:                                         ; preds = %for.body, %if.then25, %if.end20
  %events.1 = phi i32 [ %add21, %if.end20 ], [ %add21, %if.then25 ], [ %add37, %for.body ]
  %13 = load volatile i64, i64* %arraydecay22, align 8
  %14 = and i64 %13, 4
  %tobool48.not = icmp eq i64 %14, 0
  br i1 %tobool48.not, label %if.end53, label %cond.false.i.i

cond.false.i.i:                                   ; preds = %if.end44
  %arraydecay50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 7, i64 0
  %15 = load i64, i64* %arraydecay50, align 8
  %and3.i = and i64 %15, 65535
  %call.i.i = call fastcc i64 @__arch_hweight64(i64 noundef %and3.i) #15
  %conv.i89 = trunc i64 %call.i.i to i32
  %add52 = add i32 %events.1, %conv.i89
  br label %if.end53

if.end53:                                         ; preds = %cond.false.i.i, %if.end44
  %events.2 = phi i32 [ %add52, %cond.false.i.i ], [ %events.1, %if.end44 ]
  %add54 = add i32 %events.2, 7
  ret i32 %add54
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @input_default_getkeycode(%struct.input_dev* nocapture noundef readonly %dev, %struct.input_keymap_entry* noundef %ke) #0 {
entry:
  %index = alloca i32, align 4
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  store i32 0, i32* %index, align 4, !annotation !10
  %keycodesize = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 16
  %1 = load i32, i32* %keycodesize, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 0
  %2 = load i8, i8* %flags, align 4
  %3 = and i8 %2, 1
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %index3 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 2
  %4 = load i16, i16* %index3, align 2
  %conv4 = zext i16 %4 to i32
  store i32 %conv4, i32* %index, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call = call i32 @input_scancode_to_scalar(%struct.input_keymap_entry* noundef %ke, i32* noundef nonnull %index) #14
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.else.if.end8_crit_edge, label %cleanup

if.else.if.end8_crit_edge:                        ; preds = %if.else
  %.pre = load i32, i32* %index, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.then2
  %5 = phi i32 [ %.pre, %if.else.if.end8_crit_edge ], [ %conv4, %if.then2 ]
  %keycodemax = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 15
  %6 = load i32, i32* %keycodemax, align 4
  %cmp.not = icmp ult i32 %5, %6
  br i1 %cmp.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end8
  %call12 = call fastcc i32 @input_fetch_keycode(%struct.input_dev* noundef %dev, i32 noundef %5) #14
  %keycode = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 3
  store i32 %call12, i32* %keycode, align 4
  %conv13 = trunc i32 %5 to i16
  %index14 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 2
  store i16 %conv13, i16* %index14, align 2
  %len = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 1
  store i8 4, i8* %len, align 1
  %arraydecay = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 4, i64 0
  %call15 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef nonnull %0, i64 noundef 4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.else, %entry, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %entry ], [ %call, %if.else ], [ -22, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal i32 @input_default_setkeycode(%struct.input_dev* nocapture noundef %dev, %struct.input_keymap_entry* nocapture noundef readonly %ke, i32* nocapture noundef %old_keycode) #11 {
entry:
  %index = alloca i32, align 4
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  store i32 0, i32* %index, align 4, !annotation !10
  %keycodesize = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 16
  %1 = load i32, i32* %keycodesize, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 0
  %2 = load i8, i8* %flags, align 4
  %3 = and i8 %2, 1
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %index3 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 2
  %4 = load i16, i16* %index3, align 2
  %conv4 = zext i16 %4 to i32
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call = call i32 @input_scancode_to_scalar(%struct.input_keymap_entry* noundef %ke, i32* noundef nonnull %index) #14
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.else.if.end8_crit_edge, label %cleanup

if.else.if.end8_crit_edge:                        ; preds = %if.else
  %.pre = load i32, i32* %index, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.then2
  %5 = phi i32 [ %.pre, %if.else.if.end8_crit_edge ], [ %conv4, %if.then2 ]
  %keycodemax = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 15
  %6 = load i32, i32* %keycodemax, align 4
  %cmp.not = icmp ult i32 %5, %6
  br i1 %cmp.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end8
  %7 = load i32, i32* %keycodesize, align 8
  %cmp14 = icmp ult i32 %7, 4
  br i1 %cmp14, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end11
  %keycode = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 3
  %8 = load i32, i32* %keycode, align 4
  %mul = shl nuw nsw i32 %7, 3
  %shr = lshr i32 %8, %mul
  %tobool17.not = icmp eq i32 %shr, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %land.lhs.true, %if.end11
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.end19
  %keycode21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 17
  %9 = load i8*, i8** %keycode21, align 8
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv22 = zext i8 %10 to i32
  store i32 %conv22, i32* %old_keycode, align 4
  %keycode23 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 3
  %11 = load i32, i32* %keycode23, align 4
  %conv24 = trunc i32 %11 to i8
  store i8 %conv24, i8* %arrayidx, align 1
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end19
  %keycode29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 17
  %12 = bitcast i8** %keycode29 to i16**
  %13 = load i16*, i16** %12, align 8
  %idxprom30 = zext i32 %5 to i64
  %arrayidx31 = getelementptr i16, i16* %13, i64 %idxprom30
  %14 = load i16, i16* %arrayidx31, align 2
  %conv32 = zext i16 %14 to i32
  store i32 %conv32, i32* %old_keycode, align 4
  %keycode33 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 3
  %15 = load i32, i32* %keycode33, align 4
  %conv34 = trunc i32 %15 to i16
  store i16 %conv34, i16* %arrayidx31, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end19
  %keycode38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 17
  %16 = bitcast i8** %keycode38 to i32**
  %17 = load i32*, i32** %16, align 8
  %idxprom39 = zext i32 %5 to i64
  %arrayidx40 = getelementptr i32, i32* %17, i64 %idxprom39
  %18 = load i32, i32* %arrayidx40, align 4
  store i32 %18, i32* %old_keycode, align 4
  %keycode41 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 3
  %19 = load i32, i32* %keycode41, align 4
  store i32 %19, i32* %arrayidx40, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb
  %20 = load i32, i32* %old_keycode, align 4
  %cmp44 = icmp ult i32 %20, 768
  br i1 %cmp44, label %if.then46, label %if.end57

if.then46:                                        ; preds = %sw.epilog
  %rem.i = and i32 %20, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %20, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 6, i64 %idx.ext.i
  %neg.i = xor i64 %shl.i, -1
  %21 = load i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %21, %neg.i
  store i64 %and.i, i64* %add.ptr.i, align 8
  %22 = load i32, i32* %keycodemax, align 4
  %cmp48113.not = icmp eq i32 %22, 0
  br i1 %cmp48113.not, label %if.end57, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then46
  %23 = load i32, i32* %old_keycode, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %22
  br i1 %exitcond.not, label %if.end57, label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call50 = call fastcc i32 @input_fetch_keycode(%struct.input_dev* noundef %dev, i32 noundef %i.0114) #14
  %cmp51 = icmp eq i32 %call50, %23
  %inc = add nuw i32 %i.0114, 1
  br i1 %cmp51, label %if.then53, label %for.cond

if.then53:                                        ; preds = %for.body
  %rem.i100 = and i32 %23, 63
  %sh_prom.i101 = zext i32 %rem.i100 to i64
  %shl.i102 = shl nuw i64 1, %sh_prom.i101
  %div.i103 = lshr i32 %23, 6
  %idx.ext.i104 = zext i32 %div.i103 to i64
  %add.ptr.i105 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 6, i64 %idx.ext.i104
  %24 = load i64, i64* %add.ptr.i105, align 8
  %or.i = or i64 %24, %shl.i102
  store i64 %or.i, i64* %add.ptr.i105, align 8
  br label %if.end57

if.end57:                                         ; preds = %for.cond, %if.then46, %if.then53, %sw.epilog
  %keycode58 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %ke, i64 0, i32 3
  %25 = load i32, i32* %keycode58, align 4
  %rem.i106 = and i32 %25, 63
  %sh_prom.i107 = zext i32 %rem.i106 to i64
  %shl.i108 = shl nuw i64 1, %sh_prom.i107
  %div.i109 = lshr i32 %25, 6
  %idx.ext.i110 = zext i32 %div.i109 to i64
  %add.ptr.i111 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 6, i64 %idx.ext.i110
  %26 = load i64, i64* %add.ptr.i111, align 8
  %or.i112 = or i64 %shl.i108, %26
  store i64 %or.i112, i64* %add.ptr.i111, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end8, %if.else, %entry, %if.end57
  %retval.0 = phi i32 [ 0, %if.end57 ], [ -22, %entry ], [ %call, %if.else ], [ -22, %if.end8 ], [ -22, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_dev_poller_finalize(%struct.input_dev_poller* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kobject_get_path(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_attach_handler(%struct.input_dev* noundef %dev, %struct.input_handler* noundef %handler) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.input_device_id* @input_match_device(%struct.input_handler* noundef %handler, %struct.input_dev* noundef %dev) #14
  %tobool.not = icmp eq %struct.input_device_id* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %connect = getelementptr inbounds %struct.input_handler, %struct.input_handler* %handler, i64 0, i32 5
  %0 = load i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)** %connect, align 8
  %call1 = call i32 %0(%struct.input_handler* noundef %handler, %struct.input_dev* noundef %dev, %struct.input_device_id* noundef nonnull %call) #15
  switch i32 %call1, label %do.end [
    i32 -19, label %cleanup
    i32 0, label %cleanup
  ]

do.end:                                           ; preds = %if.end
  %name = getelementptr inbounds %struct.input_handler, %struct.input_handler* %handler, i64 0, i32 10
  %1 = load i8*, i8** %name, align 8
  %kobj = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40, i32 0
  %call5 = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #14
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.61, i64 0, i64 0), i8* noundef %1, i8* noundef %call5, i32 noundef %call1) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_wakeup_procfs_readers() unnamed_addr #0 {
entry:
  %0 = load i32, i32* @input_devices_state, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @input_devices_state, align 4
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @input_devices_poll_wait, i32 noundef 3, i32 noundef 1, i8* noundef null) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_unregister_device(%struct.input_dev* noundef %dev) local_unnamed_addr #0 {
entry:
  %devres_managed = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 46
  %0 = load i8, i8* %devres_managed, align 8, !range !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40, i32 1
  %1 = load %struct.device*, %struct.device** %parent, align 8
  %2 = bitcast %struct.input_dev* %dev to i8*
  %call = call i32 @devres_destroy(%struct.device* noundef %1, void (%struct.device*, i8*)* noundef nonnull @devm_input_device_unregister, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_input_device_match, i8* noundef %2) #15
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then10, !prof !11

if.then10:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/input/input.c\22; .popsection; .long 14472b - 14470b; .short 2372; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  call fastcc void @__input_unregister_device(%struct.input_dev* noundef %dev) #14
  br label %if.end18

if.else:                                          ; preds = %entry
  call fastcc void @__input_unregister_device(%struct.input_dev* noundef %dev) #14
  call fastcc void @input_put_device(%struct.input_dev* noundef %dev) #14
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__input_unregister_device(%struct.input_dev* noundef %dev) unnamed_addr #0 {
entry:
  call fastcc void @input_disconnect_device(%struct.input_dev* noundef %dev) #14
  call void @mutex_lock(%struct.mutex* noundef nonnull @input_mutex) #15
  %h_list = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 41
  %0 = bitcast %struct.list_head* %h_list to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.list_head*
  %cmp.not57 = icmp eq %struct.list_head* %h_list, %2
  br i1 %cmp.not57, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn.in.in58 = phi i8* [ %.pn, %for.body ], [ %1, %entry ]
  %handle.0.in = getelementptr i8, i8* %.pn.in.in58, i64 -40
  %handle.0 = bitcast i8* %handle.0.in to %struct.input_handle*
  %.pn.in = bitcast i8* %.pn.in.in58 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  %handler = getelementptr i8, i8* %.pn.in.in58, i64 -8
  %3 = bitcast i8* %handler to %struct.input_handler**
  %4 = load %struct.input_handler*, %struct.input_handler** %3, align 8
  %disconnect = getelementptr inbounds %struct.input_handler, %struct.input_handler* %4, i64 0, i32 6
  %5 = load void (%struct.input_handle*)*, void (%struct.input_handle*)** %disconnect, align 8
  call void %5(%struct.input_handle* noundef %handle.0) #15
  %6 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %h_list, %6
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %h_list) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !14

if.then:                                          ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/input/input.c\22; .popsection; .long 14472b - 14470b; .short 2190; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !15
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %timer = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 23
  %call37 = call i32 @del_timer_sync(%struct.timer_list* noundef %timer) #15
  %node = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 42
  call fastcc void @list_del_init(%struct.list_head* noundef %node) #14
  call fastcc void @input_wakeup_procfs_readers() #14
  call void @mutex_unlock(%struct.mutex* noundef nonnull @input_mutex) #15
  %dev38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40
  call void @device_del(%struct.device* noundef %dev38) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_register_handler(%struct.input_handler* noundef %handler) local_unnamed_addr #0 {
entry:
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* noundef nonnull @input_mutex) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %h_list = getelementptr inbounds %struct.input_handler, %struct.input_handler* %handler, i64 0, i32 12
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %h_list) #14
  %node = getelementptr inbounds %struct.input_handler, %struct.input_handler* %handler, i64 0, i32 13
  call fastcc void @list_add_tail(%struct.list_head* noundef %node, %struct.list_head* noundef nonnull @input_handler_list) #14
  %.pn20 = load i8*, i8** bitcast (%struct.list_head* @input_dev_list to i8**), align 8
  %cmp.not21 = icmp eq i8* %.pn20, bitcast (%struct.list_head* @input_dev_list to i8*)
  br i1 %cmp.not21, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %.pn22 = phi i8* [ %.pn, %for.body ], [ %.pn20, %if.end ]
  %dev.0.in = getelementptr i8, i8* %.pn22, i64 -1032
  %dev.0 = bitcast i8* %dev.0.in to %struct.input_dev*
  call fastcc void @input_attach_handler(%struct.input_dev* noundef %dev.0, %struct.input_handler* noundef %handler) #14
  %0 = bitcast i8* %.pn22 to i8**
  %.pn = load i8*, i8** %0, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @input_dev_list to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  call fastcc void @input_wakeup_procfs_readers() #14
  call void @mutex_unlock(%struct.mutex* noundef nonnull @input_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_unregister_handler(%struct.input_handler* noundef %handler) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @input_mutex) #15
  %h_list = getelementptr inbounds %struct.input_handler, %struct.input_handler* %handler, i64 0, i32 12
  %0 = bitcast %struct.list_head* %h_list to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.list_head*
  %cmp.not52 = icmp eq %struct.list_head* %h_list, %2
  br i1 %cmp.not52, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %disconnect = getelementptr inbounds %struct.input_handler, %struct.input_handler* %handler, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %.pn.in.in53 = phi i8* [ %1, %for.body.lr.ph ], [ %.pn, %for.body ]
  %handle.0.in = getelementptr i8, i8* %.pn.in.in53, i64 -56
  %handle.0 = bitcast i8* %handle.0.in to %struct.input_handle*
  %.pn.in = bitcast i8* %.pn.in.in53 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  %3 = load void (%struct.input_handle*)*, void (%struct.input_handle*)** %disconnect, align 8
  call void %3(%struct.input_handle* noundef %handle.0) #15
  %4 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %h_list, %4
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %h_list) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !14

if.then:                                          ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/input/input.c\22; .popsection; .long 14472b - 14470b; .short 2431; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %node = getelementptr inbounds %struct.input_handler, %struct.input_handler* %handler, i64 0, i32 13
  call fastcc void @list_del_init(%struct.list_head* noundef %node) #14
  call fastcc void @input_wakeup_procfs_readers() #14
  call void @mutex_unlock(%struct.mutex* noundef nonnull @input_mutex) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #14
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_handler_for_each_handle(%struct.input_handler* noundef %handler, i8* noundef %data, i32 (%struct.input_handle*, i8*)* nocapture noundef readonly %fn) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #15
  %h_list = getelementptr inbounds %struct.input_handler, %struct.input_handler* %handler, i64 0, i32 12
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %h_list.pn = phi %struct.list_head* [ %h_list, %entry ], [ %0, %for.body ]
  %.pn.in = getelementptr inbounds %struct.list_head, %struct.list_head* %h_list.pn, i64 0, i32 0
  %.pn = load volatile %struct.list_head*, %struct.list_head** %.pn.in, align 8
  %handle.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -4, i32 1
  %h_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %handle.0.in, i64 7
  %0 = bitcast %struct.list_head** %h_node to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %h_list, %0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %handle.0 = bitcast %struct.list_head** %handle.0.in to %struct.input_handle*
  %call = call i32 %fn(%struct.input_handle* noundef %handle.0, i8* noundef %data) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.end

for.end:                                          ; preds = %for.body, %for.cond
  %retval1.1 = phi i32 [ %call, %for.body ], [ 0, %for.cond ]
  call fastcc void @rcu_read_unlock() #14
  ret i32 %retval1.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_register_handle(%struct.input_handle* noundef %handle) local_unnamed_addr #0 {
entry:
  %handler1 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 4
  %0 = load %struct.input_handler*, %struct.input_handler** %handler1, align 8
  %dev2 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %1 = load %struct.input_dev*, %struct.input_dev** %dev2, align 8
  %mutex = getelementptr inbounds %struct.input_dev, %struct.input_dev* %1, i64 0, i32 37
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %mutex) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %filter = getelementptr inbounds %struct.input_handler, %struct.input_handler* %0, i64 0, i32 3
  %2 = load i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handle*, i32, i32, i32)** %filter, align 8
  %tobool3.not = icmp eq i1 (%struct.input_handle*, i32, i32, i32)* %2, null
  %d_node5 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 5
  %h_list6 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %1, i64 0, i32 41
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @list_add_rcu(%struct.list_head* noundef %d_node5, %struct.list_head* noundef %h_list6) #14
  br label %if.end7

if.else:                                          ; preds = %if.end
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %d_node5, %struct.list_head* noundef %h_list6) #14
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #15
  %h_node = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 6
  %h_list9 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %0, i64 0, i32 12
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %h_node, %struct.list_head* noundef %h_list9) #14
  %start = getelementptr inbounds %struct.input_handler, %struct.input_handler* %0, i64 0, i32 7
  %3 = load void (%struct.input_handle*)*, void (%struct.input_handle*)** %start, align 8
  %tobool10.not = icmp eq void (%struct.input_handle*)* %3, null
  br i1 %tobool10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void %3(%struct.input_handle* noundef %handle) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then11, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_unregister_handle(%struct.input_handle* nocapture noundef %handle) local_unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %0 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8
  %h_node = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 6
  call fastcc void @list_del_rcu(%struct.list_head* noundef %h_node) #14
  %mutex = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 37
  call void @mutex_lock(%struct.mutex* noundef %mutex) #15
  %d_node = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 5
  call fastcc void @list_del_rcu(%struct.list_head* noundef %d_node) #14
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #15
  call void @synchronize_rcu() #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_rcu(%struct.list_head* nocapture noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #14
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_get_new_minor(i32 noundef %legacy_base, i32 noundef %legacy_num, i1 noundef %allow_dynamic) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %legacy_base, -1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %add = add nsw i32 %legacy_base, -1
  %sub = add i32 %add, %legacy_num
  %call = call i32 @ida_alloc_range(%struct.ida* noundef nonnull @input_ida, i32 noundef %legacy_base, i32 noundef %sub, i32 noundef 3264) #15
  %cmp1 = icmp slt i32 %call, 0
  %0 = and i1 %cmp1, %allow_dynamic
  br i1 %0, label %if.end3, label %return

if.end3:                                          ; preds = %if.then, %entry
  %call4 = call i32 @ida_alloc_range(%struct.ida* noundef nonnull @input_ida, i32 noundef 256, i32 noundef 1023, i32 noundef 3264) #15
  br label %return

return:                                           ; preds = %if.then, %if.end3
  %retval.1 = phi i32 [ %call, %if.then ], [ %call4, %if.end3 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(%struct.ida* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_free_minor(i32 noundef %minor) local_unnamed_addr #0 {
entry:
  call void @ida_free(%struct.ida* noundef nonnull @input_ida, i32 noundef %minor) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(%struct.ida* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal void @input_exit() #12 section ".exit.text" {
entry:
  call fastcc void @input_proc_exit() #14
  call void @unregister_chrdev_region(i32 noundef 13631488, i32 noundef 1024) #15
  call void @class_unregister(%struct.class* noundef nonnull @input_class) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_proc_exit() unnamed_addr #0 {
entry:
  %0 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @proc_bus_input_dir, align 8
  call void @remove_proc_entry(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), %struct.proc_dir_entry* noundef %0) #15
  %1 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @proc_bus_input_dir, align 8
  call void @remove_proc_entry(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), %struct.proc_dir_entry* noundef %1) #15
  call void @remove_proc_entry(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), %struct.proc_dir_entry* noundef null) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(%struct.class* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @input_init() #12 section ".init.text" {
entry:
  %call = call i32 @__class_register(%struct.class* noundef nonnull @input_class, %struct.lock_class_key* noundef nonnull @input_init.__key) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.65, i64 0, i64 0)) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @input_proc_init() #18
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %fail1

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @register_chrdev_region(i32 noundef 13631488, i32 noundef 1024, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %do.end12

do.end12:                                         ; preds = %if.end6
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.66, i64 0, i64 0), i32 noundef 13) #17
  call fastcc void @input_proc_exit() #14
  br label %fail1

fail1:                                            ; preds = %if.end, %do.end12
  %err.0 = phi i32 [ %call3, %if.end ], [ %call7, %do.end12 ]
  call void @class_unregister(%struct.class* noundef nonnull @input_class) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %fail1, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %err.0, %fail1 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #14
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #16, !srcloc !17
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #16, !srcloc !18
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #14
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !14

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #16, !srcloc !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #16, !srcloc !20
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @input_get_disposition(%struct.input_dev* noundef %dev, i32 noundef %type, i32 noundef %code, i32* nocapture noundef %pval) unnamed_addr #0 {
entry:
  %value = alloca i32, align 4
  %0 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  %1 = load i32, i32* %pval, align 4
  store i32 %1, i32* %value, align 4
  switch i32 %type, label %sw.epilog124 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 5, label %sw.bb21
    i32 3, label %sw.bb42
    i32 2, label %sw.bb49
    i32 4, label %sw.bb57
    i32 17, label %sw.bb63
    i32 18, label %sw.bb85
    i32 20, label %sw.bb108
    i32 21, label %sw.bb119
    i32 22, label %sw.bb123
  ]

sw.bb:                                            ; preds = %entry
  switch i32 %code, label %sw.epilog124 [
    i32 1, label %sw.bb1
    i32 0, label %sw.bb2
    i32 2, label %sw.bb3
  ]

sw.bb1:                                           ; preds = %sw.bb
  br label %sw.epilog124

sw.bb2:                                           ; preds = %sw.bb
  br label %sw.epilog124

sw.bb3:                                           ; preds = %sw.bb
  br label %sw.epilog124

sw.bb4:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 6, i64 0
  %call = call fastcc i32 @is_event_supported(i32 noundef %code, i64* noundef %arraydecay, i32 noundef 767) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog124, label %if.then

if.then:                                          ; preds = %sw.bb4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %sw.epilog124, label %if.end

if.end:                                           ; preds = %if.then
  %div.i = lshr i32 %code, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 27, i64 %idxprom.i
  %2 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %code, 63
  %sh_prom.i = zext i32 %and.i to i64
  %3 = shl nuw i64 1, %sh_prom.i
  %4 = and i64 %2, %3
  %tobool8 = icmp eq i64 %4, 0
  %tobool10 = icmp ne i32 %1, 0
  %cmp15.not = xor i1 %tobool10, %tobool8
  br i1 %cmp15.not, label %sw.epilog124, label %if.then16

if.then16:                                        ; preds = %if.end
  %xor.i = xor i64 %2, %3
  store i64 %xor.i, i64* %arrayidx.i, align 8
  br label %sw.epilog124

sw.bb21:                                          ; preds = %entry
  %arraydecay22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 13, i64 0
  %call23 = call fastcc i32 @is_event_supported(i32 noundef %code, i64* noundef %arraydecay22, i32 noundef 16) #14
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %sw.epilog124, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb21
  %div.i168 = lshr i32 %code, 6
  %idxprom.i169 = zext i32 %div.i168 to i64
  %arrayidx.i170 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 30, i64 %idxprom.i169
  %5 = load volatile i64, i64* %arrayidx.i170, align 8
  %and.i171 = and i32 %code, 63
  %sh_prom.i172 = zext i32 %and.i171 to i64
  %6 = shl nuw i64 1, %sh_prom.i172
  %7 = and i64 %5, %6
  %tobool27 = icmp eq i64 %7, 0
  %tobool32 = icmp ne i32 %1, 0
  %cmp37.not = xor i1 %tobool32, %tobool27
  br i1 %cmp37.not, label %sw.epilog124, label %if.then38

if.then38:                                        ; preds = %land.lhs.true
  %xor.i181 = xor i64 %5, %6
  store i64 %xor.i181, i64* %arrayidx.i170, align 8
  br label %sw.epilog124

sw.bb42:                                          ; preds = %entry
  %arraydecay43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 8, i64 0
  %call44 = call fastcc i32 @is_event_supported(i32 noundef %code, i64* noundef %arraydecay43, i32 noundef 63) #14
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %sw.epilog124, label %if.then46

if.then46:                                        ; preds = %sw.bb42
  %call47 = call fastcc i32 @input_handle_abs_event(%struct.input_dev* noundef %dev, i32 noundef %code, i32* noundef nonnull %value) #14
  %.pre = load i32, i32* %value, align 4
  br label %sw.epilog124

sw.bb49:                                          ; preds = %entry
  %arraydecay50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 7, i64 0
  %call51 = call fastcc i32 @is_event_supported(i32 noundef %code, i64* noundef %arraydecay50, i32 noundef 15) #14
  %tobool52 = icmp ne i32 %call51, 0
  %tobool54 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool52, i1 %tobool54, i1 false
  %spec.select = zext i1 %or.cond to i32
  br label %sw.epilog124

sw.bb57:                                          ; preds = %entry
  %arraydecay58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 9, i64 0
  %call59 = call fastcc i32 @is_event_supported(i32 noundef %code, i64* noundef %arraydecay58, i32 noundef 7) #14
  %tobool60.not = icmp eq i32 %call59, 0
  %spec.select164 = select i1 %tobool60.not, i32 0, i32 3
  br label %sw.epilog124

sw.bb63:                                          ; preds = %entry
  %arraydecay64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 10, i64 0
  %call65 = call fastcc i32 @is_event_supported(i32 noundef %code, i64* noundef %arraydecay64, i32 noundef 15) #14
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %sw.epilog124, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %sw.bb63
  %div.i182 = lshr i32 %code, 6
  %idxprom.i183 = zext i32 %div.i182 to i64
  %arrayidx.i184 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 28, i64 %idxprom.i183
  %8 = load volatile i64, i64* %arrayidx.i184, align 8
  %and.i185 = and i32 %code, 63
  %sh_prom.i186 = zext i32 %and.i185 to i64
  %9 = shl nuw i64 1, %sh_prom.i186
  %10 = and i64 %8, %9
  %tobool70 = icmp eq i64 %10, 0
  %tobool75 = icmp ne i32 %1, 0
  %cmp80.not = xor i1 %tobool75, %tobool70
  br i1 %cmp80.not, label %sw.epilog124, label %if.then81

if.then81:                                        ; preds = %land.lhs.true67
  %xor.i195 = xor i64 %8, %9
  store i64 %xor.i195, i64* %arrayidx.i184, align 8
  br label %sw.epilog124

sw.bb85:                                          ; preds = %entry
  %arraydecay86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 11, i64 0
  %call87 = call fastcc i32 @is_event_supported(i32 noundef %code, i64* noundef %arraydecay86, i32 noundef 7) #14
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %sw.epilog124, label %if.then89

if.then89:                                        ; preds = %sw.bb85
  %div.i196 = lshr i32 %code, 6
  %idxprom.i197 = zext i32 %div.i196 to i64
  %arrayidx.i198 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 29, i64 %idxprom.i197
  %11 = load volatile i64, i64* %arrayidx.i198, align 8
  %and.i199 = and i32 %code, 63
  %sh_prom.i200 = zext i32 %and.i199 to i64
  %12 = shl nuw i64 1, %sh_prom.i200
  %13 = and i64 %11, %12
  %tobool92 = icmp eq i64 %13, 0
  %tobool97 = icmp ne i32 %1, 0
  %cmp102.not = xor i1 %tobool97, %tobool92
  br i1 %cmp102.not, label %sw.epilog124, label %if.then103

if.then103:                                       ; preds = %if.then89
  %xor.i209 = xor i64 %11, %12
  store i64 %xor.i209, i64* %arrayidx.i198, align 8
  br label %sw.epilog124

sw.bb108:                                         ; preds = %entry
  %cmp109 = icmp ult i32 %code, 2
  %cmp111 = icmp sgt i32 %1, -1
  %or.cond125 = select i1 %cmp109, i1 %cmp111, i1 false
  br i1 %or.cond125, label %land.lhs.true112, label %sw.epilog124

land.lhs.true112:                                 ; preds = %sw.bb108
  %idxprom = zext i32 %code to i64
  %arrayidx = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 24, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  %cmp113.not = icmp eq i32 %14, %1
  br i1 %cmp113.not, label %sw.epilog124, label %if.then114

if.then114:                                       ; preds = %land.lhs.true112
  store i32 %1, i32* %arrayidx, align 4
  br label %sw.epilog124

sw.bb119:                                         ; preds = %entry
  %cmp120.inv = icmp slt i32 %1, 0
  %spec.select165 = select i1 %cmp120.inv, i32 0, i32 3
  br label %sw.epilog124

sw.bb123:                                         ; preds = %entry
  br label %sw.epilog124

sw.epilog124:                                     ; preds = %sw.bb119, %sw.bb57, %sw.bb49, %if.then89, %if.then103, %if.then, %sw.bb108, %land.lhs.true112, %if.then114, %sw.bb85, %sw.bb63, %land.lhs.true67, %if.then81, %sw.bb42, %if.then46, %sw.bb21, %land.lhs.true, %if.then38, %sw.bb4, %if.then16, %if.end, %sw.bb1, %sw.bb2, %sw.bb3, %sw.bb, %entry, %sw.bb123
  %15 = phi i32 [ %1, %entry ], [ %1, %sw.bb123 ], [ %1, %if.then114 ], [ %1, %land.lhs.true112 ], [ %1, %sw.bb108 ], [ %1, %sw.bb85 ], [ %1, %if.then81 ], [ %1, %land.lhs.true67 ], [ %1, %sw.bb63 ], [ %.pre, %if.then46 ], [ %1, %sw.bb42 ], [ %1, %if.then38 ], [ %1, %land.lhs.true ], [ %1, %sw.bb21 ], [ %1, %if.then16 ], [ %1, %if.end ], [ %1, %sw.bb4 ], [ %1, %sw.bb ], [ %1, %sw.bb3 ], [ %1, %sw.bb2 ], [ %1, %sw.bb1 ], [ 2, %if.then ], [ %1, %sw.bb49 ], [ %1, %sw.bb57 ], [ %1, %if.then103 ], [ %1, %if.then89 ], [ %1, %sw.bb119 ]
  %disposition.0 = phi i32 [ 0, %entry ], [ 3, %sw.bb123 ], [ 3, %if.then114 ], [ 0, %land.lhs.true112 ], [ 0, %sw.bb108 ], [ 0, %sw.bb85 ], [ 3, %if.then81 ], [ 0, %land.lhs.true67 ], [ 0, %sw.bb63 ], [ %call47, %if.then46 ], [ 0, %sw.bb42 ], [ 1, %if.then38 ], [ 0, %land.lhs.true ], [ 0, %sw.bb21 ], [ 1, %if.then16 ], [ 0, %if.end ], [ 0, %sw.bb4 ], [ 0, %sw.bb ], [ 1, %sw.bb3 ], [ 9, %sw.bb2 ], [ 3, %sw.bb1 ], [ 1, %if.then ], [ %spec.select, %sw.bb49 ], [ %spec.select164, %sw.bb57 ], [ 3, %if.then103 ], [ 3, %if.then89 ], [ %spec.select165, %sw.bb119 ]
  store i32 %15, i32* %pval, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %disposition.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_input_randomness(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @input_handle_abs_event(%struct.input_dev* noundef %dev, i32 noundef %code, i32* nocapture noundef %pval) unnamed_addr #0 {
entry:
  %mt1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 25
  %0 = load %struct.input_mt*, %struct.input_mt** %mt1, align 8
  %cmp = icmp eq i32 %code, 47
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq %struct.input_mt* %0, null
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %1 = load i32, i32* %pval, align 4
  %cmp2 = icmp sgt i32 %1, -1
  br i1 %cmp2, label %land.lhs.true3, label %cleanup

land.lhs.true3:                                   ; preds = %land.lhs.true
  %num_slots = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 1
  %2 = load i32, i32* %num_slots, align 4
  %cmp4 = icmp slt i32 %1, %2
  br i1 %cmp4, label %if.then5, label %cleanup

if.then5:                                         ; preds = %land.lhs.true3
  %slot = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 2
  store i32 %1, i32* %slot, align 8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call = call fastcc i1 @input_is_mt_value(i32 noundef %code) #14
  br i1 %call, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %3 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8
  %idxprom = zext i32 %code to i64
  %value = getelementptr %struct.input_absinfo, %struct.input_absinfo* %3, i64 %idxprom, i32 0
  br label %if.end18

if.else:                                          ; preds = %if.end6
  %tobool9.not = icmp eq %struct.input_mt* %0, null
  br i1 %tobool9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.else
  %slot11 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 2
  %4 = load i32, i32* %slot11, align 8
  %idxprom12 = sext i32 %4 to i64
  %sub = add i32 %code, -48
  %idxprom14 = zext i32 %sub to i64
  %arrayidx15 = getelementptr %struct.input_mt, %struct.input_mt* %0, i64 0, i32 6, i64 %idxprom12, i32 0, i64 %idxprom14
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %if.then8
  %pold.0 = phi i32* [ %arrayidx15, %if.then10 ], [ %value, %if.then8 ]
  %tobool19.not = icmp eq i32* %pold.0, null
  br i1 %tobool19.not, label %if.end28, label %if.then20

if.then20:                                        ; preds = %if.end18
  %5 = load i32, i32* %pval, align 4
  %6 = load i32, i32* %pold.0, align 4
  %absinfo21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %7 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo21, align 8
  %idxprom22 = zext i32 %code to i64
  %fuzz = getelementptr %struct.input_absinfo, %struct.input_absinfo* %7, i64 %idxprom22, i32 3
  %8 = load i32, i32* %fuzz, align 4
  %call24 = call fastcc i32 @input_defuzz_abs_event(i32 noundef %5, i32 noundef %6, i32 noundef %8) #14
  store i32 %call24, i32* %pval, align 4
  %9 = load i32, i32* %pold.0, align 4
  %cmp25 = icmp eq i32 %9, %call24
  br i1 %cmp25, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.then20
  store i32 %call24, i32* %pold.0, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end18
  %tobool31 = icmp ne %struct.input_mt* %0, null
  %or.cond = select i1 %call, i1 %tobool31, i1 false
  br i1 %or.cond, label %land.lhs.true32, label %cleanup

land.lhs.true32:                                  ; preds = %if.end28
  %slot33 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 2
  %10 = load i32, i32* %slot33, align 8
  %call34 = call fastcc i32 @input_abs_get_val(%struct.input_dev* noundef %dev) #14
  %cmp35.not = icmp eq i32 %10, %call34
  br i1 %cmp35.not, label %cleanup, label %if.then36

if.then36:                                        ; preds = %land.lhs.true32
  call fastcc void @input_abs_set_val(%struct.input_dev* noundef %dev, i32 noundef %10) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end28, %land.lhs.true32, %if.then20, %if.then, %land.lhs.true, %land.lhs.true3, %if.then5, %if.then36
  %retval.0 = phi i32 [ 5, %if.then36 ], [ 0, %if.then5 ], [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true ], [ 0, %if.then ], [ 0, %if.then20 ], [ 1, %land.lhs.true32 ], [ 1, %if.end28 ], [ 1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @input_is_mt_value(i32 noundef %axis) unnamed_addr #9 {
entry:
  %0 = add i32 %axis, -48
  %1 = icmp ult i32 %0, 14
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @input_defuzz_abs_event(i32 noundef %value, i32 noundef %old_val, i32 noundef %fuzz) unnamed_addr #9 {
entry:
  %tobool.not = icmp eq i32 %fuzz, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %div = sdiv i32 %fuzz, 2
  %sub = sub i32 %old_val, %div
  %cmp = icmp slt i32 %sub, %value
  %add = add i32 %div, %old_val
  %cmp2 = icmp sgt i32 %add, %value
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %sub4 = sub i32 %old_val, %fuzz
  %cmp5 = icmp slt i32 %sub4, %value
  %add7 = add i32 %fuzz, %old_val
  %cmp8 = icmp sgt i32 %add7, %value
  %or.cond47 = and i1 %cmp5, %cmp8
  br i1 %or.cond47, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %mul = mul i32 %old_val, 3
  %add10 = add i32 %mul, %value
  %div11 = sdiv i32 %add10, 4
  br label %return

if.end12:                                         ; preds = %if.end
  %mul13 = shl i32 %fuzz, 1
  %sub14 = sub i32 %old_val, %mul13
  %cmp15 = icmp slt i32 %sub14, %value
  %add18 = add i32 %mul13, %old_val
  %cmp19 = icmp sgt i32 %add18, %value
  %or.cond48 = and i1 %cmp15, %cmp19
  br i1 %or.cond48, label %if.then20, label %return

if.then20:                                        ; preds = %if.end12
  %add21 = add i32 %old_val, %value
  %div22 = sdiv i32 %add21, 2
  br label %return

return:                                           ; preds = %entry, %if.end12, %if.then, %if.then20, %if.then9
  %retval.0 = phi i32 [ %div11, %if.then9 ], [ %div22, %if.then20 ], [ %old_val, %if.then ], [ %value, %if.end12 ], [ %value, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @input_abs_get_val(%struct.input_dev* nocapture noundef readonly %dev) unnamed_addr #8 {
entry:
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %0 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8
  %tobool.not = icmp eq %struct.input_absinfo* %0, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %value = getelementptr %struct.input_absinfo, %struct.input_absinfo* %0, i64 47, i32 0
  %1 = load i32, i32* %value, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_abs_set_val(%struct.input_dev* noundef %dev, i32 noundef %val) unnamed_addr #0 {
entry:
  call void @input_alloc_absinfo(%struct.input_dev* noundef %dev) #14
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %0 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8
  %tobool.not = icmp eq %struct.input_absinfo* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %value = getelementptr %struct.input_absinfo, %struct.input_absinfo* %0, i64 47, i32 0
  store i32 %val, i32* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #16, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #16, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  call void @rcu_read_unlock_strict() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 %size)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !14

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @input_to_handler(%struct.input_handle* noundef %handle, %struct.input_value* noundef %vals, i32 noundef %count) unnamed_addr #0 {
entry:
  %handler1 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 4
  %0 = load %struct.input_handler*, %struct.input_handler** %handler1, align 8
  %filter = getelementptr inbounds %struct.input_handler, %struct.input_handler* %0, i64 0, i32 3
  %1 = load i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handle*, i32, i32, i32)** %filter, align 8
  %tobool.not = icmp eq i1 (%struct.input_handle*, i32, i32, i32)* %1, null
  br i1 %tobool.not, label %if.end11, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %idx.ext = zext i32 %count to i64
  %add.ptr = getelementptr %struct.input_value, %struct.input_value* %vals, i64 %idx.ext
  %cmp.not74 = icmp eq %struct.input_value* %add.ptr, %vals
  br i1 %cmp.not74, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc.for.body_crit_edge
  %2 = phi i1 (%struct.input_handle*, i32, i32, i32)* [ %.pre, %for.inc.for.body_crit_edge ], [ %1, %for.cond.preheader ]
  %v.077 = phi %struct.input_value* [ %incdec.ptr9, %for.inc.for.body_crit_edge ], [ %vals, %for.cond.preheader ]
  %end.075 = phi %struct.input_value* [ %end.1, %for.inc.for.body_crit_edge ], [ %vals, %for.cond.preheader ]
  %type = getelementptr inbounds %struct.input_value, %struct.input_value* %v.077, i64 0, i32 0
  %3 = load i16, i16* %type, align 4
  %conv = zext i16 %3 to i32
  %code = getelementptr inbounds %struct.input_value, %struct.input_value* %v.077, i64 0, i32 1
  %4 = load i16, i16* %code, align 2
  %conv3 = zext i16 %4 to i32
  %value = getelementptr inbounds %struct.input_value, %struct.input_value* %v.077, i64 0, i32 2
  %5 = load i32, i32* %value, align 4
  %call = call i1 %2(%struct.input_handle* noundef %handle, i32 noundef %conv, i32 noundef %conv3, i32 noundef %5) #15
  br i1 %call, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %cmp5.not = icmp eq %struct.input_value* %end.075, %v.077
  br i1 %cmp5.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  %6 = bitcast %struct.input_value* %v.077 to i64*
  %7 = bitcast %struct.input_value* %end.075 to i64*
  %8 = load i64, i64* %6, align 4
  store i64 %8, i64* %7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %incdec.ptr = getelementptr %struct.input_value, %struct.input_value* %end.075, i64 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end8
  %end.1 = phi %struct.input_value* [ %end.075, %for.body ], [ %incdec.ptr, %if.end8 ]
  %incdec.ptr9 = getelementptr %struct.input_value, %struct.input_value* %v.077, i64 1
  %cmp.not = icmp eq %struct.input_value* %incdec.ptr9, %add.ptr
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handle*, i32, i32, i32)** %filter, align 8
  br label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %end.0.lcssa = phi %struct.input_value* [ %vals, %for.cond.preheader ], [ %end.1, %for.inc ]
  %sub.ptr.lhs.cast = ptrtoint %struct.input_value* %end.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.input_value* %vals to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %9 = lshr exact i64 %sub.ptr.sub, 3
  %conv10 = trunc i64 %9 to i32
  br label %if.end11

if.end11:                                         ; preds = %for.end, %entry
  %count.addr.0 = phi i32 [ %conv10, %for.end ], [ %count, %entry ]
  %tobool12.not = icmp eq i32 %count.addr.0, 0
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end11
  %events = getelementptr inbounds %struct.input_handler, %struct.input_handler* %0, i64 0, i32 2
  %10 = load void (%struct.input_handle*, %struct.input_value*, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)** %events, align 8
  %tobool15.not = icmp eq void (%struct.input_handle*, %struct.input_value*, i32)* %10, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void %10(%struct.input_handle* noundef %handle, %struct.input_value* noundef %vals, i32 noundef %count.addr.0) #15
  br label %cleanup

if.else:                                          ; preds = %if.end14
  %event = getelementptr inbounds %struct.input_handler, %struct.input_handler* %0, i64 0, i32 1
  %11 = load void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, i32, i32, i32)** %event, align 8
  %tobool18.not = icmp eq void (%struct.input_handle*, i32, i32, i32)* %11, null
  br i1 %tobool18.not, label %cleanup, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %if.else
  %idx.ext21 = zext i32 %count.addr.0 to i64
  %add.ptr22 = getelementptr %struct.input_value, %struct.input_value* %vals, i64 %idx.ext21
  %cmp23.not80 = icmp eq %struct.input_value* %add.ptr22, %vals
  br i1 %cmp23.not80, label %cleanup, label %for.body25.preheader

for.body25.preheader:                             ; preds = %for.cond20.preheader
  %type2783 = getelementptr inbounds %struct.input_value, %struct.input_value* %vals, i64 0, i32 0
  %12 = load i16, i16* %type2783, align 4
  %conv2884 = zext i16 %12 to i32
  %code2985 = getelementptr inbounds %struct.input_value, %struct.input_value* %vals, i64 0, i32 1
  %13 = load i16, i16* %code2985, align 2
  %conv3086 = zext i16 %13 to i32
  %value3187 = getelementptr inbounds %struct.input_value, %struct.input_value* %vals, i64 0, i32 2
  %14 = load i32, i32* %value3187, align 4
  call void %11(%struct.input_handle* noundef %handle, i32 noundef %conv2884, i32 noundef %conv3086, i32 noundef %14) #15
  %incdec.ptr3388 = getelementptr %struct.input_value, %struct.input_value* %vals, i64 1
  %cmp23.not89 = icmp eq %struct.input_value* %incdec.ptr3388, %add.ptr22
  br i1 %cmp23.not89, label %cleanup, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25.preheader, %for.body25.for.body25_crit_edge
  %incdec.ptr3390 = phi %struct.input_value* [ %incdec.ptr33, %for.body25.for.body25_crit_edge ], [ %incdec.ptr3388, %for.body25.preheader ]
  %.pre82 = load void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, i32, i32, i32)** %event, align 8
  %type27 = getelementptr inbounds %struct.input_value, %struct.input_value* %incdec.ptr3390, i64 0, i32 0
  %15 = load i16, i16* %type27, align 4
  %conv28 = zext i16 %15 to i32
  %code29 = getelementptr inbounds %struct.input_value, %struct.input_value* %incdec.ptr3390, i64 0, i32 1
  %16 = load i16, i16* %code29, align 2
  %conv30 = zext i16 %16 to i32
  %value31 = getelementptr inbounds %struct.input_value, %struct.input_value* %incdec.ptr3390, i64 0, i32 2
  %17 = load i32, i32* %value31, align 4
  call void %.pre82(%struct.input_handle* noundef %handle, i32 noundef %conv28, i32 noundef %conv30, i32 noundef %17) #15
  %incdec.ptr33 = getelementptr %struct.input_value, %struct.input_value* %incdec.ptr3390, i64 1
  %cmp23.not = icmp eq %struct.input_value* %incdec.ptr33, %add.ptr22
  br i1 %cmp23.not, label %cleanup, label %for.body25.for.body25_crit_edge

cleanup:                                          ; preds = %for.body25.for.body25_crit_edge, %for.body25.preheader, %for.cond20.preheader, %if.then16, %if.else, %if.end11
  ret i32 %count.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_start_autorepeat(%struct.input_dev* noundef %dev, i32 noundef %code) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %0 = load volatile i64, i64* %arraydecay, align 8
  %1 = and i64 %0, 1048576
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 24, i64 1
  %2 = load i32, i32* %arrayidx, align 4
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 24, i64 0
  %3 = load i32, i32* %arrayidx4, align 8
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true2
  %function = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 23, i32 2
  %4 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %function, align 8
  %tobool7.not = icmp eq void (%struct.timer_list*)* %4, null
  br i1 %tobool7.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true6
  %timer = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 23
  %repeat_key = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 22
  store i32 %code, i32* %repeat_key, align 8
  %5 = load volatile i64, i64* @jiffies, align 64
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %3) #15
  %add = add i64 %call2.i, %5
  %call12 = call i32 @mod_timer(%struct.timer_list* noundef %timer, i64 noundef %add) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true6, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_stop_autorepeat(%struct.input_dev* noundef %dev) unnamed_addr #0 {
entry:
  %timer = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 23
  %call = call i32 @del_timer(%struct.timer_list* noundef %timer) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(%struct.timer_list* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(%struct.timer_list* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef %size) #15
  ret i64 %call5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #15
  ret i64 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_pass_event(%struct.input_dev* noundef %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) unnamed_addr #0 {
entry:
  %vals = alloca i64, align 8, !annotation !10
  %0 = bitcast i64* %vals to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %arrayinit.begin = bitcast i64* %vals to %struct.input_value*
  %type1 = bitcast i64* %vals to i16*
  %conv = trunc i32 %type to i16
  store i16 %conv, i16* %type1, align 8
  %code2 = getelementptr inbounds %struct.input_value, %struct.input_value* %arrayinit.begin, i64 0, i32 1
  %conv3 = trunc i32 %code to i16
  store i16 %conv3, i16* %code2, align 2
  %value4 = getelementptr inbounds %struct.input_value, %struct.input_value* %arrayinit.begin, i64 0, i32 2
  store i32 %value, i32* %value4, align 4
  call fastcc void @input_pass_values(%struct.input_dev* noundef %dev, %struct.input_value* noundef nonnull %arrayinit.begin, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kasprintf(i32 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #8 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #8 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @input_dev_uevent(%struct.device* noundef %device, %struct.kobj_uevent_env* noundef %env) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %device, i64 -2, i32 29
  %0 = bitcast %struct.spinlock* %add.ptr to %struct.input_dev*
  %id = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 6
  %1 = bitcast %struct.spinlock* %id to %struct.input_id*
  %bustype = bitcast %struct.spinlock* %id to i16*
  %2 = load i16, i16* %bustype, align 8
  %conv = zext i16 %2 to i32
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %1, i64 0, i32 1
  %3 = load i16, i16* %vendor, align 2
  %conv3 = zext i16 %3 to i32
  %product = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 7
  %4 = bitcast %struct.spinlock* %product to i16*
  %5 = load i16, i16* %4, align 4
  %conv5 = zext i16 %5 to i32
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %1, i64 0, i32 3
  %6 = load i16, i16* %version, align 2
  %conv7 = zext i16 %6 to i32
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end9, label %cleanup233

do.end9:                                          ; preds = %entry
  %name = bitcast %struct.spinlock* %add.ptr to i8**
  %7 = load i8*, i8** %name, align 8
  %tobool10.not = icmp eq i8* %7, null
  br i1 %tobool10.not, label %if.end24, label %do.body12

do.body12:                                        ; preds = %do.end9
  %call15 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0), i8* noundef nonnull %7) #15
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end24, label %cleanup233

if.end24:                                         ; preds = %do.body12, %do.end9
  %phys = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 2
  %8 = bitcast %struct.spinlock* %phys to i8**
  %9 = load i8*, i8** %8, align 8
  %tobool25.not = icmp eq i8* %9, null
  br i1 %tobool25.not, label %if.end39, label %do.body27

do.body27:                                        ; preds = %if.end24
  %call30 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i8* noundef nonnull %9) #15
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end39, label %cleanup233

if.end39:                                         ; preds = %do.body27, %if.end24
  %uniq = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 4
  %10 = bitcast %struct.spinlock* %uniq to i8**
  %11 = load i8*, i8** %10, align 8
  %tobool40.not = icmp eq i8* %11, null
  br i1 %tobool40.not, label %do.body55, label %do.body42

do.body42:                                        ; preds = %if.end39
  %call45 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i8* noundef nonnull %11) #15
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body55, label %cleanup233

do.body55:                                        ; preds = %if.end39, %do.body42
  %propbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 8
  %arraydecay = bitcast %struct.spinlock* %propbit to i64*
  %call57 = call fastcc i32 @input_add_uevent_bm_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i64* noundef %arraydecay, i32 noundef 31) #14
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.body66, label %cleanup233

do.body66:                                        ; preds = %do.body55
  %evbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 10
  %arraydecay68 = bitcast %struct.spinlock* %evbit to i64*
  %call69 = call fastcc i32 @input_add_uevent_bm_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i64* noundef %arraydecay68, i32 noundef 31) #14
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %do.end77, label %cleanup233

do.end77:                                         ; preds = %do.body66
  %12 = load volatile i64, i64* %arraydecay68, align 8
  %13 = and i64 %12, 2
  %tobool81.not = icmp eq i64 %13, 0
  br i1 %tobool81.not, label %if.end95, label %do.body83

do.body83:                                        ; preds = %do.end77
  %keybit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 12
  %arraydecay85 = bitcast %struct.spinlock* %keybit to i64*
  %call86 = call fastcc i32 @input_add_uevent_bm_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i64* noundef %arraydecay85, i32 noundef 767) #14
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end95, label %cleanup233

if.end95:                                         ; preds = %do.body83, %do.end77
  %14 = load volatile i64, i64* %arraydecay68, align 8
  %15 = and i64 %14, 4
  %tobool99.not = icmp eq i64 %15, 0
  br i1 %tobool99.not, label %if.end113, label %do.body101

do.body101:                                       ; preds = %if.end95
  %relbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 36
  %arraydecay103 = bitcast %struct.spinlock* %relbit to i64*
  %call104 = call fastcc i32 @input_add_uevent_bm_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i64* noundef %arraydecay103, i32 noundef 15) #14
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end113, label %cleanup233

if.end113:                                        ; preds = %do.body101, %if.end95
  %16 = load volatile i64, i64* %arraydecay68, align 8
  %17 = and i64 %16, 8
  %tobool117.not = icmp eq i64 %17, 0
  br i1 %tobool117.not, label %if.end131, label %do.body119

do.body119:                                       ; preds = %if.end113
  %absbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 38
  %arraydecay121 = bitcast %struct.spinlock* %absbit to i64*
  %call122 = call fastcc i32 @input_add_uevent_bm_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i64* noundef %arraydecay121, i32 noundef 63) #14
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end131, label %cleanup233

if.end131:                                        ; preds = %do.body119, %if.end113
  %18 = load volatile i64, i64* %arraydecay68, align 8
  %19 = and i64 %18, 16
  %tobool135.not = icmp eq i64 %19, 0
  br i1 %tobool135.not, label %if.end149, label %do.body137

do.body137:                                       ; preds = %if.end131
  %mscbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 40
  %arraydecay139 = bitcast %struct.spinlock* %mscbit to i64*
  %call140 = call fastcc i32 @input_add_uevent_bm_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i64* noundef %arraydecay139, i32 noundef 7) #14
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end149, label %cleanup233

if.end149:                                        ; preds = %do.body137, %if.end131
  %20 = load volatile i64, i64* %arraydecay68, align 8
  %21 = and i64 %20, 131072
  %tobool153.not = icmp eq i64 %21, 0
  br i1 %tobool153.not, label %if.end167, label %do.body155

do.body155:                                       ; preds = %if.end149
  %ledbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 42
  %arraydecay157 = bitcast %struct.spinlock* %ledbit to i64*
  %call158 = call fastcc i32 @input_add_uevent_bm_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i64* noundef %arraydecay157, i32 noundef 15) #14
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end167, label %cleanup233

if.end167:                                        ; preds = %do.body155, %if.end149
  %22 = load volatile i64, i64* %arraydecay68, align 8
  %23 = and i64 %22, 262144
  %tobool171.not = icmp eq i64 %23, 0
  br i1 %tobool171.not, label %if.end185, label %do.body173

do.body173:                                       ; preds = %if.end167
  %sndbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 44
  %arraydecay175 = bitcast %struct.spinlock* %sndbit to i64*
  %call176 = call fastcc i32 @input_add_uevent_bm_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i64* noundef %arraydecay175, i32 noundef 7) #14
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end185, label %cleanup233

if.end185:                                        ; preds = %do.body173, %if.end167
  %24 = load volatile i64, i64* %arraydecay68, align 8
  %25 = and i64 %24, 2097152
  %tobool189.not = icmp eq i64 %25, 0
  br i1 %tobool189.not, label %if.end203, label %do.body191

do.body191:                                       ; preds = %if.end185
  %ffbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 46
  %arraydecay193 = bitcast %struct.spinlock* %ffbit to i64*
  %call194 = call fastcc i32 @input_add_uevent_bm_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i64* noundef %arraydecay193, i32 noundef 127) #14
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end203, label %cleanup233

if.end203:                                        ; preds = %do.body191, %if.end185
  %26 = load volatile i64, i64* %arraydecay68, align 8
  %27 = and i64 %26, 32
  %tobool207.not = icmp eq i64 %27, 0
  br i1 %tobool207.not, label %do.body222, label %do.body209

do.body209:                                       ; preds = %if.end203
  %swbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 50
  %arraydecay211 = bitcast %struct.spinlock* %swbit to i64*
  %call212 = call fastcc i32 @input_add_uevent_bm_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64* noundef %arraydecay211, i32 noundef 16) #14
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %do.body222, label %cleanup233

do.body222:                                       ; preds = %if.end203, %do.body209
  %call224 = call fastcc i32 @input_add_uevent_modalias_var(%struct.kobj_uevent_env* noundef %env, %struct.input_dev* noundef %0) #14
  br label %cleanup233

cleanup233:                                       ; preds = %do.body222, %do.body12, %do.body27, %do.body42, %do.body83, %do.body101, %do.body119, %do.body137, %do.body155, %do.body173, %do.body191, %do.body209, %do.body66, %do.body55, %entry
  %retval.26 = phi i32 [ %call212, %do.body209 ], [ %call194, %do.body191 ], [ %call176, %do.body173 ], [ %call158, %do.body155 ], [ %call140, %do.body137 ], [ %call122, %do.body119 ], [ %call104, %do.body101 ], [ %call86, %do.body83 ], [ %call69, %do.body66 ], [ %call57, %do.body55 ], [ %call45, %do.body42 ], [ %call30, %do.body27 ], [ %call15, %do.body12 ], [ %call, %entry ], [ %call224, %do.body222 ]
  ret i32 %retval.26
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @input_dev_release(%struct.device* noundef %device) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %device, i64 -2, i32 29
  %0 = bitcast %struct.spinlock* %add.ptr to i8*
  %1 = bitcast %struct.spinlock* %add.ptr to %struct.input_dev*
  call void @input_ff_destroy(%struct.input_dev* noundef %1) #15
  call void @input_mt_destroy_slots(%struct.input_dev* noundef %1) #15
  %poller = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 64
  %2 = bitcast %struct.spinlock* %poller to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #15
  %absinfo = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 82
  %4 = bitcast %struct.spinlock* %absinfo to i8**
  %5 = load i8*, i8** %4, align 8
  call void @kfree(i8* noundef %5) #15
  %vals = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 264
  %6 = bitcast %struct.spinlock* %vals to i8**
  %7 = load i8*, i8** %6, align 8
  call void @kfree(i8* noundef %7) #15
  call void @kfree(i8* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_name(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %name = bitcast %struct.spinlock* %add.ptr to i8**
  %0 = load i8*, i8** %name, align 8
  %tobool.not = icmp eq i8* %0, null
  %spec.select = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %0
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* noundef %spec.select) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_phys(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %phys = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 2
  %0 = bitcast %struct.spinlock* %phys to i8**
  %1 = load i8*, i8** %0, align 8
  %tobool.not = icmp eq i8* %1, null
  %spec.select = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %1
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* noundef %spec.select) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_uniq(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %uniq = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 4
  %0 = bitcast %struct.spinlock* %uniq to i8**
  %1 = load i8*, i8** %0, align 8
  %tobool.not = icmp eq i8* %1, null
  %spec.select = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %1
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* noundef %spec.select) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_modalias(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %0 = bitcast %struct.spinlock* %add.ptr to %struct.input_dev*
  %call = call fastcc i32 @input_print_modalias(i8* noundef %buf, i32 noundef 4096, %struct.input_dev* noundef %0, i32 noundef 1) #14
  %cmp = icmp slt i32 %call, 4096
  %cond = select i1 %cmp, i32 %call, i32 4096
  %conv4 = sext i32 %cond to i64
  ret i64 %conv4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @input_print_modalias(i8* noundef %buf, i32 noundef %size, %struct.input_dev* nocapture noundef readonly %id, i32 noundef %add_cr) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  %cond = select i1 %cmp, i32 %size, i32 0
  %conv = zext i32 %cond to i64
  %bustype = getelementptr inbounds %struct.input_dev, %struct.input_dev* %id, i64 0, i32 3, i32 0
  %0 = load i16, i16* %bustype, align 8
  %conv2 = zext i16 %0 to i32
  %vendor = getelementptr inbounds %struct.input_dev, %struct.input_dev* %id, i64 0, i32 3, i32 1
  %1 = load i16, i16* %vendor, align 2
  %conv4 = zext i16 %1 to i32
  %product = getelementptr inbounds %struct.input_dev, %struct.input_dev* %id, i64 0, i32 3, i32 2
  %2 = load i16, i16* %product, align 4
  %conv6 = zext i16 %2 to i32
  %version = getelementptr inbounds %struct.input_dev, %struct.input_dev* %id, i64 0, i32 3, i32 3
  %3 = load i16, i16* %version, align 2
  %conv8 = zext i16 %3 to i32
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef %conv, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8) #15
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %buf, i64 %idx.ext
  %sub = sub i32 %size, %call
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %id, i64 0, i32 5, i64 0
  %call9 = call fastcc i32 @input_print_modalias_bits(i8* noundef %add.ptr, i32 noundef %sub, i8 noundef 101, i64* noundef %arraydecay, i32 noundef 0, i32 noundef 31) #14
  %add = add i32 %call9, %call
  %idx.ext10 = sext i32 %add to i64
  %add.ptr11 = getelementptr i8, i8* %buf, i64 %idx.ext10
  %sub12 = sub i32 %size, %add
  %arraydecay13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %id, i64 0, i32 6, i64 0
  %call14 = call fastcc i32 @input_print_modalias_bits(i8* noundef %add.ptr11, i32 noundef %sub12, i8 noundef 107, i64* noundef %arraydecay13, i32 noundef 113, i32 noundef 767) #14
  %add15 = add i32 %add, %call14
  %idx.ext16 = sext i32 %add15 to i64
  %add.ptr17 = getelementptr i8, i8* %buf, i64 %idx.ext16
  %sub18 = sub i32 %size, %add15
  %arraydecay19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %id, i64 0, i32 7, i64 0
  %call20 = call fastcc i32 @input_print_modalias_bits(i8* noundef %add.ptr17, i32 noundef %sub18, i8 noundef 114, i64* noundef %arraydecay19, i32 noundef 0, i32 noundef 15) #14
  %add21 = add i32 %add15, %call20
  %idx.ext22 = sext i32 %add21 to i64
  %add.ptr23 = getelementptr i8, i8* %buf, i64 %idx.ext22
  %sub24 = sub i32 %size, %add21
  %arraydecay25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %id, i64 0, i32 8, i64 0
  %call26 = call fastcc i32 @input_print_modalias_bits(i8* noundef %add.ptr23, i32 noundef %sub24, i8 noundef 97, i64* noundef %arraydecay25, i32 noundef 0, i32 noundef 63) #14
  %add27 = add i32 %add21, %call26
  %idx.ext28 = sext i32 %add27 to i64
  %add.ptr29 = getelementptr i8, i8* %buf, i64 %idx.ext28
  %sub30 = sub i32 %size, %add27
  %arraydecay31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %id, i64 0, i32 9, i64 0
  %call32 = call fastcc i32 @input_print_modalias_bits(i8* noundef %add.ptr29, i32 noundef %sub30, i8 noundef 109, i64* noundef %arraydecay31, i32 noundef 0, i32 noundef 7) #14
  %add33 = add i32 %add27, %call32
  %idx.ext34 = sext i32 %add33 to i64
  %add.ptr35 = getelementptr i8, i8* %buf, i64 %idx.ext34
  %sub36 = sub i32 %size, %add33
  %arraydecay37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %id, i64 0, i32 10, i64 0
  %call38 = call fastcc i32 @input_print_modalias_bits(i8* noundef %add.ptr35, i32 noundef %sub36, i8 noundef 108, i64* noundef %arraydecay37, i32 noundef 0, i32 noundef 15) #14
  %add39 = add i32 %add33, %call38
  %idx.ext40 = sext i32 %add39 to i64
  %add.ptr41 = getelementptr i8, i8* %buf, i64 %idx.ext40
  %sub42 = sub i32 %size, %add39
  %arraydecay43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %id, i64 0, i32 11, i64 0
  %call44 = call fastcc i32 @input_print_modalias_bits(i8* noundef %add.ptr41, i32 noundef %sub42, i8 noundef 115, i64* noundef %arraydecay43, i32 noundef 0, i32 noundef 7) #14
  %add45 = add i32 %add39, %call44
  %idx.ext46 = sext i32 %add45 to i64
  %add.ptr47 = getelementptr i8, i8* %buf, i64 %idx.ext46
  %sub48 = sub i32 %size, %add45
  %arraydecay49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %id, i64 0, i32 12, i64 0
  %call50 = call fastcc i32 @input_print_modalias_bits(i8* noundef %add.ptr47, i32 noundef %sub48, i8 noundef 102, i64* noundef %arraydecay49, i32 noundef 0, i32 noundef 127) #14
  %add51 = add i32 %add45, %call50
  %idx.ext52 = sext i32 %add51 to i64
  %add.ptr53 = getelementptr i8, i8* %buf, i64 %idx.ext52
  %sub54 = sub i32 %size, %add51
  %arraydecay55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %id, i64 0, i32 13, i64 0
  %call56 = call fastcc i32 @input_print_modalias_bits(i8* noundef %add.ptr53, i32 noundef %sub54, i8 noundef 119, i64* noundef %arraydecay55, i32 noundef 0, i32 noundef 16) #14
  %add57 = add i32 %add51, %call56
  %tobool.not = icmp eq i32 %add_cr, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %idx.ext58 = sext i32 %add57 to i64
  %add.ptr59 = getelementptr i8, i8* %buf, i64 %idx.ext58
  %sub60 = sub i32 %size, %add57
  %cmp62 = icmp sgt i32 %sub60, 0
  %cond67 = select i1 %cmp62, i32 %sub60, i32 0
  %conv68 = zext i32 %cond67 to i64
  %call69 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr59, i64 noundef %conv68, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #15
  %add70 = add i32 %call69, %add57
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %len.0 = phi i32 [ %add70, %if.then ], [ %add57, %entry ]
  ret i32 %len.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @input_print_modalias_bits(i8* noundef %buf, i32 noundef %size, i8 noundef %name, i64* nocapture noundef readonly %bm, i32 noundef %min_bit, i32 noundef %max_bit) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  %cond = select i1 %cmp, i32 %size, i32 0
  %conv = zext i32 %cond to i64
  %conv1 = zext i8 %name to i32
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef %conv, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv1) #15
  %cmp234 = icmp ult i32 %min_bit, %max_bit
  br i1 %cmp234, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %len.037 = phi i32 [ %len.1, %for.inc ], [ %call, %entry ]
  %i.035 = phi i32 [ %inc, %for.inc ], [ %min_bit, %entry ]
  %i.035.frozen = freeze i32 %i.035
  %div = sdiv i32 %i.035.frozen, 64
  %0 = zext i32 %div to i64
  %arrayidx = getelementptr i64, i64* %bm, i64 %0
  %1 = load i64, i64* %arrayidx, align 8
  %2 = mul i32 %div, 64
  %rem.decomposed = sub i32 %i.035.frozen, %2
  %sh_prom = zext i32 %rem.decomposed to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %1, %shl
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %idx.ext = sext i32 %len.037 to i64
  %add.ptr = getelementptr i8, i8* %buf, i64 %idx.ext
  %sub = sub i32 %size, %len.037
  %cmp5 = icmp sgt i32 %sub, 0
  %cond10 = select i1 %cmp5, i32 %sub, i32 0
  %conv11 = zext i32 %cond10 to i64
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr, i64 noundef %conv11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 noundef %i.035) #15
  %add13 = add i32 %call12, %len.037
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %len.1 = phi i32 [ %add13, %if.then ], [ %len.037, %for.body ]
  %inc = add i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %max_bit
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %len.0.lcssa = phi i32 [ %call, %entry ], [ %len.1, %for.inc ]
  ret i32 %len.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_properties(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %propbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 8
  %arraydecay = bitcast %struct.spinlock* %propbit to i64*
  %call = call fastcc i32 @input_print_bitmap(i8* noundef %buf, i32 noundef 4096, i64* noundef %arraydecay, i32 noundef 31, i32 noundef 1) #14
  %cmp = icmp slt i32 %call, 4096
  %cond = select i1 %cmp, i32 %call, i32 4096
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @input_print_bitmap(i8* noundef %buf, i32 noundef %buf_size, i64* nocapture noundef readonly %bitmap, i32 noundef %max, i32 noundef %add_cr) unnamed_addr #0 {
entry:
  %0 = zext i32 %max to i64
  %sub = add nuw nsw i64 %0, 63
  %div = lshr i64 %sub, 6
  %1 = trunc i64 %div to i32
  %cmp85.not = icmp eq i32 %1, 0
  br i1 %cmp85.not, label %if.then28, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.088.in = phi i32 [ %i.088, %for.inc ], [ %1, %entry ]
  %len.087 = phi i32 [ %len.1, %for.inc ], [ 0, %entry ]
  %skip_empty.0.off086 = phi i1 [ %skip_empty.1.off0, %for.inc ], [ true, %entry ]
  %i.088 = add nsw i32 %i.088.in, -1
  %idx.ext = sext i32 %len.087 to i64
  %add.ptr = getelementptr i8, i8* %buf, i64 %idx.ext
  %sub4 = sub i32 %buf_size, %len.087
  %cmp5 = icmp sgt i32 %sub4, 0
  %cond = select i1 %cmp5, i32 %sub4, i32 0
  %idxprom83 = zext i32 %i.088 to i64
  %arrayidx = getelementptr i64, i64* %bitmap, i64 %idxprom83
  %2 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i32 @input_bits_to_string(i8* noundef %add.ptr, i32 noundef %cond, i64 noundef %2, i1 noundef %skip_empty.0.off086) #14
  %add7 = add i32 %call, %len.087
  %tobool8.not = icmp eq i32 %add7, 0
  br i1 %tobool8.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %cmp9.not = icmp eq i32 %i.088, 0
  br i1 %cmp9.not, label %if.end31, label %if.then11

if.then11:                                        ; preds = %if.then
  %idx.ext12 = sext i32 %add7 to i64
  %add.ptr13 = getelementptr i8, i8* %buf, i64 %idx.ext12
  %sub14 = sub i32 %buf_size, %add7
  %cmp16 = icmp sgt i32 %sub14, 0
  %cond21 = select i1 %cmp16, i32 %sub14, i32 0
  %conv22 = zext i32 %cond21 to i64
  %call23 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr13, i64 noundef %conv22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)) #15
  %add24 = add i32 %call23, %add7
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then11
  %skip_empty.1.off0 = phi i1 [ false, %if.then11 ], [ %skip_empty.0.off086, %for.body ]
  %len.1 = phi i32 [ %add24, %if.then11 ], [ 0, %for.body ]
  %cmp = icmp ugt i32 %i.088.in, 1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %cmp26 = icmp eq i32 %len.1, 0
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %entry, %for.end
  %conv29 = sext i32 %buf_size to i64
  %call30 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef %conv29, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 noundef 0) #15
  br label %if.end31

if.end31:                                         ; preds = %if.then, %if.then28, %for.end
  %len.2 = phi i32 [ %call30, %if.then28 ], [ %len.1, %for.end ], [ %add7, %if.then ]
  %tobool32.not = icmp eq i32 %add_cr, 0
  br i1 %tobool32.not, label %if.end47, label %if.then33

if.then33:                                        ; preds = %if.end31
  %idx.ext34 = sext i32 %len.2 to i64
  %add.ptr35 = getelementptr i8, i8* %buf, i64 %idx.ext34
  %sub36 = sub i32 %buf_size, %len.2
  %cmp38 = icmp sgt i32 %sub36, 0
  %cond43 = select i1 %cmp38, i32 %sub36, i32 0
  %conv44 = zext i32 %cond43 to i64
  %call45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr35, i64 noundef %conv44, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #15
  %add46 = add i32 %call45, %len.2
  br label %if.end47

if.end47:                                         ; preds = %if.then33, %if.end31
  %len.3 = phi i32 [ %add46, %if.then33 ], [ %len.2, %if.end31 ]
  ret i32 %len.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @input_bits_to_string(i8* noundef %buf, i32 noundef %buf_size, i64 noundef %bits, i1 noundef %skip_empty) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i64 %bits, 0
  %0 = and i1 %tobool.not, %skip_empty
  br i1 %0, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %conv = sext i32 %buf_size to i64
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef %conv, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 noundef %bits) #15
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @inhibited_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %inhibited = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 274
  %0 = bitcast %struct.spinlock* %inhibited to i8*
  %1 = load i8, i8* %0, align 8, !range !8
  %2 = zext i8 %1 to i32
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i32 noundef %2) #15
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @inhibited_store(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %inhibited = alloca i8, align 4
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %0 = bitcast %struct.spinlock* %add.ptr to %struct.input_dev*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %inhibited) #16
  store i8 0, i8* %inhibited, align 4, !annotation !10
  %call = call fastcc i32 @strtobool(i8* noundef %buf, i8* noundef nonnull %inhibited) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %inhibited, align 4, !range !8
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end6, label %if.end6.thread

if.end6.thread:                                   ; preds = %if.end
  call fastcc void @input_inhibit_device(%struct.input_dev* noundef %0) #14
  br label %2

if.end6:                                          ; preds = %if.end
  %call4 = call fastcc i32 @input_uninhibit_device(%struct.input_dev* noundef %0) #14
  %conv5 = sext i32 %call4 to i64
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %2, label %cleanup

2:                                                ; preds = %if.end6.thread, %if.end6
  br label %cleanup

cleanup:                                          ; preds = %2, %if.end6, %entry
  %retval.0 = phi i64 [ -22, %entry ], [ %len, %2 ], [ %conv5, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %inhibited) #16
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @strtobool(i8* noundef %s, i8* noundef %res) unnamed_addr #0 {
entry:
  %call = call i32 @kstrtobool(i8* noundef %s, i8* noundef %res) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_inhibit_device(%struct.input_dev* noundef %dev) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 37
  call void @mutex_lock(%struct.mutex* noundef %mutex) #15
  %inhibited = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 48
  %0 = load i8, i8* %inhibited, align 8, !range !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %users = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 38
  %1 = load i32, i32* %users, align 8
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end11, label %if.then2

if.then2:                                         ; preds = %if.end
  %close = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 32
  %2 = load void (%struct.input_dev*)*, void (%struct.input_dev*)** %close, align 8
  %tobool3.not = icmp eq void (%struct.input_dev*)* %2, null
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void %2(%struct.input_dev* noundef %dev) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2
  %poller = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 21
  %3 = load %struct.input_dev_poller*, %struct.input_dev_poller** %poller, align 8
  %tobool7.not = icmp eq %struct.input_dev_poller* %3, null
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @input_dev_poller_stop(%struct.input_dev_poller* noundef nonnull %3) #15
  br label %if.end11

if.end11:                                         ; preds = %if.end6, %if.then8, %if.end
  %rlock.i = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 36, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  call fastcc void @input_dev_release_keys(%struct.input_dev* noundef %dev) #14
  call fastcc void @input_dev_toggle(%struct.input_dev* noundef %dev, i1 noundef false) #14
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  store i8 1, i8* %inhibited, align 8
  br label %out

out:                                              ; preds = %entry, %if.end11
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @input_uninhibit_device(%struct.input_dev* noundef %dev) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 37
  call void @mutex_lock(%struct.mutex* noundef %mutex) #15
  %inhibited = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 48
  %0 = load i8, i8* %inhibited, align 8, !range !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %users = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 38
  %1 = load i32, i32* %users, align 8
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end14, label %if.then2

if.then2:                                         ; preds = %if.end
  %open = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 31
  %2 = load i32 (%struct.input_dev*)*, i32 (%struct.input_dev*)** %open, align 8
  %tobool3.not = icmp eq i32 (%struct.input_dev*)* %2, null
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.then2
  %call = call i32 %2(%struct.input_dev* noundef %dev) #15
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end9, label %out

if.end9:                                          ; preds = %if.then4, %if.then2
  %poller = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 21
  %3 = load %struct.input_dev_poller*, %struct.input_dev_poller** %poller, align 8
  %tobool10.not = icmp eq %struct.input_dev_poller* %3, null
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @input_dev_poller_start(%struct.input_dev_poller* noundef nonnull %3) #15
  br label %if.end14

if.end14:                                         ; preds = %if.end9, %if.then11, %if.end
  store i8 0, i8* %inhibited, align 8
  %rlock.i = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 36, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  call fastcc void @input_dev_toggle(%struct.input_dev* noundef %dev, i1 noundef true) #14
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  br label %out

out:                                              ; preds = %if.then4, %entry, %if.end14
  %ret.2 = phi i32 [ %call, %if.then4 ], [ 0, %if.end14 ], [ 0, %entry ]
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #15
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_enable() #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #16, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_id_bustype(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %id = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 6
  %bustype = bitcast %struct.spinlock* %id to i16*
  %0 = load i16, i16* %bustype, align 8
  %conv = zext i16 %0 to i32
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv) #15
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_id_vendor(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %id = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 6
  %0 = bitcast %struct.spinlock* %id to %struct.input_id*
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %0, i64 0, i32 1
  %1 = load i16, i16* %vendor, align 2
  %conv = zext i16 %1 to i32
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv) #15
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_id_product(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %product = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 7
  %0 = bitcast %struct.spinlock* %product to i16*
  %1 = load i16, i16* %0, align 4
  %conv = zext i16 %1 to i32
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv) #15
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_id_version(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %id = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 6
  %0 = bitcast %struct.spinlock* %id to %struct.input_id*
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %0, i64 0, i32 3
  %1 = load i16, i16* %version, align 2
  %conv = zext i16 %1 to i32
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv) #15
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_cap_ev(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %evbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 10
  %arraydecay = bitcast %struct.spinlock* %evbit to i64*
  %call = call fastcc i32 @input_print_bitmap(i8* noundef %buf, i32 noundef 4096, i64* noundef %arraydecay, i32 noundef 31, i32 noundef 1) #14
  %cmp = icmp slt i32 %call, 4096
  %cond = select i1 %cmp, i32 %call, i32 4096
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_cap_key(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %keybit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 12
  %arraydecay = bitcast %struct.spinlock* %keybit to i64*
  %call = call fastcc i32 @input_print_bitmap(i8* noundef %buf, i32 noundef 4096, i64* noundef %arraydecay, i32 noundef 767, i32 noundef 1) #14
  %cmp = icmp slt i32 %call, 4096
  %cond = select i1 %cmp, i32 %call, i32 4096
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_cap_rel(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %relbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 36
  %arraydecay = bitcast %struct.spinlock* %relbit to i64*
  %call = call fastcc i32 @input_print_bitmap(i8* noundef %buf, i32 noundef 4096, i64* noundef %arraydecay, i32 noundef 15, i32 noundef 1) #14
  %cmp = icmp slt i32 %call, 4096
  %cond = select i1 %cmp, i32 %call, i32 4096
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_cap_abs(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %absbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 38
  %arraydecay = bitcast %struct.spinlock* %absbit to i64*
  %call = call fastcc i32 @input_print_bitmap(i8* noundef %buf, i32 noundef 4096, i64* noundef %arraydecay, i32 noundef 63, i32 noundef 1) #14
  %cmp = icmp slt i32 %call, 4096
  %cond = select i1 %cmp, i32 %call, i32 4096
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_cap_msc(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %mscbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 40
  %arraydecay = bitcast %struct.spinlock* %mscbit to i64*
  %call = call fastcc i32 @input_print_bitmap(i8* noundef %buf, i32 noundef 4096, i64* noundef %arraydecay, i32 noundef 7, i32 noundef 1) #14
  %cmp = icmp slt i32 %call, 4096
  %cond = select i1 %cmp, i32 %call, i32 4096
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_cap_led(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %ledbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 42
  %arraydecay = bitcast %struct.spinlock* %ledbit to i64*
  %call = call fastcc i32 @input_print_bitmap(i8* noundef %buf, i32 noundef 4096, i64* noundef %arraydecay, i32 noundef 15, i32 noundef 1) #14
  %cmp = icmp slt i32 %call, 4096
  %cond = select i1 %cmp, i32 %call, i32 4096
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_cap_snd(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %sndbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 44
  %arraydecay = bitcast %struct.spinlock* %sndbit to i64*
  %call = call fastcc i32 @input_print_bitmap(i8* noundef %buf, i32 noundef 4096, i64* noundef %arraydecay, i32 noundef 7, i32 noundef 1) #14
  %cmp = icmp slt i32 %call, 4096
  %cond = select i1 %cmp, i32 %call, i32 4096
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_cap_ff(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %ffbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 46
  %arraydecay = bitcast %struct.spinlock* %ffbit to i64*
  %call = call fastcc i32 @input_print_bitmap(i8* noundef %buf, i32 noundef 4096, i64* noundef %arraydecay, i32 noundef 127, i32 noundef 1) #14
  %cmp = icmp slt i32 %call, 4096
  %cond = select i1 %cmp, i32 %call, i32 4096
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @input_dev_show_cap_sw(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -2, i32 29
  %swbit = getelementptr inbounds %struct.spinlock, %struct.spinlock* %add.ptr, i64 50
  %arraydecay = bitcast %struct.spinlock* %swbit to i64*
  %call = call fastcc i32 @input_print_bitmap(i8* noundef %buf, i32 noundef 4096, i64* noundef %arraydecay, i32 noundef 16, i32 noundef 1) #14
  %cmp = icmp slt i32 %call, 4096
  %cond = select i1 %cmp, i32 %call, i32 4096
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @input_add_uevent_bm_var(%struct.kobj_uevent_env* noundef %env, i8* noundef %name, i64* nocapture noundef readonly %bitmap, i32 noundef %max) unnamed_addr #0 {
entry:
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i64 0, i64 0), i8* noundef %name) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %buflen = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %env, i64 0, i32 4
  %0 = load i32, i32* %buflen, align 4
  %sub = add i32 %0, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr %struct.kobj_uevent_env, %struct.kobj_uevent_env* %env, i64 0, i32 3, i64 %idxprom
  %sub2 = sub i32 2048, %0
  %call4 = call fastcc i32 @input_print_bitmap(i8* noundef %arrayidx, i32 noundef %sub2, i64* noundef %bitmap, i32 noundef %max, i32 noundef 0) #14
  %conv5 = sext i32 %call4 to i64
  %1 = load i32, i32* %buflen, align 4
  %conv7 = sext i32 %1 to i64
  %sub8 = sub nsw i64 2048, %conv7
  %cmp.not = icmp ugt i64 %sub8, %conv5
  br i1 %cmp.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end
  %add = add i32 %1, %call4
  store i32 %add, i32* %buflen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -12, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @input_add_uevent_modalias_var(%struct.kobj_uevent_env* noundef %env, %struct.input_dev* nocapture noundef readonly %dev) unnamed_addr #0 {
entry:
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i64 0, i64 0)) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %buflen = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %env, i64 0, i32 4
  %0 = load i32, i32* %buflen, align 4
  %sub = add i32 %0, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr %struct.kobj_uevent_env, %struct.kobj_uevent_env* %env, i64 0, i32 3, i64 %idxprom
  %sub2 = sub i32 2048, %0
  %call4 = call fastcc i32 @input_print_modalias(i8* noundef %arrayidx, i32 noundef %sub2, %struct.input_dev* noundef %dev, i32 noundef 0) #14
  %conv5 = sext i32 %call4 to i64
  %1 = load i32, i32* %buflen, align 4
  %conv7 = sext i32 %1 to i64
  %sub8 = sub nsw i64 2048, %conv7
  %cmp.not = icmp ugt i64 %sub8, %conv5
  br i1 %cmp.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end
  %add = add i32 %1, %call4
  store i32 %add, i32* %buflen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -12, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_ff_destroy(%struct.input_dev* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_destroy_slots(%struct.input_dev* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @input_allocate_device.input_no, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @input_allocate_device.input_no, i64 0, i32 0)) #16, !srcloc !29
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @input_is_mt_axis(i32 noundef %axis) unnamed_addr #9 {
entry:
  %cmp = icmp eq i32 %axis, 47
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call = call fastcc i1 @input_is_mt_value(i32 noundef %axis) #14
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__arch_hweight64(i64 noundef %w) unnamed_addr #0 {
entry:
  %call = call i64 @__sw_hweight64(i64 noundef %w) #15
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__sw_hweight64(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @input_fetch_keycode(%struct.input_dev* nocapture noundef readonly %dev, i32 noundef %index) unnamed_addr #8 {
entry:
  %keycodesize = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 16
  %0 = load i32, i32* %keycodesize, align 8
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %keycode = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 17
  %1 = load i8*, i8** %keycode, align 8
  %idxprom = zext i32 %index to i64
  %arrayidx = getelementptr i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  br label %return

sw.bb1:                                           ; preds = %entry
  %keycode2 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 17
  %3 = bitcast i8** %keycode2 to i16**
  %4 = load i16*, i16** %3, align 8
  %idxprom3 = zext i32 %index to i64
  %arrayidx4 = getelementptr i16, i16* %4, i64 %idxprom3
  %5 = load i16, i16* %arrayidx4, align 2
  %conv5 = zext i16 %5 to i32
  br label %return

sw.default:                                       ; preds = %entry
  %keycode6 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 17
  %6 = bitcast i8** %keycode6 to i32**
  %7 = load i32*, i32** %6, align 8
  %idxprom7 = zext i32 %index to i64
  %arrayidx8 = getelementptr i32, i32* %7, i64 %idxprom7
  %8 = load i32, i32* %arrayidx8, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %8, %sw.default ], [ %conv5, %sw.bb1 ], [ %conv, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.input_device_id* @input_match_device(%struct.input_handler* noundef %handler, %struct.input_dev* noundef %dev) unnamed_addr #0 {
entry:
  %id_table = getelementptr inbounds %struct.input_handler, %struct.input_handler* %handler, i64 0, i32 11
  %0 = load %struct.input_device_id*, %struct.input_device_id** %id_table, align 8
  %match = getelementptr inbounds %struct.input_handler, %struct.input_handler* %handler, i64 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %id.0 = phi %struct.input_device_id* [ %0, %entry ], [ %incdec.ptr, %for.inc ]
  %flags = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id.0, i64 0, i32 0
  %1 = load i64, i64* %flags, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %for.body

lor.rhs:                                          ; preds = %for.cond
  %driver_info = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %id.0, i64 0, i32 15
  %2 = load i64, i64* %driver_info, align 8
  %tobool1.not = icmp eq i64 %2, 0
  br i1 %tobool1.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond, %lor.rhs
  %call = call i1 @input_match_device_id(%struct.input_dev* noundef %dev, %struct.input_device_id* noundef %id.0) #14
  br i1 %call, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %3 = load i1 (%struct.input_handler*, %struct.input_dev*)*, i1 (%struct.input_handler*, %struct.input_dev*)** %match, align 8
  %tobool2.not = icmp eq i1 (%struct.input_handler*, %struct.input_dev*)* %3, null
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call4 = call i1 %3(%struct.input_handler* noundef %handler, %struct.input_dev* noundef %dev) #15
  br i1 %call4, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %lor.lhs.false
  %incdec.ptr = getelementptr %struct.input_device_id, %struct.input_device_id* %id.0, i64 1
  br label %for.cond

cleanup:                                          ; preds = %lor.rhs, %land.lhs.true, %lor.lhs.false
  %retval.0 = phi %struct.input_device_id* [ %id.0, %lor.lhs.false ], [ %id.0, %land.lhs.true ], [ null, %lor.rhs ]
  ret %struct.input_device_id* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_disconnect_device(%struct.input_dev* noundef %dev) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 37
  call void @mutex_lock(%struct.mutex* noundef %mutex) #15
  %going_away = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 39
  store i8 1, i8* %going_away, align 4
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #15
  %rlock.i = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 36, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  call fastcc void @input_dev_release_keys(%struct.input_dev* noundef %dev) #14
  %h_list = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 41
  %0 = bitcast %struct.list_head* %h_list to i8**
  %.pn25 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn25 to %struct.list_head*
  %cmp.not26 = icmp eq %struct.list_head* %h_list, %1
  br i1 %cmp.not26, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn27 = phi i8* [ %.pn, %for.body ], [ %.pn25, %entry ]
  %open = getelementptr i8, i8* %.pn27, i64 -32
  %2 = bitcast i8* %open to i32*
  store i32 0, i32* %2, align 8
  %3 = bitcast i8* %.pn27 to i8**
  %.pn = load i8*, i8** %3, align 8
  %4 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %h_list, %4
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(%struct.timer_list* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev2, align 8
  %0 = ptrtoint %struct.list_head* %new to i64
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next13, i64 %0) #16, !srcloc !30
  %prev23 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev23, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(i8* noundef, %struct.proc_dir_entry* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(%struct.class* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @input_proc_init() unnamed_addr #12 section ".init.text" {
entry:
  %call = call %struct.proc_dir_entry* @proc_mkdir(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), %struct.proc_dir_entry* noundef null) #15
  store %struct.proc_dir_entry* %call, %struct.proc_dir_entry** @proc_bus_input_dir, align 8
  %tobool.not = icmp eq %struct.proc_dir_entry* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call %struct.proc_dir_entry* @proc_create(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), i16 noundef 0, %struct.proc_dir_entry* noundef nonnull %call, %struct.proc_ops* noundef nonnull @input_devices_proc_ops) #15
  %tobool3.not = icmp eq %struct.proc_dir_entry* %call2, null
  br i1 %tobool3.not, label %fail1, label %if.end5

if.end5:                                          ; preds = %if.end
  %0 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @proc_bus_input_dir, align 8
  %call6 = call %struct.proc_dir_entry* @proc_create(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i16 noundef 0, %struct.proc_dir_entry* noundef %0, %struct.proc_ops* noundef nonnull @input_handlers_proc_ops) #15
  %tobool7.not = icmp eq %struct.proc_dir_entry* %call6, null
  br i1 %tobool7.not, label %fail2, label %cleanup

fail2:                                            ; preds = %if.end5
  %1 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @proc_bus_input_dir, align 8
  call void @remove_proc_entry(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), %struct.proc_dir_entry* noundef %1) #15
  br label %fail1

fail1:                                            ; preds = %if.end, %fail2
  call void @remove_proc_entry(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), %struct.proc_dir_entry* noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry, %fail1
  %retval.0 = phi i32 [ -12, %fail1 ], [ -12, %entry ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8* noundef, %struct.proc_dir_entry* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, %struct.proc_ops* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @input_proc_devices_open(%struct.inode* nocapture noundef readnone %inode, %struct.file* noundef %file) #0 {
entry:
  %call = call i32 @seq_open(%struct.file* noundef %file, %struct.seq_operations* noundef nonnull @input_devices_seq_ops) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_read(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(%struct.file* noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(%struct.inode* noundef, %struct.file* noundef) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @input_proc_devices_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %wait) #0 {
entry:
  call fastcc void @poll_wait(%struct.file* noundef %file, %struct.poll_table_struct* noundef %wait) #14
  %f_version = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 14
  %0 = load i64, i64* %f_version, align 8
  %1 = load i32, i32* @input_devices_state, align 4
  %conv = sext i32 %1 to i64
  %cmp.not = icmp eq i64 %0, %conv
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  store i64 %conv, i64* %f_version, align 8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 65, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(%struct.file* noundef, %struct.seq_operations* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @input_devices_seq_start(%struct.seq_file* nocapture noundef writeonly %seq, i64* nocapture noundef readonly %pos) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %seq, i64 0, i32 11
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* noundef nonnull @input_mutex) #15
  %tobool.not = icmp eq i32 %call, 0
  %0 = bitcast i8** %private to %struct.anon.71*
  %mutex_acquired2 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %0, i64 0, i32 1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %mutex_acquired2, align 2
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  store i8 1, i8* %mutex_acquired2, align 2
  %1 = load i64, i64* %pos, align 8
  %call3 = call %struct.list_head* @seq_list_start(%struct.list_head* noundef nonnull @input_dev_list, i64 noundef %1) #15
  %2 = bitcast %struct.list_head* %call3 to i8*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call1, %if.then ], [ %2, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @input_seq_stop(%struct.seq_file* nocapture noundef readonly %seq, i8* nocapture noundef readnone %v) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %seq, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.anon.71*
  %mutex_acquired = getelementptr inbounds %struct.anon.71, %struct.anon.71* %0, i64 0, i32 1
  %1 = load i8, i8* %mutex_acquired, align 2, !range !8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @input_mutex) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @input_devices_seq_next(%struct.seq_file* nocapture noundef readnone %seq, i8* noundef %v, i64* noundef %pos) #0 {
entry:
  %call = call %struct.list_head* @seq_list_next(i8* noundef %v, %struct.list_head* noundef nonnull @input_dev_list, i64* noundef %pos) #15
  %0 = bitcast %struct.list_head* %call to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @input_devices_seq_show(%struct.seq_file* noundef %seq, i8* noundef %v) #0 {
entry:
  %add.ptr = getelementptr i8, i8* %v, i64 -1032
  %dev1 = getelementptr i8, i8* %v, i64 -488
  %kobj = bitcast i8* %dev1 to %struct.kobject*
  %call = call i8* @kobject_get_path(%struct.kobject* noundef %kobj, i32 noundef 3264) #15
  %id = getelementptr i8, i8* %v, i64 -1008
  %bustype = bitcast i8* %id to i16*
  %0 = load i16, i16* %bustype, align 8
  %conv = zext i16 %0 to i32
  %vendor = getelementptr i8, i8* %v, i64 -1006
  %1 = bitcast i8* %vendor to i16*
  %2 = load i16, i16* %1, align 2
  %conv3 = zext i16 %2 to i32
  %product = getelementptr i8, i8* %v, i64 -1004
  %3 = bitcast i8* %product to i16*
  %4 = load i16, i16* %3, align 4
  %conv5 = zext i16 %4 to i32
  %version = getelementptr i8, i8* %v, i64 -1002
  %5 = bitcast i8* %version to i16*
  %6 = load i16, i16* %5, align 2
  %conv7 = zext i16 %6 to i32
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.67, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7) #15
  %name = bitcast i8* %add.ptr to i8**
  %7 = load i8*, i8** %name, align 8
  %tobool.not = icmp eq i8* %7, null
  %spec.select = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %7
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i64 0, i64 0), i8* noundef %spec.select) #15
  %phys = getelementptr i8, i8* %v, i64 -1024
  %8 = bitcast i8* %phys to i8**
  %9 = load i8*, i8** %8, align 8
  %tobool9.not = icmp eq i8* %9, null
  %cond14 = select i1 %tobool9.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %9
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* noundef %cond14) #15
  %tobool15.not = icmp eq i8* %call, null
  %cond19 = select i1 %tobool15.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %call
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* noundef %cond19) #15
  %uniq = getelementptr i8, i8* %v, i64 -1016
  %10 = bitcast i8* %uniq to i8**
  %11 = load i8*, i8** %10, align 8
  %tobool20.not = icmp eq i8* %11, null
  %cond25 = select i1 %tobool20.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %11
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0), i8* noundef %cond25) #15
  call void @seq_puts(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i64 0, i64 0)) #15
  %h_list = getelementptr i8, i8* %v, i64 -16
  %.pn.in172 = bitcast i8* %h_list to i8**
  %.pn173 = load i8*, i8** %.pn.in172, align 8
  %cmp.not174 = icmp eq i8* %.pn173, %h_list
  br i1 %cmp.not174, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn175 = phi i8* [ %.pn, %for.body ], [ %.pn173, %entry ]
  %name34 = getelementptr i8, i8* %.pn175, i64 -24
  %12 = bitcast i8* %name34 to i8**
  %13 = load i8*, i8** %12, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0), i8* noundef %13) #15
  %.pn.in = bitcast i8* %.pn175 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  %cmp.not = icmp eq i8* %.pn, %h_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call void @seq_putc(%struct.seq_file* noundef %seq, i8 noundef 10) #15
  %propbit = getelementptr i8, i8* %v, i64 -1000
  %arraydecay = bitcast i8* %propbit to i64*
  call fastcc void @input_seq_print_bitmap(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), i64* noundef %arraydecay, i32 noundef 31) #14
  %evbit = getelementptr i8, i8* %v, i64 -992
  %arraydecay43 = bitcast i8* %evbit to i64*
  call fastcc void @input_seq_print_bitmap(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), i64* noundef %arraydecay43, i32 noundef 31) #14
  %14 = load volatile i64, i64* %arraydecay43, align 8
  %15 = and i64 %14, 2
  %tobool47.not = icmp eq i64 %15, 0
  br i1 %tobool47.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %keybit = getelementptr i8, i8* %v, i64 -984
  %arraydecay48 = bitcast i8* %keybit to i64*
  call fastcc void @input_seq_print_bitmap(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0), i64* noundef %arraydecay48, i32 noundef 767) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %16 = load volatile i64, i64* %arraydecay43, align 8
  %17 = and i64 %16, 4
  %tobool52.not = icmp eq i64 %17, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.end
  %relbit = getelementptr i8, i8* %v, i64 -888
  %arraydecay54 = bitcast i8* %relbit to i64*
  call fastcc void @input_seq_print_bitmap(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0), i64* noundef %arraydecay54, i32 noundef 15) #14
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end
  %18 = load volatile i64, i64* %arraydecay43, align 8
  %19 = and i64 %18, 8
  %tobool59.not = icmp eq i64 %19, 0
  br i1 %tobool59.not, label %if.end62, label %if.then60

if.then60:                                        ; preds = %if.end55
  %absbit = getelementptr i8, i8* %v, i64 -880
  %arraydecay61 = bitcast i8* %absbit to i64*
  call fastcc void @input_seq_print_bitmap(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i64* noundef %arraydecay61, i32 noundef 63) #14
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end55
  %20 = load volatile i64, i64* %arraydecay43, align 8
  %21 = and i64 %20, 16
  %tobool66.not = icmp eq i64 %21, 0
  br i1 %tobool66.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %if.end62
  %mscbit = getelementptr i8, i8* %v, i64 -872
  %arraydecay68 = bitcast i8* %mscbit to i64*
  call fastcc void @input_seq_print_bitmap(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0), i64* noundef %arraydecay68, i32 noundef 7) #14
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end62
  %22 = load volatile i64, i64* %arraydecay43, align 8
  %23 = and i64 %22, 131072
  %tobool73.not = icmp eq i64 %23, 0
  br i1 %tobool73.not, label %if.end76, label %if.then74

if.then74:                                        ; preds = %if.end69
  %ledbit = getelementptr i8, i8* %v, i64 -864
  %arraydecay75 = bitcast i8* %ledbit to i64*
  call fastcc void @input_seq_print_bitmap(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i64* noundef %arraydecay75, i32 noundef 15) #14
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end69
  %24 = load volatile i64, i64* %arraydecay43, align 8
  %25 = and i64 %24, 262144
  %tobool80.not = icmp eq i64 %25, 0
  br i1 %tobool80.not, label %if.end83, label %if.then81

if.then81:                                        ; preds = %if.end76
  %sndbit = getelementptr i8, i8* %v, i64 -856
  %arraydecay82 = bitcast i8* %sndbit to i64*
  call fastcc void @input_seq_print_bitmap(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i64* noundef %arraydecay82, i32 noundef 7) #14
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end76
  %26 = load volatile i64, i64* %arraydecay43, align 8
  %27 = and i64 %26, 2097152
  %tobool87.not = icmp eq i64 %27, 0
  br i1 %tobool87.not, label %if.end90, label %if.then88

if.then88:                                        ; preds = %if.end83
  %ffbit = getelementptr i8, i8* %v, i64 -848
  %arraydecay89 = bitcast i8* %ffbit to i64*
  call fastcc void @input_seq_print_bitmap(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64* noundef %arraydecay89, i32 noundef 127) #14
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end83
  %28 = load volatile i64, i64* %arraydecay43, align 8
  %29 = and i64 %28, 32
  %tobool94.not = icmp eq i64 %29, 0
  br i1 %tobool94.not, label %if.end97, label %if.then95

if.then95:                                        ; preds = %if.end90
  %swbit = getelementptr i8, i8* %v, i64 -832
  %arraydecay96 = bitcast i8* %swbit to i64*
  call fastcc void @input_seq_print_bitmap(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64* noundef %arraydecay96, i32 noundef 16) #14
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end90
  call void @seq_putc(%struct.seq_file* noundef %seq, i8 noundef 10) #15
  call void @kfree(i8* noundef %call) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #9 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.list_head* @seq_list_start(%struct.list_head* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.list_head* @seq_list_next(i8* noundef, %struct.list_head* noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(%struct.seq_file* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(%struct.seq_file* noundef, i8 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_seq_print_bitmap(%struct.seq_file* noundef %seq, i8* noundef %name, i64* nocapture noundef readonly %bitmap, i32 noundef %max) unnamed_addr #0 {
entry:
  %buf = alloca [18 x i8], align 1
  %0 = getelementptr inbounds [18 x i8], [18 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 18, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(18) %0, i8 0, i64 18, i1 false), !annotation !10
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0), i8* noundef %name) #15
  %1 = zext i32 %max to i64
  %sub = add nuw nsw i64 %1, 63
  %div = lshr i64 %sub, 6
  %2 = trunc i64 %div to i32
  %cmp22.not = icmp eq i32 %2, 0
  br i1 %cmp22.not, label %if.then9, label %for.body.outer

for.body.outer:                                   ; preds = %entry, %for.inc.thread
  %i.024.in.ph = phi i32 [ %i.024, %for.inc.thread ], [ %2, %entry ]
  %skip_empty.0.off023.ph = phi i1 [ false, %for.inc.thread ], [ true, %entry ]
  br label %for.body

for.body:                                         ; preds = %for.body.outer, %for.inc
  %i.024.in = phi i32 [ %i.024, %for.inc ], [ %i.024.in.ph, %for.body.outer ]
  %i.024 = add nsw i32 %i.024.in, -1
  %idxprom20 = zext i32 %i.024 to i64
  %arrayidx = getelementptr i64, i64* %bitmap, i64 %idxprom20
  %3 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i32 @input_bits_to_string(i8* noundef nonnull %0, i32 noundef 18, i64 noundef %3, i1 noundef %skip_empty.0.off023.ph) #14
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %for.inc, label %for.inc.thread

for.inc:                                          ; preds = %for.body
  %cmp = icmp ugt i32 %i.024.in, 1
  br i1 %cmp, label %for.body, label %for.end

for.inc.thread:                                   ; preds = %for.body
  %cmp6.not = icmp eq i32 %i.024, 0
  %cond = select i1 %cmp6.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef %cond) #15
  %cmp26 = icmp ugt i32 %i.024.in, 1
  br i1 %cmp26, label %for.body.outer, label %if.end10

for.end:                                          ; preds = %for.inc
  br i1 %skip_empty.0.off023.ph, label %if.then9, label %if.end10

if.then9:                                         ; preds = %entry, %for.end
  call void @seq_putc(%struct.seq_file* noundef %seq, i8 noundef 48) #15
  br label %if.end10

if.end10:                                         ; preds = %for.inc.thread, %if.then9, %for.end
  call void @seq_putc(%struct.seq_file* noundef %seq, i8 noundef 10) #15
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @poll_wait(%struct.file* noundef %filp, %struct.poll_table_struct* noundef %p) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.poll_table_struct* %p, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %p, i64 0, i32 0
  %0 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  %tobool1.not = icmp eq void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %0, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %0(%struct.file* noundef %filp, %struct.wait_queue_head* noundef nonnull @input_devices_poll_wait, %struct.poll_table_struct* noundef nonnull %p) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @input_proc_handlers_open(%struct.inode* nocapture noundef readnone %inode, %struct.file* noundef %file) #0 {
entry:
  %call = call i32 @seq_open(%struct.file* noundef %file, %struct.seq_operations* noundef nonnull @input_handlers_seq_ops) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @input_handlers_seq_start(%struct.seq_file* nocapture noundef writeonly %seq, i64* nocapture noundef readonly %pos) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %seq, i64 0, i32 11
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* noundef nonnull @input_mutex) #15
  %tobool.not = icmp eq i32 %call, 0
  %0 = bitcast i8** %private to %struct.anon.71*
  %mutex_acquired2 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %0, i64 0, i32 1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %mutex_acquired2, align 2
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  store i8 1, i8* %mutex_acquired2, align 2
  %1 = load i64, i64* %pos, align 8
  %conv3 = trunc i64 %1 to i16
  %pos4 = bitcast i8** %private to i16*
  store i16 %conv3, i16* %pos4, align 8
  %2 = load i64, i64* %pos, align 8
  %call5 = call %struct.list_head* @seq_list_start(%struct.list_head* noundef nonnull @input_handler_list, i64 noundef %2) #15
  %3 = bitcast %struct.list_head* %call5 to i8*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call1, %if.then ], [ %3, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @input_handlers_seq_next(%struct.seq_file* nocapture noundef writeonly %seq, i8* noundef %v, i64* noundef %pos) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %seq, i64 0, i32 11
  %0 = load i64, i64* %pos, align 8
  %1 = trunc i64 %0 to i16
  %conv = add i16 %1, 1
  %pos1 = bitcast i8** %private to i16*
  store i16 %conv, i16* %pos1, align 8
  %call = call %struct.list_head* @seq_list_next(i8* noundef %v, %struct.list_head* noundef nonnull @input_handler_list, i64* noundef %pos) #15
  %2 = bitcast %struct.list_head* %call to i8*
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @input_handlers_seq_show(%struct.seq_file* noundef %seq, i8* nocapture noundef readonly %v) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %seq, i64 0, i32 11
  %pos = bitcast i8** %private to i16*
  %0 = load i16, i16* %pos, align 8
  %conv = zext i16 %0 to i32
  %name = getelementptr i8, i8* %v, i64 -32
  %1 = bitcast i8* %name to i8**
  %2 = load i8*, i8** %1, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.86, i64 0, i64 0), i32 noundef %conv, i8* noundef %2) #15
  %filter = getelementptr i8, i8* %v, i64 -80
  %3 = bitcast i8* %filter to i1 (%struct.input_handle*, i32, i32, i32)**
  %4 = load i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handle*, i32, i32, i32)** %3, align 8
  %tobool.not = icmp eq i1 (%struct.input_handle*, i32, i32, i32)* %4, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @seq_puts(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i64 0, i64 0)) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = getelementptr i8, i8* %v, i64 -40
  %6 = load i8, i8* %5, align 8, !range !8
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %minor = getelementptr i8, i8* %v, i64 -36
  %7 = bitcast i8* %minor to i32*
  %8 = load i32, i32* %7, align 4
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i64 0, i64 0), i32 noundef %8) #15
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  call void @seq_putc(%struct.seq_file* noundef %seq, i8 noundef 10) #15
  ret i32 0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { cold nobuiltin nounwind "no-builtins" }
attributes #18 = { cold nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149483487}
!8 = !{i8 0, i8 2}
!9 = !{i64 2152769709}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2152937467}
!13 = !{i64 2152974107}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2152959152}
!16 = !{i64 2152988561}
!17 = !{i64 2149233658, i64 2149233705, i64 2149233711, i64 2149233748, i64 2149233766, i64 2149235077, i64 2149235125, i64 2149235173, i64 2149235236, i64 2149235285, i64 2149233844, i64 2149233869, i64 2149233895, i64 2149233901, i64 2149234743, i64 2149234783, i64 2149234801, i64 2149234833, i64 2149234861, i64 2149234915, i64 2149234935, i64 2149235032, i64 2149233924, i64 2149233938, i64 2149233944, i64 2149233994, i64 2149234040, i64 2149234073}
!18 = !{i64 2149235837, i64 2149235884, i64 2149235890, i64 2149235927, i64 2149235945, i64 2149236888, i64 2149236936, i64 2149236984, i64 2149237047, i64 2149237096, i64 2149236023, i64 2149236048, i64 2149236074, i64 2149236080, i64 2149236117, i64 2149236123, i64 2149236173, i64 2149236219, i64 2149236252}
!19 = !{i64 2149227955, i64 2149228002, i64 2149228008, i64 2149228045, i64 2149228063, i64 2149229404, i64 2149229452, i64 2149229500, i64 2149229563, i64 2149229612, i64 2149228141, i64 2149228166, i64 2149228192, i64 2149228198, i64 2149229070, i64 2149229110, i64 2149229128, i64 2149229160, i64 2149229188, i64 2149229242, i64 2149229262, i64 2149229359, i64 2149228221, i64 2149228235, i64 2149228241, i64 2149228291, i64 2149228337, i64 2149228370}
!20 = !{i64 2147882546, i64 2147882579, i64 2147882632, i64 2147882691, i64 2147882725, i64 2147882780, i64 2147882809, i64 2147882829}
!21 = !{i64 2149509330}
!22 = !{i64 2149452629}
!23 = !{i64 2149239671, i64 2149239718, i64 2149239724, i64 2149239761, i64 2149239779, i64 2149241090, i64 2149241138, i64 2149241186, i64 2149241249, i64 2149241298, i64 2149239857, i64 2149239882, i64 2149239908, i64 2149239914, i64 2149240756, i64 2149240796, i64 2149240814, i64 2149240846, i64 2149240874, i64 2149240928, i64 2149240948, i64 2149241045, i64 2149239937, i64 2149239951, i64 2149239957, i64 2149240007, i64 2149240053, i64 2149240086}
!24 = !{i64 2149417277}
!25 = !{i64 2149417494}
!26 = !{i64 2149487780}
!27 = !{i64 2149512633}
!28 = !{i64 2149218499, i64 2149218546, i64 2149218552, i64 2149218589, i64 2149218607, i64 2149219947, i64 2149219995, i64 2149220043, i64 2149220106, i64 2149220155, i64 2149218685, i64 2149218710, i64 2149218736, i64 2149218742, i64 2149219613, i64 2149219653, i64 2149219671, i64 2149219703, i64 2149219731, i64 2149219785, i64 2149219805, i64 2149219902, i64 2149218765, i64 2149218779, i64 2149218785, i64 2149218835, i64 2149218881, i64 2149218914}
!29 = !{i64 2147787536, i64 2147788184, i64 2147788214, i64 2147788246, i64 2147788280, i64 2147788316, i64 2147788341}
!30 = !{i64 2150873271}
