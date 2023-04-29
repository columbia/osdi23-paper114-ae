; ModuleID = 'lib/scatterlist.c'
source_filename = "lib/scatterlist.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.page = type { i64, %union.anon, %union.anon.63, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.40, %struct.list_head, %struct.list_head, %union.anon.41 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.42 }
%union.anon.42 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.43, %union.anon.44 }
%union.anon.43 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.44 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.14, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.38, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.10 }
%union.anon.10 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.12, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.12 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.23, %union.anon.24, i32 }
%struct.request_queue = type opaque
%union.anon.23 = type { %struct.list_head }
%union.anon.24 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.25 }
%struct.anon.25 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.29 }
%struct.anon.29 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.37, i32, [12 x i8] }
%union.anon.37 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.38 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.39, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.39 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.14 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.15, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.16, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.15 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.16 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.48 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.46, %struct.qspinlock }
%union.anon.46 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.48 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.22 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.22 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
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
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.63 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.sg_append_table = type { %struct.sg_table, %struct.scatterlist*, i32 }
%struct.sg_page_iter = type { %struct.scatterlist*, i32, i32, i32 }
%struct.sg_dma_page_iter = type { %struct.sg_page_iter }
%struct.sg_mapping_iter = type { %struct.page*, i8*, i64, i64, %struct.sg_page_iter, i32, i32, i32 }

@memstart_addr = external dso_local local_unnamed_addr global i64, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.scatterlist* @sg_next(%struct.scatterlist* noundef readonly %sg) local_unnamed_addr #0 {
entry:
  %page_link = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 0
  %0 = load i64, i64* %page_link, align 8
  %and = and i64 %0, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr %struct.scatterlist, %struct.scatterlist* %sg, i64 1
  %page_link1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %incdec.ptr, i64 0, i32 0
  %1 = load i64, i64* %page_link1, align 8
  %and2 = and i64 %1, 1
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %return, label %if.then6, !prof !7

if.then6:                                         ; preds = %if.end
  %and8 = and i64 %1, -4
  %2 = inttoptr i64 %and8 to %struct.scatterlist*
  br label %return

return:                                           ; preds = %if.end, %if.then6, %entry
  %retval.0 = phi %struct.scatterlist* [ null, %entry ], [ %2, %if.then6 ], [ %incdec.ptr, %if.end ]
  ret %struct.scatterlist* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @sg_nents(%struct.scatterlist* noundef readonly %sg) local_unnamed_addr #1 {
entry:
  %tobool.not4 = icmp eq %struct.scatterlist* %sg, null
  br i1 %tobool.not4, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %nents.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %sg.addr.05 = phi %struct.scatterlist* [ %call, %for.body ], [ %sg, %entry ]
  %inc = add i32 %nents.06, 1
  %call = call %struct.scatterlist* @sg_next(%struct.scatterlist* noundef nonnull %sg.addr.05) #12
  %tobool.not = icmp eq %struct.scatterlist* %call, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %nents.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  ret i32 %nents.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @sg_nents_for_len(%struct.scatterlist* noundef readonly %sg, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i64 %len, 0
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %tobool1.not13 = icmp eq %struct.scatterlist* %sg, null
  br i1 %tobool1.not13, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %total.016 = phi i64 [ %add, %for.inc ], [ 0, %for.cond.preheader ]
  %nents.015 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %sg.addr.014 = phi %struct.scatterlist* [ %call, %for.inc ], [ %sg, %for.cond.preheader ]
  %inc = add i32 %nents.015, 1
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg.addr.014, i64 0, i32 2
  %0 = load i32, i32* %length, align 4
  %conv = zext i32 %0 to i64
  %add = add i64 %total.016, %conv
  %cmp.not = icmp ult i64 %add, %len
  br i1 %cmp.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %call = call %struct.scatterlist* @sg_next(%struct.scatterlist* noundef nonnull %sg.addr.014) #12
  %tobool1.not = icmp eq %struct.scatterlist* %call, null
  br i1 %tobool1.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.inc, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -22, %for.cond.preheader ], [ %inc, %for.body ], [ -22, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.scatterlist* @sg_last(%struct.scatterlist* noundef readonly %sgl, i32 noundef %nents) local_unnamed_addr #3 {
entry:
  %cmp16.not = icmp eq i32 %nents, 0
  br i1 %cmp16.not, label %do.body, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.018 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %sg.017 = phi %struct.scatterlist* [ %call, %for.body ], [ %sgl, %entry ]
  %inc = add nuw i32 %i.018, 1
  %call = call %struct.scatterlist* @sg_next(%struct.scatterlist* noundef %sg.017) #12
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %do.body, label %for.body

do.body:                                          ; preds = %for.body, %entry
  %ret.0.lcssa = phi %struct.scatterlist* [ null, %entry ], [ %sg.017, %for.body ]
  %page_link = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %ret.0.lcssa, i64 0, i32 0
  %0 = load i64, i64* %page_link, align 8
  %and = and i64 %0, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !8

do.body4:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/scatterlist.c\22; .popsection; .long 14472b - 14470b; .short 109; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !9
  unreachable

do.end9:                                          ; preds = %do.body
  ret %struct.scatterlist* %ret.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sg_init_table(%struct.scatterlist* noundef %sgl, i32 noundef %nents) local_unnamed_addr #3 {
entry:
  %0 = bitcast %struct.scatterlist* %sgl to i8*
  %conv = zext i32 %nents to i64
  %mul = shl nuw nsw i64 %conv, 5
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef %mul) #14
  call fastcc void @sg_init_marker(%struct.scatterlist* noundef %sgl, i32 noundef %nents) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sg_init_marker(%struct.scatterlist* nocapture noundef %sgl, i32 noundef %nents) unnamed_addr #5 {
entry:
  %sub = add i32 %nents, -1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr %struct.scatterlist, %struct.scatterlist* %sgl, i64 %idxprom
  call fastcc void @sg_mark_end(%struct.scatterlist* noundef %arrayidx) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sg_init_one(%struct.scatterlist* noundef %sg, i8* noundef %buf, i32 noundef %buflen) local_unnamed_addr #3 {
entry:
  call void @sg_init_table(%struct.scatterlist* noundef %sg, i32 noundef 1) #12
  call fastcc void @sg_set_buf(%struct.scatterlist* noundef %sg, i8* noundef %buf, i32 noundef %buflen) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sg_set_buf(%struct.scatterlist* nocapture noundef %sg, i8* noundef %buf, i32 noundef %buflen) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %buf to i64
  %sub = add i64 %0, 549755813888
  %1 = lshr i64 %sub, 6
  %mul = and i64 %1, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %2 = inttoptr i64 %add to %struct.page*
  %3 = trunc i64 %0 to i32
  %conv = and i32 %3, 4095
  call fastcc void @sg_set_page(%struct.scatterlist* noundef %sg, %struct.page* noundef %2, i32 noundef %buflen, i32 noundef %conv) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__sg_free_table(%struct.sg_table* nocapture noundef %table, i32 noundef %max_ents, i32 noundef %nents_first_chunk, void (%struct.scatterlist*, i32)* nocapture noundef readonly %free_fn, i32 noundef %num_ents) local_unnamed_addr #3 {
entry:
  %sgl1 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %table, i64 0, i32 0
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sgl1, align 8
  %tobool2.not = icmp eq %struct.scatterlist* %0, null
  br i1 %tobool2.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %nents_first_chunk, 0
  %cond = select i1 %tobool.not, i32 %max_ents, i32 %nents_first_chunk
  %tobool7.not37 = icmp eq i32 %num_ents, 0
  br i1 %tobool7.not37, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end
  %cmp.peel = icmp ult i32 %cond, %num_ents
  br i1 %cmp.peel, label %if.then9.peel, label %if.end11.peel

if.then9.peel:                                    ; preds = %while.body.preheader
  %sub.peel = add i32 %cond, -1
  %idxprom.peel = zext i32 %sub.peel to i64
  %page_link.peel = getelementptr %struct.scatterlist, %struct.scatterlist* %0, i64 %idxprom.peel, i32 0
  %1 = load i64, i64* %page_link.peel, align 8
  %and.peel = and i64 %1, -4
  %2 = inttoptr i64 %and.peel to %struct.scatterlist*
  br label %if.end11.peel

if.end11.peel:                                    ; preds = %if.then9.peel, %while.body.preheader
  %next.0.peel = phi %struct.scatterlist* [ %2, %if.then9.peel ], [ null, %while.body.preheader ]
  %alloc_size.0.peel = phi i32 [ %cond, %if.then9.peel ], [ %num_ents, %while.body.preheader ]
  %sg_size.0.peel = phi i32 [ %sub.peel, %if.then9.peel ], [ %num_ents, %while.body.preheader ]
  %sub12.peel = sub i32 %num_ents, %sg_size.0.peel
  br i1 %tobool.not, label %if.else15.peel, label %if.end16.peel

if.else15.peel:                                   ; preds = %if.end11.peel
  call void %free_fn(%struct.scatterlist* noundef nonnull %0, i32 noundef %alloc_size.0.peel) #14
  br label %if.end16.peel

if.end16.peel:                                    ; preds = %if.else15.peel, %if.end11.peel
  %tobool7.not.peel = icmp eq i32 %sub12.peel, 0
  br i1 %tobool7.not.peel, label %while.end, label %while.body.peel.next

while.body.peel.next:                             ; preds = %if.end16.peel
  %sub = add i32 %max_ents, -1
  %idxprom = zext i32 %sub to i64
  br label %while.body

while.body:                                       ; preds = %while.body.peel.next, %if.end16
  %sgl.040 = phi %struct.scatterlist* [ %next.0, %if.end16 ], [ %next.0.peel, %while.body.peel.next ]
  %num_ents.addr.039 = phi i32 [ %sub12, %if.end16 ], [ %sub12.peel, %while.body.peel.next ]
  %cmp = icmp ugt i32 %num_ents.addr.039, %max_ents
  br i1 %cmp, label %if.then9, label %if.end16

if.then9:                                         ; preds = %while.body
  %page_link = getelementptr %struct.scatterlist, %struct.scatterlist* %sgl.040, i64 %idxprom, i32 0
  %3 = load i64, i64* %page_link, align 8
  %and = and i64 %3, -4
  %4 = inttoptr i64 %and to %struct.scatterlist*
  br label %if.end16

if.end16:                                         ; preds = %while.body, %if.then9
  %next.0 = phi %struct.scatterlist* [ %4, %if.then9 ], [ null, %while.body ]
  %alloc_size.0 = phi i32 [ %max_ents, %if.then9 ], [ %num_ents.addr.039, %while.body ]
  %sg_size.0 = phi i32 [ %sub, %if.then9 ], [ %num_ents.addr.039, %while.body ]
  %sub12 = sub i32 %num_ents.addr.039, %sg_size.0
  call void %free_fn(%struct.scatterlist* noundef %sgl.040, i32 noundef %alloc_size.0) #14
  %tobool7.not = icmp eq i32 %sub12, 0
  br i1 %tobool7.not, label %while.end, label %while.body, !llvm.loop !10

while.end:                                        ; preds = %if.end16, %if.end16.peel, %if.end
  store %struct.scatterlist* null, %struct.scatterlist** %sgl1, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sg_free_append_table(%struct.sg_append_table* nocapture noundef %table) local_unnamed_addr #3 {
entry:
  %sgt = getelementptr inbounds %struct.sg_append_table, %struct.sg_append_table* %table, i64 0, i32 0
  %total_nents = getelementptr inbounds %struct.sg_append_table, %struct.sg_append_table* %table, i64 0, i32 2
  %0 = load i32, i32* %total_nents, align 8
  call void @__sg_free_table(%struct.sg_table* noundef %sgt, i32 noundef 128, i32 noundef 0, void (%struct.scatterlist*, i32)* noundef nonnull @sg_kfree, i32 noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @sg_kfree(%struct.scatterlist* noundef %sg, i32 noundef %nents) #3 {
entry:
  %cmp = icmp eq i32 %nents, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = ptrtoint %struct.scatterlist* %sg to i64
  call void @free_pages(i64 noundef %0, i32 noundef 0) #14
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = bitcast %struct.scatterlist* %sg to i8*
  call void @kfree(i8* noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sg_free_table(%struct.sg_table* nocapture noundef %table) local_unnamed_addr #3 {
entry:
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %table, i64 0, i32 2
  %0 = load i32, i32* %orig_nents, align 4
  call void @__sg_free_table(%struct.sg_table* noundef %table, i32 noundef 128, i32 noundef 0, void (%struct.scatterlist*, i32)* noundef nonnull @sg_kfree, i32 noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__sg_alloc_table(%struct.sg_table* noundef %table, i32 noundef %nents, i32 noundef %max_ents, %struct.scatterlist* noundef %first_chunk, i32 noundef %nents_first_chunk, i32 noundef %gfp_mask, %struct.scatterlist* (i32, i32)* nocapture noundef readonly %alloc_fn) local_unnamed_addr #3 {
entry:
  %0 = bitcast %struct.sg_table* %table to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 16) #14
  %cmp = icmp eq i32 %nents, 0
  br i1 %cmp, label %cleanup32, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %nents_first_chunk, 0
  %cond = select i1 %tobool.not, i32 %max_ents, i32 %nents_first_chunk
  %orig_nents20 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %table, i64 0, i32 2
  %nents21 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %table, i64 0, i32 1
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %table, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %if.end25, %if.end
  %first_chunk.addr.0 = phi %struct.scatterlist* [ %first_chunk, %if.end ], [ null, %if.end25 ]
  %prv.0 = phi %struct.scatterlist* [ null, %if.end ], [ %sg.073, %if.end25 ]
  %left.0 = phi i32 [ %nents, %if.end ], [ %sub4, %if.end25 ]
  %curr_max_ents.0 = phi i32 [ %cond, %if.end ], [ %max_ents, %if.end25 ]
  %prv_max_ents.0 = phi i32 [ 0, %if.end ], [ %curr_max_ents.0, %if.end25 ]
  %cmp1 = icmp ugt i32 %left.0, %curr_max_ents.0
  %sub = add i32 %curr_max_ents.0, -1
  %sg_size.0 = select i1 %cmp1, i32 %sub, i32 %left.0
  %alloc_size.0 = select i1 %cmp1, i32 %curr_max_ents.0, i32 %left.0
  %sub4 = sub i32 %left.0, %sg_size.0
  %tobool5.not = icmp eq %struct.scatterlist* %first_chunk.addr.0, null
  br i1 %tobool5.not, label %if.end9, label %if.end19

if.end9:                                          ; preds = %do.body
  %call8 = call %struct.scatterlist* %alloc_fn(i32 noundef %alloc_size.0, i32 noundef %gfp_mask) #14
  %tobool10.not = icmp eq %struct.scatterlist* %call8, null
  br i1 %tobool10.not, label %if.then14, label %if.end19, !prof !8

if.then14:                                        ; preds = %if.end9
  %tobool15.not = icmp eq %struct.scatterlist* %prv.0, null
  br i1 %tobool15.not, label %cleanup32, label %if.then16

if.then16:                                        ; preds = %if.then14
  %1 = load i32, i32* %orig_nents20, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %orig_nents20, align 4
  store i32 %inc, i32* %nents21, align 8
  br label %cleanup32

if.end19:                                         ; preds = %do.body, %if.end9
  %sg.073 = phi %struct.scatterlist* [ %call8, %if.end9 ], [ %first_chunk.addr.0, %do.body ]
  call void @sg_init_table(%struct.scatterlist* noundef nonnull %sg.073, i32 noundef %alloc_size.0) #12
  %2 = load i32, i32* %orig_nents20, align 4
  %add = add i32 %2, %sg_size.0
  store i32 %add, i32* %orig_nents20, align 4
  store i32 %add, i32* %nents21, align 8
  %tobool22.not = icmp eq %struct.scatterlist* %prv.0, null
  br i1 %tobool22.not, label %if.else24, label %if.then23

if.then23:                                        ; preds = %if.end19
  call fastcc void @sg_chain(%struct.scatterlist* noundef nonnull %prv.0, i32 noundef %prv_max_ents.0, %struct.scatterlist* noundef nonnull %sg.073) #12
  br label %if.end25

if.else24:                                        ; preds = %if.end19
  store %struct.scatterlist* %sg.073, %struct.scatterlist** %sgl, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then23
  %tobool26.not = icmp eq i32 %sub4, 0
  br i1 %tobool26.not, label %if.then27, label %do.body

if.then27:                                        ; preds = %if.end25
  %sub28 = add i32 %sg_size.0, -1
  %idxprom = zext i32 %sub28 to i64
  %arrayidx = getelementptr %struct.scatterlist, %struct.scatterlist* %sg.073, i64 %idxprom
  call fastcc void @sg_mark_end(%struct.scatterlist* noundef %arrayidx) #12
  br label %cleanup32

cleanup32:                                        ; preds = %if.then27, %if.then14, %if.then16, %entry
  %retval.2 = phi i32 [ -22, %entry ], [ -12, %if.then16 ], [ -12, %if.then14 ], [ 0, %if.then27 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @sg_chain(%struct.scatterlist* nocapture noundef writeonly %prv, i32 noundef %prv_nents, %struct.scatterlist* noundef %sgl) unnamed_addr #6 {
entry:
  %sub = add i32 %prv_nents, -1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr %struct.scatterlist, %struct.scatterlist* %prv, i64 %idxprom
  call fastcc void @__sg_chain(%struct.scatterlist* noundef %arrayidx, %struct.scatterlist* noundef %sgl) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sg_mark_end(%struct.scatterlist* nocapture noundef %sg) unnamed_addr #5 {
entry:
  %page_link = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 0
  %0 = load i64, i64* %page_link, align 8
  %or = and i64 %0, -4
  %and = or i64 %or, 2
  store i64 %and, i64* %page_link, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sg_alloc_table(%struct.sg_table* noundef %table, i32 noundef %nents, i32 noundef %gfp_mask) local_unnamed_addr #3 {
entry:
  %call = call i32 @__sg_alloc_table(%struct.sg_table* noundef %table, i32 noundef %nents, i32 noundef 128, %struct.scatterlist* noundef null, i32 noundef 0, i32 noundef %gfp_mask, %struct.scatterlist* (i32, i32)* noundef nonnull @sg_kmalloc) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void @sg_free_table(%struct.sg_table* noundef %table) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.scatterlist* @sg_kmalloc(i32 noundef %nents, i32 noundef %gfp_mask) #3 {
entry:
  %cmp = icmp eq i32 %nents, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i64 @__get_free_pages(i32 noundef %gfp_mask, i32 noundef 0) #14
  %0 = inttoptr i64 %call to i8*
  br label %return

if.else:                                          ; preds = %entry
  %conv = zext i32 %nents to i64
  %call3 = call fastcc i8* @kmalloc_array(i64 noundef %conv, i32 noundef %gfp_mask) #12
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0.in = phi i8* [ %0, %if.then ], [ %call3, %if.else ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.scatterlist*
  ret %struct.scatterlist* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sg_alloc_append_table_from_pages(%struct.sg_append_table* nocapture noundef %sgt_append, %struct.page** nocapture noundef readonly %pages, i32 noundef %n_pages, i32 noundef %offset, i64 noundef %size, i32 noundef %max_segment, i32 noundef %left_pages, i32 noundef %gfp_mask) local_unnamed_addr #3 {
entry:
  %prv = getelementptr inbounds %struct.sg_append_table, %struct.sg_append_table* %sgt_append, i64 0, i32 1
  %0 = load %struct.scatterlist*, %struct.scatterlist** %prv, align 8
  %1 = and i32 %max_segment, -4096
  %conv2 = zext i32 %1 to i64
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end20, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/scatterlist.c\22; .popsection; .long 14472b - 14470b; .short 456; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !12
  br label %cleanup205

if.end20:                                         ; preds = %entry
  %tobool22.not = icmp eq %struct.scatterlist* %0, null
  br i1 %tobool22.not, label %if.end88, label %if.then23

if.then23:                                        ; preds = %if.end20
  %2 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %2, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %0, i64 0, i32 2
  %3 = load i32, i32* %length, align 4
  %tobool33.not = icmp eq i32 %offset, 0
  br i1 %tobool33.not, label %while.cond.preheader, label %cleanup.thread, !prof !7

while.cond.preheader:                             ; preds = %if.then23
  %tobool61.not309 = icmp eq i32 %n_pages, 0
  br i1 %tobool61.not309, label %out, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %while.cond.preheader
  %conv30 = zext i32 %3 to i64
  %offset26 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %0, i64 0, i32 1
  %4 = load i32, i32* %offset26, align 8
  %conv27 = zext i32 %4 to i64
  %add28 = add nuw nsw i64 %conv30, %conv27
  %call = call fastcc %struct.page* @sg_page(%struct.scatterlist* noundef nonnull %0) #12
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = shl i64 %sub.ptr.sub, 6
  %add31 = add i64 %add28, %mul
  %div = lshr i64 %add31, 12
  br label %land.rhs

cleanup.thread:                                   ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/scatterlist.c\22; .popsection; .long 14472b - 14470b; .short 468; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !13
  br label %cleanup205

land.rhs:                                         ; preds = %land.rhs.preheader, %if.end79
  %pages.addr.0312 = phi %struct.page** [ %incdec.ptr, %if.end79 ], [ %pages, %land.rhs.preheader ]
  %n_pages.addr.0311 = phi i32 [ %dec, %if.end79 ], [ %n_pages, %land.rhs.preheader ]
  %paddr.0310 = phi i64 [ %inc, %if.end79 ], [ %div, %land.rhs.preheader ]
  %5 = load %struct.page*, %struct.page** %pages.addr.0312, align 8
  %sub.ptr.lhs.cast65 = ptrtoint %struct.page* %5 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast
  %sub.ptr.div68 = ashr exact i64 %sub.ptr.sub67, 6
  %cmp69 = icmp eq i64 %sub.ptr.div68, %paddr.0310
  br i1 %cmp69, label %while.body, label %if.end88

while.body:                                       ; preds = %land.rhs
  %6 = load %struct.scatterlist*, %struct.scatterlist** %prv, align 8
  %length72 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %6, i64 0, i32 2
  %7 = load i32, i32* %length72, align 4
  %conv73 = zext i32 %7 to i64
  %add74 = add nuw nsw i64 %conv73, 4096
  %cmp76 = icmp ugt i64 %add74, %conv2
  br i1 %cmp76, label %if.end88, label %if.end79

if.end79:                                         ; preds = %while.body
  %conv84 = trunc i64 %add74 to i32
  store i32 %conv84, i32* %length72, align 4
  %inc = add nuw nsw i64 %paddr.0310, 1
  %incdec.ptr = getelementptr %struct.page*, %struct.page** %pages.addr.0312, i64 1
  %dec = add i32 %n_pages.addr.0311, -1
  %tobool61.not = icmp eq i32 %dec, 0
  br i1 %tobool61.not, label %out, label %land.rhs

if.end88:                                         ; preds = %land.rhs, %while.body, %if.end20
  %prv_len.1 = phi i32 [ 0, %if.end20 ], [ %3, %while.body ], [ %3, %land.rhs ]
  %n_pages.addr.2 = phi i32 [ %n_pages, %if.end20 ], [ %n_pages.addr.0311, %while.body ], [ %n_pages.addr.0311, %land.rhs ]
  %pages.addr.2 = phi %struct.page** [ %pages, %if.end20 ], [ %pages.addr.0312, %while.body ], [ %pages.addr.0312, %land.rhs ]
  %cmp89313 = icmp ugt i32 %n_pages.addr.2, 1
  br i1 %cmp89313, label %for.body.lr.ph, label %for.cond126.preheader.lr.ph

for.body.lr.ph:                                   ; preds = %if.end88
  %8 = load i64, i64* @memstart_addr, align 8
  %shr97 = ashr i64 %8, 12
  %idx.neg98 = sub nsw i64 0, %shr97
  %add.ptr99 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg98
  %sub.ptr.rhs.cast101 = ptrtoint %struct.page* %add.ptr99 to i64
  %wide.trip.count = zext i32 %n_pages.addr.2 to i64
  br label %for.body

for.cond121.preheader:                            ; preds = %for.inc
  %cmp122320.not = icmp eq i32 %chunks.1, 0
  br i1 %cmp122320.not, label %for.end196, label %for.cond126.preheader.lr.ph

for.cond126.preheader.lr.ph:                      ; preds = %if.end88, %for.cond121.preheader
  %chunks.0.lcssa343 = phi i32 [ %chunks.1, %for.cond121.preheader ], [ 1, %if.end88 ]
  %sub163 = add i32 %chunks.0.lcssa343, %left_pages
  %wide.trip.count339 = zext i32 %chunks.0.lcssa343 to i64
  br label %for.cond126.preheader

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %seg_len.0316 = phi i64 [ 0, %for.body.lr.ph ], [ %seg_len.1, %for.inc ]
  %chunks.0314 = phi i32 [ 1, %for.body.lr.ph ], [ %chunks.1, %for.inc ]
  %conv91 = and i64 %seg_len.0316, 4294967295
  %add92 = add nuw nsw i64 %conv91, 4096
  %conv93 = trunc i64 %add92 to i32
  %cmp94.not = icmp ugt i32 %1, %conv93
  br i1 %cmp94.not, label %lor.lhs.false, label %if.then117

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx96 = getelementptr %struct.page*, %struct.page** %pages.addr.2, i64 %indvars.iv
  %9 = load %struct.page*, %struct.page** %arrayidx96, align 8
  %sub.ptr.lhs.cast100 = ptrtoint %struct.page* %9 to i64
  %sub.ptr.sub102 = sub i64 %sub.ptr.lhs.cast100, %sub.ptr.rhs.cast101
  %sub.ptr.div103 = ashr exact i64 %sub.ptr.sub102, 6
  %10 = add nsw i64 %indvars.iv, -1
  %arrayidx106 = getelementptr %struct.page*, %struct.page** %pages.addr.2, i64 %10
  %11 = load %struct.page*, %struct.page** %arrayidx106, align 8
  %sub.ptr.lhs.cast110 = ptrtoint %struct.page* %11 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast101
  %sub.ptr.div113 = ashr exact i64 %sub.ptr.sub112, 6
  %add114 = add nsw i64 %sub.ptr.div113, 1
  %cmp115.not = icmp eq i64 %sub.ptr.div103, %add114
  br i1 %cmp115.not, label %for.inc, label %if.then117

if.then117:                                       ; preds = %lor.lhs.false, %for.body
  %inc118 = add i32 %chunks.0314, 1
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %if.then117
  %chunks.1 = phi i32 [ %inc118, %if.then117 ], [ %chunks.0314, %lor.lhs.false ]
  %seg_len.1 = phi i64 [ 0, %if.then117 ], [ %add92, %lor.lhs.false ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond121.preheader, label %for.body

for.cond126.preheader:                            ; preds = %for.cond126.preheader.lr.ph, %for.inc194
  %indvars.iv334 = phi i64 [ 0, %for.cond126.preheader.lr.ph ], [ %indvars.iv.next335, %for.inc194 ]
  %offset.addr.0326 = phi i32 [ %offset, %for.cond126.preheader.lr.ph ], [ 0, %for.inc194 ]
  %size.addr.0325 = phi i64 [ %size, %for.cond126.preheader.lr.ph ], [ %sub189, %for.inc194 ]
  %s.0324 = phi %struct.scatterlist* [ %0, %for.cond126.preheader.lr.ph ], [ %call166, %for.inc194 ]
  %cur_page.0321 = phi i32 [ 0, %for.cond126.preheader.lr.ph ], [ %j.0.lcssa, %for.inc194 ]
  %12 = load i64, i64* @memstart_addr, align 8
  %shr138 = ashr i64 %12, 12
  %idx.neg139 = sub nsw i64 0, %shr138
  %add.ptr140 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg139
  %sub.ptr.rhs.cast142 = ptrtoint %struct.page* %add.ptr140 to i64
  %13 = add i32 %cur_page.0321, 1
  %umax = call i32 @llvm.umax.i32(i32 %n_pages.addr.2, i32 %13)
  br label %for.cond126

for.cond126:                                      ; preds = %for.cond126.preheader, %lor.lhs.false135
  %seg_len.2 = phi i64 [ %add131, %lor.lhs.false135 ], [ 0, %for.cond126.preheader ]
  %j.0.in = phi i32 [ %j.0, %lor.lhs.false135 ], [ %cur_page.0321, %for.cond126.preheader ]
  %j.0 = add i32 %j.0.in, 1
  %cmp127 = icmp ult i32 %j.0, %n_pages.addr.2
  br i1 %cmp127, label %for.body129, label %for.end162

for.body129:                                      ; preds = %for.cond126
  %conv130 = and i64 %seg_len.2, 4294967295
  %add131 = add nuw nsw i64 %conv130, 4096
  %conv132 = trunc i64 %add131 to i32
  %cmp133.not = icmp ugt i32 %1, %conv132
  br i1 %cmp133.not, label %lor.lhs.false135, label %for.end162

lor.lhs.false135:                                 ; preds = %for.body129
  %idxprom136 = zext i32 %j.0 to i64
  %arrayidx137 = getelementptr %struct.page*, %struct.page** %pages.addr.2, i64 %idxprom136
  %14 = load %struct.page*, %struct.page** %arrayidx137, align 8
  %sub.ptr.lhs.cast141 = ptrtoint %struct.page* %14 to i64
  %sub.ptr.sub143 = sub i64 %sub.ptr.lhs.cast141, %sub.ptr.rhs.cast142
  %sub.ptr.div144 = ashr exact i64 %sub.ptr.sub143, 6
  %idxprom146 = zext i32 %j.0.in to i64
  %arrayidx147 = getelementptr %struct.page*, %struct.page** %pages.addr.2, i64 %idxprom146
  %15 = load %struct.page*, %struct.page** %arrayidx147, align 8
  %sub.ptr.lhs.cast151 = ptrtoint %struct.page* %15 to i64
  %sub.ptr.sub153 = sub i64 %sub.ptr.lhs.cast151, %sub.ptr.rhs.cast142
  %sub.ptr.div154 = ashr exact i64 %sub.ptr.sub153, 6
  %add155 = add nsw i64 %sub.ptr.div154, 1
  %cmp156.not = icmp eq i64 %sub.ptr.div144, %add155
  br i1 %cmp156.not, label %for.cond126, label %for.end162

for.end162:                                       ; preds = %for.body129, %lor.lhs.false135, %for.cond126
  %j.0.lcssa = phi i32 [ %j.0, %for.body129 ], [ %j.0, %lor.lhs.false135 ], [ %umax, %for.cond126 ]
  %16 = trunc i64 %indvars.iv334 to i32
  %add164 = sub i32 %sub163, %16
  %conv165 = zext i32 %add164 to i64
  %call166 = call fastcc %struct.scatterlist* @get_next_sg(%struct.sg_append_table* noundef %sgt_append, %struct.scatterlist* noundef %s.0324, i64 noundef %conv165, i32 noundef %gfp_mask) #12
  %17 = bitcast %struct.scatterlist* %call166 to i8*
  %call167 = call fastcc i1 @IS_ERR(i8* noundef %17) #12
  br i1 %call167, label %if.then168, label %for.inc194

if.then168:                                       ; preds = %for.end162
  %18 = bitcast %struct.scatterlist* %call166 to i8*
  %19 = load %struct.scatterlist*, %struct.scatterlist** %prv, align 8
  %tobool170.not = icmp eq %struct.scatterlist* %19, null
  br i1 %tobool170.not, label %cleanup190.thread, label %if.then171

if.then171:                                       ; preds = %if.then168
  %length173 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %19, i64 0, i32 2
  store i32 %prv_len.1, i32* %length173, align 4
  br label %cleanup190.thread

cleanup190.thread:                                ; preds = %if.then168, %if.then171
  %call175 = call fastcc i64 @PTR_ERR(i8* noundef %18) #12
  %conv176 = trunc i64 %call175 to i32
  br label %cleanup205

for.inc194:                                       ; preds = %for.end162
  %sub178 = sub i32 %j.0.lcssa, %cur_page.0321
  %shl = shl i32 %sub178, 12
  %sub179 = sub i32 %shl, %offset.addr.0326
  %idxprom180 = zext i32 %cur_page.0321 to i64
  %arrayidx181 = getelementptr %struct.page*, %struct.page** %pages.addr.2, i64 %idxprom180
  %20 = load %struct.page*, %struct.page** %arrayidx181, align 8
  %conv182 = zext i32 %sub179 to i64
  %cmp184 = icmp ult i64 %size.addr.0325, %conv182
  %cond = select i1 %cmp184, i64 %size.addr.0325, i64 %conv182
  %conv186 = trunc i64 %cond to i32
  call fastcc void @sg_set_page(%struct.scatterlist* noundef %call166, %struct.page* noundef %20, i32 noundef %conv186, i32 noundef %offset.addr.0326) #12
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1
  %sub189 = sub i64 %size.addr.0325, %conv182
  %exitcond340.not = icmp eq i64 %indvars.iv.next335, %wide.trip.count339
  br i1 %exitcond340.not, label %for.end196, label %for.cond126.preheader

for.end196:                                       ; preds = %for.inc194, %for.cond121.preheader
  %added_nents.0.lcssa = phi i32 [ 0, %for.cond121.preheader ], [ %chunks.0.lcssa343, %for.inc194 ]
  %s.0.lcssa = phi %struct.scatterlist* [ %0, %for.cond121.preheader ], [ %call166, %for.inc194 ]
  %nents = getelementptr inbounds %struct.sg_append_table, %struct.sg_append_table* %sgt_append, i64 0, i32 0, i32 1
  %21 = load i32, i32* %nents, align 8
  %add197 = add i32 %21, %added_nents.0.lcssa
  store i32 %add197, i32* %nents, align 8
  %orig_nents = getelementptr inbounds %struct.sg_append_table, %struct.sg_append_table* %sgt_append, i64 0, i32 0, i32 2
  store i32 %add197, i32* %orig_nents, align 4
  store %struct.scatterlist* %s.0.lcssa, %struct.scatterlist** %prv, align 8
  br label %out

out:                                              ; preds = %if.end79, %while.cond.preheader, %for.end196
  %s.1 = phi %struct.scatterlist* [ %s.0.lcssa, %for.end196 ], [ %0, %while.cond.preheader ], [ %0, %if.end79 ]
  %tobool202.not = icmp eq i32 %left_pages, 0
  br i1 %tobool202.not, label %if.then203, label %cleanup205

if.then203:                                       ; preds = %out
  call fastcc void @sg_mark_end(%struct.scatterlist* noundef %s.1) #12
  br label %cleanup205

cleanup205:                                       ; preds = %cleanup190.thread, %cleanup.thread, %if.then, %out, %if.then203
  %retval.4 = phi i32 [ -22, %if.then ], [ 0, %if.then203 ], [ 0, %out ], [ -22, %cleanup.thread ], [ %conv176, %cleanup190.thread ]
  ret i32 %retval.4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.page* @sg_page(%struct.scatterlist* nocapture noundef readonly %sg) unnamed_addr #0 {
entry:
  %page_link = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 0
  %0 = load i64, i64* %page_link, align 8
  %and = and i64 %0, -4
  %1 = inttoptr i64 %and to %struct.page*
  ret %struct.page* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.scatterlist* @get_next_sg(%struct.sg_append_table* nocapture noundef %table, %struct.scatterlist* noundef %cur, i64 noundef %needed_sges, i32 noundef %gfp_mask) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.scatterlist* %cur, null
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.scatterlist* @sg_next(%struct.scatterlist* noundef nonnull %cur) #12
  %page_link = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %call, i64 0, i32 0
  %0 = load i64, i64* %page_link, align 8
  %and = and i64 %0, 2
  %tobool1 = icmp eq i64 %and, 0
  %cmp = icmp eq i64 %needed_sges, 1
  %or.cond = or i1 %cmp, %tobool1
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %next_sg.0 = phi %struct.scatterlist* [ %call, %if.then ], [ null, %entry ]
  %cmp4 = icmp ult i64 %needed_sges, 128
  %cond = select i1 %cmp4, i64 %needed_sges, i64 128
  %conv = trunc i64 %cond to i32
  %call5 = call %struct.scatterlist* @sg_kmalloc(i32 noundef %conv, i32 noundef %gfp_mask) #12
  %tobool6.not = icmp eq %struct.scatterlist* %call5, null
  br i1 %tobool6.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end3
  call void @sg_init_table(%struct.scatterlist* noundef nonnull %call5, i32 noundef %conv) #12
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %sub = add nsw i32 %conv, -1
  %total_nents = getelementptr inbounds %struct.sg_append_table, %struct.sg_append_table* %table, i64 0, i32 2
  %1 = load i32, i32* %total_nents, align 8
  %add = add i32 %sub, %1
  store i32 %add, i32* %total_nents, align 8
  call fastcc void @__sg_chain(%struct.scatterlist* noundef %next_sg.0, %struct.scatterlist* noundef nonnull %call5) #12
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %sgl = getelementptr inbounds %struct.sg_append_table, %struct.sg_append_table* %table, i64 0, i32 0, i32 0
  store %struct.scatterlist* %call5, %struct.scatterlist** %sgl, align 8
  %total_nents12 = getelementptr inbounds %struct.sg_append_table, %struct.sg_append_table* %table, i64 0, i32 2
  store i32 %conv, i32* %total_nents12, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then11, %if.else, %if.then
  %retval.0 = phi %struct.scatterlist* [ %call, %if.then ], [ %call5, %if.else ], [ %call5, %if.then11 ], [ inttoptr (i64 -12 to %struct.scatterlist*), %if.end3 ]
  ret %struct.scatterlist* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #7 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sg_set_page(%struct.scatterlist* nocapture noundef %sg, %struct.page* noundef %page, i32 noundef %len, i32 noundef %offset) unnamed_addr #3 {
entry:
  call fastcc void @sg_assign_page(%struct.scatterlist* noundef %sg, %struct.page* noundef %page) #12
  %offset1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 1
  store i32 %offset, i32* %offset1, align 8
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 2
  store i32 %len, i32* %length, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sg_alloc_table_from_pages_segment(%struct.sg_table* noundef %sgt, %struct.page** nocapture noundef readonly %pages, i32 noundef %n_pages, i32 noundef %offset, i64 noundef %size, i32 noundef %max_segment, i32 noundef %gfp_mask) local_unnamed_addr #3 {
entry:
  %append = alloca %struct.sg_append_table, align 8
  %0 = bitcast %struct.sg_append_table* %append to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %call = call i32 @sg_alloc_append_table_from_pages(%struct.sg_append_table* noundef nonnull %append, %struct.page** noundef %pages, i32 noundef %n_pages, i32 noundef %offset, i64 noundef %size, i32 noundef %max_segment, i32 noundef 0, i32 noundef %gfp_mask) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @sg_free_append_table(%struct.sg_append_table* noundef nonnull %append) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.sg_table* %sgt to i8*
  %call2 = call i8* @memcpy(i8* noundef %1, i8* noundef nonnull %0, i64 noundef 16) #14
  %total_nents = getelementptr inbounds %struct.sg_append_table, %struct.sg_append_table* %append, i64 0, i32 2
  %2 = load i32, i32* %total_nents, align 8
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %sgt, i64 0, i32 2
  %3 = load i32, i32* %orig_nents, align 4
  %cmp.not = icmp eq i32 %2, %3
  br i1 %cmp.not, label %cleanup, label %if.then10, !prof !7

if.then10:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/scatterlist.c\22; .popsection; .long 14472b - 14470b; .short 580; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then10, %if.then
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #13
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @__sg_page_iter_start(%struct.sg_page_iter* nocapture noundef writeonly %piter, %struct.scatterlist* noundef %sglist, i32 noundef %nents, i64 noundef %pgoffset) local_unnamed_addr #6 {
entry:
  %__pg_advance = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %piter, i64 0, i32 3
  store i32 0, i32* %__pg_advance, align 8
  %__nents = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %piter, i64 0, i32 2
  store i32 %nents, i32* %__nents, align 4
  %sg = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %piter, i64 0, i32 0
  store %struct.scatterlist* %sglist, %struct.scatterlist** %sg, align 8
  %conv = trunc i64 %pgoffset to i32
  %sg_pgoffset = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %piter, i64 0, i32 1
  store i32 %conv, i32* %sg_pgoffset, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i1 @__sg_page_iter_next(%struct.sg_page_iter* nocapture noundef %piter) local_unnamed_addr #9 {
entry:
  %__nents = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %piter, i64 0, i32 2
  %0 = load i32, i32* %__nents, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sg = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %piter, i64 0, i32 0
  %1 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8
  %tobool1.not = icmp eq %struct.scatterlist* %1, null
  br i1 %tobool1.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %__pg_advance = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %piter, i64 0, i32 3
  %2 = load i32, i32* %__pg_advance, align 8
  %sg_pgoffset = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %piter, i64 0, i32 1
  %3 = load i32, i32* %sg_pgoffset, align 8
  %add = add i32 %3, %2
  store i32 %add, i32* %sg_pgoffset, align 8
  store i32 1, i32* %__pg_advance, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = phi i32 [ %dec, %while.body ], [ %0, %if.end ]
  %5 = phi %struct.scatterlist* [ %call9, %while.body ], [ %1, %if.end ]
  %6 = phi i32 [ %sub, %while.body ], [ %add, %if.end ]
  %call = call fastcc i32 @sg_page_count(%struct.scatterlist* noundef nonnull %5) #12
  %cmp.not = icmp ult i32 %6, %call
  br i1 %cmp.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %sub = sub i32 %6, %call
  store i32 %sub, i32* %sg_pgoffset, align 8
  %call9 = call %struct.scatterlist* @sg_next(%struct.scatterlist* noundef nonnull %5) #12
  store %struct.scatterlist* %call9, %struct.scatterlist** %sg, align 8
  %dec = add i32 %4, -1
  store i32 %dec, i32* %__nents, align 4
  %tobool12.not = icmp eq i32 %dec, 0
  %tobool15.not = icmp eq %struct.scatterlist* %call9, null
  %or.cond = select i1 %tobool12.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %return, label %while.cond

return:                                           ; preds = %while.cond, %while.body, %entry, %lor.lhs.false
  %retval.0 = phi i1 [ false, %lor.lhs.false ], [ false, %entry ], [ %cmp.not, %while.body ], [ %cmp.not, %while.cond ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sg_page_count(%struct.scatterlist* nocapture noundef readonly %sg) unnamed_addr #0 {
entry:
  %offset = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 1
  %0 = load i32, i32* %offset, align 8
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 2
  %1 = load i32, i32* %length, align 4
  %add = add i32 %0, 4095
  %add1 = add i32 %add, %1
  %shr = lshr i32 %add1, 12
  ret i32 %shr
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i1 @__sg_page_iter_dma_next(%struct.sg_dma_page_iter* nocapture noundef %dma_iter) local_unnamed_addr #9 {
entry:
  %__nents = getelementptr inbounds %struct.sg_dma_page_iter, %struct.sg_dma_page_iter* %dma_iter, i64 0, i32 0, i32 2
  %0 = load i32, i32* %__nents, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sg = getelementptr inbounds %struct.sg_dma_page_iter, %struct.sg_dma_page_iter* %dma_iter, i64 0, i32 0, i32 0
  %1 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8
  %tobool1.not = icmp eq %struct.scatterlist* %1, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %__pg_advance = getelementptr inbounds %struct.sg_dma_page_iter, %struct.sg_dma_page_iter* %dma_iter, i64 0, i32 0, i32 3
  %2 = load i32, i32* %__pg_advance, align 8
  %sg_pgoffset = getelementptr inbounds %struct.sg_dma_page_iter, %struct.sg_dma_page_iter* %dma_iter, i64 0, i32 0, i32 1
  %3 = load i32, i32* %sg_pgoffset, align 8
  %add = add i32 %3, %2
  store i32 %add, i32* %sg_pgoffset, align 8
  store i32 1, i32* %__pg_advance, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = phi i32 [ %dec, %while.body ], [ %0, %if.end ]
  %5 = phi %struct.scatterlist* [ %call9, %while.body ], [ %1, %if.end ]
  %6 = phi i32 [ %sub, %while.body ], [ %add, %if.end ]
  %call = call fastcc i32 @sg_dma_page_count(%struct.scatterlist* noundef nonnull %5) #12
  %cmp.not = icmp ult i32 %6, %call
  br i1 %cmp.not, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond
  %sub = sub i32 %6, %call
  store i32 %sub, i32* %sg_pgoffset, align 8
  %call9 = call %struct.scatterlist* @sg_next(%struct.scatterlist* noundef nonnull %5) #12
  store %struct.scatterlist* %call9, %struct.scatterlist** %sg, align 8
  %dec = add i32 %4, -1
  store i32 %dec, i32* %__nents, align 4
  %tobool12.not = icmp eq i32 %dec, 0
  %tobool15.not = icmp eq %struct.scatterlist* %call9, null
  %or.cond = select i1 %tobool12.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %cleanup, label %while.cond

cleanup:                                          ; preds = %while.cond, %while.body, %entry, %lor.lhs.false
  %retval.0 = phi i1 [ false, %lor.lhs.false ], [ false, %entry ], [ %cmp.not, %while.body ], [ %cmp.not, %while.cond ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sg_dma_page_count(%struct.scatterlist* nocapture noundef readonly %sg) unnamed_addr #0 {
entry:
  %offset = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 1
  %0 = load i32, i32* %offset, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 4
  %1 = load i32, i32* %dma_length, align 8
  %add = add i32 %0, 4095
  %add1 = add i32 %add, %1
  %shr = lshr i32 %add1, 12
  ret i32 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sg_miter_start(%struct.sg_mapping_iter* noundef %miter, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %flags) local_unnamed_addr #3 {
entry:
  %0 = bitcast %struct.sg_mapping_iter* %miter to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 72) #14
  %piter = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 4
  call void @__sg_page_iter_start(%struct.sg_page_iter* noundef %piter, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i64 noundef 0) #12
  %and = and i32 %flags, 6
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/scatterlist.c\22; .popsection; .long 14472b - 14470b; .short 792; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__flags = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 7
  store i32 %flags, i32* %__flags, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @sg_miter_skip(%struct.sg_mapping_iter* nocapture noundef %miter, i64 noundef %offset) local_unnamed_addr #3 {
entry:
  call void @sg_miter_stop(%struct.sg_mapping_iter* noundef %miter) #12
  %tobool.not22 = icmp eq i64 %offset, 0
  br i1 %tobool.not22, label %return, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %__remaining = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 6
  %__offset = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %offset.addr.023 = phi i64 [ %offset, %while.body.lr.ph ], [ %sub7, %cleanup ]
  %call = call fastcc i1 @sg_miter_get_next_page(%struct.sg_mapping_iter* noundef %miter) #12
  br i1 %call, label %cleanup, label %return

cleanup:                                          ; preds = %while.body
  %0 = load i32, i32* %__remaining, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp slt i64 %offset.addr.023, %conv
  %cond = select i1 %cmp, i64 %offset.addr.023, i64 %conv
  %1 = load i32, i32* %__offset, align 8
  %2 = trunc i64 %cond to i32
  %conv3 = add i32 %1, %2
  store i32 %conv3, i32* %__offset, align 8
  %conv6 = sub i32 %0, %2
  store i32 %conv6, i32* %__remaining, align 4
  %sub7 = sub i64 %offset.addr.023, %cond
  %tobool.not = icmp eq i64 %sub7, 0
  br i1 %tobool.not, label %return, label %while.body

return:                                           ; preds = %cleanup, %while.body, %entry
  %tobool.not.lcssa = phi i1 [ true, %entry ], [ %call, %while.body ], [ %call, %cleanup ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sg_miter_stop(%struct.sg_mapping_iter* nocapture noundef %miter) local_unnamed_addr #3 {
entry:
  %consumed = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 3
  %0 = load i64, i64* %consumed, align 8
  %length = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 2
  %1 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/scatterlist.c\22; .popsection; .long 14472b - 14470b; .short 914; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %addr = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 1
  %2 = load i8*, i8** %addr, align 8
  %tobool14.not = icmp eq i8* %2, null
  br i1 %tobool14.not, label %if.end57, label %if.then15

if.then15:                                        ; preds = %if.end
  %3 = load i64, i64* %consumed, align 8
  %__offset = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 5
  %4 = load i32, i32* %__offset, align 8
  %5 = trunc i64 %3 to i32
  %conv18 = add i32 %4, %5
  store i32 %conv18, i32* %__offset, align 8
  %__remaining = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 6
  %6 = load i32, i32* %__remaining, align 4
  %conv21 = sub i32 %6, %5
  store i32 %conv21, i32* %__remaining, align 4
  %__flags = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 7
  %7 = load i32, i32* %__flags, align 8
  %and = and i32 %7, 2
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.then15
  %page = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 0
  %8 = load %struct.page*, %struct.page** %page, align 8
  call void @flush_dcache_page(%struct.page* noundef %8) #14
  %.pre = load i32, i32* %__flags, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then15
  %9 = phi i32 [ %.pre, %if.then23 ], [ %7, %if.then15 ]
  %and26 = and i32 %9, 1
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end52, label %if.end39

if.end39:                                         ; preds = %if.end24
  call fastcc void @__kunmap_atomic() #12
  br label %if.end52

if.end52:                                         ; preds = %if.end24, %if.end39
  %page53 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 0
  store %struct.page* null, %struct.page** %page53, align 8
  store i8* null, i8** %addr, align 8
  store i64 0, i64* %length, align 8
  store i64 0, i64* %consumed, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.end52, %if.end
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i1 @sg_miter_get_next_page(%struct.sg_mapping_iter* nocapture noundef %miter) unnamed_addr #9 {
entry:
  %__remaining = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 6
  %0 = load i32, i32* %__remaining, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  %piter = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 4
  %call = call i1 @__sg_page_iter_next(%struct.sg_page_iter* noundef %piter) #12
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %if.then
  %sg3 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %piter, i64 0, i32 0
  %1 = load %struct.scatterlist*, %struct.scatterlist** %sg3, align 8
  %sg_pgoffset = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 4, i32 1
  %2 = load i32, i32* %sg_pgoffset, align 8
  %tobool5.not = icmp eq i32 %2, 0
  br i1 %tobool5.not, label %cond.false, label %cleanup.thread

cond.false:                                       ; preds = %if.end
  %offset = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %1, i64 0, i32 1
  %3 = load i32, i32* %offset, align 8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cond.false, %if.end
  %cond = phi i32 [ %3, %cond.false ], [ 0, %if.end ]
  %__offset = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 5
  %shr = lshr i32 %cond, 12
  %add = add i32 %shr, %2
  store i32 %add, i32* %sg_pgoffset, align 8
  %4 = and i32 %cond, 4095
  store i32 %4, i32* %__offset, align 8
  %offset11 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %1, i64 0, i32 1
  %5 = load i32, i32* %offset11, align 8
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %1, i64 0, i32 2
  %6 = load i32, i32* %length, align 4
  %shl.neg = mul i32 %add, -4096
  %add12 = sub i32 %shl.neg, %4
  %sub = add i32 %add12, %5
  %sub16 = add i32 %sub, %6
  %narrow = sub nuw nsw i32 4096, %4
  %cmp = icmp ugt i32 %narrow, %sub16
  %cond27 = select i1 %cmp, i32 %sub16, i32 %narrow
  store i32 %cond27, i32* %__remaining, align 4
  br label %return

return:                                           ; preds = %if.then, %entry, %cleanup.thread
  %retval.1 = phi i1 [ true, %cleanup.thread ], [ true, %entry ], [ false, %if.then ]
  ret i1 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @sg_miter_next(%struct.sg_mapping_iter* nocapture noundef %miter) local_unnamed_addr #3 {
entry:
  call void @sg_miter_stop(%struct.sg_mapping_iter* noundef %miter) #12
  %call = call fastcc i1 @sg_miter_get_next_page(%struct.sg_mapping_iter* noundef %miter) #12
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %piter = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 4
  %call1 = call fastcc %struct.page* @sg_page_iter_page(%struct.sg_page_iter* noundef %piter) #12
  %page = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 0
  store %struct.page* %call1, %struct.page** %page, align 8
  %__remaining = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 6
  %0 = load i32, i32* %__remaining, align 4
  %conv = zext i32 %0 to i64
  %length = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 2
  store i64 %conv, i64* %length, align 8
  %consumed = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 3
  store i64 %conv, i64* %consumed, align 8
  %__flags = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 7
  %1 = load i32, i32* %__flags, align 8
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call4 = call fastcc i8* @kmap_atomic(%struct.page* noundef %call1) #12
  br label %return.sink.split

if.else:                                          ; preds = %if.end
  %call6 = call fastcc i8* @kmap(%struct.page* noundef %call1) #12
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else, %if.then2
  %call4.sink = phi i8* [ %call4, %if.then2 ], [ %call6, %if.else ]
  %__offset = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 5
  %2 = load i32, i32* %__offset, align 8
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr i8, i8* %call4.sink, i64 %idx.ext
  %addr = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 1
  store i8* %add.ptr, i8** %addr, align 8
  br label %return

return:                                           ; preds = %return.sink.split, %entry
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.page* @sg_page_iter_page(%struct.sg_page_iter* nocapture noundef readonly %piter) unnamed_addr #0 {
entry:
  %sg = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %piter, i64 0, i32 0
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8
  %call = call fastcc %struct.page* @sg_page(%struct.scatterlist* noundef %0) #12
  %sg_pgoffset = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %piter, i64 0, i32 1
  %1 = load i32, i32* %sg_pgoffset, align 8
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr %struct.page, %struct.page* %call, i64 %idx.ext
  ret %struct.page* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  call fastcc void @pagefault_disable() #12
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @kmap(%struct.page* noundef %page) unnamed_addr #7 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #3 {
entry:
  call fastcc void @pagefault_enable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @sg_copy_buffer(%struct.scatterlist* noundef %sgl, i32 noundef %nents, i8* noundef %buf, i64 noundef %buflen, i64 noundef %skip, i1 noundef %to_buffer) local_unnamed_addr #3 {
entry:
  %miter = alloca %struct.sg_mapping_iter, align 8
  %0 = bitcast %struct.sg_mapping_iter* %miter to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !19
  %. = select i1 %to_buffer, i32 5, i32 3
  call void @sg_miter_start(%struct.sg_mapping_iter* noundef nonnull %miter, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %.) #12
  %call = call i1 @sg_miter_skip(%struct.sg_mapping_iter* noundef nonnull %miter, i64 noundef %skip) #12
  br i1 %call, label %while.cond.preheader, label %cleanup

while.cond.preheader:                             ; preds = %entry
  %cmp44.not = icmp eq i64 %buflen, 0
  br i1 %cmp44.not, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %length = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 2
  %addr16 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end21
  %conv46 = phi i64 [ 0, %land.rhs.lr.ph ], [ %conv, %if.end21 ]
  %offset.045 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add, %if.end21 ]
  %call5 = call i1 @sg_miter_next(%struct.sg_mapping_iter* noundef nonnull %miter) #12
  br i1 %call5, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %1 = load i64, i64* %length, align 8
  %sub = sub i64 %buflen, %conv46
  %cmp8 = icmp ult i64 %1, %sub
  %cond = select i1 %cmp8, i64 %1, i64 %sub
  %conv10 = trunc i64 %cond to i32
  br i1 %to_buffer, label %if.then12, label %if.else15

if.then12:                                        ; preds = %while.body
  %add.ptr = getelementptr i8, i8* %buf, i64 %conv46
  %2 = load i8*, i8** %addr16, align 8
  %conv13 = and i64 %cond, 4294967295
  %call14 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %2, i64 noundef %conv13) #14
  br label %if.end21

if.else15:                                        ; preds = %while.body
  %3 = load i8*, i8** %addr16, align 8
  %add.ptr18 = getelementptr i8, i8* %buf, i64 %conv46
  %conv19 = and i64 %cond, 4294967295
  %call20 = call i8* @memcpy(i8* noundef %3, i8* noundef %add.ptr18, i64 noundef %conv19) #14
  br label %if.end21

if.end21:                                         ; preds = %if.else15, %if.then12
  %add = add i32 %offset.045, %conv10
  %conv = zext i32 %add to i64
  %cmp = icmp ult i64 %conv, %buflen
  br i1 %cmp, label %land.rhs, label %while.end

while.end:                                        ; preds = %land.rhs, %if.end21, %while.cond.preheader
  %offset.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %add, %if.end21 ], [ %offset.045, %land.rhs ]
  %conv.le = zext i32 %offset.0.lcssa to i64
  call void @sg_miter_stop(%struct.sg_mapping_iter* noundef nonnull %miter) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i64 [ %conv.le, %while.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #13
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @sg_copy_from_buffer(%struct.scatterlist* noundef %sgl, i32 noundef %nents, i8* noundef %buf, i64 noundef %buflen) local_unnamed_addr #3 {
entry:
  %call = call i64 @sg_copy_buffer(%struct.scatterlist* noundef %sgl, i32 noundef %nents, i8* noundef %buf, i64 noundef %buflen, i64 noundef 0, i1 noundef false) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @sg_copy_to_buffer(%struct.scatterlist* noundef %sgl, i32 noundef %nents, i8* noundef %buf, i64 noundef %buflen) local_unnamed_addr #3 {
entry:
  %call = call i64 @sg_copy_buffer(%struct.scatterlist* noundef %sgl, i32 noundef %nents, i8* noundef %buf, i64 noundef %buflen, i64 noundef 0, i1 noundef true) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @sg_pcopy_from_buffer(%struct.scatterlist* noundef %sgl, i32 noundef %nents, i8* noundef %buf, i64 noundef %buflen, i64 noundef %skip) local_unnamed_addr #3 {
entry:
  %call = call i64 @sg_copy_buffer(%struct.scatterlist* noundef %sgl, i32 noundef %nents, i8* noundef %buf, i64 noundef %buflen, i64 noundef %skip, i1 noundef false) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @sg_pcopy_to_buffer(%struct.scatterlist* noundef %sgl, i32 noundef %nents, i8* noundef %buf, i64 noundef %buflen, i64 noundef %skip) local_unnamed_addr #3 {
entry:
  %call = call i64 @sg_copy_buffer(%struct.scatterlist* noundef %sgl, i32 noundef %nents, i8* noundef %buf, i64 noundef %buflen, i64 noundef %skip, i1 noundef true) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @sg_zero_buffer(%struct.scatterlist* noundef %sgl, i32 noundef %nents, i64 noundef %buflen, i64 noundef %skip) local_unnamed_addr #3 {
entry:
  %miter = alloca %struct.sg_mapping_iter, align 8
  %0 = bitcast %struct.sg_mapping_iter* %miter to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !19
  call void @sg_miter_start(%struct.sg_mapping_iter* noundef nonnull %miter, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef 3) #12
  %call = call i1 @sg_miter_skip(%struct.sg_mapping_iter* noundef nonnull %miter, i64 noundef %skip) #12
  br i1 %call, label %while.cond.preheader, label %cleanup

while.cond.preheader:                             ; preds = %entry
  %cmp25.not = icmp eq i64 %buflen, 0
  br i1 %cmp25.not, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %length = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 2
  %addr = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %miter, i64 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %conv27 = phi i64 [ 0, %land.rhs.lr.ph ], [ %conv, %while.body ]
  %offset.026 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add, %while.body ]
  %call2 = call i1 @sg_miter_next(%struct.sg_mapping_iter* noundef nonnull %miter) #12
  br i1 %call2, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %1 = load i64, i64* %length, align 8
  %sub = sub i64 %buflen, %conv27
  %cmp5 = icmp ult i64 %1, %sub
  %cond = select i1 %cmp5, i64 %1, i64 %sub
  %conv7 = trunc i64 %cond to i32
  %2 = load i8*, i8** %addr, align 8
  %conv8 = and i64 %cond, 4294967295
  %call9 = call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef %conv8) #14
  %add = add i32 %offset.026, %conv7
  %conv = zext i32 %add to i64
  %cmp = icmp ult i64 %conv, %buflen
  br i1 %cmp, label %land.rhs, label %while.end

while.end:                                        ; preds = %land.rhs, %while.body, %while.cond.preheader
  %offset.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %add, %while.body ], [ %offset.026, %land.rhs ]
  %conv.le = zext i32 %offset.0.lcssa to i64
  call void @sg_miter_stop(%struct.sg_mapping_iter* noundef nonnull %miter) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i64 [ %conv.le, %while.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #13
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @__sg_chain(%struct.scatterlist* nocapture noundef writeonly %chain_sg, %struct.scatterlist* noundef %sgl) unnamed_addr #6 {
entry:
  %offset = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %chain_sg, i64 0, i32 1
  store i32 0, i32* %offset, align 8
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %chain_sg, i64 0, i32 2
  store i32 0, i32* %length, align 4
  %0 = ptrtoint %struct.scatterlist* %sgl to i64
  %or = and i64 %0, -4
  %and = or i64 %or, 1
  %page_link = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %chain_sg, i64 0, i32 0
  store i64 %and, i64* %page_link, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n, i32 noundef %flags) unnamed_addr #3 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 32)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !8

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef %flags) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sg_assign_page(%struct.scatterlist* nocapture noundef %sg, %struct.page* noundef %page) unnamed_addr #3 {
entry:
  %page_link1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 0
  %0 = ptrtoint %struct.page* %page to i64
  %and2 = and i64 %0, 3
  %tobool.not = icmp eq i64 %and2, 0
  br i1 %tobool.not, label %do.end10, label %do.body5, !prof !7

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/scatterlist.h\22; .popsection; .long 14472b - 14470b; .short 95; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !20
  unreachable

do.end10:                                         ; preds = %entry
  %1 = load i64, i64* %page_link1, align 8
  %and = and i64 %1, 3
  %or = or i64 %and, %0
  store i64 %or, i64* %page_link1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !21
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_enable() unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !23
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !21
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2153716184}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = !{i64 2153722893}
!13 = !{i64 2153726433}
!14 = !{i64 2153735043}
!15 = !{i64 2153738264}
!16 = !{i64 2153744597}
!17 = !{i64 2153678706}
!18 = !{i64 2153680964}
!19 = !{!"auto-init"}
!20 = !{i64 2152729950}
!21 = !{i64 1295206}
!22 = !{i64 2152188826}
!23 = !{i64 2152189033}
