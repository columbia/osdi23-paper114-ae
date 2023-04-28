; ModuleID = 'fs/proc/root.c'
source_filename = "fs/proc/root.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.4, i64, i32 }
%union.anon.4 = type { i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.68, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.5, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.17 }
%union.anon.17 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.12, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.11, [0 x i64] }
%struct.anon.11 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.kernel_siginfo = type { %struct.anon.33 }
%struct.anon.33 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, i64, i64 }
%struct.pt_regs = type { %union.anon.45, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.45 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.55, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.8 }
%union.anon.8 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.47 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.nsset = type { i32, %struct.nsproxy*, %struct.fs_struct*, %struct.cred* }
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
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.52, %union.anon.53, i32 }
%struct.request_queue = type opaque
%union.anon.52 = type { %struct.list_head }
%union.anon.53 = type { %struct.hlist_node }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.54, i32, [12 x i8] }
%union.anon.54 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.15, %union.anon.31, %struct.atomic_t, [8 x i8] }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.31 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.56, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.56 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.12 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.13, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.14, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.13 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.14 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.61 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.59, %struct.qspinlock }
%union.anon.59 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.61 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.66 = type { %struct.callback_head }
%union.anon.67 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.68 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.64, i32 }
%union.anon.64 = type { %struct.kuid_t }
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
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7, [48 x i8] }
%struct.anon.7 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.57, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.net = type opaque
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.32 = type { %struct.callback_head }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.63 }
%union.anon.63 = type { i64 }
%struct.module = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.lock_class_key = type {}
%union.anon.74 = type { %struct.seq_operations* }
%struct.seq_operations = type opaque
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, %union.anon.73, %struct.dentry_operations*, %union.anon.74, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }
%union.anon.73 = type { %struct.proc_ops* }
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.proc_fs_info = type { %struct.pid_namespace*, %struct.dentry*, %struct.dentry*, %struct.kgid_t, i32, i32 }
%struct.proc_fs_context = type { %struct.pid_namespace*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"mounts\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"self/mounts\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"fs/nfsd\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@proc_fs_type = internal global %struct.file_system_type { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 24, i32 (%struct.fs_context*)* @proc_init_fs_context, %struct.fs_parameter_spec* getelementptr inbounds ([4 x %struct.fs_parameter_spec], [4 x %struct.fs_parameter_spec]* @proc_fs_parameters, i32 0, i32 0), %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* null, void (%struct.super_block*)* @proc_kill_sb, %struct.module* null, %struct.file_system_type* null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8
@proc_root_inode_operations = internal constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @proc_root_lookup, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* null, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* @proc_root_getattr, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@proc_root_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @generic_read_dir, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* @proc_root_readdir, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"/proc\00", align 1
@proc_root = dso_local global { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, { %struct.file_operations* }, %struct.dentry_operations*, %union.anon.74, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] } { %struct.atomic_t zeroinitializer, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, %struct.completion* null, %struct.inode_operations* @proc_root_inode_operations, { %struct.file_operations* } { %struct.file_operations* @proc_root_operations }, %struct.dentry_operations* null, %union.anon.74 zeroinitializer, i32 (%struct.file*, i8*, i64)* null, i8* null, i32 0, i32 1, i32 2, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, i64 0, %struct.proc_dir_entry* bitcast ({ %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, { %struct.file_operations* }, %struct.dentry_operations*, %union.anon.74, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }* @proc_root to %struct.proc_dir_entry*), %struct.rb_root zeroinitializer, %struct.rb_node zeroinitializer, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i16 16749, i8 0, i8 5, [0 x i8] zeroinitializer }, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@proc_fs_parameters = internal constant [4 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)* @fs_param_is_u32, i8 0, i16 0, i8* null }, %struct.fs_parameter_spec { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)* @fs_param_is_string, i8 1, i16 0, i8* null }, %struct.fs_parameter_spec { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)* @fs_param_is_string, i8 2, i16 0, i8* null }, %struct.fs_parameter_spec zeroinitializer], align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@proc_fs_context_ops = internal constant { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)* } { void (%struct.fs_context*)* @proc_fs_context_free, i32 (%struct.fs_context*, %struct.fs_context*)* null, i32 (%struct.fs_context*, %struct.fs_parameter*)* @proc_parse_param, i32 (%struct.fs_context*, i8*)* null, i32 (%struct.fs_context*)* @proc_get_tree, i32 (%struct.fs_context*)* @proc_reconfigure }, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"hidepid\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"proc: unexpected type of hidepid value\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"proc: unknown value of hidepid - %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"noaccess\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"invisible\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"ptraceable\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"proc: unsupported subset option - %s\0A\00", align 1
@proc_sops = external dso_local constant %struct.super_operations, align 8
@.str.19 = private unnamed_addr constant [42 x i8] c"\013proc_fill_super: get root inode failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"\013proc_fill_super: allocate dentry failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"subset\00", align 1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @proc_root_init() local_unnamed_addr #0 section ".init.text" {
entry:
  call void @proc_init_kmemcache() #9
  call void @set_proc_pid_nlink() #9
  call void @proc_self_init() #9
  call void @proc_thread_self_init() #9
  %call = call %struct.proc_dir_entry* @proc_symlink(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.proc_dir_entry* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #9
  %call2 = call %struct.proc_dir_entry* @proc_mkdir(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.proc_dir_entry* noundef null) #9
  %call3 = call %struct.proc_dir_entry* @proc_mkdir(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.proc_dir_entry* noundef null) #9
  %call4 = call %struct.proc_dir_entry* @proc_create_mount_point(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #9
  call void @proc_tty_init() #9
  %call5 = call %struct.proc_dir_entry* @proc_mkdir(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.proc_dir_entry* noundef null) #9
  %call6 = call i32 @proc_sys_init() #9
  %call7 = call i32 @register_filesystem(%struct.file_system_type* noundef nonnull @proc_fs_type) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_init_kmemcache() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_proc_pid_nlink() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_self_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_thread_self_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_symlink(i8* noundef, %struct.proc_dir_entry* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8* noundef, %struct.proc_dir_entry* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create_mount_point(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_tty_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_sys_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_init_fs_context(%struct.fs_context* nocapture noundef writeonly %fc) #2 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 24) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call2 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %1) #9
  %pid_ns = bitcast i8* %call to %struct.pid_namespace**
  store %struct.pid_namespace* %call2, %struct.pid_namespace** %pid_ns, align 8
  %user_ns = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 6
  store %struct.user_namespace* @init_user_ns, %struct.user_namespace** %user_ns, align 8
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  store i8* %call, i8** %fs_private, align 8
  %ops = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 0
  store %struct.fs_context_operations* bitcast ({ void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)* }* @proc_fs_context_ops to %struct.fs_context_operations*), %struct.fs_context_operations** %ops, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @proc_kill_sb(%struct.super_block* noundef %sb) #2 {
entry:
  %call = call fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* noundef %sb) #10
  %tobool.not = icmp eq %struct.proc_fs_info* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @kill_anon_super(%struct.super_block* noundef %sb) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %proc_self = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %proc_self, align 8
  call void @dput(%struct.dentry* noundef %0) #9
  %proc_thread_self = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call, i64 0, i32 2
  %1 = load %struct.dentry*, %struct.dentry** %proc_thread_self, align 8
  call void @dput(%struct.dentry* noundef %1) #9
  call void @kill_anon_super(%struct.super_block* noundef %sb) #9
  %2 = bitcast %struct.proc_fs_info* %call to i8*
  call void @kfree(i8* noundef nonnull %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i64 noundef %size) unnamed_addr #2 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #9
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @proc_fs_context_free(%struct.fs_context* nocapture noundef readonly %fc) #2 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = load i8*, i8** %fs_private, align 8
  call void @kfree(i8* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_parse_param(%struct.fs_context* noundef %fc, %struct.fs_parameter* noundef %param) #2 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = bitcast i8** %fs_private to %struct.proc_fs_context**
  %1 = load %struct.proc_fs_context*, %struct.proc_fs_context** %0, align 8
  %2 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %result, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !8
  %call = call fastcc i32 @fs_parse(%struct.fs_context* noundef %fc, %struct.fs_parameter* noundef %param, %struct.fs_parse_result* noundef nonnull %result) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %call, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  %3 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %result, i64 0, i32 1
  %uint_32 = bitcast %union.anon.63* %3 to i32*
  %4 = load i32, i32* %uint_32, align 8
  %gid = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %1, i64 0, i32 3
  store i32 %4, i32* %gid, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %call2 = call fastcc i32 @proc_parse_hidepid_param(%struct.fs_context* noundef %fc, %struct.fs_parameter* noundef %param) #10
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %sw.epilog, label %cleanup

sw.bb5:                                           ; preds = %if.end
  %string = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %5 = load i8*, i8** %string, align 8
  %call6 = call fastcc i32 @proc_parse_subset_param(%struct.fs_context* noundef %fc, i8* noundef %5) #10
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %cleanup, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb1, %sw.bb
  %shl = shl nuw nsw i32 1, %call
  %mask = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %1, i64 0, i32 1
  %6 = load i32, i32* %mask, align 8
  %or = or i32 %6, %shl
  store i32 %or, i32* %mask, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb5, %sw.bb1, %entry, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call, %entry ], [ -22, %sw.bb1 ], [ -22, %sw.bb5 ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_get_tree(%struct.fs_context* noundef %fc) #2 {
entry:
  %call = call i32 @get_tree_nodev(%struct.fs_context* noundef %fc, i32 (%struct.super_block*, %struct.fs_context*)* noundef nonnull @proc_fill_super) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_reconfigure(%struct.fs_context* nocapture noundef readonly %fc) #2 {
entry:
  %root = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  %0 = load %struct.dentry*, %struct.dentry** %root, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 9
  %1 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call = call fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* noundef %1) #10
  %call1 = call i32 @sync_filesystem(%struct.super_block* noundef %1) #9
  call fastcc void @proc_apply_options(%struct.proc_fs_info* noundef %call, %struct.fs_context* noundef %fc) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fs_parse(%struct.fs_context* noundef %fc, %struct.fs_parameter* noundef %param, %struct.fs_parse_result* noundef %result) unnamed_addr #2 {
entry:
  %log = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9
  %call = call i32 @__fs_parse(%struct.p_log* noundef %log, %struct.fs_parameter_spec* noundef getelementptr inbounds ([4 x %struct.fs_parameter_spec], [4 x %struct.fs_parameter_spec]* @proc_fs_parameters, i64 0, i64 0), %struct.fs_parameter* noundef %param, %struct.fs_parse_result* noundef %result) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @proc_parse_hidepid_param(%struct.fs_context* nocapture noundef readonly %fc, %struct.fs_parameter* nocapture noundef readonly %param) unnamed_addr #2 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = bitcast i8** %fs_private to %struct.proc_fs_context**
  %1 = load %struct.proc_fs_context*, %struct.proc_fs_context** %0, align 8
  %2 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %result, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !8
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load = load i8, i8* %type, align 8
  %cmp.not = icmp eq i8 %bf.load, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %log2 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %3 = load %struct.fc_log*, %struct.fc_log** %log2, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %3, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0)) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %string = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %4 = load i8*, i8** %string, align 8
  %5 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %result, i64 0, i32 1
  %uint_32 = bitcast %union.anon.63* %5 to i32*
  %call = call i32 @kstrtouint(i8* noundef %4, i32 noundef 0, i32* noundef %uint_32) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end13

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %uint_32, align 8
  %call5 = call fastcc i32 @valid_hidepid(i32 noundef %6) #10
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.then3
  %log9 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %7 = load %struct.fc_log*, %struct.fc_log** %log9, align 8
  %8 = load i8*, i8** %string, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %7, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i8* noundef %8) #9
  br label %cleanup

if.end11:                                         ; preds = %if.then3
  %hidepid = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %1, i64 0, i32 2
  store i32 %6, i32* %hidepid, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %9 = load i8*, i8** %string, align 8
  %call15 = call i32 @strcmp(i8* noundef %9, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #9
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  %hidepid18 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %1, i64 0, i32 2
  store i32 0, i32* %hidepid18, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end13
  %10 = load i8*, i8** %string, align 8
  %call20 = call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0)) #9
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else
  %hidepid23 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %1, i64 0, i32 2
  store i32 1, i32* %hidepid23, align 4
  br label %cleanup

if.else24:                                        ; preds = %if.else
  %11 = load i8*, i8** %string, align 8
  %call26 = call i32 @strcmp(i8* noundef %11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #9
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else24
  %hidepid29 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %1, i64 0, i32 2
  store i32 2, i32* %hidepid29, align 4
  br label %cleanup

if.else30:                                        ; preds = %if.else24
  %12 = load i8*, i8** %string, align 8
  %call32 = call i32 @strcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #9
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else30
  %hidepid35 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %1, i64 0, i32 2
  store i32 4, i32* %hidepid35, align 4
  br label %cleanup

if.else36:                                        ; preds = %if.else30
  %log38 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %13 = load %struct.fc_log*, %struct.fc_log** %log38, align 8
  %14 = load i8*, i8** %string, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %13, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i8* noundef %14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.then28, %if.then34, %if.then22, %if.else36, %if.end11, %if.then7, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.else36 ], [ 0, %if.end11 ], [ -22, %if.then7 ], [ 0, %if.then22 ], [ 0, %if.then34 ], [ 0, %if.then28 ], [ 0, %if.then17 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @proc_parse_subset_param(%struct.fs_context* nocapture noundef readonly %fc, i8* noundef %value) unnamed_addr #2 {
entry:
  %tobool.not23 = icmp eq i8* %value, null
  br i1 %tobool.not23, label %cleanup10, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = bitcast i8** %fs_private to %struct.proc_fs_context**
  %1 = load %struct.proc_fs_context*, %struct.proc_fs_context** %0, align 8
  %pidonly = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %1, i64 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %value.addr.024 = phi i8* [ %value, %while.body.lr.ph ], [ %ptr.0, %cleanup ]
  %call = call i8* @strchr(i8* noundef nonnull %value.addr.024, i32 noundef 44) #9
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %incdec.ptr = getelementptr i8, i8* %call, i64 1
  store i8 0, i8* %call, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %ptr.0 = phi i8* [ %incdec.ptr, %if.then ], [ null, %while.body ]
  %2 = load i8, i8* %value.addr.024, align 1
  %cmp1.not = icmp eq i8 %2, 0
  br i1 %cmp1.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @strcmp(i8* noundef nonnull %value.addr.024, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #9
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %cleanup.thread

if.then6:                                         ; preds = %if.then3
  store i32 1, i32* %pidonly, align 4
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then3
  %log7 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %3 = load %struct.fc_log*, %struct.fc_log** %log7, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %3, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i8* noundef nonnull %value.addr.024) #9
  br label %cleanup10

cleanup:                                          ; preds = %if.end, %if.then6
  %tobool.not = icmp eq i8* %ptr.0, null
  br i1 %tobool.not, label %cleanup10, label %while.body

cleanup10:                                        ; preds = %cleanup, %entry, %cleanup.thread
  %retval.2 = phi i32 [ -22, %cleanup.thread ], [ 0, %entry ], [ 0, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(%struct.p_log* noundef, %struct.fs_parameter_spec* noundef, %struct.fs_parameter* noundef, %struct.fs_parse_result* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(%struct.p_log* noundef, %struct.fs_parameter_spec* noundef, %struct.fs_parameter* noundef, %struct.fs_parse_result* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(%struct.fc_log* noundef, i8* noundef, i8 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @valid_hidepid(i32 noundef %value) unnamed_addr #5 {
entry:
  %0 = icmp ult i32 %value, 3
  %cmp4 = icmp eq i32 %value, 4
  %narrow = or i1 %0, %cmp4
  %1 = zext i1 %narrow to i32
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_nodev(%struct.fs_context* noundef, i32 (%struct.super_block*, %struct.fs_context*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_fill_super(%struct.super_block* noundef %s, %struct.fs_context* nocapture noundef readonly %fc) #2 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = bitcast i8** %fs_private to %struct.proc_fs_context**
  %1 = load %struct.proc_fs_context*, %struct.proc_fs_context** %0, align 8
  %call = call fastcc i8* @kzalloc(i64 noundef 40) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast i8* %call to %struct.proc_fs_info*
  %pid_ns = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %1, i64 0, i32 0
  %3 = load %struct.pid_namespace*, %struct.pid_namespace** %pid_ns, align 8
  %pid_ns2 = bitcast i8* %call to %struct.pid_namespace**
  store %struct.pid_namespace* %3, %struct.pid_namespace** %pid_ns2, align 8
  call fastcc void @proc_apply_options(%struct.proc_fs_info* noundef nonnull %2, %struct.fs_context* noundef %fc) #10
  %s_iflags = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 11
  %4 = load i64, i64* %s_iflags, align 8
  %or = or i64 %4, 22
  store i64 %or, i64* %s_iflags, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 10
  %5 = load i64, i64* %s_flags, align 16
  %or4 = or i64 %5, 2058
  store i64 %or4, i64* %s_flags, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 3
  store i64 1024, i64* %s_blocksize, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 2
  store i8 10, i8* %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 12
  store i64 40864, i64* %s_magic, align 32
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 6
  store %struct.super_operations* @proc_sops, %struct.super_operations** %s_op, align 16
  %s_time_gran = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 28
  store i32 1, i32* %s_time_gran, align 16
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 27
  store i8* %call, i8** %s_fs_info, align 8
  %s_stack_depth = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 52
  store i32 2, i32* %s_stack_depth, align 64
  %seeks = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 39, i32 3
  store i32 0, i32* %seeks, align 8
  call fastcc void @pde_get() #10
  %call5 = call %struct.inode* @proc_get_inode(%struct.super_block* noundef %s, %struct.proc_dir_entry* noundef bitcast ({ %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, { %struct.file_operations* }, %struct.dentry_operations*, %union.anon.74, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }* @proc_root to %struct.proc_dir_entry*)) #9
  %tobool6.not = icmp eq %struct.inode* %call5, null
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0)) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = call %struct.dentry* @d_make_root(%struct.inode* noundef nonnull %call5) #9
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 13
  store %struct.dentry* %call10, %struct.dentry** %s_root, align 8
  %tobool12.not = icmp eq %struct.dentry* %call10, null
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end9
  %call18 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0)) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %call20 = call i32 @proc_setup_self(%struct.super_block* noundef %s) #9
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %cleanup

if.end23:                                         ; preds = %if.end19
  %call24 = call i32 @proc_setup_thread_self(%struct.super_block* noundef %s) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry, %if.end23, %do.end16, %do.end
  %retval.0 = phi i32 [ %call24, %if.end23 ], [ -12, %do.end16 ], [ -12, %do.end ], [ -12, %entry ], [ %call20, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @proc_apply_options(%struct.proc_fs_info* nocapture noundef writeonly %fs_info, %struct.fs_context* nocapture noundef readonly %fc) unnamed_addr #6 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = bitcast i8** %fs_private to %struct.proc_fs_context**
  %1 = load %struct.proc_fs_context*, %struct.proc_fs_context** %0, align 8
  %mask = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %1, i64 0, i32 1
  %2 = load i32, i32* %mask, align 8
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %gid = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %1, i64 0, i32 3
  %3 = load i32, i32* %gid, align 8
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %fs_info, i64 0, i32 3, i32 0
  store i32 %3, i32* %tmp.sroa.0.0..sroa_idx, align 8
  %.pre = load i32, i32* %mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi i32 [ %.pre, %if.then ], [ %2, %entry ]
  %and2 = and i32 %4, 2
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %hidepid = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %1, i64 0, i32 2
  %5 = load i32, i32* %hidepid, align 4
  %hide_pid = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %fs_info, i64 0, i32 4
  store i32 %5, i32* %hide_pid, align 4
  %.pre1 = load i32, i32* %mask, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = phi i32 [ %.pre1, %if.then4 ], [ %4, %if.end ]
  %and7 = and i32 %6, 4
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end5
  %pidonly = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %1, i64 0, i32 4
  %7 = load i32, i32* %pidonly, align 4
  %pidonly10 = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %fs_info, i64 0, i32 5
  store i32 %7, i32* %pidonly10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pde_get() unnamed_addr #2 {
entry:
  call fastcc void @refcount_inc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @proc_get_inode(%struct.super_block* noundef, %struct.proc_dir_entry* noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_make_root(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_setup_self(%struct.super_block* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_setup_thread_self(%struct.super_block* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc() unnamed_addr #2 {
entry:
  call fastcc void @__refcount_inc() #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc() unnamed_addr #2 {
entry:
  call fastcc void @__refcount_add() #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add() unnamed_addr #2 {
entry:
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed() #9
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !9

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !10

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef getelementptr inbounds ({ %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, { %struct.file_operations* }, %struct.dentry_operations*, %union.anon.74, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }, { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, { %struct.file_operations* }, %struct.dentry_operations*, %union.anon.74, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }* @proc_root, i64 0, i32 1), i32 noundef %.sink) #9
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed() unnamed_addr #2 {
entry:
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) getelementptr inbounds ({ %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, { %struct.file_operations* }, %struct.dentry_operations*, %union.anon.74, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }, { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, { %struct.file_operations* }, %struct.dentry_operations*, %union.anon.74, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }* @proc_root, i64 0, i32 1, i32 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds ({ %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, { %struct.file_operations* }, %struct.dentry_operations*, %union.anon.74, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }, { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, { %struct.file_operations* }, %struct.dentry_operations*, %union.anon.74, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }* @proc_root, i64 0, i32 1, i32 0, i32 0)) #12, !srcloc !11
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #8 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = bitcast i8** %s_fs_info to %struct.proc_fs_info**
  %1 = load %struct.proc_fs_info*, %struct.proc_fs_info** %0, align 8
  ret %struct.proc_fs_info* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(%struct.super_block* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(%struct.p_log* noundef, %struct.fs_parameter_spec* noundef, %struct.fs_parameter* noundef, %struct.fs_parse_result* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(%struct.super_block* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_root_lookup(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i32 noundef %flags) #2 {
entry:
  %call = call %struct.dentry* @proc_pid_lookup(%struct.dentry* noundef %dentry, i32 noundef %flags) #9
  %tobool.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.dentry* @proc_lookup(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i32 noundef %flags) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.dentry* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_root_getattr(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.path* nocapture noundef readonly %path, %struct.kstat* noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #2 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %0) #10
  call void @generic_fillattr(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call, %struct.kstat* noundef %stat) #9
  %1 = load i32, i32* getelementptr inbounds ({ %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, { %struct.file_operations* }, %struct.dentry_operations*, %union.anon.74, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }, { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, { %struct.file_operations* }, %struct.dentry_operations*, %union.anon.74, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }* @proc_root, i64 0, i32 13), align 8
  %call1 = call i32 @nr_processes() #9
  %add = add i32 %call1, %1
  %nlink = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 2
  store i32 %add, i32* %nlink, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @proc_pid_lookup(%struct.dentry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @proc_lookup(%struct.inode* noundef, %struct.dentry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.kstat* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #8 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_processes() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_read_dir(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_root_readdir(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #2 {
entry:
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %0 = load i64, i64* %pos, align 8
  %cmp = icmp slt i64 %0, 256
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = call i32 @proc_readdir(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #9
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %return, label %cleanup.thread, !prof !9

cleanup.thread:                                   ; preds = %if.then
  store i64 256, i64* %pos, align 8
  br label %if.end5

if.end5:                                          ; preds = %cleanup.thread, %entry
  %call6 = call i32 @proc_pid_readdir(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #9
  br label %return

return:                                           ; preds = %if.then, %if.end5
  %retval.1 = phi i32 [ %call6, %if.end5 ], [ %call, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_readdir(%struct.file* noundef, %struct.dir_context* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_pid_readdir(%struct.file* noundef, %struct.dir_context* noundef) local_unnamed_addr #1

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind readnone }
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
!7 = !{i64 223546}
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147900465, i64 2147901129, i64 2147901159, i64 2147901191, i64 2147901225, i64 2147901260, i64 2147901285}
