; ModuleID = 'drivers/clk/clkdev.c'
source_filename = "drivers/clk/clkdev.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque
%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type opaque
%struct.clk = type opaque
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
%struct.clk_ops = type { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_rate_request = type { i64, i64, i64, i64, %struct.clk_hw* }
%struct.clk_duty = type { i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.60, %struct.list_head, %struct.list_head, %union.anon.61 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.57, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.user_namespace = type opaque
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.35 }
%union.anon.35 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.10, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.9, [0 x i64] }
%struct.anon.9 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.32, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.8 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.11 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.17, %union.anon.18, i32 }
%struct.request_queue = type opaque
%union.anon.17 = type { %struct.list_head }
%union.anon.18 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.19 }
%struct.anon.19 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.23 }
%struct.anon.23 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.31, i32, [12 x i8] }
%union.anon.31 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.32 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.33, %union.anon.48, %struct.atomic_t, [8 x i8] }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.48 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.49, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.49 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.10 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.52 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.50, %struct.qspinlock }
%union.anon.50 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.52 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.16 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.16 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.57 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.58 }
%union.anon.58 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
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
%struct.kqid = type { %union.anon.5, i32 }
%union.anon.5 = type { %struct.kuid_t }
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
%union.anon.60 = type { %struct.list_head }
%union.anon.61 = type { %struct.hlist_node }
%struct.clk_parent_data = type { %struct.clk_hw*, i8*, i8*, i32 }
%struct.clk_lookup = type { %struct.list_head, i8*, i8*, %struct.clk*, %struct.clk_hw* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.62, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.62 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
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
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@clocks_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @clocks_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @clocks_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@clocks = internal global %struct.list_head { %struct.list_head* @clocks, %struct.list_head* @clocks }, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"devm_clkdev_release\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk_hw* @clk_find_hw(i8* noundef %dev_id, i8* noundef %con_id) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocks_mutex) #9
  %call1 = call fastcc %struct.clk_lookup* @clk_find(i8* noundef %dev_id, i8* noundef %con_id) #10
  %tobool.not = icmp eq %struct.clk_lookup* %call1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %clk_hw = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %call1, i64 0, i32 4
  %0 = load %struct.clk_hw*, %struct.clk_hw** %clk_hw, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %hw.0 = phi %struct.clk_hw* [ %0, %if.then ], [ inttoptr (i64 -2 to %struct.clk_hw*), %entry ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocks_mutex) #9
  ret %struct.clk_hw* %hw.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_lookup* @clk_find(i8* noundef %dev_id, i8* noundef %con_id) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %dev_id, null
  %spec.select = select i1 %tobool.not, i32 0, i32 2
  %tobool1.not = icmp eq i8* %con_id, null
  %not.tobool1.not = xor i1 %tobool1.not, true
  %add3 = zext i1 %not.tobool1.not to i32
  %best_possible.1 = or i32 %spec.select, %add3
  %p.067 = load %struct.clk_lookup*, %struct.clk_lookup** bitcast (%struct.list_head* @clocks to %struct.clk_lookup**), align 8
  %node68 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %p.067, i64 0, i32 0
  %cmp.not69 = icmp eq %struct.list_head* %node68, @clocks
  br i1 %cmp.not69, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %p.076 = phi %struct.clk_lookup* [ %p.0, %for.inc ], [ %p.067, %entry ]
  %cl.073 = phi %struct.clk_lookup* [ %cl.1, %for.inc ], [ null, %entry ]
  %best_found.070 = phi i32 [ %best_found.1, %for.inc ], [ 0, %entry ]
  %dev_id8 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %p.076, i64 0, i32 1
  %0 = load i8*, i8** %dev_id8, align 8
  %tobool9.not = icmp eq i8* %0, null
  br i1 %tobool9.not, label %if.end17, label %if.then10

if.then10:                                        ; preds = %for.body
  br i1 %tobool.not, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then10
  %call = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef nonnull %dev_id) #9
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %if.end17, label %for.inc

if.end17:                                         ; preds = %lor.lhs.false, %for.body
  %match.0 = phi i32 [ 0, %for.body ], [ 2, %lor.lhs.false ]
  %con_id18 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %p.076, i64 0, i32 2
  %1 = load i8*, i8** %con_id18, align 8
  %tobool19.not = icmp eq i8* %1, null
  br i1 %tobool19.not, label %if.end29, label %if.then20

if.then20:                                        ; preds = %if.end17
  br i1 %tobool1.not, label %for.inc, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.then20
  %call24 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull %con_id) #9
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %for.inc

if.end27:                                         ; preds = %lor.lhs.false22
  %add28 = or i32 %match.0, 1
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end17
  %match.1 = phi i32 [ %add28, %if.end27 ], [ %match.0, %if.end17 ]
  %cmp30 = icmp sgt i32 %match.1, %best_found.070
  br i1 %cmp30, label %if.then31, label %for.inc

if.then31:                                        ; preds = %if.end29
  %cmp32.not = icmp eq i32 %match.1, %best_possible.1
  br i1 %cmp32.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.then31, %if.end29, %if.then20, %lor.lhs.false22, %if.then10, %lor.lhs.false
  %best_found.1 = phi i32 [ %best_found.070, %lor.lhs.false ], [ %best_found.070, %lor.lhs.false22 ], [ %best_found.070, %if.end29 ], [ %best_found.070, %if.then20 ], [ %best_found.070, %if.then10 ], [ %match.1, %if.then31 ]
  %cl.1 = phi %struct.clk_lookup* [ %cl.073, %lor.lhs.false ], [ %cl.073, %lor.lhs.false22 ], [ %cl.073, %if.end29 ], [ %cl.073, %if.then20 ], [ %cl.073, %if.then10 ], [ %p.076, %if.then31 ]
  %2 = bitcast %struct.clk_lookup* %p.076 to %struct.clk_lookup**
  %p.0 = load %struct.clk_lookup*, %struct.clk_lookup** %2, align 8
  %node = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %p.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node, @clocks
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.then31, %entry
  %cl.2 = phi %struct.clk_lookup* [ null, %entry ], [ %p.076, %if.then31 ], [ %cl.1, %for.inc ]
  ret %struct.clk_lookup* %cl.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @clk_get_sys(i8* noundef %dev_id, i8* noundef %con_id) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.clk* @__clk_get_sys(%struct.device* noundef null, i8* noundef %dev_id, i8* noundef %con_id) #10
  ret %struct.clk* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk* @__clk_get_sys(%struct.device* noundef %dev, i8* noundef %dev_id, i8* noundef %con_id) unnamed_addr #0 {
entry:
  %call = call %struct.clk_hw* @clk_find_hw(i8* noundef %dev_id, i8* noundef %con_id) #10
  %call1 = call %struct.clk* @clk_hw_create_clk(%struct.device* noundef %dev, %struct.clk_hw* noundef %call, i8* noundef %dev_id, i8* noundef %con_id) #9
  ret %struct.clk* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @clk_get(%struct.device* noundef %dev, i8* noundef %con_id) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i8* @dev_name(%struct.device* noundef nonnull %dev) #10
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool2.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool2.not, label %if.end9, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call4 = call %struct.clk_hw* @of_clk_get_hw(%struct.device_node* noundef nonnull %0, i32 noundef 0, i8* noundef %con_id) #9
  %1 = bitcast %struct.clk_hw* %call4 to i8*
  %call5 = call fastcc i1 @IS_ERR(i8* noundef %1) #10
  br i1 %call5, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %if.then
  %call6 = call fastcc i64 @PTR_ERR(i8* noundef %1) #10
  %cmp = icmp eq i64 %call6, -517
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %lor.lhs.false, %if.then
  %call8 = call %struct.clk* @clk_hw_create_clk(%struct.device* noundef nonnull %dev, %struct.clk_hw* noundef %call4, i8* noundef %call, i8* noundef %con_id) #9
  br label %cleanup

if.end9:                                          ; preds = %entry, %lor.lhs.false, %land.lhs.true
  %cond26 = phi i8* [ %call, %lor.lhs.false ], [ %call, %land.lhs.true ], [ null, %entry ]
  %call10 = call fastcc %struct.clk* @__clk_get_sys(%struct.device* noundef %dev, i8* noundef %cond26, i8* noundef %con_id) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7
  %retval.0 = phi %struct.clk* [ %call8, %if.then7 ], [ %call10, %if.end9 ]
  ret %struct.clk* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #3 {
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
declare dso_local %struct.clk_hw* @of_clk_get_hw(%struct.device_node* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk* @clk_hw_create_clk(%struct.device* noundef, %struct.clk_hw* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_put(%struct.clk* noundef %clk) local_unnamed_addr #0 {
entry:
  call void @__clk_put(%struct.clk* noundef %clk) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__clk_put(%struct.clk* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clkdev_add(%struct.clk_lookup* noundef %cl) local_unnamed_addr #0 {
entry:
  %clk_hw = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %cl, i64 0, i32 4
  %0 = load %struct.clk_hw*, %struct.clk_hw** %clk_hw, align 8
  %tobool.not = icmp eq %struct.clk_hw* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %cl, i64 0, i32 3
  %1 = load %struct.clk*, %struct.clk** %clk, align 8
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* noundef %1) #9
  store %struct.clk_hw* %call, %struct.clk_hw** %clk_hw, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__clkdev_add(%struct.clk_lookup* noundef %cl) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__clkdev_add(%struct.clk_lookup* noundef %cl) unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocks_mutex) #9
  %node = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %cl, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %node) #10
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocks_mutex) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clkdev_add_table(%struct.clk_lookup* noundef %cl, i64 noundef %num) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocks_mutex) #9
  %tobool.not4 = icmp eq i64 %num, 0
  br i1 %tobool.not4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %num.addr.06 = phi i64 [ %dec, %while.body ], [ %num, %entry ]
  %cl.addr.05 = phi %struct.clk_lookup* [ %incdec.ptr, %while.body ], [ %cl, %entry ]
  %dec = add i64 %num.addr.06, -1
  %clk = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %cl.addr.05, i64 0, i32 3
  %0 = load %struct.clk*, %struct.clk** %clk, align 8
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* noundef %0) #9
  %clk_hw = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %cl.addr.05, i64 0, i32 4
  store %struct.clk_hw* %call, %struct.clk_hw** %clk_hw, align 8
  %node = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %cl.addr.05, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %node) #10
  %incdec.ptr = getelementptr %struct.clk_lookup, %struct.clk_lookup* %cl.addr.05, i64 1
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocks_mutex) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new) unnamed_addr #5 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @clocks, i64 0, i32 1), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk_lookup* @clkdev_create(%struct.clk* noundef %clk, i8* noundef %con_id, i8* noundef %dev_fmt, ...) local_unnamed_addr #0 {
entry:
  %ap = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %ap to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call void @llvm.va_start(i8* nonnull %0)
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* noundef %clk) #9
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call2 = call fastcc %struct.clk_lookup* @vclkdev_create(%struct.clk_hw* noundef %call, i8* noundef %con_id, i8* noundef %dev_fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  ret %struct.clk_lookup* %call2
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_lookup* @vclkdev_create(%struct.clk_hw* noundef %hw, i8* noundef %con_id, i8* noundef %dev_fmt, %"struct.std::__va_list"* nocapture noundef readonly %ap) unnamed_addr #0 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  %1 = bitcast %"struct.std::__va_list"* %ap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef align 8 dereferenceable(32) %1, i64 32, i1 false)
  %call = call fastcc %struct.clk_lookup* @vclkdev_alloc(%struct.clk_hw* noundef %hw, i8* noundef %con_id, i8* noundef %dev_fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  %tobool.not = icmp eq %struct.clk_lookup* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__clkdev_add(%struct.clk_lookup* noundef nonnull %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.clk_lookup* %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk_lookup* @clkdev_hw_create(%struct.clk_hw* noundef %hw, i8* noundef %con_id, i8* noundef %dev_fmt, ...) local_unnamed_addr #0 {
entry:
  %ap = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %ap to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call fastcc %struct.clk_lookup* @vclkdev_create(%struct.clk_hw* noundef %hw, i8* noundef %con_id, i8* noundef %dev_fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  ret %struct.clk_lookup* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_add_alias(i8* noundef %alias, i8* noundef %alias_dev_name, i8* noundef %con_id, %struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %call = call %struct.clk* @clk_get(%struct.device* noundef %dev, i8* noundef %con_id) #10
  %0 = bitcast %struct.clk* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #10
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #10
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %alias_dev_name, null
  %cond = select i1 %tobool.not, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)
  %call3 = call %struct.clk_lookup* (%struct.clk*, i8*, i8*, ...) @clkdev_create(%struct.clk* noundef %call, i8* noundef %alias, i8* noundef %cond, i8* noundef %alias_dev_name) #10
  call void @clk_put(%struct.clk* noundef %call) #10
  %tobool4.not = icmp eq %struct.clk_lookup* %call3, null
  %cond5 = select i1 %tobool4.not, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %cond5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clkdev_drop(%struct.clk_lookup* noundef %cl) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocks_mutex) #9
  %node = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %cl, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %node) #10
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocks_mutex) #9
  %0 = bitcast %struct.clk_lookup* %cl to i8*
  call void @kfree(i8* noundef %0) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #5 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #10
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_register_clkdev(%struct.clk* noundef %clk, i8* noundef %con_id, i8* noundef %dev_id) local_unnamed_addr #0 {
entry:
  %cl = alloca %struct.clk_lookup*, align 8
  %0 = bitcast %struct.clk_lookup** %cl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %1 = bitcast %struct.clk* %clk to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef %1) #10
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @PTR_ERR(i8* noundef %1) #10
  %conv = trunc i64 %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.clk_hw* @__clk_get_hw(%struct.clk* noundef %clk) #9
  %call3 = call fastcc i32 @do_clk_register_clkdev(%struct.clk_hw* noundef %call2, %struct.clk_lookup** noundef nonnull %cl, i8* noundef %con_id, i8* noundef %dev_id) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %call3, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_clk_register_clkdev(%struct.clk_hw* noundef %hw, %struct.clk_lookup** nocapture noundef writeonly %cl, i8* noundef %con_id, i8* noundef %dev_id) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef %0) #10
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @PTR_ERR(i8* noundef %0) #10
  %conv = trunc i64 %call1 to i32
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %dev_id, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call %struct.clk_lookup* (%struct.clk_hw*, i8*, i8*, ...) @__clk_register_clkdev(%struct.clk_hw* noundef %hw, i8* noundef %con_id, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %dev_id) #10
  br label %if.end5

if.else:                                          ; preds = %if.end
  %call4 = call %struct.clk_lookup* (%struct.clk_hw*, i8*, i8*, ...) @__clk_register_clkdev(%struct.clk_hw* noundef %hw, i8* noundef %con_id, i8* noundef null) #10
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %storemerge = phi %struct.clk_lookup* [ %call4, %if.else ], [ %call3, %if.then2 ]
  store %struct.clk_lookup* %storemerge, %struct.clk_lookup** %cl, align 8
  %tobool6.not = icmp eq %struct.clk_lookup* %storemerge, null
  %cond = select i1 %tobool6.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %cond, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clk_hw_register_clkdev(%struct.clk_hw* noundef %hw, i8* noundef %con_id, i8* noundef %dev_id) local_unnamed_addr #0 {
entry:
  %cl = alloca %struct.clk_lookup*, align 8
  %0 = bitcast %struct.clk_lookup** %cl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %call = call fastcc i32 @do_clk_register_clkdev(%struct.clk_hw* noundef %hw, %struct.clk_lookup** noundef nonnull %cl, i8* noundef %con_id, i8* noundef %dev_id) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devm_clk_release_clkdev(%struct.device* noundef %dev, i8* noundef %con_id, i8* noundef %dev_id) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocks_mutex) #9
  %call = call fastcc %struct.clk_lookup* @clk_find(i8* noundef %dev_id, i8* noundef %con_id) #10
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocks_mutex) #9
  %tobool.not = icmp eq %struct.clk_lookup* %call, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clkdev.c\22; .popsection; .long 14472b - 14470b; .short 381; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = bitcast %struct.clk_lookup* %call to i8*
  %call16 = call i32 @devres_release(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_clkdev_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_clk_match_clkdev, i8* noundef %0) #9
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %if.end32, label %if.then31, !prof !10

if.then31:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clkdev.c\22; .popsection; .long 14472b - 14470b; .short 384; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !11
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(%struct.device* noundef, void (%struct.device*, i8*)* noundef, i32 (%struct.device*, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_clkdev_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %0 = bitcast i8* %res to %struct.clk_lookup**
  %1 = load %struct.clk_lookup*, %struct.clk_lookup** %0, align 8
  call void @clkdev_drop(%struct.clk_lookup* noundef %1) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @devm_clk_match_clkdev(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res, i8* noundef readnone %data) #3 {
entry:
  %0 = bitcast i8* %res to %struct.clk_lookup**
  %1 = load %struct.clk_lookup*, %struct.clk_lookup** %0, align 8
  %2 = bitcast i8* %data to %struct.clk_lookup*
  %cmp = icmp eq %struct.clk_lookup* %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devm_clk_hw_register_clkdev(%struct.device* noundef %dev, %struct.clk_hw* noundef %hw, i8* noundef %con_id, i8* noundef %dev_id) local_unnamed_addr #0 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_clkdev_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #9
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %call to %struct.clk_lookup**
  %call1 = call fastcc i32 @do_clk_register_clkdev(%struct.clk_hw* noundef %hw, %struct.clk_lookup** noundef nonnull %0, i8* noundef %con_id, i8* noundef %dev_id) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #9
  br label %if.end4

if.else:                                          ; preds = %if.then
  call void @devres_free(i8* noundef nonnull %call) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.else, %entry
  %rval.0 = phi i32 [ %call1, %if.else ], [ 0, %if.then3 ], [ -12, %entry ]
  ret i32 %rval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #3 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev) unnamed_addr #5 {
entry:
  store %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @clocks, i64 0, i32 1), align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* @clocks, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.clk_lookup* @vclkdev_alloc(%struct.clk_hw* noundef %hw, i8* noundef %con_id, i8* noundef %dev_fmt, %"struct.std::__va_list"* nocapture noundef readonly %ap) unnamed_addr #0 section ".ref.text" {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %call = call fastcc i8* @kzalloc() #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cl = bitcast i8* %call to %struct.clk_lookup*
  %clk_hw = getelementptr inbounds i8, i8* %call, i64 40
  %0 = bitcast i8* %clk_hw to %struct.clk_hw**
  store %struct.clk_hw* %hw, %struct.clk_hw** %0, align 8
  %tobool1.not = icmp eq i8* %con_id, null
  br i1 %tobool1.not, label %if.end9, label %if.then2

if.then2:                                         ; preds = %if.end
  %con_id3 = getelementptr inbounds i8, i8* %call, i64 68
  %call4 = call i64 @strlcpy(i8* noundef %con_id3, i8* noundef nonnull %con_id, i64 noundef 16) #9
  %con_id8 = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %con_id8 to i8**
  store i8* %con_id3, i8** %1, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.end
  %tobool10.not = icmp eq i8* %dev_fmt, null
  br i1 %tobool10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.end9
  %dev_id = getelementptr inbounds i8, i8* %call, i64 48
  %2 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #11
  %3 = bitcast %"struct.std::__va_list"* %ap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef align 8 dereferenceable(32) %3, i64 32, i1 false)
  %call13 = call i32 @vscnprintf(i8* noundef %dev_id, i64 noundef 20, i8* noundef nonnull %dev_fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #11
  %dev_id17 = getelementptr inbounds i8, i8* %call, i64 16
  %4 = bitcast i8* %dev_id17 to i8**
  store i8* %dev_id, i8** %4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then11, %entry
  %retval.0 = phi %struct.clk_lookup* [ null, %entry ], [ %cl, %if.then11 ], [ %cl, %if.end9 ]
  ret %struct.clk_lookup* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #9
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #5 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #5 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.clk_lookup* @__clk_register_clkdev(%struct.clk_hw* noundef %hw, i8* noundef %con_id, i8* noundef %dev_id, ...) unnamed_addr #0 {
entry:
  %ap = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %ap to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call fastcc %struct.clk_lookup* @vclkdev_create(%struct.clk_hw* noundef %hw, i8* noundef %con_id, i8* noundef %dev_id, %"struct.std::__va_list"* noundef nonnull %byval-temp) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  ret %struct.clk_lookup* %call
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
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
!7 = !{!"auto-init"}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2152529849}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152535500}
