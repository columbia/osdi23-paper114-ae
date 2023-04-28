; ModuleID = 'fs/proc/inode.c'
source_filename = "fs/proc/inode.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.66, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.6, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.6 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.7 }
%union.anon.7 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.55, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.8, [0 x i64] }
%struct.anon.8 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.kernel_siginfo = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.14 }
%struct.anon.14 = type { i32, i32, i32, i64, i64 }
%struct.pt_regs = type { %union.anon.22, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.22 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.35, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.24 }
%union.anon.24 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.26, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.26 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.ucounts = type opaque
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
%struct.net = type opaque
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
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
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.34, i32, [12 x i8] }
%union.anon.34 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.35 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.36, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.53 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.54, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.54 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.55 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.50, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.51, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.50 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.51 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.56, %struct.qspinlock }
%union.anon.56 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.9 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.9 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.63 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.64 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.66 = type { %struct.pipe_inode_info* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.60, i32 }
%union.anon.60 = type { %struct.kuid_t }
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
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.kstatfs = type opaque
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, %union.anon.67, %struct.dentry_operations*, %union.anon.68, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }
%union.anon.67 = type { %struct.proc_ops* }
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%union.anon.68 = type { %struct.seq_operations* }
%struct.ctl_table_header = type { %union.anon.69, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.proc_inode = type { %struct.pid*, i32, %union.proc_op, %struct.proc_dir_entry*, %struct.ctl_table_header*, %struct.ctl_table*, %struct.hlist_node, %struct.proc_ns_operations*, %struct.inode }
%union.proc_op = type { i32 (%struct.dentry*, %struct.path*)* }
%struct.proc_fs_info = type { %struct.pid_namespace*, %struct.dentry*, %struct.dentry*, %struct.kgid_t, i32, i32 }
%struct.pde_opener = type { %struct.list_head, %struct.file*, i8, %struct.completion* }

@.str = private unnamed_addr constant [17 x i8] c"proc_inode_cache\00", align 1
@proc_inode_cachep = internal unnamed_addr global %struct.kmem_cache* null, section ".data..ro_after_init", align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"pde_opener\00", align 1
@pde_opener_cache = internal unnamed_addr global %struct.kmem_cache* null, section ".data..ro_after_init", align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"proc_dir_entry\00", align 1
@proc_dir_entry_cache = external dso_local local_unnamed_addr global %struct.kmem_cache*, align 8
@proc_sops = dso_local local_unnamed_addr constant %struct.super_operations { %struct.inode* (%struct.super_block*)* @proc_alloc_inode, void (%struct.inode*)* null, void (%struct.inode*)* @proc_free_inode, void (%struct.inode*, i32)* null, i32 (%struct.inode*, %struct.writeback_control*)* null, i32 (%struct.inode*)* @generic_delete_inode, void (%struct.inode*)* @proc_evict_inode, void (%struct.super_block*)* null, i32 (%struct.super_block*, i32)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.dentry*, %struct.kstatfs*)* @simple_statfs, i32 (%struct.super_block*, i32*, i8*)* null, void (%struct.super_block*)* null, i32 (%struct.seq_file*, %struct.dentry*)* @proc_show_options, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null }, align 8
@proc_link_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @proc_get_link, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* null, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@proc_iter_file_ops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @proc_reg_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* @proc_reg_write, i64 (%struct.kiocb*, %struct.iov_iter*)* @proc_reg_read_iter, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @proc_reg_poll, i64 (%struct.file*, i32, i64)* @proc_reg_unlocked_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* @proc_reg_mmap, i64 0, i32 (%struct.inode*, %struct.file*)* @proc_reg_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @proc_reg_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* @proc_reg_get_unmapped_area, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* @generic_file_splice_read, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@proc_reg_file_ops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @proc_reg_llseek, i64 (%struct.file*, i8*, i64, i64*)* @proc_reg_read, i64 (%struct.file*, i8*, i64, i64*)* @proc_reg_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @proc_reg_poll, i64 (%struct.file*, i32, i64)* @proc_reg_unlocked_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* @proc_reg_mmap, i64 0, i32 (%struct.inode*, %struct.file*)* @proc_reg_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @proc_reg_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* @proc_reg_get_unmapped_area, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c",hidepid=%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c",subset=pid\00", align 1
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"noaccess\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"invisible\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ptraceable\00", align 1
@hidepid2str.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"bad hide_pid value: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@switch.table.hidepid2str = private unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)], align 8

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @proc_init_kmemcache() local_unnamed_addr #0 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 640, i32 noundef 0, i32 noundef 1441792, void (i8*)* noundef nonnull @init_once) #11
  store %struct.kmem_cache* %call, %struct.kmem_cache** @proc_inode_cachep, align 8
  %call1 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 40, i32 noundef 0, i32 noundef 262144, void (i8*)* noundef null) #11
  store %struct.kmem_cache* %call1, %struct.kmem_cache** @pde_opener_cache, align 8
  %call2 = call %struct.kmem_cache* @kmem_cache_create_usercopy(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 192, i32 noundef 0, i32 noundef 262144, i32 noundef 172, i32 noundef 16, void (i8*)* noundef null) #11
  store %struct.kmem_cache* %call2, %struct.kmem_cache** @proc_dir_entry_cache, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @init_once(i8* noundef %foo) #2 {
entry:
  %vfs_inode = getelementptr inbounds i8, i8* %foo, i64 72
  %0 = bitcast i8* %vfs_inode to %struct.inode*
  call void @inode_init_once(%struct.inode* noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create_usercopy(i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @proc_invalidate_siblings_dcache(%struct.hlist_head* nocapture noundef readonly %inodes, %struct.spinlock* noundef %lock) local_unnamed_addr #2 {
entry:
  call fastcc void @__rcu_read_lock() #11
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %inodes, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not69 = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not69, label %for.end.thread, label %if.end.lr.ph

for.end.thread:                                   ; preds = %entry
  call fastcc void @rcu_read_unlock() #12
  br label %if.end29

if.end.lr.ph:                                     ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %lock, i64 0, i32 0, i32 0
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %cleanup
  %1 = phi %struct.hlist_node* [ %0, %if.end.lr.ph ], [ %9, %cleanup ]
  %old_sb.070 = phi %struct.super_block* [ null, %if.end.lr.ph ], [ %old_sb.2, %cleanup ]
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  call fastcc void @hlist_del_init_rcu(%struct.hlist_node* noundef nonnull %1) #12
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  %vfs_inode = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 1, i32 1
  %2 = bitcast %struct.hlist_node*** %vfs_inode to %struct.inode*
  %i_sb = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %vfs_inode, i64 3
  %3 = bitcast %struct.hlist_node*** %i_sb to %struct.super_block**
  %4 = load %struct.super_block*, %struct.super_block** %3, align 8
  %cmp.not = icmp eq %struct.super_block* %4, %old_sb.070
  br i1 %cmp.not, label %if.end2, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %s_active = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 16
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %s_active, i64 0, i32 0
  %5 = load volatile i32, i32* %counter.i.i.i.i, align 4
  %6 = bitcast %struct.atomic_t* %s_active to i8*
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond.i.i.i.i, %land.lhs.true
  %c.0.i.i.i.i = phi i32 [ %5, %land.lhs.true ], [ %call11.i.i.i.i.i.i, %do.cond.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %cleanup, label %do.cond.i.i.i.i, !prof !7

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %c.0.i.i.i.i, 1
  %call11.i.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %6, i32 noundef %c.0.i.i.i.i, i32 noundef %add.i.i.i.i) #11
  %cmp.not.i.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, %call11.i.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %if.end2, label %do.body.i.i.i.i, !prof !8

if.end2:                                          ; preds = %do.cond.i.i.i.i, %if.end
  %call3 = call %struct.inode* @igrab(%struct.inode* noundef %2) #11
  call fastcc void @rcu_read_unlock() #12
  br i1 %cmp.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end2
  %tobool6.not = icmp eq %struct.super_block* %old_sb.070, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.then5
  call void @deactivate_super(%struct.super_block* noundef nonnull %old_sb.070) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then7, %if.end2
  %old_sb.1 = phi %struct.super_block* [ %old_sb.070, %if.end2 ], [ %4, %if.then7 ], [ %4, %if.then5 ]
  %tobool10.not = icmp eq %struct.inode* %call3, null
  br i1 %tobool10.not, label %cleanup.sink.split, label %if.end15, !prof !7

if.end15:                                         ; preds = %if.end9
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call3, i64 0, i32 0
  %7 = load i16, i16* %i_mode, align 8
  %8 = and i16 %7, -4096
  %cmp17 = icmp eq i16 %8, 16384
  br i1 %cmp17, label %if.then19, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end15
  %call2466 = call %struct.dentry* @d_find_alias(%struct.inode* noundef nonnull %call3) #11
  %tobool25.not67 = icmp eq %struct.dentry* %call2466, null
  br i1 %tobool25.not67, label %if.end26, label %while.body

if.then19:                                        ; preds = %if.end15
  %call20 = call %struct.dentry* @d_find_any_alias(%struct.inode* noundef nonnull %call3) #11
  %tobool21.not = icmp eq %struct.dentry* %call20, null
  br i1 %tobool21.not, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.then19
  call void @d_invalidate(%struct.dentry* noundef nonnull %call20) #11
  call void @dput(%struct.dentry* noundef nonnull %call20) #11
  br label %if.end26

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call2468 = phi %struct.dentry* [ %call24, %while.body ], [ %call2466, %while.cond.preheader ]
  call void @d_invalidate(%struct.dentry* noundef nonnull %call2468) #11
  call void @dput(%struct.dentry* noundef nonnull %call2468) #11
  %call24 = call %struct.dentry* @d_find_alias(%struct.inode* noundef nonnull %call3) #11
  %tobool25.not = icmp eq %struct.dentry* %call24, null
  br i1 %tobool25.not, label %if.end26, label %while.body

if.end26:                                         ; preds = %while.body, %while.cond.preheader, %if.then19, %if.then22
  call void @iput(%struct.inode* noundef nonnull %call3) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9, %if.end26
  call fastcc void @__rcu_read_lock() #11
  br label %cleanup

cleanup:                                          ; preds = %do.body.i.i.i.i, %cleanup.sink.split
  %old_sb.2 = phi %struct.super_block* [ %old_sb.1, %cleanup.sink.split ], [ %old_sb.070, %do.body.i.i.i.i ]
  %9 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %9, null
  br i1 %tobool.not, label %for.end, label %if.end

for.end:                                          ; preds = %cleanup
  call fastcc void @rcu_read_unlock() #12
  %tobool27.not = icmp eq %struct.super_block* %old_sb.2, null
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %for.end
  call void @deactivate_super(%struct.super_block* noundef nonnull %old_sb.2) #11
  br label %if.end29

if.end29:                                         ; preds = %for.end.thread, %if.then28, %for.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init_rcu(%struct.hlist_node* noundef %n) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #12
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @igrab(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #2 {
entry:
  call fastcc void @__rcu_read_unlock() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(%struct.super_block* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_find_any_alias(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(%struct.dentry* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_find_alias(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal noalias %struct.inode* @proc_alloc_inode(%struct.super_block* nocapture noundef readnone %sb) #2 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @proc_inode_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #11
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pid = bitcast i8* %call to %struct.pid**
  store %struct.pid* null, %struct.pid** %pid, align 8
  %fd = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %fd to i32*
  store i32 0, i32* %1, align 8
  %op = getelementptr inbounds i8, i8* %call, i64 16
  %proc_get_link = bitcast i8* %op to i32 (%struct.dentry*, %struct.path*)**
  store i32 (%struct.dentry*, %struct.path*)* null, i32 (%struct.dentry*, %struct.path*)** %proc_get_link, align 8
  %pde = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %pde to %struct.proc_dir_entry**
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %2, align 8
  %sysctl = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %sysctl to %struct.ctl_table_header**
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %3, align 8
  %sysctl_entry = getelementptr inbounds i8, i8* %call, i64 40
  %4 = bitcast i8* %sysctl_entry to %struct.ctl_table**
  store %struct.ctl_table* null, %struct.ctl_table** %4, align 8
  %sibling_inodes = getelementptr inbounds i8, i8* %call, i64 48
  %5 = bitcast i8* %sibling_inodes to %struct.hlist_node*
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %5) #12
  %ns_ops = getelementptr inbounds i8, i8* %call, i64 64
  %6 = bitcast i8* %ns_ops to %struct.proc_ns_operations**
  store %struct.proc_ns_operations* null, %struct.proc_ns_operations** %6, align 8
  %vfs_inode = getelementptr inbounds i8, i8* %call, i64 72
  %7 = bitcast i8* %vfs_inode to %struct.inode*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.inode* [ %7, %if.end ], [ null, %entry ]
  ret %struct.inode* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @proc_free_inode(%struct.inode* noundef %inode) #2 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @proc_inode_cachep, align 8
  %call = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #12
  %1 = bitcast %struct.proc_inode* %call to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(%struct.inode* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @proc_evict_inode(%struct.inode* noundef %inode) #2 {
entry:
  %call = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #12
  %i_data = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38
  call void @truncate_inode_pages_final(%struct.address_space* noundef %i_data) #11
  call void @clear_inode(%struct.inode* noundef %inode) #11
  %pid = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call, i64 0, i32 0
  %0 = load %struct.pid*, %struct.pid** %pid, align 8
  %tobool.not = icmp eq %struct.pid* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @proc_pid_evict_inode(%struct.proc_inode* noundef %call) #11
  store %struct.pid* null, %struct.pid** %pid, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pde = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call, i64 0, i32 3
  %1 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %pde, align 8
  %tobool2.not = icmp eq %struct.proc_dir_entry* %1, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @pde_put(%struct.proc_dir_entry* noundef nonnull %1) #11
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %pde, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %sysctl = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call, i64 0, i32 4
  %2 = load %struct.ctl_table_header*, %struct.ctl_table_header** %sysctl, align 8
  %tobool6.not = icmp eq %struct.ctl_table_header* %2, null
  br i1 %tobool6.not, label %if.end18, label %do.body10

do.body10:                                        ; preds = %if.end5
  store volatile %struct.ctl_table_header* null, %struct.ctl_table_header** %sysctl, align 8
  call void @proc_sys_evict_inode(%struct.inode* noundef %inode, %struct.ctl_table_header* noundef nonnull %2) #11
  br label %if.end18

if.end18:                                         ; preds = %do.body10, %if.end5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(%struct.dentry* noundef, %struct.kstatfs* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_show_options(%struct.seq_file* noundef %seq, %struct.dentry* nocapture noundef readonly %root) #2 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %root, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call = call fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* noundef %0) #12
  %coerce.dive = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call, i64 0, i32 3, i32 0
  %1 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %1 to i64
  %call3 = call fastcc i1 @gid_eq(i64 %coerce.val.ii) #12
  br i1 %call3, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call7 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii) #12
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %call7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %hide_pid = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call, i64 0, i32 4
  %2 = load i32, i32* %hide_pid, align 4
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end
  %call10 = call fastcc i8* @hidepid2str(i32 noundef %2) #12
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call10) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end
  %pidonly = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call, i64 0, i32 5
  %3 = load i32, i32* %pidonly, align 8
  %cmp12.not = icmp eq i32 %3, 0
  br i1 %cmp12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @proc_entry_rundown(%struct.proc_dir_entry* noundef %de) local_unnamed_addr #2 {
entry:
  %c = alloca %struct.completion, align 8
  %0 = bitcast %struct.completion* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #13
  %task_list = getelementptr inbounds %struct.completion, %struct.completion* %c, i64 0, i32 1, i32 1
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %task_list, i64 0, i32 0
  %1 = bitcast %struct.completion* %c to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store %struct.list_head* %task_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.completion, %struct.completion* %c, i64 0, i32 1, i32 1, i32 1
  store %struct.list_head* %task_list, %struct.list_head** %prev, align 8
  %pde_unload_completion = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 4
  store %struct.completion* %c, %struct.completion** %pde_unload_completion, align 8
  %in_use = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return(%struct.atomic_t* noundef %in_use) #11
  %cmp.not = icmp eq i32 %call.i.i, -2147483648
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @wait_for_completion(%struct.completion* noundef nonnull %c) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rlock.i = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 3, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %pde_openers = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 2
  %call521 = call fastcc i32 @list_empty(%struct.list_head* noundef %pde_openers) #12
  %tobool.not22 = icmp eq i32 %call521, 0
  br i1 %tobool.not22, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %2 = bitcast %struct.list_head* %pde_openers to %struct.pde_opener**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %3 = load %struct.pde_opener*, %struct.pde_opener** %2, align 8
  call fastcc void @close_pdeo(%struct.proc_dir_entry* noundef %de, %struct.pde_opener* noundef %3) #12
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %call5 = call fastcc i32 @list_empty(%struct.list_head* noundef %pde_openers) #12
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @close_pdeo(%struct.proc_dir_entry* noundef %pde, %struct.pde_opener* noundef %pdeo) unnamed_addr #2 {
entry:
  %c = alloca %struct.completion, align 8
  %closing = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %pdeo, i64 0, i32 2
  %0 = load i8, i8* %closing, align 8, !range !9
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.completion* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #13
  %task_list = getelementptr inbounds %struct.completion, %struct.completion* %c, i64 0, i32 1, i32 1
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %task_list, i64 0, i32 0
  %2 = bitcast %struct.completion* %c to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store %struct.list_head* %task_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.completion, %struct.completion* %c, i64 0, i32 1, i32 1, i32 1
  store %struct.list_head* %task_list, %struct.list_head** %prev, align 8
  %c5 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %pdeo, i64 0, i32 3
  store %struct.completion* %c, %struct.completion** %c5, align 8
  %rlock.i = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 3, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  call void @wait_for_completion(%struct.completion* noundef nonnull %c) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #13
  br label %if.end18

if.else:                                          ; preds = %entry
  store i8 1, i8* %closing, align 8
  %rlock.i33 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 3, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i33) #11
  %file9 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %pdeo, i64 0, i32 1
  %3 = load %struct.file*, %struct.file** %file9, align 8
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 6, i32 0
  %4 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops, align 8
  %proc_release = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %4, i64 0, i32 6
  %5 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %proc_release, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %3) #12
  %call10 = call i32 %5(%struct.inode* noundef %call, %struct.file* noundef %3) #11
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i33) #11
  %lh = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %pdeo, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %lh) #12
  %c12 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %pdeo, i64 0, i32 3
  %6 = load %struct.completion*, %struct.completion** %c12, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i33) #11
  %tobool14.not = icmp eq %struct.completion* %6, null
  br i1 %tobool14.not, label %if.end, label %if.then17, !prof !8

if.then17:                                        ; preds = %if.else
  call void @complete(%struct.completion* noundef nonnull %6) #11
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.else
  %7 = load %struct.kmem_cache*, %struct.kmem_cache** @pde_opener_cache, align 8
  %8 = bitcast %struct.pde_opener* %pdeo to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %7, i8* noundef %8) #11
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @proc_get_link(%struct.dentry* nocapture noundef readnone %dentry, %struct.inode* noundef %inode, %struct.delayed_call* nocapture noundef writeonly %done) #2 {
entry:
  %call = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %inode) #12
  %call1 = call fastcc i32 @use_pde(%struct.proc_dir_entry* noundef %call) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.proc_dir_entry* %call to i8*
  call fastcc void @set_delayed_call(%struct.delayed_call* noundef %done, i8* noundef %0) #12
  %data = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 10
  %1 = load i8*, i8** %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %1, %if.end ], [ inttoptr (i64 -22 to i8*), %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @proc_get_inode(%struct.super_block* noundef %sb, %struct.proc_dir_entry* noundef %de) local_unnamed_addr #2 {
entry:
  %call = call %struct.inode* @new_inode(%struct.super_block* noundef %sb) #11
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @pde_put(%struct.proc_dir_entry* noundef %de) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %low_ino = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 12
  %0 = load i32, i32* %low_ino, align 4
  %conv = zext i32 %0 to i64
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  store i64 %conv, i64* %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 13
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 12
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14
  %call1 = call [2 x i64] @current_time(%struct.inode* noundef nonnull %call) #11
  %call1.fca.0.extract = extractvalue [2 x i64] %call1, 0
  %call1.fca.1.extract = extractvalue [2 x i64] %call1, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 0
  store i64 %call1.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx54 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 1
  store i64 %call1.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx54, align 8
  %1 = bitcast %struct.timespec64* %i_atime to i8*
  %2 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %1, i8* noundef align 8 dereferenceable(16) %2, i64 16, i1 false)
  %3 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %3, i8* noundef align 8 dereferenceable(16) %2, i64 16, i1 false)
  %call2 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef nonnull %call) #12
  %pde = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call2, i64 0, i32 3
  store %struct.proc_dir_entry* %de, %struct.proc_dir_entry** %pde, align 8
  %call3 = call fastcc i1 @is_empty_pde(%struct.proc_dir_entry* noundef %de) #12
  br i1 %call3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @make_empty_dir_inode(%struct.inode* noundef nonnull %call) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 21
  %4 = load i16, i16* %mode, align 8
  %tobool6.not = icmp eq i16 %4, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  store i16 %4, i16* %i_mode, align 8
  %5 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 14, i32 0
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 2, i32 0
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 15, i32 0
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 3, i32 0
  %10 = load i32, i32* %8, align 8
  store i32 %10, i32* %9, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %size = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 16
  %11 = load i64, i64* %size, align 8
  %tobool10.not = icmp eq i64 %11, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 11
  store i64 %11, i64* %i_size, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %nlink = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 13
  %12 = load i32, i32* %nlink, align 8
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @set_nlink(%struct.inode* noundef nonnull %call, i32 noundef %12) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13
  %i_mode18 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %13 = load i16, i16* %i_mode18, align 8
  %14 = and i16 %13, -4096
  switch i16 %14, label %do.body [
    i16 -32768, label %if.then21
    i16 16384, label %if.then32
    i16 -24576, label %if.then42
  ]

if.then21:                                        ; preds = %if.end17
  %proc_iops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 5
  %15 = load %struct.inode_operations*, %struct.inode_operations** %proc_iops, align 8
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  store %struct.inode_operations* %15, %struct.inode_operations** %i_op, align 8
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 6, i32 0
  %16 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops, align 8
  %proc_read_iter = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %16, i64 0, i32 3
  %17 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %proc_read_iter, align 8
  %tobool22.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %17, null
  %i_fop24 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 36, i32 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then21
  store %struct.file_operations* @proc_iter_file_ops, %struct.file_operations** %i_fop24, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then21
  store %struct.file_operations* @proc_reg_file_ops, %struct.file_operations** %i_fop24, align 8
  br label %cleanup

if.then32:                                        ; preds = %if.end17
  %proc_iops33 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 5
  %18 = load %struct.inode_operations*, %struct.inode_operations** %proc_iops33, align 8
  %i_op34 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  store %struct.inode_operations* %18, %struct.inode_operations** %i_op34, align 8
  %19 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 6
  %proc_dir_ops = bitcast %union.anon.67* %19 to %struct.file_operations**
  %20 = load %struct.file_operations*, %struct.file_operations** %proc_dir_ops, align 8
  %i_fop35 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 36, i32 0
  store %struct.file_operations* %20, %struct.file_operations** %i_fop35, align 8
  br label %cleanup

if.then42:                                        ; preds = %if.end17
  %proc_iops43 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %de, i64 0, i32 5
  %21 = load %struct.inode_operations*, %struct.inode_operations** %proc_iops43, align 8
  %i_op44 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  store %struct.inode_operations* %21, %struct.inode_operations** %i_op44, align 8
  %i_fop45 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 36, i32 0
  store %struct.file_operations* null, %struct.file_operations** %i_fop45, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/inode.c\22; .popsection; .long 14472b - 14470b; .short 692; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !10
  unreachable

cleanup:                                          ; preds = %if.else, %if.then23, %if.then42, %if.then32, %if.then4, %if.then
  ret %struct.inode* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @new_inode(%struct.super_block* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pde_put(%struct.proc_dir_entry* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @current_time(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef readnone %inode) unnamed_addr #8 {
entry:
  %add.ptr = getelementptr %struct.inode, %struct.inode* %inode, i64 -1, i32 38, i32 11
  %0 = bitcast i32* %add.ptr to %struct.proc_inode*
  ret %struct.proc_inode* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_empty_pde(%struct.proc_dir_entry* nocapture noundef readonly %pde) unnamed_addr #9 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_dir_inode(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(%struct.inode* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #2 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #13, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #9 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #4 {
entry:
  %next1 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %next1, align 8
  %pprev2 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  %1 = load %struct.hlist_node**, %struct.hlist_node*** %pprev2, align 8
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %1, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end, label %do.body13

do.body13:                                        ; preds = %entry
  %pprev14 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %1, %struct.hlist_node*** %pprev14, align 8
  br label %if.end

if.end:                                           ; preds = %do.body13, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #13, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #2 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #13, !srcloc !16
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  call void @rcu_read_unlock_strict() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(%struct.address_space* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_pid_evict_inode(%struct.proc_inode* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_sys_evict_inode(%struct.inode* noundef, %struct.ctl_table_header* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #9 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = bitcast i8** %s_fs_info to %struct.proc_fs_info**
  %1 = load %struct.proc_fs_info*, %struct.proc_fs_info** %0, align 8
  ret %struct.proc_fs_info* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_eq(i64 %left.coerce) unnamed_addr #8 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #12
  %call7 = call fastcc i32 @__kgid_val(i64 0) #12
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @from_kgid_munged(i64 %kgid.coerce) unnamed_addr #9 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @from_kgid(i64 %coerce.val.ii2) #12
  %cmp = icmp eq i32 %call, -1
  %0 = load i32, i32* @overflowgid, align 4
  %spec.select = select i1 %cmp, i32 %0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @hidepid2str(i32 noundef %v) unnamed_addr #2 {
entry:
  %0 = icmp ult i32 %v, 5
  br i1 %0, label %switch.hole_check, label %sw.epilog

sw.epilog:                                        ; preds = %switch.hole_check, %entry
  %.b43 = load i1, i1* @hidepid2str.__already_done, align 1
  br i1 %.b43, label %return, label %if.then, !prof !8

if.then:                                          ; preds = %sw.epilog
  store i1 true, i1* @hidepid2str.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 noundef %v) #11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/inode.c\22; .popsection; .long 14472b - 14470b; .short 177; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !18
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %v to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %sw.epilog, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check
  %2 = sext i32 %v to i64
  %switch.gep = getelementptr inbounds [5 x i8*], [5 x i8*]* @switch.table.hidepid2str, i64 0, i64 %2
  %switch.load = load i8*, i8** %switch.gep, align 8
  br label %return

return:                                           ; preds = %switch.lookup, %sw.epilog, %if.then
  %retval.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), %sw.epilog ], [ %switch.load, %switch.lookup ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #8 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kgid(i64 %kgid.coerce) unnamed_addr #8 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return(%struct.atomic_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 -2147483648, i32* elementtype(i32) %counter) #13, !srcloc !19
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #9 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #12
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #4 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef readonly %inode) unnamed_addr #9 {
entry:
  %call = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #12
  %pde = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call, i64 0, i32 3
  %0 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %pde, align 8
  ret %struct.proc_dir_entry* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @use_pde(%struct.proc_dir_entry* noundef %pde) unnamed_addr #2 {
entry:
  %counter.i.i = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %1 = bitcast %struct.proc_dir_entry* %pde to i8*
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i, %entry
  %c.0.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i, %do.cond.i.i ]
  %cmp.i.i = icmp slt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %atomic_inc_unless_negative.exit, label %do.cond.i.i, !prof !7

do.cond.i.i:                                      ; preds = %do.body.i.i
  %add.i.i = add nuw i32 %c.0.i.i, 1
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i, i32 noundef %add.i.i) #11
  %cmp.not.i.i.i = icmp eq i32 %c.0.i.i, %call11.i.i.i.i
  br i1 %cmp.not.i.i.i, label %atomic_inc_unless_negative.exit, label %do.body.i.i, !prof !8

atomic_inc_unless_negative.exit:                  ; preds = %do.body.i.i, %do.cond.i.i
  %2 = xor i1 %cmp.i.i, true
  %lnot.ext = zext i1 %2 to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_delayed_call(%struct.delayed_call* nocapture noundef writeonly %call, i8* noundef %arg) unnamed_addr #10 {
entry:
  %fn1 = getelementptr inbounds %struct.delayed_call, %struct.delayed_call* %call, i64 0, i32 0
  store void (i8*)* @proc_put_link, void (i8*)** %fn1, align 8
  %arg2 = getelementptr inbounds %struct.delayed_call, %struct.delayed_call* %call, i64 0, i32 1
  store i8* %arg, i8** %arg2, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @proc_put_link(i8* noundef %p) #2 {
entry:
  %0 = bitcast i8* %p to %struct.proc_dir_entry*
  call fastcc void @unuse_pde(%struct.proc_dir_entry* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unuse_pde(%struct.proc_dir_entry* noundef %pde) unnamed_addr #2 {
entry:
  %in_use = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 0
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %in_use) #11
  %cmp = icmp eq i32 %call.i.i.i, -2147483648
  br i1 %cmp, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  %pde_unload_completion = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 4
  %0 = load %struct.completion*, %struct.completion** %pde_unload_completion, align 8
  call void @complete(%struct.completion* noundef %0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !20
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @proc_reg_llseek(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence) #2 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #12
  %call1 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #12
  %call2 = call fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* noundef %call1) #12
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call1, i64 0, i32 6, i32 0
  %0 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops, align 8
  %proc_lseek = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %0, i64 0, i32 5
  %1 = load i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i64, i32)** %proc_lseek, align 8
  %call3 = call i64 %1(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %call4 = call fastcc i32 @use_pde(%struct.proc_dir_entry* noundef %call1) #12
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.else
  %proc_ops6 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call1, i64 0, i32 6, i32 0
  %2 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops6, align 8
  %proc_lseek7 = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %2, i64 0, i32 5
  %3 = load i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i64, i32)** %proc_lseek7, align 8
  %call8 = call i64 %3(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence) #11
  call fastcc void @unuse_pde(%struct.proc_dir_entry* noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.else, %if.then
  %retval.0 = phi i64 [ %call3, %if.then ], [ %call8, %if.then5 ], [ -22, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @proc_reg_write(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) #2 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #12
  %call1 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #12
  %call2 = call fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* noundef %call1) #12
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @pde_write(%struct.proc_dir_entry* noundef %call1, %struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %call4 = call fastcc i32 @use_pde(%struct.proc_dir_entry* noundef %call1) #12
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.else
  %call6 = call fastcc i64 @pde_write(%struct.proc_dir_entry* noundef %call1, %struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) #12
  call fastcc void @unuse_pde(%struct.proc_dir_entry* noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.else, %if.then
  %retval.0 = phi i64 [ %call3, %if.then ], [ %call6, %if.then5 ], [ -5, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @proc_reg_read_iter(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #2 {
entry:
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %0) #12
  %call1 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #12
  %call2 = call fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* noundef %call1) #12
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call1, i64 0, i32 6, i32 0
  %1 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops, align 8
  %proc_read_iter = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %1, i64 0, i32 3
  %2 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %proc_read_iter, align 8
  %call3 = call i64 %2(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call fastcc i32 @use_pde(%struct.proc_dir_entry* noundef %call1) #12
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %proc_ops7 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call1, i64 0, i32 6, i32 0
  %3 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops7, align 8
  %proc_read_iter8 = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %3, i64 0, i32 3
  %4 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %proc_read_iter8, align 8
  %call9 = call i64 %4(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #11
  call fastcc void @unuse_pde(%struct.proc_dir_entry* noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6, %if.then
  %retval.0 = phi i64 [ %call3, %if.then ], [ %call9, %if.end6 ], [ -5, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_reg_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %pts) #2 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #12
  %call1 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #12
  %call2 = call fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* noundef %call1) #12
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call fastcc i32 @pde_poll(%struct.proc_dir_entry* noundef %call1, %struct.file* noundef %file, %struct.poll_table_struct* noundef %pts) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %call4 = call fastcc i32 @use_pde(%struct.proc_dir_entry* noundef %call1) #12
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.else
  %call6 = call fastcc i32 @pde_poll(%struct.proc_dir_entry* noundef %call1, %struct.file* noundef %file, %struct.poll_table_struct* noundef %pts) #12
  call fastcc void @unuse_pde(%struct.proc_dir_entry* noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.else, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call6, %if.then5 ], [ 325, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @proc_reg_unlocked_ioctl(%struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) #2 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #12
  %call1 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #12
  %call2 = call fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* noundef %call1) #12
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @pde_ioctl(%struct.proc_dir_entry* noundef %call1, %struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %call4 = call fastcc i32 @use_pde(%struct.proc_dir_entry* noundef %call1) #12
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.else
  %call6 = call fastcc i64 @pde_ioctl(%struct.proc_dir_entry* noundef %call1, %struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) #12
  call fastcc void @unuse_pde(%struct.proc_dir_entry* noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.else, %if.then
  %retval.0 = phi i64 [ %call3, %if.then ], [ %call6, %if.then5 ], [ -25, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_reg_mmap(%struct.file* noundef %file, %struct.vm_area_struct* noundef %vma) #2 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #12
  %call1 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #12
  %call2 = call fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* noundef %call1) #12
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call fastcc i32 @pde_mmap(%struct.proc_dir_entry* noundef %call1, %struct.file* noundef %file, %struct.vm_area_struct* noundef %vma) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %call4 = call fastcc i32 @use_pde(%struct.proc_dir_entry* noundef %call1) #12
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.else
  %call6 = call fastcc i32 @pde_mmap(%struct.proc_dir_entry* noundef %call1, %struct.file* noundef %file, %struct.vm_area_struct* noundef %vma) #12
  call fastcc void @unuse_pde(%struct.proc_dir_entry* noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.else, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call6, %if.then5 ], [ -5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_reg_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #2 {
entry:
  %call = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %inode) #12
  %call1 = call fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* noundef %call) #12
  br i1 %call1, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 6, i32 0
  %0 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops, align 8
  %proc_open = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %0, i64 0, i32 1
  %1 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %proc_open, align 8
  %tobool.not = icmp eq i32 (%struct.inode*, %struct.file*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = call i32 %1(%struct.inode* noundef %inode, %struct.file* noundef %file) #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  %call5 = call fastcc i32 @use_pde(%struct.proc_dir_entry* noundef %call) #12
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %proc_ops9 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 6, i32 0
  %2 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops9, align 8
  %proc_release = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %2, i64 0, i32 6
  %3 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %proc_release, align 8
  %tobool10.not = icmp eq i32 (%struct.inode*, %struct.file*)* %3, null
  br i1 %tobool10.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.end8
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** @pde_opener_cache, align 8
  %call12 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %4, i32 noundef 3264) #11
  %tobool13.not = icmp eq i8* %call12, null
  br i1 %tobool13.not, label %out_unuse, label %if.end16.thread

if.end16:                                         ; preds = %if.end8
  %proc_open18 = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %2, i64 0, i32 1
  %5 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %proc_open18, align 8
  %tobool19.not = icmp eq i32 (%struct.inode*, %struct.file*)* %5, null
  br i1 %tobool19.not, label %out_unuse, label %if.end22

if.end16.thread:                                  ; preds = %if.then11
  %6 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops9, align 8
  %proc_open1870 = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %6, i64 0, i32 1
  %7 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %proc_open1870, align 8
  %tobool19.not71 = icmp eq i32 (%struct.inode*, %struct.file*)* %7, null
  br i1 %tobool19.not71, label %if.then25, label %if.then24

if.end22:                                         ; preds = %if.end16
  %call21 = call i32 %5(%struct.inode* noundef %inode, %struct.file* noundef %file) #11
  br label %out_unuse

if.then24:                                        ; preds = %if.end16.thread
  %call2179 = call i32 %7(%struct.inode* noundef %inode, %struct.file* noundef %file) #11
  %cmp = icmp eq i32 %call2179, 0
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end16.thread, %if.then24
  %file26 = getelementptr inbounds i8, i8* %call12, i64 16
  %8 = bitcast i8* %file26 to %struct.file**
  store %struct.file* %file, %struct.file** %8, align 8
  %9 = getelementptr inbounds i8, i8* %call12, i64 24
  store i8 0, i8* %9, align 8
  %c = getelementptr inbounds i8, i8* %call12, i64 32
  %10 = bitcast i8* %c to %struct.completion**
  store %struct.completion* null, %struct.completion** %10, align 8
  %rlock.i = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 3, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %lh = bitcast i8* %call12 to %struct.list_head*
  %pde_openers = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 2
  call fastcc void @list_add(%struct.list_head* noundef nonnull %lh, %struct.list_head* noundef %pde_openers) #12
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  br label %out_unuse

if.else:                                          ; preds = %if.then24
  %11 = load %struct.kmem_cache*, %struct.kmem_cache** @pde_opener_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %11, i8* noundef nonnull %call12) #11
  br label %out_unuse

out_unuse:                                        ; preds = %if.end22, %if.end16, %if.then11, %if.else, %if.then25
  %rv.2 = phi i32 [ 0, %if.then25 ], [ %call2179, %if.else ], [ %call21, %if.end22 ], [ -12, %if.then11 ], [ 0, %if.end16 ]
  call fastcc void @unuse_pde(%struct.proc_dir_entry* noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then, %if.then2, %out_unuse
  %retval.0 = phi i32 [ %rv.2, %out_unuse ], [ %call3, %if.then2 ], [ 0, %if.then ], [ -2, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_reg_release(%struct.inode* noundef %inode, %struct.file* noundef %file) #2 {
entry:
  %call = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %inode) #12
  %call1 = call fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* noundef %call) #12
  br i1 %call1, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 6, i32 0
  %0 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops, align 8
  %proc_release = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %0, i64 0, i32 6
  %1 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %proc_release, align 8
  %tobool.not = icmp eq i32 (%struct.inode*, %struct.file*)* %1, null
  br i1 %tobool.not, label %cleanup19, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = call i32 %1(%struct.inode* noundef %inode, %struct.file* noundef %file) #11
  br label %cleanup19

if.end4:                                          ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 3, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %pde_openers = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 2
  %2 = bitcast %struct.list_head* %pde_openers to %struct.pde_opener**
  %pdeo.040 = load %struct.pde_opener*, %struct.pde_opener** %2, align 8
  %lh41 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %pdeo.040, i64 0, i32 0
  %cmp.not42 = icmp eq %struct.list_head* %lh41, %pde_openers
  br i1 %cmp.not42, label %for.end, label %for.body

for.body:                                         ; preds = %if.end4, %for.inc
  %pdeo.043 = phi %struct.pde_opener* [ %pdeo.0, %for.inc ], [ %pdeo.040, %if.end4 ]
  %file6 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %pdeo.043, i64 0, i32 1
  %3 = load %struct.file*, %struct.file** %file6, align 8
  %cmp7 = icmp eq %struct.file* %3, %file
  br i1 %cmp7, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body
  call fastcc void @close_pdeo(%struct.proc_dir_entry* noundef %call, %struct.pde_opener* noundef %pdeo.043) #12
  br label %cleanup19

for.inc:                                          ; preds = %for.body
  %4 = bitcast %struct.pde_opener* %pdeo.043 to %struct.pde_opener**
  %pdeo.0 = load %struct.pde_opener*, %struct.pde_opener** %4, align 8
  %lh = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %pdeo.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %lh, %pde_openers
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  br label %cleanup19

cleanup19:                                        ; preds = %if.then2, %if.then, %for.end, %if.then8
  %retval.1 = phi i32 [ 0, %if.then8 ], [ 0, %for.end ], [ %call3, %if.then2 ], [ 0, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @proc_reg_get_unmapped_area(%struct.file* noundef %file, i64 noundef %orig_addr, i64 noundef %len, i64 noundef %pgoff, i64 noundef %flags) #2 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #12
  %call1 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #12
  %call2 = call fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* noundef %call1) #12
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @pde_get_unmapped_area(%struct.proc_dir_entry* noundef %call1, %struct.file* noundef %file, i64 noundef %orig_addr, i64 noundef %len, i64 noundef %pgoff, i64 noundef %flags) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %call4 = call fastcc i32 @use_pde(%struct.proc_dir_entry* noundef %call1) #12
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.else
  %call6 = call fastcc i64 @pde_get_unmapped_area(%struct.proc_dir_entry* noundef %call1, %struct.file* noundef %file, i64 noundef %orig_addr, i64 noundef %len, i64 noundef %pgoff, i64 noundef %flags) #12
  call fastcc void @unuse_pde(%struct.proc_dir_entry* noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.else, %if.then
  %retval.0 = phi i64 [ %call3, %if.then ], [ %call6, %if.then5 ], [ -5, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_splice_read(%struct.file* noundef, i64* noundef, %struct.pipe_inode_info* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* nocapture noundef readonly %pde) unnamed_addr #9 {
entry:
  %flags = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 22
  %0 = load i8, i8* %flags, align 2
  %1 = and i8 %0, 1
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @pde_write(%struct.proc_dir_entry* nocapture noundef readonly %pde, %struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) unnamed_addr #2 {
entry:
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 6, i32 0
  %0 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops, align 8
  %proc_write = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %0, i64 0, i32 4
  %1 = load i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)** %proc_write, align 8
  %tobool.not = icmp eq i64 (%struct.file*, i8*, i64, i64*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 %1(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ -5, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pde_poll(%struct.proc_dir_entry* nocapture noundef readonly %pde, %struct.file* noundef %file, %struct.poll_table_struct* noundef %pts) unnamed_addr #2 {
entry:
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 6, i32 0
  %0 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops, align 8
  %proc_poll = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %0, i64 0, i32 7
  %1 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %proc_poll, align 8
  %tobool.not = icmp eq i32 (%struct.file*, %struct.poll_table_struct*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.file* noundef %file, %struct.poll_table_struct* noundef %pts) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 325, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @pde_ioctl(%struct.proc_dir_entry* nocapture noundef readonly %pde, %struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) unnamed_addr #2 {
entry:
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 6, i32 0
  %0 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops, align 8
  %proc_ioctl = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %0, i64 0, i32 8
  %1 = load i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)** %proc_ioctl, align 8
  %tobool.not = icmp eq i64 (%struct.file*, i32, i64)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 %1(%struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ -25, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pde_mmap(%struct.proc_dir_entry* nocapture noundef readonly %pde, %struct.file* noundef %file, %struct.vm_area_struct* noundef %vma) unnamed_addr #2 {
entry:
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 6, i32 0
  %0 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops, align 8
  %proc_mmap = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %0, i64 0, i32 9
  %1 = load i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.vm_area_struct*)** %proc_mmap, align 8
  %tobool.not = icmp eq i32 (%struct.file*, %struct.vm_area_struct*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.file* noundef %file, %struct.vm_area_struct* noundef %vma) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
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
define internal fastcc i64 @pde_get_unmapped_area(%struct.proc_dir_entry* nocapture noundef readonly %pde, %struct.file* noundef %file, i64 noundef %orig_addr, i64 noundef %len, i64 noundef %pgoff, i64 noundef %flags) unnamed_addr #2 {
entry:
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 6, i32 0
  %0 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops, align 8
  %proc_get_unmapped_area = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %0, i64 0, i32 10
  %1 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %proc_get_unmapped_area, align 8
  %tobool.not = icmp eq i64 (%struct.file*, i64, i64, i64, i64)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then2

if.end:                                           ; preds = %entry
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !21
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 35
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %get_unmapped_area = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %4, i64 0, i32 0, i32 3
  %5 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %get_unmapped_area, align 8
  %tobool1.not = icmp eq i64 (%struct.file*, i64, i64, i64, i64)* %5, null
  br i1 %tobool1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry, %if.end
  %get_area.011 = phi i64 (%struct.file*, i64, i64, i64, i64)* [ %5, %if.end ], [ %1, %entry ]
  %call3 = call i64 %get_area.011(%struct.file* noundef %file, i64 noundef %orig_addr, i64 noundef %len, i64 noundef %pgoff, i64 noundef %flags) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2
  %retval.0 = phi i64 [ %call3, %if.then2 ], [ %orig_addr, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @proc_reg_read(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) #2 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #12
  %call1 = call fastcc %struct.proc_dir_entry* @PDE(%struct.inode* noundef %call) #12
  %call2 = call fastcc i1 @pde_is_permanent(%struct.proc_dir_entry* noundef %call1) #12
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @pde_read(%struct.proc_dir_entry* noundef %call1, %struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %call4 = call fastcc i32 @use_pde(%struct.proc_dir_entry* noundef %call1) #12
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.else
  %call6 = call fastcc i64 @pde_read(%struct.proc_dir_entry* noundef %call1, %struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) #12
  call fastcc void @unuse_pde(%struct.proc_dir_entry* noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.else, %if.then
  %retval.0 = phi i64 [ %call3, %if.then ], [ %call6, %if.then5 ], [ -5, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @pde_read(%struct.proc_dir_entry* nocapture noundef readonly %pde, %struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) unnamed_addr #2 {
entry:
  %proc_ops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %pde, i64 0, i32 6, i32 0
  %0 = load %struct.proc_ops*, %struct.proc_ops** %proc_ops, align 8
  %proc_read = getelementptr inbounds %struct.proc_ops, %struct.proc_ops* %0, i64 0, i32 2
  %1 = load i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)** %proc_read, align 8
  %tobool.not = icmp eq i64 (%struct.file*, i8*, i64, i64*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 %1(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ -5, %entry ]
  ret i64 %retval.0
}

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i8 0, i8 2}
!10 = !{i64 2152924872}
!11 = !{i64 2149820683}
!12 = !{i64 2149586985}
!13 = !{i64 2147887548, i64 2147887581, i64 2147887634, i64 2147887693, i64 2147887727, i64 2147887782, i64 2147887811, i64 2147887831}
!14 = !{i64 2149594266}
!15 = !{i64 2149390557}
!16 = !{i64 2147900695, i64 2147900728, i64 2147900780, i64 2147900839, i64 2147900873, i64 2147900929, i64 2147900958, i64 2147900985}
!17 = !{i64 2149820900}
!18 = !{i64 2152913448}
!19 = !{i64 2147788477, i64 2147789125, i64 2147789155, i64 2147789187, i64 2147789221, i64 2147789257, i64 2147789282}
!20 = !{i64 2147798198, i64 2147798846, i64 2147798876, i64 2147798908, i64 2147798942, i64 2147798978, i64 2147799003}
!21 = !{i64 1419023}
