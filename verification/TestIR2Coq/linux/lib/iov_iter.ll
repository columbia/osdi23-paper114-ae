; ModuleID = 'lib/iov_iter.c'
source_filename = "lib/iov_iter.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.page = type { i64, %union.anon.0, %union.anon.61, %struct.atomic_t, [8 x i8] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.43, %struct.list_head, %struct.list_head, %union.anon.44 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.6, i8* }
%union.anon.6 = type { i64 }
%struct.lockref = type { %union.anon.8 }
%union.anon.8 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.43 = type { %struct.list_head }
%union.anon.44 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.5, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.45 }
%union.anon.45 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon, %union.anon.62 }
%union.anon = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.62 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.15, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.14, [0 x i64] }
%struct.anon.14 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.39, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.24, %union.anon.25, i32 }
%struct.request_queue = type opaque
%union.anon.24 = type { %struct.list_head }
%union.anon.25 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.26 }
%struct.anon.26 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.30 }
%struct.anon.30 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.38, i32, [12 x i8] }
%union.anon.38 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.39 = type { %struct.callback_head }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.42, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.42 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.15 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.16, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.17, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.16 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.17 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.46 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.46 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.40, %struct.qspinlock }
%union.anon.40 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.23 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.23 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.10, i32 }
%union.anon.10 = type { %struct.kuid_t }
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
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.65 = type { %struct.callback_head }
%union.anon.66 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.61 = type { %struct.atomic_t }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.xa_state = type { %struct.xarray*, i64, i8, i8, i8, i8, %struct.xa_node*, %struct.xa_node*, void (%struct.xa_node*)* }
%struct.xa_node = type { i8, i8, i8, i8, %struct.xa_node*, %struct.xarray*, %union.anon.68, [64 x i8*], %union.anon.69 }
%union.anon.68 = type { %struct.list_head }
%union.anon.69 = type { [3 x [1 x i64]] }
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.kvec = type { i8*, i64 }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%struct.anon.63 = type { i32, i32 }
%struct.compat_iovec = type { i32, i32 }
%struct.iov_iter_state = type { i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.anon.55 = type { i64, i8, i8, %struct.atomic_t, i32 }

@default_pipe_buf_ops = external dso_local constant %struct.pipe_buf_operations, align 8
@page_cache_pipe_buf_ops = external dso_local constant %struct.pipe_buf_operations, align 8
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\013idx = %d, offset = %zd\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\013head = %d, tail = %d, buffers = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\013[%p %p %d %d]\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @iov_iter_fault_in_readable(%struct.iov_iter* nocapture noundef readonly %i, i64 noundef %bytes) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %0, %bytes
  %spec.select = select i1 %cmp, i64 %0, i64 %bytes
  %tobool.not58 = icmp eq i64 %spec.select, 0
  br i1 %tobool.not58, label %return, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %1 = load i64, i64* %iov_offset, align 8
  %iov = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %2 = load %struct.iovec*, %struct.iovec** %iov, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %bytes.addr.162 = phi i64 [ %bytes.addr.2.ph, %for.inc ], [ %spec.select, %for.body.preheader ]
  %p.060 = phi %struct.iovec* [ %incdec.ptr, %for.inc ], [ %2, %for.body.preheader ]
  %skip.059 = phi i64 [ 0, %for.inc ], [ %1, %for.body.preheader ]
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %p.060, i64 0, i32 1
  %3 = load i64, i64* %iov_len, align 8
  %sub = sub i64 %3, %skip.059
  %cmp3 = icmp ult i64 %bytes.addr.162, %sub
  %cond = select i1 %cmp3, i64 %bytes.addr.162, i64 %sub
  %tobool4.not = icmp eq i64 %cond, 0
  br i1 %tobool4.not, label %for.inc, label %if.end9, !prof !8

if.end9:                                          ; preds = %for.body
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %p.060, i64 0, i32 0
  %4 = load i8*, i8** %iov_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %skip.059
  %call10 = call fastcc i32 @fault_in_pages_readable(i8* noundef %add.ptr, i64 noundef %cond) #18
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end20, label %return, !prof !9

if.end20:                                         ; preds = %if.end9
  %sub21 = sub i64 %bytes.addr.162, %cond
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %for.body
  %bytes.addr.2.ph = phi i64 [ %bytes.addr.162, %for.body ], [ %sub21, %if.end20 ]
  %incdec.ptr = getelementptr %struct.iovec, %struct.iovec* %p.060, i64 1
  %tobool.not = icmp eq i64 %bytes.addr.2.ph, 0
  br i1 %tobool.not, label %return, label %for.body

return:                                           ; preds = %if.end9, %for.inc, %if.then, %entry
  %retval.3 = phi i32 [ 0, %entry ], [ 0, %if.then ], [ %call10, %if.end9 ], [ 0, %for.inc ]
  ret i32 %retval.3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @iter_is_iovec(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @iov_iter_type(%struct.iov_iter* noundef %i) #18
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fault_in_pages_readable(i8* noundef %uaddr, i64 noundef %size) unnamed_addr #0 {
entry:
  %c = alloca i8, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c)
  store volatile i8 0, i8* %c, align 4
  %add.ptr = getelementptr i8, i8* %uaddr, i64 %size
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 -1
  %cmp = icmp eq i64 %size, 0
  br i1 %cmp, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %cmp3 = icmp ult i8* %add.ptr1, %uaddr
  br i1 %cmp3, label %cleanup, label %do.body, !prof !8

do.body:                                          ; preds = %if.end, %if.end39
  %uaddr.addr.0 = phi i8* [ %add.ptr40, %if.end39 ], [ %uaddr, %if.end ]
  %call = call fastcc i64 @__range_ok(i8* noundef %uaddr.addr.0, i64 noundef 1) #18
  %tobool15.not = icmp eq i64 %call, 0
  br i1 %tobool15.not, label %if.end26.thread, label %if.end26

if.end26.thread:                                  ; preds = %do.body
  store volatile i8 0, i8* %c, align 4
  br label %cleanup

if.end26:                                         ; preds = %do.body
  %call17 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %uaddr.addr.0) #18
  %0 = call { i32, i64 } asm sideeffect "1:\09ldtrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8* %call17, i32 -14, i32 0) #19, !srcloc !10
  %asmresult = extractvalue { i32, i64 } %0, 0
  %asmresult21 = extractvalue { i32, i64 } %0, 1
  %conv22 = trunc i64 %asmresult21 to i8
  store volatile i8 %conv22, i8* %c, align 4
  %cmp29.not = icmp eq i32 %asmresult, 0
  br i1 %cmp29.not, label %if.end39, label %cleanup, !prof !9

if.end39:                                         ; preds = %if.end26
  %add.ptr40 = getelementptr i8, i8* %uaddr.addr.0, i64 4096
  %cmp42.not = icmp ugt i8* %add.ptr40, %add.ptr1
  br i1 %cmp42.not, label %do.end44, label %do.body

do.end44:                                         ; preds = %if.end39
  %1 = ptrtoint i8* %add.ptr40 to i64
  %2 = ptrtoint i8* %add.ptr1 to i64
  %3 = xor i64 %1, %2
  %cmp46 = icmp ult i64 %3, 4096
  br i1 %cmp46, label %if.then48, label %if.end73

if.then48:                                        ; preds = %do.end44
  %call52 = call fastcc i64 @__range_ok(i8* noundef %add.ptr1, i64 noundef 1) #18
  %tobool53.not = icmp eq i64 %call52, 0
  br i1 %tobool53.not, label %if.else68, label %if.then54

if.then54:                                        ; preds = %if.then48
  %call55 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr1) #18
  %4 = call { i32, i64 } asm sideeffect "1:\09ldtrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8* %call55, i32 -14, i32 0) #19, !srcloc !11
  %asmresult60 = extractvalue { i32, i64 } %4, 0
  %asmresult61 = extractvalue { i32, i64 } %4, 1
  %conv62 = trunc i64 %asmresult61 to i8
  store volatile i8 %conv62, i8* %c, align 4
  br label %cleanup

if.else68:                                        ; preds = %if.then48
  store volatile i8 0, i8* %c, align 4
  br label %cleanup

if.end73:                                         ; preds = %do.end44
  %c.0.c.0.c.0. = load volatile i8, i8* %c, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end26.thread, %if.then54, %if.else68, %if.end, %entry, %if.end73
  %retval.0 = phi i32 [ 0, %if.end73 ], [ 0, %entry ], [ -14, %if.end ], [ %asmresult60, %if.then54 ], [ -14, %if.else68 ], [ -14, %if.end26.thread ], [ -14, %if.end26 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c)
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @iov_iter_init(%struct.iov_iter* nocapture noundef writeonly %i, i32 noundef %direction, %struct.iovec* noundef %iov, i64 noundef %nr_segs, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %direction, 2
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 467; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool15 = icmp ne i32 %direction, 0
  %frombool = zext i1 %tobool15 to i8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  store i8 0, i8* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 1
  store i8 %frombool, i8* %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.319.0..sroa_idx20 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  store i64 0, i64* %.compoundliteral.sroa.319.0..sroa_idx20, align 8
  %.compoundliteral.sroa.4.0..sroa_idx21 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  store i64 %count, i64* %.compoundliteral.sroa.4.0..sroa_idx21, align 8
  %.compoundliteral.sroa.5.0..sroa_idx22 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  store %struct.iovec* %iov, %struct.iovec** %.compoundliteral.sroa.5.0..sroa_idx22, align 8
  %.compoundliteral.sroa.6.0..sroa_idx23 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  store i64 %nr_segs, i64* %.compoundliteral.sroa.6.0..sroa_idx23, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @_copy_to_iter(i8* noundef %addr, i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %call = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @copy_pipe_to_iter(i8* noundef %addr, i64 noundef %bytes, %struct.iov_iter* noundef %i) #18
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %0, %bytes
  br i1 %cmp, label %if.then14, label %if.end16, !prof !8

if.then14:                                        ; preds = %if.end
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end
  %bytes.addr.0 = phi i64 [ %0, %if.then14 ], [ %bytes, %if.end ]
  %tobool17.not = icmp eq i64 %bytes.addr.0, 0
  br i1 %tobool17.not, label %return, label %if.then25, !prof !8

if.then25:                                        ; preds = %if.end16
  br i1 %call3, label %if.then34, label %if.else, !prof !9

if.then34:                                        ; preds = %if.then25
  %iov35 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %1 = load %struct.iovec*, %struct.iovec** %iov35, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %2 = load i64, i64* %iov_offset, align 8
  br label %do.body

do.body:                                          ; preds = %if.end58, %if.then34
  %skip.0 = phi i64 [ %2, %if.then34 ], [ 0, %if.end58 ]
  %off.0 = phi i64 [ 0, %if.then34 ], [ %off.1, %if.end58 ]
  %iov.0 = phi %struct.iovec* [ %1, %if.then34 ], [ %incdec.ptr, %if.end58 ]
  %bytes.addr.1 = phi i64 [ %bytes.addr.0, %if.then34 ], [ %bytes.addr.2, %if.end58 ]
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 1
  %3 = load i64, i64* %iov_len, align 8
  %sub = sub i64 %3, %skip.0
  %cmp36 = icmp ult i64 %bytes.addr.1, %sub
  %cond = select i1 %cmp36, i64 %bytes.addr.1, i64 %sub
  %tobool38.not = icmp eq i64 %cond, 0
  br i1 %tobool38.not, label %if.end58, label %if.then46, !prof !8

if.then46:                                        ; preds = %do.body
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 0
  %4 = load i8*, i8** %iov_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %skip.0
  %add.ptr47 = getelementptr i8, i8* %addr, i64 %off.0
  %call48 = call fastcc i32 @copyout(i8* noundef %add.ptr, i8* noundef %add.ptr47, i64 noundef %cond) #18
  %conv49 = sext i32 %call48 to i64
  %sub50 = sub i64 %cond, %conv49
  %add = add i64 %sub50, %off.0
  %add51 = add i64 %sub50, %skip.0
  %sub52 = sub i64 %bytes.addr.1, %sub50
  %5 = load i64, i64* %iov_len, align 8
  %cmp54 = icmp ult i64 %add51, %5
  br i1 %cmp54, label %do.end, label %if.end58

if.end58:                                         ; preds = %if.then46, %do.body
  %off.1 = phi i64 [ %add, %if.then46 ], [ %off.0, %do.body ]
  %bytes.addr.2 = phi i64 [ %sub52, %if.then46 ], [ %bytes.addr.1, %do.body ]
  %incdec.ptr = getelementptr %struct.iovec, %struct.iovec* %iov.0, i64 1
  %tobool59.not = icmp eq i64 %bytes.addr.2, 0
  br i1 %tobool59.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.then46, %if.end58
  %skip.1 = phi i64 [ %add51, %if.then46 ], [ 0, %if.end58 ]
  %off.2 = phi i64 [ %add, %if.then46 ], [ %off.1, %if.end58 ]
  %iov.1 = phi %struct.iovec* [ %iov.0, %if.then46 ], [ %incdec.ptr, %if.end58 ]
  store i64 %skip.1, i64* %iov_offset, align 8
  %6 = load %struct.iovec*, %struct.iovec** %iov35, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.iovec* %iov.1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.iovec* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 4
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %7 = load i64, i64* %nr_segs, align 8
  %sub62 = sub i64 %7, %sub.ptr.div
  store i64 %sub62, i64* %nr_segs, align 8
  store %struct.iovec* %iov.1, %struct.iovec** %iov35, align 8
  br label %if.end322

if.else:                                          ; preds = %if.then25
  %call64 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call64, label %while.body.preheader, label %if.else135

while.body.preheader:                             ; preds = %if.else
  %8 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec66 = bitcast %union.anon* %8 to %struct.bio_vec**
  %9 = load %struct.bio_vec*, %struct.bio_vec** %bvec66, align 8
  %iov_offset71 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %10 = load i64, i64* %iov_offset71, align 8
  %conv72 = trunc i64 %10 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %bytes.addr.3545 = phi i64 [ %sub119, %while.body ], [ %bytes.addr.0, %while.body.preheader ]
  %bvec.0544 = phi %struct.bio_vec* [ %spec.select507, %while.body ], [ %9, %while.body.preheader ]
  %off69.0543 = phi i64 [ %add109, %while.body ], [ 0, %while.body.preheader ]
  %skip70.0542 = phi i32 [ %spec.select, %while.body ], [ %conv72, %while.body.preheader ]
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0544, i64 0, i32 2
  %11 = load i32, i32* %bv_offset, align 4
  %add74 = add i32 %11, %skip70.0542
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0544, i64 0, i32 0
  %12 = load %struct.page*, %struct.page** %bv_page, align 8
  %conv75 = zext i32 %add74 to i64
  %div = lshr i64 %conv75, 12
  %add.ptr76 = getelementptr %struct.page, %struct.page* %12, i64 %div
  %call77 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr76) #18
  %rem = and i64 %conv75, 4095
  %add.ptr79 = getelementptr i8, i8* %call77, i64 %rem
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0544, i64 0, i32 1
  %13 = load i32, i32* %bv_len, align 8
  %sub80 = sub i32 %13, %skip70.0542
  %conv81 = zext i32 %sub80 to i64
  %cmp83 = icmp ult i64 %bytes.addr.3545, %conv81
  %cond88 = select i1 %cmp83, i64 %bytes.addr.3545, i64 %conv81
  %sub91 = sub nuw nsw i64 4096, %rem
  %cmp93 = icmp ult i64 %cond88, %sub91
  %cond98 = select i1 %cmp93, i64 %cond88, i64 %sub91
  %add.ptr99 = getelementptr i8, i8* %addr, i64 %off69.0543
  %call100 = call i8* @memcpy(i8* noundef %add.ptr79, i8* noundef %add.ptr99, i64 noundef %cond98) #20
  %add109 = add i64 %cond98, %off69.0543
  %14 = trunc i64 %cond98 to i32
  %conv112 = add i32 %skip70.0542, %14
  %15 = load i32, i32* %bv_len, align 8
  %cmp114 = icmp eq i32 %conv112, %15
  %spec.select = select i1 %cmp114, i32 0, i32 %conv112
  %spec.select507.idx = zext i1 %cmp114 to i64
  %spec.select507 = getelementptr %struct.bio_vec, %struct.bio_vec* %bvec.0544, i64 %spec.select507.idx
  %sub119 = sub i64 %bytes.addr.3545, %cond98
  %tobool73.not = icmp eq i64 %sub119, 0
  br i1 %tobool73.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %.pre = load %struct.bio_vec*, %struct.bio_vec** %bvec66, align 8
  %phi.cast = zext i32 %spec.select to i64
  store i64 %phi.cast, i64* %iov_offset71, align 8
  %sub.ptr.lhs.cast128 = ptrtoint %struct.bio_vec* %spec.select507 to i64
  %sub.ptr.rhs.cast129 = ptrtoint %struct.bio_vec* %.pre to i64
  %sub.ptr.sub130 = sub i64 %sub.ptr.lhs.cast128, %sub.ptr.rhs.cast129
  %sub.ptr.div131 = ashr exact i64 %sub.ptr.sub130, 4
  %nr_segs132 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %16 = load i64, i64* %nr_segs132, align 8
  %sub133 = sub i64 %16, %sub.ptr.div131
  store i64 %sub133, i64* %nr_segs132, align 8
  store %struct.bio_vec* %spec.select507, %struct.bio_vec** %bvec66, align 8
  br label %if.end322

if.else135:                                       ; preds = %if.else
  %call136 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call136, label %if.then137, label %if.else190

if.then137:                                       ; preds = %if.else135
  %17 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %kvec138 = bitcast %union.anon* %17 to %struct.kvec**
  %18 = load %struct.kvec*, %struct.kvec** %kvec138, align 8
  %iov_offset143 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %19 = load i64, i64* %iov_offset143, align 8
  br label %do.body144

do.body144:                                       ; preds = %if.end176, %if.then137
  %kvec.0 = phi %struct.kvec* [ %18, %if.then137 ], [ %incdec.ptr177, %if.end176 ]
  %off141.0 = phi i64 [ 0, %if.then137 ], [ %off141.1, %if.end176 ]
  %skip142.0 = phi i64 [ %19, %if.then137 ], [ 0, %if.end176 ]
  %bytes.addr.4 = phi i64 [ %bytes.addr.0, %if.then137 ], [ %bytes.addr.5, %if.end176 ]
  %iov_len145 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 1
  %20 = load i64, i64* %iov_len145, align 8
  %sub146 = sub i64 %20, %skip142.0
  %cmp148 = icmp ult i64 %bytes.addr.4, %sub146
  %cond153 = select i1 %cmp148, i64 %bytes.addr.4, i64 %sub146
  %tobool154.not = icmp eq i64 %cond153, 0
  br i1 %tobool154.not, label %if.end176, label %if.then162, !prof !8

if.then162:                                       ; preds = %do.body144
  %iov_base163 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 0
  %21 = load i8*, i8** %iov_base163, align 8
  %add.ptr164 = getelementptr i8, i8* %21, i64 %skip142.0
  %add.ptr165 = getelementptr i8, i8* %addr, i64 %off141.0
  %call166 = call i8* @memcpy(i8* noundef %add.ptr164, i8* noundef %add.ptr165, i64 noundef %cond153) #20
  %add168 = add i64 %cond153, %off141.0
  %add169 = add i64 %cond153, %skip142.0
  %sub170 = sub i64 %bytes.addr.4, %cond153
  %22 = load i64, i64* %iov_len145, align 8
  %cmp172 = icmp ult i64 %add169, %22
  br i1 %cmp172, label %do.end180, label %if.end176

if.end176:                                        ; preds = %if.then162, %do.body144
  %off141.1 = phi i64 [ %add168, %if.then162 ], [ %off141.0, %do.body144 ]
  %bytes.addr.5 = phi i64 [ %sub170, %if.then162 ], [ %bytes.addr.4, %do.body144 ]
  %incdec.ptr177 = getelementptr %struct.kvec, %struct.kvec* %kvec.0, i64 1
  %tobool179.not = icmp eq i64 %bytes.addr.5, 0
  br i1 %tobool179.not, label %do.end180, label %do.body144

do.end180:                                        ; preds = %if.then162, %if.end176
  %kvec.1 = phi %struct.kvec* [ %kvec.0, %if.then162 ], [ %incdec.ptr177, %if.end176 ]
  %off141.2 = phi i64 [ %add168, %if.then162 ], [ %off141.1, %if.end176 ]
  %skip142.1 = phi i64 [ %add169, %if.then162 ], [ 0, %if.end176 ]
  store i64 %skip142.1, i64* %iov_offset143, align 8
  %23 = load %struct.kvec*, %struct.kvec** %kvec138, align 8
  %sub.ptr.lhs.cast183 = ptrtoint %struct.kvec* %kvec.1 to i64
  %sub.ptr.rhs.cast184 = ptrtoint %struct.kvec* %23 to i64
  %sub.ptr.sub185 = sub i64 %sub.ptr.lhs.cast183, %sub.ptr.rhs.cast184
  %sub.ptr.div186 = ashr exact i64 %sub.ptr.sub185, 4
  %nr_segs187 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %24 = load i64, i64* %nr_segs187, align 8
  %sub188 = sub i64 %24, %sub.ptr.div186
  store i64 %sub188, i64* %nr_segs187, align 8
  store %struct.kvec* %kvec.1, %struct.kvec** %kvec138, align 8
  br label %if.end322

if.else190:                                       ; preds = %if.else135
  %call191 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call191, label %if.then192, label %if.end322

if.then192:                                       ; preds = %if.else190
  %xarray_start = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %25 = load i64, i64* %xarray_start, align 8
  %iov_offset196 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %26 = load i64, i64* %iov_offset196, align 8
  %add197 = add i64 %26, %25
  %div201 = lshr i64 %add197, 12
  %27 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %27) #19
  %28 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %29 = bitcast i8* %28 to i64*, !annotation !13
  store i64 0, i64* %29, align 8, !annotation !13
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %30 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %xarray = bitcast %union.anon* %30 to %struct.xarray**
  %31 = load %struct.xarray*, %struct.xarray** %xarray, align 8
  store %struct.xarray* %31, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %div201, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @__rcu_read_lock() #20
  %call202 = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef -1) #20
  %tobool203.not534 = icmp eq i8* %call202, null
  br i1 %tobool203.not534, label %__out, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then192
  %32 = trunc i64 %add197 to i32
  %conv200 = and i32 %32, 4095
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc314
  %bytes.addr.6538 = phi i64 [ %bytes.addr.8514, %for.inc314 ], [ %bytes.addr.0, %for.body.preheader ]
  %offset198.0537 = phi i32 [ %offset198.3513, %for.inc314 ], [ %conv200, %for.body.preheader ]
  %head.0.in536 = phi i8* [ %call315, %for.inc314 ], [ %call202, %for.body.preheader ]
  %off195.0535 = phi i64 [ %off195.2512, %for.inc314 ], [ 0, %for.body.preheader ]
  %head.0539 = bitcast i8* %head.0.in536 to %struct.page*
  %call205 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %head.0.in536) #18
  br i1 %call205, label %for.inc314, label %if.end207

if.end207:                                        ; preds = %for.body
  %call208 = call fastcc i1 @xa_is_value(i8* noundef nonnull %head.0.in536) #18
  br i1 %call208, label %cleanup311.thread515, label %if.end233, !prof !8

cleanup311.thread515:                             ; preds = %if.end207
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 623; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !14
  br label %__out

if.end233:                                        ; preds = %if.end207
  %index262 = getelementptr inbounds i8, i8* %head.0.in536, i64 32
  %33 = bitcast i8* %index262 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @llvm.usub.sat.i64(i64 %div201, i64 %34)
  %conv271 = trunc i64 %35 to i32
  %cmp274526 = icmp slt i32 %conv271, 1
  br i1 %cmp274526, label %for.body276.preheader, label %for.inc314

for.body276.preheader:                            ; preds = %if.end233
  %sext = shl i64 %35, 32
  %36 = ashr exact i64 %sext, 32
  br label %for.body276

for.cond272:                                      ; preds = %for.body276
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, 1
  br i1 %exitcond.not, label %for.inc314, label %for.body276

for.body276:                                      ; preds = %for.body276.preheader, %for.cond272
  %indvars.iv = phi i64 [ %36, %for.body276.preheader ], [ %indvars.iv.next, %for.cond272 ]
  %bytes.addr.7530 = phi i64 [ %bytes.addr.6538, %for.body276.preheader ], [ %sub302, %for.cond272 ]
  %offset198.1528 = phi i32 [ %offset198.0537, %for.body276.preheader ], [ 0, %for.cond272 ]
  %off195.1527 = phi i64 [ %off195.0535, %for.body276.preheader ], [ %add301, %for.cond272 ]
  %add.ptr278 = getelementptr %struct.page, %struct.page* %head.0539, i64 %indvars.iv
  %call279 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr278) #18
  %idx.ext280 = zext i32 %offset198.1528 to i64
  %add.ptr281 = getelementptr i8, i8* %call279, i64 %idx.ext280
  %sub283 = sub nsw i64 4096, %idx.ext280
  %cmp285 = icmp ult i64 %bytes.addr.7530, %sub283
  %cond290 = select i1 %cmp285, i64 %bytes.addr.7530, i64 %sub283
  %add.ptr291 = getelementptr i8, i8* %addr, i64 %off195.1527
  %call292 = call i8* @memcpy(i8* noundef %add.ptr281, i8* noundef %add.ptr291, i64 noundef %cond290) #20
  %add301 = add i64 %cond290, %off195.1527
  %sub302 = sub i64 %bytes.addr.7530, %cond290
  %cmp304 = icmp eq i64 %sub302, 0
  br i1 %cmp304, label %__out, label %for.cond272

for.inc314:                                       ; preds = %for.cond272, %if.end233, %for.body
  %bytes.addr.8514 = phi i64 [ %bytes.addr.6538, %for.body ], [ %bytes.addr.6538, %if.end233 ], [ %sub302, %for.cond272 ]
  %offset198.3513 = phi i32 [ %offset198.0537, %for.body ], [ %offset198.0537, %if.end233 ], [ 0, %for.cond272 ]
  %off195.2512 = phi i64 [ %off195.0535, %for.body ], [ %off195.0535, %if.end233 ], [ %add301, %for.cond272 ]
  %call315 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef nonnull %xas) #18
  %tobool203.not = icmp eq i8* %call315, null
  br i1 %tobool203.not, label %__out, label %for.body

__out:                                            ; preds = %for.inc314, %for.body276, %if.then192, %cleanup311.thread515
  %off195.3 = phi i64 [ %off195.0535, %cleanup311.thread515 ], [ 0, %if.then192 ], [ %add301, %for.body276 ], [ %off195.2512, %for.inc314 ]
  call fastcc void @rcu_read_unlock() #18
  %37 = load i64, i64* %iov_offset196, align 8
  %add318 = add i64 %37, %off195.3
  store i64 %add318, i64* %iov_offset196, align 8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %27) #19
  br label %if.end322

if.end322:                                        ; preds = %while.end, %if.else190, %__out, %do.end180, %do.end
  %bytes.addr.9 = phi i64 [ %off.2, %do.end ], [ %add109, %while.end ], [ %off141.2, %do.end180 ], [ %off195.3, %__out ], [ %bytes.addr.0, %if.else190 ]
  %38 = load i64, i64* %count, align 8
  %sub324 = sub i64 %38, %bytes.addr.9
  store i64 %sub324, i64* %count, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.end322, %if.then
  %retval.0 = phi i64 [ %call2, %if.then ], [ %bytes.addr.9, %if.end322 ], [ 0, %if.end16 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @iov_iter_type(%struct.iov_iter* noundef %i) #18
  %cmp = icmp eq i32 %call, 3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @copy_pipe_to_iter(i8* noundef %addr, i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i) unnamed_addr #0 {
entry:
  %i_head = alloca i32, align 4
  %off = alloca i64, align 8
  %0 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe1 = bitcast %union.anon* %0 to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe1, align 8
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 6
  %2 = load i32, i32* %ring_size, align 4
  %sub = add i32 %2, -1
  %3 = bitcast i32* %i_head to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #19
  store i32 0, i32* %i_head, align 4, !annotation !13
  %4 = bitcast i64* %off to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #19
  store i64 0, i64* %off, align 8, !annotation !13
  %call = call fastcc i1 @sanity(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i64 @push_pipe(%struct.iov_iter* noundef %i, i64 noundef %bytes, i32* noundef nonnull %i_head, i64* noundef nonnull %off) #18
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %cleanup, label %do.body.preheader, !prof !8

do.body.preheader:                                ; preds = %if.end
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  %off.promoted = load i64, i64* %off, align 8
  %i_head.promoted = load i32, i32* %i_head, align 4
  %5 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5
  %head = bitcast %union.anon.62* %5 to i32*
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %sub8.peel = sub i64 4096, %off.promoted
  %cmp.peel = icmp ult i64 %call2, %sub8.peel
  %cond.peel = select i1 %cmp.peel, i64 %call2, i64 %sub8.peel
  %6 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and.peel = and i32 %i_head.promoted, %sub
  %idxprom.peel = zext i32 %and.peel to i64
  %page.peel = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %6, i64 %idxprom.peel, i32 0
  %7 = load %struct.page*, %struct.page** %page.peel, align 8
  call fastcc void @memcpy_to_page(%struct.page* noundef %7, i64 noundef %off.promoted, i8* noundef %addr, i64 noundef %cond.peel) #18
  store i32 %i_head.promoted, i32* %head, align 8
  %add.peel = add i64 %cond.peel, %off.promoted
  store i64 %add.peel, i64* %iov_offset, align 8
  %sub10.peel = sub i64 %call2, %cond.peel
  %tobool11.not.peel = icmp eq i64 %sub10.peel, 0
  br i1 %tobool11.not.peel, label %do.end, label %do.body.peel.next

do.body.peel.next:                                ; preds = %do.body.preheader
  %add.ptr.peel = getelementptr i8, i8* %addr, i64 %cond.peel
  br label %do.body

do.body:                                          ; preds = %do.body.peel.next, %do.body
  %inc40.in = phi i32 [ %inc40, %do.body ], [ %i_head.promoted, %do.body.peel.next ]
  %n.0 = phi i64 [ %sub10, %do.body ], [ %sub10.peel, %do.body.peel.next ]
  %addr.addr.0 = phi i8* [ %add.ptr, %do.body ], [ %add.ptr.peel, %do.body.peel.next ]
  %inc40 = add i32 %inc40.in, 1
  %cmp = icmp ult i64 %n.0, 4096
  %cond = select i1 %cmp, i64 %n.0, i64 4096
  %8 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %inc40, %sub
  %idxprom = zext i32 %and to i64
  %page = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom, i32 0
  %9 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @memcpy_to_page(%struct.page* noundef %9, i64 noundef 0, i8* noundef %addr.addr.0, i64 noundef %cond) #18
  store i32 %inc40, i32* %head, align 8
  store i64 %cond, i64* %iov_offset, align 8
  %sub10 = sub i64 %n.0, %cond
  %add.ptr = getelementptr i8, i8* %addr.addr.0, i64 %cond
  %tobool11.not = icmp eq i64 %sub10, 0
  br i1 %tobool11.not, label %do.end, label %do.body, !llvm.loop !15

do.end:                                           ; preds = %do.body, %do.body.preheader
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %10 = load i64, i64* %count, align 8
  %sub12 = sub i64 %10, %call2
  store i64 %sub12, i64* %count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %do.end
  %retval.0 = phi i64 [ %call2, %do.end ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #19
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copyout(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #18
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #18
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #20
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  %conv8 = trunc i64 %n.addr.0 to i32
  ret i32 %conv8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @iov_iter_type(%struct.iov_iter* noundef %i) #18
  %cmp = icmp eq i32 %call, 2
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @kmap_local_page(%struct.page* noundef %page) unnamed_addr #4 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @iov_iter_type(%struct.iov_iter* noundef %i) #18
  %cmp = icmp eq i32 %call, 1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @iov_iter_type(%struct.iov_iter* noundef %i) #18
  %cmp = icmp eq i32 %call, 4
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_find(%struct.xa_state* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i1 @xas_retry(%struct.xa_state* nocapture noundef writeonly %xas, i8* noundef %entry1) unnamed_addr #7 {
entry:
  %call = call fastcc i1 @xa_is_zero(i8* noundef %entry1) #18
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @xa_is_retry(i8* noundef %entry1) #18
  br i1 %call2, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  call fastcc void @xas_reset(%struct.xa_state* noundef %xas) #18
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i1 [ true, %if.end4 ], [ true, %entry ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_value(i8* noundef %entry1) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @xas_next_entry(%struct.xa_state* noundef %xas) unnamed_addr #0 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_not_node(%struct.xa_node* noundef %0) #18
  br i1 %call, label %cleanup.sink.split, label %lor.lhs.false, !prof !8

lor.lhs.false:                                    ; preds = %entry
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %1 = load i8, i8* %shift, align 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %cleanup.sink.split, !prof !9

lor.rhs:                                          ; preds = %lor.lhs.false
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %conv2 = zext i8 %2 to i64
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %xa_index, align 8
  %and = and i64 %3, 63
  %cmp.not = icmp eq i64 %and, %conv2
  br i1 %cmp.not, label %do.body, label %cleanup.sink.split, !prof !9

do.body:                                          ; preds = %lor.rhs, %if.end48
  %4 = phi i8 [ %inc, %if.end48 ], [ %2, %lor.rhs ]
  %5 = phi i64 [ %inc51, %if.end48 ], [ %3, %lor.rhs ]
  %cmp9 = icmp eq i64 %5, -1
  %cmp23 = icmp eq i8 %4, 63
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp23
  br i1 %or.cond, label %cleanup.sink.split, label %if.end34, !prof !17

if.end34:                                         ; preds = %do.body
  %conv36 = zext i8 %4 to i32
  %add = add nuw nsw i32 %conv36, 1
  %call37 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %0, i32 noundef %add) #18
  %call38 = call fastcc i1 @xa_is_internal(i8* noundef %call37) #18
  br i1 %call38, label %cleanup.sink.split, label %if.end48, !prof !8

if.end48:                                         ; preds = %if.end34
  %6 = load i8, i8* %xa_offset, align 2
  %inc = add i8 %6, 1
  store i8 %inc, i8* %xa_offset, align 2
  %7 = load i64, i64* %xa_index, align 8
  %inc51 = add i64 %7, 1
  store i64 %inc51, i64* %xa_index, align 8
  %tobool52.not = icmp eq i8* %call37, null
  br i1 %tobool52.not, label %do.body, label %cleanup

cleanup.sink.split:                               ; preds = %if.end34, %do.body, %lor.rhs, %lor.lhs.false, %entry
  %call47 = call i8* @xas_find(%struct.xa_state* noundef %xas, i64 noundef -1) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %cleanup.sink.split
  %retval.0 = phi i8* [ %call47, %cleanup.sink.split ], [ %call37, %if.end48 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @_copy_from_iter(i8* noundef %addr, i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %call = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then10, label %if.end18, !prof !8

if.then10:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 715; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !18
  br label %return

if.end18:                                         ; preds = %entry
  %call19 = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %0, %bytes
  br i1 %cmp, label %if.then30, label %if.end32, !prof !8

if.then30:                                        ; preds = %if.end18
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end18
  %bytes.addr.0 = phi i64 [ %0, %if.then30 ], [ %bytes, %if.end18 ]
  %tobool33.not = icmp eq i64 %bytes.addr.0, 0
  br i1 %tobool33.not, label %return, label %if.then41, !prof !8

if.then41:                                        ; preds = %if.end32
  br i1 %call19, label %if.then50, label %if.else, !prof !9

if.then50:                                        ; preds = %if.then41
  %iov51 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %1 = load %struct.iovec*, %struct.iovec** %iov51, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %2 = load i64, i64* %iov_offset, align 8
  br label %do.body

do.body:                                          ; preds = %if.end75, %if.then50
  %skip.0 = phi i64 [ %2, %if.then50 ], [ 0, %if.end75 ]
  %off.0 = phi i64 [ 0, %if.then50 ], [ %off.1, %if.end75 ]
  %iov.0 = phi %struct.iovec* [ %1, %if.then50 ], [ %incdec.ptr, %if.end75 ]
  %bytes.addr.1 = phi i64 [ %bytes.addr.0, %if.then50 ], [ %bytes.addr.2, %if.end75 ]
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 1
  %3 = load i64, i64* %iov_len, align 8
  %sub = sub i64 %3, %skip.0
  %cmp53 = icmp ult i64 %bytes.addr.1, %sub
  %cond = select i1 %cmp53, i64 %bytes.addr.1, i64 %sub
  %tobool55.not = icmp eq i64 %cond, 0
  br i1 %tobool55.not, label %if.end75, label %if.then63, !prof !8

if.then63:                                        ; preds = %do.body
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 0
  %4 = load i8*, i8** %iov_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %skip.0
  %add.ptr64 = getelementptr i8, i8* %addr, i64 %off.0
  %call65 = call fastcc i32 @copyin(i8* noundef %add.ptr64, i8* noundef %add.ptr, i64 noundef %cond) #18
  %conv66 = sext i32 %call65 to i64
  %sub67 = sub i64 %cond, %conv66
  %add = add i64 %sub67, %off.0
  %add68 = add i64 %sub67, %skip.0
  %sub69 = sub i64 %bytes.addr.1, %sub67
  %5 = load i64, i64* %iov_len, align 8
  %cmp71 = icmp ult i64 %add68, %5
  br i1 %cmp71, label %do.end, label %if.end75

if.end75:                                         ; preds = %if.then63, %do.body
  %off.1 = phi i64 [ %add, %if.then63 ], [ %off.0, %do.body ]
  %bytes.addr.2 = phi i64 [ %sub69, %if.then63 ], [ %bytes.addr.1, %do.body ]
  %incdec.ptr = getelementptr %struct.iovec, %struct.iovec* %iov.0, i64 1
  %tobool76.not = icmp eq i64 %bytes.addr.2, 0
  br i1 %tobool76.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.then63, %if.end75
  %skip.1 = phi i64 [ %add68, %if.then63 ], [ 0, %if.end75 ]
  %off.2 = phi i64 [ %add, %if.then63 ], [ %off.1, %if.end75 ]
  %iov.1 = phi %struct.iovec* [ %iov.0, %if.then63 ], [ %incdec.ptr, %if.end75 ]
  store i64 %skip.1, i64* %iov_offset, align 8
  %6 = load %struct.iovec*, %struct.iovec** %iov51, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.iovec* %iov.1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.iovec* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 4
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %7 = load i64, i64* %nr_segs, align 8
  %sub79 = sub i64 %7, %sub.ptr.div
  store i64 %sub79, i64* %nr_segs, align 8
  store %struct.iovec* %iov.1, %struct.iovec** %iov51, align 8
  br label %if.end340

if.else:                                          ; preds = %if.then41
  %call81 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call81, label %while.body.preheader, label %if.else152

while.body.preheader:                             ; preds = %if.else
  %8 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec83 = bitcast %union.anon* %8 to %struct.bio_vec**
  %9 = load %struct.bio_vec*, %struct.bio_vec** %bvec83, align 8
  %iov_offset88 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %10 = load i64, i64* %iov_offset88, align 8
  %conv89 = trunc i64 %10 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %bytes.addr.3562 = phi i64 [ %sub136, %while.body ], [ %bytes.addr.0, %while.body.preheader ]
  %bvec.0561 = phi %struct.bio_vec* [ %spec.select524, %while.body ], [ %9, %while.body.preheader ]
  %off86.0560 = phi i64 [ %add126, %while.body ], [ 0, %while.body.preheader ]
  %skip87.0559 = phi i32 [ %spec.select, %while.body ], [ %conv89, %while.body.preheader ]
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0561, i64 0, i32 2
  %11 = load i32, i32* %bv_offset, align 4
  %add91 = add i32 %11, %skip87.0559
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0561, i64 0, i32 0
  %12 = load %struct.page*, %struct.page** %bv_page, align 8
  %conv92 = zext i32 %add91 to i64
  %div = lshr i64 %conv92, 12
  %add.ptr93 = getelementptr %struct.page, %struct.page* %12, i64 %div
  %call94 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr93) #18
  %rem = and i64 %conv92, 4095
  %add.ptr96 = getelementptr i8, i8* %call94, i64 %rem
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0561, i64 0, i32 1
  %13 = load i32, i32* %bv_len, align 8
  %sub97 = sub i32 %13, %skip87.0559
  %conv98 = zext i32 %sub97 to i64
  %cmp100 = icmp ult i64 %bytes.addr.3562, %conv98
  %cond105 = select i1 %cmp100, i64 %bytes.addr.3562, i64 %conv98
  %sub108 = sub nuw nsw i64 4096, %rem
  %cmp110 = icmp ult i64 %cond105, %sub108
  %cond115 = select i1 %cmp110, i64 %cond105, i64 %sub108
  %add.ptr116 = getelementptr i8, i8* %addr, i64 %off86.0560
  %call117 = call i8* @memcpy(i8* noundef %add.ptr116, i8* noundef %add.ptr96, i64 noundef %cond115) #20
  %add126 = add i64 %cond115, %off86.0560
  %14 = trunc i64 %cond115 to i32
  %conv129 = add i32 %skip87.0559, %14
  %15 = load i32, i32* %bv_len, align 8
  %cmp131 = icmp eq i32 %conv129, %15
  %spec.select = select i1 %cmp131, i32 0, i32 %conv129
  %spec.select524.idx = zext i1 %cmp131 to i64
  %spec.select524 = getelementptr %struct.bio_vec, %struct.bio_vec* %bvec.0561, i64 %spec.select524.idx
  %sub136 = sub i64 %bytes.addr.3562, %cond115
  %tobool90.not = icmp eq i64 %sub136, 0
  br i1 %tobool90.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %.pre = load %struct.bio_vec*, %struct.bio_vec** %bvec83, align 8
  %phi.cast = zext i32 %spec.select to i64
  store i64 %phi.cast, i64* %iov_offset88, align 8
  %sub.ptr.lhs.cast145 = ptrtoint %struct.bio_vec* %spec.select524 to i64
  %sub.ptr.rhs.cast146 = ptrtoint %struct.bio_vec* %.pre to i64
  %sub.ptr.sub147 = sub i64 %sub.ptr.lhs.cast145, %sub.ptr.rhs.cast146
  %sub.ptr.div148 = ashr exact i64 %sub.ptr.sub147, 4
  %nr_segs149 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %16 = load i64, i64* %nr_segs149, align 8
  %sub150 = sub i64 %16, %sub.ptr.div148
  store i64 %sub150, i64* %nr_segs149, align 8
  store %struct.bio_vec* %spec.select524, %struct.bio_vec** %bvec83, align 8
  br label %if.end340

if.else152:                                       ; preds = %if.else
  %call153 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call153, label %if.then154, label %if.else207

if.then154:                                       ; preds = %if.else152
  %17 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %kvec155 = bitcast %union.anon* %17 to %struct.kvec**
  %18 = load %struct.kvec*, %struct.kvec** %kvec155, align 8
  %iov_offset160 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %19 = load i64, i64* %iov_offset160, align 8
  br label %do.body161

do.body161:                                       ; preds = %if.end193, %if.then154
  %kvec.0 = phi %struct.kvec* [ %18, %if.then154 ], [ %incdec.ptr194, %if.end193 ]
  %off158.0 = phi i64 [ 0, %if.then154 ], [ %off158.1, %if.end193 ]
  %skip159.0 = phi i64 [ %19, %if.then154 ], [ 0, %if.end193 ]
  %bytes.addr.4 = phi i64 [ %bytes.addr.0, %if.then154 ], [ %bytes.addr.5, %if.end193 ]
  %iov_len162 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 1
  %20 = load i64, i64* %iov_len162, align 8
  %sub163 = sub i64 %20, %skip159.0
  %cmp165 = icmp ult i64 %bytes.addr.4, %sub163
  %cond170 = select i1 %cmp165, i64 %bytes.addr.4, i64 %sub163
  %tobool171.not = icmp eq i64 %cond170, 0
  br i1 %tobool171.not, label %if.end193, label %if.then179, !prof !8

if.then179:                                       ; preds = %do.body161
  %iov_base180 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 0
  %21 = load i8*, i8** %iov_base180, align 8
  %add.ptr181 = getelementptr i8, i8* %21, i64 %skip159.0
  %add.ptr182 = getelementptr i8, i8* %addr, i64 %off158.0
  %call183 = call i8* @memcpy(i8* noundef %add.ptr182, i8* noundef %add.ptr181, i64 noundef %cond170) #20
  %add185 = add i64 %cond170, %off158.0
  %add186 = add i64 %cond170, %skip159.0
  %sub187 = sub i64 %bytes.addr.4, %cond170
  %22 = load i64, i64* %iov_len162, align 8
  %cmp189 = icmp ult i64 %add186, %22
  br i1 %cmp189, label %do.end197, label %if.end193

if.end193:                                        ; preds = %if.then179, %do.body161
  %off158.1 = phi i64 [ %add185, %if.then179 ], [ %off158.0, %do.body161 ]
  %bytes.addr.5 = phi i64 [ %sub187, %if.then179 ], [ %bytes.addr.4, %do.body161 ]
  %incdec.ptr194 = getelementptr %struct.kvec, %struct.kvec* %kvec.0, i64 1
  %tobool196.not = icmp eq i64 %bytes.addr.5, 0
  br i1 %tobool196.not, label %do.end197, label %do.body161

do.end197:                                        ; preds = %if.then179, %if.end193
  %kvec.1 = phi %struct.kvec* [ %kvec.0, %if.then179 ], [ %incdec.ptr194, %if.end193 ]
  %off158.2 = phi i64 [ %add185, %if.then179 ], [ %off158.1, %if.end193 ]
  %skip159.1 = phi i64 [ %add186, %if.then179 ], [ 0, %if.end193 ]
  store i64 %skip159.1, i64* %iov_offset160, align 8
  %23 = load %struct.kvec*, %struct.kvec** %kvec155, align 8
  %sub.ptr.lhs.cast200 = ptrtoint %struct.kvec* %kvec.1 to i64
  %sub.ptr.rhs.cast201 = ptrtoint %struct.kvec* %23 to i64
  %sub.ptr.sub202 = sub i64 %sub.ptr.lhs.cast200, %sub.ptr.rhs.cast201
  %sub.ptr.div203 = ashr exact i64 %sub.ptr.sub202, 4
  %nr_segs204 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %24 = load i64, i64* %nr_segs204, align 8
  %sub205 = sub i64 %24, %sub.ptr.div203
  store i64 %sub205, i64* %nr_segs204, align 8
  store %struct.kvec* %kvec.1, %struct.kvec** %kvec155, align 8
  br label %if.end340

if.else207:                                       ; preds = %if.else152
  %call208 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call208, label %if.then209, label %if.end340

if.then209:                                       ; preds = %if.else207
  %xarray_start = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %25 = load i64, i64* %xarray_start, align 8
  %iov_offset213 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %26 = load i64, i64* %iov_offset213, align 8
  %add214 = add i64 %26, %25
  %div218 = lshr i64 %add214, 12
  %27 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %27) #19
  %28 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %29 = bitcast i8* %28 to i64*, !annotation !13
  store i64 0, i64* %29, align 8, !annotation !13
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %30 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %xarray = bitcast %union.anon* %30 to %struct.xarray**
  %31 = load %struct.xarray*, %struct.xarray** %xarray, align 8
  store %struct.xarray* %31, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %div218, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @__rcu_read_lock() #20
  %call219 = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef -1) #20
  %tobool220.not551 = icmp eq i8* %call219, null
  br i1 %tobool220.not551, label %__out, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then209
  %32 = trunc i64 %add214 to i32
  %conv217 = and i32 %32, 4095
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc332
  %bytes.addr.6555 = phi i64 [ %bytes.addr.8531, %for.inc332 ], [ %bytes.addr.0, %for.body.preheader ]
  %offset215.0554 = phi i32 [ %offset215.3530, %for.inc332 ], [ %conv217, %for.body.preheader ]
  %head.0.in553 = phi i8* [ %call333, %for.inc332 ], [ %call219, %for.body.preheader ]
  %off212.0552 = phi i64 [ %off212.2529, %for.inc332 ], [ 0, %for.body.preheader ]
  %head.0556 = bitcast i8* %head.0.in553 to %struct.page*
  %call222 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %head.0.in553) #18
  br i1 %call222, label %for.inc332, label %if.end224

if.end224:                                        ; preds = %for.body
  %call226 = call fastcc i1 @xa_is_value(i8* noundef nonnull %head.0.in553) #18
  br i1 %call226, label %cleanup329.thread532, label %if.end251, !prof !8

cleanup329.thread532:                             ; preds = %if.end224
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 723; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !19
  br label %__out

if.end251:                                        ; preds = %if.end224
  %index280 = getelementptr inbounds i8, i8* %head.0.in553, i64 32
  %33 = bitcast i8* %index280 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @llvm.usub.sat.i64(i64 %div218, i64 %34)
  %conv289 = trunc i64 %35 to i32
  %cmp292543 = icmp slt i32 %conv289, 1
  br i1 %cmp292543, label %for.body294.preheader, label %for.inc332

for.body294.preheader:                            ; preds = %if.end251
  %sext = shl i64 %35, 32
  %36 = ashr exact i64 %sext, 32
  br label %for.body294

for.cond290:                                      ; preds = %for.body294
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, 1
  br i1 %exitcond.not, label %for.inc332, label %for.body294

for.body294:                                      ; preds = %for.body294.preheader, %for.cond290
  %indvars.iv = phi i64 [ %36, %for.body294.preheader ], [ %indvars.iv.next, %for.cond290 ]
  %bytes.addr.7547 = phi i64 [ %bytes.addr.6555, %for.body294.preheader ], [ %sub320, %for.cond290 ]
  %offset215.1545 = phi i32 [ %offset215.0554, %for.body294.preheader ], [ 0, %for.cond290 ]
  %off212.1544 = phi i64 [ %off212.0552, %for.body294.preheader ], [ %add319, %for.cond290 ]
  %add.ptr296 = getelementptr %struct.page, %struct.page* %head.0556, i64 %indvars.iv
  %call297 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr296) #18
  %idx.ext298 = zext i32 %offset215.1545 to i64
  %add.ptr299 = getelementptr i8, i8* %call297, i64 %idx.ext298
  %sub301 = sub nsw i64 4096, %idx.ext298
  %cmp303 = icmp ult i64 %bytes.addr.7547, %sub301
  %cond308 = select i1 %cmp303, i64 %bytes.addr.7547, i64 %sub301
  %add.ptr309 = getelementptr i8, i8* %addr, i64 %off212.1544
  %call310 = call i8* @memcpy(i8* noundef %add.ptr309, i8* noundef %add.ptr299, i64 noundef %cond308) #20
  %add319 = add i64 %cond308, %off212.1544
  %sub320 = sub i64 %bytes.addr.7547, %cond308
  %cmp322 = icmp eq i64 %sub320, 0
  br i1 %cmp322, label %__out, label %for.cond290

for.inc332:                                       ; preds = %for.cond290, %if.end251, %for.body
  %bytes.addr.8531 = phi i64 [ %bytes.addr.6555, %for.body ], [ %bytes.addr.6555, %if.end251 ], [ %sub320, %for.cond290 ]
  %offset215.3530 = phi i32 [ %offset215.0554, %for.body ], [ %offset215.0554, %if.end251 ], [ 0, %for.cond290 ]
  %off212.2529 = phi i64 [ %off212.0552, %for.body ], [ %off212.0552, %if.end251 ], [ %add319, %for.cond290 ]
  %call333 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef nonnull %xas) #18
  %tobool220.not = icmp eq i8* %call333, null
  br i1 %tobool220.not, label %__out, label %for.body

__out:                                            ; preds = %for.inc332, %for.body294, %if.then209, %cleanup329.thread532
  %off212.3 = phi i64 [ %off212.0552, %cleanup329.thread532 ], [ 0, %if.then209 ], [ %add319, %for.body294 ], [ %off212.2529, %for.inc332 ]
  call fastcc void @rcu_read_unlock() #18
  %37 = load i64, i64* %iov_offset213, align 8
  %add336 = add i64 %37, %off212.3
  store i64 %add336, i64* %iov_offset213, align 8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %27) #19
  br label %if.end340

if.end340:                                        ; preds = %while.end, %if.else207, %__out, %do.end197, %do.end
  %bytes.addr.9 = phi i64 [ %off.2, %do.end ], [ %add126, %while.end ], [ %off158.2, %do.end197 ], [ %off212.3, %__out ], [ %bytes.addr.0, %if.else207 ]
  %38 = load i64, i64* %count, align 8
  %sub342 = sub i64 %38, %bytes.addr.9
  store i64 %sub342, i64* %count, align 8
  br label %return

return:                                           ; preds = %if.end32, %if.end340, %if.then10
  %retval.0 = phi i64 [ 0, %if.then10 ], [ %bytes.addr.9, %if.end340 ], [ 0, %if.end32 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copyin(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #18
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #18
  %call5 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call4, i64 noundef %n) #20
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  %conv8 = trunc i64 %n.addr.0 to i32
  ret i32 %conv8
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @_copy_from_iter_nocache(i8* noundef %addr, i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %call = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then10, label %if.end18, !prof !8

if.then10:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 732; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !20
  br label %return

if.end18:                                         ; preds = %entry
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %0, %bytes
  br i1 %cmp, label %if.then27, label %if.end29, !prof !8

if.then27:                                        ; preds = %if.end18
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end18
  %bytes.addr.0 = phi i64 [ %0, %if.then27 ], [ %bytes, %if.end18 ]
  %tobool30.not = icmp eq i64 %bytes.addr.0, 0
  br i1 %tobool30.not, label %return, label %if.then38, !prof !8

if.then38:                                        ; preds = %if.end29
  %call39 = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call39, label %if.then47, label %if.else, !prof !9

if.then47:                                        ; preds = %if.then38
  %iov48 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %1 = load %struct.iovec*, %struct.iovec** %iov48, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %2 = load i64, i64* %iov_offset, align 8
  br label %do.body

do.body:                                          ; preds = %if.end71, %if.then47
  %skip.0 = phi i64 [ %2, %if.then47 ], [ 0, %if.end71 ]
  %off.0 = phi i64 [ 0, %if.then47 ], [ %off.1, %if.end71 ]
  %iov.0 = phi %struct.iovec* [ %1, %if.then47 ], [ %incdec.ptr, %if.end71 ]
  %bytes.addr.1 = phi i64 [ %bytes.addr.0, %if.then47 ], [ %bytes.addr.2, %if.end71 ]
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 1
  %3 = load i64, i64* %iov_len, align 8
  %sub = sub i64 %3, %skip.0
  %cmp50 = icmp ult i64 %bytes.addr.1, %sub
  %cond = select i1 %cmp50, i64 %bytes.addr.1, i64 %sub
  %tobool52.not = icmp eq i64 %cond, 0
  br i1 %tobool52.not, label %if.end71, label %if.then60, !prof !8

if.then60:                                        ; preds = %do.body
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 0
  %4 = load i8*, i8** %iov_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %skip.0
  %add.ptr61 = getelementptr i8, i8* %addr, i64 %off.0
  %call62 = call fastcc i64 @__copy_from_user_inatomic_nocache(i8* noundef %add.ptr61, i8* noundef %add.ptr, i64 noundef %cond) #18
  %sub63 = sub i64 %cond, %call62
  %add = add i64 %sub63, %off.0
  %add64 = add i64 %sub63, %skip.0
  %sub65 = sub i64 %bytes.addr.1, %sub63
  %5 = load i64, i64* %iov_len, align 8
  %cmp67 = icmp ult i64 %add64, %5
  br i1 %cmp67, label %do.end, label %if.end71

if.end71:                                         ; preds = %if.then60, %do.body
  %off.1 = phi i64 [ %add, %if.then60 ], [ %off.0, %do.body ]
  %bytes.addr.2 = phi i64 [ %sub65, %if.then60 ], [ %bytes.addr.1, %do.body ]
  %incdec.ptr = getelementptr %struct.iovec, %struct.iovec* %iov.0, i64 1
  %tobool72.not = icmp eq i64 %bytes.addr.2, 0
  br i1 %tobool72.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.then60, %if.end71
  %skip.1 = phi i64 [ %add64, %if.then60 ], [ 0, %if.end71 ]
  %off.2 = phi i64 [ %add, %if.then60 ], [ %off.1, %if.end71 ]
  %iov.1 = phi %struct.iovec* [ %iov.0, %if.then60 ], [ %incdec.ptr, %if.end71 ]
  store i64 %skip.1, i64* %iov_offset, align 8
  %6 = load %struct.iovec*, %struct.iovec** %iov48, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.iovec* %iov.1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.iovec* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 4
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %7 = load i64, i64* %nr_segs, align 8
  %sub75 = sub i64 %7, %sub.ptr.div
  store i64 %sub75, i64* %nr_segs, align 8
  store %struct.iovec* %iov.1, %struct.iovec** %iov48, align 8
  br label %if.end336

if.else:                                          ; preds = %if.then38
  %call77 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call77, label %while.body.preheader, label %if.else148

while.body.preheader:                             ; preds = %if.else
  %8 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec79 = bitcast %union.anon* %8 to %struct.bio_vec**
  %9 = load %struct.bio_vec*, %struct.bio_vec** %bvec79, align 8
  %iov_offset84 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %10 = load i64, i64* %iov_offset84, align 8
  %conv85 = trunc i64 %10 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %bytes.addr.3557 = phi i64 [ %sub132, %while.body ], [ %bytes.addr.0, %while.body.preheader ]
  %bvec.0556 = phi %struct.bio_vec* [ %spec.select519, %while.body ], [ %9, %while.body.preheader ]
  %off82.0555 = phi i64 [ %add122, %while.body ], [ 0, %while.body.preheader ]
  %skip83.0554 = phi i32 [ %spec.select, %while.body ], [ %conv85, %while.body.preheader ]
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0556, i64 0, i32 2
  %11 = load i32, i32* %bv_offset, align 4
  %add87 = add i32 %11, %skip83.0554
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0556, i64 0, i32 0
  %12 = load %struct.page*, %struct.page** %bv_page, align 8
  %conv88 = zext i32 %add87 to i64
  %div = lshr i64 %conv88, 12
  %add.ptr89 = getelementptr %struct.page, %struct.page* %12, i64 %div
  %call90 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr89) #18
  %rem = and i64 %conv88, 4095
  %add.ptr92 = getelementptr i8, i8* %call90, i64 %rem
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0556, i64 0, i32 1
  %13 = load i32, i32* %bv_len, align 8
  %sub93 = sub i32 %13, %skip83.0554
  %conv94 = zext i32 %sub93 to i64
  %cmp96 = icmp ult i64 %bytes.addr.3557, %conv94
  %cond101 = select i1 %cmp96, i64 %bytes.addr.3557, i64 %conv94
  %sub104 = sub nuw nsw i64 4096, %rem
  %cmp106 = icmp ult i64 %cond101, %sub104
  %cond111 = select i1 %cmp106, i64 %cond101, i64 %sub104
  %add.ptr112 = getelementptr i8, i8* %addr, i64 %off82.0555
  %call113 = call i8* @memcpy(i8* noundef %add.ptr112, i8* noundef %add.ptr92, i64 noundef %cond111) #20
  %add122 = add i64 %cond111, %off82.0555
  %14 = trunc i64 %cond111 to i32
  %conv125 = add i32 %skip83.0554, %14
  %15 = load i32, i32* %bv_len, align 8
  %cmp127 = icmp eq i32 %conv125, %15
  %spec.select = select i1 %cmp127, i32 0, i32 %conv125
  %spec.select519.idx = zext i1 %cmp127 to i64
  %spec.select519 = getelementptr %struct.bio_vec, %struct.bio_vec* %bvec.0556, i64 %spec.select519.idx
  %sub132 = sub i64 %bytes.addr.3557, %cond111
  %tobool86.not = icmp eq i64 %sub132, 0
  br i1 %tobool86.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %.pre = load %struct.bio_vec*, %struct.bio_vec** %bvec79, align 8
  %phi.cast = zext i32 %spec.select to i64
  store i64 %phi.cast, i64* %iov_offset84, align 8
  %sub.ptr.lhs.cast141 = ptrtoint %struct.bio_vec* %spec.select519 to i64
  %sub.ptr.rhs.cast142 = ptrtoint %struct.bio_vec* %.pre to i64
  %sub.ptr.sub143 = sub i64 %sub.ptr.lhs.cast141, %sub.ptr.rhs.cast142
  %sub.ptr.div144 = ashr exact i64 %sub.ptr.sub143, 4
  %nr_segs145 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %16 = load i64, i64* %nr_segs145, align 8
  %sub146 = sub i64 %16, %sub.ptr.div144
  store i64 %sub146, i64* %nr_segs145, align 8
  store %struct.bio_vec* %spec.select519, %struct.bio_vec** %bvec79, align 8
  br label %if.end336

if.else148:                                       ; preds = %if.else
  %call149 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call149, label %if.then150, label %if.else203

if.then150:                                       ; preds = %if.else148
  %17 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %kvec151 = bitcast %union.anon* %17 to %struct.kvec**
  %18 = load %struct.kvec*, %struct.kvec** %kvec151, align 8
  %iov_offset156 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %19 = load i64, i64* %iov_offset156, align 8
  br label %do.body157

do.body157:                                       ; preds = %if.end189, %if.then150
  %kvec.0 = phi %struct.kvec* [ %18, %if.then150 ], [ %incdec.ptr190, %if.end189 ]
  %off154.0 = phi i64 [ 0, %if.then150 ], [ %off154.1, %if.end189 ]
  %skip155.0 = phi i64 [ %19, %if.then150 ], [ 0, %if.end189 ]
  %bytes.addr.4 = phi i64 [ %bytes.addr.0, %if.then150 ], [ %bytes.addr.5, %if.end189 ]
  %iov_len158 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 1
  %20 = load i64, i64* %iov_len158, align 8
  %sub159 = sub i64 %20, %skip155.0
  %cmp161 = icmp ult i64 %bytes.addr.4, %sub159
  %cond166 = select i1 %cmp161, i64 %bytes.addr.4, i64 %sub159
  %tobool167.not = icmp eq i64 %cond166, 0
  br i1 %tobool167.not, label %if.end189, label %if.then175, !prof !8

if.then175:                                       ; preds = %do.body157
  %iov_base176 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 0
  %21 = load i8*, i8** %iov_base176, align 8
  %add.ptr177 = getelementptr i8, i8* %21, i64 %skip155.0
  %add.ptr178 = getelementptr i8, i8* %addr, i64 %off154.0
  %call179 = call i8* @memcpy(i8* noundef %add.ptr178, i8* noundef %add.ptr177, i64 noundef %cond166) #20
  %add181 = add i64 %cond166, %off154.0
  %add182 = add i64 %cond166, %skip155.0
  %sub183 = sub i64 %bytes.addr.4, %cond166
  %22 = load i64, i64* %iov_len158, align 8
  %cmp185 = icmp ult i64 %add182, %22
  br i1 %cmp185, label %do.end193, label %if.end189

if.end189:                                        ; preds = %if.then175, %do.body157
  %off154.1 = phi i64 [ %add181, %if.then175 ], [ %off154.0, %do.body157 ]
  %bytes.addr.5 = phi i64 [ %sub183, %if.then175 ], [ %bytes.addr.4, %do.body157 ]
  %incdec.ptr190 = getelementptr %struct.kvec, %struct.kvec* %kvec.0, i64 1
  %tobool192.not = icmp eq i64 %bytes.addr.5, 0
  br i1 %tobool192.not, label %do.end193, label %do.body157

do.end193:                                        ; preds = %if.then175, %if.end189
  %kvec.1 = phi %struct.kvec* [ %kvec.0, %if.then175 ], [ %incdec.ptr190, %if.end189 ]
  %off154.2 = phi i64 [ %add181, %if.then175 ], [ %off154.1, %if.end189 ]
  %skip155.1 = phi i64 [ %add182, %if.then175 ], [ 0, %if.end189 ]
  store i64 %skip155.1, i64* %iov_offset156, align 8
  %23 = load %struct.kvec*, %struct.kvec** %kvec151, align 8
  %sub.ptr.lhs.cast196 = ptrtoint %struct.kvec* %kvec.1 to i64
  %sub.ptr.rhs.cast197 = ptrtoint %struct.kvec* %23 to i64
  %sub.ptr.sub198 = sub i64 %sub.ptr.lhs.cast196, %sub.ptr.rhs.cast197
  %sub.ptr.div199 = ashr exact i64 %sub.ptr.sub198, 4
  %nr_segs200 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %24 = load i64, i64* %nr_segs200, align 8
  %sub201 = sub i64 %24, %sub.ptr.div199
  store i64 %sub201, i64* %nr_segs200, align 8
  store %struct.kvec* %kvec.1, %struct.kvec** %kvec151, align 8
  br label %if.end336

if.else203:                                       ; preds = %if.else148
  %call204 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call204, label %if.then205, label %if.end336

if.then205:                                       ; preds = %if.else203
  %xarray_start = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %25 = load i64, i64* %xarray_start, align 8
  %iov_offset209 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %26 = load i64, i64* %iov_offset209, align 8
  %add210 = add i64 %26, %25
  %div214 = lshr i64 %add210, 12
  %27 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %27) #19
  %28 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %29 = bitcast i8* %28 to i64*, !annotation !13
  store i64 0, i64* %29, align 8, !annotation !13
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %30 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %xarray = bitcast %union.anon* %30 to %struct.xarray**
  %31 = load %struct.xarray*, %struct.xarray** %xarray, align 8
  store %struct.xarray* %31, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %div214, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @__rcu_read_lock() #20
  %call215 = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef -1) #20
  %tobool216.not546 = icmp eq i8* %call215, null
  br i1 %tobool216.not546, label %__out, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then205
  %32 = trunc i64 %add210 to i32
  %conv213 = and i32 %32, 4095
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc328
  %bytes.addr.6550 = phi i64 [ %bytes.addr.8526, %for.inc328 ], [ %bytes.addr.0, %for.body.preheader ]
  %offset211.0549 = phi i32 [ %offset211.3525, %for.inc328 ], [ %conv213, %for.body.preheader ]
  %head.0.in548 = phi i8* [ %call329, %for.inc328 ], [ %call215, %for.body.preheader ]
  %off208.0547 = phi i64 [ %off208.2524, %for.inc328 ], [ 0, %for.body.preheader ]
  %head.0551 = bitcast i8* %head.0.in548 to %struct.page*
  %call218 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %head.0.in548) #18
  br i1 %call218, label %for.inc328, label %if.end220

if.end220:                                        ; preds = %for.body
  %call222 = call fastcc i1 @xa_is_value(i8* noundef nonnull %head.0.in548) #18
  br i1 %call222, label %cleanup325.thread527, label %if.end247, !prof !8

cleanup325.thread527:                             ; preds = %if.end220
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 738; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !21
  br label %__out

if.end247:                                        ; preds = %if.end220
  %index276 = getelementptr inbounds i8, i8* %head.0.in548, i64 32
  %33 = bitcast i8* %index276 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @llvm.usub.sat.i64(i64 %div214, i64 %34)
  %conv285 = trunc i64 %35 to i32
  %cmp288538 = icmp slt i32 %conv285, 1
  br i1 %cmp288538, label %for.body290.preheader, label %for.inc328

for.body290.preheader:                            ; preds = %if.end247
  %sext = shl i64 %35, 32
  %36 = ashr exact i64 %sext, 32
  br label %for.body290

for.cond286:                                      ; preds = %for.body290
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, 1
  br i1 %exitcond.not, label %for.inc328, label %for.body290

for.body290:                                      ; preds = %for.body290.preheader, %for.cond286
  %indvars.iv = phi i64 [ %36, %for.body290.preheader ], [ %indvars.iv.next, %for.cond286 ]
  %bytes.addr.7542 = phi i64 [ %bytes.addr.6550, %for.body290.preheader ], [ %sub316, %for.cond286 ]
  %offset211.1540 = phi i32 [ %offset211.0549, %for.body290.preheader ], [ 0, %for.cond286 ]
  %off208.1539 = phi i64 [ %off208.0547, %for.body290.preheader ], [ %add315, %for.cond286 ]
  %add.ptr292 = getelementptr %struct.page, %struct.page* %head.0551, i64 %indvars.iv
  %call293 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr292) #18
  %idx.ext294 = zext i32 %offset211.1540 to i64
  %add.ptr295 = getelementptr i8, i8* %call293, i64 %idx.ext294
  %sub297 = sub nsw i64 4096, %idx.ext294
  %cmp299 = icmp ult i64 %bytes.addr.7542, %sub297
  %cond304 = select i1 %cmp299, i64 %bytes.addr.7542, i64 %sub297
  %add.ptr305 = getelementptr i8, i8* %addr, i64 %off208.1539
  %call306 = call i8* @memcpy(i8* noundef %add.ptr305, i8* noundef %add.ptr295, i64 noundef %cond304) #20
  %add315 = add i64 %cond304, %off208.1539
  %sub316 = sub i64 %bytes.addr.7542, %cond304
  %cmp318 = icmp eq i64 %sub316, 0
  br i1 %cmp318, label %__out, label %for.cond286

for.inc328:                                       ; preds = %for.cond286, %if.end247, %for.body
  %bytes.addr.8526 = phi i64 [ %bytes.addr.6550, %for.body ], [ %bytes.addr.6550, %if.end247 ], [ %sub316, %for.cond286 ]
  %offset211.3525 = phi i32 [ %offset211.0549, %for.body ], [ %offset211.0549, %if.end247 ], [ 0, %for.cond286 ]
  %off208.2524 = phi i64 [ %off208.0547, %for.body ], [ %off208.0547, %if.end247 ], [ %add315, %for.cond286 ]
  %call329 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef nonnull %xas) #18
  %tobool216.not = icmp eq i8* %call329, null
  br i1 %tobool216.not, label %__out, label %for.body

__out:                                            ; preds = %for.inc328, %for.body290, %if.then205, %cleanup325.thread527
  %off208.3 = phi i64 [ %off208.0547, %cleanup325.thread527 ], [ 0, %if.then205 ], [ %add315, %for.body290 ], [ %off208.2524, %for.inc328 ]
  call fastcc void @rcu_read_unlock() #18
  %37 = load i64, i64* %iov_offset209, align 8
  %add332 = add i64 %37, %off208.3
  store i64 %add332, i64* %iov_offset209, align 8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %27) #19
  br label %if.end336

if.end336:                                        ; preds = %while.end, %if.else203, %__out, %do.end193, %do.end
  %bytes.addr.9 = phi i64 [ %off.2, %do.end ], [ %add122, %while.end ], [ %off154.2, %do.end193 ], [ %off208.3, %__out ], [ %bytes.addr.0, %if.else203 ]
  %38 = load i64, i64* %count, align 8
  %sub338 = sub i64 %38, %bytes.addr.9
  store i64 %sub338, i64* %count, align 8
  br label %return

return:                                           ; preds = %if.end29, %if.end336, %if.then10
  %retval.0 = phi i64 [ 0, %if.then10 ], [ %bytes.addr.9, %if.end336 ], [ 0, %if.end29 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__copy_from_user_inatomic_nocache(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1.i = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #20
  %call2.i = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call1.i, i64 noundef %n) #20
  ret i64 %call2.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @copy_page_to_iter(%struct.page* noundef %page, i64 noundef %offset, i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @page_copy_sane(%struct.page* noundef %page, i64 noundef %offset, i64 noundef %bytes) #18
  br i1 %call, label %if.end, label %cleanup15, !prof !9

if.end:                                           ; preds = %entry
  %div = lshr i64 %offset, 12
  %add.ptr = getelementptr %struct.page, %struct.page* %page, i64 %div
  %rem = and i64 %offset, 4095
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.end
  %bytes.addr.0 = phi i64 [ %bytes, %if.end ], [ %sub5, %while.cond ]
  %res.0 = phi i64 [ 0, %if.end ], [ %add, %while.cond ]
  %offset.addr.0 = phi i64 [ %rem, %if.end ], [ %spec.select, %while.cond ]
  %page.addr.0 = phi %struct.page* [ %add.ptr, %if.end ], [ %spec.select38, %while.cond ]
  %sub = sub i64 4096, %offset.addr.0
  %cmp = icmp ult i64 %bytes.addr.0, %sub
  %cond = select i1 %cmp, i64 %bytes.addr.0, i64 %sub
  %call4 = call fastcc i64 @__copy_page_to_iter(%struct.page* noundef %page.addr.0, i64 noundef %offset.addr.0, i64 noundef %cond, %struct.iov_iter* noundef %i) #18
  %add = add i64 %call4, %res.0
  %sub5 = sub i64 %bytes.addr.0, %call4
  %tobool6 = icmp ne i64 %sub5, 0
  %tobool7 = icmp ne i64 %call4, 0
  %or.cond = and i1 %tobool7, %tobool6
  %add10 = add i64 %call4, %offset.addr.0
  %cmp11 = icmp eq i64 %add10, 4096
  %spec.select = select i1 %cmp11, i64 0, i64 %add10
  %spec.select38.idx = zext i1 %cmp11 to i64
  %spec.select38 = getelementptr %struct.page, %struct.page* %page.addr.0, i64 %spec.select38.idx
  br i1 %or.cond, label %while.cond, label %cleanup15

cleanup15:                                        ; preds = %while.cond, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %add, %while.cond ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @page_copy_sane(%struct.page* noundef %page, i64 noundef %offset, i64 noundef %n) unnamed_addr #0 {
entry:
  %add = add i64 %n, %offset
  %cmp = icmp uge i64 %add, %n
  %cmp1 = icmp ult i64 %add, 4097
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #18
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %call
  %shl = shl i64 %sub.ptr.sub, 6
  %add2 = add i64 %shl, %add
  %cmp3.not = icmp ult i64 %add2, %n
  br i1 %cmp3.not, label %if.then17, label %land.rhs, !prof !8

land.rhs:                                         ; preds = %if.end
  %0 = inttoptr i64 %call to %struct.page*
  %call4 = call fastcc i64 @page_size(%struct.page* noundef %0) #18
  %cmp5.not = icmp ugt i64 %add2, %call4
  br i1 %cmp5.not, label %if.then17, label %cleanup, !prof !8

if.then17:                                        ; preds = %land.rhs, %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 797; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !22
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %entry, %if.then17
  %retval.0 = phi i1 [ false, %if.then17 ], [ true, %entry ], [ true, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__copy_page_to_iter(%struct.page* noundef %page, i64 noundef %offset, i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @copy_page_to_iter_iovec(%struct.page* noundef %page, i64 noundef %offset, i64 noundef %bytes, %struct.iov_iter* noundef %i) #18
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call3, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call5, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call8, label %if.then10, label %if.end16

if.then10:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  %call11 = call fastcc i8* @kmap_local_page(%struct.page* noundef %page) #18
  %add.ptr = getelementptr i8, i8* %call11, i64 %offset
  %call12 = call i64 @_copy_to_iter(i8* noundef %add.ptr, i64 noundef %bytes, %struct.iov_iter* noundef %i) #18
  br label %return

if.end16:                                         ; preds = %lor.lhs.false7
  %call17 = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %call19 = call fastcc i64 @copy_page_to_iter_pipe(%struct.page* noundef %page, i64 noundef %offset, i64 noundef %bytes, %struct.iov_iter* noundef %i) #18
  br label %return

if.end20:                                         ; preds = %if.end16
  %call21 = call fastcc i1 @iov_iter_is_discard(%struct.iov_iter* noundef %i) #18
  br i1 %call21, label %if.then29, label %if.then51, !prof !8

if.then29:                                        ; preds = %if.end20
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %0, %bytes
  br i1 %cmp, label %if.then38, label %if.end40, !prof !8

if.then38:                                        ; preds = %if.then29
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then29
  %bytes.addr.0 = phi i64 [ %0, %if.then38 ], [ %bytes, %if.then29 ]
  %sub = sub i64 %0, %bytes.addr.0
  store i64 %sub, i64* %count, align 8
  br label %return

if.then51:                                        ; preds = %if.end20
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 820; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !23
  br label %return

return:                                           ; preds = %if.then51, %if.end40, %if.then18, %if.then10, %if.then
  %retval.0 = phi i64 [ %call2, %if.then ], [ %call12, %if.then10 ], [ %call19, %if.then18 ], [ %bytes.addr.0, %if.end40 ], [ 0, %if.then51 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @copy_page_from_iter(%struct.page* noundef %page, i64 noundef %offset, i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @page_copy_sane(%struct.page* noundef %page, i64 noundef %offset, i64 noundef %bytes) #18
  br i1 %call, label %if.end, label %return, !prof !9

if.end:                                           ; preds = %entry
  %call3 = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call3, label %if.then11, label %if.end13, !prof !9

if.then11:                                        ; preds = %if.end
  %call12 = call fastcc i64 @copy_page_from_iter_iovec(%struct.page* noundef %page, i64 noundef %offset, i64 noundef %bytes, %struct.iov_iter* noundef %i) #18
  br label %return

if.end13:                                         ; preds = %if.end
  %call14 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call14, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %call16 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call16, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %call19 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call19, label %if.then21, label %if.then36

if.then21:                                        ; preds = %lor.lhs.false18, %lor.lhs.false, %if.end13
  %call22 = call fastcc i8* @kmap_local_page(%struct.page* noundef %page) #18
  %add.ptr = getelementptr i8, i8* %call22, i64 %offset
  %call23 = call i64 @_copy_from_iter(i8* noundef %add.ptr, i64 noundef %bytes, %struct.iov_iter* noundef %i) #18
  br label %return

if.then36:                                        ; preds = %lor.lhs.false18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 862; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !24
  br label %return

return:                                           ; preds = %entry, %if.then36, %if.then21, %if.then11
  %retval.0 = phi i64 [ %call12, %if.then11 ], [ %call23, %if.then21 ], [ 0, %if.then36 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @copy_page_from_iter_iovec(%struct.page* noundef %page, i64 noundef %offset, i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i) unnamed_addr #0 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %0, %bytes
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bytes.addr.0 = phi i64 [ %0, %if.then ], [ %bytes, %entry ]
  %tobool3.not = icmp eq i64 %bytes.addr.0, 0
  br i1 %tobool3.not, label %cleanup, label %if.end14, !prof !8

if.end14:                                         ; preds = %if.end
  %iov15 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %1 = load %struct.iovec*, %struct.iovec** %iov15, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %2 = load i64, i64* %iov_offset, align 8
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %1, i64 0, i32 0
  %3 = load i8*, i8** %iov_base, align 8
  %add.ptr = getelementptr i8, i8* %3, i64 %2
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %1, i64 0, i32 1
  %4 = load i64, i64* %iov_len, align 8
  %sub = sub i64 %4, %2
  %cmp16 = icmp ult i64 %bytes.addr.0, %sub
  %cond = select i1 %cmp16, i64 %bytes.addr.0, i64 %sub
  %call = call fastcc i8* @kmap(%struct.page* noundef %page) #18
  %add.ptr18 = getelementptr i8, i8* %call, i64 %offset
  %call19 = call fastcc i32 @copyin(i8* noundef %add.ptr18, i8* noundef %add.ptr, i64 noundef %cond) #18
  %conv20 = sext i32 %call19 to i64
  %sub21 = sub i64 %cond, %conv20
  %add = add i64 %sub21, %2
  %sub23 = sub i64 %bytes.addr.0, %sub21
  %tobool24.not131 = icmp eq i32 %call19, 0
  %tobool25132 = icmp ne i64 %sub23, 0
  %5 = select i1 %tobool24.not131, i1 %tobool25132, i1 false
  br i1 %5, label %while.body.preheader, label %while.end, !prof !8

while.body.preheader:                             ; preds = %if.end14
  %add.ptr22 = getelementptr i8, i8* %add.ptr18, i64 %sub21
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %bytes.addr.1135 = phi i64 [ %sub46, %while.body ], [ %sub23, %while.body.preheader ]
  %to.0134 = phi i8* [ %add.ptr45, %while.body ], [ %add.ptr22, %while.body.preheader ]
  %iov.0133 = phi %struct.iovec* [ %incdec.ptr, %while.body ], [ %1, %while.body.preheader ]
  %incdec.ptr = getelementptr %struct.iovec, %struct.iovec* %iov.0133, i64 1
  %iov_base33 = getelementptr inbounds %struct.iovec, %struct.iovec* %incdec.ptr, i64 0, i32 0
  %6 = load i8*, i8** %iov_base33, align 8
  %iov_len34 = getelementptr %struct.iovec, %struct.iovec* %iov.0133, i64 1, i32 1
  %7 = load i64, i64* %iov_len34, align 8
  %cmp36 = icmp ult i64 %bytes.addr.1135, %7
  %cond41 = select i1 %cmp36, i64 %bytes.addr.1135, i64 %7
  %call42 = call fastcc i32 @copyin(i8* noundef %to.0134, i8* noundef %6, i64 noundef %cond41) #18
  %conv43 = sext i32 %call42 to i64
  %sub44 = sub i64 %cond41, %conv43
  %add.ptr45 = getelementptr i8, i8* %to.0134, i64 %sub44
  %sub46 = sub i64 %bytes.addr.1135, %sub44
  %tobool24.not = icmp eq i32 %call42, 0
  %tobool25 = icmp ne i64 %sub46, 0
  %8 = select i1 %tobool24.not, i1 %tobool25, i1 false
  br i1 %8, label %while.body, label %while.end, !prof !8

while.end:                                        ; preds = %while.body, %if.end14
  %iov.0.lcssa = phi %struct.iovec* [ %1, %if.end14 ], [ %incdec.ptr, %while.body ]
  %skip.0.lcssa = phi i64 [ %add, %if.end14 ], [ %sub44, %while.body ]
  %bytes.addr.1.lcssa = phi i64 [ %sub23, %if.end14 ], [ %sub46, %while.body ]
  %iov_len47 = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0.lcssa, i64 0, i32 1
  %9 = load i64, i64* %iov_len47, align 8
  %cmp48 = icmp eq i64 %skip.0.lcssa, %9
  %spec.select.idx = zext i1 %cmp48 to i64
  %spec.select = getelementptr %struct.iovec, %struct.iovec* %iov.0.lcssa, i64 %spec.select.idx
  %spec.select130 = select i1 %cmp48, i64 0, i64 %skip.0.lcssa
  %sub53 = sub i64 %bytes.addr.0, %bytes.addr.1.lcssa
  %10 = load i64, i64* %count, align 8
  %sub55 = sub i64 %10, %sub53
  store i64 %sub55, i64* %count, align 8
  %11 = load %struct.iovec*, %struct.iovec** %iov15, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.iovec* %spec.select to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.iovec* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 4
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %12 = load i64, i64* %nr_segs, align 8
  %sub57 = sub i64 %12, %sub.ptr.div
  store i64 %sub57, i64* %nr_segs, align 8
  store %struct.iovec* %spec.select, %struct.iovec** %iov15, align 8
  store i64 %spec.select130, i64* %iov_offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end
  %retval.0 = phi i64 [ %sub53, %while.end ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @iov_iter_zero(i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %call = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @pipe_zero(i64 noundef %bytes, %struct.iov_iter* noundef %i) #18
  br label %return

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %0, %bytes
  br i1 %cmp, label %if.then11, label %if.end13, !prof !8

if.then11:                                        ; preds = %if.end
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  %bytes.addr.0 = phi i64 [ %0, %if.then11 ], [ %bytes, %if.end ]
  %tobool14.not = icmp eq i64 %bytes.addr.0, 0
  br i1 %tobool14.not, label %return, label %if.then22, !prof !8

if.then22:                                        ; preds = %if.end13
  %call23 = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call23, label %if.then31, label %if.else, !prof !9

if.then31:                                        ; preds = %if.then22
  %iov32 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %1 = load %struct.iovec*, %struct.iovec** %iov32, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %2 = load i64, i64* %iov_offset, align 8
  br label %do.body

do.body:                                          ; preds = %if.end54, %if.then31
  %skip.0 = phi i64 [ %2, %if.then31 ], [ 0, %if.end54 ]
  %count33.0 = phi i64 [ 0, %if.then31 ], [ %count33.1, %if.end54 ]
  %iov.0 = phi %struct.iovec* [ %1, %if.then31 ], [ %incdec.ptr, %if.end54 ]
  %bytes.addr.1 = phi i64 [ %bytes.addr.0, %if.then31 ], [ %bytes.addr.2, %if.end54 ]
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 1
  %3 = load i64, i64* %iov_len, align 8
  %sub = sub i64 %3, %skip.0
  %cmp34 = icmp ult i64 %bytes.addr.1, %sub
  %cond = select i1 %cmp34, i64 %bytes.addr.1, i64 %sub
  %tobool36.not = icmp eq i64 %cond, 0
  br i1 %tobool36.not, label %if.end54, label %if.then44, !prof !8

if.then44:                                        ; preds = %do.body
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 0
  %4 = load i8*, i8** %iov_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %skip.0
  %call45 = call fastcc i64 @__clear_user(i8* noundef %add.ptr, i64 noundef %cond) #18
  %sub46 = sub i64 %cond, %call45
  %add = add i64 %sub46, %count33.0
  %add47 = add i64 %sub46, %skip.0
  %sub48 = sub i64 %bytes.addr.1, %sub46
  %5 = load i64, i64* %iov_len, align 8
  %cmp50 = icmp ult i64 %add47, %5
  br i1 %cmp50, label %do.end, label %if.end54

if.end54:                                         ; preds = %if.then44, %do.body
  %count33.1 = phi i64 [ %add, %if.then44 ], [ %count33.0, %do.body ]
  %bytes.addr.2 = phi i64 [ %sub48, %if.then44 ], [ %bytes.addr.1, %do.body ]
  %incdec.ptr = getelementptr %struct.iovec, %struct.iovec* %iov.0, i64 1
  %tobool55.not = icmp eq i64 %bytes.addr.2, 0
  br i1 %tobool55.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.then44, %if.end54
  %skip.1 = phi i64 [ %add47, %if.then44 ], [ 0, %if.end54 ]
  %count33.2 = phi i64 [ %add, %if.then44 ], [ %count33.1, %if.end54 ]
  %iov.1 = phi %struct.iovec* [ %iov.0, %if.then44 ], [ %incdec.ptr, %if.end54 ]
  store i64 %skip.1, i64* %iov_offset, align 8
  %6 = load %struct.iovec*, %struct.iovec** %iov32, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.iovec* %iov.1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.iovec* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 4
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %7 = load i64, i64* %nr_segs, align 8
  %sub58 = sub i64 %7, %sub.ptr.div
  store i64 %sub58, i64* %nr_segs, align 8
  store %struct.iovec* %iov.1, %struct.iovec** %iov32, align 8
  br label %if.end315

if.else:                                          ; preds = %if.then22
  %call60 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call60, label %while.body.preheader, label %if.else130

while.body.preheader:                             ; preds = %if.else
  %8 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec62 = bitcast %union.anon* %8 to %struct.bio_vec**
  %9 = load %struct.bio_vec*, %struct.bio_vec** %bvec62, align 8
  %iov_offset67 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %10 = load i64, i64* %iov_offset67, align 8
  %conv68 = trunc i64 %10 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %bytes.addr.3529 = phi i64 [ %sub114, %while.body ], [ %bytes.addr.0, %while.body.preheader ]
  %bvec.0528 = phi %struct.bio_vec* [ %spec.select491, %while.body ], [ %9, %while.body.preheader ]
  %count65.0527 = phi i64 [ %add104, %while.body ], [ 0, %while.body.preheader ]
  %skip66.0526 = phi i32 [ %spec.select, %while.body ], [ %conv68, %while.body.preheader ]
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0528, i64 0, i32 2
  %11 = load i32, i32* %bv_offset, align 4
  %add70 = add i32 %11, %skip66.0526
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0528, i64 0, i32 0
  %12 = load %struct.page*, %struct.page** %bv_page, align 8
  %conv71 = zext i32 %add70 to i64
  %div = lshr i64 %conv71, 12
  %add.ptr72 = getelementptr %struct.page, %struct.page* %12, i64 %div
  %call73 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr72) #18
  %rem = and i64 %conv71, 4095
  %add.ptr75 = getelementptr i8, i8* %call73, i64 %rem
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0528, i64 0, i32 1
  %13 = load i32, i32* %bv_len, align 8
  %sub76 = sub i32 %13, %skip66.0526
  %conv77 = zext i32 %sub76 to i64
  %cmp79 = icmp ult i64 %bytes.addr.3529, %conv77
  %cond84 = select i1 %cmp79, i64 %bytes.addr.3529, i64 %conv77
  %sub87 = sub nuw nsw i64 4096, %rem
  %cmp89 = icmp ult i64 %cond84, %sub87
  %cond94 = select i1 %cmp89, i64 %cond84, i64 %sub87
  %call95 = call i8* @memset(i8* noundef %add.ptr75, i32 noundef 0, i64 noundef %cond94) #20
  %add104 = add i64 %cond94, %count65.0527
  %14 = trunc i64 %cond94 to i32
  %conv107 = add i32 %skip66.0526, %14
  %15 = load i32, i32* %bv_len, align 8
  %cmp109 = icmp eq i32 %conv107, %15
  %spec.select = select i1 %cmp109, i32 0, i32 %conv107
  %spec.select491.idx = zext i1 %cmp109 to i64
  %spec.select491 = getelementptr %struct.bio_vec, %struct.bio_vec* %bvec.0528, i64 %spec.select491.idx
  %sub114 = sub i64 %bytes.addr.3529, %cond94
  %tobool69.not = icmp eq i64 %sub114, 0
  br i1 %tobool69.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %.pre = load %struct.bio_vec*, %struct.bio_vec** %bvec62, align 8
  %phi.cast = zext i32 %spec.select to i64
  store i64 %phi.cast, i64* %iov_offset67, align 8
  %sub.ptr.lhs.cast123 = ptrtoint %struct.bio_vec* %spec.select491 to i64
  %sub.ptr.rhs.cast124 = ptrtoint %struct.bio_vec* %.pre to i64
  %sub.ptr.sub125 = sub i64 %sub.ptr.lhs.cast123, %sub.ptr.rhs.cast124
  %sub.ptr.div126 = ashr exact i64 %sub.ptr.sub125, 4
  %nr_segs127 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %16 = load i64, i64* %nr_segs127, align 8
  %sub128 = sub i64 %16, %sub.ptr.div126
  store i64 %sub128, i64* %nr_segs127, align 8
  store %struct.bio_vec* %spec.select491, %struct.bio_vec** %bvec62, align 8
  br label %if.end315

if.else130:                                       ; preds = %if.else
  %call131 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call131, label %if.then132, label %if.else184

if.then132:                                       ; preds = %if.else130
  %17 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %kvec133 = bitcast %union.anon* %17 to %struct.kvec**
  %18 = load %struct.kvec*, %struct.kvec** %kvec133, align 8
  %iov_offset138 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %19 = load i64, i64* %iov_offset138, align 8
  br label %do.body139

do.body139:                                       ; preds = %if.end170, %if.then132
  %kvec.0 = phi %struct.kvec* [ %18, %if.then132 ], [ %incdec.ptr171, %if.end170 ]
  %count136.0 = phi i64 [ 0, %if.then132 ], [ %count136.1, %if.end170 ]
  %skip137.0 = phi i64 [ %19, %if.then132 ], [ 0, %if.end170 ]
  %bytes.addr.4 = phi i64 [ %bytes.addr.0, %if.then132 ], [ %bytes.addr.5, %if.end170 ]
  %iov_len140 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 1
  %20 = load i64, i64* %iov_len140, align 8
  %sub141 = sub i64 %20, %skip137.0
  %cmp143 = icmp ult i64 %bytes.addr.4, %sub141
  %cond148 = select i1 %cmp143, i64 %bytes.addr.4, i64 %sub141
  %tobool149.not = icmp eq i64 %cond148, 0
  br i1 %tobool149.not, label %if.end170, label %if.then157, !prof !8

if.then157:                                       ; preds = %do.body139
  %iov_base158 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 0
  %21 = load i8*, i8** %iov_base158, align 8
  %add.ptr159 = getelementptr i8, i8* %21, i64 %skip137.0
  %call160 = call i8* @memset(i8* noundef %add.ptr159, i32 noundef 0, i64 noundef %cond148) #20
  %add162 = add i64 %cond148, %count136.0
  %add163 = add i64 %cond148, %skip137.0
  %sub164 = sub i64 %bytes.addr.4, %cond148
  %22 = load i64, i64* %iov_len140, align 8
  %cmp166 = icmp ult i64 %add163, %22
  br i1 %cmp166, label %do.end174, label %if.end170

if.end170:                                        ; preds = %if.then157, %do.body139
  %count136.1 = phi i64 [ %add162, %if.then157 ], [ %count136.0, %do.body139 ]
  %bytes.addr.5 = phi i64 [ %sub164, %if.then157 ], [ %bytes.addr.4, %do.body139 ]
  %incdec.ptr171 = getelementptr %struct.kvec, %struct.kvec* %kvec.0, i64 1
  %tobool173.not = icmp eq i64 %bytes.addr.5, 0
  br i1 %tobool173.not, label %do.end174, label %do.body139

do.end174:                                        ; preds = %if.then157, %if.end170
  %kvec.1 = phi %struct.kvec* [ %kvec.0, %if.then157 ], [ %incdec.ptr171, %if.end170 ]
  %count136.2 = phi i64 [ %add162, %if.then157 ], [ %count136.1, %if.end170 ]
  %skip137.1 = phi i64 [ %add163, %if.then157 ], [ 0, %if.end170 ]
  store i64 %skip137.1, i64* %iov_offset138, align 8
  %23 = load %struct.kvec*, %struct.kvec** %kvec133, align 8
  %sub.ptr.lhs.cast177 = ptrtoint %struct.kvec* %kvec.1 to i64
  %sub.ptr.rhs.cast178 = ptrtoint %struct.kvec* %23 to i64
  %sub.ptr.sub179 = sub i64 %sub.ptr.lhs.cast177, %sub.ptr.rhs.cast178
  %sub.ptr.div180 = ashr exact i64 %sub.ptr.sub179, 4
  %nr_segs181 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %24 = load i64, i64* %nr_segs181, align 8
  %sub182 = sub i64 %24, %sub.ptr.div180
  store i64 %sub182, i64* %nr_segs181, align 8
  store %struct.kvec* %kvec.1, %struct.kvec** %kvec133, align 8
  br label %if.end315

if.else184:                                       ; preds = %if.else130
  %call185 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call185, label %if.then186, label %if.end315

if.then186:                                       ; preds = %if.else184
  %xarray_start = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %25 = load i64, i64* %xarray_start, align 8
  %iov_offset190 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %26 = load i64, i64* %iov_offset190, align 8
  %add191 = add i64 %26, %25
  %div195 = lshr i64 %add191, 12
  %27 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %27) #19
  %28 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %29 = bitcast i8* %28 to i64*, !annotation !13
  store i64 0, i64* %29, align 8, !annotation !13
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %30 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %xarray = bitcast %union.anon* %30 to %struct.xarray**
  %31 = load %struct.xarray*, %struct.xarray** %xarray, align 8
  store %struct.xarray* %31, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %div195, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @__rcu_read_lock() #20
  %call196 = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef -1) #20
  %tobool197.not518 = icmp eq i8* %call196, null
  br i1 %tobool197.not518, label %__out, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then186
  %32 = trunc i64 %add191 to i32
  %conv194 = and i32 %32, 4095
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc307
  %bytes.addr.6522 = phi i64 [ %bytes.addr.8498, %for.inc307 ], [ %bytes.addr.0, %for.body.preheader ]
  %offset192.0521 = phi i32 [ %offset192.3497, %for.inc307 ], [ %conv194, %for.body.preheader ]
  %head.0.in520 = phi i8* [ %call308, %for.inc307 ], [ %call196, %for.body.preheader ]
  %count189.0519 = phi i64 [ %count189.2496, %for.inc307 ], [ 0, %for.body.preheader ]
  %head.0523 = bitcast i8* %head.0.in520 to %struct.page*
  %call199 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %head.0.in520) #18
  br i1 %call199, label %for.inc307, label %if.end201

if.end201:                                        ; preds = %for.body
  %call202 = call fastcc i1 @xa_is_value(i8* noundef nonnull %head.0.in520) #18
  br i1 %call202, label %cleanup304.thread499, label %if.end227, !prof !8

cleanup304.thread499:                             ; preds = %if.end201
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 903; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !25
  br label %__out

if.end227:                                        ; preds = %if.end201
  %index256 = getelementptr inbounds i8, i8* %head.0.in520, i64 32
  %33 = bitcast i8* %index256 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @llvm.usub.sat.i64(i64 %div195, i64 %34)
  %conv265 = trunc i64 %35 to i32
  %cmp268510 = icmp slt i32 %conv265, 1
  br i1 %cmp268510, label %for.body270.preheader, label %for.inc307

for.body270.preheader:                            ; preds = %if.end227
  %sext = shl i64 %35, 32
  %36 = ashr exact i64 %sext, 32
  br label %for.body270

for.cond266:                                      ; preds = %for.body270
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, 1
  br i1 %exitcond.not, label %for.inc307, label %for.body270

for.body270:                                      ; preds = %for.body270.preheader, %for.cond266
  %indvars.iv = phi i64 [ %36, %for.body270.preheader ], [ %indvars.iv.next, %for.cond266 ]
  %bytes.addr.7514 = phi i64 [ %bytes.addr.6522, %for.body270.preheader ], [ %sub295, %for.cond266 ]
  %offset192.1512 = phi i32 [ %offset192.0521, %for.body270.preheader ], [ 0, %for.cond266 ]
  %count189.1511 = phi i64 [ %count189.0519, %for.body270.preheader ], [ %add294, %for.cond266 ]
  %add.ptr272 = getelementptr %struct.page, %struct.page* %head.0523, i64 %indvars.iv
  %call273 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr272) #18
  %idx.ext274 = zext i32 %offset192.1512 to i64
  %add.ptr275 = getelementptr i8, i8* %call273, i64 %idx.ext274
  %sub277 = sub nsw i64 4096, %idx.ext274
  %cmp279 = icmp ult i64 %bytes.addr.7514, %sub277
  %cond284 = select i1 %cmp279, i64 %bytes.addr.7514, i64 %sub277
  %call285 = call i8* @memset(i8* noundef %add.ptr275, i32 noundef 0, i64 noundef %cond284) #20
  %add294 = add i64 %cond284, %count189.1511
  %sub295 = sub i64 %bytes.addr.7514, %cond284
  %cmp297 = icmp eq i64 %sub295, 0
  br i1 %cmp297, label %__out, label %for.cond266

for.inc307:                                       ; preds = %for.cond266, %if.end227, %for.body
  %bytes.addr.8498 = phi i64 [ %bytes.addr.6522, %for.body ], [ %bytes.addr.6522, %if.end227 ], [ %sub295, %for.cond266 ]
  %offset192.3497 = phi i32 [ %offset192.0521, %for.body ], [ %offset192.0521, %if.end227 ], [ 0, %for.cond266 ]
  %count189.2496 = phi i64 [ %count189.0519, %for.body ], [ %count189.0519, %if.end227 ], [ %add294, %for.cond266 ]
  %call308 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef nonnull %xas) #18
  %tobool197.not = icmp eq i8* %call308, null
  br i1 %tobool197.not, label %__out, label %for.body

__out:                                            ; preds = %for.inc307, %for.body270, %if.then186, %cleanup304.thread499
  %count189.3 = phi i64 [ %count189.0519, %cleanup304.thread499 ], [ 0, %if.then186 ], [ %add294, %for.body270 ], [ %count189.2496, %for.inc307 ]
  call fastcc void @rcu_read_unlock() #18
  %37 = load i64, i64* %iov_offset190, align 8
  %add311 = add i64 %37, %count189.3
  store i64 %add311, i64* %iov_offset190, align 8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %27) #19
  br label %if.end315

if.end315:                                        ; preds = %while.end, %if.else184, %__out, %do.end174, %do.end
  %bytes.addr.9 = phi i64 [ %count33.2, %do.end ], [ %add104, %while.end ], [ %count136.2, %do.end174 ], [ %count189.3, %__out ], [ %bytes.addr.0, %if.else184 ]
  %38 = load i64, i64* %count, align 8
  %sub317 = sub i64 %38, %bytes.addr.9
  store i64 %sub317, i64* %count, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.end315, %if.then
  %retval.0 = phi i64 [ %call2, %if.then ], [ %bytes.addr.9, %if.end315 ], [ 0, %if.end13 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @pipe_zero(i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i) unnamed_addr #0 {
entry:
  %i_head = alloca i32, align 4
  %off = alloca i64, align 8
  %0 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe1 = bitcast %union.anon* %0 to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe1, align 8
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 6
  %2 = load i32, i32* %ring_size, align 4
  %sub = add i32 %2, -1
  %3 = bitcast i32* %i_head to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #19
  store i32 0, i32* %i_head, align 4, !annotation !13
  %4 = bitcast i64* %off to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #19
  store i64 0, i64* %off, align 8, !annotation !13
  %call = call fastcc i1 @sanity(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i64 @push_pipe(%struct.iov_iter* noundef %i, i64 noundef %bytes, i32* noundef nonnull %i_head, i64* noundef nonnull %off) #18
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %cleanup, label %do.body.preheader, !prof !8

do.body.preheader:                                ; preds = %if.end
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  %off.promoted = load i64, i64* %off, align 8
  %i_head.promoted = load i32, i32* %i_head, align 4
  %5 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5
  %head = bitcast %union.anon.62* %5 to i32*
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %sub8.peel = sub i64 4096, %off.promoted
  %cmp.peel = icmp ult i64 %call2, %sub8.peel
  %cond.peel = select i1 %cmp.peel, i64 %call2, i64 %sub8.peel
  %6 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and.peel = and i32 %i_head.promoted, %sub
  %idxprom.peel = zext i32 %and.peel to i64
  %page.peel = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %6, i64 %idxprom.peel, i32 0
  %7 = load %struct.page*, %struct.page** %page.peel, align 8
  %call10.peel = call fastcc i8* @kmap_local_page(%struct.page* noundef %7) #18
  %add.ptr.peel = getelementptr i8, i8* %call10.peel, i64 %off.promoted
  %call11.peel = call i8* @memset(i8* noundef %add.ptr.peel, i32 noundef 0, i64 noundef %cond.peel) #20
  store i32 %i_head.promoted, i32* %head, align 8
  %add.peel = add i64 %cond.peel, %off.promoted
  store i64 %add.peel, i64* %iov_offset, align 8
  %sub16.peel = sub i64 %call2, %cond.peel
  %tobool18.not.peel = icmp eq i64 %sub16.peel, 0
  br i1 %tobool18.not.peel, label %do.end19, label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.body
  %inc48.in = phi i32 [ %inc48, %do.body ], [ %i_head.promoted, %do.body.preheader ]
  %n.0 = phi i64 [ %sub16, %do.body ], [ %sub16.peel, %do.body.preheader ]
  %inc48 = add i32 %inc48.in, 1
  %cmp = icmp ult i64 %n.0, 4096
  %cond = select i1 %cmp, i64 %n.0, i64 4096
  %8 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %inc48, %sub
  %idxprom = zext i32 %and to i64
  %page = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom, i32 0
  %9 = load %struct.page*, %struct.page** %page, align 8
  %call10 = call fastcc i8* @kmap_local_page(%struct.page* noundef %9) #18
  %call11 = call i8* @memset(i8* noundef %call10, i32 noundef 0, i64 noundef %cond) #20
  store i32 %inc48, i32* %head, align 8
  store i64 %cond, i64* %iov_offset, align 8
  %sub16 = sub i64 %n.0, %cond
  %tobool18.not = icmp eq i64 %sub16, 0
  br i1 %tobool18.not, label %do.end19, label %do.body, !llvm.loop !26

do.end19:                                         ; preds = %do.body, %do.body.preheader
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %10 = load i64, i64* %count, align 8
  %sub20 = sub i64 %10, %call2
  store i64 %sub20, i64* %count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %do.end19
  %retval.0 = phi i64 [ %call2, %do.end19 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #19
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__clear_user(i8* noundef %to, i64 noundef %n) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #18
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #18
  %call3 = call i64 @__arch_clear_user(i8* noundef %call2, i64 noundef %n) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %n.addr.0 = phi i64 [ %call3, %if.then ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @copy_page_from_iter_atomic(%struct.page* noundef %page, i32 noundef %offset, i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %page) #18
  %idx.ext = zext i32 %offset to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %call1 = call fastcc i1 @page_copy_sane(%struct.page* noundef %page, i64 noundef %idx.ext, i64 noundef %bytes) #18
  br i1 %call1, label %if.end, label %do.end, !prof !9

do.end:                                           ; preds = %entry
  call fastcc void @__kunmap_atomic() #18
  br label %cleanup379

if.end:                                           ; preds = %entry
  %call8 = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call8, label %do.end23, label %lor.rhs, !prof !8

lor.rhs:                                          ; preds = %if.end
  %call10 = call fastcc i1 @iov_iter_is_discard(%struct.iov_iter* noundef %i) #18
  br i1 %call10, label %do.end23, label %if.end43, !prof !8

do.end23:                                         ; preds = %if.end, %lor.rhs
  call fastcc void @__kunmap_atomic() #18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 919; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !27
  br label %cleanup379

if.end43:                                         ; preds = %lor.rhs
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %0, %bytes
  br i1 %cmp, label %if.then52, label %if.end54, !prof !8

if.then52:                                        ; preds = %if.end43
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end43
  %bytes.addr.0 = phi i64 [ %0, %if.then52 ], [ %bytes, %if.end43 ]
  %tobool55.not = icmp eq i64 %bytes.addr.0, 0
  br i1 %tobool55.not, label %do.end376, label %if.then63, !prof !8

if.then63:                                        ; preds = %if.end54
  %call64 = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call64, label %if.then72, label %if.else, !prof !9

if.then72:                                        ; preds = %if.then63
  %iov73 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %1 = load %struct.iovec*, %struct.iovec** %iov73, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %2 = load i64, i64* %iov_offset, align 8
  br label %do.body74

do.body74:                                        ; preds = %if.end99, %if.then72
  %skip.0 = phi i64 [ %2, %if.then72 ], [ 0, %if.end99 ]
  %off.0 = phi i64 [ 0, %if.then72 ], [ %off.1, %if.end99 ]
  %iov.0 = phi %struct.iovec* [ %1, %if.then72 ], [ %incdec.ptr, %if.end99 ]
  %bytes.addr.1 = phi i64 [ %bytes.addr.0, %if.then72 ], [ %bytes.addr.2, %if.end99 ]
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 1
  %3 = load i64, i64* %iov_len, align 8
  %sub = sub i64 %3, %skip.0
  %cmp76 = icmp ult i64 %bytes.addr.1, %sub
  %cond = select i1 %cmp76, i64 %bytes.addr.1, i64 %sub
  %tobool78.not = icmp eq i64 %cond, 0
  br i1 %tobool78.not, label %if.end99, label %if.then86, !prof !8

if.then86:                                        ; preds = %do.body74
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 0
  %4 = load i8*, i8** %iov_base, align 8
  %add.ptr87 = getelementptr i8, i8* %4, i64 %skip.0
  %add.ptr88 = getelementptr i8, i8* %add.ptr, i64 %off.0
  %call89 = call fastcc i32 @copyin(i8* noundef %add.ptr88, i8* noundef %add.ptr87, i64 noundef %cond) #18
  %conv90 = sext i32 %call89 to i64
  %sub91 = sub i64 %cond, %conv90
  %add = add i64 %sub91, %off.0
  %add92 = add i64 %sub91, %skip.0
  %sub93 = sub i64 %bytes.addr.1, %sub91
  %5 = load i64, i64* %iov_len, align 8
  %cmp95 = icmp ult i64 %add92, %5
  br i1 %cmp95, label %do.end102, label %if.end99

if.end99:                                         ; preds = %if.then86, %do.body74
  %off.1 = phi i64 [ %add, %if.then86 ], [ %off.0, %do.body74 ]
  %bytes.addr.2 = phi i64 [ %sub93, %if.then86 ], [ %bytes.addr.1, %do.body74 ]
  %incdec.ptr = getelementptr %struct.iovec, %struct.iovec* %iov.0, i64 1
  %tobool101.not = icmp eq i64 %bytes.addr.2, 0
  br i1 %tobool101.not, label %do.end102, label %do.body74

do.end102:                                        ; preds = %if.then86, %if.end99
  %skip.1 = phi i64 [ %add92, %if.then86 ], [ 0, %if.end99 ]
  %off.2 = phi i64 [ %add, %if.then86 ], [ %off.1, %if.end99 ]
  %iov.1 = phi %struct.iovec* [ %iov.0, %if.then86 ], [ %incdec.ptr, %if.end99 ]
  store i64 %skip.1, i64* %iov_offset, align 8
  %6 = load %struct.iovec*, %struct.iovec** %iov73, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.iovec* %iov.1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.iovec* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 4
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %7 = load i64, i64* %nr_segs, align 8
  %sub105 = sub i64 %7, %sub.ptr.div
  store i64 %sub105, i64* %nr_segs, align 8
  store %struct.iovec* %iov.1, %struct.iovec** %iov73, align 8
  br label %if.end369

if.else:                                          ; preds = %if.then63
  %call107 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call107, label %while.body.preheader, label %if.else180

while.body.preheader:                             ; preds = %if.else
  %8 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec109 = bitcast %union.anon* %8 to %struct.bio_vec**
  %9 = load %struct.bio_vec*, %struct.bio_vec** %bvec109, align 8
  %iov_offset114 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %10 = load i64, i64* %iov_offset114, align 8
  %conv115 = trunc i64 %10 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %bytes.addr.3607 = phi i64 [ %sub164, %while.body ], [ %bytes.addr.0, %while.body.preheader ]
  %bvec.0606 = phi %struct.bio_vec* [ %spec.select569, %while.body ], [ %9, %while.body.preheader ]
  %off112.0605 = phi i64 [ %add154, %while.body ], [ 0, %while.body.preheader ]
  %skip113.0604 = phi i32 [ %spec.select, %while.body ], [ %conv115, %while.body.preheader ]
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0606, i64 0, i32 2
  %11 = load i32, i32* %bv_offset, align 4
  %add118 = add i32 %11, %skip113.0604
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0606, i64 0, i32 0
  %12 = load %struct.page*, %struct.page** %bv_page, align 8
  %conv120 = zext i32 %add118 to i64
  %div = lshr i64 %conv120, 12
  %add.ptr121 = getelementptr %struct.page, %struct.page* %12, i64 %div
  %call122 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr121) #18
  %rem = and i64 %conv120, 4095
  %add.ptr124 = getelementptr i8, i8* %call122, i64 %rem
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0606, i64 0, i32 1
  %13 = load i32, i32* %bv_len, align 8
  %sub125 = sub i32 %13, %skip113.0604
  %conv126 = zext i32 %sub125 to i64
  %cmp128 = icmp ult i64 %bytes.addr.3607, %conv126
  %cond133 = select i1 %cmp128, i64 %bytes.addr.3607, i64 %conv126
  %sub136 = sub nuw nsw i64 4096, %rem
  %cmp138 = icmp ult i64 %cond133, %sub136
  %cond143 = select i1 %cmp138, i64 %cond133, i64 %sub136
  %add.ptr144 = getelementptr i8, i8* %add.ptr, i64 %off112.0605
  %call145 = call i8* @memcpy(i8* noundef %add.ptr144, i8* noundef %add.ptr124, i64 noundef %cond143) #20
  %add154 = add i64 %cond143, %off112.0605
  %14 = trunc i64 %cond143 to i32
  %conv157 = add i32 %skip113.0604, %14
  %15 = load i32, i32* %bv_len, align 8
  %cmp159 = icmp eq i32 %conv157, %15
  %spec.select = select i1 %cmp159, i32 0, i32 %conv157
  %spec.select569.idx = zext i1 %cmp159 to i64
  %spec.select569 = getelementptr %struct.bio_vec, %struct.bio_vec* %bvec.0606, i64 %spec.select569.idx
  %sub164 = sub i64 %bytes.addr.3607, %cond143
  %tobool116.not = icmp eq i64 %sub164, 0
  br i1 %tobool116.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %.pre = load %struct.bio_vec*, %struct.bio_vec** %bvec109, align 8
  %phi.cast = zext i32 %spec.select to i64
  store i64 %phi.cast, i64* %iov_offset114, align 8
  %sub.ptr.lhs.cast173 = ptrtoint %struct.bio_vec* %spec.select569 to i64
  %sub.ptr.rhs.cast174 = ptrtoint %struct.bio_vec* %.pre to i64
  %sub.ptr.sub175 = sub i64 %sub.ptr.lhs.cast173, %sub.ptr.rhs.cast174
  %sub.ptr.div176 = ashr exact i64 %sub.ptr.sub175, 4
  %nr_segs177 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %16 = load i64, i64* %nr_segs177, align 8
  %sub178 = sub i64 %16, %sub.ptr.div176
  store i64 %sub178, i64* %nr_segs177, align 8
  store %struct.bio_vec* %spec.select569, %struct.bio_vec** %bvec109, align 8
  br label %if.end369

if.else180:                                       ; preds = %if.else
  %call181 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call181, label %if.then182, label %if.else235

if.then182:                                       ; preds = %if.else180
  %17 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %kvec183 = bitcast %union.anon* %17 to %struct.kvec**
  %18 = load %struct.kvec*, %struct.kvec** %kvec183, align 8
  %iov_offset188 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %19 = load i64, i64* %iov_offset188, align 8
  br label %do.body189

do.body189:                                       ; preds = %if.end221, %if.then182
  %kvec.0 = phi %struct.kvec* [ %18, %if.then182 ], [ %incdec.ptr222, %if.end221 ]
  %off186.0 = phi i64 [ 0, %if.then182 ], [ %off186.1, %if.end221 ]
  %skip187.0 = phi i64 [ %19, %if.then182 ], [ 0, %if.end221 ]
  %bytes.addr.4 = phi i64 [ %bytes.addr.0, %if.then182 ], [ %bytes.addr.5, %if.end221 ]
  %iov_len190 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 1
  %20 = load i64, i64* %iov_len190, align 8
  %sub191 = sub i64 %20, %skip187.0
  %cmp193 = icmp ult i64 %bytes.addr.4, %sub191
  %cond198 = select i1 %cmp193, i64 %bytes.addr.4, i64 %sub191
  %tobool199.not = icmp eq i64 %cond198, 0
  br i1 %tobool199.not, label %if.end221, label %if.then207, !prof !8

if.then207:                                       ; preds = %do.body189
  %iov_base208 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 0
  %21 = load i8*, i8** %iov_base208, align 8
  %add.ptr209 = getelementptr i8, i8* %21, i64 %skip187.0
  %add.ptr210 = getelementptr i8, i8* %add.ptr, i64 %off186.0
  %call211 = call i8* @memcpy(i8* noundef %add.ptr210, i8* noundef %add.ptr209, i64 noundef %cond198) #20
  %add213 = add i64 %cond198, %off186.0
  %add214 = add i64 %cond198, %skip187.0
  %sub215 = sub i64 %bytes.addr.4, %cond198
  %22 = load i64, i64* %iov_len190, align 8
  %cmp217 = icmp ult i64 %add214, %22
  br i1 %cmp217, label %do.end225, label %if.end221

if.end221:                                        ; preds = %if.then207, %do.body189
  %off186.1 = phi i64 [ %add213, %if.then207 ], [ %off186.0, %do.body189 ]
  %bytes.addr.5 = phi i64 [ %sub215, %if.then207 ], [ %bytes.addr.4, %do.body189 ]
  %incdec.ptr222 = getelementptr %struct.kvec, %struct.kvec* %kvec.0, i64 1
  %tobool224.not = icmp eq i64 %bytes.addr.5, 0
  br i1 %tobool224.not, label %do.end225, label %do.body189

do.end225:                                        ; preds = %if.then207, %if.end221
  %kvec.1 = phi %struct.kvec* [ %kvec.0, %if.then207 ], [ %incdec.ptr222, %if.end221 ]
  %off186.2 = phi i64 [ %add213, %if.then207 ], [ %off186.1, %if.end221 ]
  %skip187.1 = phi i64 [ %add214, %if.then207 ], [ 0, %if.end221 ]
  store i64 %skip187.1, i64* %iov_offset188, align 8
  %23 = load %struct.kvec*, %struct.kvec** %kvec183, align 8
  %sub.ptr.lhs.cast228 = ptrtoint %struct.kvec* %kvec.1 to i64
  %sub.ptr.rhs.cast229 = ptrtoint %struct.kvec* %23 to i64
  %sub.ptr.sub230 = sub i64 %sub.ptr.lhs.cast228, %sub.ptr.rhs.cast229
  %sub.ptr.div231 = ashr exact i64 %sub.ptr.sub230, 4
  %nr_segs232 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %24 = load i64, i64* %nr_segs232, align 8
  %sub233 = sub i64 %24, %sub.ptr.div231
  store i64 %sub233, i64* %nr_segs232, align 8
  store %struct.kvec* %kvec.1, %struct.kvec** %kvec183, align 8
  br label %if.end369

if.else235:                                       ; preds = %if.else180
  %call236 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call236, label %if.then237, label %if.end369

if.then237:                                       ; preds = %if.else235
  %xarray_start = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %25 = load i64, i64* %xarray_start, align 8
  %iov_offset241 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %26 = load i64, i64* %iov_offset241, align 8
  %add242 = add i64 %26, %25
  %div246 = lshr i64 %add242, 12
  %27 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %27) #19
  %28 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %29 = bitcast i8* %28 to i64*, !annotation !13
  store i64 0, i64* %29, align 8, !annotation !13
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %30 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %xarray = bitcast %union.anon* %30 to %struct.xarray**
  %31 = load %struct.xarray*, %struct.xarray** %xarray, align 8
  store %struct.xarray* %31, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %div246, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @__rcu_read_lock() #20
  %call247 = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef -1) #20
  %tobool248.not596 = icmp eq i8* %call247, null
  br i1 %tobool248.not596, label %__out, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then237
  %32 = trunc i64 %add242 to i32
  %conv245 = and i32 %32, 4095
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc361
  %bytes.addr.6600 = phi i64 [ %bytes.addr.8576, %for.inc361 ], [ %bytes.addr.0, %for.body.preheader ]
  %offset243.0599 = phi i32 [ %offset243.3575, %for.inc361 ], [ %conv245, %for.body.preheader ]
  %head.0.in598 = phi i8* [ %call362, %for.inc361 ], [ %call247, %for.body.preheader ]
  %off240.0597 = phi i64 [ %off240.2574, %for.inc361 ], [ 0, %for.body.preheader ]
  %head.0601 = bitcast i8* %head.0.in598 to %struct.page*
  %call250 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %head.0.in598) #18
  br i1 %call250, label %for.inc361, label %if.end252

if.end252:                                        ; preds = %for.body
  %call254 = call fastcc i1 @xa_is_value(i8* noundef nonnull %head.0.in598) #18
  br i1 %call254, label %cleanup358.thread577, label %if.end279, !prof !8

cleanup358.thread577:                             ; preds = %if.end252
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 925; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !28
  br label %__out

if.end279:                                        ; preds = %if.end252
  %index308 = getelementptr inbounds i8, i8* %head.0.in598, i64 32
  %33 = bitcast i8* %index308 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @llvm.usub.sat.i64(i64 %div246, i64 %34)
  %conv317 = trunc i64 %35 to i32
  %cmp320588 = icmp slt i32 %conv317, 1
  br i1 %cmp320588, label %for.body322.preheader, label %for.inc361

for.body322.preheader:                            ; preds = %if.end279
  %sext = shl i64 %35, 32
  %36 = ashr exact i64 %sext, 32
  br label %for.body322

for.cond318:                                      ; preds = %for.body322
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, 1
  br i1 %exitcond.not, label %for.inc361, label %for.body322

for.body322:                                      ; preds = %for.body322.preheader, %for.cond318
  %indvars.iv = phi i64 [ %36, %for.body322.preheader ], [ %indvars.iv.next, %for.cond318 ]
  %bytes.addr.7592 = phi i64 [ %bytes.addr.6600, %for.body322.preheader ], [ %sub349, %for.cond318 ]
  %offset243.1590 = phi i32 [ %offset243.0599, %for.body322.preheader ], [ 0, %for.cond318 ]
  %off240.1589 = phi i64 [ %off240.0597, %for.body322.preheader ], [ %add348, %for.cond318 ]
  %add.ptr325 = getelementptr %struct.page, %struct.page* %head.0601, i64 %indvars.iv
  %call326 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr325) #18
  %idx.ext327 = zext i32 %offset243.1590 to i64
  %add.ptr328 = getelementptr i8, i8* %call326, i64 %idx.ext327
  %sub330 = sub nsw i64 4096, %idx.ext327
  %cmp332 = icmp ult i64 %bytes.addr.7592, %sub330
  %cond337 = select i1 %cmp332, i64 %bytes.addr.7592, i64 %sub330
  %add.ptr338 = getelementptr i8, i8* %add.ptr, i64 %off240.1589
  %call339 = call i8* @memcpy(i8* noundef %add.ptr338, i8* noundef %add.ptr328, i64 noundef %cond337) #20
  %add348 = add i64 %cond337, %off240.1589
  %sub349 = sub i64 %bytes.addr.7592, %cond337
  %cmp351 = icmp eq i64 %sub349, 0
  br i1 %cmp351, label %__out, label %for.cond318

for.inc361:                                       ; preds = %for.cond318, %if.end279, %for.body
  %bytes.addr.8576 = phi i64 [ %bytes.addr.6600, %for.body ], [ %bytes.addr.6600, %if.end279 ], [ %sub349, %for.cond318 ]
  %offset243.3575 = phi i32 [ %offset243.0599, %for.body ], [ %offset243.0599, %if.end279 ], [ 0, %for.cond318 ]
  %off240.2574 = phi i64 [ %off240.0597, %for.body ], [ %off240.0597, %if.end279 ], [ %add348, %for.cond318 ]
  %call362 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef nonnull %xas) #18
  %tobool248.not = icmp eq i8* %call362, null
  br i1 %tobool248.not, label %__out, label %for.body

__out:                                            ; preds = %for.inc361, %for.body322, %if.then237, %cleanup358.thread577
  %off240.3 = phi i64 [ %off240.0597, %cleanup358.thread577 ], [ 0, %if.then237 ], [ %add348, %for.body322 ], [ %off240.2574, %for.inc361 ]
  call fastcc void @rcu_read_unlock() #18
  %37 = load i64, i64* %iov_offset241, align 8
  %add365 = add i64 %37, %off240.3
  store i64 %add365, i64* %iov_offset241, align 8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %27) #19
  br label %if.end369

if.end369:                                        ; preds = %while.end, %if.else235, %__out, %do.end225, %do.end102
  %bytes.addr.9 = phi i64 [ %off.2, %do.end102 ], [ %add154, %while.end ], [ %off186.2, %do.end225 ], [ %off240.3, %__out ], [ %bytes.addr.0, %if.else235 ]
  %38 = load i64, i64* %count, align 8
  %sub371 = sub i64 %38, %bytes.addr.9
  store i64 %sub371, i64* %count, align 8
  br label %do.end376

do.end376:                                        ; preds = %if.end369, %if.end54
  %bytes.addr.10 = phi i64 [ %bytes.addr.9, %if.end369 ], [ 0, %if.end54 ]
  call fastcc void @__kunmap_atomic() #18
  br label %cleanup379

cleanup379:                                       ; preds = %do.end376, %do.end23, %do.end
  %retval.0 = phi i64 [ 0, %do.end ], [ 0, %do.end23 ], [ %bytes.addr.10, %do.end376 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !29
  call fastcc void @pagefault_disable() #18
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #0 {
entry:
  call fastcc void @pagefault_enable() #18
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @iov_iter_is_discard(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @iov_iter_type(%struct.iov_iter* noundef %i) #18
  %cmp = icmp eq i32 %call, 5
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @iov_iter_advance(%struct.iov_iter* nocapture noundef %i, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %0, %size
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %size.addr.0 = phi i64 [ %0, %if.then ], [ %size, %entry ]
  %call = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then13, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %call4 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call4, label %if.then13, label %if.else, !prof !9

if.then13:                                        ; preds = %if.end, %lor.rhs
  call fastcc void @iov_iter_iovec_advance(%struct.iov_iter* noundef %i, i64 noundef %size.addr.0) #18
  br label %if.end39

if.else:                                          ; preds = %lor.rhs
  %call14 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  call fastcc void @iov_iter_bvec_advance(%struct.iov_iter* noundef %i, i64 noundef %size.addr.0) #18
  br label %if.end39

if.else16:                                        ; preds = %if.else
  %call17 = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else16
  call fastcc void @pipe_advance(%struct.iov_iter* noundef %i, i64 noundef %size.addr.0) #18
  br label %if.end39

if.else19:                                        ; preds = %if.else16
  %call20 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call20, label %if.then28, label %if.else30, !prof !8

if.then28:                                        ; preds = %if.else19
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %1 = load i64, i64* %iov_offset, align 8
  %add = add i64 %1, %size.addr.0
  store i64 %add, i64* %iov_offset, align 8
  %sub = sub i64 %0, %size.addr.0
  store i64 %sub, i64* %count, align 8
  br label %if.end39

if.else30:                                        ; preds = %if.else19
  %call31 = call fastcc i1 @iov_iter_is_discard(%struct.iov_iter* noundef %i) #18
  br i1 %call31, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.else30
  %sub34 = sub i64 %0, %size.addr.0
  store i64 %sub34, i64* %count, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then15, %if.then28, %if.then32, %if.else30, %if.then18, %if.then13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @iov_iter_iovec_advance(%struct.iov_iter* nocapture noundef %i, i64 noundef %size) unnamed_addr #8 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %0, %size
  store i64 %sub, i64* %count, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %1 = load i64, i64* %iov_offset, align 8
  %add = add i64 %1, %size
  %iov2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %2 = load %struct.iovec*, %struct.iovec** %iov2, align 8
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %3 = load i64, i64* %nr_segs, align 8
  %add.ptr = getelementptr %struct.iovec, %struct.iovec* %2, i64 %3
  %cmp37 = icmp ult %struct.iovec* %2, %add.ptr
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %if.end7
  %iov.039 = phi %struct.iovec* [ %incdec.ptr, %if.end7 ], [ %2, %if.end ]
  %size.addr.038 = phi i64 [ %sub9, %if.end7 ], [ %add, %if.end ]
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.039, i64 0, i32 1
  %4 = load i64, i64* %iov_len, align 8
  %cmp3 = icmp ult i64 %size.addr.038, %4
  br i1 %cmp3, label %for.end, label %if.end7, !prof !9

if.end7:                                          ; preds = %for.body
  %sub9 = sub i64 %size.addr.038, %4
  %incdec.ptr = getelementptr %struct.iovec, %struct.iovec* %iov.039, i64 1
  %cmp = icmp ult %struct.iovec* %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end7, %for.body, %if.end
  %size.addr.0.lcssa = phi i64 [ %add, %if.end ], [ %size.addr.038, %for.body ], [ %sub9, %if.end7 ]
  %iov.0.lcssa = phi %struct.iovec* [ %2, %if.end ], [ %iov.039, %for.body ], [ %incdec.ptr, %if.end7 ]
  store i64 %size.addr.0.lcssa, i64* %iov_offset, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.iovec* %iov.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.iovec* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 4
  %sub13 = sub i64 %3, %sub.ptr.div
  store i64 %sub13, i64* %nr_segs, align 8
  store %struct.iovec* %iov.0.lcssa, %struct.iovec** %iov2, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @iov_iter_bvec_advance(%struct.iov_iter* nocapture noundef %i, i64 noundef %size) unnamed_addr #0 {
entry:
  %bi = alloca %struct.bvec_iter, align 8
  %0 = bitcast %struct.bvec_iter* %bi to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !13
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %1 = load i64, i64* %count, align 8
  %conv = trunc i64 %1 to i32
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %bi, i64 0, i32 1
  store i32 %conv, i32* %bi_size, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %2 = load i64, i64* %iov_offset, align 8
  %conv1 = trunc i64 %2 to i32
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %bi, i64 0, i32 3
  store i32 %conv1, i32* %bi_bvec_done, align 8
  %bi_idx = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %bi, i64 0, i32 2
  %3 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec = bitcast %union.anon* %3 to %struct.bio_vec**
  %4 = load %struct.bio_vec*, %struct.bio_vec** %bvec, align 8
  %conv2 = trunc i64 %size to i32
  call fastcc void @bvec_iter_advance(%struct.bio_vec* noundef %4, %struct.bvec_iter* noundef nonnull %bi, i32 noundef %conv2) #18
  %5 = load i32, i32* %bi_idx, align 4
  %6 = load %struct.bio_vec*, %struct.bio_vec** %bvec, align 8
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idx.ext
  store %struct.bio_vec* %add.ptr, %struct.bio_vec** %bvec, align 8
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %7 = load i64, i64* %nr_segs, align 8
  %sub = sub i64 %7, %idx.ext
  store i64 %sub, i64* %nr_segs, align 8
  %8 = load i32, i32* %bi_size, align 8
  %conv8 = zext i32 %8 to i64
  store i64 %conv8, i64* %count, align 8
  %9 = load i32, i32* %bi_bvec_done, align 8
  %conv11 = zext i32 %9 to i64
  store i64 %conv11, i64* %iov_offset, align 8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pipe_advance(%struct.iov_iter* nocapture noundef %i, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe1 = bitcast %union.anon* %0 to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe1, align 8
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %if.end21, label %if.then

if.then:                                          ; preds = %entry
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 6
  %2 = load i32, i32* %ring_size, align 4
  %sub = add i32 %2, -1
  %3 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5
  %head = bitcast %union.anon.62* %3 to i32*
  %4 = load i32, i32* %head, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %5 = load i64, i64* %iov_offset, align 8
  %tobool2.not = icmp eq i64 %5, 0
  %bufs5.phi.trans.insert = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  %.pre = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs5.phi.trans.insert, align 8
  %.pre61 = and i32 %4, %sub
  %.pre62 = zext i32 %.pre61 to i64
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %offset = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %.pre, i64 %.pre62, i32 1
  %6 = load i32, i32* %offset, align 8
  %conv = zext i32 %6 to i64
  %sub4 = add i64 %5, %size
  %add = sub i64 %sub4, %conv
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then3
  %left.0 = phi i64 [ %add, %if.then3 ], [ %size, %if.then ]
  %len51 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %.pre, i64 %.pre62, i32 2
  %7 = load i32, i32* %len51, align 4
  %conv952 = zext i32 %7 to i64
  %cmp.not53 = icmp ugt i64 %left.0, %conv952
  br i1 %cmp.not53, label %if.end12, label %while.end

if.end12:                                         ; preds = %if.end, %if.end12
  %conv956 = phi i64 [ %conv9, %if.end12 ], [ %conv952, %if.end ]
  %left.155 = phi i64 [ %sub15, %if.end12 ], [ %left.0, %if.end ]
  %i_head.054 = phi i32 [ %inc, %if.end12 ], [ %4, %if.end ]
  %sub15 = sub i64 %left.155, %conv956
  %inc = add i32 %i_head.054, 1
  %and6 = and i32 %inc, %sub
  %idxprom7 = zext i32 %and6 to i64
  %len = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %.pre, i64 %idxprom7, i32 2
  %8 = load i32, i32* %len, align 4
  %conv9 = zext i32 %8 to i64
  %cmp.not = icmp ugt i64 %sub15, %conv9
  br i1 %cmp.not, label %if.end12, label %while.end.loopexit

while.end.loopexit:                               ; preds = %if.end12
  %idxprom7.le = zext i32 %and6 to i64
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end
  %idxprom7.le.pre-phi = phi i64 [ %.pre62, %if.end ], [ %idxprom7.le, %while.end.loopexit ]
  %i_head.0.lcssa = phi i32 [ %4, %if.end ], [ %inc, %while.end.loopexit ]
  %left.1.lcssa = phi i64 [ %left.0, %if.end ], [ %sub15, %while.end.loopexit ]
  store i32 %i_head.0.lcssa, i32* %head, align 8
  %offset17 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %.pre, i64 %idxprom7.le.pre-phi, i32 1
  %9 = load i32, i32* %offset17, align 8
  %conv18 = zext i32 %9 to i64
  %add19 = add i64 %left.1.lcssa, %conv18
  store i64 %add19, i64* %iov_offset, align 8
  br label %if.end21

if.end21:                                         ; preds = %while.end, %entry
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %10 = load i64, i64* %count, align 8
  %sub22 = sub i64 %10, %size
  store i64 %sub22, i64* %count, align 8
  call fastcc void @pipe_truncate(%struct.iov_iter* noundef %i) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @iov_iter_revert(%struct.iov_iter* nocapture noundef %i, i64 noundef %unroll) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i64 %unroll, 0
  br i1 %tobool.not, label %if.end119, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp ugt i64 %unroll, 2147479552
  br i1 %cmp, label %if.then8, label %if.end19, !prof !8

if.then8:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1041; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !31
  br label %if.end119

if.end19:                                         ; preds = %if.end
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %add = add i64 %0, %unroll
  store i64 %add, i64* %count, align 8
  %call = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then27, label %if.end56, !prof !8

if.then27:                                        ; preds = %if.end19
  %1 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe28 = bitcast %union.anon* %1 to %struct.pipe_inode_info**
  %2 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe28, align 8
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 6
  %3 = load i32, i32* %ring_size, align 4
  %sub = add i32 %3, -1
  %4 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5
  %head = bitcast %union.anon.62* %4 to i32*
  %5 = load i32, i32* %head, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %6 = load i64, i64* %iov_offset, align 8
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 17
  %7 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and206 = and i32 %5, %sub
  %idxprom207 = zext i32 %and206 to i64
  %offset208 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %7, i64 %idxprom207, i32 1
  %8 = load i32, i32* %offset208, align 8
  %conv29209 = zext i32 %8 to i64
  %sub30210 = sub i64 %6, %conv29209
  %cmp31211 = icmp ugt i64 %sub30210, %unroll
  br i1 %cmp31211, label %if.then33, label %if.end35.lr.ph

if.end35.lr.ph:                                   ; preds = %if.then27
  %9 = bitcast %union.anon.62* %4 to %struct.anon.63*
  %start_head = getelementptr inbounds %struct.anon.63, %struct.anon.63* %9, i64 0, i32 1
  br label %if.end35

if.then33.loopexit:                               ; preds = %cleanup
  %conv48.le = zext i32 %add47 to i64
  br label %if.then33

if.then33:                                        ; preds = %if.then33.loopexit, %if.then27
  %unroll.addr.0.lcssa = phi i64 [ %unroll, %if.then27 ], [ %sub36, %if.then33.loopexit ]
  %i_head.0.lcssa = phi i32 [ %5, %if.then27 ], [ %dec, %if.then33.loopexit ]
  %off.0.lcssa = phi i64 [ %6, %if.then27 ], [ %conv48.le, %if.then33.loopexit ]
  %sub34 = sub i64 %off.0.lcssa, %unroll.addr.0.lcssa
  br label %while.end

if.end35:                                         ; preds = %if.end35.lr.ph, %cleanup
  %sub30215 = phi i64 [ %sub30210, %if.end35.lr.ph ], [ %sub30, %cleanup ]
  %i_head.0213 = phi i32 [ %5, %if.end35.lr.ph ], [ %dec, %cleanup ]
  %unroll.addr.0212 = phi i64 [ %unroll, %if.end35.lr.ph ], [ %sub36, %cleanup ]
  %sub36 = sub i64 %unroll.addr.0212, %sub30215
  %tobool37.not = icmp eq i64 %sub36, 0
  br i1 %tobool37.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end35
  %10 = load i32, i32* %start_head, align 4
  %cmp38 = icmp eq i32 %i_head.0213, %10
  br i1 %cmp38, label %while.end, label %cleanup

cleanup:                                          ; preds = %if.end35, %land.lhs.true
  %dec = add i32 %i_head.0213, -1
  %and43 = and i32 %dec, %sub
  %idxprom44 = zext i32 %and43 to i64
  %offset46 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %7, i64 %idxprom44, i32 1
  %11 = load i32, i32* %offset46, align 8
  %len = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %7, i64 %idxprom44, i32 2
  %12 = load i32, i32* %len, align 4
  %add47 = add i32 %12, %11
  %conv48 = zext i32 %add47 to i64
  %conv29 = zext i32 %11 to i64
  %sub30 = sub nsw i64 %conv48, %conv29
  %cmp31 = icmp ult i64 %sub36, %sub30
  br i1 %cmp31, label %if.then33.loopexit, label %if.end35

while.end:                                        ; preds = %land.lhs.true, %if.then33
  %i_head.0203 = phi i32 [ %i_head.0.lcssa, %if.then33 ], [ %i_head.0213, %land.lhs.true ]
  %off.1.ph = phi i64 [ %sub34, %if.then33 ], [ 0, %land.lhs.true ]
  store i64 %off.1.ph, i64* %iov_offset, align 8
  store i32 %i_head.0203, i32* %head, align 8
  call fastcc void @pipe_truncate(%struct.iov_iter* noundef %i) #18
  br label %if.end119

if.end56:                                         ; preds = %if.end19
  %call57 = call fastcc i1 @iov_iter_is_discard(%struct.iov_iter* noundef %i) #18
  br i1 %call57, label %if.end119, label %if.end66, !prof !8

if.end66:                                         ; preds = %if.end56
  %iov_offset67 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %13 = load i64, i64* %iov_offset67, align 8
  %cmp68.not = icmp ult i64 %13, %unroll
  br i1 %cmp68.not, label %if.end73, label %if.then70

if.then70:                                        ; preds = %if.end66
  %sub72 = sub i64 %13, %unroll
  store i64 %sub72, i64* %iov_offset67, align 8
  br label %if.end119

if.end73:                                         ; preds = %if.end66
  %sub75 = sub i64 %unroll, %13
  %call76 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call76, label %do.body, label %if.else

do.body:                                          ; preds = %if.end73
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1078; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !32
  unreachable

if.else:                                          ; preds = %if.end73
  %call80 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call80, label %if.then81, label %if.else99

if.then81:                                        ; preds = %if.else
  %14 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec82 = bitcast %union.anon* %14 to %struct.bio_vec**
  %15 = load %struct.bio_vec*, %struct.bio_vec** %bvec82, align 8
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %.pre221 = load i64, i64* %nr_segs, align 8
  br label %while.cond83

while.cond83:                                     ; preds = %while.cond83, %if.then81
  %16 = phi i64 [ %.pre221, %if.then81 ], [ %inc, %while.cond83 ]
  %unroll.addr.2 = phi i64 [ %sub75, %if.then81 ], [ %sub94, %while.cond83 ]
  %bvec.0 = phi %struct.bio_vec* [ %15, %if.then81 ], [ %incdec.ptr, %while.cond83 ]
  %incdec.ptr = getelementptr %struct.bio_vec, %struct.bio_vec* %bvec.0, i64 -1
  %bv_len = getelementptr %struct.bio_vec, %struct.bio_vec* %bvec.0, i64 -1, i32 1
  %17 = load i32, i32* %bv_len, align 8
  %conv86 = zext i32 %17 to i64
  %inc = add i64 %16, 1
  store i64 %inc, i64* %nr_segs, align 8
  %cmp87.not = icmp ugt i64 %unroll.addr.2, %conv86
  %sub94 = sub i64 %unroll.addr.2, %conv86
  br i1 %cmp87.not, label %while.cond83, label %cleanup95.thread

cleanup95.thread:                                 ; preds = %while.cond83
  %conv86.le = zext i32 %17 to i64
  store %struct.bio_vec* %incdec.ptr, %struct.bio_vec** %bvec82, align 8
  %sub91 = sub i64 %conv86.le, %unroll.addr.2
  store i64 %sub91, i64* %iov_offset67, align 8
  br label %if.end119

if.else99:                                        ; preds = %if.else
  %iov100 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %18 = load %struct.iovec*, %struct.iovec** %iov100, align 8
  %nr_segs105 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %.pre = load i64, i64* %nr_segs105, align 8
  br label %while.cond101

while.cond101:                                    ; preds = %while.cond101, %if.else99
  %19 = phi i64 [ %.pre, %if.else99 ], [ %inc106, %while.cond101 ]
  %unroll.addr.4 = phi i64 [ %sub75, %if.else99 ], [ %sub114, %while.cond101 ]
  %iov.0 = phi %struct.iovec* [ %18, %if.else99 ], [ %incdec.ptr104, %while.cond101 ]
  %incdec.ptr104 = getelementptr %struct.iovec, %struct.iovec* %iov.0, i64 -1
  %iov_len = getelementptr %struct.iovec, %struct.iovec* %iov.0, i64 -1, i32 1
  %20 = load i64, i64* %iov_len, align 8
  %inc106 = add i64 %19, 1
  store i64 %inc106, i64* %nr_segs105, align 8
  %cmp107.not = icmp ugt i64 %unroll.addr.4, %20
  %sub114 = sub i64 %unroll.addr.4, %20
  br i1 %cmp107.not, label %while.cond101, label %cleanup115.thread

cleanup115.thread:                                ; preds = %while.cond101
  store %struct.iovec* %incdec.ptr104, %struct.iovec** %iov100, align 8
  %sub111 = sub i64 %20, %unroll.addr.4
  store i64 %sub111, i64* %iov_offset67, align 8
  br label %if.end119

if.end119:                                        ; preds = %cleanup115.thread, %cleanup95.thread, %if.then8, %if.end56, %entry, %while.end, %if.then70
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pipe_truncate(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe1 = bitcast %union.anon* %0 to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe1, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 4
  %2 = load i32, i32* %tail, align 4
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 3
  %3 = load i32, i32* %head, align 8
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 6
  %4 = load i32, i32* %ring_size, align 4
  %sub = add i32 %4, -1
  %call = call fastcc i1 @pipe_empty(i32 noundef %3, i32 noundef %2) #18
  br i1 %call, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5
  %head2 = bitcast %union.anon.62* %5 to i32*
  %6 = load i32, i32* %head2, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %7 = load i64, i64* %iov_offset, align 8
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  %8 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %6, %sub
  %idxprom = zext i32 %and to i64
  %offset = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom, i32 1
  %9 = load i32, i32* %offset, align 8
  %10 = trunc i64 %7 to i32
  %conv5 = sub i32 %10, %9
  %len = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom, i32 2
  store i32 %conv5, i32* %len, align 4
  %inc = add i32 %6, 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %i_head.0 = phi i32 [ %inc, %if.then3 ], [ %6, %if.then ]
  %cmp.not37 = icmp eq i32 %3, %i_head.0
  br i1 %cmp.not37, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %bufs7 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %p_head.038 = phi i32 [ %3, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i32 %p_head.038, -1
  %11 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs7, align 8
  %and8 = and i32 %dec, %sub
  %idxprom9 = zext i32 %and8 to i64
  %arrayidx10 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %11, i64 %idxprom9
  call fastcc void @pipe_buf_release(%struct.pipe_inode_info* noundef %1, %struct.pipe_buffer* noundef %arrayidx10) #18
  %cmp.not = icmp eq i32 %dec, %i_head.0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end
  %p_head.0.lcssa = phi i32 [ %3, %if.end ], [ %i_head.0, %while.body ]
  store i32 %p_head.0.lcssa, i32* %head, align 8
  br label %if.end12

if.end12:                                         ; preds = %while.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @iov_iter_single_seg_count(%struct.iov_iter* nocapture noundef readonly %i) local_unnamed_addr #1 {
entry:
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %0 = load i64, i64* %nr_segs, align 8
  %cmp = icmp ugt i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then3, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %call1 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call1, label %if.then3, label %if.end, !prof !9

if.then3:                                         ; preds = %if.then, %lor.rhs
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %1 = load i64, i64* %count, align 8
  %iov = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %2 = load %struct.iovec*, %struct.iovec** %iov, align 8
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %2, i64 0, i32 1
  %3 = load i64, i64* %iov_len, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %4 = load i64, i64* %iov_offset, align 8
  %sub = sub i64 %3, %4
  %cmp4 = icmp ult i64 %1, %sub
  %cond = select i1 %cmp4, i64 %1, i64 %sub
  br label %return

if.end:                                           ; preds = %lor.rhs
  %call6 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call6, label %if.then7, label %if.end20

if.then7:                                         ; preds = %if.end
  %count8 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %5 = load i64, i64* %count8, align 8
  %6 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec = bitcast %union.anon* %6 to %struct.bio_vec**
  %7 = load %struct.bio_vec*, %struct.bio_vec** %bvec, align 8
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %7, i64 0, i32 1
  %8 = load i32, i32* %bv_len, align 8
  %conv9 = zext i32 %8 to i64
  %iov_offset10 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %9 = load i64, i64* %iov_offset10, align 8
  %sub11 = sub i64 %conv9, %9
  %cmp13 = icmp ult i64 %5, %sub11
  %cond18 = select i1 %cmp13, i64 %5, i64 %sub11
  br label %return

if.end20:                                         ; preds = %if.end, %entry
  %count21 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %10 = load i64, i64* %count21, align 8
  br label %return

return:                                           ; preds = %if.end20, %if.then7, %if.then3
  %retval.0 = phi i64 [ %cond, %if.then3 ], [ %cond18, %if.then7 ], [ %10, %if.end20 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @iov_iter_kvec(%struct.iov_iter* nocapture noundef writeonly %i, i32 noundef %direction, %struct.kvec* noundef %kvec, i64 noundef %nr_segs, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %direction, 2
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1129; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool15 = icmp ne i32 %direction, 0
  %frombool = zext i1 %tobool15 to i8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  store i8 1, i8* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 1
  store i8 %frombool, i8* %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.319.0..sroa_idx20 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  store i64 0, i64* %.compoundliteral.sroa.319.0..sroa_idx20, align 8
  %.compoundliteral.sroa.4.0..sroa_idx21 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  store i64 %count, i64* %.compoundliteral.sroa.4.0..sroa_idx21, align 8
  %.compoundliteral.sroa.5.0..sroa_idx22 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %.compoundliteral.sroa.5.0..sroa_cast = bitcast %union.anon* %.compoundliteral.sroa.5.0..sroa_idx22 to %struct.kvec**
  store %struct.kvec* %kvec, %struct.kvec** %.compoundliteral.sroa.5.0..sroa_cast, align 8
  %.compoundliteral.sroa.6.0..sroa_idx23 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  store i64 %nr_segs, i64* %.compoundliteral.sroa.6.0..sroa_idx23, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @iov_iter_bvec(%struct.iov_iter* nocapture noundef writeonly %i, i32 noundef %direction, %struct.bio_vec* noundef %bvec, i64 noundef %nr_segs, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %direction, 2
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1145; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !34
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool15 = icmp ne i32 %direction, 0
  %frombool = zext i1 %tobool15 to i8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  store i8 2, i8* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 1
  store i8 %frombool, i8* %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.319.0..sroa_idx20 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  store i64 0, i64* %.compoundliteral.sroa.319.0..sroa_idx20, align 8
  %.compoundliteral.sroa.4.0..sroa_idx21 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  store i64 %count, i64* %.compoundliteral.sroa.4.0..sroa_idx21, align 8
  %.compoundliteral.sroa.5.0..sroa_idx22 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %.compoundliteral.sroa.5.0..sroa_cast = bitcast %union.anon* %.compoundliteral.sroa.5.0..sroa_idx22 to %struct.bio_vec**
  store %struct.bio_vec* %bvec, %struct.bio_vec** %.compoundliteral.sroa.5.0..sroa_cast, align 8
  %.compoundliteral.sroa.6.0..sroa_idx23 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  store i64 %nr_segs, i64* %.compoundliteral.sroa.6.0..sroa_idx23, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @iov_iter_pipe(%struct.iov_iter* nocapture noundef writeonly %i, i32 noundef %direction, %struct.pipe_inode_info* noundef %pipe, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %direction, 0
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !9

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1161; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !35
  unreachable

do.end5:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %0 = load i32, i32* %head, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %1 = load i32, i32* %tail, align 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 6
  %2 = load i32, i32* %ring_size, align 4
  %call = call fastcc i1 @pipe_full(i32 noundef %0, i32 noundef %1, i32 noundef %2) #18
  br i1 %call, label %if.then18, label %if.end19, !prof !8

if.then18:                                        ; preds = %do.end5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1162; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !36
  %.pre = load i32, i32* %head, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %do.end5
  %3 = phi i32 [ %.pre, %if.then18 ], [ %0, %do.end5 ]
  %4 = getelementptr %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  store i8 3, i8* %4, align 8
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 1
  store i8 0, i8* %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.332.0..sroa_idx33 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  store i64 0, i64* %.compoundliteral.sroa.332.0..sroa_idx33, align 8
  %.compoundliteral.sroa.4.0..sroa_idx34 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  store i64 %count, i64* %.compoundliteral.sroa.4.0..sroa_idx34, align 8
  %.compoundliteral.sroa.5.0..sroa_idx35 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %.compoundliteral.sroa.5.0..sroa_cast = bitcast %union.anon* %.compoundliteral.sroa.5.0..sroa_idx35 to %struct.pipe_inode_info**
  store %struct.pipe_inode_info* %pipe, %struct.pipe_inode_info** %.compoundliteral.sroa.5.0..sroa_cast, align 8
  %.compoundliteral.sroa.6.0..sroa_idx36 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5
  %.compoundliteral.sroa.6.0..sroa_cast = bitcast %union.anon.62* %.compoundliteral.sroa.6.0..sroa_idx36 to i32*
  store i32 %3, i32* %.compoundliteral.sroa.6.0..sroa_cast, align 8
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, i8* %4, i64 36
  %.compoundliteral.sroa.7.0..sroa_cast = bitcast i8* %.compoundliteral.sroa.7.0..sroa_idx to i32*
  store i32 %3, i32* %.compoundliteral.sroa.7.0..sroa_cast, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @pipe_full(i32 noundef %head, i32 noundef %tail, i32 noundef %limit) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @pipe_occupancy(i32 noundef %head, i32 noundef %tail) #18
  %cmp = icmp uge i32 %call, %limit
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @iov_iter_xarray(%struct.iov_iter* nocapture noundef writeonly %i, i32 noundef %direction, %struct.xarray* noundef %xarray, i64 noundef %start, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %direction, 2
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !9

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1191; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !37
  unreachable

do.end6:                                          ; preds = %entry
  %tobool7 = icmp ne i32 %direction, 0
  %frombool = zext i1 %tobool7 to i8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  store i8 4, i8* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 1
  store i8 %frombool, i8* %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.310.0..sroa_idx11 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  store i64 0, i64* %.compoundliteral.sroa.310.0..sroa_idx11, align 8
  %.compoundliteral.sroa.4.0..sroa_idx12 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  store i64 %count, i64* %.compoundliteral.sroa.4.0..sroa_idx12, align 8
  %.compoundliteral.sroa.5.0..sroa_idx13 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %.compoundliteral.sroa.5.0..sroa_cast = bitcast %union.anon* %.compoundliteral.sroa.5.0..sroa_idx13 to %struct.xarray**
  store %struct.xarray* %xarray, %struct.xarray** %.compoundliteral.sroa.5.0..sroa_cast, align 8
  %.compoundliteral.sroa.6.0..sroa_idx14 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  store i64 %start, i64* %.compoundliteral.sroa.6.0..sroa_idx14, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @iov_iter_discard(%struct.iov_iter* nocapture noundef writeonly %i, i32 noundef %direction, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %direction, 0
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !9

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1214; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !38
  unreachable

do.end5:                                          ; preds = %entry
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  store i8 5, i8* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 1
  store i8 0, i8* %.compoundliteral.sroa.3.0..sroa_idx, align 1
  %.compoundliteral.sroa.4.0..sroa_raw_idx = getelementptr inbounds i8, i8* %.compoundliteral.sroa.0.0..sroa_idx, i64 2
  call void @llvm.memset.p0i8.i64(i8* noundef align 2 dereferenceable(14) %.compoundliteral.sroa.4.0..sroa_raw_idx, i8 0, i64 14, i1 false)
  %.compoundliteral.sroa.48.0..sroa_idx9 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  store i64 %count, i64* %.compoundliteral.sroa.48.0..sroa_idx9, align 8
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %.compoundliteral.sroa.5.0..sroa_cast = bitcast %union.anon* %.compoundliteral.sroa.5.0..sroa_idx to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(16) %.compoundliteral.sroa.5.0..sroa_cast, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i64 @iov_iter_alignment(%struct.iov_iter* nocapture noundef readonly %i) local_unnamed_addr #9 {
entry:
  %call = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call1 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call1, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry, %lor.rhs
  %call3 = call fastcc i64 @iov_iter_alignment_iovec(%struct.iov_iter* noundef %i) #18
  br label %return

if.end:                                           ; preds = %lor.rhs
  %call4 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i64 @iov_iter_alignment_bvec(%struct.iov_iter* noundef %i) #18
  br label %return

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call8, label %if.then9, label %if.end20

if.then9:                                         ; preds = %if.end7
  %0 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe = bitcast %union.anon* %0 to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe, align 8
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 6
  %2 = load i32, i32* %ring_size, align 4
  %sub = add i32 %2, -1
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %3 = load i64, i64* %count, align 8
  %tobool10.not = icmp eq i64 %3, 0
  br i1 %tobool10.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then9
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %4 = load i64, i64* %iov_offset, align 8
  %tobool11.not = icmp eq i64 %4, 0
  br i1 %tobool11.not, label %return, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  %5 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %6 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5
  %head = bitcast %union.anon.62* %6 to i32*
  %7 = load i32, i32* %head, align 8
  %and = and i32 %7, %sub
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %5, i64 %idxprom
  %call14 = call fastcc i1 @allocated(%struct.pipe_buffer* noundef %arrayidx) #18
  %or = select i1 %call14, i64 %4, i64 0
  %spec.select = or i64 %or, %3
  br label %return

if.end20:                                         ; preds = %if.end7
  %call21 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call21, label %if.then22, label %return

if.then22:                                        ; preds = %if.end20
  %xarray_start = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %8 = load i64, i64* %xarray_start, align 8
  %iov_offset23 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %9 = load i64, i64* %iov_offset23, align 8
  %add = add i64 %9, %8
  %count24 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %10 = load i64, i64* %count24, align 8
  %or25 = or i64 %add, %10
  br label %return

return:                                           ; preds = %land.lhs.true12, %if.end20, %land.lhs.true, %if.then9, %if.then22, %if.then5, %if.then
  %retval.1 = phi i64 [ %call3, %if.then ], [ %call6, %if.then5 ], [ %or25, %if.then22 ], [ %3, %land.lhs.true ], [ 0, %if.then9 ], [ 0, %if.end20 ], [ %spec.select, %land.lhs.true12 ]
  ret i64 %retval.1
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @iov_iter_alignment_iovec(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #9 {
entry:
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %0 = load i64, i64* %nr_segs, align 8
  %cmp45.not = icmp eq i64 %0, 0
  br i1 %cmp45.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %1 = load i64, i64* %iov_offset, align 8
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %2 = load i64, i64* %count, align 8
  %iov = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %3 = load %struct.iovec*, %struct.iovec** %iov, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %conv50 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %for.inc ]
  %skip.048 = phi i64 [ %1, %for.body.lr.ph ], [ 0, %for.inc ]
  %size.047 = phi i64 [ %2, %for.body.lr.ph ], [ %size.1, %for.inc ]
  %res.046 = phi i64 [ 0, %for.body.lr.ph ], [ %res.1, %for.inc ]
  %iov_len = getelementptr %struct.iovec, %struct.iovec* %3, i64 %conv50, i32 1
  %4 = load i64, i64* %iov_len, align 8
  %sub = sub i64 %4, %skip.048
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %iov_base = getelementptr %struct.iovec, %struct.iovec* %3, i64 %conv50, i32 0
  %5 = load i8*, i8** %iov_base, align 8
  %6 = ptrtoint i8* %5 to i64
  %add = add i64 %skip.048, %6
  %cmp5 = icmp ugt i64 %sub, %size.047
  %spec.select = select i1 %cmp5, i64 %size.047, i64 %sub
  %or = or i64 %spec.select, %res.046
  %or8 = or i64 %or, %add
  %sub9 = sub i64 %size.047, %spec.select
  %tobool10.not = icmp eq i64 %sub9, 0
  br i1 %tobool10.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %res.1 = phi i64 [ %or8, %if.then ], [ %res.046, %for.body ]
  %size.1 = phi i64 [ %sub9, %if.then ], [ %size.047, %for.body ]
  %inc = add nuw nsw i64 %conv50, 1
  %conv = and i64 %inc, 4294967295
  %cmp = icmp ugt i64 %0, %conv
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.then, %entry
  %res.3 = phi i64 [ 0, %entry ], [ %or8, %if.then ], [ %res.1, %for.inc ]
  ret i64 %res.3
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @iov_iter_alignment_bvec(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #9 {
entry:
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %0 = load i64, i64* %nr_segs, align 8
  %cmp44.not = icmp eq i64 %0, 0
  br i1 %cmp44.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec = bitcast %union.anon* %1 to %struct.bio_vec**
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %2 = load i64, i64* %iov_offset, align 8
  %conv = trunc i64 %2 to i32
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %3 = load i64, i64* %count, align 8
  %4 = load %struct.bio_vec*, %struct.bio_vec** %bvec, align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i64 %conv149, 1
  %conv1 = and i64 %inc, 4294967295
  %cmp = icmp ugt i64 %0, %conv1
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %conv149 = phi i64 [ 0, %for.body.lr.ph ], [ %conv1, %for.cond ]
  %skip.047 = phi i32 [ %conv, %for.body.lr.ph ], [ 0, %for.cond ]
  %size.046 = phi i64 [ %3, %for.body.lr.ph ], [ %sub16, %for.cond ]
  %res.045 = phi i32 [ 0, %for.body.lr.ph ], [ %conv15, %for.cond ]
  %bv_len = getelementptr %struct.bio_vec, %struct.bio_vec* %4, i64 %conv149, i32 1
  %5 = load i32, i32* %bv_len, align 8
  %sub = sub i32 %5, %skip.047
  %conv3 = zext i32 %sub to i64
  %bv_offset = getelementptr %struct.bio_vec, %struct.bio_vec* %4, i64 %conv149, i32 2
  %6 = load i32, i32* %bv_offset, align 4
  %add = add i32 %6, %skip.047
  %or = or i32 %add, %res.045
  %cmp11 = icmp ult i64 %size.046, %conv3
  %spec.select = select i1 %cmp11, i64 %size.046, i64 %conv3
  %7 = trunc i64 %spec.select to i32
  %conv15 = or i32 %or, %7
  %sub16 = sub i64 %size.046, %spec.select
  %tobool.not = icmp eq i64 %sub16, 0
  br i1 %tobool.not, label %for.end.loopexit, label %for.cond

for.end.loopexit:                                 ; preds = %for.body, %for.cond
  %phi.cast = zext i32 %conv15 to i64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %res.1 = phi i64 [ 0, %entry ], [ %phi.cast, %for.end.loopexit ]
  ret i64 %res.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @allocated(%struct.pipe_buffer* nocapture noundef readonly %buf) unnamed_addr #1 {
entry:
  %ops = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 3
  %0 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %ops, align 8
  %cmp = icmp eq %struct.pipe_buf_operations* %0, @default_pipe_buf_ops
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @iov_iter_gap_alignment(%struct.iov_iter* nocapture noundef readonly %i) local_unnamed_addr #0 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %call = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %for.cond.preheader, label %if.then, !prof !9

for.cond.preheader:                               ; preds = %entry
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %1 = load i64, i64* %nr_segs, align 8
  %cmp74.not = icmp eq i64 %1, 0
  br i1 %cmp74.not, label %cleanup46, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %iov = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %2 = load %struct.iovec*, %struct.iovec** %iov, align 8
  br label %for.body

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1298; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !39
  br label %cleanup46

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %conv1879 = phi i64 [ 0, %for.body.lr.ph ], [ %conv18, %for.inc ]
  %size.077 = phi i64 [ %0, %for.body.lr.ph ], [ %size.2, %for.inc ]
  %v.076 = phi i64 [ 0, %for.body.lr.ph ], [ %v.1, %for.inc ]
  %res.075 = phi i64 [ 0, %for.body.lr.ph ], [ %res.2, %for.inc ]
  %iov_len = getelementptr %struct.iovec, %struct.iovec* %2, i64 %conv1879, i32 1
  %3 = load i64, i64* %iov_len, align 8
  %tobool20.not = icmp eq i64 %3, 0
  br i1 %tobool20.not, label %for.inc, label %if.then21

if.then21:                                        ; preds = %for.body
  %iov_base = getelementptr %struct.iovec, %struct.iovec* %2, i64 %conv1879, i32 0
  %4 = load i8*, i8** %iov_base, align 8
  %5 = ptrtoint i8* %4 to i64
  %tobool25.not = icmp eq i64 %v.076, 0
  %or = or i64 %v.076, %5
  %or27 = select i1 %tobool25.not, i64 0, i64 %or
  %res.1 = or i64 %or27, %res.075
  %add = add i64 %3, %5
  %cmp37.not = icmp ugt i64 %size.077, %3
  %sub = sub i64 %size.077, %3
  br i1 %cmp37.not, label %for.inc, label %cleanup46

for.inc:                                          ; preds = %if.then21, %for.body
  %res.2 = phi i64 [ %res.1, %if.then21 ], [ %res.075, %for.body ]
  %v.1 = phi i64 [ %add, %if.then21 ], [ %v.076, %for.body ]
  %size.2 = phi i64 [ %sub, %if.then21 ], [ %size.077, %for.body ]
  %inc = add nuw nsw i64 %conv1879, 1
  %conv18 = and i64 %inc, 4294967295
  %cmp = icmp ugt i64 %1, %conv18
  br i1 %cmp, label %for.body, label %cleanup46

cleanup46:                                        ; preds = %for.inc, %if.then21, %for.cond.preheader, %if.then
  %retval.0 = phi i64 [ 4294967295, %if.then ], [ 0, %for.cond.preheader ], [ %res.2, %for.inc ], [ %res.1, %if.then21 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @iov_iter_get_pages(%struct.iov_iter* nocapture noundef readonly %i, %struct.page** noundef %pages, i64 noundef %maxsize, i32 noundef %maxpages, i64* nocapture noundef %start) local_unnamed_addr #0 {
entry:
  %len = alloca i64, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  store i64 0, i64* %len, align 8, !annotation !13
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %1 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %1, %maxsize
  %spec.select = select i1 %cmp, i64 %1, i64 %maxsize
  %tobool.not = icmp eq i64 %spec.select, 0
  br i1 %tobool.not, label %cleanup52, label %if.end3

if.end3:                                          ; preds = %entry
  %call = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then6, label %if.end31, !prof !9

if.then6:                                         ; preds = %if.end3
  %call7 = call fastcc i64 @first_iovec_segment(%struct.iov_iter* noundef %i, i64* noundef nonnull %len, i64* noundef %start, i64 noundef %spec.select, i32 noundef %maxpages) #18
  %2 = load i64, i64* %len, align 8
  %sub = add i64 %2, 4095
  %div = lshr i64 %sub, 12
  %conv8 = trunc i64 %div to i32
  %call9 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %i) #18
  %cmp11.not = icmp ne i8 %call9, 1
  %cond = zext i1 %cmp11.not to i32
  %call13 = call i32 @get_user_pages_fast(i64 noundef %call7, i32 noundef %conv8, i32 noundef %cond, %struct.page** noundef %pages) #20
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then23, label %if.end25, !prof !8

if.then23:                                        ; preds = %if.then6
  %conv24 = sext i32 %call13 to i64
  br label %cleanup52

if.end25:                                         ; preds = %if.then6
  %cmp26 = icmp eq i32 %call13, %conv8
  %conv2890 = zext i32 %call13 to i64
  %mul = shl nuw nsw i64 %conv2890, 12
  %cond29 = select i1 %cmp26, i64 %2, i64 %mul
  %3 = load i64, i64* %start, align 8
  %sub30 = sub i64 %cond29, %3
  br label %cleanup52

if.end31:                                         ; preds = %if.end3
  %call32 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call32, label %if.then33, label %if.end43

if.then33:                                        ; preds = %if.end31
  %call34 = call fastcc %struct.page* @first_bvec_segment(%struct.iov_iter* noundef %i, i64* noundef nonnull %len, i64* noundef %start, i64 noundef %spec.select, i32 noundef %maxpages) #18
  %4 = load i64, i64* %len, align 8
  %sub36 = add i64 %4, 4095
  %div37 = lshr i64 %sub36, 12
  %conv38 = trunc i64 %div37 to i32
  %tobool39.not91 = icmp eq i32 %conv38, 0
  br i1 %tobool39.not91, label %while.end, label %while.body

while.body:                                       ; preds = %if.then33, %while.body
  %page.094 = phi %struct.page* [ %incdec.ptr, %while.body ], [ %call34, %if.then33 ]
  %n.093 = phi i32 [ %dec, %while.body ], [ %conv38, %if.then33 ]
  %pages.addr.092 = phi %struct.page** [ %incdec.ptr40, %while.body ], [ %pages, %if.then33 ]
  %dec = add i32 %n.093, -1
  %incdec.ptr = getelementptr %struct.page, %struct.page* %page.094, i64 1
  %incdec.ptr40 = getelementptr %struct.page*, %struct.page** %pages.addr.092, i64 1
  store %struct.page* %page.094, %struct.page** %pages.addr.092, align 8
  call fastcc void @get_page(%struct.page* noundef %page.094) #18
  %tobool39.not = icmp eq i32 %dec, 0
  br i1 %tobool39.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.then33
  %5 = load i64, i64* %start, align 8
  %sub41 = sub i64 %4, %5
  br label %cleanup52

if.end43:                                         ; preds = %if.end31
  %call44 = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end43
  %call46 = call fastcc i64 @pipe_get_pages(%struct.iov_iter* noundef %i, %struct.page** noundef %pages, i64 noundef %spec.select, i32 noundef %maxpages, i64* noundef %start) #18
  br label %cleanup52

if.end47:                                         ; preds = %if.end43
  %call48 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call48, label %if.then49, label %cleanup52

if.then49:                                        ; preds = %if.end47
  %call50 = call fastcc i64 @iter_xarray_get_pages(%struct.iov_iter* noundef %i, %struct.page** noundef %pages, i64 noundef %spec.select, i32 noundef %maxpages, i64* noundef %start) #18
  br label %cleanup52

cleanup52:                                        ; preds = %if.end47, %if.then23, %if.end25, %entry, %if.then49, %if.then45, %while.end
  %retval.1 = phi i64 [ %sub41, %while.end ], [ %call46, %if.then45 ], [ %call50, %if.then49 ], [ 0, %entry ], [ %conv24, %if.then23 ], [ %sub30, %if.end25 ], [ -14, %if.end47 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i64 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @first_iovec_segment(%struct.iov_iter* nocapture noundef readonly %i, i64* nocapture noundef writeonly %size, i64* nocapture noundef writeonly %start, i64 noundef %maxsize, i32 noundef %maxpages) unnamed_addr #0 {
entry:
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %0 = load i64, i64* %nr_segs, align 8
  %cmp46.not = icmp eq i64 %0, 0
  br i1 %cmp46.not, label %do.body, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %1 = load i64, i64* %iov_offset, align 8
  %iov = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %2 = load %struct.iovec*, %struct.iovec** %iov, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %k.048 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %skip.047 = phi i64 [ %1, %for.body.lr.ph ], [ 0, %for.inc ]
  %iov_len = getelementptr %struct.iovec, %struct.iovec* %2, i64 %k.048, i32 1
  %3 = load i64, i64* %iov_len, align 8
  %sub = sub i64 %3, %skip.047
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %for.inc, label %cleanup22, !prof !8

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %k.048, 1
  %exitcond.not = icmp eq i64 %inc, %0
  br i1 %exitcond.not, label %do.body, label %for.body

do.body:                                          ; preds = %for.inc, %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1448; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !40
  unreachable

cleanup22:                                        ; preds = %for.body
  %iov_base.le = getelementptr %struct.iovec, %struct.iovec* %2, i64 %k.048, i32 0
  %4 = load i8*, i8** %iov_base.le, align 8
  %5 = ptrtoint i8* %4 to i64
  %add.le = add i64 %skip.047, %5
  %cmp6 = icmp ugt i64 %sub, %maxsize
  %spec.select = select i1 %cmp6, i64 %maxsize, i64 %sub
  %rem = and i64 %add.le, 4095
  store i64 %rem, i64* %start, align 8
  %add10 = add i64 %spec.select, %rem
  %conv11 = zext i32 %maxpages to i64
  %mul = shl nuw nsw i64 %conv11, 12
  %cmp12 = icmp ugt i64 %add10, %mul
  %len.1 = select i1 %cmp12, i64 %mul, i64 %add10
  store i64 %len.1, i64* %size, align 8
  %and = and i64 %add.le, -4096
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages_fast(i64 noundef, i32 noundef, i32 noundef, %struct.page** noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8 @iov_iter_rw(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #1 {
entry:
  %data_source = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 1
  %0 = load i8, i8* %data_source, align 1, !range !41
  ret i8 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.page* @first_bvec_segment(%struct.iov_iter* nocapture noundef readonly %i, i64* nocapture noundef writeonly %size, i64* nocapture noundef writeonly %start, i64 noundef %maxsize, i32 noundef %maxpages) unnamed_addr #10 {
entry:
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %0 = load i64, i64* %iov_offset, align 8
  %1 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec = bitcast %union.anon* %1 to %struct.bio_vec**
  %2 = load %struct.bio_vec*, %struct.bio_vec** %bvec, align 8
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %2, i64 0, i32 1
  %3 = load i32, i32* %bv_len, align 8
  %conv = zext i32 %3 to i64
  %sub = sub i64 %conv, %0
  %cmp = icmp ugt i64 %sub, %maxsize
  %spec.select = select i1 %cmp, i64 %maxsize, i64 %sub
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %2, i64 0, i32 2
  %4 = load i32, i32* %bv_offset, align 4
  %conv3 = zext i32 %4 to i64
  %add = add i64 %0, %conv3
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %2, i64 0, i32 0
  %5 = load %struct.page*, %struct.page** %bv_page, align 8
  %rem = and i64 %add, 4095
  store i64 %rem, i64* %start, align 8
  %add5 = add i64 %spec.select, %rem
  %conv6 = zext i32 %maxpages to i64
  %mul = shl nuw nsw i64 %conv6, 12
  %cmp7 = icmp ugt i64 %add5, %mul
  %len.1 = select i1 %cmp7, i64 %mul, i64 %add5
  %div = lshr i64 %add, 12
  %add.ptr = getelementptr %struct.page, %struct.page* %5, i64 %div
  store i64 %len.1, i64* %size, align 8
  ret %struct.page* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #18
  %0 = inttoptr i64 %call to %struct.page*
  call fastcc void @page_ref_inc(%struct.page* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @pipe_get_pages(%struct.iov_iter* nocapture noundef readonly %i, %struct.page** nocapture noundef writeonly %pages, i64 noundef %maxsize, i32 noundef %maxpages, i64* nocapture noundef %start) unnamed_addr #0 {
entry:
  %iter_head = alloca i32, align 4
  %0 = bitcast i32* %iter_head to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 0, i32* %iter_head, align 4, !annotation !13
  %call = call fastcc i1 @sanity(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @data_start(%struct.iov_iter* noundef %i, i32* noundef nonnull %iter_head, i64* noundef %start) #18
  %1 = load i32, i32* %iter_head, align 4
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe = bitcast %union.anon* %2 to %struct.pipe_inode_info**
  %3 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %3, i64 0, i32 4
  %4 = load i32, i32* %tail, align 4
  %call2 = call fastcc i32 @pipe_space_for_user(i32 noundef %1, i32 noundef %4, %struct.pipe_inode_info* noundef %3) #18
  %cmp = icmp ult i32 %call2, %maxpages
  %cond = select i1 %cmp, i32 %call2, i32 %maxpages
  %conv = zext i32 %cond to i64
  %mul = shl nuw nsw i64 %conv, 12
  %5 = load i64, i64* %start, align 8
  %sub = sub i64 %mul, %5
  %cmp4 = icmp ugt i64 %sub, %maxsize
  %cond9 = select i1 %cmp4, i64 %maxsize, i64 %sub
  %call10 = call fastcc i64 @__pipe_get_pages(%struct.iov_iter* noundef %i, i64 noundef %cond9, %struct.page** noundef %pages, i32 noundef %1, i64* noundef %start) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call10, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @iter_xarray_get_pages(%struct.iov_iter* nocapture noundef readonly %i, %struct.page** nocapture noundef writeonly %pages, i64 noundef %maxsize, i32 noundef %maxpages, i64* nocapture noundef writeonly %_start_offset) unnamed_addr #0 {
entry:
  %tobool1.not = icmp eq i32 %maxpages, 0
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %xarray_start = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %0 = load i64, i64* %xarray_start, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %1 = load i64, i64* %iov_offset, align 8
  %add = add i64 %1, %0
  %shr = ashr i64 %add, 12
  %2 = trunc i64 %add to i32
  %conv = and i32 %2, 4095
  %conv2 = zext i32 %conv to i64
  store i64 %conv2, i64* %_start_offset, align 8
  %sub = sub nuw nsw i64 4096, %conv2
  %cmp = icmp ult i64 %sub, %maxsize
  br i1 %cmp, label %if.then5, label %if.end15

if.then5:                                         ; preds = %if.end
  %sub8 = sub i64 %maxsize, %sub
  %shr9 = lshr i64 %sub8, 12
  %and11 = and i64 %sub8, 4095
  %tobool12.not = icmp eq i64 %and11, 0
  %spec.select.v = select i1 %tobool12.not, i64 1, i64 2
  %spec.select = add nuw nsw i64 %spec.select.v, %shr9
  br label %if.end15

if.end15:                                         ; preds = %if.then5, %if.end
  %count.0 = phi i64 [ 1, %if.end ], [ %spec.select, %if.then5 ]
  %size.0 = phi i64 [ %maxsize, %if.end ], [ %and11, %if.then5 ]
  %conv16 = zext i32 %maxpages to i64
  %cmp17 = icmp ugt i64 %count.0, %conv16
  %spec.select85 = select i1 %cmp17, i64 %conv16, i64 %count.0
  %3 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %xarray = bitcast %union.anon* %3 to %struct.xarray**
  %4 = load %struct.xarray*, %struct.xarray** %xarray, align 8
  %conv22 = trunc i64 %spec.select85 to i32
  %call = call fastcc i64 @iter_xarray_populate_pages(%struct.page** noundef %pages, %struct.xarray* noundef %4, i64 noundef %shr, i32 noundef %conv22) #18
  %conv23 = trunc i64 %call to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end15
  %conv28 = and i64 %call, 4294967295
  %mul = shl nuw nsw i64 %conv28, 12
  %sub30 = sub nsw i64 %mul, %conv2
  %cmp32 = icmp eq i64 %conv28, %spec.select85
  %cmp34 = icmp ne i64 %size.0, 0
  %or.cond50 = select i1 %cmp32, i1 %cmp34, i1 false
  br i1 %or.cond50, label %if.then36, label %cleanup

if.then36:                                        ; preds = %if.end27
  %cmp37 = icmp ugt i32 %conv23, 1
  %cond = select i1 %cmp37, i32 0, i32 %conv
  %conv39 = zext i32 %cond to i64
  %add40 = add i64 %size.0, -4096
  %sub41.neg = add i64 %add40, %sub30
  %sub42 = add i64 %sub41.neg, %conv39
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then36, %if.end15, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %if.end15 ], [ %sub42, %if.then36 ], [ %sub30, %if.end27 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @iov_iter_get_pages_alloc(%struct.iov_iter* nocapture noundef readonly %i, %struct.page*** nocapture noundef writeonly %pages, i64 noundef %maxsize, i64* nocapture noundef %start) local_unnamed_addr #0 {
entry:
  %len = alloca i64, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  store i64 0, i64* %len, align 8, !annotation !13
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %1 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %1, %maxsize
  %spec.select = select i1 %cmp, i64 %1, i64 %maxsize
  %tobool.not = icmp eq i64 %spec.select, 0
  br i1 %tobool.not, label %cleanup62, label %if.end3

if.end3:                                          ; preds = %entry
  %call = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then6, label %if.end36, !prof !9

if.then6:                                         ; preds = %if.end3
  %call7 = call fastcc i64 @first_iovec_segment(%struct.iov_iter* noundef %i, i64* noundef nonnull %len, i64* noundef %start, i64 noundef %spec.select, i32 noundef -1) #18
  %2 = load i64, i64* %len, align 8
  %sub = add i64 %2, 4095
  %div = lshr i64 %sub, 12
  %conv8 = trunc i64 %div to i32
  %sext106 = shl i64 %div, 32
  %conv9 = ashr exact i64 %sext106, 32
  %call10 = call fastcc %struct.page** @get_pages_array(i64 noundef %conv9) #18
  %tobool11.not = icmp eq %struct.page** %call10, null
  br i1 %tobool11.not, label %cleanup62, label %if.end13

if.end13:                                         ; preds = %if.then6
  %call14 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %i) #18
  %cmp16.not = icmp ne i8 %call14, 1
  %cond = zext i1 %cmp16.not to i32
  %call18 = call i32 @get_user_pages_fast(i64 noundef %call7, i32 noundef %conv8, i32 noundef %cond, %struct.page** noundef nonnull %call10) #20
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then28, label %if.end30, !prof !8

if.then28:                                        ; preds = %if.end13
  %3 = bitcast %struct.page** %call10 to i8*
  call void @kvfree(i8* noundef nonnull %3) #20
  %conv29 = sext i32 %call18 to i64
  br label %cleanup62

if.end30:                                         ; preds = %if.end13
  store %struct.page** %call10, %struct.page*** %pages, align 8
  %cmp31 = icmp eq i32 %call18, %conv8
  %conv33107 = zext i32 %call18 to i64
  %mul = shl nuw nsw i64 %conv33107, 12
  %cond34 = select i1 %cmp31, i64 %2, i64 %mul
  %4 = load i64, i64* %start, align 8
  %sub35 = sub i64 %cond34, %4
  br label %cleanup62

if.end36:                                         ; preds = %if.end3
  %call37 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call37, label %if.then38, label %if.end53

if.then38:                                        ; preds = %if.end36
  %call39 = call fastcc %struct.page* @first_bvec_segment(%struct.iov_iter* noundef %i, i64* noundef nonnull %len, i64* noundef %start, i64 noundef %spec.select, i32 noundef -1) #18
  %5 = load i64, i64* %len, align 8
  %sub41 = add i64 %5, 4095
  %div42 = lshr i64 %sub41, 12
  %conv43 = trunc i64 %div42 to i32
  %sext = shl i64 %div42, 32
  %conv44 = ashr exact i64 %sext, 32
  %call45 = call fastcc %struct.page** @get_pages_array(i64 noundef %conv44) #18
  store %struct.page** %call45, %struct.page*** %pages, align 8
  %tobool46.not = icmp eq %struct.page** %call45, null
  br i1 %tobool46.not, label %cleanup62, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then38
  %tobool49.not108 = icmp eq i32 %conv43, 0
  br i1 %tobool49.not108, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %page.0111 = phi %struct.page* [ %incdec.ptr, %while.body ], [ %call39, %while.cond.preheader ]
  %n.0110 = phi i32 [ %dec, %while.body ], [ %conv43, %while.cond.preheader ]
  %p.0109 = phi %struct.page** [ %incdec.ptr50, %while.body ], [ %call45, %while.cond.preheader ]
  %dec = add i32 %n.0110, -1
  %incdec.ptr = getelementptr %struct.page, %struct.page* %page.0111, i64 1
  %incdec.ptr50 = getelementptr %struct.page*, %struct.page** %p.0109, i64 1
  store %struct.page* %page.0111, %struct.page** %p.0109, align 8
  call fastcc void @get_page(%struct.page* noundef %page.0111) #18
  %tobool49.not = icmp eq i32 %dec, 0
  br i1 %tobool49.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %6 = load i64, i64* %start, align 8
  %sub51 = sub i64 %5, %6
  br label %cleanup62

if.end53:                                         ; preds = %if.end36
  %call54 = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end53
  %call56 = call fastcc i64 @pipe_get_pages_alloc(%struct.iov_iter* noundef %i, %struct.page*** noundef %pages, i64 noundef %spec.select, i64* noundef %start) #18
  br label %cleanup62

if.end57:                                         ; preds = %if.end53
  %call58 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call58, label %if.then59, label %cleanup62

if.then59:                                        ; preds = %if.end57
  %call60 = call fastcc i64 @iter_xarray_get_pages_alloc(%struct.iov_iter* noundef %i, %struct.page*** noundef %pages, i64 noundef %spec.select, i64* noundef %start) #18
  br label %cleanup62

cleanup62:                                        ; preds = %if.end57, %while.end, %if.then38, %if.then28, %if.end30, %if.then6, %entry, %if.then59, %if.then55
  %retval.2 = phi i64 [ %call56, %if.then55 ], [ %call60, %if.then59 ], [ 0, %entry ], [ %conv29, %if.then28 ], [ %sub35, %if.end30 ], [ -12, %if.then6 ], [ %sub51, %while.end ], [ -12, %if.then38 ], [ -14, %if.end57 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i64 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page** @get_pages_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kvmalloc_array(i64 noundef %n) #18
  %0 = bitcast i8* %call to %struct.page**
  ret %struct.page** %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @pipe_get_pages_alloc(%struct.iov_iter* nocapture noundef readonly %i, %struct.page*** nocapture noundef writeonly %pages, i64 noundef %maxsize, i64* nocapture noundef %start) unnamed_addr #0 {
entry:
  %iter_head = alloca i32, align 4
  %0 = bitcast i32* %iter_head to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 0, i32* %iter_head, align 4, !annotation !13
  %call = call fastcc i1 @sanity(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @data_start(%struct.iov_iter* noundef %i, i32* noundef nonnull %iter_head, i64* noundef %start) #18
  %1 = load i32, i32* %iter_head, align 4
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe = bitcast %union.anon* %2 to %struct.pipe_inode_info**
  %3 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %3, i64 0, i32 4
  %4 = load i32, i32* %tail, align 4
  %call2 = call fastcc i32 @pipe_space_for_user(i32 noundef %1, i32 noundef %4, %struct.pipe_inode_info* noundef %3) #18
  %conv = zext i32 %call2 to i64
  %mul = shl nuw nsw i64 %conv, 12
  %5 = load i64, i64* %start, align 8
  %sub = sub i64 %mul, %5
  %cmp = icmp ult i64 %sub, %maxsize
  %add = add i64 %maxsize, 4095
  %sub6 = add i64 %add, %5
  %div = lshr i64 %sub6, 12
  %conv7 = trunc i64 %div to i32
  %npages.0 = select i1 %cmp, i32 %call2, i32 %conv7
  %conv9 = zext i32 %npages.0 to i64
  %call10 = call fastcc %struct.page** @get_pages_array(i64 noundef %conv9) #18
  %tobool.not = icmp eq %struct.page** %call10, null
  br i1 %tobool.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  %maxsize.addr.0 = select i1 %cmp, i64 %sub, i64 %maxsize
  %call13 = call fastcc i64 @__pipe_get_pages(%struct.iov_iter* noundef %i, i64 noundef %maxsize.addr.0, %struct.page** noundef nonnull %call10, i32 noundef %1, i64* noundef %start) #18
  %cmp14 = icmp sgt i64 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end12
  store %struct.page** %call10, %struct.page*** %pages, align 8
  br label %cleanup

if.else17:                                        ; preds = %if.end12
  %6 = bitcast %struct.page** %call10 to i8*
  call void @kvfree(i8* noundef nonnull %6) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.else17, %if.end, %entry
  %retval.0 = phi i64 [ -14, %entry ], [ -12, %if.end ], [ %call13, %if.else17 ], [ %call13, %if.then16 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @iter_xarray_get_pages_alloc(%struct.iov_iter* nocapture noundef readonly %i, %struct.page*** nocapture noundef writeonly %pages, i64 noundef %maxsize, i64* nocapture noundef writeonly %_start_offset) unnamed_addr #0 {
entry:
  %xarray_start = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %0 = load i64, i64* %xarray_start, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %1 = load i64, i64* %iov_offset, align 8
  %add = add i64 %1, %0
  %shr = ashr i64 %add, 12
  %2 = trunc i64 %add to i32
  %conv = and i32 %2, 4095
  %conv1 = zext i32 %conv to i64
  store i64 %conv1, i64* %_start_offset, align 8
  %sub = sub nuw nsw i64 4096, %conv1
  %cmp = icmp ult i64 %sub, %maxsize
  br i1 %cmp, label %if.then4, label %if.end14

if.then4:                                         ; preds = %entry
  %sub7 = sub i64 %maxsize, %sub
  %shr8 = lshr i64 %sub7, 12
  %and10 = and i64 %sub7, 4095
  %tobool11.not = icmp eq i64 %and10, 0
  %spec.select.v = select i1 %tobool11.not, i64 1, i64 2
  %spec.select = add nuw nsw i64 %spec.select.v, %shr8
  br label %if.end14

if.end14:                                         ; preds = %if.then4, %entry
  %count.0 = phi i64 [ 1, %entry ], [ %spec.select, %if.then4 ]
  %size.0 = phi i64 [ %maxsize, %entry ], [ %and10, %if.then4 ]
  %call = call fastcc %struct.page** @get_pages_array(i64 noundef %count.0) #18
  %tobool15.not = icmp eq %struct.page** %call, null
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end14
  store %struct.page** %call, %struct.page*** %pages, align 8
  %3 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %xarray = bitcast %union.anon* %3 to %struct.xarray**
  %4 = load %struct.xarray*, %struct.xarray** %xarray, align 8
  %conv18 = trunc i64 %count.0 to i32
  %call19 = call fastcc i64 @iter_xarray_populate_pages(%struct.page** noundef nonnull %call, %struct.xarray* noundef %4, i64 noundef %shr, i32 noundef %conv18) #18
  %conv20 = trunc i64 %call19 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end17
  %conv25 = and i64 %call19, 4294967295
  %mul = shl nuw nsw i64 %conv25, 12
  %sub27 = sub nsw i64 %mul, %conv1
  %cmp29 = icmp eq i64 %conv25, %count.0
  %cmp31 = icmp ne i64 %size.0, 0
  %or.cond = select i1 %cmp29, i1 %cmp31, i1 false
  br i1 %or.cond, label %if.then33, label %cleanup

if.then33:                                        ; preds = %if.end24
  %cmp34 = icmp ugt i32 %conv20, 1
  %cond = select i1 %cmp34, i32 0, i32 %conv
  %conv36 = zext i32 %cond to i64
  %add37 = add i64 %size.0, -4096
  %sub38.neg = add i64 %add37, %sub27
  %sub39 = add i64 %sub38.neg, %conv36
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then33, %if.end17, %if.end14
  %retval.0 = phi i64 [ -12, %if.end14 ], [ 0, %if.end17 ], [ %sub39, %if.then33 ], [ %sub27, %if.end24 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @csum_and_copy_from_iter(i8* noundef %addr, i64 noundef %bytes, i32* nocapture noundef %csum, %struct.iov_iter* nocapture noundef %i) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = load i32, i32* %csum, align 4
  %call = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then11, label %lor.rhs, !prof !8

lor.rhs:                                          ; preds = %entry
  %call1 = call fastcc i1 @iov_iter_is_discard(%struct.iov_iter* noundef %i) #18
  br i1 %call1, label %if.then11, label %if.end19, !prof !8

if.then11:                                        ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1648; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !42
  br label %cleanup353

if.end19:                                         ; preds = %lor.rhs
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %1 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %1, %bytes
  br i1 %cmp, label %if.then28, label %if.end30, !prof !8

if.then28:                                        ; preds = %if.end19
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end19
  %bytes.addr.0 = phi i64 [ %1, %if.then28 ], [ %bytes, %if.end19 ]
  %tobool31.not = icmp eq i64 %bytes.addr.0, 0
  br i1 %tobool31.not, label %if.end352, label %if.then39, !prof !8

if.then39:                                        ; preds = %if.end30
  %call40 = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call40, label %if.then48, label %if.else, !prof !9

if.then48:                                        ; preds = %if.then39
  %iov49 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %2 = load %struct.iovec*, %struct.iovec** %iov49, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %3 = load i64, i64* %iov_offset, align 8
  br label %do.body

do.body:                                          ; preds = %if.end81, %if.then48
  %skip.0 = phi i64 [ %3, %if.then48 ], [ 0, %if.end81 ]
  %off.0 = phi i64 [ 0, %if.then48 ], [ %off.1, %if.end81 ]
  %iov.0 = phi %struct.iovec* [ %2, %if.then48 ], [ %incdec.ptr, %if.end81 ]
  %sum.0 = phi i32 [ %0, %if.then48 ], [ %sum.1, %if.end81 ]
  %bytes.addr.1 = phi i64 [ %bytes.addr.0, %if.then48 ], [ %bytes.addr.2, %if.end81 ]
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 1
  %4 = load i64, i64* %iov_len, align 8
  %sub = sub i64 %4, %skip.0
  %cmp51 = icmp ult i64 %bytes.addr.1, %sub
  %cond = select i1 %cmp51, i64 %bytes.addr.1, i64 %sub
  %tobool53.not = icmp eq i64 %cond, 0
  br i1 %tobool53.not, label %if.end81, label %if.then61, !prof !8

if.then61:                                        ; preds = %do.body
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 0
  %5 = load i8*, i8** %iov_base, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 %skip.0
  %add.ptr62 = getelementptr i8, i8* %addr, i64 %off.0
  %conv63 = trunc i64 %cond to i32
  %call64 = call fastcc i32 @csum_and_copy_from_user(i8* noundef %add.ptr, i8* noundef %add.ptr62, i32 noundef %conv63) #18
  %conv65 = trunc i64 %off.0 to i32
  %call66 = call fastcc i32 @csum_block_add(i32 noundef %sum.0, i32 noundef %call64, i32 noundef %conv65) #18
  %tobool68.not = icmp eq i32 %call64, 0
  %sub73 = select i1 %tobool68.not, i64 0, i64 %cond
  %add = add i64 %sub73, %off.0
  %add74 = add i64 %sub73, %skip.0
  %sub75 = sub i64 %bytes.addr.1, %sub73
  %6 = load i64, i64* %iov_len, align 8
  %cmp77 = icmp ult i64 %add74, %6
  br i1 %cmp77, label %do.end, label %if.end81

if.end81:                                         ; preds = %if.then61, %do.body
  %off.1 = phi i64 [ %add, %if.then61 ], [ %off.0, %do.body ]
  %sum.1 = phi i32 [ %call66, %if.then61 ], [ %sum.0, %do.body ]
  %bytes.addr.2 = phi i64 [ %sub75, %if.then61 ], [ %bytes.addr.1, %do.body ]
  %incdec.ptr = getelementptr %struct.iovec, %struct.iovec* %iov.0, i64 1
  %tobool82.not = icmp eq i64 %bytes.addr.2, 0
  br i1 %tobool82.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.then61, %if.end81
  %skip.1 = phi i64 [ %add74, %if.then61 ], [ 0, %if.end81 ]
  %off.2 = phi i64 [ %add, %if.then61 ], [ %off.1, %if.end81 ]
  %iov.1 = phi %struct.iovec* [ %iov.0, %if.then61 ], [ %incdec.ptr, %if.end81 ]
  %sum.2 = phi i32 [ %call66, %if.then61 ], [ %sum.1, %if.end81 ]
  store i64 %skip.1, i64* %iov_offset, align 8
  %7 = load %struct.iovec*, %struct.iovec** %iov49, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.iovec* %iov.1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.iovec* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 4
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %8 = load i64, i64* %nr_segs, align 8
  %sub85 = sub i64 %8, %sub.ptr.div
  store i64 %sub85, i64* %nr_segs, align 8
  store %struct.iovec* %iov.1, %struct.iovec** %iov49, align 8
  br label %if.end349

if.else:                                          ; preds = %if.then39
  %call87 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call87, label %while.body.preheader, label %if.else159

while.body.preheader:                             ; preds = %if.else
  %9 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec89 = bitcast %union.anon* %9 to %struct.bio_vec**
  %10 = load %struct.bio_vec*, %struct.bio_vec** %bvec89, align 8
  %iov_offset94 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %11 = load i64, i64* %iov_offset94, align 8
  %conv95 = trunc i64 %11 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %bytes.addr.3597 = phi i64 [ %sub143, %while.body ], [ %bytes.addr.0, %while.body.preheader ]
  %sum.3596 = phi i32 [ %call124, %while.body ], [ %0, %while.body.preheader ]
  %bvec.0595 = phi %struct.bio_vec* [ %spec.select548, %while.body ], [ %10, %while.body.preheader ]
  %off92.0594 = phi i64 [ %add133, %while.body ], [ 0, %while.body.preheader ]
  %skip93.0593 = phi i32 [ %spec.select, %while.body ], [ %conv95, %while.body.preheader ]
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0595, i64 0, i32 2
  %12 = load i32, i32* %bv_offset, align 4
  %add97 = add i32 %12, %skip93.0593
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0595, i64 0, i32 0
  %13 = load %struct.page*, %struct.page** %bv_page, align 8
  %conv98 = zext i32 %add97 to i64
  %div = lshr i64 %conv98, 12
  %add.ptr99 = getelementptr %struct.page, %struct.page* %13, i64 %div
  %call100 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr99) #18
  %rem = and i64 %conv98, 4095
  %add.ptr102 = getelementptr i8, i8* %call100, i64 %rem
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0595, i64 0, i32 1
  %14 = load i32, i32* %bv_len, align 8
  %sub103 = sub i32 %14, %skip93.0593
  %conv104 = zext i32 %sub103 to i64
  %cmp106 = icmp ult i64 %bytes.addr.3597, %conv104
  %cond111 = select i1 %cmp106, i64 %bytes.addr.3597, i64 %conv104
  %sub114 = sub nuw nsw i64 4096, %rem
  %cmp116 = icmp ult i64 %cond111, %sub114
  %cond121 = select i1 %cmp116, i64 %cond111, i64 %sub114
  %add.ptr123 = getelementptr i8, i8* %addr, i64 %off92.0594
  %call124 = call fastcc i32 @csum_and_memcpy(i8* noundef %add.ptr123, i8* noundef %add.ptr102, i64 noundef %cond121, i32 noundef %sum.3596, i64 noundef %off92.0594) #18
  %add133 = add i64 %cond121, %off92.0594
  %15 = trunc i64 %cond121 to i32
  %conv136 = add i32 %skip93.0593, %15
  %16 = load i32, i32* %bv_len, align 8
  %cmp138 = icmp eq i32 %conv136, %16
  %spec.select = select i1 %cmp138, i32 0, i32 %conv136
  %spec.select548.idx = zext i1 %cmp138 to i64
  %spec.select548 = getelementptr %struct.bio_vec, %struct.bio_vec* %bvec.0595, i64 %spec.select548.idx
  %sub143 = sub i64 %bytes.addr.3597, %cond121
  %tobool96.not = icmp eq i64 %sub143, 0
  br i1 %tobool96.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %.pre = load %struct.bio_vec*, %struct.bio_vec** %bvec89, align 8
  %phi.cast = zext i32 %spec.select to i64
  store i64 %phi.cast, i64* %iov_offset94, align 8
  %sub.ptr.lhs.cast152 = ptrtoint %struct.bio_vec* %spec.select548 to i64
  %sub.ptr.rhs.cast153 = ptrtoint %struct.bio_vec* %.pre to i64
  %sub.ptr.sub154 = sub i64 %sub.ptr.lhs.cast152, %sub.ptr.rhs.cast153
  %sub.ptr.div155 = ashr exact i64 %sub.ptr.sub154, 4
  %nr_segs156 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %17 = load i64, i64* %nr_segs156, align 8
  %sub157 = sub i64 %17, %sub.ptr.div155
  store i64 %sub157, i64* %nr_segs156, align 8
  store %struct.bio_vec* %spec.select548, %struct.bio_vec** %bvec89, align 8
  br label %if.end349

if.else159:                                       ; preds = %if.else
  %call160 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call160, label %if.then161, label %if.else215

if.then161:                                       ; preds = %if.else159
  %18 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %kvec162 = bitcast %union.anon* %18 to %struct.kvec**
  %19 = load %struct.kvec*, %struct.kvec** %kvec162, align 8
  %iov_offset167 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %20 = load i64, i64* %iov_offset167, align 8
  br label %do.body168

do.body168:                                       ; preds = %if.end201, %if.then161
  %kvec.0 = phi %struct.kvec* [ %19, %if.then161 ], [ %incdec.ptr202, %if.end201 ]
  %off165.0 = phi i64 [ 0, %if.then161 ], [ %off165.1, %if.end201 ]
  %skip166.0 = phi i64 [ %20, %if.then161 ], [ 0, %if.end201 ]
  %sum.5 = phi i32 [ %0, %if.then161 ], [ %sum.6, %if.end201 ]
  %bytes.addr.4 = phi i64 [ %bytes.addr.0, %if.then161 ], [ %bytes.addr.5, %if.end201 ]
  %iov_len169 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 1
  %21 = load i64, i64* %iov_len169, align 8
  %sub170 = sub i64 %21, %skip166.0
  %cmp172 = icmp ult i64 %bytes.addr.4, %sub170
  %cond177 = select i1 %cmp172, i64 %bytes.addr.4, i64 %sub170
  %tobool178.not = icmp eq i64 %cond177, 0
  br i1 %tobool178.not, label %if.end201, label %if.then186, !prof !8

if.then186:                                       ; preds = %do.body168
  %iov_base187 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 0
  %22 = load i8*, i8** %iov_base187, align 8
  %add.ptr188 = getelementptr i8, i8* %22, i64 %skip166.0
  %add.ptr190 = getelementptr i8, i8* %addr, i64 %off165.0
  %call191 = call fastcc i32 @csum_and_memcpy(i8* noundef %add.ptr190, i8* noundef %add.ptr188, i64 noundef %cond177, i32 noundef %sum.5, i64 noundef %off165.0) #18
  %add193 = add i64 %cond177, %off165.0
  %add194 = add i64 %cond177, %skip166.0
  %sub195 = sub i64 %bytes.addr.4, %cond177
  %23 = load i64, i64* %iov_len169, align 8
  %cmp197 = icmp ult i64 %add194, %23
  br i1 %cmp197, label %do.end205, label %if.end201

if.end201:                                        ; preds = %if.then186, %do.body168
  %off165.1 = phi i64 [ %add193, %if.then186 ], [ %off165.0, %do.body168 ]
  %sum.6 = phi i32 [ %call191, %if.then186 ], [ %sum.5, %do.body168 ]
  %bytes.addr.5 = phi i64 [ %sub195, %if.then186 ], [ %bytes.addr.4, %do.body168 ]
  %incdec.ptr202 = getelementptr %struct.kvec, %struct.kvec* %kvec.0, i64 1
  %tobool204.not = icmp eq i64 %bytes.addr.5, 0
  br i1 %tobool204.not, label %do.end205, label %do.body168

do.end205:                                        ; preds = %if.then186, %if.end201
  %kvec.1 = phi %struct.kvec* [ %kvec.0, %if.then186 ], [ %incdec.ptr202, %if.end201 ]
  %off165.2 = phi i64 [ %add193, %if.then186 ], [ %off165.1, %if.end201 ]
  %skip166.1 = phi i64 [ %add194, %if.then186 ], [ 0, %if.end201 ]
  %sum.7 = phi i32 [ %call191, %if.then186 ], [ %sum.6, %if.end201 ]
  store i64 %skip166.1, i64* %iov_offset167, align 8
  %24 = load %struct.kvec*, %struct.kvec** %kvec162, align 8
  %sub.ptr.lhs.cast208 = ptrtoint %struct.kvec* %kvec.1 to i64
  %sub.ptr.rhs.cast209 = ptrtoint %struct.kvec* %24 to i64
  %sub.ptr.sub210 = sub i64 %sub.ptr.lhs.cast208, %sub.ptr.rhs.cast209
  %sub.ptr.div211 = ashr exact i64 %sub.ptr.sub210, 4
  %nr_segs212 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %25 = load i64, i64* %nr_segs212, align 8
  %sub213 = sub i64 %25, %sub.ptr.div211
  store i64 %sub213, i64* %nr_segs212, align 8
  store %struct.kvec* %kvec.1, %struct.kvec** %kvec162, align 8
  br label %if.end349

if.else215:                                       ; preds = %if.else159
  %call216 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call216, label %if.then217, label %if.end349

if.then217:                                       ; preds = %if.else215
  %xarray_start = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %26 = load i64, i64* %xarray_start, align 8
  %iov_offset221 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %27 = load i64, i64* %iov_offset221, align 8
  %add222 = add i64 %27, %26
  %div226 = lshr i64 %add222, 12
  %28 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %28) #19
  %29 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %30 = bitcast i8* %29 to i64*, !annotation !13
  store i64 0, i64* %30, align 8, !annotation !13
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %31 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %xarray = bitcast %union.anon* %31 to %struct.xarray**
  %32 = load %struct.xarray*, %struct.xarray** %xarray, align 8
  store %struct.xarray* %32, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %div226, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @__rcu_read_lock() #20
  %call227 = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef -1) #20
  %tobool228.not583 = icmp eq i8* %call227, null
  br i1 %tobool228.not583, label %__out, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then217
  %33 = trunc i64 %add222 to i32
  %conv225 = and i32 %33, 4095
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc341
  %bytes.addr.6588 = phi i64 [ %bytes.addr.8557, %for.inc341 ], [ %bytes.addr.0, %for.body.preheader ]
  %sum.8587 = phi i32 [ %sum.10556, %for.inc341 ], [ %0, %for.body.preheader ]
  %offset223.0586 = phi i32 [ %offset223.3555, %for.inc341 ], [ %conv225, %for.body.preheader ]
  %head.0.in585 = phi i8* [ %call342, %for.inc341 ], [ %call227, %for.body.preheader ]
  %off220.0584 = phi i64 [ %off220.2554, %for.inc341 ], [ 0, %for.body.preheader ]
  %head.0589 = bitcast i8* %head.0.in585 to %struct.page*
  %call230 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %head.0.in585) #18
  br i1 %call230, label %for.inc341, label %if.end232

if.end232:                                        ; preds = %for.body
  %call234 = call fastcc i1 @xa_is_value(i8* noundef nonnull %head.0.in585) #18
  br i1 %call234, label %cleanup338.thread558, label %if.end259, !prof !8

cleanup338.thread558:                             ; preds = %if.end232
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1658; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !43
  br label %__out

if.end259:                                        ; preds = %if.end232
  %index288 = getelementptr inbounds i8, i8* %head.0.in585, i64 32
  %34 = bitcast i8* %index288 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @llvm.usub.sat.i64(i64 %div226, i64 %35)
  %conv297 = trunc i64 %36 to i32
  %cmp300573 = icmp slt i32 %conv297, 1
  br i1 %cmp300573, label %for.body302.preheader, label %for.inc341

for.body302.preheader:                            ; preds = %if.end259
  %sext = shl i64 %36, 32
  %37 = ashr exact i64 %sext, 32
  br label %for.body302

for.cond298:                                      ; preds = %for.body302
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, 1
  br i1 %exitcond.not, label %for.inc341, label %for.body302

for.body302:                                      ; preds = %for.body302.preheader, %for.cond298
  %indvars.iv = phi i64 [ %37, %for.body302.preheader ], [ %indvars.iv.next, %for.cond298 ]
  %bytes.addr.7578 = phi i64 [ %bytes.addr.6588, %for.body302.preheader ], [ %sub329, %for.cond298 ]
  %sum.9577 = phi i32 [ %sum.8587, %for.body302.preheader ], [ %call319, %for.cond298 ]
  %offset223.1575 = phi i32 [ %offset223.0586, %for.body302.preheader ], [ 0, %for.cond298 ]
  %off220.1574 = phi i64 [ %off220.0584, %for.body302.preheader ], [ %add328, %for.cond298 ]
  %add.ptr304 = getelementptr %struct.page, %struct.page* %head.0589, i64 %indvars.iv
  %call305 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr304) #18
  %idx.ext306 = zext i32 %offset223.1575 to i64
  %add.ptr307 = getelementptr i8, i8* %call305, i64 %idx.ext306
  %sub309 = sub nsw i64 4096, %idx.ext306
  %cmp311 = icmp ult i64 %bytes.addr.7578, %sub309
  %cond316 = select i1 %cmp311, i64 %bytes.addr.7578, i64 %sub309
  %add.ptr318 = getelementptr i8, i8* %addr, i64 %off220.1574
  %call319 = call fastcc i32 @csum_and_memcpy(i8* noundef %add.ptr318, i8* noundef %add.ptr307, i64 noundef %cond316, i32 noundef %sum.9577, i64 noundef %off220.1574) #18
  %add328 = add i64 %cond316, %off220.1574
  %sub329 = sub i64 %bytes.addr.7578, %cond316
  %cmp331 = icmp eq i64 %sub329, 0
  br i1 %cmp331, label %__out, label %for.cond298

for.inc341:                                       ; preds = %for.cond298, %if.end259, %for.body
  %bytes.addr.8557 = phi i64 [ %bytes.addr.6588, %for.body ], [ %bytes.addr.6588, %if.end259 ], [ %sub329, %for.cond298 ]
  %sum.10556 = phi i32 [ %sum.8587, %for.body ], [ %sum.8587, %if.end259 ], [ %call319, %for.cond298 ]
  %offset223.3555 = phi i32 [ %offset223.0586, %for.body ], [ %offset223.0586, %if.end259 ], [ 0, %for.cond298 ]
  %off220.2554 = phi i64 [ %off220.0584, %for.body ], [ %off220.0584, %if.end259 ], [ %add328, %for.cond298 ]
  %call342 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef nonnull %xas) #18
  %tobool228.not = icmp eq i8* %call342, null
  br i1 %tobool228.not, label %__out, label %for.body

__out:                                            ; preds = %for.inc341, %for.body302, %if.then217, %cleanup338.thread558
  %off220.3 = phi i64 [ %off220.0584, %cleanup338.thread558 ], [ 0, %if.then217 ], [ %add328, %for.body302 ], [ %off220.2554, %for.inc341 ]
  %sum.11 = phi i32 [ %sum.8587, %cleanup338.thread558 ], [ %0, %if.then217 ], [ %call319, %for.body302 ], [ %sum.10556, %for.inc341 ]
  call fastcc void @rcu_read_unlock() #18
  %38 = load i64, i64* %iov_offset221, align 8
  %add345 = add i64 %38, %off220.3
  store i64 %add345, i64* %iov_offset221, align 8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %28) #19
  br label %if.end349

if.end349:                                        ; preds = %while.end, %if.else215, %__out, %do.end205, %do.end
  %sum.12 = phi i32 [ %sum.2, %do.end ], [ %call124, %while.end ], [ %sum.7, %do.end205 ], [ %sum.11, %__out ], [ %0, %if.else215 ]
  %bytes.addr.9 = phi i64 [ %off.2, %do.end ], [ %add133, %while.end ], [ %off165.2, %do.end205 ], [ %off220.3, %__out ], [ %bytes.addr.0, %if.else215 ]
  %39 = load i64, i64* %count, align 8
  %sub351 = sub i64 %39, %bytes.addr.9
  store i64 %sub351, i64* %count, align 8
  br label %if.end352

if.end352:                                        ; preds = %if.end349, %if.end30
  %sum.13 = phi i32 [ %sum.12, %if.end349 ], [ %0, %if.end30 ]
  %bytes.addr.10 = phi i64 [ %bytes.addr.9, %if.end349 ], [ 0, %if.end30 ]
  store i32 %sum.13, i32* %csum, align 4
  br label %cleanup353

cleanup353:                                       ; preds = %if.end352, %if.then11
  %retval.0 = phi i64 [ 0, %if.then11 ], [ %bytes.addr.10, %if.end352 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @csum_and_copy_from_user(i8* noundef %src, i8* noundef %dst, i32 noundef %len) unnamed_addr #0 {
entry:
  %cmp11.i.i = icmp slt i32 %len, 0
  br i1 %cmp11.i.i, label %copy_from_user.exit.thread, label %copy_from_user.exit, !prof !8

copy_from_user.exit.thread:                       ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !44
  br label %return

copy_from_user.exit:                              ; preds = %entry
  %conv6 = zext i32 %len to i64
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %dst, i8* noundef %src, i64 noundef %conv6) #20
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %copy_from_user.exit
  %call1 = call i32 @csum_partial(i8* noundef %dst, i32 noundef %len, i32 noundef -1) #20
  br label %return

return:                                           ; preds = %copy_from_user.exit.thread, %copy_from_user.exit, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %copy_from_user.exit ], [ 0, %copy_from_user.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @csum_block_add(i32 noundef %csum, i32 noundef %csum2, i32 noundef %offset) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @csum_shift(i32 noundef %csum2, i32 noundef %offset) #18
  %call1 = call fastcc i32 @csum_add(i32 noundef %csum, i32 noundef %call) #18
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @csum_and_memcpy(i8* noundef %to, i8* noundef %from, i64 noundef %len, i32 noundef %sum, i64 noundef %off) unnamed_addr #0 {
entry:
  %conv = trunc i64 %len to i32
  %call = call fastcc i32 @csum_partial_copy_nocheck(i8* noundef %from, i8* noundef %to, i32 noundef %conv) #18
  %conv1 = trunc i64 %off to i32
  %call2 = call fastcc i32 @csum_block_add(i32 noundef %sum, i32 noundef %call, i32 noundef %conv1) #18
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @csum_and_copy_to_iter(i8* noundef %addr, i64 noundef %bytes, i8* nocapture noundef %_csstate, %struct.iov_iter* nocapture noundef %i) local_unnamed_addr #0 {
entry:
  %sum = alloca i32, align 4
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  %call = call fastcc i1 @iov_iter_is_discard(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then10, label %if.end18, !prof !8

if.then10:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1671; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !45
  br label %cleanup373

if.end18:                                         ; preds = %entry
  %csum = bitcast i8* %_csstate to i32*
  %1 = load i32, i32* %csum, align 8
  %off = getelementptr inbounds i8, i8* %_csstate, i64 8
  %2 = bitcast i8* %off to i64*
  %3 = load i64, i64* %2, align 8
  %conv19 = trunc i64 %3 to i32
  %call20 = call fastcc i32 @csum_shift(i32 noundef %1, i32 noundef %conv19) #18
  store i32 %call20, i32* %sum, align 4
  %call21 = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call21, label %if.then29, label %if.else, !prof !8

if.then29:                                        ; preds = %if.end18
  %call30 = call fastcc i64 @csum_and_copy_to_pipe_iter(i8* noundef %addr, i64 noundef %bytes, %struct.iov_iter* noundef %i, i32* noundef nonnull %sum) #18
  %.pre643 = load i32, i32* %sum, align 4
  br label %if.end366

if.else:                                          ; preds = %if.end18
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %4 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %4, %bytes
  br i1 %cmp, label %if.then39, label %if.end41, !prof !8

if.then39:                                        ; preds = %if.else
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.else
  %bytes.addr.0 = phi i64 [ %4, %if.then39 ], [ %bytes, %if.else ]
  %tobool42.not = icmp eq i64 %bytes.addr.0, 0
  br i1 %tobool42.not, label %if.end366, label %if.then50, !prof !8

if.then50:                                        ; preds = %if.end41
  %call51 = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call51, label %if.then59, label %if.else99, !prof !9

if.then59:                                        ; preds = %if.then50
  %iov60 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %5 = load %struct.iovec*, %struct.iovec** %iov60, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %6 = load i64, i64* %iov_offset, align 8
  br label %do.body

do.body:                                          ; preds = %if.end93, %if.then59
  %call78633 = phi i32 [ %call20, %if.then59 ], [ %call78632, %if.end93 ]
  %skip.0 = phi i64 [ %6, %if.then59 ], [ 0, %if.end93 ]
  %off61.0 = phi i64 [ 0, %if.then59 ], [ %off61.1, %if.end93 ]
  %iov.0 = phi %struct.iovec* [ %5, %if.then59 ], [ %incdec.ptr, %if.end93 ]
  %bytes.addr.1 = phi i64 [ %bytes.addr.0, %if.then59 ], [ %bytes.addr.2, %if.end93 ]
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 1
  %7 = load i64, i64* %iov_len, align 8
  %sub = sub i64 %7, %skip.0
  %cmp63 = icmp ult i64 %bytes.addr.1, %sub
  %cond = select i1 %cmp63, i64 %bytes.addr.1, i64 %sub
  %tobool65.not = icmp eq i64 %cond, 0
  br i1 %tobool65.not, label %if.end93, label %if.then73, !prof !8

if.then73:                                        ; preds = %do.body
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0, i64 0, i32 0
  %8 = load i8*, i8** %iov_base, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %skip.0
  %add.ptr74 = getelementptr i8, i8* %addr, i64 %off61.0
  %conv75 = trunc i64 %cond to i32
  %call76 = call fastcc i32 @csum_and_copy_to_user(i8* noundef %add.ptr74, i8* noundef %add.ptr, i32 noundef %conv75) #18
  %conv77 = trunc i64 %off61.0 to i32
  %call78 = call fastcc i32 @csum_block_add(i32 noundef %call78633, i32 noundef %call76, i32 noundef %conv77) #18
  %tobool80.not = icmp eq i32 %call76, 0
  %sub85 = select i1 %tobool80.not, i64 0, i64 %cond
  %add = add i64 %sub85, %off61.0
  %add86 = add i64 %sub85, %skip.0
  %sub87 = sub i64 %bytes.addr.1, %sub85
  %9 = load i64, i64* %iov_len, align 8
  %cmp89 = icmp ult i64 %add86, %9
  br i1 %cmp89, label %do.end, label %if.end93

if.end93:                                         ; preds = %if.then73, %do.body
  %call78632 = phi i32 [ %call78, %if.then73 ], [ %call78633, %do.body ]
  %off61.1 = phi i64 [ %add, %if.then73 ], [ %off61.0, %do.body ]
  %bytes.addr.2 = phi i64 [ %sub87, %if.then73 ], [ %bytes.addr.1, %do.body ]
  %incdec.ptr = getelementptr %struct.iovec, %struct.iovec* %iov.0, i64 1
  %tobool94.not = icmp eq i64 %bytes.addr.2, 0
  br i1 %tobool94.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.then73, %if.end93
  %call78634 = phi i32 [ %call78, %if.then73 ], [ %call78632, %if.end93 ]
  %skip.1 = phi i64 [ %add86, %if.then73 ], [ 0, %if.end93 ]
  %off61.2 = phi i64 [ %add, %if.then73 ], [ %off61.1, %if.end93 ]
  %iov.1 = phi %struct.iovec* [ %iov.0, %if.then73 ], [ %incdec.ptr, %if.end93 ]
  store i64 %skip.1, i64* %iov_offset, align 8
  %10 = load %struct.iovec*, %struct.iovec** %iov60, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.iovec* %iov.1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.iovec* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 4
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %11 = load i64, i64* %nr_segs, align 8
  %sub97 = sub i64 %11, %sub.ptr.div
  store i64 %sub97, i64* %nr_segs, align 8
  store %struct.iovec* %iov.1, %struct.iovec** %iov60, align 8
  br label %if.end362

if.else99:                                        ; preds = %if.then50
  %call100 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call100, label %while.body.preheader, label %if.else172

while.body.preheader:                             ; preds = %if.else99
  %12 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec102 = bitcast %union.anon* %12 to %struct.bio_vec**
  %13 = load %struct.bio_vec*, %struct.bio_vec** %bvec102, align 8
  %iov_offset107 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %14 = load i64, i64* %iov_offset107, align 8
  %conv108 = trunc i64 %14 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %bytes.addr.3626 = phi i64 [ %sub156, %while.body ], [ %bytes.addr.0, %while.body.preheader ]
  %bvec.0625 = phi %struct.bio_vec* [ %spec.select572, %while.body ], [ %13, %while.body.preheader ]
  %off105.0624 = phi i64 [ %add146, %while.body ], [ 0, %while.body.preheader ]
  %skip106.0623 = phi i32 [ %spec.select, %while.body ], [ %conv108, %while.body.preheader ]
  %call137620622 = phi i32 [ %call137, %while.body ], [ %call20, %while.body.preheader ]
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0625, i64 0, i32 2
  %15 = load i32, i32* %bv_offset, align 4
  %add110 = add i32 %15, %skip106.0623
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0625, i64 0, i32 0
  %16 = load %struct.page*, %struct.page** %bv_page, align 8
  %conv111 = zext i32 %add110 to i64
  %div = lshr i64 %conv111, 12
  %add.ptr112 = getelementptr %struct.page, %struct.page* %16, i64 %div
  %call113 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr112) #18
  %rem = and i64 %conv111, 4095
  %add.ptr115 = getelementptr i8, i8* %call113, i64 %rem
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec.0625, i64 0, i32 1
  %17 = load i32, i32* %bv_len, align 8
  %sub116 = sub i32 %17, %skip106.0623
  %conv117 = zext i32 %sub116 to i64
  %cmp119 = icmp ult i64 %bytes.addr.3626, %conv117
  %cond124 = select i1 %cmp119, i64 %bytes.addr.3626, i64 %conv117
  %sub127 = sub nuw nsw i64 4096, %rem
  %cmp129 = icmp ult i64 %cond124, %sub127
  %cond134 = select i1 %cmp129, i64 %cond124, i64 %sub127
  %add.ptr136 = getelementptr i8, i8* %addr, i64 %off105.0624
  %call137 = call fastcc i32 @csum_and_memcpy(i8* noundef %add.ptr115, i8* noundef %add.ptr136, i64 noundef %cond134, i32 noundef %call137620622, i64 noundef %off105.0624) #18
  %add146 = add i64 %cond134, %off105.0624
  %18 = trunc i64 %cond134 to i32
  %conv149 = add i32 %skip106.0623, %18
  %19 = load i32, i32* %bv_len, align 8
  %cmp151 = icmp eq i32 %conv149, %19
  %spec.select = select i1 %cmp151, i32 0, i32 %conv149
  %spec.select572.idx = zext i1 %cmp151 to i64
  %spec.select572 = getelementptr %struct.bio_vec, %struct.bio_vec* %bvec.0625, i64 %spec.select572.idx
  %sub156 = sub i64 %bytes.addr.3626, %cond134
  %tobool109.not = icmp eq i64 %sub156, 0
  br i1 %tobool109.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %.pre = load %struct.bio_vec*, %struct.bio_vec** %bvec102, align 8
  %phi.cast = zext i32 %spec.select to i64
  store i32 %call137, i32* %sum, align 4
  store i64 %phi.cast, i64* %iov_offset107, align 8
  %sub.ptr.lhs.cast165 = ptrtoint %struct.bio_vec* %spec.select572 to i64
  %sub.ptr.rhs.cast166 = ptrtoint %struct.bio_vec* %.pre to i64
  %sub.ptr.sub167 = sub i64 %sub.ptr.lhs.cast165, %sub.ptr.rhs.cast166
  %sub.ptr.div168 = ashr exact i64 %sub.ptr.sub167, 4
  %nr_segs169 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %20 = load i64, i64* %nr_segs169, align 8
  %sub170 = sub i64 %20, %sub.ptr.div168
  store i64 %sub170, i64* %nr_segs169, align 8
  store %struct.bio_vec* %spec.select572, %struct.bio_vec** %bvec102, align 8
  br label %if.end362

if.else172:                                       ; preds = %if.else99
  %call173 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call173, label %if.then174, label %if.else228

if.then174:                                       ; preds = %if.else172
  %21 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %kvec175 = bitcast %union.anon* %21 to %struct.kvec**
  %22 = load %struct.kvec*, %struct.kvec** %kvec175, align 8
  %iov_offset180 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %23 = load i64, i64* %iov_offset180, align 8
  br label %do.body181

do.body181:                                       ; preds = %if.end214, %if.then174
  %call204617 = phi i32 [ %call20, %if.then174 ], [ %call204616, %if.end214 ]
  %kvec.0 = phi %struct.kvec* [ %22, %if.then174 ], [ %incdec.ptr215, %if.end214 ]
  %off178.0 = phi i64 [ 0, %if.then174 ], [ %off178.1, %if.end214 ]
  %skip179.0 = phi i64 [ %23, %if.then174 ], [ 0, %if.end214 ]
  %bytes.addr.4 = phi i64 [ %bytes.addr.0, %if.then174 ], [ %bytes.addr.5, %if.end214 ]
  %iov_len182 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 1
  %24 = load i64, i64* %iov_len182, align 8
  %sub183 = sub i64 %24, %skip179.0
  %cmp185 = icmp ult i64 %bytes.addr.4, %sub183
  %cond190 = select i1 %cmp185, i64 %bytes.addr.4, i64 %sub183
  %tobool191.not = icmp eq i64 %cond190, 0
  br i1 %tobool191.not, label %if.end214, label %if.then199, !prof !8

if.then199:                                       ; preds = %do.body181
  %iov_base200 = getelementptr inbounds %struct.kvec, %struct.kvec* %kvec.0, i64 0, i32 0
  %25 = load i8*, i8** %iov_base200, align 8
  %add.ptr201 = getelementptr i8, i8* %25, i64 %skip179.0
  %add.ptr203 = getelementptr i8, i8* %addr, i64 %off178.0
  %call204 = call fastcc i32 @csum_and_memcpy(i8* noundef %add.ptr201, i8* noundef %add.ptr203, i64 noundef %cond190, i32 noundef %call204617, i64 noundef %off178.0) #18
  %add206 = add i64 %cond190, %off178.0
  %add207 = add i64 %cond190, %skip179.0
  %sub208 = sub i64 %bytes.addr.4, %cond190
  %26 = load i64, i64* %iov_len182, align 8
  %cmp210 = icmp ult i64 %add207, %26
  br i1 %cmp210, label %do.end218, label %if.end214

if.end214:                                        ; preds = %if.then199, %do.body181
  %call204616 = phi i32 [ %call204, %if.then199 ], [ %call204617, %do.body181 ]
  %off178.1 = phi i64 [ %add206, %if.then199 ], [ %off178.0, %do.body181 ]
  %bytes.addr.5 = phi i64 [ %sub208, %if.then199 ], [ %bytes.addr.4, %do.body181 ]
  %incdec.ptr215 = getelementptr %struct.kvec, %struct.kvec* %kvec.0, i64 1
  %tobool217.not = icmp eq i64 %bytes.addr.5, 0
  br i1 %tobool217.not, label %do.end218, label %do.body181

do.end218:                                        ; preds = %if.then199, %if.end214
  %call204618 = phi i32 [ %call204, %if.then199 ], [ %call204616, %if.end214 ]
  %kvec.1 = phi %struct.kvec* [ %kvec.0, %if.then199 ], [ %incdec.ptr215, %if.end214 ]
  %off178.2 = phi i64 [ %add206, %if.then199 ], [ %off178.1, %if.end214 ]
  %skip179.1 = phi i64 [ %add207, %if.then199 ], [ 0, %if.end214 ]
  store i32 %call204618, i32* %sum, align 4
  store i64 %skip179.1, i64* %iov_offset180, align 8
  %27 = load %struct.kvec*, %struct.kvec** %kvec175, align 8
  %sub.ptr.lhs.cast221 = ptrtoint %struct.kvec* %kvec.1 to i64
  %sub.ptr.rhs.cast222 = ptrtoint %struct.kvec* %27 to i64
  %sub.ptr.sub223 = sub i64 %sub.ptr.lhs.cast221, %sub.ptr.rhs.cast222
  %sub.ptr.div224 = ashr exact i64 %sub.ptr.sub223, 4
  %nr_segs225 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %28 = load i64, i64* %nr_segs225, align 8
  %sub226 = sub i64 %28, %sub.ptr.div224
  store i64 %sub226, i64* %nr_segs225, align 8
  store %struct.kvec* %kvec.1, %struct.kvec** %kvec175, align 8
  br label %if.end362

if.else228:                                       ; preds = %if.else172
  %call229 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call229, label %if.then230, label %if.end362

if.then230:                                       ; preds = %if.else228
  %xarray_start = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %29 = load i64, i64* %xarray_start, align 8
  %iov_offset234 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %30 = load i64, i64* %iov_offset234, align 8
  %add235 = add i64 %30, %29
  %div239 = lshr i64 %add235, 12
  %31 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %31) #19
  %32 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %33 = bitcast i8* %32 to i64*, !annotation !13
  store i64 0, i64* %33, align 8, !annotation !13
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %34 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %xarray = bitcast %union.anon* %34 to %struct.xarray**
  %35 = load %struct.xarray*, %struct.xarray** %xarray, align 8
  store %struct.xarray* %35, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %div239, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @__rcu_read_lock() #20
  %call240 = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef -1) #20
  %tobool241.not607 = icmp eq i8* %call240, null
  br i1 %tobool241.not607, label %__out.loopexit585, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then230
  %36 = trunc i64 %add235 to i32
  %conv238 = and i32 %36, 4095
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc354
  %bytes.addr.6612 = phi i64 [ %bytes.addr.8579, %for.inc354 ], [ %bytes.addr.0, %for.body.preheader ]
  %offset236.0611 = phi i32 [ %offset236.3578, %for.inc354 ], [ %conv238, %for.body.preheader ]
  %head.0.in610 = phi i8* [ %call355, %for.inc354 ], [ %call240, %for.body.preheader ]
  %off233.0609 = phi i64 [ %off233.2577, %for.inc354 ], [ 0, %for.body.preheader ]
  %call332591.lcssa603608 = phi i32 [ %call332591.lcssa602, %for.inc354 ], [ %call20, %for.body.preheader ]
  %head.0613 = bitcast i8* %head.0.in610 to %struct.page*
  %call243 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %head.0.in610) #18
  br i1 %call243, label %for.inc354, label %if.end245

if.end245:                                        ; preds = %for.body
  %call247 = call fastcc i1 @xa_is_value(i8* noundef nonnull %head.0.in610) #18
  br i1 %call247, label %cleanup351.thread580, label %if.end272, !prof !8

cleanup351.thread580:                             ; preds = %if.end245
  store i32 %call332591.lcssa603608, i32* %sum, align 4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1685; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !46
  br label %__out

if.end272:                                        ; preds = %if.end245
  %index301 = getelementptr inbounds i8, i8* %head.0.in610, i64 32
  %37 = bitcast i8* %index301 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @llvm.usub.sat.i64(i64 %div239, i64 %38)
  %conv310 = trunc i64 %39 to i32
  %cmp313592 = icmp slt i32 %conv310, 1
  br i1 %cmp313592, label %for.body315.preheader, label %for.inc354

for.body315.preheader:                            ; preds = %if.end272
  %sext = shl i64 %39, 32
  %40 = ashr exact i64 %sext, 32
  br label %for.body315

for.cond311:                                      ; preds = %for.body315
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, 1
  br i1 %exitcond.not, label %for.inc354, label %for.body315

for.body315:                                      ; preds = %for.body315.preheader, %for.cond311
  %indvars.iv = phi i64 [ %40, %for.body315.preheader ], [ %indvars.iv.next, %for.cond311 ]
  %bytes.addr.7597 = phi i64 [ %bytes.addr.6612, %for.body315.preheader ], [ %sub342, %for.cond311 ]
  %offset236.1595 = phi i32 [ %offset236.0611, %for.body315.preheader ], [ 0, %for.cond311 ]
  %off233.1594 = phi i64 [ %off233.0609, %for.body315.preheader ], [ %add341, %for.cond311 ]
  %call332591593 = phi i32 [ %call332591.lcssa603608, %for.body315.preheader ], [ %call332, %for.cond311 ]
  %add.ptr317 = getelementptr %struct.page, %struct.page* %head.0613, i64 %indvars.iv
  %call318 = call fastcc i8* @kmap_local_page(%struct.page* noundef %add.ptr317) #18
  %idx.ext319 = zext i32 %offset236.1595 to i64
  %add.ptr320 = getelementptr i8, i8* %call318, i64 %idx.ext319
  %sub322 = sub nsw i64 4096, %idx.ext319
  %cmp324 = icmp ult i64 %bytes.addr.7597, %sub322
  %cond329 = select i1 %cmp324, i64 %bytes.addr.7597, i64 %sub322
  %add.ptr331 = getelementptr i8, i8* %addr, i64 %off233.1594
  %call332 = call fastcc i32 @csum_and_memcpy(i8* noundef %add.ptr320, i8* noundef %add.ptr331, i64 noundef %cond329, i32 noundef %call332591593, i64 noundef %off233.1594) #18
  %add341 = add i64 %cond329, %off233.1594
  %sub342 = sub i64 %bytes.addr.7597, %cond329
  %cmp344 = icmp eq i64 %sub342, 0
  br i1 %cmp344, label %__out.loopexit, label %for.cond311

for.inc354:                                       ; preds = %for.cond311, %if.end272, %for.body
  %call332591.lcssa602 = phi i32 [ %call332591.lcssa603608, %for.body ], [ %call332591.lcssa603608, %if.end272 ], [ %call332, %for.cond311 ]
  %bytes.addr.8579 = phi i64 [ %bytes.addr.6612, %for.body ], [ %bytes.addr.6612, %if.end272 ], [ %sub342, %for.cond311 ]
  %offset236.3578 = phi i32 [ %offset236.0611, %for.body ], [ %offset236.0611, %if.end272 ], [ 0, %for.cond311 ]
  %off233.2577 = phi i64 [ %off233.0609, %for.body ], [ %off233.0609, %if.end272 ], [ %add341, %for.cond311 ]
  %call355 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef nonnull %xas) #18
  %tobool241.not = icmp eq i8* %call355, null
  br i1 %tobool241.not, label %__out.loopexit585, label %for.body

__out.loopexit:                                   ; preds = %for.body315
  store i32 %call332, i32* %sum, align 4
  br label %__out

__out.loopexit585:                                ; preds = %for.inc354, %if.then230
  %call332591.lcssa603.lcssa = phi i32 [ %call20, %if.then230 ], [ %call332591.lcssa602, %for.inc354 ]
  %off233.0.lcssa = phi i64 [ 0, %if.then230 ], [ %off233.2577, %for.inc354 ]
  store i32 %call332591.lcssa603.lcssa, i32* %sum, align 4
  br label %__out

__out:                                            ; preds = %__out.loopexit585, %__out.loopexit, %cleanup351.thread580
  %41 = phi i32 [ %call332591.lcssa603608, %cleanup351.thread580 ], [ %call332, %__out.loopexit ], [ %call332591.lcssa603.lcssa, %__out.loopexit585 ]
  %off233.3 = phi i64 [ %off233.0609, %cleanup351.thread580 ], [ %add341, %__out.loopexit ], [ %off233.0.lcssa, %__out.loopexit585 ]
  call fastcc void @rcu_read_unlock() #18
  %42 = load i64, i64* %iov_offset234, align 8
  %add358 = add i64 %42, %off233.3
  store i64 %add358, i64* %iov_offset234, align 8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %31) #19
  br label %if.end362

if.end362:                                        ; preds = %while.end, %if.else228, %__out, %do.end218, %do.end
  %43 = phi i32 [ %call78634, %do.end ], [ %call137, %while.end ], [ %call204618, %do.end218 ], [ %41, %__out ], [ %call20, %if.else228 ]
  %bytes.addr.9 = phi i64 [ %off61.2, %do.end ], [ %add146, %while.end ], [ %off178.2, %do.end218 ], [ %off233.3, %__out ], [ %bytes.addr.0, %if.else228 ]
  %44 = load i64, i64* %count, align 8
  %sub364 = sub i64 %44, %bytes.addr.9
  store i64 %sub364, i64* %count, align 8
  br label %if.end366

if.end366:                                        ; preds = %if.end41, %if.end362, %if.then29
  %45 = phi i32 [ %.pre643, %if.then29 ], [ %43, %if.end362 ], [ %call20, %if.end41 ]
  %bytes.addr.10 = phi i64 [ %call30, %if.then29 ], [ %bytes.addr.9, %if.end362 ], [ 0, %if.end41 ]
  %46 = load i64, i64* %2, align 8
  %conv368 = trunc i64 %46 to i32
  %call369 = call fastcc i32 @csum_shift(i32 noundef %45, i32 noundef %conv368) #18
  store i32 %call369, i32* %csum, align 8
  %add372 = add i64 %46, %bytes.addr.10
  store i64 %add372, i64* %2, align 8
  br label %cleanup373

cleanup373:                                       ; preds = %if.end366, %if.then10
  %retval.0 = phi i64 [ 0, %if.then10 ], [ %bytes.addr.10, %if.end366 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @csum_shift(i32 noundef %sum, i32 noundef %offset) unnamed_addr #11 {
entry:
  %and = and i32 %offset, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @ror32(i32 noundef %sum) #18
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %sum, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @csum_and_copy_to_pipe_iter(i8* noundef %addr, i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i, i32* nocapture noundef %sump) unnamed_addr #0 {
entry:
  %i_head = alloca i32, align 4
  %r = alloca i64, align 8
  %0 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe1 = bitcast %union.anon* %0 to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe1, align 8
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 6
  %2 = load i32, i32* %ring_size, align 4
  %sub = add i32 %2, -1
  %3 = load i32, i32* %sump, align 4
  %4 = bitcast i32* %i_head to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #19
  store i32 0, i32* %i_head, align 4, !annotation !13
  %5 = bitcast i64* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #19
  store i64 0, i64* %r, align 8, !annotation !13
  %call = call fastcc i1 @sanity(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i64 @push_pipe(%struct.iov_iter* noundef %i, i64 noundef %bytes, i32* noundef nonnull %i_head, i64* noundef nonnull %r) #18
  %r.promoted = load i64, i64* %r, align 8
  %i_head.promoted = load i32, i32* %i_head, align 4
  %tobool.not48 = icmp eq i64 %call2, 0
  br i1 %tobool.not48, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  %6 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5
  %head = bitcast %union.anon.62* %6 to i32*
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %sub3.peel = sub i64 4096, %r.promoted
  %cmp.peel = icmp ult i64 %call2, %sub3.peel
  %cond.peel = select i1 %cmp.peel, i64 %call2, i64 %sub3.peel
  %7 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and.peel = and i32 %i_head.promoted, %sub
  %idxprom.peel = zext i32 %and.peel to i64
  %page.peel = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %7, i64 %idxprom.peel, i32 0
  %8 = load %struct.page*, %struct.page** %page.peel, align 8
  %call4.peel = call fastcc i8* @kmap_local_page(%struct.page* noundef %8) #18
  %add.ptr.peel = getelementptr i8, i8* %call4.peel, i64 %r.promoted
  %call6.peel = call fastcc i32 @csum_and_memcpy(i8* noundef %add.ptr.peel, i8* noundef %addr, i64 noundef %cond.peel, i32 noundef %3, i64 noundef 0) #18
  store i32 %i_head.promoted, i32* %head, align 8
  %add.peel = add i64 %cond.peel, %r.promoted
  store i64 %add.peel, i64* %iov_offset, align 8
  %sub10.peel = sub i64 %call2, %cond.peel
  %tobool.not.peel = icmp eq i64 %sub10.peel, 0
  br i1 %tobool.not.peel, label %while.end, label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %bytes.addr.052 = phi i64 [ %sub10, %while.body ], [ %sub10.peel, %while.body.lr.ph ]
  %sum.051 = phi i32 [ %call6, %while.body ], [ %call6.peel, %while.body.lr.ph ]
  %off.050 = phi i64 [ %add11, %while.body ], [ %cond.peel, %while.body.lr.ph ]
  %inc4749.in = phi i32 [ %inc4749, %while.body ], [ %i_head.promoted, %while.body.lr.ph ]
  %inc4749 = add i32 %inc4749.in, 1
  %cmp = icmp ult i64 %bytes.addr.052, 4096
  %cond = select i1 %cmp, i64 %bytes.addr.052, i64 4096
  %9 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %inc4749, %sub
  %idxprom = zext i32 %and to i64
  %page = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %9, i64 %idxprom, i32 0
  %10 = load %struct.page*, %struct.page** %page, align 8
  %call4 = call fastcc i8* @kmap_local_page(%struct.page* noundef %10) #18
  %add.ptr5 = getelementptr i8, i8* %addr, i64 %off.050
  %call6 = call fastcc i32 @csum_and_memcpy(i8* noundef %call4, i8* noundef %add.ptr5, i64 noundef %cond, i32 noundef %sum.051, i64 noundef %off.050) #18
  store i32 %inc4749, i32* %head, align 8
  store i64 %cond, i64* %iov_offset, align 8
  %sub10 = sub i64 %bytes.addr.052, %cond
  %add11 = add i64 %cond, %off.050
  %tobool.not = icmp eq i64 %sub10, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !47

while.end:                                        ; preds = %while.body, %while.body.lr.ph, %if.end
  %off.0.lcssa = phi i64 [ 0, %if.end ], [ %cond.peel, %while.body.lr.ph ], [ %add11, %while.body ]
  %sum.0.lcssa = phi i32 [ %3, %if.end ], [ %call6.peel, %while.body.lr.ph ], [ %call6, %while.body ]
  store i32 %sum.0.lcssa, i32* %sump, align 4
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %11 = load i64, i64* %count, align 8
  %sub12 = sub i64 %11, %off.0.lcssa
  store i64 %sub12, i64* %count, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i64 [ %off.0.lcssa, %while.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #19
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @csum_and_copy_to_user(i8* noundef %src, i8* noundef %dst, i32 noundef %len) unnamed_addr #0 {
entry:
  %call = call i32 @csum_partial(i8* noundef %src, i32 noundef %len, i32 noundef -1) #20
  %cmp11.i.i = icmp slt i32 %len, 0
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !8

check_copy_size.exit.i:                           ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !44
  br label %copy_to_user.exit

if.then.i:                                        ; preds = %entry
  %conv6 = zext i32 %len to i64
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %dst, i8* noundef %src, i64 noundef %conv6) #20
  %phi.cmp = icmp eq i64 %call2.i, 0
  %phi.sel = select i1 %phi.cmp, i32 %call, i32 0
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %n.addr.0.i = phi i32 [ %phi.sel, %if.then.i ], [ 0, %check_copy_size.exit.i ]
  ret i32 %n.addr.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @hash_and_copy_to_iter(i8* nocapture noundef readnone %addr, i64 noundef %bytes, i8* nocapture noundef readnone %hashp, %struct.iov_iter* nocapture noundef readnone %i) local_unnamed_addr #4 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @iov_iter_npages(%struct.iov_iter* nocapture noundef readonly %i, i32 noundef %maxpages) local_unnamed_addr #0 {
entry:
  %iter_head = alloca i32, align 4
  %off = alloca i64, align 8
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %return, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.then14, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %call5 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call5, label %if.then14, label %if.end16, !prof !9

if.then14:                                        ; preds = %if.end, %lor.rhs
  %call15 = call fastcc i32 @iov_npages(%struct.iov_iter* noundef %i, i32 noundef %maxpages) #18
  br label %return

if.end16:                                         ; preds = %lor.rhs
  %call17 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %call19 = call fastcc i32 @bvec_npages(%struct.iov_iter* noundef %i, i32 noundef %maxpages) #18
  br label %return

if.end20:                                         ; preds = %if.end16
  %call21 = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %i) #18
  br i1 %call21, label %if.then22, label %if.end31

if.then22:                                        ; preds = %if.end20
  %1 = bitcast i32* %iter_head to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #19
  store i32 0, i32* %iter_head, align 4, !annotation !13
  %2 = bitcast i64* %off to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #19
  %call23 = call fastcc i1 @sanity(%struct.iov_iter* noundef %i) #18
  br i1 %call23, label %if.end25, label %cleanup

if.end25:                                         ; preds = %if.then22
  call fastcc void @data_start(%struct.iov_iter* noundef %i, i32* noundef nonnull %iter_head, i64* noundef nonnull %off) #18
  %3 = load i32, i32* %iter_head, align 4
  %4 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe = bitcast %union.anon* %4 to %struct.pipe_inode_info**
  %5 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %5, i64 0, i32 4
  %6 = load i32, i32* %tail, align 4
  %call27 = call fastcc i32 @pipe_space_for_user(i32 noundef %3, i32 noundef %6, %struct.pipe_inode_info* noundef %5) #18
  %cmp = icmp slt i32 %call27, %maxpages
  %cond = select i1 %cmp, i32 %call27, i32 %maxpages
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end25
  %retval.0 = phi i32 [ %cond, %if.end25 ], [ 0, %if.then22 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #19
  br label %return

if.end31:                                         ; preds = %if.end20
  %call32 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %i) #18
  br i1 %call32, label %if.then33, label %return

if.then33:                                        ; preds = %if.end31
  %xarray_start = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %7 = load i64, i64* %xarray_start, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %8 = load i64, i64* %iov_offset, align 8
  %add = add i64 %8, %7
  %conv34 = and i64 %add, 4095
  %add38 = add i64 %0, 4095
  %sub = add i64 %add38, %conv34
  %div = lshr i64 %sub, 12
  %conv40 = trunc i64 %div to i32
  %cmp42 = icmp slt i32 %conv40, %maxpages
  %cond47 = select i1 %cmp42, i32 %conv40, i32 %maxpages
  br label %return

return:                                           ; preds = %if.end31, %entry, %if.then33, %cleanup, %if.then18, %if.then14
  %retval.1 = phi i32 [ %call15, %if.then14 ], [ %call19, %if.then18 ], [ %retval.0, %cleanup ], [ %cond47, %if.then33 ], [ 0, %entry ], [ 0, %if.end31 ]
  ret i32 %retval.1
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @iov_npages(%struct.iov_iter* nocapture noundef readonly %i, i32 noundef %maxpages) unnamed_addr #9 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %tobool.not53 = icmp eq i64 %0, 0
  br i1 %tobool.not53, label %cleanup18, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %iov = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %1 = load %struct.iovec*, %struct.iovec** %iov, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %2 = load i64, i64* %iov_offset, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %skip.057 = phi i64 [ 0, %for.inc ], [ %2, %for.body.preheader ]
  %size.056 = phi i64 [ %size.1, %for.inc ], [ %0, %for.body.preheader ]
  %npages.055 = phi i32 [ %npages.1, %for.inc ], [ 0, %for.body.preheader ]
  %p.054 = phi %struct.iovec* [ %incdec.ptr, %for.inc ], [ %1, %for.body.preheader ]
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %p.054, i64 0, i32 1
  %3 = load i64, i64* %iov_len, align 8
  %sub = sub i64 %3, %skip.057
  %cmp = icmp ult i64 %sub, %size.056
  %cond = select i1 %cmp, i64 %sub, i64 %size.056
  %tobool2.not = icmp eq i64 %cond, 0
  br i1 %tobool2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %p.054, i64 0, i32 0
  %4 = load i8*, i8** %iov_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %skip.057
  %5 = ptrtoint i8* %add.ptr to i64
  %conv = and i64 %5, 4095
  %sub3 = sub i64 %size.056, %cond
  %add = add i64 %cond, 4095
  %sub6 = add i64 %add, %conv
  %div = lshr i64 %sub6, 12
  %6 = trunc i64 %div to i32
  %conv9 = add i32 %npages.055, %6
  %cmp10 = icmp sgt i32 %conv9, %maxpages
  br i1 %cmp10, label %cleanup18, label %for.inc, !prof !8

for.inc:                                          ; preds = %for.body, %if.then
  %npages.1 = phi i32 [ %conv9, %if.then ], [ %npages.055, %for.body ]
  %size.1 = phi i64 [ %sub3, %if.then ], [ %size.056, %for.body ]
  %incdec.ptr = getelementptr %struct.iovec, %struct.iovec* %p.054, i64 1
  %tobool.not = icmp eq i64 %size.1, 0
  br i1 %tobool.not, label %cleanup18, label %for.body

cleanup18:                                        ; preds = %for.inc, %if.then, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ %maxpages, %if.then ], [ %npages.1, %for.inc ]
  ret i32 %retval.2
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @bvec_npages(%struct.iov_iter* nocapture noundef readonly %i, i32 noundef %maxpages) unnamed_addr #9 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %tobool.not45 = icmp eq i64 %0, 0
  br i1 %tobool.not45, label %cleanup18, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec = bitcast %union.anon* %1 to %struct.bio_vec**
  %2 = load %struct.bio_vec*, %struct.bio_vec** %bvec, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %3 = load i64, i64* %iov_offset, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %skip.049 = phi i64 [ 0, %for.inc ], [ %3, %for.body.preheader ]
  %size.048 = phi i64 [ %sub4, %for.inc ], [ %0, %for.body.preheader ]
  %p.047 = phi %struct.bio_vec* [ %incdec.ptr, %for.inc ], [ %2, %for.body.preheader ]
  %npages.046 = phi i32 [ %conv11, %for.inc ], [ 0, %for.body.preheader ]
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %p.047, i64 0, i32 2
  %4 = load i32, i32* %bv_offset, align 4
  %5 = trunc i64 %skip.049 to i32
  %6 = add i32 %4, %5
  %conv1 = and i32 %6, 4095
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %p.047, i64 0, i32 1
  %7 = load i32, i32* %bv_len, align 8
  %conv2 = zext i32 %7 to i64
  %sub = sub i64 %conv2, %skip.049
  %cmp = icmp ult i64 %sub, %size.048
  %cond = select i1 %cmp, i64 %sub, i64 %size.048
  %narrow = add nuw nsw i32 %conv1, 4095
  %add6 = zext i32 %narrow to i64
  %sub8 = add i64 %cond, %add6
  %div = lshr i64 %sub8, 12
  %8 = trunc i64 %div to i32
  %conv11 = add i32 %npages.046, %8
  %cmp12 = icmp sgt i32 %conv11, %maxpages
  br i1 %cmp12, label %cleanup18, label %for.inc

for.inc:                                          ; preds = %for.body
  %sub4 = sub i64 %size.048, %cond
  %incdec.ptr = getelementptr %struct.bio_vec, %struct.bio_vec* %p.047, i64 1
  %tobool.not = icmp eq i64 %sub4, 0
  br i1 %tobool.not, label %cleanup18, label %for.body

cleanup18:                                        ; preds = %for.body, %for.inc, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ %conv11, %for.inc ], [ %maxpages, %for.body ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @sanity(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe1 = bitcast %union.anon* %0 to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe1, align 8
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 3
  %2 = load i32, i32* %head, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 4
  %3 = load i32, i32* %tail, align 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 6
  %4 = load i32, i32* %ring_size, align 4
  %sub = add i32 %4, -1
  %5 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5
  %head2 = bitcast %union.anon.62* %5 to i32*
  %6 = load i32, i32* %head2, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %7 = load i64, i64* %iov_offset, align 8
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @pipe_occupancy(i32 noundef %2, i32 noundef %3) #18
  %cmp = icmp ne i32 %call, 0
  %sub6 = add i32 %2, -1
  %cmp7.not = icmp eq i32 %6, %sub6
  %or.cond = select i1 %cmp, i1 %cmp7.not, i1 false
  br i1 %or.cond, label %if.end17, label %do.end, !prof !48

if.end17:                                         ; preds = %if.then
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  %8 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %6, %sub
  %idxprom = zext i32 %and to i64
  %offset = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom, i32 1
  %9 = load i32, i32* %offset, align 8
  %len = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom, i32 2
  %10 = load i32, i32* %len, align 4
  %add = add i32 %10, %9
  %conv18 = zext i32 %add to i64
  %cmp20.not = icmp eq i64 %7, %conv18
  br i1 %cmp20.not, label %cleanup84, label %do.end

if.else:                                          ; preds = %entry
  %cmp31.not = icmp eq i32 %6, %2
  br i1 %cmp31.not, label %cleanup84, label %do.end

do.end:                                           ; preds = %if.end17, %if.then, %if.else
  %call37 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i64 noundef %7) #21
  %11 = load i32, i32* %ring_size, align 4
  %call43 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 noundef %2, i32 noundef %3, i32 noundef %11) #21
  %12 = load i32, i32* %ring_size, align 4
  %cmp45131.not = icmp eq i32 %12, 0
  br i1 %cmp45131.not, label %if.then74, label %do.end49.lr.ph

do.end49.lr.ph:                                   ; preds = %do.end
  %bufs51 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  br label %do.end49

do.end49:                                         ; preds = %do.end49.lr.ph, %do.end49
  %indvars.iv = phi i64 [ 0, %do.end49.lr.ph ], [ %indvars.iv.next, %do.end49 ]
  %13 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs51, align 8
  %ops = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %13, i64 %indvars.iv, i32 3
  %14 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %ops, align 8
  %page = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %13, i64 %indvars.iv, i32 0
  %15 = load %struct.page*, %struct.page** %page, align 8
  %offset60 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %13, i64 %indvars.iv, i32 1
  %16 = load i32, i32* %offset60, align 8
  %len64 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %13, i64 %indvars.iv, i32 2
  %17 = load i32, i32* %len64, align 4
  %call65 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.pipe_buf_operations* noundef %14, %struct.page* noundef %15, i32 noundef %16, i32 noundef %17) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %18 = load i32, i32* %ring_size, align 4
  %19 = zext i32 %18 to i64
  %cmp45 = icmp ult i64 %indvars.iv.next, %19
  br i1 %cmp45, label %do.end49, label %if.then74

if.then74:                                        ; preds = %do.end49, %do.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 377; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !49
  br label %cleanup84

cleanup84:                                        ; preds = %if.end17, %if.else, %if.then74
  %retval.0 = phi i1 [ false, %if.then74 ], [ true, %if.else ], [ true, %if.end17 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @data_start(%struct.iov_iter* nocapture noundef readonly %i, i32* nocapture noundef writeonly %iter_headp, i64* nocapture noundef writeonly %offp) unnamed_addr #10 {
entry:
  %0 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe = bitcast %union.anon* %0 to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe, align 8
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5
  %head = bitcast %union.anon.62* %2 to i32*
  %3 = load i32, i32* %head, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %4 = load i64, i64* %iov_offset, align 8
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 6
  %5 = load i32, i32* %ring_size, align 4
  %sub = add i32 %5, -1
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  %6 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %sub, %3
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %6, i64 %idxprom
  %call = call fastcc i1 @allocated(%struct.pipe_buffer* noundef %arrayidx) #18
  %call.not = xor i1 %call, true
  %cmp = icmp eq i64 %4, 4096
  %or.cond = select i1 %call.not, i1 true, i1 %cmp
  %inc = zext i1 %or.cond to i32
  %spec.select = add i32 %3, %inc
  %spec.select12 = select i1 %or.cond, i64 0, i64 %4
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %iter_head.0 = phi i32 [ %3, %entry ], [ %spec.select, %land.lhs.true ]
  %off.0 = phi i64 [ 0, %entry ], [ %spec.select12, %land.lhs.true ]
  store i32 %iter_head.0, i32* %iter_headp, align 4
  store i64 %off.0, i64* %offp, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pipe_space_for_user(i32 noundef %head, i32 noundef %tail, %struct.pipe_inode_info* nocapture noundef readonly %pipe) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @pipe_occupancy(i32 noundef %head, i32 noundef %tail) #18
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 5
  %0 = load i32, i32* %max_usage, align 8
  %cmp.not = icmp ult i32 %call, %0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 6
  %1 = load i32, i32* %ring_size, align 4
  %sub = sub i32 %1, %call
  %cmp2 = icmp ugt i32 %sub, %0
  %spec.select = select i1 %cmp2, i32 %0, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @dup_iter(%struct.iov_iter* nocapture noundef %new, %struct.iov_iter* nocapture noundef readonly %old, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = getelementptr %struct.iov_iter, %struct.iov_iter* %new, i64 0, i32 0
  %1 = getelementptr %struct.iov_iter, %struct.iov_iter* %old, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(40) %0, i8* noundef align 8 dereferenceable(40) %1, i64 40, i1 false)
  %call = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %new) #18
  br i1 %call, label %if.then10, label %if.end18, !prof !8

if.then10:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1784; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !50
  br label %return

if.end18:                                         ; preds = %entry
  %call19 = call fastcc i1 @iov_iter_is_discard(%struct.iov_iter* noundef %new) #18
  br i1 %call19, label %return, label %lor.rhs, !prof !8

lor.rhs:                                          ; preds = %if.end18
  %call21 = call fastcc i1 @iov_iter_is_xarray(%struct.iov_iter* noundef %new) #18
  br i1 %call21, label %return, label %if.end31, !prof !8

if.end31:                                         ; preds = %lor.rhs
  %call32 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %new) #18
  br i1 %call32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %new, i64 0, i32 4
  %3 = bitcast %union.anon* %2 to i8**
  %4 = load i8*, i8** %3, align 8
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %new, i64 0, i32 5, i32 0
  %5 = load i64, i64* %nr_segs, align 8
  %mul = shl i64 %5, 4
  %call34 = call i8* @kmemdup(i8* noundef %4, i64 noundef %mul, i32 noundef %flags) #20
  store i8* %call34, i8** %3, align 8
  br label %return

if.else:                                          ; preds = %if.end31
  %iov = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %new, i64 0, i32 4, i32 0
  %6 = bitcast %struct.iovec** %iov to i8**
  %7 = load i8*, i8** %6, align 8
  %nr_segs36 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %new, i64 0, i32 5, i32 0
  %8 = load i64, i64* %nr_segs36, align 8
  %mul37 = shl i64 %8, 4
  %call38 = call i8* @kmemdup(i8* noundef %7, i64 noundef %mul37, i32 noundef %flags) #20
  store i8* %call38, i8** %6, align 8
  br label %return

return:                                           ; preds = %if.end18, %lor.rhs, %if.else, %if.then33, %if.then10
  %retval.0 = phi i8* [ null, %if.then10 ], [ %call34, %if.then33 ], [ %call38, %if.else ], [ null, %lor.rhs ], [ null, %if.end18 ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kmemdup(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.iovec* @iovec_from_user(%struct.iovec* noundef %uvec, i64 noundef %nr_segs, i64 noundef %fast_segs, %struct.iovec* noundef %fast_iov, i1 noundef %compat) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %nr_segs, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i64 %nr_segs, 1024
  br i1 %cmp1, label %cleanup.sink.split, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp ugt i64 %nr_segs, %fast_segs
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end3
  %call6 = call fastcc i8* @kmalloc_array(i64 noundef %nr_segs) #18
  %0 = bitcast i8* %call6 to %struct.iovec*
  %tobool.not = icmp eq i8* %call6, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end3
  %iov.0 = phi %struct.iovec* [ %0, %if.then5 ], [ %fast_iov, %if.end3 ]
  br i1 %compat, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  %call13 = call fastcc i32 @copy_compat_iovec_from_user(%struct.iovec* noundef %iov.0, %struct.iovec* noundef %uvec, i64 noundef %nr_segs) #18
  br label %if.end15

if.else:                                          ; preds = %if.end10
  %call14 = call fastcc i32 @copy_iovec_from_user(%struct.iovec* noundef %iov.0, %struct.iovec* noundef %uvec, i64 noundef %nr_segs) #18
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %ret.0 = phi i32 [ %call13, %if.then12 ], [ %call14, %if.else ]
  %tobool16.not = icmp eq i32 %ret.0, 0
  br i1 %tobool16.not, label %cleanup, label %if.then17

if.then17:                                        ; preds = %if.end15
  %cmp18.not = icmp eq %struct.iovec* %iov.0, %fast_iov
  br i1 %cmp18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then17
  %1 = bitcast %struct.iovec* %iov.0 to i8*
  call void @kfree(i8* noundef %1) #20
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  %conv = sext i32 %ret.0 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then5, %if.end, %if.end20
  %conv.sink = phi i64 [ %conv, %if.end20 ], [ -22, %if.end ], [ -12, %if.then5 ]
  %call21 = call fastcc i8* @ERR_PTR(i64 noundef %conv.sink) #18
  %2 = bitcast i8* %call21 to %struct.iovec*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15, %entry
  %retval.0 = phi %struct.iovec* [ %fast_iov, %entry ], [ %iov.0, %if.end15 ], [ %2, %cleanup.sink.split ]
  ret %struct.iovec* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 16)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !8

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3264) #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_compat_iovec_from_user(%struct.iovec* nocapture noundef writeonly %iov, %struct.iovec* noundef %uvec, i64 noundef %nr_segs) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.iovec* %uvec to %struct.compat_iovec*
  %1 = bitcast %struct.iovec* %uvec to i8*
  %mul = shl i64 %nr_segs, 3
  %call = call fastcc i64 @__range_ok(i8* noundef %1, i64 noundef %mul) #18
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup81, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp121.not = icmp eq i64 %nr_segs, 0
  br i1 %cmp121.not, label %cleanup81, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %conv123 = phi i64 [ %conv, %for.inc ], [ 0, %for.cond.preheader ]
  %iov_len = getelementptr %struct.compat_iovec, %struct.compat_iovec* %0, i64 %conv123, i32 1
  %2 = bitcast i32* %iov_len to i8*
  %call3 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #18
  %tobool4.not = icmp eq i64 %call3, 0
  br i1 %tobool4.not, label %cleanup81, label %if.end15

if.end15:                                         ; preds = %for.body
  %call6 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #18
  %3 = bitcast i8* %call6 to i32*
  %4 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %3, i32 -14, i32 0) #19, !srcloc !51
  %asmresult = extractvalue { i32, i64 } %4, 0
  %asmresult10 = extractvalue { i32, i64 } %4, 1
  %tobool18.not = icmp eq i32 %asmresult, 0
  br i1 %tobool18.not, label %do.body26, label %cleanup81, !prof !9

do.body26:                                        ; preds = %if.end15
  %iov_base = getelementptr %struct.compat_iovec, %struct.compat_iovec* %0, i64 %conv123, i32 0
  %5 = bitcast i32* %iov_base to i8*
  %call32 = call fastcc i64 @__range_ok(i8* noundef %5, i64 noundef 4) #18
  %tobool33.not = icmp eq i64 %call32, 0
  br i1 %tobool33.not, label %cleanup81, label %if.end49

if.end49:                                         ; preds = %do.body26
  %call35 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %5) #18
  %6 = bitcast i8* %call35 to i32*
  %7 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %6, i32 -14, i32 0) #19, !srcloc !52
  %asmresult40 = extractvalue { i32, i64 } %7, 0
  %asmresult41 = extractvalue { i32, i64 } %7, 1
  %conv42 = trunc i64 %asmresult41 to i32
  %tobool53.not = icmp eq i32 %asmresult40, 0
  br i1 %tobool53.not, label %do.end64, label %cleanup81, !prof !9

do.end64:                                         ; preds = %if.end49
  %8 = and i64 %asmresult10, 2147483648
  %cmp65.not = icmp eq i64 %8, 0
  br i1 %cmp65.not, label %for.inc, label %cleanup81

for.inc:                                          ; preds = %do.end64
  %call69 = call fastcc i8* @compat_ptr(i32 noundef %conv42) #18
  %iov_base72 = getelementptr %struct.iovec, %struct.iovec* %iov, i64 %conv123, i32 0
  store i8* %call69, i8** %iov_base72, align 8
  %conv73120 = and i64 %asmresult10, 4294967295
  %iov_len76 = getelementptr %struct.iovec, %struct.iovec* %iov, i64 %conv123, i32 1
  store i64 %conv73120, i64* %iov_len76, align 8
  %inc = shl nsw i64 %conv123, 32
  %sext = add i64 %inc, 4294967296
  %conv = ashr exact i64 %sext, 32
  %cmp = icmp ult i64 %conv, %nr_segs
  br i1 %cmp, label %for.body, label %cleanup81

cleanup81:                                        ; preds = %for.inc, %if.end15, %if.end49, %do.end64, %for.body, %do.body26, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ -14, %entry ], [ 0, %for.cond.preheader ], [ 0, %for.inc ], [ -14, %if.end15 ], [ -14, %if.end49 ], [ -22, %do.end64 ], [ -14, %for.body ], [ -14, %do.body26 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_iovec_from_user(%struct.iovec* noundef %iov, %struct.iovec* noundef %uvec, i64 noundef %nr_segs) unnamed_addr #0 {
entry:
  %mul = shl i64 %nr_segs, 4
  %cmp11.i.i = icmp ugt i64 %mul, 2147483647
  br i1 %cmp11.i.i, label %copy_from_user.exit.thread, label %copy_from_user.exit, !prof !8

copy_from_user.exit.thread:                       ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !44
  br label %cleanup

copy_from_user.exit:                              ; preds = %entry
  %0 = bitcast %struct.iovec* %uvec to i8*
  %1 = bitcast %struct.iovec* %iov to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %1, i8* noundef %0, i64 noundef %mul) #20
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %copy_from_user.exit
  %cmp11.not = icmp eq i64 %nr_segs, 0
  br i1 %cmp11.not, label %cleanup, label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %inc, %nr_segs
  br i1 %exitcond.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %seg.012 = phi i64 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %iov_len = getelementptr %struct.iovec, %struct.iovec* %iov, i64 %seg.012, i32 1
  %2 = load i64, i64* %iov_len, align 8
  %cmp1 = icmp slt i64 %2, 0
  %inc = add nuw i64 %seg.012, 1
  br i1 %cmp1, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %for.cond.preheader, %copy_from_user.exit.thread, %copy_from_user.exit
  %retval.0 = phi i32 [ -14, %copy_from_user.exit ], [ -14, %copy_from_user.exit.thread ], [ 0, %for.cond.preheader ], [ -22, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__import_iovec(i32 noundef %type, %struct.iovec* noundef %uvec, i32 noundef %nr_segs, i32 noundef %fast_segs, %struct.iovec** nocapture noundef %iovp, %struct.iov_iter* nocapture noundef writeonly %i, i1 noundef %compat) local_unnamed_addr #0 {
entry:
  %conv = zext i32 %nr_segs to i64
  %conv1 = zext i32 %fast_segs to i64
  %0 = load %struct.iovec*, %struct.iovec** %iovp, align 8
  %call = call %struct.iovec* @iovec_from_user(%struct.iovec* noundef %uvec, i64 noundef %conv, i64 noundef %conv1, %struct.iovec* noundef %0, i1 noundef %compat) #18
  %1 = bitcast %struct.iovec* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %1) #18
  br i1 %call2, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp64.not = icmp eq i32 %nr_segs, 0
  br i1 %cmp64.not, label %for.end, label %for.body

if.then:                                          ; preds = %entry
  store %struct.iovec* null, %struct.iovec** %iovp, align 8
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %1) #18
  br label %cleanup27

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %seg.066 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %total_len.065 = phi i64 [ %add, %for.inc ], [ 0, %for.cond.preheader ]
  %iov_len = getelementptr %struct.iovec, %struct.iovec* %call, i64 %seg.066, i32 1
  %2 = load i64, i64* %iov_len, align 8
  %iov_base = getelementptr %struct.iovec, %struct.iovec* %call, i64 %seg.066, i32 0
  %3 = load i8*, i8** %iov_base, align 8
  %call7 = call fastcc i64 @__range_ok(i8* noundef %3, i64 noundef %2) #18
  %tobool8.not = icmp eq i64 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end14

if.then9:                                         ; preds = %for.body
  %4 = load %struct.iovec*, %struct.iovec** %iovp, align 8
  %cmp10.not = icmp eq %struct.iovec* %call, %4
  br i1 %cmp10.not, label %cleanup.thread, label %if.then12

if.then12:                                        ; preds = %if.then9
  call void @kfree(i8* noundef %1) #20
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then9, %if.then12
  store %struct.iovec* null, %struct.iovec** %iovp, align 8
  br label %cleanup27

if.end14:                                         ; preds = %for.body
  %sub = sub i64 2147479552, %total_len.065
  %cmp15 = icmp ugt i64 %2, %sub
  br i1 %cmp15, label %if.then17, label %for.inc

if.then17:                                        ; preds = %if.end14
  store i64 %sub, i64* %iov_len, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %if.end14
  %len.0 = phi i64 [ %sub, %if.then17 ], [ %2, %if.end14 ]
  %add = add i64 %len.0, %total_len.065
  %inc = add nuw nsw i64 %seg.066, 1
  %exitcond.not = icmp eq i64 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %total_len.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %add, %for.inc ]
  call void @iov_iter_init(%struct.iov_iter* noundef %i, i32 noundef %type, %struct.iovec* noundef %call, i64 noundef %conv, i64 noundef %total_len.0.lcssa) #18
  %5 = load %struct.iovec*, %struct.iovec** %iovp, align 8
  %cmp23 = icmp eq %struct.iovec* %call, %5
  %.call = select i1 %cmp23, %struct.iovec* null, %struct.iovec* %call
  store %struct.iovec* %.call, %struct.iovec** %iovp, align 8
  br label %cleanup27

cleanup27:                                        ; preds = %cleanup.thread, %for.end, %if.then
  %retval.2 = phi i64 [ %call3, %if.then ], [ %total_len.0.lcssa, %for.end ], [ -14, %cleanup.thread ]
  ret i64 %retval.2
}

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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #19, !srcloc !53
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @import_iovec(i32 noundef %type, %struct.iovec* noundef %uvec, i32 noundef %nr_segs, i32 noundef %fast_segs, %struct.iovec** nocapture noundef %iovp, %struct.iov_iter* nocapture noundef writeonly %i) local_unnamed_addr #0 {
entry:
  %call1 = call i64 @__import_iovec(i32 noundef %type, %struct.iovec* noundef %uvec, i32 noundef %nr_segs, i32 noundef %fast_segs, %struct.iovec** noundef %iovp, %struct.iov_iter* noundef %i, i1 noundef false) #18
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @import_single_range(i32 noundef %rw, i8* noundef %buf, i64 noundef %len, %struct.iovec* noundef %iov, %struct.iov_iter* nocapture noundef writeonly %i) local_unnamed_addr #0 {
entry:
  %0 = icmp ult i64 %len, 2147479552
  %spec.store.select = select i1 %0, i64 %len, i64 2147479552
  %call = call fastcc i64 @__range_ok(i8* noundef %buf, i64 noundef %spec.store.select) #18
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end5, !prof !8

if.end5:                                          ; preds = %entry
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i64 0, i32 0
  store i8* %buf, i8** %iov_base, align 8
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i64 0, i32 1
  store i64 %spec.store.select, i64* %iov_len, align 8
  call void @iov_iter_init(%struct.iov_iter* noundef %i, i32 noundef %rw, %struct.iovec* noundef %iov, i64 noundef 1, i64 noundef %spec.store.select) #18
  br label %return

return:                                           ; preds = %entry, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -14, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @iov_iter_restore(%struct.iov_iter* nocapture noundef %i, %struct.iov_iter_state* nocapture noundef readonly %state) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.end19, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %i) #18
  br i1 %call1, label %if.end19, label %if.then, !prof !9

if.then:                                          ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/iov_iter.c\22; .popsection; .long 14472b - 14470b; .short 1990; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !54
  %call17 = call fastcc i1 @iov_iter_is_kvec(%struct.iov_iter* noundef %i) #18
  br i1 %call17, label %if.end19, label %return

if.end19:                                         ; preds = %entry, %land.rhs, %if.then
  %iov_offset = getelementptr inbounds %struct.iov_iter_state, %struct.iov_iter_state* %state, i64 0, i32 0
  %0 = load i64, i64* %iov_offset, align 8
  %iov_offset20 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  store i64 %0, i64* %iov_offset20, align 8
  %count = getelementptr inbounds %struct.iov_iter_state, %struct.iov_iter_state* %state, i64 0, i32 1
  %1 = load i64, i64* %count, align 8
  %count21 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  store i64 %1, i64* %count21, align 8
  %call22 = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %i) #18
  %nr_segs = getelementptr inbounds %struct.iov_iter_state, %struct.iov_iter_state* %state, i64 0, i32 2
  %2 = load i64, i64* %nr_segs, align 8
  %nr_segs24 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %3 = load i64, i64* %nr_segs24, align 8
  %sub.neg = sub i64 %3, %2
  br i1 %call22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end19
  %4 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %bvec = bitcast %union.anon* %4 to %struct.bio_vec**
  %5 = load %struct.bio_vec*, %struct.bio_vec** %bvec, align 8
  %add.ptr = getelementptr %struct.bio_vec, %struct.bio_vec* %5, i64 %sub.neg
  store %struct.bio_vec* %add.ptr, %struct.bio_vec** %bvec, align 8
  br label %if.end30

if.else:                                          ; preds = %if.end19
  %iov = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %6 = load %struct.iovec*, %struct.iovec** %iov, align 8
  %add.ptr29 = getelementptr %struct.iovec, %struct.iovec* %6, i64 %sub.neg
  store %struct.iovec* %add.ptr29, %struct.iovec** %iov, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then23
  %nr_segs31 = getelementptr inbounds %struct.iov_iter_state, %struct.iov_iter_state* %state, i64 0, i32 2
  %7 = load i64, i64* %nr_segs31, align 8
  %nr_segs32 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  store i64 %7, i64* %nr_segs32, align 8
  br label %return

return:                                           ; preds = %if.then, %if.end30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iov_iter_type(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #1 {
entry:
  %iter_type = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  %0 = load i8, i8* %iter_type, align 8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #19, !srcloc !55
  call void asm sideeffect "hint #20", "~{memory}"() #19, !srcloc !56
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @push_pipe(%struct.iov_iter* nocapture noundef readonly %i, i64 noundef %size, i32* nocapture noundef writeonly %iter_headp, i64* nocapture noundef writeonly %offp) unnamed_addr #0 {
entry:
  %iter_head = alloca i32, align 4
  %off = alloca i64, align 8
  %0 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe1 = bitcast %union.anon* %0 to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe1, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 4
  %2 = load i32, i32* %tail, align 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 6
  %3 = load i32, i32* %ring_size, align 4
  %sub = add i32 %3, -1
  %4 = bitcast i32* %iter_head to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #19
  store i32 0, i32* %iter_head, align 4, !annotation !13
  %5 = bitcast i64* %off to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #19
  store i64 0, i64* %off, align 8, !annotation !13
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %6 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %6, %size
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %size.addr.0 = phi i64 [ %6, %if.then ], [ %size, %entry ]
  %tobool4.not = icmp eq i64 %size.addr.0, 0
  br i1 %tobool4.not, label %cleanup57, label %if.end15, !prof !8

if.end15:                                         ; preds = %if.end
  call fastcc void @data_start(%struct.iov_iter* noundef %i, i32* noundef nonnull %iter_head, i64* noundef nonnull %off) #18
  %7 = load i32, i32* %iter_head, align 4
  store i32 %7, i32* %iter_headp, align 4
  %8 = load i64, i64* %off, align 8
  store i64 %8, i64* %offp, align 8
  %tobool16.not = icmp eq i64 %8, 0
  br i1 %tobool16.not, label %if.end31, label %if.then17

if.then17:                                        ; preds = %if.end15
  %sub18.neg = add i64 %size.addr.0, -4096
  %sub19 = add i64 %sub18.neg, %8
  %cmp20 = icmp slt i64 %sub19, 1
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  %9 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %7, %sub
  %idxprom = zext i32 %and to i64
  %len = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %9, i64 %idxprom, i32 2
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.then17
  %10 = load i32, i32* %len, align 4
  %11 = trunc i64 %size.addr.0 to i32
  %conv24 = add i32 %10, %11
  store i32 %conv24, i32* %len, align 4
  br label %cleanup57

if.end25:                                         ; preds = %if.then17
  store i32 4096, i32* %len, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %iter_head, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end25, %if.end15
  %iter_head.promoted = phi i32 [ %inc, %if.end25 ], [ %7, %if.end15 ]
  %left.0 = phi i64 [ %sub19, %if.end25 ], [ %size.addr.0, %if.end15 ]
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 5
  %bufs34 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end41, %if.end31
  %inc50109 = phi i32 [ %iter_head.promoted, %if.end31 ], [ %inc50, %if.end41 ]
  %left.1 = phi i64 [ %left.0, %if.end31 ], [ %sub49, %if.end41 ]
  %12 = load i32, i32* %max_usage, align 8
  %call = call fastcc i1 @pipe_full(i32 noundef %inc50109, i32 noundef %2, i32 noundef %12) #18
  br i1 %call, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %13 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs34, align 8
  %and35 = and i32 %inc50109, %sub
  %idxprom36 = zext i32 %and35 to i64
  %call38 = call fastcc %struct.page* @alloc_pages() #18
  %tobool39.not = icmp eq %struct.page* %call38, null
  br i1 %tobool39.not, label %while.end, label %if.end41

if.end41:                                         ; preds = %while.body
  %ops = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %13, i64 %idxprom36, i32 3
  store %struct.pipe_buf_operations* @default_pipe_buf_ops, %struct.pipe_buf_operations** %ops, align 8
  %page42 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %13, i64 %idxprom36, i32 0
  store %struct.page* %call38, %struct.page** %page42, align 8
  %offset = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %13, i64 %idxprom36, i32 1
  store i32 0, i32* %offset, align 8
  %cmp43 = icmp slt i64 %left.1, 4096
  %cond = select i1 %cmp43, i64 %left.1, i64 4096
  %conv45 = trunc i64 %cond to i32
  %len46 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %13, i64 %idxprom36, i32 2
  store i32 %conv45, i32* %len46, align 4
  %conv48 = and i64 %cond, 4294967295
  %sub49 = sub i64 %left.1, %conv48
  %inc50 = add i32 %inc50109, 1
  store i32 %inc50, i32* %head, align 8
  %cmp51 = icmp eq i64 %sub49, 0
  br i1 %cmp51, label %cleanup57, label %while.cond

while.end:                                        ; preds = %while.body, %while.cond
  %sub56 = sub i64 %size.addr.0, %left.1
  br label %cleanup57

cleanup57:                                        ; preds = %if.end41, %if.end, %while.end, %if.then22
  %retval.2 = phi i64 [ %size.addr.0, %if.then22 ], [ %sub56, %while.end ], [ 0, %if.end ], [ %size.addr.0, %if.end41 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #19
  ret i64 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memcpy_to_page(%struct.page* noundef %page, i64 noundef %offset, i8* noundef %from, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_local_page(%struct.page* noundef %page) #18
  %add.ptr = getelementptr i8, i8* %call, i64 %offset
  %call1 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %from, i64 noundef %len) #20
  call void @flush_dcache_page(%struct.page* noundef %page) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages() unnamed_addr #0 {
entry:
  call fastcc void @numa_node_id() #18
  %call1 = call fastcc %struct.page* @alloc_pages_node() #18
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node() unnamed_addr #0 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef 0) #18
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #12 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid) unnamed_addr #0 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef 1051840, i32 noundef 0, i32 noundef %nid, %struct.nodemask_t* noundef null) #20
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #12 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #22, !srcloc !57
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_zero(i8* noundef readnone %entry1) unnamed_addr #4 {
entry:
  %call = call fastcc i8* @xa_mk_internal(i64 noundef 257) #18
  %cmp = icmp eq i8* %call, %entry1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_retry(i8* noundef readnone %entry1) unnamed_addr #4 {
entry:
  %call = call fastcc i8* @xa_mk_internal(i64 noundef 256) #18
  %cmp = icmp eq i8* %call, %entry1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xas_reset(%struct.xa_state* nocapture noundef writeonly %xas) unnamed_addr #7 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull i8* @xa_mk_internal(i64 noundef %v) unnamed_addr #4 {
entry:
  %shl = shl i64 %v, 2
  %or = or i64 %shl, 2
  %0 = inttoptr i64 %or to i8*
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xas_not_node(%struct.xa_node* noundef %node) unnamed_addr #4 {
entry:
  %0 = ptrtoint %struct.xa_node* %node to i64
  %and = and i64 %0, 3
  %tobool = icmp ne i64 %and, 0
  %tobool1.not = icmp eq %struct.xa_node* %node, null
  %1 = or i1 %tobool1.not, %tobool
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @xa_entry(%struct.xa_node* noundef %node, i32 noundef %offset) unnamed_addr #14 {
entry:
  %idxprom = zext i32 %offset to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %node, i64 0, i32 7, i64 %idxprom
  %0 = load volatile i8*, i8** %arrayidx, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_internal(i8* noundef %entry1) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 3
  %cmp = icmp eq i64 %and, 2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !59
  call void @rcu_read_unlock_strict() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #14 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.0* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  %sub = add i64 %1, -1
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint %struct.page* %page to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %sub, %if.then ], [ %2, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @page_size(%struct.page* noundef %page) unnamed_addr #14 {
entry:
  %call = call fastcc i32 @compound_order(%struct.page* noundef %page) #18
  %sh_prom = zext i32 %call to i64
  %shl = shl i64 4096, %sh_prom
  ret i64 %shl
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #14 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %3 = bitcast %union.anon.0* %2 to %struct.anon.55*
  %compound_order = getelementptr inbounds %struct.anon.55, %struct.anon.55* %3, i64 0, i32 2
  %4 = load i8, i8* %compound_order, align 1
  %conv = zext i8 %4 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @copy_page_to_iter_iovec(%struct.page* noundef %page, i64 noundef %offset, i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i) unnamed_addr #0 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %0, %bytes
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bytes.addr.0 = phi i64 [ %0, %if.then ], [ %bytes, %entry ]
  %tobool3.not = icmp eq i64 %bytes.addr.0, 0
  br i1 %tobool3.not, label %cleanup, label %if.end14, !prof !8

if.end14:                                         ; preds = %if.end
  %iov15 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4, i32 0
  %1 = load %struct.iovec*, %struct.iovec** %iov15, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %2 = load i64, i64* %iov_offset, align 8
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %1, i64 0, i32 0
  %3 = load i8*, i8** %iov_base, align 8
  %add.ptr = getelementptr i8, i8* %3, i64 %2
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %1, i64 0, i32 1
  %4 = load i64, i64* %iov_len, align 8
  %sub = sub i64 %4, %2
  %cmp16 = icmp ult i64 %bytes.addr.0, %sub
  %cond = select i1 %cmp16, i64 %bytes.addr.0, i64 %sub
  %call = call fastcc i8* @kmap(%struct.page* noundef %page) #18
  %add.ptr18 = getelementptr i8, i8* %call, i64 %offset
  %call19 = call fastcc i32 @copyout(i8* noundef %add.ptr, i8* noundef %add.ptr18, i64 noundef %cond) #18
  %conv20 = sext i32 %call19 to i64
  %sub21 = sub i64 %cond, %conv20
  %add = add i64 %sub21, %2
  %sub23 = sub i64 %bytes.addr.0, %sub21
  %tobool24.not131 = icmp eq i32 %call19, 0
  %tobool25132 = icmp ne i64 %sub23, 0
  %5 = select i1 %tobool24.not131, i1 %tobool25132, i1 false
  br i1 %5, label %while.body.preheader, label %while.end, !prof !8

while.body.preheader:                             ; preds = %if.end14
  %add.ptr22 = getelementptr i8, i8* %add.ptr18, i64 %sub21
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %bytes.addr.1135 = phi i64 [ %sub46, %while.body ], [ %sub23, %while.body.preheader ]
  %from.0134 = phi i8* [ %add.ptr45, %while.body ], [ %add.ptr22, %while.body.preheader ]
  %iov.0133 = phi %struct.iovec* [ %incdec.ptr, %while.body ], [ %1, %while.body.preheader ]
  %incdec.ptr = getelementptr %struct.iovec, %struct.iovec* %iov.0133, i64 1
  %iov_base33 = getelementptr inbounds %struct.iovec, %struct.iovec* %incdec.ptr, i64 0, i32 0
  %6 = load i8*, i8** %iov_base33, align 8
  %iov_len34 = getelementptr %struct.iovec, %struct.iovec* %iov.0133, i64 1, i32 1
  %7 = load i64, i64* %iov_len34, align 8
  %cmp36 = icmp ult i64 %bytes.addr.1135, %7
  %cond41 = select i1 %cmp36, i64 %bytes.addr.1135, i64 %7
  %call42 = call fastcc i32 @copyout(i8* noundef %6, i8* noundef %from.0134, i64 noundef %cond41) #18
  %conv43 = sext i32 %call42 to i64
  %sub44 = sub i64 %cond41, %conv43
  %add.ptr45 = getelementptr i8, i8* %from.0134, i64 %sub44
  %sub46 = sub i64 %bytes.addr.1135, %sub44
  %tobool24.not = icmp eq i32 %call42, 0
  %tobool25 = icmp ne i64 %sub46, 0
  %8 = select i1 %tobool24.not, i1 %tobool25, i1 false
  br i1 %8, label %while.body, label %while.end, !prof !8

while.end:                                        ; preds = %while.body, %if.end14
  %iov.0.lcssa = phi %struct.iovec* [ %1, %if.end14 ], [ %incdec.ptr, %while.body ]
  %skip.0.lcssa = phi i64 [ %add, %if.end14 ], [ %sub44, %while.body ]
  %bytes.addr.1.lcssa = phi i64 [ %sub23, %if.end14 ], [ %sub46, %while.body ]
  %iov_len47 = getelementptr inbounds %struct.iovec, %struct.iovec* %iov.0.lcssa, i64 0, i32 1
  %9 = load i64, i64* %iov_len47, align 8
  %cmp48 = icmp eq i64 %skip.0.lcssa, %9
  %spec.select.idx = zext i1 %cmp48 to i64
  %spec.select = getelementptr %struct.iovec, %struct.iovec* %iov.0.lcssa, i64 %spec.select.idx
  %spec.select130 = select i1 %cmp48, i64 0, i64 %skip.0.lcssa
  %sub53 = sub i64 %bytes.addr.0, %bytes.addr.1.lcssa
  %10 = load i64, i64* %count, align 8
  %sub55 = sub i64 %10, %sub53
  store i64 %sub55, i64* %count, align 8
  %11 = load %struct.iovec*, %struct.iovec** %iov15, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.iovec* %spec.select to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.iovec* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 4
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5, i32 0
  %12 = load i64, i64* %nr_segs, align 8
  %sub57 = sub i64 %12, %sub.ptr.div
  store i64 %sub57, i64* %nr_segs, align 8
  store %struct.iovec* %spec.select, %struct.iovec** %iov15, align 8
  store i64 %spec.select130, i64* %iov_offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end
  %retval.0 = phi i64 [ %sub53, %while.end ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @copy_page_to_iter_pipe(%struct.page* noundef %page, i64 noundef %offset, i64 noundef %bytes, %struct.iov_iter* nocapture noundef %i) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe1 = bitcast %union.anon* %0 to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe1, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 4
  %2 = load i32, i32* %tail, align 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 6
  %3 = load i32, i32* %ring_size, align 4
  %sub = add i32 %3, -1
  %4 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 5
  %head = bitcast %union.anon.62* %4 to i32*
  %5 = load i32, i32* %head, align 8
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %6 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %6, %bytes
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bytes.addr.0 = phi i64 [ %6, %if.then ], [ %bytes, %entry ]
  %tobool4.not = icmp eq i64 %bytes.addr.0, 0
  br i1 %tobool4.not, label %cleanup, label %if.end15, !prof !8

if.end15:                                         ; preds = %if.end
  %call = call fastcc i1 @sanity(%struct.iov_iter* noundef %i) #18
  br i1 %call, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.end15
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 2
  %7 = load i64, i64* %iov_offset, align 8
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  %8 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %5, %sub
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom
  %tobool18.not = icmp eq i64 %7, 0
  br i1 %tobool18.not, label %if.end35, label %if.then19

if.then19:                                        ; preds = %if.end17
  %cmp20 = icmp eq i64 %7, %offset
  br i1 %cmp20, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.then19
  %page22 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %arrayidx, i64 0, i32 0
  %9 = load %struct.page*, %struct.page** %page22, align 8
  %cmp23 = icmp eq %struct.page* %9, %page
  br i1 %cmp23, label %if.then25, label %if.end30

if.then25:                                        ; preds = %land.lhs.true
  %len = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom, i32 2
  %10 = load i32, i32* %len, align 4
  %11 = trunc i64 %bytes.addr.0 to i32
  %conv27 = add i32 %10, %11
  store i32 %conv27, i32* %len, align 4
  %12 = load i64, i64* %iov_offset, align 8
  %add29 = add i64 %12, %bytes.addr.0
  store i64 %add29, i64* %iov_offset, align 8
  br label %out

if.end30:                                         ; preds = %land.lhs.true, %if.then19
  %inc = add i32 %5, 1
  %and32 = and i32 %inc, %sub
  %idxprom33 = zext i32 %and32 to i64
  %arrayidx34 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom33
  br label %if.end35

if.end35:                                         ; preds = %if.end30, %if.end17
  %buf.0 = phi %struct.pipe_buffer* [ %arrayidx34, %if.end30 ], [ %arrayidx, %if.end17 ]
  %i_head.0 = phi i32 [ %inc, %if.end30 ], [ %5, %if.end17 ]
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 5
  %13 = load i32, i32* %max_usage, align 8
  %call36 = call fastcc i1 @pipe_full(i32 noundef %i_head.0, i32 noundef %2, i32 noundef %13) #18
  br i1 %call36, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.end35
  %ops = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf.0, i64 0, i32 3
  store %struct.pipe_buf_operations* @page_cache_pipe_buf_ops, %struct.pipe_buf_operations** %ops, align 8
  call fastcc void @get_page(%struct.page* noundef %page) #18
  %page39 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf.0, i64 0, i32 0
  store %struct.page* %page, %struct.page** %page39, align 8
  %conv40 = trunc i64 %offset to i32
  %offset41 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf.0, i64 0, i32 1
  store i32 %conv40, i32* %offset41, align 8
  %conv42 = trunc i64 %bytes.addr.0 to i32
  %len43 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf.0, i64 0, i32 2
  store i32 %conv42, i32* %len43, align 4
  %add44 = add i32 %i_head.0, 1
  %head45 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 3
  store i32 %add44, i32* %head45, align 8
  %add46 = add i64 %bytes.addr.0, %offset
  store i64 %add46, i64* %iov_offset, align 8
  store i32 %i_head.0, i32* %head, align 8
  br label %out

out:                                              ; preds = %if.end38, %if.then25
  %14 = load i64, i64* %count, align 8
  %sub50 = sub i64 %14, %bytes.addr.0
  store i64 %sub50, i64* %count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end15, %if.end, %out
  %retval.0 = phi i64 [ %bytes.addr.0, %out ], [ 0, %if.end ], [ 0, %if.end15 ], [ 0, %if.end35 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @kmap(%struct.page* noundef %page) unnamed_addr #4 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_clear_user(i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #23, !srcloc !60
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !61
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !62
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #23, !srcloc !60
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bvec_iter_advance(%struct.bio_vec* nocapture noundef readonly %bv, %struct.bvec_iter* nocapture noundef %iter, i32 noundef %bytes) unnamed_addr #0 {
entry:
  %bi_idx = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 2
  %0 = load i32, i32* %bi_idx, align 4
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %cmp = icmp ult i32 %1, %bytes
  %.b1 = load i1, i1* @bvec_iter_advance.__already_done, align 1
  %lnot3 = xor i1 %.b1, true
  %2 = select i1 %cmp, i1 %lnot3, i1 false
  br i1 %2, label %if.then, label %if.end29, !prof !8

if.then:                                          ; preds = %entry
  store i1 true, i1* @bvec_iter_advance.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0)) #20
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/bvec.h\22; .popsection; .long 14472b - 14470b; .short 107; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !63
  br label %if.end29

if.end29:                                         ; preds = %if.then, %entry
  br i1 %cmp, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end29
  store i32 0, i32* %bi_size, align 8
  br label %cleanup

if.end41:                                         ; preds = %if.end29
  %3 = load i32, i32* %bi_size, align 8
  %sub = sub i32 %3, %bytes
  store i32 %sub, i32* %bi_size, align 8
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 3
  %4 = load i32, i32* %bi_bvec_done, align 8
  %add = add i32 %4, %bytes
  %tobool43.not2 = icmp eq i32 %add, 0
  br i1 %tobool43.not2, label %while.end, label %land.rhs44

land.rhs44:                                       ; preds = %if.end41, %while.body
  %bytes.addr.04 = phi i32 [ %sub51, %while.body ], [ %add, %if.end41 ]
  %idx.03 = phi i32 [ %inc, %while.body ], [ %0, %if.end41 ]
  %idxprom = zext i32 %idx.03 to i64
  %bv_len = getelementptr %struct.bio_vec, %struct.bio_vec* %bv, i64 %idxprom, i32 1
  %5 = load i32, i32* %bv_len, align 8
  %cmp45.not = icmp ult i32 %bytes.addr.04, %5
  br i1 %cmp45.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs44
  %sub51 = sub i32 %bytes.addr.04, %5
  %inc = add i32 %idx.03, 1
  %tobool43.not = icmp eq i32 %sub51, 0
  br i1 %tobool43.not, label %while.end, label %land.rhs44

while.end:                                        ; preds = %land.rhs44, %while.body, %if.end41
  %idx.0.lcssa = phi i32 [ %0, %if.end41 ], [ %inc, %while.body ], [ %idx.03, %land.rhs44 ]
  %bytes.addr.0.lcssa = phi i32 [ 0, %if.end41 ], [ 0, %while.body ], [ %bytes.addr.04, %land.rhs44 ]
  store i32 %idx.0.lcssa, i32* %bi_idx, align 4
  store i32 %bytes.addr.0.lcssa, i32* %bi_bvec_done, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @pipe_empty(i32 noundef %head, i32 noundef %tail) unnamed_addr #4 {
entry:
  %cmp = icmp eq i32 %head, %tail
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pipe_buf_release(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) unnamed_addr #0 {
entry:
  %ops1 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 3
  %0 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %ops1, align 8
  store %struct.pipe_buf_operations* null, %struct.pipe_buf_operations** %ops1, align 8
  %release = getelementptr inbounds %struct.pipe_buf_operations, %struct.pipe_buf_operations* %0, i64 0, i32 1
  %1 = load void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %release, align 8
  call void %1(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pipe_occupancy(i32 noundef %head, i32 noundef %tail) unnamed_addr #4 {
entry:
  %sub = sub i32 %head, %tail
  ret i32 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_inc(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %_refcount) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__pipe_get_pages(%struct.iov_iter* nocapture noundef readonly %i, i64 noundef %maxsize, %struct.page** nocapture noundef writeonly %pages, i32 noundef %iter_head, i64* nocapture noundef %start) unnamed_addr #0 {
entry:
  %iter_head.addr = alloca i32, align 4
  store i32 %iter_head, i32* %iter_head.addr, align 4
  %0 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 4
  %pipe1 = bitcast %union.anon* %0 to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %pipe1, align 8
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 6
  %2 = load i32, i32* %ring_size, align 4
  %sub = add i32 %2, -1
  %call = call fastcc i64 @push_pipe(%struct.iov_iter* noundef %i, i64 noundef %maxsize, i32* noundef nonnull %iter_head.addr, i64* noundef %start) #18
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %start, align 8
  %add = add i64 %3, %call
  %iter_head.addr.promoted = load i32, i32* %iter_head.addr, align 4
  %cmp17 = icmp sgt i64 %add, 0
  br i1 %cmp17, label %while.body.lr.ph, label %cleanup.loopexit

while.body.lr.ph:                                 ; preds = %if.end
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %n.020 = phi i64 [ %add, %while.body.lr.ph ], [ %sub2, %while.body ]
  %pages.addr.019 = phi %struct.page** [ %pages, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %inc1618 = phi i32 [ %iter_head.addr.promoted, %while.body.lr.ph ], [ %inc, %while.body ]
  %4 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %inc1618, %sub
  %idxprom = zext i32 %and to i64
  %page = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %4, i64 %idxprom, i32 0
  %5 = load %struct.page*, %struct.page** %page, align 8
  %incdec.ptr = getelementptr %struct.page*, %struct.page** %pages.addr.019, i64 1
  store %struct.page* %5, %struct.page** %pages.addr.019, align 8
  call fastcc void @get_page(%struct.page* noundef %5) #18
  %inc = add i32 %inc1618, 1
  %sub2 = add nsw i64 %n.020, -4096
  %cmp = icmp ugt i64 %n.020, 4096
  br i1 %cmp, label %while.body, label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %while.body, %if.end
  %inc16.lcssa = phi i32 [ %iter_head.addr.promoted, %if.end ], [ %inc, %while.body ]
  store i32 %inc16.lcssa, i32* %iter_head.addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i64 [ -14, %entry ], [ %call, %cleanup.loopexit ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @iter_xarray_populate_pages(%struct.page** nocapture noundef writeonly %pages, %struct.xarray* noundef %xa, i64 noundef %index, i32 noundef %nr_pages) unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #19
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !13
  store i64 0, i64* %2, align 8, !annotation !13
  %xa1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  store %struct.xarray* %xa, %struct.xarray** %xa1, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @__rcu_read_lock() #20
  %call = call i8* @xas_load(%struct.xa_state* noundef nonnull %xas) #20
  %tobool.not28 = icmp eq i8* %call, null
  br i1 %tobool.not28, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %ret.030 = phi i32 [ %ret.1, %for.inc ], [ 0, %entry ]
  %page.0.in29 = phi i8* [ %call16, %for.inc ], [ %call, %entry ]
  %page.031 = bitcast i8* %page.0.in29 to %struct.page*
  %call2 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %page.0.in29) #18
  br i1 %call2, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call3 = call fastcc i8* @xas_reload(%struct.xa_state* noundef nonnull %xas) #18
  %cmp.not = icmp eq i8* %page.0.in29, %call3
  br i1 %cmp.not, label %if.end7, label %if.then6, !prof !9

if.then6:                                         ; preds = %if.end
  call fastcc void @xas_reset(%struct.xa_state* noundef nonnull %xas) #18
  br label %for.inc

if.end7:                                          ; preds = %if.end
  %idxprom = zext i32 %ret.030 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %idxprom
  %3 = bitcast %struct.page** %arrayidx to i8**
  store i8* %page.0.in29, i8** %3, align 8
  call fastcc void @get_page(%struct.page* noundef nonnull %page.031) #18
  %inc = add i32 %ret.030, 1
  %cmp12 = icmp eq i32 %inc, %nr_pages
  br i1 %cmp12, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end7, %for.body, %if.then6
  %ret.1 = phi i32 [ %ret.030, %for.body ], [ %ret.030, %if.then6 ], [ %inc, %if.end7 ]
  %call16 = call fastcc i8* @xas_next(%struct.xa_state* noundef nonnull %xas) #18
  %tobool.not = icmp eq i8* %call16, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end7, %entry
  %ret.2 = phi i32 [ 0, %entry ], [ %nr_pages, %if.end7 ], [ %ret.1, %for.inc ]
  call fastcc void @rcu_read_unlock() #18
  %conv17 = zext i32 %ret.2 to i64
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #19
  ret i64 %conv17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_load(%struct.xa_state* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @xas_reload(%struct.xa_state* nocapture noundef readonly %xas) unnamed_addr #14 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %tobool.not = icmp eq %struct.xa_node* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %1 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %call = call fastcc i8* @xa_head(%struct.xarray* noundef %1) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %conv = zext i8 %2 to i32
  %call3 = call fastcc i8* @xa_entry(%struct.xa_node* noundef nonnull %0, i32 noundef %conv) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call3, %if.end ], [ %call, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @xas_next(%struct.xa_state* noundef %xas) unnamed_addr #0 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_not_node(%struct.xa_node* noundef %0) #18
  br i1 %call, label %if.then, label %lor.lhs.false, !prof !8

lor.lhs.false:                                    ; preds = %entry
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %1 = load i8, i8* %shift, align 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %if.then, !prof !9

lor.rhs:                                          ; preds = %lor.lhs.false
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %cmp = icmp eq i8 %2, 63
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry, %lor.lhs.false, %lor.rhs
  %call6 = call i8* @__xas_next(%struct.xa_state* noundef %xas) #20
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %xa_index, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %xa_index, align 8
  %inc8 = add i8 %2, 1
  store i8 %inc8, i8* %xa_offset, align 2
  %conv10 = zext i8 %inc8 to i32
  %call11 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %0, i32 noundef %conv10) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call6, %if.then ], [ %call11, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @xa_head(%struct.xarray* noundef %xa) unnamed_addr #14 {
entry:
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  %0 = load volatile i8*, i8** %xa_head, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__xas_next(%struct.xa_state* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call6 = call fastcc i8* @kvmalloc(i64 noundef %2) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call6, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call i8* @kvmalloc_node(i64 noundef %size, i32 noundef 3264, i32 noundef -1) #20
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #18
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #18
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !9

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #20
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @csum_add(i32 noundef %csum, i32 noundef %addend) unnamed_addr #4 {
entry:
  %add = add i32 %addend, %csum
  %cmp = icmp ult i32 %add, %addend
  %conv = zext i1 %cmp to i32
  %add1 = add i32 %add, %conv
  ret i32 %add1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @csum_partial_copy_nocheck(i8* noundef %src, i8* noundef %dst, i32 noundef %len) unnamed_addr #0 {
entry:
  %conv = sext i32 %len to i64
  %call = call i8* @memcpy(i8* noundef %dst, i8* noundef %src, i64 noundef %conv) #20
  %call1 = call i32 @csum_partial(i8* noundef %dst, i32 noundef %len, i32 noundef 0) #20
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @ror32(i32 noundef %word) unnamed_addr #11 {
entry:
  %or = call i32 @llvm.fshl.i32(i32 %word, i32 %word, i32 24)
  ret i32 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #18
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #18
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #20
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @compat_ptr(i32 noundef %uptr) unnamed_addr #4 {
entry:
  %conv = zext i32 %uptr to i64
  %0 = inttoptr i64 %conv to i8*
  ret i8* %0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #17

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #17 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nobuiltin "no-builtins" }
attributes #19 = { nounwind }
attributes #20 = { nobuiltin nounwind "no-builtins" }
attributes #21 = { cold nobuiltin nounwind "no-builtins" }
attributes #22 = { nounwind readonly }
attributes #23 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"frame-pointer", i32 1}
!7 = !{!"clang version 14.0.0"}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153865147, i64 2153865191, i64 2153865208, i64 2153865243, i64 2153865265, i64 2153865291, i64 2153865314, i64 2153865332, i64 2153865347, i64 2153865388, i64 2153865410, i64 2153865456}
!11 = !{i64 2153869204, i64 2153869241, i64 2153869258, i64 2153869293, i64 2153869315, i64 2153869341, i64 2153869364, i64 2153869382, i64 2153869545, i64 2153869586, i64 2153869608, i64 2153869654}
!12 = !{i64 2153968179}
!13 = !{!"auto-init"}
!14 = !{i64 2154000782}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.peeled.count", i32 1}
!17 = !{!"branch_weights", i32 4001, i32 4000000}
!18 = !{i64 2154006877}
!19 = !{i64 2154035070}
!20 = !{i64 2154041169}
!21 = !{i64 2154065382}
!22 = !{i64 2154071838}
!23 = !{i64 2154075004}
!24 = !{i64 2154080333}
!25 = !{i64 2154112025}
!26 = distinct !{!26, !16}
!27 = !{i64 2154121152}
!28 = !{i64 2154145254}
!29 = !{i64 2153765214}
!30 = !{i64 2153767472}
!31 = !{i64 2154153469}
!32 = !{i64 2154154794}
!33 = !{i64 2154160027}
!34 = !{i64 2154161699}
!35 = !{i64 2154167181}
!36 = !{i64 2154168807}
!37 = !{i64 2154170226}
!38 = !{i64 2154171666}
!39 = !{i64 2154173512}
!40 = !{i64 2154179332}
!41 = !{i8 0, i8 2}
!42 = !{i64 2154183633}
!43 = !{i64 2154208291}
!44 = !{i64 2148906037}
!45 = !{i64 2154214419}
!46 = !{i64 2154243179}
!47 = distinct !{!47, !16}
!48 = !{!"branch_weights", i32 4000000, i32 4001}
!49 = !{i64 2153964883}
!50 = !{i64 2154256153}
!51 = !{i64 2154265104, i64 2154265144, i64 2154265161, i64 2154265196, i64 2154265218, i64 2154265244, i64 2154265267, i64 2154265285, i64 2154265300, i64 2154265341, i64 2154265363, i64 2154265409}
!52 = !{i64 2154274851, i64 2154274891, i64 2154274908, i64 2154274943, i64 2154274965, i64 2154274991, i64 2154275014, i64 2154275032, i64 2154275047, i64 2154275088, i64 2154275110, i64 2154275156}
!53 = !{i64 4170395, i64 4170478, i64 4170702, i64 4170922, i64 4170945}
!54 = !{i64 2154278753}
!55 = !{i64 4175097, i64 4175121}
!56 = !{i64 2151723820}
!57 = !{i64 2149153545, i64 2149153592, i64 2149153598, i64 2149153635, i64 2149153653, i64 2149154580, i64 2149154628, i64 2149154676, i64 2149154739, i64 2149154788, i64 2149153731, i64 2149153756, i64 2149153782, i64 2149153788, i64 2149153825, i64 2149153831, i64 2149153881, i64 2149153927, i64 2149153960}
!58 = !{i64 2150045830}
!59 = !{i64 2150046047}
!60 = !{i64 1393974}
!61 = !{i64 2151729013}
!62 = !{i64 2151729220}
!63 = !{i64 2153796807}
!64 = !{i64 2147757747, i64 2147758263, i64 2147758293, i64 2147758320, i64 2147758354, i64 2147758384}
