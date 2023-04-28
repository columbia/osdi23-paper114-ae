; ModuleID = 'fs/filesystems.c'
source_filename = "fs/filesystems.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_filesystems__368_258_proc_filesystems_init6:\09\09\09"
module asm ".long\09proc_filesystems_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.64, %struct.qspinlock }
%union.anon.64 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.atomic_t }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon, i64, i32 }
%union.anon = type { i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.68, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.20 }
%union.anon.20 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.21, %union.anon.22 }
%union.anon.21 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.22 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.59, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
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
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.44, %union.anon.45, i32 }
%struct.request_queue = type opaque
%union.anon.44 = type { %struct.list_head }
%union.anon.45 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.50 }
%struct.anon.50 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.58, i32, [12 x i8] }
%union.anon.58 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.18, %union.anon.37, %struct.atomic_t, [8 x i8] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.37 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.60, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.60 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.66 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.66 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.62 = type { %struct.callback_head }
%union.anon.63 = type { %struct.file_operations* }
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
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [48 x i8] }
%struct.anon.3 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.4, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.net = type opaque
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.43 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.43 = type { %struct.callback_head }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.73 }
%union.anon.73 = type { i64 }
%struct.module = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.lock_class_key = type {}
%struct.pt_regs = type { %union.anon.74, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.74 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.proc_dir_entry = type opaque
%struct.filename = type { i8*, i8*, i32, %struct.audit_names*, [0 x i8] }
%struct.audit_names = type opaque

@file_systems_lock = internal global %struct.rwlock_t zeroinitializer, align 4
@file_systems = internal global %struct.file_system_type* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"\014%s: truncating file system list\0A\00", align 1
@__func__.list_bdev_fs_names = private unnamed_addr constant [19 x i8] c"list_bdev_fs_names\00", align 1
@__UNIQUE_ID___addressable_proc_filesystems_init369 = internal global i8* bitcast (i32 ()* @proc_filesystems_init to i8*), section ".discard.addressable", align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"filesystems\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"nodev\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_proc_filesystems_init369 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local %struct.file_system_type* @get_filesystem(%struct.file_system_type* noundef readnone returned %fs) local_unnamed_addr #0 {
entry:
  ret %struct.file_system_type* %fs
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @put_filesystem(%struct.file_system_type* nocapture noundef %fs) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @register_filesystem(%struct.file_system_type* noundef %fs) local_unnamed_addr #1 {
entry:
  %name2 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %fs, i64 0, i32 0
  %0 = load i8*, i8** %name2, align 8
  %call3 = call i8* @strchr(i8* noundef %0, i32 noundef 46) #5
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %do.end14, label %do.body8, !prof !7

do.body8:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/filesystems.c\22; .popsection; .long 14472b - 14470b; .short 81; .short 0; .popsection; 14471: brk 0x800", ""() #6, !srcloc !8
  unreachable

do.end14:                                         ; preds = %entry
  %next = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %fs, i64 0, i32 7
  %1 = load %struct.file_system_type*, %struct.file_system_type** %next, align 8
  %tobool15.not = icmp eq %struct.file_system_type* %1, null
  br i1 %tobool15.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %do.end14
  call fastcc void @__raw_write_lock() #7
  %2 = load i8*, i8** %name2, align 8
  %call20 = call i64 @strlen(i8* noundef %2) #5
  %conv21 = trunc i64 %call20 to i32
  %call22 = call fastcc %struct.file_system_type** @find_filesystem(i8* noundef %2, i32 noundef %conv21) #7
  %3 = load %struct.file_system_type*, %struct.file_system_type** %call22, align 8
  %tobool23.not = icmp eq %struct.file_system_type* %3, null
  br i1 %tobool23.not, label %if.else, label %if.end25

if.else:                                          ; preds = %if.end17
  store %struct.file_system_type* %fs, %struct.file_system_type** %call22, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end17, %if.else
  %res.0 = phi i32 [ 0, %if.else ], [ -16, %if.end17 ]
  call fastcc void @__raw_write_unlock() #7
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end25
  %retval.0 = phi i32 [ %res.0, %if.end25 ], [ -16, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  call fastcc void @queued_write_lock() #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file_system_type** @find_filesystem(i8* noundef %name, i32 noundef %len) unnamed_addr #1 {
entry:
  %0 = load %struct.file_system_type*, %struct.file_system_type** @file_systems, align 8
  %tobool.not11 = icmp eq %struct.file_system_type* %0, null
  br i1 %tobool.not11, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i32 %len to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi %struct.file_system_type* [ %0, %for.body.lr.ph ], [ %6, %for.inc ]
  %p.012 = phi %struct.file_system_type** [ @file_systems, %for.body.lr.ph ], [ %next, %for.inc ]
  %name1 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %1, i64 0, i32 0
  %2 = load i8*, i8** %name1, align 8
  %call = call i32 @strncmp(i8* noundef %2, i8* noundef %name, i64 noundef %conv) #5
  %cmp = icmp eq i32 %call, 0
  %3 = load %struct.file_system_type*, %struct.file_system_type** %p.012, align 8
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %name3 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %3, i64 0, i32 0
  %4 = load i8*, i8** %name3, align 8
  %arrayidx = getelementptr i8, i8* %4, i64 %conv
  %5 = load i8, i8* %arrayidx, align 1
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %next = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %3, i64 0, i32 7
  %6 = load %struct.file_system_type*, %struct.file_system_type** %next, align 8
  %tobool.not = icmp eq %struct.file_system_type* %6, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %land.lhs.true, %entry
  %p.0.lcssa = phi %struct.file_system_type** [ @file_systems, %entry ], [ %p.012, %land.lhs.true ], [ %next, %for.inc ]
  ret %struct.file_system_type** %p.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_unlock() unnamed_addr #1 {
entry:
  call fastcc void @queued_write_unlock() #7
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @unregister_filesystem(%struct.file_system_type* noundef %fs) local_unnamed_addr #1 {
entry:
  call fastcc void @__raw_write_lock() #7
  %0 = load %struct.file_system_type*, %struct.file_system_type** @file_systems, align 8
  %tobool.not10 = icmp eq %struct.file_system_type* %0, null
  br i1 %tobool.not10, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %cmp15 = icmp eq %struct.file_system_type* %0, %fs
  br i1 %cmp15, label %if.then, label %while.cond

while.cond:                                       ; preds = %while.body.preheader, %while.body
  %.pn = phi %struct.file_system_type* [ %1, %while.body ], [ %0, %while.body.preheader ]
  %next217 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %.pn, i64 0, i32 7
  %1 = load %struct.file_system_type*, %struct.file_system_type** %next217, align 8
  %tobool.not = icmp eq %struct.file_system_type* %1, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %cmp = icmp eq %struct.file_system_type* %1, %fs
  br i1 %cmp, label %if.then.loopexit, label %while.cond

if.then.loopexit:                                 ; preds = %while.body
  %next217.le = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %.pn, i64 0, i32 7
  br label %if.then

if.then:                                          ; preds = %if.then.loopexit, %while.body.preheader
  %tmp.011.lcssa = phi %struct.file_system_type** [ @file_systems, %while.body.preheader ], [ %next217.le, %if.then.loopexit ]
  %next = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %fs, i64 0, i32 7
  %2 = load %struct.file_system_type*, %struct.file_system_type** %next, align 8
  store %struct.file_system_type* %2, %struct.file_system_type** %tmp.011.lcssa, align 8
  store %struct.file_system_type* null, %struct.file_system_type** %next, align 8
  call fastcc void @__raw_write_unlock() #7
  call void @synchronize_rcu() #5
  br label %cleanup

while.end:                                        ; preds = %while.cond, %entry
  call fastcc void @__raw_write_unlock() #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sysfs(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_sysfs(i64 noundef %0, i64 noundef %1, i64 noundef %2) #7
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sysfs(i64 noundef %option, i64 noundef %arg1, i64 noundef %arg2) unnamed_addr #1 {
entry:
  %conv = trunc i64 %option to i32
  %call = call fastcc i64 @__do_sys_sysfs(i32 noundef %conv, i64 noundef %arg1, i64 noundef %arg2) #7
  ret i64 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @list_bdev_fs_names(i8* noundef %buf, i64 noundef %size) local_unnamed_addr #3 section ".init.text" {
entry:
  call fastcc void @__raw_read_lock() #7
  %p.022 = load %struct.file_system_type*, %struct.file_system_type** @file_systems, align 8
  %tobool.not23 = icmp eq %struct.file_system_type* %p.022, null
  br i1 %tobool.not23, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %p.027 = phi %struct.file_system_type* [ %p.0, %for.inc ], [ %p.022, %entry ]
  %buf.addr.026 = phi i8* [ %buf.addr.1, %for.inc ], [ %buf, %entry ]
  %count.025 = phi i32 [ %count.1, %for.inc ], [ 0, %entry ]
  %size.addr.024 = phi i64 [ %size.addr.1, %for.inc ], [ %size, %entry ]
  %fs_flags = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %p.027, i64 0, i32 1
  %0 = load i32, i32* %fs_flags, align 8
  %and = and i32 %0, 1
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %p.027, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call = call i64 @strlen(i8* noundef %1) #5
  %add = add i64 %call, 1
  %cmp = icmp ult i64 %size.addr.024, %add
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.list_bdev_fs_names, i64 0, i64 0)) #8
  br label %for.end

if.end4:                                          ; preds = %if.end
  %2 = load i8*, i8** %name, align 8
  %call6 = call i8* @memcpy(i8* noundef %buf.addr.026, i8* noundef %2, i64 noundef %add) #5
  %add.ptr = getelementptr i8, i8* %buf.addr.026, i64 %add
  %sub = sub i64 %size.addr.024, %add
  %inc = add i32 %count.025, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end4
  %size.addr.1 = phi i64 [ %sub, %if.end4 ], [ %size.addr.024, %for.body ]
  %count.1 = phi i32 [ %inc, %if.end4 ], [ %count.025, %for.body ]
  %buf.addr.1 = phi i8* [ %add.ptr, %if.end4 ], [ %buf.addr.026, %for.body ]
  %next = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %p.027, i64 0, i32 7
  %p.0 = load %struct.file_system_type*, %struct.file_system_type** %next, align 8
  %tobool.not = icmp eq %struct.file_system_type* %p.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry, %do.end
  %count.021 = phi i32 [ %count.025, %do.end ], [ 0, %entry ], [ %count.1, %for.inc ]
  call fastcc void @__raw_read_unlock() #7
  ret i32 %count.021
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  call fastcc void @queued_read_lock() #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @queued_read_unlock() #7
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @proc_filesystems_init() #3 section ".init.text" {
entry:
  %call = call %struct.proc_dir_entry* @proc_create_single_data(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i16 noundef 0, %struct.proc_dir_entry* noundef null, i32 (%struct.seq_file*, i8*)* noundef nonnull @filesystems_proc_show, i8* noundef null) #5
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file_system_type* @get_fs_type(i8* noundef %name) local_unnamed_addr #1 {
entry:
  %call = call i8* @strchr(i8* noundef %name, i32 noundef 46) #5
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %entry
  %call1 = call i64 @strlen(i8* noundef %name) #5
  %conv59 = trunc i64 %call1 to i32
  %call260 = call fastcc %struct.file_system_type* @__get_fs_type(i8* noundef %name, i32 noundef %conv59) #7
  br label %if.end34

cond.end:                                         ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %name to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %call2 = call fastcc %struct.file_system_type* @__get_fs_type(i8* noundef %name, i32 noundef %conv) #7
  %tobool3.not = icmp eq %struct.file_system_type* %call2, null
  %brmerge = select i1 %tobool3.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end34, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %cond.end
  %fs_flags = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %call2, i64 0, i32 1
  %0 = load i32, i32* %fs_flags, align 8
  %and = and i32 %0, 4
  %tobool32.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool32.not, %struct.file_system_type* null, %struct.file_system_type* %call2
  br label %if.end34

if.end34:                                         ; preds = %cond.end.thread, %cond.end, %land.lhs.true31
  %fs.1 = phi %struct.file_system_type* [ %call2, %cond.end ], [ %spec.select, %land.lhs.true31 ], [ %call260, %cond.end.thread ]
  ret %struct.file_system_type* %fs.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file_system_type* @__get_fs_type(i8* noundef %name, i32 noundef %len) unnamed_addr #1 {
entry:
  call fastcc void @__raw_read_lock() #7
  %call = call fastcc %struct.file_system_type** @find_filesystem(i8* noundef %name, i32 noundef %len) #7
  %0 = load %struct.file_system_type*, %struct.file_system_type** %call, align 8
  call fastcc void @__raw_read_unlock() #7
  ret %struct.file_system_type* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_lock() unnamed_addr #1 {
entry:
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #5
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  call void @queued_write_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @file_systems_lock, i64 0, i32 0)) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_write_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @file_systems_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 255, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @file_systems_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #6, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.rwlock_t* @file_systems_lock to i8*), i8 0) #6, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sysfs(i32 noundef %option, i64 noundef %arg1, i64 noundef %arg2) unnamed_addr #1 {
entry:
  switch i32 %option, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %0 = inttoptr i64 %arg1 to i8*
  %call = call fastcc i32 @fs_index(i8* noundef %0) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %conv = trunc i64 %arg1 to i32
  %1 = inttoptr i64 %arg2 to i8*
  %call3 = call fastcc i32 @fs_name(i32 noundef %conv, i8* noundef %1) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call5 = call fastcc i32 @fs_maxindex() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb2, %sw.bb
  %retval1.0 = phi i32 [ -22, %entry ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call, %sw.bb ]
  %conv6 = sext i32 %retval1.0 to i64
  ret i64 %conv6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fs_index(i8* noundef %__name) unnamed_addr #1 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %__name) #5
  %0 = bitcast %struct.filename* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %0) #7
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @PTR_ERR(i8* noundef %0) #7
  %conv = trunc i64 %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @__raw_read_lock() #7
  %tmp.023 = load %struct.file_system_type*, %struct.file_system_type** @file_systems, align 8
  %tobool.not24 = icmp eq %struct.file_system_type* %tmp.023, null
  br i1 %tobool.not24, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %name4 = getelementptr inbounds %struct.filename, %struct.filename* %call, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %tmp.026 = phi %struct.file_system_type* [ %tmp.023, %for.body.lr.ph ], [ %tmp.0, %for.inc ]
  %index.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %name3 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %tmp.026, i64 0, i32 0
  %1 = load i8*, i8** %name3, align 8
  %2 = load i8*, i8** %name4, align 8
  %call5 = call i32 @strcmp(i8* noundef %1, i8* noundef %2) #5
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %tmp.026, i64 0, i32 7
  %inc = add i32 %index.025, 1
  %tmp.0 = load %struct.file_system_type*, %struct.file_system_type** %next, align 8
  %tobool.not = icmp eq %struct.file_system_type* %tmp.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %if.end
  %err.0 = phi i32 [ -22, %if.end ], [ %index.025, %for.body ], [ -22, %for.inc ]
  call fastcc void @__raw_read_unlock() #7
  call void @putname(%struct.filename* noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %err.0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fs_name(i32 noundef %index, i8* noundef %buf) unnamed_addr #1 {
entry:
  call fastcc void @__raw_read_lock() #7
  %tmp.022 = load %struct.file_system_type*, %struct.file_system_type** @file_systems, align 8
  %tobool.not23 = icmp eq %struct.file_system_type* %tmp.022, null
  br i1 %tobool.not23, label %if.then2.critedge, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %tmp.025 = phi %struct.file_system_type* [ %tmp.0, %for.inc ], [ %tmp.022, %entry ]
  %index.addr.024 = phi i32 [ %dec, %for.inc ], [ %index, %entry ]
  %cmp = icmp eq i32 %index.addr.024, 0
  br i1 %cmp, label %if.end3, label %for.inc

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %tmp.025, i64 0, i32 7
  %dec = add i32 %index.addr.024, -1
  %tmp.0 = load %struct.file_system_type*, %struct.file_system_type** %next, align 8
  %tobool.not = icmp eq %struct.file_system_type* %tmp.0, null
  br i1 %tobool.not, label %if.then2.critedge, label %for.body

if.then2.critedge:                                ; preds = %for.inc, %entry
  call fastcc void @__raw_read_unlock() #7
  br label %cleanup

if.end3:                                          ; preds = %for.body
  call fastcc void @__raw_read_unlock() #7
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %tmp.025, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  %call4 = call i64 @strlen(i8* noundef %0) #5
  %conv = shl i64 %call4, 32
  %sext = add i64 %conv, 4294967296
  %cmp11.i.i = icmp ugt i64 %sext, 9223372032559808512
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !15

check_copy_size.exit.i:                           ; preds = %if.end3
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !16
  br label %cleanup

if.then.i:                                        ; preds = %if.end3
  %conv627 = lshr exact i64 %sext, 32
  %1 = load i8*, i8** %name, align 8
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %buf, i8* noundef %1, i64 noundef %conv627) #5
  %phi.cmp = icmp eq i64 %call2.i, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %check_copy_size.exit.i, %if.then2.critedge
  %retval.0 = phi i32 [ -22, %if.then2.critedge ], [ %phi.sel, %if.then.i ], [ -14, %check_copy_size.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fs_maxindex() unnamed_addr #1 {
entry:
  call fastcc void @__raw_read_lock() #7
  %tmp.05 = load %struct.file_system_type*, %struct.file_system_type** @file_systems, align 8
  %tobool.not6 = icmp eq %struct.file_system_type* %tmp.05, null
  br i1 %tobool.not6, label %for.end, label %for.inc

for.inc:                                          ; preds = %entry, %for.inc
  %tmp.08 = phi %struct.file_system_type* [ %tmp.0, %for.inc ], [ %tmp.05, %entry ]
  %index.07 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %next = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %tmp.08, i64 0, i32 7
  %inc = add i32 %index.07, 1
  %tmp.0 = load %struct.file_system_type*, %struct.file_system_type** %next, align 8
  %tobool.not = icmp eq %struct.file_system_type* %tmp.0, null
  br i1 %tobool.not, label %for.end, label %for.inc

for.end:                                          ; preds = %for.inc, %entry
  %index.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  call fastcc void @__raw_read_unlock() #7
  ret i32 %index.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.filename* @getname(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #0 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(%struct.filename* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #1 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #7
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #7
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #5
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #1 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #6, !srcloc !17
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #6, !srcloc !18
  call void asm sideeffect "hint #20", "~{memory}"() #6, !srcloc !19
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock() unnamed_addr #1 {
entry:
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire() #5
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @file_systems_lock, i64 0, i32 0)) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire() unnamed_addr #1 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @file_systems_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @file_systems_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #6, !srcloc !20
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__ll_sc_atomic_sub_return_release() #5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release() unnamed_addr #1 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @file_systems_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @file_systems_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #6, !srcloc !21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create_single_data(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, i32 (%struct.seq_file*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @filesystems_proc_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #1 {
entry:
  call fastcc void @__raw_read_lock() #7
  %tmp.06 = load %struct.file_system_type*, %struct.file_system_type** @file_systems, align 8
  %tobool.not7 = icmp eq %struct.file_system_type* %tmp.06, null
  br i1 %tobool.not7, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %tmp.08 = phi %struct.file_system_type* [ %tmp.0, %while.body ], [ %tmp.06, %entry ]
  %fs_flags = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %tmp.08, i64 0, i32 1
  %0 = load i32, i32* %fs_flags, align 8
  %and = and i32 %0, 1
  %tobool1.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool1.not, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %tmp.08, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %cond, i8* noundef %1) #5
  %next = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %tmp.08, i64 0, i32 7
  %tmp.0 = load %struct.file_system_type*, %struct.file_system_type** %next, align 8
  %tobool.not = icmp eq %struct.file_system_type* %tmp.0, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  call fastcc void @__raw_read_unlock() #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{i64 2154779601}
!9 = !{i64 2149690957}
!10 = !{i64 2149698493}
!11 = !{i64 2149646904}
!12 = !{i64 2149701858}
!13 = !{i64 2148091180, i64 2148091213, i64 2148091266, i64 2148091325, i64 2148091359, i64 2148091414, i64 2148091443, i64 2148091463}
!14 = !{i64 2149562188}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2148924032}
!17 = !{i64 3977741, i64 3977824, i64 3978048, i64 3978268, i64 3978291}
!18 = !{i64 3982443, i64 3982467}
!19 = !{i64 2151535227}
!20 = !{i64 2147998202, i64 2147998868, i64 2147998898, i64 2147998931, i64 2147998965, i64 2147999000, i64 2147999025}
!21 = !{i64 2148008950, i64 2148009616, i64 2148009646, i64 2148009678, i64 2148009712, i64 2148009748, i64 2148009773}
