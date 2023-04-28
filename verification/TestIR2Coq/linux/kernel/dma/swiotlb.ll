; ModuleID = 'kernel/dma/swiotlb.c'
source_filename = "kernel/dma/swiotlb.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.io_tlb_mem = type { i64, i64, i64, i64, i32, %struct.spinlock, %struct.dentry*, i8, i8, i8, %struct.io_tlb_slot* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.63, i32, i8* }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.15 }
%union.anon.15 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.16, %union.anon.17 }
%union.anon.16 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.17 = type { i64 }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%struct.request_queue = type opaque
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.53, i32, [12 x i8] }
%union.anon.53 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.13, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.32 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.55, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.55 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.11, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.12, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.11 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.12 = type { %struct.pte_t }
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
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.38 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.61 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.62 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.63 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { i64 }
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
%union.anon.66 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.67 = type { %struct.hlist_node }
%struct.io_tlb_slot = type { i64, i64, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.68, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.68 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type { i64, i64, i64, i64 }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque

@__setup_str_setup_io_tlb_npages = internal constant [8 x i8] c"swiotlb\00", section ".init.rodata", align 1
@__setup_setup_io_tlb_npages = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__setup_str_setup_io_tlb_npages, i32 0, i32 0), i32 (i8*)* @setup_io_tlb_npages, i32 1 }, section ".init.setup", align 8
@io_tlb_default_mem = dso_local global %struct.io_tlb_mem zeroinitializer, align 8
@max_segment = internal unnamed_addr global i32 0, align 4
@swiotlb_force = dso_local local_unnamed_addr global i32 0, align 4
@default_nslabs = internal unnamed_addr global i64 32768, align 8
@.str = private unnamed_addr constant [64 x i8] c"\016software IO TLB: SWIOTLB bounce buffer size adjusted to %luMB\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\014software IO TLB: No low mem\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"\016software IO TLB: mapped [mem %pa-%pa] (%luMB)\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%s: Failed to allocate %zu bytes align=0x%lx\0A\00", align 1
@__func__.swiotlb_init_with_tbl = private unnamed_addr constant [22 x i8] c"swiotlb_init_with_tbl\00", align 1
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"\014software IO TLB: Cannot allocate buffer\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\014software IO TLB: only able to allocate %ld MB\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"\016software IO TLB: tearing down default memory pool\0A\00", align 1
@.str.7 = private unnamed_addr constant [93 x i8] c"Can not allocate SWIOTLB buffer earlier and can't now provide you with the DMA bounce buffer\00", align 1
@swiotlb_tbl_map_single.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"Invalid sizes (mapping: %zd bytes, alloc: %zd bytes)\00", align 1
@swiotlb_tbl_map_single._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.swiotlb_tbl_map_single = private unnamed_addr constant [23 x i8] c"swiotlb_tbl_map_single\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"swiotlb buffer is full (sz: %zd bytes), total %lu (slots), used %lu (slots)\0A\00", align 1
@swiotlb_map.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"%s %s: swiotlb addr %pad+%zu overflow (mask %llx, bus limit %llx).\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"noforce\00", align 1
@arm64_dma_phys_limit = external dso_local local_unnamed_addr global i64, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@swiotlb_bounce.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [83 x i8] c"%s %s: Access before mapping start detected. orig offset %u, requested offset %u.\0A\00", align 1
@swiotlb_bounce.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [78 x i8] c"%s %s: Buffer overflow detected. Allocation size: %zu. Mapping size: %zu+%u.\0A\00", align 1
@swiotlb_bounce.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = private unnamed_addr constant [75 x i8] c"%s %s: Buffer overflow detected. Allocation size: %zu. Mapping size: %zu.\0A\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_setup_io_tlb_npages to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @setup_io_tlb_npages(i8* noundef %str) #0 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8, i8* %str, align 1
  %conv = zext i8 %0 to i32
  %call = call fastcc i32 @isdigit(i32 noundef %conv) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @simple_strtoul(i8* noundef %str, i8** noundef nonnull %str.addr, i32 noundef 0) #15
  %add = add i64 %call1, 127
  %and = and i64 %add, -128
  store i64 %and, i64* @default_nslabs, align 8
  %.pre = load i8*, i8** %str.addr, align 8
  %.pre14 = load i8, i8* %.pre, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i8 [ %.pre14, %if.then ], [ %0, %entry ]
  %2 = phi i8* [ %.pre, %if.then ], [ %str, %entry ]
  %cmp = icmp eq i8 %1, 44
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %incdec.ptr = getelementptr i8, i8* %2, i64 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %3 = phi i8* [ %incdec.ptr, %if.then4 ], [ %2, %if.end ]
  %call6 = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #15
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13.sink.split, label %if.else

if.else:                                          ; preds = %if.end5
  %4 = load i8*, i8** %str.addr, align 8
  %call9 = call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #15
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13.sink.split, label %if.end13

if.end13.sink.split:                              ; preds = %if.else, %if.end5
  %.sink = phi i32 [ 1, %if.end5 ], [ 2, %if.else ]
  store i32 %.sink, i32* @swiotlb_force, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @swiotlb_max_segment() local_unnamed_addr #1 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 2), align 8
  %tobool.not = icmp eq i64 %0, 0
  %1 = load i32, i32* @max_segment, align 4
  %cond = select i1 %tobool.not, i32 0, i32 %1
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @swiotlb_set_max_segment(i32 noundef %val) local_unnamed_addr #2 {
entry:
  %0 = load i32, i32* @swiotlb_force, align 4
  %cmp = icmp eq i32 %0, 1
  %1 = and i32 %val, -4096
  %storemerge = select i1 %cmp, i32 1, i32 %1
  store i32 %storemerge, i32* @max_segment, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @swiotlb_size_or_default() local_unnamed_addr #1 {
entry:
  %0 = load i64, i64* @default_nslabs, align 8
  %shl = shl i64 %0, 11
  ret i64 %shl
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @swiotlb_adjust_size(i64 noundef %size) local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i64, i64* @default_nslabs, align 8
  %cmp.not = icmp eq i64 %0, 32768
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %add = add i64 %size, 2047
  %shr = lshr i64 %add, 11
  %add1 = add nuw nsw i64 %shr, 127
  %and2 = and i64 %add1, 18014398509481856
  store i64 %and2, i64* @default_nslabs, align 8
  %shr3 = lshr i64 %add, 20
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 noundef %shr3) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @swiotlb_print_info() local_unnamed_addr #5 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 2), align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %do.end, label %do.end3

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #16
  br label %cleanup

do.end3:                                          ; preds = %entry
  %1 = lshr i64 %0, 9
  %shr = and i64 %1, 17592186044415
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64* noundef getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 0), i64* noundef getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 1), i64 noundef %shr) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end3, %do.end
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @swiotlb_update_mem_attributes() local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 2), align 8
  %tobool.not = icmp ne i64 %0, 0
  %1 = load i8, i8* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 7), align 8
  %tobool1.not = icmp eq i8 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 0), align 8
  %call = call fastcc i8* @phys_to_virt(i64 noundef %2) #14
  %shl = shl i64 %0, 11
  %add = add i64 %shl, 4095
  %and = and i64 %add, -4096
  %call4 = call i8* @memset(i8* noundef nonnull %call, i32 noundef 0, i64 noundef %and) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull i8* @phys_to_virt(i64 noundef %x) unnamed_addr #1 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %x, %0
  %or = or i64 %sub, -549755813888
  %1 = inttoptr i64 %or to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @swiotlb_init_with_tbl(i8* noundef %tlb, i64 noundef %nslabs, i32 noundef %verbose) local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i32, i32* @swiotlb_force, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 2), align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end20, label %if.then9, !prof !7

if.then9:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/swiotlb.c\22; .popsection; .long 14472b - 14470b; .short 211; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !8
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %call = call fastcc i64 @array_size(i64 noundef %nslabs) #14
  %add = add i64 %call, 4095
  %and = and i64 %add, -4096
  %call.i = call i8* @memblock_alloc_try_nid(i64 noundef %and, i64 noundef 4096, i64 noundef 0, i64 noundef 0, i32 noundef -1) #15
  store i8* %call.i, i8** bitcast (%struct.io_tlb_slot** getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 10) to i8**), align 8
  %tobool23.not = icmp eq i8* %call.i, null
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.swiotlb_init_with_tbl, i64 0, i64 0), i64 noundef %and, i64 noundef 4096) #18
  unreachable

if.end25:                                         ; preds = %if.end20
  %2 = ptrtoint i8* %tlb to i64
  %sub = add i64 %2, 549755813888
  %cmp27 = icmp ult i64 %sub, 274877906944
  %3 = load i64, i64* @memstart_addr, align 8
  %add31 = add i64 %3, %sub
  %4 = load i64, i64* @kimage_voffset, align 8
  %sub32 = sub i64 %2, %4
  %cond = select i1 %cmp27, i64 %add31, i64 %sub32
  call fastcc void @swiotlb_init_io_tlb_mem(i64 noundef %cond, i64 noundef %nslabs, i1 noundef false) #14
  %tobool33.not = icmp eq i32 %verbose, 0
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end25
  call void @swiotlb_print_info() #14
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end25
  %5 = load i64, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 2), align 8
  %.tr = trunc i64 %5 to i32
  %conv37 = shl i32 %.tr, 11
  call void @swiotlb_set_max_segment(i32 noundef %conv37) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %entry, %if.end35
  %retval.0 = phi i32 [ 0, %if.end35 ], [ 0, %entry ], [ -12, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @array_size(i64 noundef %b) unnamed_addr #7 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %b, i64 24)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  %retval.0 = select i1 %1, i64 -1, i64 %2
  ret i64 %retval.0
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @swiotlb_init_io_tlb_mem(i64 noundef %start, i64 noundef %nslabs, i1 noundef %late_alloc) unnamed_addr #5 {
entry:
  %frombool = zext i1 %late_alloc to i8
  %call = call fastcc i8* @phys_to_virt(i64 noundef %start) #14
  %shl = shl i64 %nslabs, 11
  store i64 %nslabs, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 2), align 8
  store i64 %start, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 0), align 8
  %add = add i64 %shl, %start
  store i64 %add, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 4), align 8
  store i8 %frombool, i8* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 7), align 8
  %0 = load i32, i32* @swiotlb_force, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  store i8 1, i8* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 8), align 1
  br label %do.body

do.body:                                          ; preds = %entry, %if.then
  store i32 0, i32* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  %cmp91.not = icmp eq i64 %nslabs, 0
  br i1 %cmp91.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.body, %for.body
  %i.02 = phi i64 [ %inc, %for.body ], [ 0, %do.body ]
  %call10 = call fastcc i64 @io_tlb_offset(i64 noundef %i.02) #14
  %1 = trunc i64 %call10 to i32
  %conv = sub i32 128, %1
  %2 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 10), align 8
  %list = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %2, i64 %i.02, i32 2
  store i32 %conv, i32* %list, align 8
  %3 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 10), align 8
  %orig_addr = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %3, i64 %i.02, i32 0
  store i64 -1, i64* %orig_addr, align 8
  %4 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 10), align 8
  %alloc_size = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %4, i64 %i.02, i32 1
  store i64 0, i64* %alloc_size, align 8
  %inc = add nuw i64 %i.02, 1
  %5 = load i64, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 2), align 8
  %cmp9 = icmp ult i64 %inc, %5
  br i1 %cmp9, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %do.body
  %call15 = call i8* @memset(i8* noundef nonnull %call, i32 noundef 0, i64 noundef %shl) #15
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @swiotlb_init(i32 noundef %verbose) local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i64, i64* @default_nslabs, align 8
  %shl = shl i64 %0, 11
  %add = add i64 %shl, 4095
  %and = and i64 %add, -4096
  %1 = load i32, i32* @swiotlb_force, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @memblock_alloc_low(i64 noundef %and) #14
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %do.end, label %if.end2

if.end2:                                          ; preds = %if.end
  %2 = load i64, i64* @default_nslabs, align 8
  %call3 = call i32 @swiotlb_init_with_tbl(i8* noundef nonnull %call, i64 noundef %2, i32 noundef %verbose) #19
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %fail_free_mem

fail_free_mem:                                    ; preds = %if.end2
  %3 = ptrtoint i8* %call to i64
  %sub = add i64 %3, 549755813888
  %cmp7 = icmp ult i64 %sub, 274877906944
  %4 = load i64, i64* @memstart_addr, align 8
  %add10 = add i64 %4, %sub
  %5 = load i64, i64* @kimage_voffset, align 8
  %sub11 = sub i64 %3, %5
  %cond = select i1 %cmp7, i64 %add10, i64 %sub11
  call fastcc void @memblock_free_early(i64 noundef %cond, i64 noundef %and) #14
  br label %do.end

do.end:                                           ; preds = %fail_free_mem, %if.end
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0)) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @memblock_alloc_low(i64 noundef %size) unnamed_addr #5 {
entry:
  %0 = load i64, i64* @arm64_dma_phys_limit, align 8
  %sub = add i64 %0, -1
  %call = call i8* @memblock_alloc_try_nid(i64 noundef %size, i64 noundef 4096, i64 noundef 0, i64 noundef %sub, i32 noundef -1) #15
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memblock_free_early(i64 noundef %base, i64 noundef %size) unnamed_addr #5 {
entry:
  %call = call i32 @memblock_free(i64 noundef %base, i64 noundef %size) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @swiotlb_late_init_with_default_size(i64 noundef %default_size) local_unnamed_addr #5 {
entry:
  %0 = load i32, i32* @swiotlb_force, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cleanup, label %if.end14.i

if.end14.i:                                       ; preds = %entry
  %1 = add i64 %default_size, 260096
  %shl = and i64 %1, -262144
  %dec.i = add i64 %shl, -1
  %shr.i = lshr i64 %dec.i, 12
  %2 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 true) #17, !range !9
  %3 = trunc i64 %2 to i32
  %conv.i.i = sub nuw nsw i32 64, %3
  %shl1 = shl i32 2, %conv.i.i
  %conv = sext i32 %shl1 to i64
  %shl2 = shl nsw i64 %conv, 11
  %cmp478 = icmp sgt i32 %shl1, 512
  br i1 %cmp478, label %while.body.preheader, label %cleanup

while.body.preheader:                             ; preds = %if.end14.i
  %call691 = call i64 @__get_free_pages(i32 noundef 8193, i32 noundef %conv.i.i) #15
  %tobool.not92 = icmp eq i64 %call691, 0
  br i1 %tobool.not92, label %if.end8, label %if.end11

while.body:                                       ; preds = %if.end8
  %call6 = call i64 @__get_free_pages(i32 noundef 8193, i32 noundef %dec) #15
  %tobool.not = icmp eq i64 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end11

if.end8:                                          ; preds = %while.body.preheader, %while.body
  %order.07993 = phi i32 [ %dec, %while.body ], [ %conv.i.i, %while.body.preheader ]
  %dec = add i32 %order.07993, -1
  %shl3 = shl i32 2, %dec
  %cmp4 = icmp sgt i32 %shl3, 512
  br i1 %cmp4, label %while.body, label %cleanup

if.end11:                                         ; preds = %while.body, %while.body.preheader
  %shl380.lcssa = phi i32 [ %shl1, %while.body.preheader ], [ %shl3, %while.body ]
  %order.079.lcssa = phi i32 [ %conv.i.i, %while.body.preheader ], [ %dec, %while.body ]
  %call6.lcssa = phi i64 [ %call691, %while.body.preheader ], [ %call6, %while.body ]
  %4 = inttoptr i64 %call6.lcssa to i8*
  %dec.i62 = add nsw i64 %shl2, -1
  %cmp.i.i64 = icmp eq i64 %dec.i62, 4095
  %shr.i63 = lshr i64 %dec.i62, 12
  %5 = call i64 @llvm.ctlz.i64(i64 %shr.i63, i1 false) #17, !range !9
  %6 = trunc i64 %5 to i32
  %conv.i.i65 = sub nuw nsw i32 64, %6
  %retval.0.i.i66 = select i1 %cmp.i.i64, i32 0, i32 %conv.i.i65
  %cmp13.not = icmp eq i32 %order.079.lcssa, %retval.0.i.i66
  br i1 %cmp13.not, label %if.end21, label %do.end

do.end:                                           ; preds = %if.end11
  %sh_prom = zext i32 %order.079.lcssa to i64
  %shl16 = shl i64 4096, %sh_prom
  %shr17 = lshr i64 %shl16, 20
  %call18 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 noundef %shr17) #16
  %conv2072 = zext i32 %shl380.lcssa to i64
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end11
  %nslabs.0 = phi i64 [ %conv2072, %do.end ], [ %conv, %if.end11 ]
  %call22 = call i32 @swiotlb_late_init_with_tbl(i8* noundef nonnull %4, i64 noundef %nslabs.0) #14
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @free_pages(i64 noundef %call6.lcssa, i32 noundef %order.079.lcssa) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end14.i, %if.end21, %if.then24, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call22, %if.then24 ], [ 0, %if.end21 ], [ -12, %if.end14.i ], [ -12, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @swiotlb_late_init_with_tbl(i8* noundef %tlb, i64 noundef %nslabs) local_unnamed_addr #5 {
entry:
  %0 = load i32, i32* @swiotlb_force, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 2), align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end14.i, label %if.then9, !prof !7

if.then9:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/swiotlb.c\22; .popsection; .long 14472b - 14470b; .short 313; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !10
  br label %cleanup

if.end14.i:                                       ; preds = %if.end
  %call = call fastcc i64 @array_size(i64 noundef %nslabs) #14
  %dec.i = add i64 %call, -1
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %shr.i = lshr i64 %dec.i, 12
  %2 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #17, !range !9
  %3 = trunc i64 %2 to i32
  %conv.i.i = sub nuw nsw i32 64, %3
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %call22 = call i64 @__get_free_pages(i32 noundef 3520, i32 noundef %retval.0.i.i) #15
  %4 = inttoptr i64 %call22 to %struct.io_tlb_slot*
  store %struct.io_tlb_slot* %4, %struct.io_tlb_slot** getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 10), align 8
  %tobool24.not = icmp eq i64 %call22, 0
  br i1 %tobool24.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end14.i
  %call29 = call fastcc i64 @virt_to_phys(i8* noundef %tlb) #14
  call fastcc void @swiotlb_init_io_tlb_mem(i64 noundef %call29, i64 noundef %nslabs, i1 noundef true) #14
  call void @swiotlb_print_info() #14
  %5 = load i64, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 2), align 8
  %.tr = trunc i64 %5 to i32
  %conv32 = shl i32 %.tr, 11
  call void @swiotlb_set_max_segment(i32 noundef %conv32) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end14.i, %entry, %if.end26
  %retval.0 = phi i32 [ 0, %if.end26 ], [ 0, %entry ], [ -12, %if.then9 ], [ -12, %if.end14.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @virt_to_phys(i8* noundef %x) unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %x to i64
  %sub = add i64 %0, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub3 = sub i64 %0, %2
  %cond = select i1 %cmp, i64 %add, i64 %sub3
  ret i64 %cond
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @swiotlb_exit() local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 2), align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0)) #16
  %1 = load i64, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 0), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 1), align 8
  %sub = sub i64 4095, %1
  %add = add i64 %sub, %2
  %and = and i64 %add, -4096
  %3 = load i64, i64* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 2), align 8
  %call4 = call fastcc i64 @array_size(i64 noundef %3) #14
  %add5 = add i64 %call4, 4095
  %and6 = and i64 %add5, -4096
  %4 = load i8, i8* getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 7), align 8, !range !11
  %tobool8.not = icmp eq i8 %4, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end
  %call1 = call fastcc i8* @phys_to_virt(i64 noundef %1) #14
  %5 = ptrtoint i8* %call1 to i64
  %dec.i = add i64 %and, -1
  %cmp.i.i = icmp eq i64 %dec.i, 4095
  %shr.i = lshr i64 %dec.i, 12
  %6 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #17, !range !9
  %7 = trunc i64 %6 to i32
  %conv.i.i = sub nuw nsw i32 64, %7
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  call void @free_pages(i64 noundef %5, i32 noundef %retval.0.i.i) #15
  %8 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 10), align 8
  %9 = ptrtoint %struct.io_tlb_slot* %8 to i64
  %dec.i60 = add i64 %and6, -1
  %cmp.i.i62 = icmp eq i64 %dec.i60, 4095
  %shr.i61 = lshr i64 %dec.i60, 12
  %10 = call i64 @llvm.ctlz.i64(i64 %shr.i61, i1 false) #17, !range !9
  %11 = trunc i64 %10 to i32
  %conv.i.i63 = sub nuw nsw i32 64, %11
  %retval.0.i.i64 = select i1 %cmp.i.i62, i32 0, i32 %conv.i.i63
  call void @free_pages(i64 noundef %9, i32 noundef %retval.0.i.i64) #15
  br label %if.end21

if.else:                                          ; preds = %do.end
  call fastcc void @memblock_free_late(i64 noundef %1, i64 noundef %and) #14
  %12 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** getelementptr inbounds (%struct.io_tlb_mem, %struct.io_tlb_mem* @io_tlb_default_mem, i64 0, i32 10), align 8
  %13 = ptrtoint %struct.io_tlb_slot* %12 to i64
  %sub15 = add i64 %13, 549755813888
  %cmp = icmp ult i64 %sub15, 274877906944
  %14 = load i64, i64* @memstart_addr, align 8
  %add19 = add i64 %sub15, %14
  %15 = load i64, i64* @kimage_voffset, align 8
  %sub20 = sub i64 %13, %15
  %cond = select i1 %cmp, i64 %add19, i64 %sub20
  call fastcc void @memblock_free_late(i64 noundef %cond, i64 noundef %and6) #14
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then9
  %call22 = call i8* @memset(i8* noundef bitcast (%struct.io_tlb_mem* @io_tlb_default_mem to i8*), i32 noundef 0, i64 noundef 64) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memblock_free_late(i64 noundef %base, i64 noundef %size) unnamed_addr #5 {
entry:
  call void @__memblock_free_late(i64 noundef %base, i64 noundef %size) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @swiotlb_tbl_map_single(%struct.device* noundef %dev, i64 noundef %orig_addr, i64 noundef %mapping_size, i64 noundef %alloc_size, i32 noundef %dir, i64 noundef %attrs) local_unnamed_addr #5 {
entry:
  %dma_io_tlb_mem = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 23
  %0 = load %struct.io_tlb_mem*, %struct.io_tlb_mem** %dma_io_tlb_mem, align 8
  %call = call fastcc i32 @swiotlb_align_offset(%struct.device* noundef %dev, i64 noundef %orig_addr) #14
  %tobool.not = icmp eq %struct.io_tlb_mem* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.7, i64 0, i64 0)) #18
  unreachable

if.end:                                           ; preds = %entry
  %cmp = icmp ugt i64 %mapping_size, %alloc_size
  br i1 %cmp, label %do.body22, label %if.end31

do.body22:                                        ; preds = %if.end
  %.b111 = load i1, i1* @swiotlb_tbl_map_single.__print_once, align 1
  br i1 %.b111, label %cleanup, label %if.then24

if.then24:                                        ; preds = %do.body22
  store i1 true, i1* @swiotlb_tbl_map_single.__print_once, align 1
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i64 noundef %mapping_size, i64 noundef %alloc_size) #16
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %conv32 = zext i32 %call to i64
  %add = add i64 %conv32, %alloc_size
  %call33 = call fastcc i32 @swiotlb_find_slots(%struct.device* noundef %dev, i64 noundef %orig_addr, i64 noundef %add) #14
  %cmp34 = icmp eq i32 %call33, -1
  br i1 %cmp34, label %if.then36, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end31
  %call54 = call fastcc i64 @nr_slots(i64 noundef %add) #14
  %cmp55112.not = icmp eq i64 %call54, 0
  br i1 %cmp55112.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slots = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 10
  br label %for.body

if.then36:                                        ; preds = %if.end31
  %and = and i64 %attrs, 256
  %tobool37.not = icmp eq i64 %and, 0
  br i1 %tobool37.not, label %do.body39, label %cleanup

do.body39:                                        ; preds = %if.then36
  %call40 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @swiotlb_tbl_map_single._rs, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.swiotlb_tbl_map_single, i64 0, i64 0)) #15
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup, label %do.end45

do.end45:                                         ; preds = %do.body39
  %nslabs = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 2
  %1 = load i64, i64* %nslabs, align 8
  %used = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 3
  %2 = load i64, i64* %used, align 8
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i64 0, i64 0), i64 noundef %alloc_size, i64 noundef %1, i64 noundef %2) #16
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %shl = shl i32 %i.0113, 11
  %conv57 = zext i32 %shl to i64
  %add58 = add i64 %conv57, %orig_addr
  %3 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** %slots, align 8
  %add59 = add i32 %i.0113, %call33
  %idxprom = zext i32 %add59 to i64
  %orig_addr60 = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %3, i64 %idxprom, i32 0
  store i64 %add58, i64* %orig_addr60, align 8
  %inc = add i32 %i.0113, 1
  %conv51 = zext i32 %inc to i64
  %cmp55 = icmp ugt i64 %call54, %conv51
  br i1 %cmp55, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %start = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 0
  %4 = load i64, i64* %start, align 8
  %shl61 = shl i32 %call33, 11
  %conv62 = sext i32 %shl61 to i64
  %add63 = add nsw i64 %conv62, %conv32
  %add65 = add i64 %add63, %4
  %and66 = and i64 %attrs, 32
  %tobool67.not = icmp eq i64 %and66, 0
  %5 = icmp ult i32 %dir, 2
  %or.cond = and i1 %5, %tobool67.not
  br i1 %or.cond, label %if.then72, label %cleanup

if.then72:                                        ; preds = %for.end
  call fastcc void @swiotlb_bounce(%struct.device* noundef %dev, i64 noundef %add65, i64 noundef %mapping_size, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then72, %if.then36, %do.end45, %do.body39, %do.body22, %if.then24
  %retval.0 = phi i64 [ -1, %if.then24 ], [ -1, %do.body22 ], [ -1, %do.body39 ], [ -1, %do.end45 ], [ -1, %if.then36 ], [ %add65, %if.then72 ], [ %add65, %for.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @swiotlb_align_offset(%struct.device* nocapture noundef readonly %dev, i64 noundef %addr) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @dma_get_min_align_mask(%struct.device* noundef %dev) #14
  %0 = trunc i64 %addr to i32
  %1 = and i32 %0, 2047
  %conv2 = and i32 %1, %call
  ret i32 %conv2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @swiotlb_find_slots(%struct.device* nocapture noundef readonly %dev, i64 noundef %orig_addr, i64 noundef %alloc_size) unnamed_addr #5 {
entry:
  %dma_io_tlb_mem = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 23
  %0 = load %struct.io_tlb_mem*, %struct.io_tlb_mem** %dma_io_tlb_mem, align 8
  %call = call fastcc i64 @dma_get_seg_boundary(%struct.device* noundef %dev) #14
  %start = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  %call1 = call fastcc i64 @phys_to_dma_unencrypted(%struct.device* noundef %dev, i64 noundef %1) #14
  %and = and i64 %call1, %call
  %call2 = call fastcc i64 @get_max_slots(i64 noundef %call) #14
  %call3 = call fastcc i32 @dma_get_min_align_mask(%struct.device* noundef %dev) #14
  %and4 = and i32 %call3, -2048
  %call5 = call fastcc i64 @nr_slots(i64 noundef %alloc_size) #14
  %conv = trunc i64 %call5 to i32
  %call6 = call fastcc i32 @swiotlb_align_offset(%struct.device* noundef %dev, i64 noundef %orig_addr) #14
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %do.body11, label %do.end16, !prof !12

do.body11:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/swiotlb.c\22; .popsection; .long 14472b - 14470b; .short 476; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !13
  unreachable

do.end16:                                         ; preds = %entry
  %shr = lshr i32 %call3, 11
  %add = add nuw nsw i32 %shr, 1
  %cmp = icmp ugt i64 %alloc_size, 4095
  %shl = shl nuw nsw i32 %add, 1
  %cmp19 = icmp ugt i32 %add, %shl
  %cond = select i1 %cmp19, i32 %add, i32 %shl
  %stride.0 = select i1 %cmp, i32 %cond, i32 %add
  %rlock.i = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 5, i32 0, i32 0
  %call28 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #14
  %conv33 = and i64 %call5, 4294967295
  %nslabs = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 2
  %2 = load i64, i64* %nslabs, align 8
  %used = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 3
  %3 = load i64, i64* %used, align 8
  %sub = sub i64 %2, %3
  %cmp34 = icmp ugt i64 %conv33, %sub
  br i1 %cmp34, label %cleanup, label %if.end44, !prof !12

if.end44:                                         ; preds = %do.end16
  %index45 = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 4
  %4 = load i32, i32* %index45, align 8
  %sub46 = add nsw i32 %stride.0, -1
  %add47 = add i32 %sub46, %4
  %neg = sub nsw i32 0, %stride.0
  %and49 = and i32 %add47, %neg
  %call50 = call fastcc i32 @wrap_index(%struct.io_tlb_mem* noundef %0, i32 noundef %and49) #14
  %tobool52.not = icmp eq i64 %orig_addr, 0
  %conv56 = zext i32 %and4 to i64
  %slots = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 10
  br label %do.body51

do.body51:                                        ; preds = %do.cond77, %if.end44
  %index.0 = phi i32 [ %call50, %if.end44 ], [ %call76, %do.cond77 ]
  br i1 %tobool52.not, label %if.end65, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body51
  %shl53 = shl i32 %index.0, 11
  %conv54 = zext i32 %shl53 to i64
  %add55 = add i64 %and, %conv54
  %5 = xor i64 %add55, %orig_addr
  %6 = and i64 %5, %conv56
  %cmp60.not = icmp eq i64 %6, 0
  br i1 %cmp60.not, label %if.end65, label %do.cond77

if.end65:                                         ; preds = %land.lhs.true, %do.body51
  %call66 = call fastcc i64 @nr_slots(i64 noundef %and) #14, !range !14
  %call67 = call fastcc i32 @iommu_is_span_boundary(i32 noundef %index.0, i32 noundef %conv, i64 noundef %call66, i64 noundef %call2) #14
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then69, label %do.cond77

if.then69:                                        ; preds = %if.end65
  %7 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** %slots, align 8
  %idxprom = zext i32 %index.0 to i64
  %list = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %7, i64 %idxprom, i32 2
  %8 = load i32, i32* %list, align 8
  %cmp70.not = icmp ult i32 %8, %conv
  br i1 %cmp70.not, label %do.cond77, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then69
  %add82 = add i32 %index.0, %conv
  %cmp83225 = icmp ult i32 %index.0, %add82
  br i1 %cmp83225, label %for.body.preheader, label %for.cond99.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %idxprom.le = zext i32 %index.0 to i64
  %wide.trip.count = zext i32 %add82 to i64
  %list88242 = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %7, i64 %idxprom.le, i32 2
  store i32 0, i32* %list88242, align 8
  %conv92243 = zext i32 %call6 to i64
  %sub93244 = sub i64 %alloc_size, %conv92243
  %9 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** %slots, align 8
  %alloc_size97245 = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %9, i64 %idxprom.le, i32 1
  store i64 %sub93244, i64* %alloc_size97245, align 8
  %indvars.iv.next246 = add nuw nsw i64 %idxprom.le, 1
  %exitcond.not247 = icmp eq i64 %indvars.iv.next246, %wide.trip.count
  br i1 %exitcond.not247, label %for.cond99.preheader, label %for.body.for.body_crit_edge

do.cond77:                                        ; preds = %if.end65, %if.then69, %land.lhs.true
  %stride.0.sink = phi i32 [ 1, %land.lhs.true ], [ %stride.0, %if.then69 ], [ %stride.0, %if.end65 ]
  %add75 = add i32 %index.0, %stride.0.sink
  %call76 = call fastcc i32 @wrap_index(%struct.io_tlb_mem* noundef %0, i32 noundef %add75) #14
  %cmp78.not = icmp eq i32 %call76, %call50
  br i1 %cmp78.not, label %cleanup, label %do.body51

for.cond99.preheader:                             ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %for.cond.preheader
  %i.1227 = add i32 %index.0, -1
  %conv100228 = zext i32 %i.1227 to i64
  %call101229 = call fastcc i64 @io_tlb_offset(i64 noundef %conv100228) #14
  %cmp102.not230 = icmp eq i64 %call101229, 127
  br i1 %cmp102.not230, label %for.end116, label %land.rhs

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %indvars.iv.next248 = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ %indvars.iv.next246, %for.body.preheader ]
  %.pre = load %struct.io_tlb_slot*, %struct.io_tlb_slot** %slots, align 8
  %list88 = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %.pre, i64 %indvars.iv.next248, i32 2
  store i32 0, i32* %list88, align 8
  %10 = trunc i64 %indvars.iv.next248 to i32
  %11 = sub i32 %10, %index.0
  %shl90 = shl i32 %11, 11
  %add91 = add i32 %shl90, %call6
  %conv92 = zext i32 %add91 to i64
  %sub93 = sub i64 %alloc_size, %conv92
  %12 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** %slots, align 8
  %alloc_size97 = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %12, i64 %indvars.iv.next248, i32 1
  store i64 %sub93, i64* %alloc_size97, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next248, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond99.preheader, label %for.body.for.body_crit_edge

land.rhs:                                         ; preds = %for.cond99.preheader, %for.body109
  %conv100233 = phi i64 [ %conv100, %for.body109 ], [ %conv100228, %for.cond99.preheader ]
  %count.0231 = phi i32 [ %inc110, %for.body109 ], [ 0, %for.cond99.preheader ]
  %13 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** %slots, align 8
  %list107 = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %13, i64 %conv100233, i32 2
  %14 = load i32, i32* %list107, align 8
  %tobool108.not = icmp eq i32 %14, 0
  br i1 %tobool108.not, label %for.end116, label %for.body109

for.body109:                                      ; preds = %land.rhs
  %inc110 = add i32 %count.0231, 1
  store i32 %inc110, i32* %list107, align 8
  %i.1 = add nuw nsw i64 %conv100233, 4294967295
  %conv100 = and i64 %i.1, 4294967295
  %call101 = call fastcc i64 @io_tlb_offset(i64 noundef %conv100) #14
  %cmp102.not = icmp eq i64 %call101, 127
  br i1 %cmp102.not, label %for.end116, label %land.rhs

for.end116:                                       ; preds = %land.rhs, %for.body109, %for.cond99.preheader
  %conv118 = zext i32 %add82 to i64
  %15 = load i64, i64* %nslabs, align 8
  %cmp120 = icmp ugt i64 %15, %conv118
  %add82. = select i1 %cmp120, i32 %add82, i32 0
  store i32 %add82., i32* %index45, align 8
  %16 = load i64, i64* %used, align 8
  %add129 = add i64 %16, %conv33
  store i64 %add129, i64* %used, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.cond77, %do.end16, %for.end116
  %retval.0 = phi i32 [ %index.0, %for.end116 ], [ -1, %do.end16 ], [ -1, %do.cond77 ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call28) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @nr_slots(i64 noundef %val) unnamed_addr #9 {
entry:
  %sub = add i64 %val, 2047
  %div = lshr i64 %sub, 11
  ret i64 %div
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @swiotlb_bounce(%struct.device* noundef %dev, i64 noundef %tlb_addr, i64 noundef %size, i32 noundef %dir) unnamed_addr #5 {
entry:
  %dma_io_tlb_mem = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 23
  %0 = load %struct.io_tlb_mem*, %struct.io_tlb_mem** %dma_io_tlb_mem, align 8
  %start = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  %sub = sub i64 %tlb_addr, %1
  %slots = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 10
  %2 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** %slots, align 8
  %3 = shl i64 %sub, 21
  %idxprom = ashr i64 %3, 32
  %orig_addr1 = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %2, i64 %idxprom, i32 0
  %4 = load i64, i64* %orig_addr1, align 8
  %alloc_size5 = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %2, i64 %idxprom, i32 1
  %5 = load i64, i64* %alloc_size5, align 8
  %call = call fastcc i8* @phys_to_virt(i64 noundef %tlb_addr) #14
  %cmp = icmp eq i64 %4, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = trunc i64 %tlb_addr to i32
  %conv8 = and i32 %6, 2047
  %call9 = call fastcc i32 @swiotlb_align_offset(%struct.device* noundef %dev, i64 noundef %4) #14
  %cmp10 = icmp ult i32 %conv8, %call9
  br i1 %cmp10, label %if.then12, label %if.end54

if.then12:                                        ; preds = %if.end
  %.b342 = load i1, i1* @swiotlb_bounce.__already_done, align 1
  br i1 %.b342, label %cleanup, label %if.then19, !prof !7

if.then19:                                        ; preds = %if.then12
  store i1 true, i1* @swiotlb_bounce.__already_done, align 1
  %call30 = call i8* @dev_driver_string(%struct.device* noundef %dev) #15
  %call31 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #14
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.14, i64 0, i64 0), i8* noundef %call30, i8* noundef %call31, i32 noundef %call9, i32 noundef %conv8) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/swiotlb.c\22; .popsection; .long 14472b - 14470b; .short 385; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !15
  br label %cleanup

if.end54:                                         ; preds = %if.end
  %sub55 = sub i32 %conv8, %call9
  %conv56 = zext i32 %sub55 to i64
  %cmp57 = icmp ult i64 %5, %conv56
  br i1 %cmp57, label %if.then59, label %if.end115

if.then59:                                        ; preds = %if.end54
  %.b338341 = load i1, i1* @swiotlb_bounce.__already_done.15, align 1
  br i1 %.b338341, label %cleanup, label %if.then75, !prof !7

if.then75:                                        ; preds = %if.then59
  store i1 true, i1* @swiotlb_bounce.__already_done.15, align 1
  %call90 = call i8* @dev_driver_string(%struct.device* noundef %dev) #15
  %call91 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #14
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call90, i8* noundef %call91, i64 noundef %5, i64 noundef %size, i32 noundef %sub55) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/swiotlb.c\22; .popsection; .long 14472b - 14470b; .short 393; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !16
  br label %cleanup

if.end115:                                        ; preds = %if.end54
  %add = add i64 %4, %conv56
  %sub118 = sub i64 %5, %conv56
  %cmp119 = icmp ult i64 %sub118, %size
  br i1 %cmp119, label %if.then121, label %if.end177

if.then121:                                       ; preds = %if.end115
  %.b339340 = load i1, i1* @swiotlb_bounce.__already_done.17, align 1
  br i1 %.b339340, label %if.end177, label %if.then137, !prof !7

if.then137:                                       ; preds = %if.then121
  store i1 true, i1* @swiotlb_bounce.__already_done.17, align 1
  %call152 = call i8* @dev_driver_string(%struct.device* noundef %dev) #15
  %call153 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #14
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call152, i8* noundef %call153, i64 noundef %sub118, i64 noundef %size) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/swiotlb.c\22; .popsection; .long 14472b - 14470b; .short 403; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !17
  br label %if.end177

if.end177:                                        ; preds = %if.then121, %if.then137, %if.end115
  %size.addr.0 = phi i64 [ %size, %if.end115 ], [ %sub118, %if.then137 ], [ %sub118, %if.then121 ]
  %cmp243 = icmp eq i32 %dir, 1
  %call246 = call fastcc i8* @phys_to_virt(i64 noundef %add) #14
  br i1 %cmp243, label %if.then245, label %if.else248

if.then245:                                       ; preds = %if.end177
  %call247 = call i8* @memcpy(i8* noundef nonnull %call, i8* noundef nonnull %call246, i64 noundef %size.addr.0) #15
  br label %cleanup

if.else248:                                       ; preds = %if.end177
  %call250 = call i8* @memcpy(i8* noundef nonnull %call246, i8* noundef nonnull %call, i64 noundef %size.addr.0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else248, %if.then245, %if.then59, %if.then75, %if.then12, %if.then19, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @swiotlb_tbl_unmap_single(%struct.device* noundef %dev, i64 noundef %tlb_addr, i64 noundef %mapping_size, i32 noundef %dir, i64 noundef %attrs) local_unnamed_addr #5 {
entry:
  %and = and i64 %attrs, 32
  %tobool.not = icmp eq i64 %and, 0
  %0 = and i32 %dir, -3
  %1 = icmp eq i32 %0, 0
  %or.cond = and i1 %1, %tobool.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @swiotlb_bounce(%struct.device* noundef %dev, i64 noundef %tlb_addr, i64 noundef %mapping_size, i32 noundef 2) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @swiotlb_release_slots(%struct.device* noundef %dev, i64 noundef %tlb_addr) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @swiotlb_release_slots(%struct.device* nocapture noundef readonly %dev, i64 noundef %tlb_addr) unnamed_addr #5 {
entry:
  %dma_io_tlb_mem = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 23
  %0 = load %struct.io_tlb_mem*, %struct.io_tlb_mem** %dma_io_tlb_mem, align 8
  %call = call fastcc i32 @swiotlb_align_offset(%struct.device* noundef %dev, i64 noundef %tlb_addr) #14
  %conv = zext i32 %call to i64
  %start = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  %2 = add i64 %1, %conv
  %sub1 = sub i64 %tlb_addr, %2
  %shr = lshr i64 %sub1, 11
  %conv2 = trunc i64 %shr to i32
  %slots = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 10
  %3 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** %slots, align 8
  %sext = shl i64 %shr, 32
  %idxprom = ashr exact i64 %sext, 32
  %alloc_size = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %3, i64 %idxprom, i32 1
  %4 = load i64, i64* %alloc_size, align 8
  %add = add i64 %4, %conv
  %call4 = call fastcc i64 @nr_slots(i64 noundef %add) #14
  %conv5 = trunc i64 %call4 to i32
  %rlock.i = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 5, i32 0, i32 0
  %call9 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #14
  %add12 = add i32 %conv2, %conv5
  %add14 = add i32 %conv2, 128
  %and = and i32 %add14, -128
  %cmp15 = icmp slt i32 %add12, %and
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** %slots, align 8
  %idxprom19 = sext i32 %add12 to i64
  %list = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %5, i64 %idxprom19, i32 2
  %6 = load i32, i32* %list, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %count.0 = phi i32 [ %6, %if.then ], [ 0, %entry ]
  %i.099 = add i32 %add12, -1
  %cmp23.not100 = icmp slt i32 %i.099, %conv2
  br i1 %cmp23.not100, label %for.cond37.preheader, label %for.body

for.cond37.preheader:                             ; preds = %for.body, %if.end
  %count.1.lcssa = phi i32 [ %count.0, %if.end ], [ %inc, %for.body ]
  %i.1103 = shl i64 %shr, 32
  %sext110 = add i64 %i.1103, -4294967296
  %conv38104 = ashr exact i64 %sext110, 32
  %call39105 = call fastcc i64 @io_tlb_offset(i64 noundef %conv38104) #14
  %cmp40.not106 = icmp eq i64 %call39105, 127
  br i1 %cmp40.not106, label %for.end54, label %land.rhs

for.body:                                         ; preds = %if.end, %for.body
  %i.0102 = phi i32 [ %i.0, %for.body ], [ %i.099, %if.end ]
  %count.1101 = phi i32 [ %inc, %for.body ], [ %count.0, %if.end ]
  %inc = add i32 %count.1101, 1
  %7 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** %slots, align 8
  %idxprom26 = sext i32 %i.0102 to i64
  %list28 = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %7, i64 %idxprom26, i32 2
  store i32 %inc, i32* %list28, align 8
  %8 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** %slots, align 8
  %orig_addr = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %8, i64 %idxprom26, i32 0
  store i64 -1, i64* %orig_addr, align 8
  %9 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** %slots, align 8
  %alloc_size35 = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %9, i64 %idxprom26, i32 1
  store i64 0, i64* %alloc_size35, align 8
  %i.0 = add i32 %i.0102, -1
  %cmp23.not = icmp slt i32 %i.0, %conv2
  br i1 %cmp23.not, label %for.cond37.preheader, label %for.body

land.rhs:                                         ; preds = %for.cond37.preheader, %for.body46
  %conv38109 = phi i64 [ %conv38, %for.body46 ], [ %conv38104, %for.cond37.preheader ]
  %count.2107 = phi i32 [ %inc47, %for.body46 ], [ %count.1.lcssa, %for.cond37.preheader ]
  %10 = load %struct.io_tlb_slot*, %struct.io_tlb_slot** %slots, align 8
  %list45 = getelementptr %struct.io_tlb_slot, %struct.io_tlb_slot* %10, i64 %conv38109, i32 2
  %11 = load i32, i32* %list45, align 8
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.end54, label %for.body46

for.body46:                                       ; preds = %land.rhs
  %inc47 = add i32 %count.2107, 1
  store i32 %inc47, i32* %list45, align 8
  %i.1 = shl nsw i64 %conv38109, 32
  %sext111 = add i64 %i.1, -4294967296
  %conv38 = ashr exact i64 %sext111, 32
  %call39 = call fastcc i64 @io_tlb_offset(i64 noundef %conv38) #14
  %cmp40.not = icmp eq i64 %call39, 127
  br i1 %cmp40.not, label %for.end54, label %land.rhs

for.end54:                                        ; preds = %land.rhs, %for.body46, %for.cond37.preheader
  %sext96 = shl i64 %call4, 32
  %conv55 = ashr exact i64 %sext96, 32
  %used = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 3
  %12 = load i64, i64* %used, align 8
  %sub56 = sub i64 %12, %conv55
  store i64 %sub56, i64* %used, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call9) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @swiotlb_sync_single_for_device(%struct.device* noundef %dev, i64 noundef %tlb_addr, i64 noundef %size, i32 noundef %dir) local_unnamed_addr #5 {
entry:
  %0 = icmp ult i32 %dir, 2
  br i1 %0, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call fastcc void @swiotlb_bounce(%struct.device* noundef %dev, i64 noundef %tlb_addr, i64 noundef %size, i32 noundef 1) #14
  br label %if.end9

do.body:                                          ; preds = %entry
  %cmp2.not = icmp eq i32 %dir, 2
  br i1 %cmp2.not, label %if.end9, label %do.body5, !prof !7

do.body5:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/swiotlb.c\22; .popsection; .long 14472b - 14470b; .short 653; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !18
  unreachable

if.end9:                                          ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @swiotlb_sync_single_for_cpu(%struct.device* noundef %dev, i64 noundef %tlb_addr, i64 noundef %size, i32 noundef %dir) local_unnamed_addr #5 {
entry:
  %0 = and i32 %dir, -3
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call fastcc void @swiotlb_bounce(%struct.device* noundef %dev, i64 noundef %tlb_addr, i64 noundef %size, i32 noundef 2) #14
  br label %if.end9

do.body:                                          ; preds = %entry
  %cmp2.not = icmp eq i32 %dir, 1
  br i1 %cmp2.not, label %if.end9, label %do.body5, !prof !7

do.body5:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/swiotlb.c\22; .popsection; .long 14472b - 14470b; .short 662; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !19
  unreachable

if.end9:                                          ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @swiotlb_map(%struct.device* noundef %dev, i64 noundef %paddr, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) local_unnamed_addr #5 {
entry:
  %dma_addr = alloca i64, align 8
  %0 = bitcast i64* %dma_addr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  call fastcc void @phys_to_dma(%struct.device* noundef %dev, i64 noundef %paddr) #14
  %call1 = call i64 @swiotlb_tbl_map_single(%struct.device* noundef %dev, i64 noundef %paddr, i64 noundef %size, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) #14
  %cmp = icmp eq i64 %call1, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i64 @phys_to_dma_unencrypted(%struct.device* noundef %dev, i64 noundef %call1) #14
  store i64 %call2, i64* %dma_addr, align 8
  %call3 = call fastcc i1 @dma_capable(%struct.device* noundef %dev, i64 noundef %call2, i64 noundef %size) #14
  br i1 %call3, label %if.end54, label %if.then6, !prof !7

if.then6:                                         ; preds = %if.end
  %or = or i64 %attrs, 32
  call void @swiotlb_tbl_unmap_single(%struct.device* noundef %dev, i64 noundef %call1, i64 noundef %size, i32 noundef %dir, i64 noundef %or) #14
  %.b88 = load i1, i1* @swiotlb_map.__already_done, align 1
  br i1 %.b88, label %cleanup, label %if.then19, !prof !7

if.then19:                                        ; preds = %if.then6
  store i1 true, i1* @swiotlb_map.__already_done, align 1
  %call30 = call i8* @dev_driver_string(%struct.device* noundef %dev) #15
  %call31 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #14
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 16
  %1 = load i64*, i64** %dma_mask, align 8
  %2 = load i64, i64* %1, align 8
  %bus_dma_limit = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 18
  %3 = load i64, i64* %bus_dma_limit, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call30, i8* noundef %call31, i64* noundef nonnull %dma_addr, i64 noundef %size, i64 noundef %2, i64 noundef %3) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/swiotlb.c\22; .popsection; .long 14472b - 14470b; .short 690; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !20
  br label %cleanup

if.end54:                                         ; preds = %if.end
  %call55 = call fastcc i1 @dev_is_dma_coherent(%struct.device* noundef %dev) #14
  %and = and i64 %attrs, 32
  %tobool56.not = icmp ne i64 %and, 0
  %4 = or i1 %tobool56.not, %call55
  br i1 %4, label %cleanup, label %if.then57

if.then57:                                        ; preds = %if.end54
  call void @arch_sync_dma_for_device(i64 noundef %call1, i64 noundef %size, i32 noundef %dir) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then57, %if.then6, %if.then19, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ -1, %if.then19 ], [ -1, %if.then6 ], [ %call2, %if.then57 ], [ %call2, %if.end54 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i64 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc void @phys_to_dma(%struct.device* nocapture noundef %dev, i64 noundef %paddr) unnamed_addr #10 {
entry:
  %call = call fastcc i64 @phys_to_dma_unencrypted(%struct.device* noundef %dev, i64 noundef %paddr) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @phys_to_dma_unencrypted(%struct.device* nocapture noundef readonly %dev, i64 noundef %paddr) unnamed_addr #10 {
entry:
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  %0 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8
  %tobool.not = icmp eq %struct.bus_dma_region* %0, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @translate_phys_to_dma(%struct.device* noundef %dev, i64 noundef %paddr) #14
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ %paddr, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @dma_capable(%struct.device* nocapture noundef readonly %dev, i64 noundef %addr, i64 noundef %size) unnamed_addr #1 {
entry:
  %add = add i64 %addr, -1
  %sub = add i64 %add, %size
  %cmp = icmp eq i64 %addr, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 16
  %0 = load i64*, i64** %dma_mask, align 8
  %1 = load i64, i64* %0, align 8
  %bus_dma_limit = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 18
  %2 = load i64, i64* %bus_dma_limit, align 8
  %cmp7 = icmp eq i64 %1, 0
  br i1 %cmp7, label %cond.end21, label %cond.false9

cond.false9:                                      ; preds = %if.end
  %cmp10 = icmp eq i64 %2, 0
  br i1 %cmp10, label %cond.end21, label %cond.false12

cond.false12:                                     ; preds = %cond.false9
  %cmp14 = icmp ult i64 %1, %2
  %cond18 = select i1 %cmp14, i64 %1, i64 %2
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false9, %if.end, %cond.false12
  %cond22 = phi i64 [ %cond18, %cond.false12 ], [ %2, %if.end ], [ %1, %cond.false9 ]
  %cmp23 = icmp ule i64 %sub, %cond22
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end21
  %retval.0 = phi i1 [ %cmp23, %cond.end21 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @dev_driver_string(%struct.device* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #1 {
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
define internal fastcc i1 @dev_is_dma_coherent(%struct.device* nocapture noundef readonly %dev) unnamed_addr #1 {
entry:
  %dma_coherent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %dma_coherent, align 4
  %0 = and i8 %bf.load, 32
  %bf.cast = icmp ne i8 %0, 0
  ret i1 %bf.cast
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_sync_dma_for_device(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @swiotlb_max_mapping_size(%struct.device* nocapture noundef readnone %dev) local_unnamed_addr #9 {
entry:
  ret i64 262144
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @is_swiotlb_active(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #1 {
entry:
  %dma_io_tlb_mem = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 23
  %0 = load %struct.io_tlb_mem*, %struct.io_tlb_mem** %dma_io_tlb_mem, align 8
  %tobool.not = icmp eq %struct.io_tlb_mem* %0, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %nslabs = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 2
  %1 = load i64, i64* %nslabs, align 8
  %tobool1 = icmp ne i64 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @isdigit(i32 noundef %c) unnamed_addr #9 {
entry:
  %0 = add i32 %c, -48
  %1 = icmp ult i32 %0, 10
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memblock_alloc_try_nid(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @io_tlb_offset(i64 noundef %val) unnamed_addr #9 {
entry:
  %and = and i64 %val, 127
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_free(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__memblock_free_late(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @dma_get_min_align_mask(%struct.device* nocapture noundef readonly %dev) unnamed_addr #1 {
entry:
  %dma_parms = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 20
  %0 = load %struct.device_dma_parameters*, %struct.device_dma_parameters** %dma_parms, align 8
  %tobool.not = icmp eq %struct.device_dma_parameters* %0, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %min_align_mask = getelementptr inbounds %struct.device_dma_parameters, %struct.device_dma_parameters* %0, i64 0, i32 1
  %1 = load i32, i32* %min_align_mask, align 4
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @dma_get_seg_boundary(%struct.device* nocapture noundef readonly %dev) unnamed_addr #1 {
entry:
  %dma_parms = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 20
  %0 = load %struct.device_dma_parameters*, %struct.device_dma_parameters** %dma_parms, align 8
  %tobool.not = icmp eq %struct.device_dma_parameters* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %segment_boundary_mask = getelementptr inbounds %struct.device_dma_parameters, %struct.device_dma_parameters* %0, i64 0, i32 2
  %1 = load i64, i64* %segment_boundary_mask, align 8
  %tobool2.not = icmp eq i64 %1, 0
  br i1 %tobool2.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i64 [ -1, %if.end ], [ %1, %land.lhs.true ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @get_max_slots(i64 noundef %boundary_mask) unnamed_addr #9 {
entry:
  %cmp = icmp eq i64 %boundary_mask, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %add = add nuw i64 %boundary_mask, 1
  %call = call fastcc i64 @nr_slots(i64 noundef %add) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ 9007199254740992, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #14
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @wrap_index(%struct.io_tlb_mem* nocapture noundef readonly %mem, i32 noundef %index) unnamed_addr #1 {
entry:
  %conv = zext i32 %index to i64
  %nslabs = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %mem, i64 0, i32 2
  %0 = load i64, i64* %nslabs, align 8
  %cmp.not = icmp ugt i64 %0, %conv
  %index. = select i1 %cmp.not, i32 %index, i32 0
  ret i32 %index.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @iommu_is_span_boundary(i32 noundef %index, i32 noundef %nr, i64 noundef %shift, i64 noundef %boundary_size) unnamed_addr #5 {
entry:
  %call = call fastcc i1 @is_power_of_2(i64 noundef %boundary_size) #20
  br i1 %call, label %do.end6, label %do.body3, !prof !7

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/iommu-helper.h\22; .popsection; .long 14472b - 14470b; .short 23; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !22
  unreachable

do.end6:                                          ; preds = %entry
  %conv7 = zext i32 %index to i64
  %add = add i64 %conv7, %shift
  %sub = add i64 %boundary_size, -1
  %and = and i64 %sub, %add
  %conv8 = zext i32 %nr to i64
  %add9 = add i64 %and, %conv8
  %cmp = icmp ugt i64 %add9, %boundary_size
  %conv10 = zext i1 %cmp to i32
  ret i32 %conv10
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #5 {
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
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #5 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #17, !srcloc !23
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #5 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #17, !srcloc !24
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #5 {
entry:
  %call39 = call fastcc i32 @static_key_count() #14
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !12

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #17, !srcloc !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #12 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #5 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #5 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #17, !srcloc !26
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #5 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #5 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #17, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #5 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #17, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @translate_phys_to_dma(%struct.device* nocapture noundef readonly %dev, i64 noundef %paddr) unnamed_addr #10 {
entry:
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  %0 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8
  %size15 = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %0, i64 0, i32 2
  %1 = load i64, i64* %size15, align 8
  %tobool.not16 = icmp eq i64 %1, 0
  br i1 %tobool.not16, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %2 = phi i64 [ %5, %for.inc ], [ %1, %entry ]
  %m.017 = phi %struct.bus_dma_region* [ %incdec.ptr, %for.inc ], [ %0, %entry ]
  %cpu_start = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %m.017, i64 0, i32 0
  %3 = load i64, i64* %cpu_start, align 8
  %cmp.not = icmp ule i64 %3, %paddr
  %sub = sub i64 %paddr, %3
  %cmp3 = icmp ult i64 %sub, %2
  %or.cond = select i1 %cmp.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %offset = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %m.017, i64 0, i32 3
  %4 = load i64, i64* %offset, align 8
  %sub4 = sub i64 %paddr, %4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %m.017, i64 1
  %size = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %m.017, i64 1, i32 2
  %5 = load i64, i64* %size, align 8
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i64 [ %sub4, %if.then ], [ -1, %entry ], [ -1, %for.inc ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #1 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #13

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #19 = { cold nobuiltin "no-builtins" }
attributes #20 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!8 = !{i64 2154121801}
!9 = !{i64 0, i64 65}
!10 = !{i64 2154129071}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2154149650}
!14 = !{i64 0, i64 9007199254740992}
!15 = !{i64 2154135704}
!16 = !{i64 2154138901}
!17 = !{i64 2154142023}
!18 = !{i64 2154159175}
!19 = !{i64 2154160561}
!20 = !{i64 2154163882}
!21 = !{i64 2149754906}
!22 = !{i64 2154007665}
!23 = !{i64 2149033290, i64 2149033337, i64 2149033343, i64 2149033380, i64 2149033398, i64 2149034709, i64 2149034757, i64 2149034805, i64 2149034868, i64 2149034917, i64 2149033476, i64 2149033501, i64 2149033527, i64 2149033533, i64 2149034375, i64 2149034415, i64 2149034433, i64 2149034465, i64 2149034493, i64 2149034547, i64 2149034567, i64 2149034664, i64 2149033556, i64 2149033570, i64 2149033576, i64 2149033626, i64 2149033672, i64 2149033705}
!24 = !{i64 2149035469, i64 2149035516, i64 2149035522, i64 2149035559, i64 2149035577, i64 2149036520, i64 2149036568, i64 2149036616, i64 2149036679, i64 2149036728, i64 2149035655, i64 2149035680, i64 2149035706, i64 2149035712, i64 2149035749, i64 2149035755, i64 2149035805, i64 2149035851, i64 2149035884}
!25 = !{i64 2149027587, i64 2149027634, i64 2149027640, i64 2149027677, i64 2149027695, i64 2149029036, i64 2149029084, i64 2149029132, i64 2149029195, i64 2149029244, i64 2149027773, i64 2149027798, i64 2149027824, i64 2149027830, i64 2149028702, i64 2149028742, i64 2149028760, i64 2149028792, i64 2149028820, i64 2149028874, i64 2149028894, i64 2149028991, i64 2149027853, i64 2149027867, i64 2149027873, i64 2149027923, i64 2149027969, i64 2149028002}
!26 = !{i64 2147893637, i64 2147893670, i64 2147893723, i64 2147893782, i64 2147893816, i64 2147893871, i64 2147893900, i64 2147893920}
!27 = !{i64 2149780749}
!28 = !{i64 2149724036}
!29 = !{i64 2149039303, i64 2149039350, i64 2149039356, i64 2149039393, i64 2149039411, i64 2149040722, i64 2149040770, i64 2149040818, i64 2149040881, i64 2149040930, i64 2149039489, i64 2149039514, i64 2149039540, i64 2149039546, i64 2149040388, i64 2149040428, i64 2149040446, i64 2149040478, i64 2149040506, i64 2149040560, i64 2149040580, i64 2149040677, i64 2149039569, i64 2149039583, i64 2149039589, i64 2149039639, i64 2149039685, i64 2149039718}
