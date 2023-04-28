; ModuleID = 'drivers/clk/clk-fractional-divider.c'
source_filename = "drivers/clk/clk-fractional-divider.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.clk_ops = type { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type opaque
%struct.clk = type opaque
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
%struct.clk_parent_data = type { %struct.clk_hw*, i8*, i8*, i32 }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.61 = type { %struct.hlist_node }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.kmem_cache = type opaque
%struct.clk_fractional_divider = type { %struct.clk_hw, i8*, i8, i8, i32, i8, i8, i32, i8, void (%struct.clk_hw*, i64, i64*, i64*, i64*)*, %struct.spinlock* }
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

@clk_fractional_divider_ops = dso_local constant %struct.clk_ops { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* @clk_fd_recalc_rate, i64 (%struct.clk_hw*, i64, i64*)* @clk_fd_round_rate, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* null, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* @clk_fd_set_rate, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_fractional_divider_general_approximation(%struct.clk_hw* nocapture noundef readonly %hw, i64 noundef %rate, i64* nocapture noundef readonly %parent_rate, i64* noundef %m, i64* noundef %n) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to %struct.clk_fractional_divider*
  %flags = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 2
  %1 = bitcast %struct.clk_hw* %flags to i8*
  %2 = load i8, i8* %1, align 8
  %3 = and i8 %2, 4
  %tobool.not = icmp eq i8 %3, 0
  %.pre = load i64, i64* %parent_rate, align 8
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  %nwidth13.phi.trans.insert = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %0, i64 0, i32 6
  %.pre32 = load i8, i8* %nwidth13.phi.trans.insert, align 1
  %.pre33 = zext i8 %.pre32 to i64
  br label %if.end8

if.then:                                          ; preds = %entry
  %div = udiv i64 %.pre, %rate
  %sub = add i64 %div, -1
  %call = call fastcc i32 @fls_long(i64 noundef %sub) #9
  %conv1 = zext i32 %call to i64
  %nwidth = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %0, i64 0, i32 6
  %4 = load i8, i8* %nwidth, align 1
  %conv2 = zext i8 %4 to i64
  %5 = call i64 @llvm.usub.sat.i64(i64 %conv1, i64 %conv2)
  %rate.addr.0 = shl i64 %rate, %5
  br label %if.end8

if.end8:                                          ; preds = %entry.if.end8_crit_edge, %if.then
  %conv14.pre-phi = phi i64 [ %.pre33, %entry.if.end8_crit_edge ], [ %conv2, %if.then ]
  %rate.addr.1 = phi i64 [ %rate, %entry.if.end8_crit_edge ], [ %rate.addr.0, %if.then ]
  %mwidth = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %0, i64 0, i32 3
  %6 = load i8, i8* %mwidth, align 1
  %conv9 = zext i8 %6 to i64
  %sub11 = sub nsw i64 64, %conv9
  %sh_prom = and i64 %sub11, 4294967295
  %shr = lshr i64 -1, %sh_prom
  %sub16 = sub nsw i64 64, %conv14.pre-phi
  %sh_prom17 = and i64 %sub16, 4294967295
  %shr18 = lshr i64 -1, %sh_prom17
  call void @rational_best_approximation(i64 noundef %rate.addr.1, i64 noundef %.pre, i64 noundef %shr, i64 noundef %shr18, i64* noundef %m, i64* noundef %n) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #2 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #11, !range !7
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @clk_fd_recalc_rate(%struct.clk_hw* nocapture noundef readonly %hw, i64 noundef %parent_rate) #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to %struct.clk_fractional_divider*
  %lock = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 2, i32 2
  %1 = bitcast %struct.clk_init_data** %lock to %struct.spinlock**
  %2 = load %struct.spinlock*, %struct.spinlock** %1, align 8
  %tobool.not = icmp eq %struct.spinlock* %2, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i64 0, i32 0, i32 0
  %call5 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #9
  br label %if.end

if.end:                                           ; preds = %entry, %do.body2
  %flags.0 = phi i64 [ %call5, %do.body2 ], [ 0, %entry ]
  %call10 = call fastcc i32 @clk_fd_readl(%struct.clk_fractional_divider* noundef %0) #9
  %3 = load %struct.spinlock*, %struct.spinlock** %1, align 8
  %tobool12.not = icmp eq %struct.spinlock* %3, null
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end
  %rlock.i71 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i71, i64 noundef %flags.0) #10
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then13
  %mmask = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %0, i64 0, i32 4
  %4 = load i32, i32* %mmask, align 4
  %and = and i32 %4, %call10
  %mshift = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 1
  %5 = bitcast %struct.clk** %mshift to i8*
  %6 = load i8, i8* %5, align 8
  %conv17 = zext i8 %6 to i32
  %shr = lshr i32 %and, %conv17
  %conv18 = zext i32 %shr to i64
  %nmask = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %0, i64 0, i32 7
  %7 = load i32, i32* %nmask, align 4
  %and19 = and i32 %7, %call10
  %nshift = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 2
  %8 = bitcast %struct.clk_init_data** %nshift to i8*
  %9 = load i8, i8* %8, align 8
  %conv20 = zext i8 %9 to i32
  %shr21 = lshr i32 %and19, %conv20
  %conv22 = zext i32 %shr21 to i64
  %flags23 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 2
  %10 = bitcast %struct.clk_hw* %flags23 to i8*
  %11 = load i8, i8* %10, align 8
  %12 = and i8 %11, 1
  %13 = zext i8 %12 to i64
  %n.0 = add nuw nsw i64 %13, %conv22
  %m.0 = add nuw nsw i64 %13, %conv18
  %tobool30 = icmp ne i64 %n.0, 0
  %tobool31 = icmp ne i64 %m.0, 0
  %or.cond = select i1 %tobool30, i1 %tobool31, i1 false
  br i1 %or.cond, label %if.end33, label %cleanup

if.end33:                                         ; preds = %if.end16
  %mul = mul i64 %m.0, %parent_rate
  %conv35 = and i64 %n.0, 4294967295
  %div = udiv i64 %mul, %conv35
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end33
  %retval.0 = phi i64 [ %div, %if.end33 ], [ %parent_rate, %if.end16 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @clk_fd_round_rate(%struct.clk_hw* noundef %hw, i64 noundef %rate, i64* noundef %parent_rate) #0 {
entry:
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %0 = bitcast i64* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 0, i64* %m, align 8, !annotation !8
  %1 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  store i64 0, i64* %n, align 8, !annotation !8
  %tobool.not = icmp eq i64 %rate, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  %.pre = load i64, i64* %parent_rate, align 8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = call i64 @clk_hw_get_flags(%struct.clk_hw* noundef %hw) #10
  %and = and i64 %call, 4
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i64, i64* %parent_rate, align 8
  %cmp.not = icmp ugt i64 %2, %rate
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %approximation = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 2, i32 1
  %3 = bitcast %struct.clk** %approximation to void (%struct.clk_hw*, i64, i64*, i64*, i64*)**
  %4 = load void (%struct.clk_hw*, i64, i64*, i64*, i64*)*, void (%struct.clk_hw*, i64, i64*, i64*, i64*)** %3, align 8
  %tobool2.not = icmp eq void (%struct.clk_hw*, i64, i64*, i64*, i64*)* %4, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void %4(%struct.clk_hw* noundef %hw, i64 noundef %rate, i64* noundef %parent_rate, i64* noundef nonnull %m, i64* noundef nonnull %n) #10
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @clk_fractional_divider_general_approximation(%struct.clk_hw* noundef %hw, i64 noundef %rate, i64* noundef %parent_rate, i64* noundef nonnull %m, i64* noundef nonnull %n) #9
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %5 = load i64, i64* %parent_rate, align 8
  %6 = load i64, i64* %m, align 8
  %mul = mul i64 %6, %5
  %7 = load i64, i64* %n, align 8
  %conv6 = and i64 %7, 4294967295
  %div = udiv i64 %mul, %conv6
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry.if.then_crit_edge, %if.end5
  %retval.0 = phi i64 [ %div, %if.end5 ], [ %.pre, %entry.if.then_crit_edge ], [ %2, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @clk_fd_set_rate(%struct.clk_hw* nocapture noundef readonly %hw, i64 noundef %rate, i64 noundef %parent_rate) #0 {
entry:
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %0 = bitcast %struct.clk_hw* %hw to %struct.clk_fractional_divider*
  %1 = bitcast i64* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  store i64 0, i64* %m, align 8, !annotation !8
  %2 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #11
  store i64 0, i64* %n, align 8, !annotation !8
  %mwidth = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %0, i64 0, i32 3
  %3 = load i8, i8* %mwidth, align 1
  %conv = zext i8 %3 to i64
  %sub1 = sub nsw i64 64, %conv
  %sh_prom = and i64 %sub1, 4294967295
  %shr = lshr i64 -1, %sh_prom
  %nwidth = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %0, i64 0, i32 6
  %4 = load i8, i8* %nwidth, align 1
  %conv2 = zext i8 %4 to i64
  %sub4 = sub nsw i64 64, %conv2
  %sh_prom5 = and i64 %sub4, 4294967295
  %shr6 = lshr i64 -1, %sh_prom5
  call void @rational_best_approximation(i64 noundef %rate, i64 noundef %parent_rate, i64 noundef %shr, i64 noundef %shr6, i64* noundef nonnull %m, i64* noundef nonnull %n) #10
  %flags9 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 2
  %5 = bitcast %struct.clk_hw* %flags9 to i8*
  %6 = load i8, i8* %5, align 8
  %7 = and i8 %6, 1
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %m, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %m, align 8
  %9 = load i64, i64* %n, align 8
  %dec12 = add i64 %9, -1
  store i64 %dec12, i64* %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 2, i32 2
  %10 = bitcast %struct.clk_init_data** %lock to %struct.spinlock**
  %11 = load %struct.spinlock*, %struct.spinlock** %10, align 8
  %tobool13.not = icmp eq %struct.spinlock* %11, null
  br i1 %tobool13.not, label %if.end25, label %do.body16

do.body16:                                        ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i64 0, i32 0, i32 0
  %call20 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #9
  br label %if.end25

if.end25:                                         ; preds = %if.end, %do.body16
  %flags.0 = phi i64 [ %call20, %do.body16 ], [ 0, %if.end ]
  %call26 = call fastcc i32 @clk_fd_readl(%struct.clk_fractional_divider* noundef %0) #9
  %mmask = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %0, i64 0, i32 4
  %12 = load i32, i32* %mmask, align 4
  %nmask = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %0, i64 0, i32 7
  %13 = load i32, i32* %nmask, align 4
  %or = or i32 %13, %12
  %neg = xor i32 %or, -1
  %and27 = and i32 %call26, %neg
  %14 = load i64, i64* %m, align 8
  %mshift = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 1
  %15 = bitcast %struct.clk** %mshift to i8*
  %16 = load i8, i8* %15, align 8
  %sh_prom29 = zext i8 %16 to i64
  %shl = shl i64 %14, %sh_prom29
  %17 = load i64, i64* %n, align 8
  %nshift = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 2
  %18 = bitcast %struct.clk_init_data** %nshift to i8*
  %19 = load i8, i8* %18, align 8
  %sh_prom31 = zext i8 %19 to i64
  %shl32 = shl i64 %17, %sh_prom31
  %or33 = or i64 %shl32, %shl
  %20 = trunc i64 %or33 to i32
  %conv36 = or i32 %and27, %20
  call fastcc void @clk_fd_writel(%struct.clk_fractional_divider* noundef %0, i32 noundef %conv36) #9
  %21 = load %struct.spinlock*, %struct.spinlock** %10, align 8
  %tobool38.not = icmp eq %struct.spinlock* %21, null
  br i1 %tobool38.not, label %if.end42, label %if.then39

if.then39:                                        ; preds = %if.end25
  %rlock.i61 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i61, i64 noundef %flags.0) #10
  br label %if.end42

if.end42:                                         ; preds = %if.end25, %if.then39
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk_hw* @clk_hw_register_fractional_divider(%struct.device* noundef %dev, i8* noundef %name, i8* noundef %parent_name, i64 noundef %flags, i8* noundef %reg, i8 noundef %mshift, i8 noundef %mwidth, i8 noundef %nshift, i8 noundef %nwidth, i8 noundef %clk_divider_flags, %struct.spinlock* noundef %lock) local_unnamed_addr #0 {
entry:
  %parent_name.addr = alloca i8*, align 8
  %init = alloca %struct.clk_init_data, align 8
  store i8* %parent_name, i8** %parent_name.addr, align 8
  %0 = bitcast %struct.clk_init_data* %init to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #11
  %1 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 3
  %2 = bitcast %struct.clk_parent_data** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 24, i1 false), !annotation !8
  %call = call fastcc i8* @kzalloc() #9
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %name2 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 0
  store i8* %name, i8** %name2, align 8
  %ops = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 1
  store %struct.clk_ops* @clk_fractional_divider_ops, %struct.clk_ops** %ops, align 8
  %flags3 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 6
  store i64 %flags, i64* %flags3, align 8
  %tobool4.not = icmp eq i8* %parent_name, null
  %parent_name.addr. = select i1 %tobool4.not, i8** null, i8** %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 2
  store i8** %parent_name.addr., i8*** %parent_names, align 8
  %tobool5.not = icmp ne i8* %parent_name, null
  %conv = zext i1 %tobool5.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 5
  store i8 %conv, i8* %num_parents, align 8
  %reg7 = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %reg7 to i8**
  store i8* %reg, i8** %3, align 8
  %4 = getelementptr inbounds i8, i8* %call, i64 32
  store i8 %mshift, i8* %4, align 8
  %5 = getelementptr inbounds i8, i8* %call, i64 33
  store i8 %mwidth, i8* %5, align 1
  %conv10 = zext i8 %mwidth to i64
  %sub11 = sub nsw i64 64, %conv10
  %sh_prom = and i64 %sub11, 4294967295
  %shr = lshr i64 -1, %sh_prom
  %sh_prom13 = zext i8 %mshift to i64
  %shl = shl i64 %shr, %sh_prom13
  %conv14 = trunc i64 %shl to i32
  %mmask = getelementptr inbounds i8, i8* %call, i64 36
  %6 = bitcast i8* %mmask to i32*
  store i32 %conv14, i32* %6, align 4
  %7 = getelementptr inbounds i8, i8* %call, i64 40
  store i8 %nshift, i8* %7, align 8
  %8 = getelementptr inbounds i8, i8* %call, i64 41
  store i8 %nwidth, i8* %8, align 1
  %conv17 = zext i8 %nwidth to i64
  %sub19 = sub nsw i64 64, %conv17
  %sh_prom20 = and i64 %sub19, 4294967295
  %shr21 = lshr i64 -1, %sh_prom20
  %sh_prom25 = zext i8 %nshift to i64
  %shl26 = shl i64 %shr21, %sh_prom25
  %conv27 = trunc i64 %shl26 to i32
  %nmask = getelementptr inbounds i8, i8* %call, i64 44
  %9 = bitcast i8* %nmask to i32*
  store i32 %conv27, i32* %9, align 4
  %10 = getelementptr inbounds i8, i8* %call, i64 48
  store i8 %clk_divider_flags, i8* %10, align 8
  %lock29 = getelementptr inbounds i8, i8* %call, i64 64
  %11 = bitcast i8* %lock29 to %struct.spinlock**
  store %struct.spinlock* %lock, %struct.spinlock** %11, align 8
  %hw30 = bitcast i8* %call to %struct.clk_hw*
  %init31 = getelementptr inbounds i8, i8* %call, i64 16
  %12 = bitcast i8* %init31 to %struct.clk_init_data**
  store %struct.clk_init_data* %init, %struct.clk_init_data** %12, align 8
  %call33 = call i32 @clk_hw_register(%struct.device* noundef %dev, %struct.clk_hw* noundef nonnull %hw30) #10
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %if.then35

if.then35:                                        ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #10
  %conv36 = sext i32 %call33 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.then35
  %conv36.sink = phi i64 [ %conv36, %if.then35 ], [ -12, %entry ]
  %call37 = call fastcc i8* @ERR_PTR(i64 noundef %conv36.sink) #9
  %13 = bitcast i8* %call37 to %struct.clk_hw*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi %struct.clk_hw* [ %hw30, %if.end ], [ %13, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #11
  ret %struct.clk_hw* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #10
  ret i8* %call.i.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(%struct.device* noundef, %struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @clk_register_fractional_divider(%struct.device* noundef %dev, i8* noundef %name, i8* noundef %parent_name, i64 noundef %flags, i8* noundef %reg, i8 noundef %mshift, i8 noundef %mwidth, i8 noundef %nshift, i8 noundef %nwidth, i8 noundef %clk_divider_flags, %struct.spinlock* noundef %lock) local_unnamed_addr #0 {
entry:
  %call = call %struct.clk_hw* @clk_hw_register_fractional_divider(%struct.device* noundef %dev, i8* noundef %name, i8* noundef %parent_name, i64 noundef %flags, i8* noundef %reg, i8 noundef %mshift, i8 noundef %mwidth, i8 noundef %nshift, i8 noundef %nwidth, i8 noundef %clk_divider_flags, %struct.spinlock* noundef %lock) #9
  %0 = bitcast %struct.clk_hw* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #9
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.clk_hw* %call to %struct.clk*
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %call, i64 0, i32 1
  %2 = load %struct.clk*, %struct.clk** %clk, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.clk* [ %1, %if.then ], [ %2, %if.end ]
  ret %struct.clk* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_hw_unregister_fractional_divider(%struct.clk_hw* noundef %hw) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to i8*
  call void @clk_hw_unregister(%struct.clk_hw* noundef %hw) #10
  call void @kfree(i8* noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(%struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_fd_readl(%struct.clk_fractional_divider* nocapture noundef readonly %fd) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %fd, i64 0, i32 8
  %0 = load i8, i8* %flags, align 8
  %1 = and i8 %0, 2
  %tobool.not = icmp eq i8 %1, 0
  %reg5 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %fd, i64 0, i32 1
  %2 = load i8*, i8** %reg5, align 8
  %3 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %2) #11
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @__fswab32(i32 noundef %3) #12
  call void asm sideeffect "dmb oshld", "~{memory}"() #11, !srcloc !10
  %conv2 = zext i32 %call1 to i64
  %4 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv2) #11, !srcloc !11
  br label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "dmb oshld", "~{memory}"() #11, !srcloc !12
  %conv9 = zext i32 %3 to i64
  %5 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv9) #11, !srcloc !13
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #9
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #11, !srcloc !15
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #11, !srcloc !16
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #9
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !17

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #11, !srcloc !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #7 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #11, !srcloc !19
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #2 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #11, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #11, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clk_hw_get_flags(%struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_fd_writel(%struct.clk_fractional_divider* nocapture noundef readonly %fd, i32 noundef %val) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %fd, i64 0, i32 8
  %0 = load i8, i8* %flags, align 8
  %1 = and i8 %0, 2
  %tobool.not = icmp eq i8 %1, 0
  call void asm sideeffect "dmb oshst", "~{memory}"() #11
  br i1 %tobool.not, label %if.else, label %cond.end

cond.end:                                         ; preds = %entry
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #12
  %reg = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %fd, i64 0, i32 1
  %2 = load i8*, i8** %reg, align 8
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %call, i8* %2) #11, !srcloc !23
  br label %if.end

if.else:                                          ; preds = %entry
  %reg9 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %fd, i64 0, i32 1
  %3 = load i8*, i8** %reg9, align 8
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %val, i8* %3) #11, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #8

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 0, i64 65}
!8 = !{!"auto-init"}
!9 = !{i64 2149584947}
!10 = !{i64 2152978548}
!11 = !{i64 2152978391, i64 2152978423}
!12 = !{i64 2152979290}
!13 = !{i64 2152979133, i64 2152979165}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2149507691, i64 2149507738, i64 2149507744, i64 2149507781, i64 2149507799, i64 2149509110, i64 2149509158, i64 2149509206, i64 2149509269, i64 2149509318, i64 2149507877, i64 2149507902, i64 2149507928, i64 2149507934, i64 2149508776, i64 2149508816, i64 2149508834, i64 2149508866, i64 2149508894, i64 2149508948, i64 2149508968, i64 2149509065, i64 2149507957, i64 2149507971, i64 2149507977, i64 2149508027, i64 2149508073, i64 2149508106}
!16 = !{i64 2149509870, i64 2149509917, i64 2149509923, i64 2149509960, i64 2149509978, i64 2149510921, i64 2149510969, i64 2149511017, i64 2149511080, i64 2149511129, i64 2149510056, i64 2149510081, i64 2149510107, i64 2149510113, i64 2149510150, i64 2149510156, i64 2149510206, i64 2149510252, i64 2149510285}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2149501988, i64 2149502035, i64 2149502041, i64 2149502078, i64 2149502096, i64 2149503437, i64 2149503485, i64 2149503533, i64 2149503596, i64 2149503645, i64 2149502174, i64 2149502199, i64 2149502225, i64 2149502231, i64 2149503103, i64 2149503143, i64 2149503161, i64 2149503193, i64 2149503221, i64 2149503275, i64 2149503295, i64 2149503392, i64 2149502254, i64 2149502268, i64 2149502274, i64 2149502324, i64 2149502370, i64 2149502403}
!19 = !{i64 2147886176, i64 2147886209, i64 2147886262, i64 2147886321, i64 2147886355, i64 2147886410, i64 2147886439, i64 2147886459}
!20 = !{i64 2149610790}
!21 = !{i64 2149554089}
!22 = !{i64 2149513704, i64 2149513751, i64 2149513757, i64 2149513794, i64 2149513812, i64 2149515123, i64 2149515171, i64 2149515219, i64 2149515282, i64 2149515331, i64 2149513890, i64 2149513915, i64 2149513941, i64 2149513947, i64 2149514789, i64 2149514829, i64 2149514847, i64 2149514879, i64 2149514907, i64 2149514961, i64 2149514981, i64 2149515078, i64 2149513970, i64 2149513984, i64 2149513990, i64 2149514040, i64 2149514086, i64 2149514119}
!23 = !{i64 3368361}
