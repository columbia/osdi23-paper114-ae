; ModuleID = 'drivers/clk/clk-divider.c'
source_filename = "drivers/clk/clk-divider.c"
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
%struct.clk_div_table = type { i32, i32 }
%struct.clk_divider = type { %struct.clk_hw, i8*, i8, i8, i8, %struct.clk_div_table*, %struct.spinlock* }
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }

@.str = private unnamed_addr constant [53 x i8] c"%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\0A\00", align 1
@clk_divider_ops = dso_local constant %struct.clk_ops { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* @clk_divider_recalc_rate, i64 (%struct.clk_hw*, i64, i64*)* @clk_divider_round_rate, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_divider_determine_rate, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* @clk_divider_set_rate, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8
@clk_divider_ro_ops = dso_local constant %struct.clk_ops { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* @clk_divider_recalc_rate, i64 (%struct.clk_hw*, i64, i64*)* @clk_divider_round_rate, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_divider_determine_rate, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* null, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"\014divider value exceeds LOWORD field\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"devm_clk_hw_release_divider\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @divider_recalc_rate(%struct.clk_hw* noundef %hw, i64 noundef %parent_rate, i32 noundef %val, %struct.clk_div_table* noundef %table, i64 noundef %flags, i64 noundef %width) local_unnamed_addr #0 {
entry:
  %conv = trunc i64 %width to i8
  %call = call fastcc i32 @_get_div(%struct.clk_div_table* noundef %table, i32 noundef %val, i64 noundef %flags, i8 noundef %conv) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %and = and i64 %flags, 4
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %do.end, label %cleanup, !prof !7

do.end:                                           ; preds = %if.then
  %call13 = call i8* @clk_hw_get_name(%struct.clk_hw* noundef %hw) #12
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* noundef %call13) #12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/clk/clk-divider.c\22; .popsection; .long 14472b - 14470b; .short 141; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !8
  br label %cleanup

if.end26:                                         ; preds = %entry
  %conv27 = zext i32 %call to i64
  %add = add i64 %parent_rate, -1
  %sub = add i64 %add, %conv27
  %div31 = udiv i64 %sub, %conv27
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.end, %if.end26
  %retval.0 = phi i64 [ %div31, %if.end26 ], [ %parent_rate, %do.end ], [ %parent_rate, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @_get_div(%struct.clk_div_table* noundef readonly %table, i32 noundef %val, i64 noundef %flags, i8 noundef %width) unnamed_addr #2 {
entry:
  %and = and i64 %flags, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %and1 = and i64 %flags, 2
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %shl = shl nuw i32 1, %val
  br label %return

if.end4:                                          ; preds = %if.end
  %and5 = and i64 %flags, 64
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end4
  %tobool8.not = icmp eq i32 %val, 0
  %conv = zext i8 %width to i32
  %shl9 = shl nuw i32 1, %conv
  %cond = select i1 %tobool8.not, i32 %shl9, i32 %val
  br label %return

if.end10:                                         ; preds = %if.end4
  %tobool11.not = icmp eq %struct.clk_div_table* %table, null
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  %call = call fastcc i32 @_get_table_div(%struct.clk_div_table* noundef nonnull %table, i32 noundef %val) #11
  br label %return

if.end13:                                         ; preds = %if.end10
  %add14 = add i32 %val, 1
  br label %return

return:                                           ; preds = %entry, %if.end13, %if.then12, %if.then7, %if.then3
  %retval.0 = phi i32 [ %shl, %if.then3 ], [ %cond, %if.then7 ], [ %call, %if.then12 ], [ %add14, %if.end13 ], [ %val, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @clk_hw_get_name(%struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @divider_determine_rate(%struct.clk_hw* noundef %hw, %struct.clk_rate_request* nocapture noundef %req, %struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 4
  %0 = load %struct.clk_hw*, %struct.clk_hw** %best_parent_hw, align 8
  %rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  %1 = load i64, i64* %rate, align 8
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 3
  %call = call fastcc i32 @clk_divider_bestdiv(%struct.clk_hw* noundef %hw, %struct.clk_hw* noundef %0, i64 noundef %1, i64* noundef %best_parent_rate, %struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags) #11
  %2 = load i64, i64* %best_parent_rate, align 8
  %conv = sext i32 %call to i64
  %add = add nsw i64 %conv, -1
  %sub = add i64 %add, %2
  %conv2 = zext i32 %call to i64
  %div5 = udiv i64 %sub, %conv2
  store i64 %div5, i64* %rate, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_divider_bestdiv(%struct.clk_hw* noundef %hw, %struct.clk_hw* noundef %parent, i64 noundef %rate, i64* nocapture noundef %best_parent_rate, %struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %best_parent_rate, align 8
  %tobool.not = icmp eq i64 %rate, 0
  %spec.store.select = select i1 %tobool.not, i64 1, i64 %rate
  %call = call fastcc i32 @_get_maxdiv(%struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags) #11
  %conv = zext i32 %call to i64
  %call1 = call i64 @clk_hw_get_flags(%struct.clk_hw* noundef %hw) #12
  %and = and i64 %call1, 4
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.then3, label %if.end15

if.then3:                                         ; preds = %entry
  %1 = load i64, i64* %best_parent_rate, align 8
  %call4 = call fastcc i32 @_div_round(%struct.clk_div_table* noundef %table, i64 noundef %1, i64 noundef %spec.store.select, i64 noundef %flags) #11
  %cmp = icmp eq i32 %call4, 0
  %cond = select i1 %cmp, i32 1, i32 %call4
  %conv6 = sext i32 %cond to i64
  %cmp7 = icmp ugt i64 %conv6, %conv
  %cond13 = select i1 %cmp7, i32 %call, i32 %cond
  br label %cleanup

if.end15:                                         ; preds = %entry
  %div = udiv i64 -1, %spec.store.select
  %cmp16 = icmp ult i64 %div, %conv
  %cond21 = select i1 %cmp16, i64 %div, i64 %conv
  %call22 = call fastcc i32 @_next_div(%struct.clk_div_table* noundef %table, i32 noundef 0, i64 noundef %flags) #11
  %conv23115 = sext i32 %call22 to i64
  %cmp24.not116 = icmp ult i64 %cond21, %conv23115
  br i1 %cmp24.not116, label %if.then46, label %for.body

for.body:                                         ; preds = %if.end15, %for.inc
  %conv23120 = phi i64 [ %conv23, %for.inc ], [ %conv23115, %if.end15 ]
  %i.0119 = phi i32 [ %call44, %for.inc ], [ %call22, %if.end15 ]
  %bestdiv.0118 = phi i32 [ %bestdiv.1, %for.inc ], [ 0, %if.end15 ]
  %best.0117 = phi i64 [ %best.1, %for.inc ], [ 0, %if.end15 ]
  %mul = mul i64 %conv23120, %spec.store.select
  %cmp27 = icmp eq i64 %mul, %0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body
  store i64 %0, i64* %best_parent_rate, align 8
  br label %cleanup

if.end30:                                         ; preds = %for.body
  %call33 = call i64 @clk_hw_round_rate(%struct.clk_hw* noundef %parent, i64 noundef %mul) #12
  %add = add nsw i64 %conv23120, -1
  %sub = add i64 %add, %call33
  %conv35 = zext i32 %i.0119 to i64
  %div38 = udiv i64 %sub, %conv35
  %call41 = call fastcc i1 @_is_best_div(i64 noundef %spec.store.select, i64 noundef %div38, i64 noundef %best.0117, i64 noundef %flags) #11
  br i1 %call41, label %if.then42, label %for.inc

if.then42:                                        ; preds = %if.end30
  store i64 %call33, i64* %best_parent_rate, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %if.then42
  %best.1 = phi i64 [ %div38, %if.then42 ], [ %best.0117, %if.end30 ]
  %bestdiv.1 = phi i32 [ %i.0119, %if.then42 ], [ %bestdiv.0118, %if.end30 ]
  %call44 = call fastcc i32 @_next_div(%struct.clk_div_table* noundef %table, i32 noundef %i.0119, i64 noundef %flags) #11
  %conv23 = sext i32 %call44 to i64
  %cmp24.not = icmp ult i64 %cond21, %conv23
  br i1 %cmp24.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool45.not = icmp eq i32 %bestdiv.1, 0
  br i1 %tobool45.not, label %if.then46, label %cleanup

if.then46:                                        ; preds = %if.end15, %for.end
  %call47 = call fastcc i32 @_get_maxdiv(%struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags) #11
  %call48 = call i64 @clk_hw_round_rate(%struct.clk_hw* noundef %parent, i64 noundef 1) #12
  store i64 %call48, i64* %best_parent_rate, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then46, %if.then29, %if.then3
  %retval.0 = phi i32 [ %i.0119, %if.then29 ], [ %cond13, %if.then3 ], [ %bestdiv.1, %for.end ], [ %call47, %if.then46 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @divider_ro_determine_rate(%struct.clk_hw* noundef %hw, %struct.clk_rate_request* nocapture noundef %req, %struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags, i32 noundef %val) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @_get_div(%struct.clk_div_table* noundef %table, i32 noundef %val, i64 noundef %flags, i8 noundef %width) #11
  %call1 = call i64 @clk_hw_get_flags(%struct.clk_hw* noundef %hw) #12
  %and = and i64 %call1, 4
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  %best_parent_rate7.phi.trans.insert = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 3
  %.pre = load i64, i64* %best_parent_rate7.phi.trans.insert, align 8
  %.pre29 = sext i32 %call to i64
  br label %if.end6

if.then:                                          ; preds = %entry
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 4
  %0 = load %struct.clk_hw*, %struct.clk_hw** %best_parent_hw, align 8
  %tobool2.not = icmp eq %struct.clk_hw* %0, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  %1 = load i64, i64* %rate, align 8
  %conv = sext i32 %call to i64
  %mul = mul i64 %1, %conv
  %call5 = call i64 @clk_hw_round_rate(%struct.clk_hw* noundef nonnull %0, i64 noundef %mul) #12
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 3
  store i64 %call5, i64* %best_parent_rate, align 8
  br label %if.end6

if.end6:                                          ; preds = %entry.if.end6_crit_edge, %if.end
  %conv8.pre-phi = phi i64 [ %.pre29, %entry.if.end6_crit_edge ], [ %conv, %if.end ]
  %2 = phi i64 [ %.pre, %entry.if.end6_crit_edge ], [ %call5, %if.end ]
  %add = add nsw i64 %conv8.pre-phi, -1
  %sub = add i64 %add, %2
  %conv9 = zext i32 %call to i64
  %div12 = udiv i64 %sub, %conv9
  %rate14 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  store i64 %div12, i64* %rate14, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clk_hw_get_flags(%struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @divider_round_rate_parent(%struct.clk_hw* noundef %hw, %struct.clk_hw* noundef %parent, i64 noundef %rate, i64* nocapture noundef %prate, %struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %req = alloca %struct.clk_rate_request, align 8
  %0 = bitcast %struct.clk_rate_request* %req to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #13
  %rate1 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  store i64 %rate, i64* %rate1, align 8
  %min_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 1
  store i64 0, i64* %min_rate, align 8
  %max_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 2
  store i64 0, i64* %max_rate, align 8
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 3
  %1 = load i64, i64* %prate, align 8
  store i64 %1, i64* %best_parent_rate, align 8
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 4
  store %struct.clk_hw* %parent, %struct.clk_hw** %best_parent_hw, align 8
  %call = call i32 @divider_determine_rate(%struct.clk_hw* noundef %hw, %struct.clk_rate_request* noundef nonnull %req, %struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags) #11
  %2 = load i64, i64* %best_parent_rate, align 8
  store i64 %2, i64* %prate, align 8
  %3 = load i64, i64* %rate1, align 8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #13
  ret i64 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @divider_ro_round_rate_parent(%struct.clk_hw* noundef %hw, %struct.clk_hw* noundef %parent, i64 noundef %rate, i64* nocapture noundef %prate, %struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags, i32 noundef %val) local_unnamed_addr #0 {
entry:
  %req = alloca %struct.clk_rate_request, align 8
  %0 = bitcast %struct.clk_rate_request* %req to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #13
  %rate1 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 0
  store i64 %rate, i64* %rate1, align 8
  %min_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 1
  store i64 0, i64* %min_rate, align 8
  %max_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 2
  store i64 0, i64* %max_rate, align 8
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 3
  %1 = load i64, i64* %prate, align 8
  store i64 %1, i64* %best_parent_rate, align 8
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %req, i64 0, i32 4
  store %struct.clk_hw* %parent, %struct.clk_hw** %best_parent_hw, align 8
  %call = call i32 @divider_ro_determine_rate(%struct.clk_hw* noundef %hw, %struct.clk_rate_request* noundef nonnull %req, %struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags, i32 noundef %val) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %best_parent_rate, align 8
  store i64 %2, i64* %prate, align 8
  %3 = load i64, i64* %rate1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %3, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #13
  ret i64 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @divider_get_val(i64 noundef %rate, i64 noundef %parent_rate, %struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %add = add i64 %rate, -1
  %sub = add i64 %add, %parent_rate
  %conv1 = and i64 %rate, 4294967295
  %div4 = udiv i64 %sub, %conv1
  %conv6 = trunc i64 %div4 to i32
  %call = call fastcc i1 @_is_valid_div(%struct.clk_div_table* noundef %table, i32 noundef %conv6, i64 noundef %flags) #11
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call7 = call fastcc i32 @_get_val(%struct.clk_div_table* noundef %table, i32 noundef %conv6, i64 noundef %flags, i8 noundef %width) #11
  %conv8 = zext i8 %width to i32
  %notmask = shl nsw i32 -1, %conv8
  %sub9 = xor i32 %notmask, -1
  %cmp = icmp ult i32 %call7, %sub9
  %cond = select i1 %cmp, i32 %call7, i32 %sub9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %cond, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i1 @_is_valid_div(%struct.clk_div_table* noundef readonly %table, i32 noundef %div, i64 noundef %flags) unnamed_addr #4 {
entry:
  %and = and i64 %flags, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i32 %div to i64
  %call = call fastcc i1 @is_power_of_2(i64 noundef %conv) #14
  br label %return

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.clk_div_table* %table, null
  br i1 %tobool1.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i1 @_is_valid_table_div(%struct.clk_div_table* noundef nonnull %table, i32 noundef %div) #11
  br label %return

return:                                           ; preds = %if.end, %if.then2, %if.then
  %retval.0 = phi i1 [ %call, %if.then ], [ %call3, %if.then2 ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @_get_val(%struct.clk_div_table* noundef readonly %table, i32 noundef %div, i64 noundef %flags, i8 noundef %width) unnamed_addr #4 {
entry:
  %and = and i64 %flags, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %and1 = and i64 %flags, 2
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %conv = zext i32 %div to i64
  %0 = call i64 @llvm.cttz.i64(i64 %conv, i1 false) #13, !range !9
  %conv4 = trunc i64 %0 to i32
  br label %return

if.end5:                                          ; preds = %if.end
  %and6 = and i64 %flags, 64
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end5
  %conv9 = zext i8 %width to i32
  %shl = shl nuw i32 1, %conv9
  %cmp = icmp eq i32 %shl, %div
  %cond = select i1 %cmp, i32 0, i32 %div
  br label %return

if.end11:                                         ; preds = %if.end5
  %tobool12.not = icmp eq %struct.clk_div_table* %table, null
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  %call14 = call fastcc i32 @_get_table_val(%struct.clk_div_table* noundef nonnull %table, i32 noundef %div) #11
  br label %return

if.end15:                                         ; preds = %if.end11
  %sub16 = add i32 %div, -1
  br label %return

return:                                           ; preds = %entry, %if.end15, %if.then13, %if.then8, %if.then3
  %retval.0 = phi i32 [ %conv4, %if.then3 ], [ %cond, %if.then8 ], [ %call14, %if.then13 ], [ %sub16, %if.end15 ], [ %div, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @clk_divider_recalc_rate(%struct.clk_hw* noundef %hw, i64 noundef %parent_rate) #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to %struct.clk_divider*
  %call = call fastcc i32 @clk_div_readl(%struct.clk_divider* noundef %0) #11
  %shift = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 1
  %1 = bitcast %struct.clk** %shift to i8*
  %2 = load i8, i8* %1, align 8
  %conv = zext i8 %2 to i32
  %shr = lshr i32 %call, %conv
  %width = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %0, i64 0, i32 3
  %3 = load i8, i8* %width, align 1
  %conv1 = zext i8 %3 to i32
  %notmask = shl nsw i32 -1, %conv1
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %table = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 2
  %4 = bitcast %struct.clk_init_data** %table to %struct.clk_div_table**
  %5 = load %struct.clk_div_table*, %struct.clk_div_table** %4, align 8
  %flags = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %0, i64 0, i32 4
  %6 = load i8, i8* %flags, align 2
  %conv2 = zext i8 %6 to i64
  %conv4 = zext i8 %3 to i64
  %call5 = call i64 @divider_recalc_rate(%struct.clk_hw* noundef %hw, i64 noundef %parent_rate, i32 noundef %and, %struct.clk_div_table* noundef %5, i64 noundef %conv2, i64 noundef %conv4) #11
  ret i64 %call5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @clk_divider_round_rate(%struct.clk_hw* noundef %hw, i64 noundef %rate, i64* nocapture noundef %prate) #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to %struct.clk_divider*
  %flags = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %0, i64 0, i32 4
  %1 = load i8, i8* %flags, align 2
  %conv = zext i8 %1 to i64
  %and = and i64 %conv, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @clk_div_readl(%struct.clk_divider* noundef %0) #11
  %shift = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 1
  %2 = bitcast %struct.clk** %shift to i8*
  %3 = load i8, i8* %2, align 8
  %conv1 = zext i8 %3 to i32
  %shr = lshr i32 %call, %conv1
  %width = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %0, i64 0, i32 3
  %4 = load i8, i8* %width, align 1
  %conv2 = zext i8 %4 to i32
  %notmask = shl nsw i32 -1, %conv2
  %sub = xor i32 %notmask, -1
  %and3 = and i32 %shr, %sub
  %table = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 2
  %5 = bitcast %struct.clk_init_data** %table to %struct.clk_div_table**
  %6 = load %struct.clk_div_table*, %struct.clk_div_table** %5, align 8
  %7 = load i8, i8* %flags, align 2
  %conv6 = zext i8 %7 to i64
  %call7 = call fastcc i64 @divider_ro_round_rate(%struct.clk_hw* noundef %hw, i64 noundef %rate, i64* noundef %prate, %struct.clk_div_table* noundef %6, i8 noundef %4, i64 noundef %conv6, i32 noundef %and3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %table8 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 2
  %8 = bitcast %struct.clk_init_data** %table8 to %struct.clk_div_table**
  %9 = load %struct.clk_div_table*, %struct.clk_div_table** %8, align 8
  %width9 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %0, i64 0, i32 3
  %10 = load i8, i8* %width9, align 1
  %call12 = call fastcc i64 @divider_round_rate(%struct.clk_hw* noundef %hw, i64 noundef %rate, i64* noundef %prate, %struct.clk_div_table* noundef %9, i8 noundef %10, i64 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %call7, %if.then ], [ %call12, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @clk_divider_determine_rate(%struct.clk_hw* noundef %hw, %struct.clk_rate_request* nocapture noundef %req) #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to %struct.clk_divider*
  %flags = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %0, i64 0, i32 4
  %1 = load i8, i8* %flags, align 2
  %conv = zext i8 %1 to i64
  %and = and i64 %conv, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @clk_div_readl(%struct.clk_divider* noundef %0) #11
  %shift = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 1
  %2 = bitcast %struct.clk** %shift to i8*
  %3 = load i8, i8* %2, align 8
  %conv1 = zext i8 %3 to i32
  %shr = lshr i32 %call, %conv1
  %width = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %0, i64 0, i32 3
  %4 = load i8, i8* %width, align 1
  %conv2 = zext i8 %4 to i32
  %notmask = shl nsw i32 -1, %conv2
  %sub = xor i32 %notmask, -1
  %and3 = and i32 %shr, %sub
  %table = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 2
  %5 = bitcast %struct.clk_init_data** %table to %struct.clk_div_table**
  %6 = load %struct.clk_div_table*, %struct.clk_div_table** %5, align 8
  %7 = load i8, i8* %flags, align 2
  %conv6 = zext i8 %7 to i64
  %call7 = call i32 @divider_ro_determine_rate(%struct.clk_hw* noundef %hw, %struct.clk_rate_request* noundef %req, %struct.clk_div_table* noundef %6, i8 noundef %4, i64 noundef %conv6, i32 noundef %and3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %table8 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 2
  %8 = bitcast %struct.clk_init_data** %table8 to %struct.clk_div_table**
  %9 = load %struct.clk_div_table*, %struct.clk_div_table** %8, align 8
  %width9 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %0, i64 0, i32 3
  %10 = load i8, i8* %width9, align 1
  %call12 = call i32 @divider_determine_rate(%struct.clk_hw* noundef %hw, %struct.clk_rate_request* noundef %req, %struct.clk_div_table* noundef %9, i8 noundef %10, i64 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call7, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @clk_divider_set_rate(%struct.clk_hw* nocapture noundef readonly %hw, i64 noundef %rate, i64 noundef %parent_rate) #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to %struct.clk_divider*
  %table = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 2
  %1 = bitcast %struct.clk_init_data** %table to %struct.clk_div_table**
  %2 = load %struct.clk_div_table*, %struct.clk_div_table** %1, align 8
  %width = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %0, i64 0, i32 3
  %3 = load i8, i8* %width, align 1
  %flags1 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %0, i64 0, i32 4
  %4 = load i8, i8* %flags1, align 2
  %conv = zext i8 %4 to i64
  %call = call i32 @divider_get_val(i64 noundef %rate, i64 noundef %parent_rate, %struct.clk_div_table* noundef %2, i8 noundef %3, i64 noundef %conv) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 2
  %5 = bitcast %struct.clk_hw* %lock to %struct.spinlock**
  %6 = load %struct.spinlock*, %struct.spinlock** %5, align 8
  %tobool.not = icmp eq %struct.spinlock* %6, null
  br i1 %tobool.not, label %if.end16, label %do.body5

do.body5:                                         ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i64 0, i32 0, i32 0
  %call11 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #11
  %.pre = load i8, i8* %flags1, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.end, %do.body5
  %7 = phi i8 [ %.pre, %do.body5 ], [ %4, %if.end ]
  %flags.0 = phi i64 [ %call11, %do.body5 ], [ 0, %if.end ]
  %8 = and i8 %7, 8
  %tobool19.not = icmp eq i8 %8, 0
  br i1 %tobool19.not, label %if.else25, label %if.then20

if.then20:                                        ; preds = %if.end16
  %9 = load i8, i8* %width, align 1
  %conv22 = zext i8 %9 to i32
  %notmask71 = shl nsw i32 -1, %conv22
  %sub = xor i32 %notmask71, -1
  %shift = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 1
  %10 = bitcast %struct.clk** %shift to i8*
  %11 = load i8, i8* %10, align 8
  %conv23 = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv23, 16
  %shl24 = shl i32 %sub, %add
  br label %if.end35

if.else25:                                        ; preds = %if.end16
  %call26 = call fastcc i32 @clk_div_readl(%struct.clk_divider* noundef %0) #11
  %12 = load i8, i8* %width, align 1
  %conv28 = zext i8 %12 to i32
  %notmask = shl nsw i32 -1, %conv28
  %sub30 = xor i32 %notmask, -1
  %shift31 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i64 1, i32 1
  %13 = bitcast %struct.clk** %shift31 to i8*
  %14 = load i8, i8* %13, align 8
  %conv32 = zext i8 %14 to i32
  %shl33 = shl i32 %sub30, %conv32
  %neg = xor i32 %shl33, -1
  %and34 = and i32 %call26, %neg
  br label %if.end35

if.end35:                                         ; preds = %if.else25, %if.then20
  %conv37.pre-phi = phi i32 [ %conv32, %if.else25 ], [ %conv23, %if.then20 ]
  %val.0 = phi i32 [ %and34, %if.else25 ], [ %shl24, %if.then20 ]
  %shl38 = shl i32 %call, %conv37.pre-phi
  %or = or i32 %shl38, %val.0
  call fastcc void @clk_div_writel(%struct.clk_divider* noundef %0, i32 noundef %or) #11
  %15 = load %struct.spinlock*, %struct.spinlock** %5, align 8
  %tobool40.not = icmp eq %struct.spinlock* %15, null
  br i1 %tobool40.not, label %cleanup, label %if.then41

if.then41:                                        ; preds = %if.end35
  %rlock.i72 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i72, i64 noundef %flags.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end35, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %if.end35 ], [ 0, %if.then41 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk_hw* @__clk_hw_register_divider(%struct.device* noundef %dev, %struct.device_node* nocapture readnone %np, i8* noundef %name, i8* noundef %parent_name, %struct.clk_hw* noundef %parent_hw, %struct.clk_parent_data* noundef %parent_data, i64 noundef %flags, i8* noundef %reg, i8 noundef %shift, i8 noundef %width, i8 noundef %clk_divider_flags, %struct.clk_div_table* noundef %table, %struct.spinlock* noundef %lock) local_unnamed_addr #0 {
entry:
  %parent_name.addr = alloca i8*, align 8
  %parent_hw.addr = alloca %struct.clk_hw*, align 8
  %init = alloca %struct.clk_init_data, align 8
  store i8* %parent_name, i8** %parent_name.addr, align 8
  store %struct.clk_hw* %parent_hw, %struct.clk_hw** %parent_hw.addr, align 8
  %0 = bitcast %struct.clk_init_data* %init to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #13
  %1 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 5
  %2 = bitcast i8* %1 to i64*
  store i64 0, i64* %2, align 8
  %conv = zext i8 %clk_divider_flags to i64
  %and = and i64 %conv, 8
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %conv1 = zext i8 %width to i32
  %conv2 = zext i8 %shift to i32
  %add = add nuw nsw i32 %conv1, %conv2
  %cmp = icmp ugt i32 %add, 16
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.then
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #15
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.then, %entry
  %call7 = call fastcc i8* @kzalloc() #11
  %tobool8.not = icmp eq i8* %call7, null
  br i1 %tobool8.not, label %cleanup.sink.split, label %if.end11

if.end11:                                         ; preds = %if.end6
  %name12 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 0
  store i8* %name, i8** %name12, align 8
  %and14 = and i64 %conv, 32
  %tobool15.not = icmp eq i64 %and14, 0
  %spec.select = select i1 %tobool15.not, %struct.clk_ops* @clk_divider_ops, %struct.clk_ops* @clk_divider_ro_ops
  %3 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 1
  store %struct.clk_ops* %spec.select, %struct.clk_ops** %3, align 8
  %flags19 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 6
  store i64 %flags, i64* %flags19, align 8
  %tobool20.not = icmp eq i8* %parent_name, null
  %parent_name.addr. = select i1 %tobool20.not, i8** null, i8** %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 2
  store i8** %parent_name.addr., i8*** %parent_names, align 8
  %tobool21.not = icmp eq %struct.clk_hw* %parent_hw, null
  %cond25 = select i1 %tobool21.not, %struct.clk_hw** null, %struct.clk_hw** %parent_hw.addr
  %parent_hws = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 4
  store %struct.clk_hw** %cond25, %struct.clk_hw*** %parent_hws, align 8
  %parent_data26 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 3
  store %struct.clk_parent_data* %parent_data, %struct.clk_parent_data** %parent_data26, align 8
  %tobool27 = icmp ne i8* %parent_name, null
  %tobool28 = icmp ne %struct.clk_hw* %parent_hw, null
  %or.cond = or i1 %tobool27, %tobool28
  %tobool30 = icmp ne %struct.clk_parent_data* %parent_data, null
  %or.cond53 = or i1 %tobool30, %or.cond
  %.sink = zext i1 %or.cond53 to i8
  %4 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i64 0, i32 5
  store i8 %.sink, i8* %4, align 8
  %reg35 = getelementptr inbounds i8, i8* %call7, i64 24
  %5 = bitcast i8* %reg35 to i8**
  store i8* %reg, i8** %5, align 8
  %6 = getelementptr inbounds i8, i8* %call7, i64 32
  store i8 %shift, i8* %6, align 8
  %7 = getelementptr inbounds i8, i8* %call7, i64 33
  store i8 %width, i8* %7, align 1
  %8 = getelementptr inbounds i8, i8* %call7, i64 34
  store i8 %clk_divider_flags, i8* %8, align 2
  %lock39 = getelementptr inbounds i8, i8* %call7, i64 48
  %9 = bitcast i8* %lock39 to %struct.spinlock**
  store %struct.spinlock* %lock, %struct.spinlock** %9, align 8
  %hw40 = bitcast i8* %call7 to %struct.clk_hw*
  %init41 = getelementptr inbounds i8, i8* %call7, i64 16
  %10 = bitcast i8* %init41 to %struct.clk_init_data**
  store %struct.clk_init_data* %init, %struct.clk_init_data** %10, align 8
  %table42 = getelementptr inbounds i8, i8* %call7, i64 40
  %11 = bitcast i8* %table42 to %struct.clk_div_table**
  store %struct.clk_div_table* %table, %struct.clk_div_table** %11, align 8
  %call44 = call i32 @clk_hw_register(%struct.device* noundef %dev, %struct.clk_hw* noundef nonnull %hw40) #12
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup, label %if.then46

if.then46:                                        ; preds = %if.end11
  call void @kfree(i8* noundef nonnull %call7) #12
  %conv47 = sext i32 %call44 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %do.end, %if.then46
  %conv47.sink = phi i64 [ %conv47, %if.then46 ], [ -22, %do.end ], [ -12, %if.end6 ]
  %call48 = call fastcc i8* @ERR_PTR(i64 noundef %conv47.sink) #11
  %12 = bitcast i8* %call48 to %struct.clk_hw*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11
  %retval.0 = phi %struct.clk_hw* [ %hw40, %if.end11 ], [ %12, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #13
  ret %struct.clk_hw* %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #6 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #12
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(%struct.device* noundef, %struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk* @clk_register_divider_table(%struct.device* noundef %dev, i8* noundef %name, i8* noundef %parent_name, i64 noundef %flags, i8* noundef %reg, i8 noundef %shift, i8 noundef %width, i8 noundef %clk_divider_flags, %struct.clk_div_table* noundef %table, %struct.spinlock* noundef %lock) local_unnamed_addr #0 {
entry:
  %call = call %struct.clk_hw* @__clk_hw_register_divider(%struct.device* noundef %dev, %struct.device_node* undef, i8* noundef %name, i8* noundef %parent_name, %struct.clk_hw* noundef null, %struct.clk_parent_data* noundef null, i64 noundef %flags, i8* noundef %reg, i8 noundef %shift, i8 noundef %width, i8 noundef %clk_divider_flags, %struct.clk_div_table* noundef %table, %struct.spinlock* noundef %lock) #11
  %0 = bitcast %struct.clk_hw* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #11
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
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #6 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_unregister_divider(%struct.clk* noundef %clk) local_unnamed_addr #0 {
entry:
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* noundef %clk) #12
  %tobool.not = icmp eq %struct.clk_hw* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.clk_hw* %call to i8*
  call void @clk_unregister(%struct.clk* noundef %clk) #12
  call void @kfree(i8* noundef nonnull %0) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(%struct.clk* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clk_hw_unregister_divider(%struct.clk_hw* noundef %hw) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.clk_hw* %hw to i8*
  call void @clk_hw_unregister(%struct.clk_hw* noundef %hw) #12
  call void @kfree(i8* noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(%struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.clk_hw* @__devm_clk_hw_register_divider(%struct.device* noundef %dev, %struct.device_node* nocapture noundef readnone %np, i8* noundef %name, i8* noundef %parent_name, %struct.clk_hw* noundef %parent_hw, %struct.clk_parent_data* noundef %parent_data, i64 noundef %flags, i8* noundef %reg, i8 noundef %shift, i8 noundef %width, i8 noundef %clk_divider_flags, %struct.clk_div_table* noundef %table, %struct.spinlock* noundef %lock) local_unnamed_addr #0 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_clk_hw_release_divider, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0)) #12
  %0 = bitcast i8* %call to %struct.clk_hw**
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -12) #11
  %1 = bitcast i8* %call1 to %struct.clk_hw*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.clk_hw* @__clk_hw_register_divider(%struct.device* noundef %dev, %struct.device_node* undef, i8* noundef %name, i8* noundef %parent_name, %struct.clk_hw* noundef %parent_hw, %struct.clk_parent_data* noundef %parent_data, i64 noundef %flags, i8* noundef %reg, i8 noundef %shift, i8 noundef %width, i8 noundef %clk_divider_flags, %struct.clk_div_table* noundef %table, %struct.spinlock* noundef %lock) #11
  %2 = bitcast %struct.clk_hw* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %2) #11
  br i1 %call3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  store %struct.clk_hw* %call2, %struct.clk_hw** %0, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else, %if.then
  %retval.0 = phi %struct.clk_hw* [ %1, %if.then ], [ %call2, %if.else ], [ %call2, %if.then4 ]
  ret %struct.clk_hw* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_clk_hw_release_divider(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %0 = bitcast i8* %res to %struct.clk_hw**
  %1 = load %struct.clk_hw*, %struct.clk_hw** %0, align 8
  call void @clk_hw_unregister_divider(%struct.clk_hw* noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @_get_table_div(%struct.clk_div_table* nocapture noundef readonly %table, i32 noundef %val) unnamed_addr #2 {
entry:
  %div7 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %table, i64 0, i32 1
  %0 = load i32, i32* %div7, align 4
  %tobool.not8 = icmp eq i32 %0, 0
  br i1 %tobool.not8, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %val111 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %table, i64 0, i32 0
  %1 = load i32, i32* %val111, align 4
  %cmp12 = icmp eq i32 %1, %val
  br i1 %cmp12, label %cleanup, label %for.cond

for.cond:                                         ; preds = %for.body.preheader, %for.body
  %clkt.0913 = phi %struct.clk_div_table* [ %incdec.ptr, %for.body ], [ %table, %for.body.preheader ]
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %clkt.0913, i64 1
  %div = getelementptr %struct.clk_div_table, %struct.clk_div_table* %clkt.0913, i64 1, i32 1
  %2 = load i32, i32* %div, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %val1 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %incdec.ptr, i64 0, i32 0
  %3 = load i32, i32* %val1, align 4
  %cmp = icmp eq i32 %3, %val
  br i1 %cmp, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.cond, %for.body, %for.body.preheader, %entry
  %.lcssa = phi i32 [ 0, %entry ], [ %0, %for.body.preheader ], [ %2, %for.body ], [ 0, %for.cond ]
  ret i32 %.lcssa
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @_get_maxdiv(%struct.clk_div_table* noundef readonly %table, i8 noundef %width, i64 noundef %flags) unnamed_addr #2 {
entry:
  %and = and i64 %flags, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i8 %width to i32
  %notmask20 = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask20, -1
  br label %return

if.end:                                           ; preds = %entry
  %and1 = and i64 %flags, 2
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  %conv4 = zext i8 %width to i32
  %notmask = shl nsw i32 -1, %conv4
  %sub6 = xor i32 %notmask, -1
  %shl7 = shl nuw i32 1, %sub6
  br label %return

if.end8:                                          ; preds = %if.end
  %tobool9.not = icmp eq %struct.clk_div_table* %table, null
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call = call fastcc i32 @_get_table_maxdiv(%struct.clk_div_table* noundef nonnull %table, i8 noundef %width) #11
  br label %return

if.end11:                                         ; preds = %if.end8
  %conv12 = zext i8 %width to i32
  %shl13 = shl nuw i32 1, %conv12
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then3, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %shl7, %if.then3 ], [ %call, %if.then10 ], [ %shl13, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @_div_round(%struct.clk_div_table* noundef readonly %table, i64 noundef %parent_rate, i64 noundef %rate, i64 noundef %flags) unnamed_addr #4 {
entry:
  %and = and i64 %flags, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @_div_round_closest(%struct.clk_div_table* noundef %table, i64 noundef %parent_rate, i64 noundef %rate, i64 noundef %flags) #11
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @_div_round_up(%struct.clk_div_table* noundef %table, i64 noundef %parent_rate, i64 noundef %rate, i64 noundef %flags) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @_next_div(%struct.clk_div_table* noundef readonly %table, i32 noundef %div, i64 noundef %flags) unnamed_addr #4 {
entry:
  %inc = add i32 %div, 1
  %and = and i64 %flags, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %inc to i64
  %call = call fastcc i64 @__roundup_pow_of_two(i64 noundef %conv) #14
  %conv1 = trunc i64 %call to i32
  br label %return

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq %struct.clk_div_table* %table, null
  br i1 %tobool2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i32 @_round_up_table(%struct.clk_div_table* noundef nonnull %table, i32 noundef %inc) #11
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ %conv1, %if.then ], [ %call4, %if.then3 ], [ %inc, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @_is_best_div(i64 noundef %rate, i64 noundef %now, i64 noundef %best, i64 noundef %flags) unnamed_addr #7 {
entry:
  %and = and i64 %flags, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub i64 %rate, %now
  %0 = call i64 @llvm.abs.i64(i64 %sub, i1 false)
  %sub3 = sub i64 %rate, %best
  %1 = call i64 @llvm.abs.i64(i64 %sub3, i1 false)
  %cmp11 = icmp slt i64 %0, %1
  br label %return

if.end:                                           ; preds = %entry
  %cmp12 = icmp uge i64 %rate, %now
  %cmp13 = icmp ugt i64 %now, %best
  %2 = and i1 %cmp12, %cmp13
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %cmp11, %if.then ], [ %2, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @_get_table_maxdiv(%struct.clk_div_table* nocapture noundef readonly %table, i8 noundef %width) unnamed_addr #2 {
entry:
  %conv = zext i8 %width to i32
  %div14 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %table, i64 0, i32 1
  %0 = load i32, i32* %div14, align 4
  %tobool.not15 = icmp eq i32 %0, 0
  br i1 %tobool.not15, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i32 [ %3, %for.inc ], [ %0, %entry ]
  %clkt.017 = phi %struct.clk_div_table* [ %incdec.ptr, %for.inc ], [ %table, %entry ]
  %maxdiv.016 = phi i32 [ %maxdiv.1, %for.inc ], [ 0, %entry ]
  %cmp = icmp ugt i32 %1, %maxdiv.016
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %val = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %clkt.017, i64 0, i32 0
  %2 = load i32, i32* %val, align 4
  %.highbits = lshr i32 %2, %conv
  %cmp3.not.not = icmp eq i32 %.highbits, 0
  %spec.select = select i1 %cmp3.not.not, i32 %1, i32 %maxdiv.016
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %maxdiv.1 = phi i32 [ %maxdiv.016, %for.body ], [ %spec.select, %land.lhs.true ]
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %clkt.017, i64 1
  %div = getelementptr %struct.clk_div_table, %struct.clk_div_table* %clkt.017, i64 1, i32 1
  %3 = load i32, i32* %div, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %maxdiv.0.lcssa = phi i32 [ 0, %entry ], [ %maxdiv.1, %for.inc ]
  ret i32 %maxdiv.0.lcssa
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @_div_round_closest(%struct.clk_div_table* noundef readonly %table, i64 noundef %parent_rate, i64 noundef %rate, i64 noundef %flags) unnamed_addr #4 {
entry:
  %add = add i64 %parent_rate, -1
  %sub = add i64 %add, %rate
  %conv1 = and i64 %rate, 4294967295
  %div = udiv i64 %sub, %conv1
  %conv5 = trunc i64 %div to i32
  %div6 = udiv i64 %parent_rate, %rate
  %conv7 = trunc i64 %div6 to i32
  %and = and i64 %flags, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sext = shl i64 %div, 32
  %conv8 = ashr exact i64 %sext, 32
  %call = call fastcc i64 @__roundup_pow_of_two(i64 noundef %conv8) #14
  %conv9 = trunc i64 %call to i32
  %sext86 = shl i64 %div6, 32
  %conv10 = ashr exact i64 %sext86, 32
  %call11 = call fastcc i64 @__rounddown_pow_of_two(i64 noundef %conv10) #14
  %conv12 = trunc i64 %call11 to i32
  br label %if.end17

if.else:                                          ; preds = %entry
  %tobool13.not = icmp eq %struct.clk_div_table* %table, null
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.else
  %call15 = call fastcc i32 @_round_up_table(%struct.clk_div_table* noundef nonnull %table, i32 noundef %conv5) #11
  %call16 = call fastcc i32 @_round_down_table(%struct.clk_div_table* noundef nonnull %table, i32 noundef %conv7) #11
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14, %if.then
  %down.0 = phi i32 [ %conv12, %if.then ], [ %call16, %if.then14 ], [ %conv7, %if.else ]
  %up.0 = phi i32 [ %conv9, %if.then ], [ %call15, %if.then14 ], [ %conv5, %if.else ]
  %conv19 = sext i32 %up.0 to i64
  %sub21 = add i64 %add, %conv19
  %conv24 = zext i32 %up.0 to i64
  %div28 = udiv i64 %sub21, %conv24
  %conv32 = sext i32 %down.0 to i64
  %sub34 = add i64 %add, %conv32
  %conv37 = zext i32 %down.0 to i64
  %div41 = udiv i64 %sub34, %conv37
  %sub44 = sub i64 %rate, %div28
  %sub45 = sub i64 %div41, %rate
  %cmp.not = icmp ugt i64 %sub44, %sub45
  %cond = select i1 %cmp.not, i32 %down.0, i32 %up.0
  ret i32 %cond
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @_div_round_up(%struct.clk_div_table* noundef readonly %table, i64 noundef %parent_rate, i64 noundef %rate, i64 noundef %flags) unnamed_addr #4 {
entry:
  %add = add i64 %parent_rate, -1
  %sub = add i64 %add, %rate
  %conv1 = and i64 %rate, 4294967295
  %div4 = udiv i64 %sub, %conv1
  %and = and i64 %flags, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sext = shl i64 %div4, 32
  %conv7 = ashr exact i64 %sext, 32
  %call = call fastcc i64 @__roundup_pow_of_two(i64 noundef %conv7) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %div.0.in = phi i64 [ %call, %if.then ], [ %div4, %entry ]
  %div.0 = trunc i64 %div.0.in to i32
  %tobool9.not = icmp eq %struct.clk_div_table* %table, null
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  %call11 = call fastcc i32 @_round_up_table(%struct.clk_div_table* noundef nonnull %table, i32 noundef %div.0) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %div.1 = phi i32 [ %call11, %if.then10 ], [ %div.0, %if.end ]
  ret i32 %div.1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__roundup_pow_of_two(i64 noundef %n) unnamed_addr #7 {
entry:
  %sub = add i64 %n, -1
  %call = call fastcc i32 @fls_long(i64 noundef %sub) #11
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__rounddown_pow_of_two(i64 noundef %n) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @fls_long(i64 noundef %n) #11
  %sub = add i32 %call, -1
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @_round_up_table(%struct.clk_div_table* nocapture noundef readonly %table, i32 noundef %div) unnamed_addr #2 {
entry:
  %div127 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %table, i64 0, i32 1
  %0 = load i32, i32* %div127, align 4
  %tobool.not28 = icmp eq i32 %0, 0
  br i1 %tobool.not28, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %if.else
  %1 = phi i32 [ %2, %if.else ], [ %0, %entry ]
  %up.030 = phi i32 [ %up.1, %if.else ], [ 2147483647, %entry ]
  %clkt.029 = phi %struct.clk_div_table* [ %incdec.ptr, %if.else ], [ %table, %entry ]
  %cmp = icmp eq i32 %1, %div
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %for.body
  %cmp5 = icmp ult i32 %1, %div
  %sub = sub i32 %1, %div
  %sub9 = sub i32 %up.030, %div
  %cmp10 = icmp ult i32 %sub, %sub9
  %spec.select = select i1 %cmp10, i32 %1, i32 %up.030
  %up.1 = select i1 %cmp5, i32 %up.030, i32 %spec.select
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %clkt.029, i64 1
  %div1 = getelementptr %struct.clk_div_table, %struct.clk_div_table* %clkt.029, i64 1, i32 1
  %2 = load i32, i32* %div1, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %if.else, %entry
  %retval.0 = phi i32 [ 2147483647, %entry ], [ %up.1, %if.else ], [ %div, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @_round_down_table(%struct.clk_div_table* nocapture noundef readonly %table, i32 noundef %div) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @_get_table_mindiv(%struct.clk_div_table* noundef %table) #11
  %div128 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %table, i64 0, i32 1
  %0 = load i32, i32* %div128, align 4
  %tobool.not29 = icmp eq i32 %0, 0
  br i1 %tobool.not29, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %if.else
  %1 = phi i32 [ %2, %if.else ], [ %0, %entry ]
  %down.031 = phi i32 [ %down.1, %if.else ], [ %call, %entry ]
  %clkt.030 = phi %struct.clk_div_table* [ %incdec.ptr, %if.else ], [ %table, %entry ]
  %cmp = icmp eq i32 %1, %div
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %for.body
  %cmp5 = icmp ugt i32 %1, %div
  %sub = sub i32 %div, %1
  %sub9 = sub i32 %div, %down.031
  %cmp10 = icmp ult i32 %sub, %sub9
  %spec.select = select i1 %cmp10, i32 %1, i32 %down.031
  %down.1 = select i1 %cmp5, i32 %down.031, i32 %spec.select
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %clkt.030, i64 1
  %div1 = getelementptr %struct.clk_div_table, %struct.clk_div_table* %clkt.030, i64 1, i32 1
  %2 = load i32, i32* %div1, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %if.else, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %down.1, %if.else ], [ %div, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #7 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #13, !range !9
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @_get_table_mindiv(%struct.clk_div_table* nocapture noundef readonly %table) unnamed_addr #2 {
entry:
  %div9 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %table, i64 0, i32 1
  %0 = load i32, i32* %div9, align 4
  %tobool.not10 = icmp eq i32 %0, 0
  br i1 %tobool.not10, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i32 [ %2, %for.body ], [ %0, %entry ]
  %clkt.012 = phi %struct.clk_div_table* [ %incdec.ptr, %for.body ], [ %table, %entry ]
  %mindiv.011 = phi i32 [ %spec.select, %for.body ], [ -1, %entry ]
  %cmp = icmp ult i32 %1, %mindiv.011
  %spec.select = select i1 %cmp, i32 %1, i32 %mindiv.011
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %clkt.012, i64 1
  %div = getelementptr %struct.clk_div_table, %struct.clk_div_table* %clkt.012, i64 1, i32 1
  %2 = load i32, i32* %div, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %mindiv.0.lcssa = phi i32 [ -1, %entry ], [ %spec.select, %for.body ]
  ret i32 %mindiv.0.lcssa
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_power_of_2(i64 noundef %n) unnamed_addr #7 {
entry:
  %cmp.not = icmp eq i64 %n, 0
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = call i64 @llvm.ctpop.i64(i64 %n), !range !9
  %cmp1 = icmp ult i64 %0, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i1 @_is_valid_table_div(%struct.clk_div_table* nocapture noundef readonly %table, i32 noundef %div) unnamed_addr #2 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %clkt.0 = phi %struct.clk_div_table* [ %table, %entry ], [ %incdec.ptr, %for.cond ]
  %div1 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %clkt.0, i64 0, i32 1
  %0 = load i32, i32* %div1, align 4
  %tobool.not = icmp eq i32 %0, 0
  %cmp = icmp eq i32 %0, %div
  %or.cond = or i1 %tobool.not, %cmp
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %clkt.0, i64 1
  br i1 %or.cond, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.cond
  %1 = xor i1 %tobool.not, true
  ret i1 %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @_get_table_val(%struct.clk_div_table* nocapture noundef readonly %table, i32 noundef %div) unnamed_addr #2 {
entry:
  %div18 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %table, i64 0, i32 1
  %0 = load i32, i32* %div18, align 4
  %tobool.not9 = icmp eq i32 %0, 0
  br i1 %tobool.not9, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i32 [ %3, %for.inc ], [ %0, %entry ]
  %clkt.010 = phi %struct.clk_div_table* [ %incdec.ptr, %for.inc ], [ %table, %entry ]
  %cmp = icmp eq i32 %1, %div
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %val = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %clkt.010, i64 0, i32 0
  %2 = load i32, i32* %val, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %clkt.010, i64 1
  %div1 = getelementptr %struct.clk_div_table, %struct.clk_div_table* %clkt.010, i64 1, i32 1
  %3 = load i32, i32* %div1, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %entry ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_div_readl(%struct.clk_divider* nocapture noundef readonly %divider) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %divider, i64 0, i32 4
  %0 = load i8, i8* %flags, align 2
  %tobool.not = icmp sgt i8 %0, -1
  %reg5 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %divider, i64 0, i32 1
  %1 = load i8*, i8** %reg5, align 8
  %2 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %1) #13
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @__fswab32(i32 noundef %2) #14
  call void asm sideeffect "dmb oshld", "~{memory}"() #13, !srcloc !10
  %conv2 = zext i32 %call1 to i64
  %3 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv2) #13, !srcloc !11
  br label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "dmb oshld", "~{memory}"() #13, !srcloc !12
  %conv9 = zext i32 %2 to i64
  %4 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv9) #13, !srcloc !13
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #7 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @divider_ro_round_rate(%struct.clk_hw* noundef %hw, i64 noundef %rate, i64* nocapture noundef %prate, %struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags, i32 noundef %val) unnamed_addr #0 {
entry:
  %call = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* noundef %hw) #12
  %call1 = call i64 @divider_ro_round_rate_parent(%struct.clk_hw* noundef %hw, %struct.clk_hw* noundef %call, i64 noundef %rate, i64* noundef %prate, %struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags, i32 noundef %val) #11
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @divider_round_rate(%struct.clk_hw* noundef %hw, i64 noundef %rate, i64* nocapture noundef %prate, %struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags) unnamed_addr #0 {
entry:
  %call = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* noundef %hw) #12
  %call1 = call i64 @divider_round_rate_parent(%struct.clk_hw* noundef %hw, %struct.clk_hw* noundef %call, i64 noundef %rate, i64* noundef %prate, %struct.clk_div_table* noundef %table, i8 noundef %width, i64 noundef %flags) #11
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_div_writel(%struct.clk_divider* nocapture noundef readonly %divider, i32 noundef %val) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %divider, i64 0, i32 4
  %0 = load i8, i8* %flags, align 2
  %tobool.not = icmp sgt i8 %0, -1
  call void asm sideeffect "dmb oshst", "~{memory}"() #13
  br i1 %tobool.not, label %if.else, label %cond.end

cond.end:                                         ; preds = %entry
  %call = call fastcc i32 @__fswab32(i32 noundef %val) #14
  %reg = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %divider, i64 0, i32 1
  %1 = load i8*, i8** %reg, align 8
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %call, i8* %1) #13, !srcloc !15
  br label %if.end

if.else:                                          ; preds = %entry
  %reg9 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %divider, i64 0, i32 1
  %2 = load i8*, i8** %reg9, align 8
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %val, i8* %2) #13, !srcloc !15
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #11
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !16

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #13, !srcloc !17
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #13, !srcloc !18
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #11
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !7

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #13, !srcloc !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #9 {
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #13, !srcloc !20
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #13, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #13, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2152993402}
!9 = !{i64 0, i64 65}
!10 = !{i64 2152984824}
!11 = !{i64 2152984667, i64 2152984699}
!12 = !{i64 2152985581}
!13 = !{i64 2152985424, i64 2152985456}
!14 = !{i64 2149596247}
!15 = !{i64 5040788}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149518991, i64 2149519038, i64 2149519044, i64 2149519081, i64 2149519099, i64 2149520410, i64 2149520458, i64 2149520506, i64 2149520569, i64 2149520618, i64 2149519177, i64 2149519202, i64 2149519228, i64 2149519234, i64 2149520076, i64 2149520116, i64 2149520134, i64 2149520166, i64 2149520194, i64 2149520248, i64 2149520268, i64 2149520365, i64 2149519257, i64 2149519271, i64 2149519277, i64 2149519327, i64 2149519373, i64 2149519406}
!18 = !{i64 2149521170, i64 2149521217, i64 2149521223, i64 2149521260, i64 2149521278, i64 2149522221, i64 2149522269, i64 2149522317, i64 2149522380, i64 2149522429, i64 2149521356, i64 2149521381, i64 2149521407, i64 2149521413, i64 2149521450, i64 2149521456, i64 2149521506, i64 2149521552, i64 2149521585}
!19 = !{i64 2149513288, i64 2149513335, i64 2149513341, i64 2149513378, i64 2149513396, i64 2149514737, i64 2149514785, i64 2149514833, i64 2149514896, i64 2149514945, i64 2149513474, i64 2149513499, i64 2149513525, i64 2149513531, i64 2149514403, i64 2149514443, i64 2149514461, i64 2149514493, i64 2149514521, i64 2149514575, i64 2149514595, i64 2149514692, i64 2149513554, i64 2149513568, i64 2149513574, i64 2149513624, i64 2149513670, i64 2149513703}
!20 = !{i64 2147897476, i64 2147897509, i64 2147897562, i64 2147897621, i64 2147897655, i64 2147897710, i64 2147897739, i64 2147897759}
!21 = !{i64 2149622090}
!22 = !{i64 2149565389}
!23 = !{i64 2149525004, i64 2149525051, i64 2149525057, i64 2149525094, i64 2149525112, i64 2149526423, i64 2149526471, i64 2149526519, i64 2149526582, i64 2149526631, i64 2149525190, i64 2149525215, i64 2149525241, i64 2149525247, i64 2149526089, i64 2149526129, i64 2149526147, i64 2149526179, i64 2149526207, i64 2149526261, i64 2149526281, i64 2149526378, i64 2149525270, i64 2149525284, i64 2149525290, i64 2149525340, i64 2149525386, i64 2149525419}
