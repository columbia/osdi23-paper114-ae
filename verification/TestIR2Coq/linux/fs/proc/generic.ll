; ModuleID = 'fs/proc/generic.c'
source_filename = "fs/proc/generic.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.54, %struct.qspinlock }
%union.anon.54 = type { %struct.atomic_t }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.user_namespace = type opaque
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.53, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.6, [0 x i64] }
%struct.anon.6 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.kernel_siginfo = type { %struct.anon.8 }
%struct.anon.8 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.12 }
%struct.anon.12 = type { i32, i32, i32, i64, i64 }
%struct.pt_regs = type { %union.anon.20, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.20 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.33, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.24, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.24 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.30, %union.anon.31, i32 }
%struct.request_queue = type opaque
%union.anon.30 = type { %struct.list_head }
%union.anon.31 = type { %struct.hlist_node }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.32, i32, [12 x i8] }
%union.anon.32 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.33 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.34, %union.anon.51, %struct.atomic_t, [8 x i8] }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.51 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.52, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.52 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.53 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.48, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.49, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.48 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.49 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.7 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.7 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.58, i32 }
%union.anon.58 = type { %struct.kuid_t }
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
%union.anon.65 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.66 = type { %struct.hlist_node }
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, %union.anon.67, %struct.dentry_operations*, %union.anon.68, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }
%union.anon.67 = type { %struct.proc_ops* }
%union.anon.68 = type { %struct.seq_operations* }
%struct.anon.3 = type { i32, i32 }
%struct.proc_fs_info = type { %struct.pid_namespace*, %struct.dentry*, %struct.dentry*, %struct.kgid_t, i32, i32 }
%struct.proc_inode = type { %struct.pid*, i32, %union.proc_op, %struct.proc_dir_entry*, %struct.ctl_table_header*, %struct.ctl_table*, %struct.hlist_node, %struct.proc_ns_operations*, %struct.inode }
%union.proc_op = type { i32 (%struct.dentry*, %struct.path*)* }
%struct.ctl_table_header = type { %union.anon.69, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.nsset = type opaque

@proc_dir_entry_cache = dso_local local_unnamed_addr global %struct.kmem_cache* null, section ".data..ro_after_init", align 8
@proc_inum_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, i8* null } }, align 8
@proc_subdir_lock = internal global %struct.rwlock_t zeroinitializer, align 4
@proc_net_dentry_ops = dso_local constant %struct.dentry_operations { i32 (%struct.dentry*, i32)* @proc_net_d_revalidate, i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, %struct.qstr*)* null, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* null, i32 (%struct.dentry*)* @always_delete_dentry, i32 (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*, %struct.inode*)* null, i8* (%struct.dentry*, i8*, i32)* null, %struct.vfsmount* (%struct.path*)* null, i32 (%struct.path*, i1)* null, %struct.dentry* (%struct.dentry*, %struct.inode*)* null, [24 x i8] undef }, align 64
@.str = private unnamed_addr constant [43 x i8] c"proc_dir_entry '%s/%s' already registered\0A\00", align 1
@proc_link_inode_operations = external dso_local constant %struct.inode_operations, align 64
@proc_dir_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @generic_read_dir, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* @proc_readdir, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@proc_dir_inode_operations = internal constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @proc_lookup, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @proc_notify_change, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* @proc_getattr, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@proc_file_inode_operations = internal constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @proc_notify_change, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@proc_seq_ops = internal constant %struct.proc_ops { i32 0, i32 (%struct.inode*, %struct.file*)* @proc_seq_open, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @seq_read_iter, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i32 (%struct.inode*, %struct.file*)* @proc_seq_release, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 (%struct.file*, i64, i64, i64, i64)* null }, align 8
@proc_single_ops = internal constant %struct.proc_ops { i32 0, i32 (%struct.inode*, %struct.file*)* @proc_single_open, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @seq_read_iter, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 (%struct.file*, i64, i64, i64, i64)* null }, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"removing permanent /proc entry '%s'\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"name '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"%s: removing non-empty directory '%s/%s', leaking at least '%s'\0A\00", align 1
@__func__.remove_proc_entry = private unnamed_addr constant [18 x i8] c"remove_proc_entry\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"removing permanent /proc entry '%s/%s'\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"name len %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"name '.'\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"name '..'\0A\00", align 1
@proc_root = external dso_local global %struct.proc_dir_entry, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"create '/proc/%s' by hand\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"attempt to add to permanently empty directory\00", align 1
@proc_misc_dentry_ops = internal constant %struct.dentry_operations { i32 (%struct.dentry*, i32)* @proc_misc_d_revalidate, i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, %struct.qstr*)* null, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* null, i32 (%struct.dentry*)* @proc_misc_d_delete, i32 (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*, %struct.inode*)* null, i8* (%struct.dentry*, i8*, i32)* null, %struct.vfsmount* (%struct.path*)* null, i32 (%struct.path*, i1)* null, %struct.dentry* (%struct.dentry*, %struct.inode*)* null, [24 x i8] undef }, align 64
@init_user_ns = external dso_local global %struct.user_namespace, align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pde_free(%struct.proc_dir_entry* noundef %pde) local_unnamed_addr #0 {
entry:
  %mode = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 21
  %0 = load i16, i16* %mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -24576
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 10
  %2 = load i8*, i8** %data, align 8
  call void @kfree(i8* noundef %2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %name = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 20
  %3 = load i8*, i8** %name, align 8
  %arraydecay = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 24, i64 0
  %cmp2.not = icmp eq i8* %3, %arraydecay
  br i1 %cmp2.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @kfree(i8* noundef %3) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** @proc_dir_entry_cache, align 8
  %5 = bitcast %struct.proc_dir_entry* %pde to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %4, i8* noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_alloc_inum(i32* nocapture noundef writeonly %inum) local_unnamed_addr #0 {
entry:
  %call = call i32 @ida_alloc_range(%struct.ida* noundef nonnull @proc_inum_ida, i32 noundef 0, i32 noundef 268435455, i32 noundef 3264) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add nsw i32 %call, -268435456
  store i32 %add, i32* %inum, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(%struct.ida* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @proc_free_inum(i32 noundef %inum) local_unnamed_addr #0 {
entry:
  %sub = add i32 %inum, 268435456
  call void @ida_free(%struct.ida* noundef nonnull @proc_inum_ida, i32 noundef %sub) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(%struct.ida* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @proc_lookup_de(%struct.inode* nocapture noundef readonly %dir, %struct.dentry* noundef %dentry, %struct.proc_dir_entry* nocapture noundef readonly %de) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_read_lock() #10
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %0 = load i8*, i8** %name, align 8
  %1 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 0
  %2 = bitcast %union.anon.2* %1 to %struct.anon.3*
  %len = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2, i64 0, i32 1
  %3 = load i32, i32* %len, align 4
  %call = call fastcc %struct.proc_dir_entry* @pde_subdir_find(%struct.proc_dir_entry* noundef %de, i8* noundef %0, i32 noundef %3) #10
  %tobool.not = icmp eq %struct.proc_dir_entry* %call, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @pde_get(%struct.proc_dir_entry* noundef nonnull %call) #10
  call fastcc void @__raw_read_unlock() #10
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 6
  %4 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call2 = call %struct.inode* @proc_get_inode(%struct.super_block* noundef %4, %struct.proc_dir_entry* noundef nonnull %call) #9
  %tobool3.not = icmp eq %struct.inode* %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef -12) #10
  %5 = bitcast i8* %call5 to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %if.then
  %proc_dops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 7
  %6 = load %struct.dentry_operations*, %struct.dentry_operations** %proc_dops, align 8
  call void @d_set_d_op(%struct.dentry* noundef %dentry, %struct.dentry_operations* noundef %6) #9
  %call6 = call %struct.dentry* @d_splice_alias(%struct.inode* noundef nonnull %call2, %struct.dentry* noundef %dentry) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  call fastcc void @__raw_read_unlock() #10
  %call8 = call fastcc i8* @ERR_PTR(i64 noundef -2) #10
  %7 = bitcast i8* %call8 to %struct.dentry*
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end, %if.then4
  %retval.0 = phi %struct.dentry* [ %call6, %if.end ], [ %5, %if.then4 ], [ %7, %if.end7 ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !7
  call fastcc void @queued_read_lock() #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.proc_dir_entry* @pde_subdir_find(%struct.proc_dir_entry* nocapture noundef readonly %dir, i8* noundef %name, i32 noundef %len) unnamed_addr #0 {
entry:
  %rb_node = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %dir, i64 0, i32 18, i32 0
  %node.021 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not22 = icmp eq %struct.rb_node* %node.021, null
  br i1 %tobool.not22, label %cleanup6, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %node.023 = phi %struct.rb_node* [ %node.0, %cleanup ], [ %node.021, %entry ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %node.023, i64 -6, i32 1
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.proc_dir_entry*
  %call = call fastcc i32 @proc_match(i8* noundef %name, %struct.proc_dir_entry* noundef %0, i32 noundef %len) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.023, i64 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %while.body
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %cleanup6.loopexit.split.loop.exit, label %if.then2

if.then2:                                         ; preds = %if.else
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.023, i64 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then2
  %node.1.in = phi %struct.rb_node** [ %rb_left, %if.then ], [ %rb_right, %if.then2 ]
  %node.0 = load %struct.rb_node*, %struct.rb_node** %node.1.in, align 8
  %tobool.not = icmp eq %struct.rb_node* %node.0, null
  br i1 %tobool.not, label %cleanup6, label %while.body

cleanup6.loopexit.split.loop.exit:                ; preds = %if.else
  %1 = bitcast %struct.rb_node** %add.ptr to %struct.proc_dir_entry*
  br label %cleanup6

cleanup6:                                         ; preds = %cleanup, %cleanup6.loopexit.split.loop.exit, %entry
  %retval.2 = phi %struct.proc_dir_entry* [ null, %entry ], [ %1, %cleanup6.loopexit.split.loop.exit ], [ null, %cleanup ]
  ret %struct.proc_dir_entry* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pde_get(%struct.proc_dir_entry* noundef %pde) unnamed_addr #0 {
entry:
  %refcnt = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 1
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refcnt) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @queued_read_unlock() #10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @proc_get_inode(%struct.super_block* noundef, %struct.proc_dir_entry* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #3 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(%struct.dentry* noundef, %struct.dentry_operations* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_splice_alias(%struct.inode* noundef, %struct.dentry* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @proc_lookup(%struct.inode* noundef readonly %dir, %struct.dentry* noundef %dentry, i32 %flags) #0 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call = call fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* noundef %0) #10
  %pidonly = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call, i64 0, i32 5
  %1 = load i32, i32* %pidonly, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -2) #10
  %2 = bitcast i8* %call1 to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %dir) #10
  %call3 = call %struct.dentry* @proc_lookup_de(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, %struct.proc_dir_entry* noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.dentry* [ %2, %if.then ], [ %call3, %if.end ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #4 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = bitcast i8** %s_fs_info to %struct.proc_fs_info**
  %1 = load %struct.proc_fs_info*, %struct.proc_fs_info** %0, align 8
  ret %struct.proc_fs_info* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef readonly %inode) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #10
  %pde = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call, i64 0, i32 3
  %0 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %pde, align 8
  ret %struct.proc_dir_entry* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_readdir_de(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx, %struct.proc_dir_entry* noundef %de) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @dir_emit_dots(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #10
  br i1 %call, label %if.end, label %cleanup17

if.end:                                           ; preds = %entry
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %0 = load i64, i64* %pos, align 8
  call fastcc void @__raw_read_lock() #10
  %call1 = call fastcc %struct.proc_dir_entry* @pde_subdir_first(%struct.proc_dir_entry* noundef %de) #10
  %tobool.not39 = icmp eq %struct.proc_dir_entry* %call1, null
  br i1 %tobool.not39, label %if.then2, label %if.end3.preheader

if.end3.preheader:                                ; preds = %if.end
  %1 = trunc i64 %0 to i32
  %conv = add i32 %1, -2
  br label %if.end3

if.then2:                                         ; preds = %if.end6, %if.end
  call fastcc void @__raw_read_unlock() #10
  br label %cleanup17

if.end3:                                          ; preds = %if.end3.preheader, %if.end6
  %i.041 = phi i32 [ %dec, %if.end6 ], [ %conv, %if.end3.preheader ]
  %de.addr.040 = phi %struct.proc_dir_entry* [ %call7, %if.end6 ], [ %call1, %if.end3.preheader ]
  %tobool4.not = icmp eq i32 %i.041, 0
  br i1 %tobool4.not, label %do.body, label %if.end6

if.end6:                                          ; preds = %if.end3
  %call7 = call fastcc %struct.proc_dir_entry* @pde_subdir_next(%struct.proc_dir_entry* noundef nonnull %de.addr.040) #10
  %dec = add i32 %i.041, -1
  %tobool.not = icmp eq %struct.proc_dir_entry* %call7, null
  br i1 %tobool.not, label %if.then2, label %if.end3

do.body:                                          ; preds = %if.end3, %do.cond
  %de.addr.1 = phi %struct.proc_dir_entry* [ %call15, %do.cond ], [ %de.addr.040, %if.end3 ]
  call fastcc void @pde_get(%struct.proc_dir_entry* noundef nonnull %de.addr.1) #10
  call fastcc void @__raw_read_unlock() #10
  %name = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de.addr.1, i64 0, i32 20
  %2 = load i8*, i8** %name, align 8
  %namelen = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de.addr.1, i64 0, i32 23
  %3 = load i8, i8* %namelen, align 1
  %conv8 = zext i8 %3 to i32
  %low_ino = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de.addr.1, i64 0, i32 12
  %4 = load i32, i32* %low_ino, align 4
  %conv9 = zext i32 %4 to i64
  %mode = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de.addr.1, i64 0, i32 21
  %5 = load i16, i16* %mode, align 8
  %6 = lshr i16 %5, 12
  %7 = zext i16 %6 to i32
  %call11 = call fastcc i1 @dir_emit(%struct.dir_context* noundef %ctx, i8* noundef %2, i32 noundef %conv8, i64 noundef %conv9, i32 noundef %7) #10
  br i1 %call11, label %do.cond, label %cleanup

cleanup:                                          ; preds = %do.body
  call void @pde_put(%struct.proc_dir_entry* noundef nonnull %de.addr.1) #10
  br label %cleanup17

do.cond:                                          ; preds = %do.body
  %8 = load i64, i64* %pos, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %pos, align 8
  call fastcc void @__raw_read_lock() #10
  %call15 = call fastcc %struct.proc_dir_entry* @pde_subdir_next(%struct.proc_dir_entry* noundef nonnull %de.addr.1) #10
  call void @pde_put(%struct.proc_dir_entry* noundef nonnull %de.addr.1) #10
  %tobool16.not = icmp eq %struct.proc_dir_entry* %call15, null
  br i1 %tobool16.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  call fastcc void @__raw_read_unlock() #10
  br label %cleanup17

cleanup17:                                        ; preds = %cleanup, %entry, %do.end, %if.then2
  %retval.2 = phi i32 [ 1, %do.end ], [ 0, %cleanup ], [ 0, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dots(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %0 = load i64, i64* %pos, align 8
  switch i64 %0, label %return [
    i64 0, label %if.then
    i64 1, label %if.then6
  ]

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @dir_emit_dot(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #10
  br i1 %call, label %if.end3.thread, label %return

if.end3.thread:                                   ; preds = %if.then
  store i64 1, i64* %pos, align 8
  br label %if.then6

if.then6:                                         ; preds = %entry, %if.end3.thread
  %call7 = call fastcc i1 @dir_emit_dotdot(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #10
  br i1 %call7, label %if.end9, label %return

if.end9:                                          ; preds = %if.then6
  store i64 2, i64* %pos, align 8
  br label %return

return:                                           ; preds = %entry, %if.end9, %if.then6, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then6 ], [ true, %if.end9 ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.proc_dir_entry* @pde_subdir_first(%struct.proc_dir_entry* noundef %dir) unnamed_addr #0 {
entry:
  %subdir = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %dir, i64 0, i32 18
  %call = call %struct.rb_node* @rb_first(%struct.rb_root* noundef %subdir) #9
  %tobool.not = icmp eq %struct.rb_node* %call, null
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %call, i64 -6, i32 1
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.proc_dir_entry*
  %cond = select i1 %tobool.not, %struct.proc_dir_entry* null, %struct.proc_dir_entry* %0
  ret %struct.proc_dir_entry* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.proc_dir_entry* @pde_subdir_next(%struct.proc_dir_entry* noundef %dir) unnamed_addr #0 {
entry:
  %subdir_node = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %dir, i64 0, i32 19
  %call = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %subdir_node) #9
  %tobool.not = icmp eq %struct.rb_node* %call, null
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %call, i64 -6, i32 1
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.proc_dir_entry*
  %cond = select i1 %tobool.not, %struct.proc_dir_entry* null, %struct.proc_dir_entry* %0
  ret %struct.proc_dir_entry* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit(%struct.dir_context* noundef %ctx, i8* noundef %name, i32 noundef %namelen, i64 noundef %ino, i32 noundef %type) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %call = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef %name, i32 noundef %namelen, i64 noundef %1, i64 noundef %ino, i32 noundef %type) #9
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pde_put(%struct.proc_dir_entry* noundef %pde) local_unnamed_addr #0 {
entry:
  %refcnt = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 1
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %refcnt) #10
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %low_ino = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 12
  %0 = load i32, i32* %low_ino, align 4
  call void @proc_free_inum(i32 noundef %0) #10
  call void @pde_free(%struct.proc_dir_entry* noundef %pde) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_readdir(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #10
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call1 = call fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* noundef %0) #10
  %pidonly = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call1, i64 0, i32 5
  %1 = load i32, i32* %pidonly, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #10
  %call3 = call i32 @proc_readdir_de(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, %struct.proc_dir_entry* noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #4 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @proc_net_d_revalidate(%struct.dentry* nocapture noundef readnone %dentry, i32 noundef %flags) #3 {
entry:
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @always_delete_dentry(%struct.dentry* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry* noundef %dir, %struct.proc_dir_entry* noundef %dp) local_unnamed_addr #0 {
entry:
  %low_ino = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %dp, i64 0, i32 12
  %call = call i32 @proc_alloc_inum(i32* noundef %low_ino) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %out_free_entry

if.end:                                           ; preds = %entry
  call fastcc void @__raw_write_lock() #10
  %parent = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %dp, i64 0, i32 17
  store %struct.proc_dir_entry* %dir, %struct.proc_dir_entry** %parent, align 8
  %call1 = call fastcc i1 @pde_subdir_insert(%struct.proc_dir_entry* noundef %dir, %struct.proc_dir_entry* noundef %dp) #10
  br i1 %call1, label %if.end24, label %do.end

do.end:                                           ; preds = %if.end
  %name = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %dir, i64 0, i32 20
  %0 = load i8*, i8** %name, align 8
  %name10 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %dp, i64 0, i32 20
  %1 = load i8*, i8** %name10, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* noundef %0, i8* noundef %1) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/generic.c\22; .popsection; .long 14472b - 14470b; .short 377; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !9
  call fastcc void @__raw_write_unlock() #10
  %2 = load i32, i32* %low_ino, align 4
  call void @proc_free_inum(i32 noundef %2) #10
  br label %out_free_entry

if.end24:                                         ; preds = %if.end
  %nlink = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %dir, i64 0, i32 13
  %3 = load i32, i32* %nlink, align 8
  %inc = add i32 %3, 1
  store i32 %inc, i32* %nlink, align 8
  call fastcc void @__raw_write_unlock() #10
  br label %return

out_free_entry:                                   ; preds = %entry, %do.end
  call void @pde_free(%struct.proc_dir_entry* noundef %dp) #10
  br label %return

return:                                           ; preds = %out_free_entry, %if.end24
  %retval.0 = phi %struct.proc_dir_entry* [ null, %out_free_entry ], [ %dp, %if.end24 ]
  ret %struct.proc_dir_entry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  call fastcc void @queued_write_lock() #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @pde_subdir_insert(%struct.proc_dir_entry* noundef %dir, %struct.proc_dir_entry* noundef %de) unnamed_addr #0 {
entry:
  %subdir = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %dir, i64 0, i32 18
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %subdir, i64 0, i32 0
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not33 = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not33, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %name = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 20
  %namelen = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 23
  br label %while.body

while.cond:                                       ; preds = %while.body
  %1 = load %struct.rb_node*, %struct.rb_node** %new.2, align 8
  %tobool.not = icmp eq %struct.rb_node* %1, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %2 = phi %struct.rb_node* [ %0, %while.body.lr.ph ], [ %1, %while.cond ]
  %new.034 = phi %struct.rb_node** [ %rb_node, %while.body.lr.ph ], [ %new.2, %while.cond ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %2, i64 -6, i32 1
  %3 = bitcast %struct.rb_node** %add.ptr to %struct.proc_dir_entry*
  %4 = load i8*, i8** %name, align 8
  %5 = load i8, i8* %namelen, align 1
  %conv = zext i8 %5 to i32
  %call = call fastcc i32 @proc_match(i8* noundef %4, %struct.proc_dir_entry* noundef %3, i32 noundef %conv) #10
  %6 = load %struct.rb_node*, %struct.rb_node** %new.034, align 8
  %cmp = icmp slt i32 %call, 0
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %6, i64 0, i32 2
  %cmp2.not = icmp eq i32 %call, 0
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %6, i64 0, i32 1
  %spec.select = select i1 %cmp2.not, %struct.rb_node** %new.034, %struct.rb_node** %rb_right
  %not.cmp2.not = xor i1 %cmp2.not, true
  %new.2 = select i1 %cmp, %struct.rb_node** %rb_left, %struct.rb_node** %spec.select
  %cond = or i1 %cmp, %not.cmp2.not
  br i1 %cond, label %while.cond, label %cleanup9

while.end:                                        ; preds = %while.cond, %entry
  %parent.0.lcssa = phi %struct.rb_node* [ null, %entry ], [ %6, %while.cond ]
  %new.0.lcssa = phi %struct.rb_node** [ %rb_node, %entry ], [ %new.2, %while.cond ]
  %subdir_node = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 19
  call fastcc void @rb_link_node(%struct.rb_node* noundef %subdir_node, %struct.rb_node* noundef %parent.0.lcssa, %struct.rb_node** noundef %new.0.lcssa) #10
  call void @rb_insert_color(%struct.rb_node* noundef %subdir_node, %struct.rb_root* noundef %subdir) #9
  br label %cleanup9

cleanup9:                                         ; preds = %while.body, %while.end
  %tobool.not30 = phi i1 [ true, %while.end ], [ false, %while.body ]
  ret i1 %tobool.not30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_unlock() unnamed_addr #0 {
entry:
  call fastcc void @queued_write_unlock() #10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.proc_dir_entry* @proc_symlink(i8* noundef %name, %struct.proc_dir_entry* noundef %parent, i8* noundef %dest) local_unnamed_addr #0 {
entry:
  %parent.addr = alloca %struct.proc_dir_entry*, align 8
  store %struct.proc_dir_entry* %parent, %struct.proc_dir_entry** %parent.addr, align 8
  %call = call fastcc %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry** noundef nonnull %parent.addr, i8* noundef %name, i16 noundef -24065, i32 noundef 1) #10
  %tobool.not = icmp eq %struct.proc_dir_entry* %call, null
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @strlen(i8* noundef %dest) #9
  %size = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 16
  store i64 %call1, i64* %size, align 8
  %add = add i64 %call1, 1
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %add, i32 noundef 3264) #9
  %data = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 10
  store i8* %call10.i, i8** %data, align 8
  %tobool4.not = icmp eq i8* %call10.i, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %call7 = call i8* @strcpy(i8* noundef nonnull %call10.i, i8* noundef %dest) #9
  %proc_iops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 5
  store %struct.inode_operations* @proc_link_inode_operations, %struct.inode_operations** %proc_iops, align 8
  %0 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent.addr, align 8
  %call8 = call %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry* noundef %0, %struct.proc_dir_entry* noundef nonnull %call) #10
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @pde_free(%struct.proc_dir_entry* noundef nonnull %call) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.else, %entry
  %ent.0 = phi %struct.proc_dir_entry* [ %call8, %if.then5 ], [ null, %if.else ], [ null, %entry ]
  ret %struct.proc_dir_entry* %ent.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry** nocapture noundef %parent, i8* noundef %name, i16 noundef %mode, i32 noundef %nlink) unnamed_addr #0 {
entry:
  %fn = alloca i8*, align 8
  %qstr = alloca %struct.qstr, align 8
  %0 = bitcast i8** %fn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* null, i8** %fn, align 8, !annotation !12
  %1 = bitcast %struct.qstr* %qstr to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #11
  %2 = getelementptr inbounds %struct.qstr, %struct.qstr* %qstr, i64 0, i32 0, i32 0, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %call = call fastcc i32 @xlate_proc_name(i8* noundef %name, %struct.proc_dir_entry** noundef %parent, i8** noundef nonnull %fn) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %fn, align 8
  %name1 = getelementptr inbounds %struct.qstr, %struct.qstr* %qstr, i64 0, i32 1
  store i8* %3, i8** %name1, align 8
  %call2 = call i64 @strlen(i8* noundef %3) #9
  %conv = trunc i64 %call2 to i32
  %4 = bitcast %struct.qstr* %qstr to %struct.anon.3*
  %len = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4, i64 0, i32 1
  store i32 %conv, i32* %len, align 4
  %5 = add i32 %conv, -256
  %6 = icmp ult i32 %5, -255
  br i1 %6, label %do.end, label %if.end29

do.end:                                           ; preds = %if.end
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/generic.c\22; .popsection; .long 14472b - 14470b; .short 406; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !13
  br label %cleanup

if.end29:                                         ; preds = %if.end
  switch i32 %conv, label %if.end108 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true69
  ]

land.lhs.true:                                    ; preds = %if.end29
  %7 = load i8, i8* %3, align 1
  %cmp34 = icmp eq i8 %7, 46
  br i1 %cmp34, label %do.end50, label %if.end108

do.end50:                                         ; preds = %land.lhs.true
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/generic.c\22; .popsection; .long 14472b - 14470b; .short 410; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !14
  br label %cleanup

land.lhs.true69:                                  ; preds = %if.end29
  %8 = load i8, i8* %3, align 1
  %cmp72 = icmp eq i8 %8, 46
  br i1 %cmp72, label %land.lhs.true74, label %if.end108

land.lhs.true74:                                  ; preds = %land.lhs.true69
  %arrayidx75 = getelementptr i8, i8* %3, i64 1
  %9 = load i8, i8* %arrayidx75, align 1
  %cmp77 = icmp eq i8 %9, 46
  br i1 %cmp77, label %do.end93, label %if.end108

do.end93:                                         ; preds = %land.lhs.true74
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/generic.c\22; .popsection; .long 14472b - 14470b; .short 414; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !15
  br label %cleanup

if.end108:                                        ; preds = %if.end29, %land.lhs.true, %land.lhs.true74, %land.lhs.true69
  %10 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent, align 8
  %cmp109 = icmp eq %struct.proc_dir_entry* %10, @proc_root
  br i1 %cmp109, label %land.lhs.true111, label %if.end145

land.lhs.true111:                                 ; preds = %if.end108
  %call112 = call i32 @name_to_int(%struct.qstr* noundef nonnull %qstr) #9
  %cmp113.not = icmp eq i32 %call112, -1
  br i1 %cmp113.not, label %land.lhs.true111.if.end145_crit_edge, label %do.end129

land.lhs.true111.if.end145_crit_edge:             ; preds = %land.lhs.true111
  %.pre = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent, align 8
  br label %if.end145

do.end129:                                        ; preds = %land.lhs.true111
  %11 = load i8*, i8** %name1, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* noundef %11) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/generic.c\22; .popsection; .long 14472b - 14470b; .short 418; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !16
  br label %cleanup

if.end145:                                        ; preds = %land.lhs.true111.if.end145_crit_edge, %if.end108
  %12 = phi %struct.proc_dir_entry* [ %.pre, %land.lhs.true111.if.end145_crit_edge ], [ %10, %if.end108 ]
  %call146 = call fastcc i1 @is_empty_pde(%struct.proc_dir_entry* noundef %12) #10
  br i1 %call146, label %do.end161, label %if.end176

do.end161:                                        ; preds = %if.end145
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0)) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/generic.c\22; .popsection; .long 14472b - 14470b; .short 422; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !17
  br label %cleanup

if.end176:                                        ; preds = %if.end145
  %13 = load %struct.kmem_cache*, %struct.kmem_cache** @proc_dir_entry_cache, align 8
  %call177 = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %13) #10
  %14 = bitcast i8* %call177 to %struct.proc_dir_entry*
  %tobool178.not = icmp eq i8* %call177, null
  br i1 %tobool178.not, label %cleanup, label %if.end180

if.end180:                                        ; preds = %if.end176
  %15 = load i32, i32* %len, align 4
  %add = add i32 %15, 1
  %cmp183 = icmp ult i32 %add, 17
  br i1 %cmp183, label %if.then185, label %if.end9.i

if.then185:                                       ; preds = %if.end180
  %inline_name = getelementptr inbounds i8, i8* %call177, i64 172
  %name186 = getelementptr inbounds i8, i8* %call177, i64 160
  %16 = bitcast i8* %name186 to i8**
  store i8* %inline_name, i8** %16, align 8
  br label %if.end196

if.end9.i:                                        ; preds = %if.end180
  %conv182 = zext i32 %add to i64
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %conv182, i32 noundef 3264) #9
  %name191 = getelementptr inbounds i8, i8* %call177, i64 160
  %17 = bitcast i8* %name191 to i8**
  store i8* %call10.i, i8** %17, align 8
  %tobool193.not = icmp eq i8* %call10.i, null
  br i1 %tobool193.not, label %if.then194, label %kmalloc.exit.if.end196_crit_edge

kmalloc.exit.if.end196_crit_edge:                 ; preds = %if.end9.i
  %.pre251 = load i32, i32* %len, align 4
  %.pre252 = add i32 %.pre251, 1
  br label %if.end196

if.then194:                                       ; preds = %if.end9.i
  call void @pde_free(%struct.proc_dir_entry* noundef nonnull %14) #10
  br label %cleanup

if.end196:                                        ; preds = %kmalloc.exit.if.end196_crit_edge, %if.then185
  %add199.pre-phi = phi i32 [ %.pre252, %kmalloc.exit.if.end196_crit_edge ], [ %add, %if.then185 ]
  %18 = phi i8* [ %call10.i, %kmalloc.exit.if.end196_crit_edge ], [ %inline_name, %if.then185 ]
  %conv200 = zext i32 %add199.pre-phi to i64
  %call201 = call i8* @memcpy(i8* noundef %18, i8* noundef %3, i64 noundef %conv200) #9
  %19 = load i32, i32* %len, align 4
  %conv203 = trunc i32 %19 to i8
  %20 = getelementptr inbounds i8, i8* %call177, i64 171
  store i8 %conv203, i8* %20, align 1
  %mode204 = getelementptr inbounds i8, i8* %call177, i64 168
  %21 = bitcast i8* %mode204 to i16*
  store i16 %mode, i16* %21, align 8
  %nlink205 = getelementptr inbounds i8, i8* %call177, i64 96
  %22 = bitcast i8* %nlink205 to i32*
  store i32 %nlink, i32* %22, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call177, i64 128
  %23 = bitcast i8* %.compoundliteral.sroa.0.0..sroa_idx to %struct.rb_node**
  store %struct.rb_node* null, %struct.rb_node** %23, align 8
  %refcnt = getelementptr inbounds i8, i8* %call177, i64 4
  %24 = bitcast i8* %refcnt to %struct.refcount_struct*
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %24) #10
  %pde_unload_lock = getelementptr inbounds i8, i8* %call177, i64 24
  %25 = bitcast i8* %pde_unload_lock to i32*
  store i32 0, i32* %25, align 8
  %pde_openers = getelementptr inbounds i8, i8* %call177, i64 8
  %26 = bitcast i8* %pde_openers to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %26) #10
  %27 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent, align 8
  %coerce.dive = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %27, i64 0, i32 14, i32 0
  %28 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %28 to i64
  %coerce.dive212 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %27, i64 0, i32 15, i32 0
  %29 = load i32, i32* %coerce.dive212, align 8
  %coerce.val.ii213 = zext i32 %29 to i64
  call void @proc_set_user(%struct.proc_dir_entry* noundef nonnull %14, i64 %coerce.val.ii, i64 %coerce.val.ii213) #10
  %proc_dops = getelementptr inbounds i8, i8* %call177, i64 56
  %30 = bitcast i8* %proc_dops to %struct.dentry_operations**
  store %struct.dentry_operations* @proc_misc_dentry_ops, %struct.dentry_operations** %30, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end196, %entry, %if.end176, %if.then194, %do.end161, %do.end129, %do.end93, %do.end50, %do.end
  %retval.0 = phi %struct.proc_dir_entry* [ null, %do.end ], [ null, %do.end50 ], [ null, %do.end93 ], [ null, %do.end129 ], [ null, %do.end161 ], [ null, %if.then194 ], [ null, %entry ], [ %14, %if.end196 ], [ null, %if.end176 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret %struct.proc_dir_entry* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.proc_dir_entry* @_proc_mkdir(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry* noundef %parent, i8* noundef %data, i1 noundef %force_lookup) local_unnamed_addr #0 {
entry:
  %parent.addr = alloca %struct.proc_dir_entry*, align 8
  store %struct.proc_dir_entry* %parent, %struct.proc_dir_entry** %parent.addr, align 8
  %cmp = icmp eq i16 %mode, 0
  %mode.op = or i16 %mode, 16384
  %0 = select i1 %cmp, i16 16749, i16 %mode.op
  %call = call fastcc %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry** noundef nonnull %parent.addr, i8* noundef %name, i16 noundef %0, i32 noundef 2) #10
  %tobool.not = icmp eq %struct.proc_dir_entry* %call, null
  br i1 %tobool.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %entry
  %data5 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 10
  store i8* %data, i8** %data5, align 8
  %1 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 6
  %proc_dir_ops = bitcast %union.anon.67* %1 to %struct.file_operations**
  store %struct.file_operations* @proc_dir_operations, %struct.file_operations** %proc_dir_ops, align 8
  %proc_iops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 5
  store %struct.inode_operations* @proc_dir_inode_operations, %struct.inode_operations** %proc_iops, align 8
  br i1 %force_lookup, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  call fastcc void @pde_force_lookup(%struct.proc_dir_entry* noundef nonnull %call) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then4
  %2 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent.addr, align 8
  %call9 = call %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry* noundef %2, %struct.proc_dir_entry* noundef nonnull %call) #10
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %entry
  %ent.0 = phi %struct.proc_dir_entry* [ %call9, %if.end8 ], [ null, %entry ]
  ret %struct.proc_dir_entry* %ent.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pde_force_lookup(%struct.proc_dir_entry* nocapture noundef writeonly %pde) unnamed_addr #5 {
entry:
  %proc_dops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 7
  store %struct.dentry_operations* @proc_net_dentry_ops, %struct.dentry_operations** %proc_dops, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.proc_dir_entry* @proc_mkdir_data(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry* noundef %parent, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %call = call %struct.proc_dir_entry* @_proc_mkdir(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry* noundef %parent, i8* noundef %data, i1 noundef false) #10
  ret %struct.proc_dir_entry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.proc_dir_entry* @proc_mkdir_mode(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry* noundef %parent) local_unnamed_addr #0 {
entry:
  %call = call %struct.proc_dir_entry* @proc_mkdir_data(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry* noundef %parent, i8* noundef null) #10
  ret %struct.proc_dir_entry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.proc_dir_entry* @proc_mkdir(i8* noundef %name, %struct.proc_dir_entry* noundef %parent) local_unnamed_addr #0 {
entry:
  %call = call %struct.proc_dir_entry* @proc_mkdir_data(i8* noundef %name, i16 noundef 0, %struct.proc_dir_entry* noundef %parent, i8* noundef null) #10
  ret %struct.proc_dir_entry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.proc_dir_entry* @proc_create_mount_point(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %parent = alloca %struct.proc_dir_entry*, align 8
  %0 = bitcast %struct.proc_dir_entry** %parent to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %parent, align 8
  %call = call fastcc %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry** noundef nonnull %parent, i8* noundef %name, i16 noundef 16749, i32 noundef 2) #10
  %tobool.not = icmp eq %struct.proc_dir_entry* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 10
  store i8* null, i8** %data, align 8
  %1 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 6
  %proc_dir_ops = bitcast %union.anon.67* %1 to %struct.file_operations**
  store %struct.file_operations* null, %struct.file_operations** %proc_dir_ops, align 8
  %proc_iops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 5
  store %struct.inode_operations* null, %struct.inode_operations** %proc_iops, align 8
  %2 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent, align 8
  %call1 = call %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry* noundef %2, %struct.proc_dir_entry* noundef nonnull %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ent.0 = phi %struct.proc_dir_entry* [ %call1, %if.then ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret %struct.proc_dir_entry* %ent.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.proc_dir_entry* @proc_create_reg(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry** nocapture noundef %parent, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %cmp = icmp ult i16 %mode, 4096
  %or = or i16 %mode, -32768
  %spec.select = select i1 %cmp, i16 %or, i16 %mode
  %0 = and i16 %spec.select, 4095
  %cmp6 = icmp eq i16 %0, 0
  %or10 = or i16 %spec.select, 292
  %mode.addr.1 = select i1 %cmp6, i16 %or10, i16 %spec.select
  %1 = and i16 %mode.addr.1, -4096
  %cmp15.not = icmp eq i16 %1, -32768
  br i1 %cmp15.not, label %if.end36, label %if.then25, !prof !18

if.then25:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/generic.c\22; .popsection; .long 14472b - 14470b; .short 547; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !19
  br label %cleanup

if.end36:                                         ; preds = %entry
  %call = call fastcc %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry** noundef %parent, i8* noundef %name, i16 noundef %mode.addr.1, i32 noundef 1) #10
  %tobool37.not = icmp eq %struct.proc_dir_entry* %call, null
  br i1 %tobool37.not, label %cleanup, label %if.then38

if.then38:                                        ; preds = %if.end36
  %proc_iops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 5
  store %struct.inode_operations* @proc_file_inode_operations, %struct.inode_operations** %proc_iops, align 8
  %data39 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 10
  store i8* %data, i8** %data39, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end36, %if.then38
  %retval.0 = phi %struct.proc_dir_entry* [ null, %if.then25 ], [ %call, %if.then38 ], [ null, %if.end36 ]
  ret %struct.proc_dir_entry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.proc_dir_entry* @proc_create_data(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry* noundef %parent, %struct.proc_ops* noundef %proc_ops, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %parent.addr = alloca %struct.proc_dir_entry*, align 8
  store %struct.proc_dir_entry* %parent, %struct.proc_dir_entry** %parent.addr, align 8
  %call = call %struct.proc_dir_entry* @proc_create_reg(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry** noundef nonnull %parent.addr, i8* noundef %data) #10
  %tobool.not = icmp eq %struct.proc_dir_entry* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %proc_ops1 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 6, i32 0
  store %struct.proc_ops* %proc_ops, %struct.proc_ops** %proc_ops1, align 8
  call fastcc void @pde_set_flags(%struct.proc_dir_entry* noundef nonnull %call) #10
  %0 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent.addr, align 8
  %call2 = call %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry* noundef %0, %struct.proc_dir_entry* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.proc_dir_entry* [ %call2, %if.end ], [ null, %entry ]
  ret %struct.proc_dir_entry* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @pde_set_flags(%struct.proc_dir_entry* nocapture noundef %pde) unnamed_addr #6 {
entry:
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 6, i32 0
  %0 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops, align 8
  %proc_flags = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %0, i64 0, i32 0
  %1 = load i32, i32* %proc_flags, align 8
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 22
  %2 = load i8, i8* %flags, align 2
  %3 = or i8 %2, 1
  store i8 %3, i8* %flags, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.proc_dir_entry* @proc_create(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry* noundef %parent, %struct.proc_ops* noundef %proc_ops) local_unnamed_addr #0 {
entry:
  %call = call %struct.proc_dir_entry* @proc_create_data(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry* noundef %parent, %struct.proc_ops* noundef %proc_ops, i8* noundef null) #10
  ret %struct.proc_dir_entry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry* noundef %parent, %struct.seq_operations* noundef %ops, i32 noundef %state_size, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %parent.addr = alloca %struct.proc_dir_entry*, align 8
  store %struct.proc_dir_entry* %parent, %struct.proc_dir_entry** %parent.addr, align 8
  %call = call %struct.proc_dir_entry* @proc_create_reg(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry** noundef nonnull %parent.addr, i8* noundef %data) #10
  %tobool.not = icmp eq %struct.proc_dir_entry* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 6, i32 0
  store %struct.proc_ops* @proc_seq_ops, %struct.proc_ops** %proc_ops, align 8
  %seq_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 8, i32 0
  store %struct.seq_operations* %ops, %struct.seq_operations** %seq_ops, align 8
  %state_size1 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 11
  store i32 %state_size, i32* %state_size1, align 8
  %0 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent.addr, align 8
  %call2 = call %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry* noundef %0, %struct.proc_dir_entry* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.proc_dir_entry* [ %call2, %if.end ], [ null, %entry ]
  ret %struct.proc_dir_entry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.proc_dir_entry* @proc_create_single_data(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry* noundef %parent, i32 (%struct.seq_file*, i8*)* noundef %show, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %parent.addr = alloca %struct.proc_dir_entry*, align 8
  store %struct.proc_dir_entry* %parent, %struct.proc_dir_entry** %parent.addr, align 8
  %call = call %struct.proc_dir_entry* @proc_create_reg(i8* noundef %name, i16 noundef %mode, %struct.proc_dir_entry** noundef nonnull %parent.addr, i8* noundef %data) #10
  %tobool.not = icmp eq %struct.proc_dir_entry* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 6, i32 0
  store %struct.proc_ops* @proc_single_ops, %struct.proc_ops** %proc_ops, align 8
  %0 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 8
  %single_show = bitcast %union.anon.68* %0 to i32 (%struct.seq_file*, i8*)**
  store i32 (%struct.seq_file*, i8*)* %show, i32 (%struct.seq_file*, i8*)** %single_show, align 8
  %1 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent.addr, align 8
  %call1 = call %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry* noundef %1, %struct.proc_dir_entry* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.proc_dir_entry* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.proc_dir_entry* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @proc_set_size(%struct.proc_dir_entry* nocapture noundef writeonly %de, i64 noundef %size) local_unnamed_addr #5 {
entry:
  %size1 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 16
  store i64 %size, i64* %size1, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @proc_set_user(%struct.proc_dir_entry* nocapture noundef writeonly %de, i64 %uid.coerce, i64 %gid.coerce) local_unnamed_addr #5 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  %coerce.val.ii2 = trunc i64 %gid.coerce to i32
  %uid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 14, i32 0
  store i32 %coerce.val.ii, i32* %uid.sroa.0.0..sroa_idx, align 4
  %gid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 15, i32 0
  store i32 %coerce.val.ii2, i32* %gid.sroa.0.0..sroa_idx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #10
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @remove_proc_entry(i8* noundef %name, %struct.proc_dir_entry* noundef %parent) local_unnamed_addr #0 {
entry:
  %parent.addr = alloca %struct.proc_dir_entry*, align 8
  %fn = alloca i8*, align 8
  store %struct.proc_dir_entry* %parent, %struct.proc_dir_entry** %parent.addr, align 8
  %0 = bitcast i8** %fn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* %name, i8** %fn, align 8
  call fastcc void @__raw_write_lock() #10
  %call = call fastcc i32 @__xlate_proc_name(i8* noundef %name, %struct.proc_dir_entry** noundef nonnull %parent.addr, i8** noundef nonnull %fn) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__raw_write_unlock() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %fn, align 8
  %call1 = call i64 @strlen(i8* noundef %1) #9
  %conv = trunc i64 %call1 to i32
  %2 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent.addr, align 8
  %call2 = call fastcc %struct.proc_dir_entry* @pde_subdir_find(%struct.proc_dir_entry* noundef %2, i8* noundef %1, i32 noundef %conv) #10
  %tobool.not = icmp eq %struct.proc_dir_entry* %call2, null
  br i1 %tobool.not, label %do.end55, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* noundef nonnull %call2) #10
  br i1 %call4, label %do.end, label %if.else, !prof !20

do.end:                                           ; preds = %if.then3
  %name19 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call2, i64 0, i32 20
  %3 = load i8*, i8** %name19, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* noundef %3) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/generic.c\22; .popsection; .long 14472b - 14470b; .short 699; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !21
  br label %do.end55

if.else:                                          ; preds = %if.then3
  %subdir_node = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call2, i64 0, i32 19
  %subdir = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %2, i64 0, i32 18
  call void @rb_erase(%struct.rb_node* noundef %subdir_node, %struct.rb_root* noundef %subdir) #9
  %mode = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call2, i64 0, i32 21
  %4 = load i16, i16* %mode, align 8
  %5 = and i16 %4, -4096
  %cmp34 = icmp eq i16 %5, 16384
  br i1 %cmp34, label %if.then36, label %if.end70

if.then36:                                        ; preds = %if.else
  %nlink = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %2, i64 0, i32 13
  %6 = load i32, i32* %nlink, align 8
  %dec = add i32 %6, -1
  store i32 %dec, i32* %nlink, align 8
  br label %if.end70

do.end55:                                         ; preds = %do.end, %if.end
  call fastcc void @__raw_write_unlock() #10
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef %name) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/generic.c\22; .popsection; .long 14472b - 14470b; .short 709; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !22
  br label %cleanup

if.end70:                                         ; preds = %if.else, %if.then36
  call fastcc void @__raw_write_unlock() #10
  call void @proc_entry_rundown(%struct.proc_dir_entry* noundef nonnull %call2) #9
  %call72 = call fastcc %struct.proc_dir_entry* @pde_subdir_first(%struct.proc_dir_entry* noundef nonnull %call2) #10
  %tobool73.not = icmp eq %struct.proc_dir_entry* %call72, null
  br i1 %tobool73.not, label %if.end101, label %do.end90, !prof !18

do.end90:                                         ; preds = %if.end70
  %parent91 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call2, i64 0, i32 17
  %7 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent91, align 8
  %name92 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %7, i64 0, i32 20
  %8 = load i8*, i8** %name92, align 8
  %name93 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call2, i64 0, i32 20
  %9 = load i8*, i8** %name93, align 8
  %call94 = call fastcc %struct.proc_dir_entry* @pde_subdir_first(%struct.proc_dir_entry* noundef nonnull %call2) #10
  %name95 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call94, i64 0, i32 20
  %10 = load i8*, i8** %name95, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.remove_proc_entry, i64 0, i64 0), i8* noundef %8, i8* noundef %9, i8* noundef %10) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/generic.c\22; .popsection; .long 14472b - 14470b; .short 717; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !23
  br label %if.end101

if.end101:                                        ; preds = %do.end90, %if.end70
  call void @pde_put(%struct.proc_dir_entry* noundef nonnull %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %do.end55, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__xlate_proc_name(i8* noundef %name, %struct.proc_dir_entry** nocapture noundef %ret, i8** nocapture noundef writeonly %residual) unnamed_addr #0 {
entry:
  %0 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %ret, align 8
  %tobool.not = icmp eq %struct.proc_dir_entry* %0, null
  %.proc_root = select i1 %tobool.not, %struct.proc_dir_entry* @proc_root, %struct.proc_dir_entry* %0
  %call39 = call i8* @strchr(i8* noundef %name, i32 noundef 47) #9
  %cmp.not40 = icmp eq i8* %call39, null
  br i1 %cmp.not40, label %while.end, label %while.body

while.cond:                                       ; preds = %while.body
  %call = call i8* @strchr(i8* noundef %add.ptr, i32 noundef 47) #9
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond
  %call43 = phi i8* [ %call, %while.cond ], [ %call39, %entry ]
  %de.042 = phi %struct.proc_dir_entry* [ %call1, %while.cond ], [ %.proc_root, %entry ]
  %cp.041 = phi i8* [ %add.ptr, %while.cond ], [ %name, %entry ]
  %sub.ptr.lhs.cast = ptrtoint i8* %call43 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %cp.041 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %call1 = call fastcc %struct.proc_dir_entry* @pde_subdir_find(%struct.proc_dir_entry* noundef %de.042, i8* noundef %cp.041, i32 noundef %conv) #10
  %tobool2.not = icmp eq %struct.proc_dir_entry* %call1, null
  %add.ptr = getelementptr i8, i8* %call43, i64 1
  br i1 %tobool2.not, label %do.end, label %while.cond

do.end:                                           ; preds = %while.body
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef %name) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/generic.c\22; .popsection; .long 14472b - 14470b; .short 173; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !24
  br label %cleanup

while.end:                                        ; preds = %while.cond, %entry
  %cp.0.lcssa = phi i8* [ %name, %entry ], [ %add.ptr, %while.cond ]
  %de.0.lcssa = phi %struct.proc_dir_entry* [ %.proc_root, %entry ], [ %call1, %while.cond ]
  store i8* %cp.0.lcssa, i8** %residual, align 8
  store %struct.proc_dir_entry* %de.0.lcssa, %struct.proc_dir_entry** %ret, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* nocapture noundef readonly %pde) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 22
  %0 = load i8, i8* %flags, align 2
  %1 = and i8 %0, 1
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_entry_rundown(%struct.proc_dir_entry* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @remove_proc_subtree(i8* noundef %name, %struct.proc_dir_entry* noundef %parent) local_unnamed_addr #0 {
entry:
  %parent.addr = alloca %struct.proc_dir_entry*, align 8
  %fn = alloca i8*, align 8
  store %struct.proc_dir_entry* %parent, %struct.proc_dir_entry** %parent.addr, align 8
  %0 = bitcast i8** %fn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* %name, i8** %fn, align 8
  call fastcc void @__raw_write_lock() #10
  %call = call fastcc i32 @__xlate_proc_name(i8* noundef %name, %struct.proc_dir_entry** noundef nonnull %parent.addr, i8** noundef nonnull %fn) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__raw_write_unlock() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %fn, align 8
  %call1 = call i64 @strlen(i8* noundef %1) #9
  %conv = trunc i64 %call1 to i32
  %2 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent.addr, align 8
  %call2 = call fastcc %struct.proc_dir_entry* @pde_subdir_find(%struct.proc_dir_entry* noundef %2, i8* noundef %1, i32 noundef %conv) #10
  %tobool.not = icmp eq %struct.proc_dir_entry* %call2, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call fastcc void @__raw_write_unlock() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* noundef nonnull %call2) #10
  br i1 %call5, label %if.then9, label %if.end36, !prof !20

if.then9:                                         ; preds = %if.end4
  call fastcc void @__raw_write_unlock() #10
  %parent20 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call2, i64 0, i32 17
  %3 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent20, align 8
  %name21 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %3, i64 0, i32 20
  %4 = load i8*, i8** %name21, align 8
  %name22 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call2, i64 0, i32 20
  %5 = load i8*, i8** %name22, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* noundef %4, i8* noundef %5) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/generic.c\22; .popsection; .long 14472b - 14470b; .short 743; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !25
  br label %cleanup

if.end36:                                         ; preds = %if.end4
  %subdir_node = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call2, i64 0, i32 19
  %subdir = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %2, i64 0, i32 18
  call void @rb_erase(%struct.rb_node* noundef %subdir_node, %struct.rb_root* noundef %subdir) #9
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end36
  %de.0 = phi %struct.proc_dir_entry* [ %call2, %if.end36 ], [ %de.0.be, %while.cond.backedge ]
  %call37 = call fastcc %struct.proc_dir_entry* @pde_subdir_first(%struct.proc_dir_entry* noundef %de.0) #10
  %tobool38.not = icmp eq %struct.proc_dir_entry* %call37, null
  br i1 %tobool38.not, label %if.end83, label %if.then39

if.then39:                                        ; preds = %while.cond
  %call40 = call fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* noundef nonnull %call37) #10
  br i1 %call40, label %if.then48, label %if.end80, !prof !20

if.then48:                                        ; preds = %if.then39
  call fastcc void @__raw_write_unlock() #10
  %parent63 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call37, i64 0, i32 17
  %6 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent63, align 8
  %name64 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %6, i64 0, i32 20
  %7 = load i8*, i8** %name64, align 8
  %name65 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call37, i64 0, i32 20
  %8 = load i8*, i8** %name65, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* noundef %7, i8* noundef %8) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/generic.c\22; .popsection; .long 14472b - 14470b; .short 755; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !26
  br label %cleanup

if.end80:                                         ; preds = %if.then39
  %subdir_node81 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call37, i64 0, i32 19
  %subdir82 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de.0, i64 0, i32 18
  call void @rb_erase(%struct.rb_node* noundef %subdir_node81, %struct.rb_root* noundef %subdir82) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end80, %if.end93
  %de.0.be = phi %struct.proc_dir_entry* [ %call37, %if.end80 ], [ %9, %if.end93 ]
  br label %while.cond

if.end83:                                         ; preds = %while.cond
  %parent84 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de.0, i64 0, i32 17
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent84, align 8
  %mode = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de.0, i64 0, i32 21
  %10 = load i16, i16* %mode, align 8
  %11 = and i16 %10, -4096
  %cmp86 = icmp eq i16 %11, 16384
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end83
  %nlink = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %9, i64 0, i32 13
  %12 = load i32, i32* %nlink, align 8
  %dec = add i32 %12, -1
  store i32 %dec, i32* %nlink, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end83
  call fastcc void @__raw_write_unlock() #10
  call void @proc_entry_rundown(%struct.proc_dir_entry* noundef %de.0) #9
  %cmp90 = icmp eq %struct.proc_dir_entry* %de.0, %call2
  br i1 %cmp90, label %while.end, label %if.end93

if.end93:                                         ; preds = %if.end89
  call void @pde_put(%struct.proc_dir_entry* noundef %de.0) #10
  call fastcc void @__raw_write_lock() #10
  br label %while.cond.backedge

while.end:                                        ; preds = %if.end89
  call void @pde_put(%struct.proc_dir_entry* noundef nonnull %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then48, %if.then9, %if.then3, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -22, %if.then9 ], [ -22, %if.then48 ], [ 0, %while.end ], [ -2, %if.then3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @proc_get_parent_data(%struct.inode* noundef readonly %inode) local_unnamed_addr #4 {
entry:
  %call = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %inode) #10
  %parent = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 17
  %0 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent, align 8
  %data = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %0, i64 0, i32 10
  %1 = load i8*, i8** %data, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @proc_remove(%struct.proc_dir_entry* noundef readonly %de) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.proc_dir_entry* %de, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 20
  %0 = load i8*, i8** %name, align 8
  %parent = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 17
  %1 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %parent, align 8
  %call = call i32 @remove_proc_subtree(i8* noundef %0, %struct.proc_dir_entry* noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @PDE_DATA(%struct.inode* noundef readonly %inode) local_unnamed_addr #4 {
entry:
  %call = call fastcc i8* @__PDE_DATA(%struct.inode* noundef %inode) #10
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @__PDE_DATA(%struct.inode* noundef readonly %inode) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %inode) #10
  %data = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 10
  %0 = load i8*, i8** %data, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @proc_simple_write(%struct.file* noundef %f, i8* noundef %ubuf, i64 noundef %size, i64* nocapture noundef readnone %_pos) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %f) #10
  %call1 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #10
  %write = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call1, i64 0, i32 9
  %0 = load i32 (%struct.file*, i8*, i64)*, i32 (%struct.file*, i8*, i64)** %write, align 8
  %tobool.not = icmp eq i32 (%struct.file*, i8*, i64)* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = add i64 %size, -4096
  %2 = icmp ult i64 %1, -4095
  br i1 %2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i8* @memdup_user_nul(i8* noundef %ubuf, i64 noundef %size) #9
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %call5) #10
  br i1 %call6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  %call8 = call fastcc i64 @PTR_ERR(i8* noundef %call5) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %3 = load i32 (%struct.file*, i8*, i64)*, i32 (%struct.file*, i8*, i64)** %write, align 8
  %call11 = call i32 %3(%struct.file* noundef %f, i8* noundef %call5, i64 noundef %size) #9
  call void @kfree(i8* noundef %call5) #9
  %cmp12 = icmp eq i32 %call11, 0
  %conv = sext i32 %call11 to i64
  %cond = select i1 %cmp12, i64 %size, i64 %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end9, %if.then7
  %retval.0 = phi i64 [ %call8, %if.then7 ], [ %cond, %if.end9 ], [ -13, %entry ], [ -22, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memdup_user_nul(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock() unnamed_addr #0 {
entry:
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire() #9
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !18

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @proc_subdir_lock, i64 0, i32 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @proc_subdir_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @proc_subdir_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #11, !srcloc !27
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @proc_match(i8* noundef %name, %struct.proc_dir_entry* nocapture noundef readonly %de, i32 noundef %len) unnamed_addr #0 {
entry:
  %namelen = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 23
  %0 = load i8, i8* %namelen, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp ugt i32 %conv, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp ult i32 %conv, %len
  br i1 %cmp4, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %name8 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 20
  %1 = load i8*, i8** %name8, align 8
  %conv9 = zext i32 %len to i64
  %call = call i32 @memcmp(i8* noundef %name, i8* noundef %1, i64 noundef %conv9) #9
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ %call, %if.end7 ], [ -1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #9
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !20

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !18

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #9
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #11, !srcloc !28
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__ll_sc_atomic_sub_return_release() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @proc_subdir_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @proc_subdir_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #11, !srcloc !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef readnone %inode) unnamed_addr #3 {
entry:
  %add.ptr = getelementptr %struct.inode, %struct.inode* %inode, i64 -1, i32 38, i32 11
  %0 = bitcast i32* %add.ptr to %struct.proc_inode*
  ret %struct.proc_inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dot(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 5
  %3 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 8
  %4 = load i64, i64* %i_ino, align 8
  %call = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 noundef 1, i64 noundef %1, i64 noundef %4, i32 noundef 4) #9
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dotdot(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc i64 @parent_ino(%struct.dentry* noundef %2) #10
  %call1 = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 noundef 2, i64 noundef %1, i64 noundef %call, i32 noundef 4) #9
  %cmp = icmp eq i32 %call1, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @parent_ino(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.63* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 8
  %3 = load i64, i64* %i_ino, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #9
  ret i64 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !18

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #9
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #11, !srcloc !31
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #11, !srcloc !33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_first(%struct.rb_root* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_next(%struct.rb_node* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.rwlock_t* @proc_subdir_lock to i8*), i32 noundef 0, i32 noundef 255) #9
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup, label %if.end, !prof !18

if.end:                                           ; preds = %entry
  call void @queued_write_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @proc_subdir_lock, i64 0, i32 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_write_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_link_node(%struct.rb_node* noundef %node, %struct.rb_node* noundef %parent, %struct.rb_node** nocapture noundef writeonly %rb_link) unnamed_addr #5 {
entry:
  %0 = ptrtoint %struct.rb_node* %parent to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %rb_right, align 8
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 2
  store %struct.rb_node* null, %struct.rb_node** %rb_left, align 8
  store %struct.rb_node* %node, %struct.rb_node** %rb_link, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.rwlock_t* @proc_subdir_lock to i8*), i8 0) #11, !srcloc !34
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @xlate_proc_name(i8* noundef %name, %struct.proc_dir_entry** nocapture noundef %ret, i8** nocapture noundef writeonly %residual) unnamed_addr #0 {
entry:
  call fastcc void @__raw_read_lock() #10
  %call = call fastcc i32 @__xlate_proc_name(i8* noundef %name, %struct.proc_dir_entry** noundef %ret, i8** noundef %residual) #10
  call fastcc void @__raw_read_unlock() #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @name_to_int(%struct.qstr* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_empty_pde(%struct.proc_dir_entry* nocapture noundef readonly %pde) unnamed_addr #4 {
entry:
  %mode = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 21
  %0 = load i16, i16* %mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, 16384
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %proc_iops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 5
  %2 = load %struct.inode_operations*, %struct.inode_operations** %proc_iops, align 8
  %tobool.not = icmp eq %struct.inode_operations* %2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool.not, %land.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #0 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 3520) #9
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #7 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

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
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal i32 @proc_misc_d_revalidate(%struct.dentry* nocapture noundef readonly %dentry, i32 noundef %flags) #8 {
entry:
  %and = and i32 %flags, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #10
  %call1 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #10
  %counter.i = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call1, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %1 = xor i32 %0, -1
  %.lobit.not = lshr i32 %1, 31
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -10, %entry ], [ %.lobit.not, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal i32 @proc_misc_d_delete(%struct.dentry* nocapture noundef readonly %dentry) #8 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #10
  %call1 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #10
  %counter.i = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call1, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %call2.lobit = lshr i32 %0, 31
  ret i32 %call2.lobit
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_read_dir(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_notify_change(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %iattr) #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #10
  %call1 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #10
  %call2 = call i32 @setattr_prepare(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %iattr) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @setattr_copy(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call, %struct.iattr* noundef %iattr) #9
  call fastcc void @mark_inode_dirty(%struct.inode* noundef %call) #10
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 2, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %coerce.dive3 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 3, i32 0
  %1 = load i32, i32* %coerce.dive3, align 8
  %coerce.val.ii4 = zext i32 %1 to i64
  call void @proc_set_user(%struct.proc_dir_entry* noundef %call1, i64 %coerce.val.ii, i64 %coerce.val.ii4) #10
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %2 = load i16, i16* %i_mode, align 8
  %mode = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call1, i64 0, i32 21
  store i16 %2, i16* %mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_getattr(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.path* nocapture noundef readonly %path, %struct.kstat* noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %0) #10
  %call1 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #10
  %tobool.not = icmp eq %struct.proc_dir_entry* %call1, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %nlink2 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call1, i64 0, i32 13
  %1 = load volatile i32, i32* %nlink2, align 8
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @set_nlink(%struct.inode* noundef %call, i32 noundef %1) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then3, %entry
  call void @generic_fillattr(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call, %struct.kstat* noundef %stat) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(%struct.user_namespace* noundef, %struct.dentry* noundef, %struct.iattr* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.iattr* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_inode_dirty(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void @__mark_inode_dirty(%struct.inode* noundef %inode, i32 noundef 7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(%struct.inode* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(%struct.inode* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.kstat* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_seq_open(%struct.inode* noundef readonly %inode, %struct.file* noundef %file) #0 {
entry:
  %call = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %inode) #10
  %state_size = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 11
  %0 = load i32, i32* %state_size, align 8
  %tobool.not = icmp eq i32 %0, 0
  %seq_ops3 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 8, i32 0
  %1 = load %struct.seq_operations*, %struct.seq_operations** %seq_ops3, align 8
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i32 @seq_open_private(%struct.file* noundef %file, %struct.seq_operations* noundef %1, i32 noundef %0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @seq_open(%struct.file* noundef %file, %struct.seq_operations* noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_read_iter(%struct.kiocb* noundef, %struct.iov_iter* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(%struct.file* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_seq_release(%struct.inode* noundef %inode, %struct.file* noundef %file) #0 {
entry:
  %call = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %inode) #10
  %state_size = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 11
  %0 = load i32, i32* %state_size, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @seq_release_private(%struct.inode* noundef %inode, %struct.file* noundef %file) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @seq_release(%struct.inode* noundef %inode, %struct.file* noundef %file) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open_private(%struct.file* noundef, %struct.seq_operations* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(%struct.file* noundef, %struct.seq_operations* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(%struct.inode* noundef, %struct.file* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(%struct.inode* noundef, %struct.file* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_single_open(%struct.inode* noundef readonly %inode, %struct.file* noundef %file) #0 {
entry:
  %call = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %inode) #10
  %0 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 8
  %single_show = bitcast %union.anon.68* %0 to i32 (%struct.seq_file*, i8*)**
  %1 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %single_show, align 8
  %data = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 10
  %2 = load i8*, i8** %data, align 8
  %call1 = call i32 @single_open(%struct.file* noundef %file, i32 (%struct.seq_file*, i8*)* noundef %1, i8* noundef %2) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(%struct.inode* noundef, %struct.file* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(%struct.file* noundef, i32 (%struct.seq_file*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #10
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #9
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #11, !srcloc !35
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !18

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #11, !srcloc !36
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149637577}
!8 = !{i64 2149692531}
!9 = !{i64 2152897800}
!10 = !{i64 2149681630}
!11 = !{i64 2149689166}
!12 = !{!"auto-init"}
!13 = !{i64 2152899883}
!14 = !{i64 2152901758}
!15 = !{i64 2152903635}
!16 = !{i64 2152905566}
!17 = !{i64 2152907511}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2152911743}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2152914667}
!22 = !{i64 2152916695}
!23 = !{i64 2152922894}
!24 = !{i64 2152892635}
!25 = !{i64 2152925378}
!26 = !{i64 2152927509}
!27 = !{i64 2147792592, i64 2147793258, i64 2147793288, i64 2147793321, i64 2147793355, i64 2147793390, i64 2147793415}
!28 = !{i64 2147795672, i64 2147796336, i64 2147796366, i64 2147796398, i64 2147796432, i64 2147796467, i64 2147796492}
!29 = !{i64 2147803340, i64 2147804006, i64 2147804036, i64 2147804068, i64 2147804102, i64 2147804138, i64 2147804163}
!30 = !{i64 2149589068}
!31 = !{i64 2147889631, i64 2147889664, i64 2147889717, i64 2147889776, i64 2147889810, i64 2147889865, i64 2147889894, i64 2147889914}
!32 = !{i64 2149596349}
!33 = !{i64 2149392640}
!34 = !{i64 2149552861}
!35 = !{i64 2150590573}
!36 = !{i64 2147807454, i64 2147808128, i64 2147808158, i64 2147808190, i64 2147808224, i64 2147808260, i64 2147808285}
