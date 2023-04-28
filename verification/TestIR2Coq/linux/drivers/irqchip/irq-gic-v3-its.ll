; ModuleID = 'drivers/irqchip/irq-gic-v3-its.c'
source_filename = "drivers/irqchip/irq-gic-v3-its.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rdists = type { %struct.anon.77*, i64, i8*, i64, i32, i32, i8, i8, i8, i8 }
%struct.anon.77 = type { %struct.raw_spinlock, i8*, %struct.page*, i64, i8, %struct.cpumask*, i8* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.page = type { i64, %union.anon.2, %union.anon.63, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.76, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.51, %struct.list_head, %struct.list_head, %union.anon.52 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.53 }
%union.anon.53 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.54, %union.anon.55 }
%union.anon.54 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.55 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.49, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.48, i32, [12 x i8] }
%union.anon.48 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.50, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.50 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.17, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.18, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.17 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.18 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.59 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.57, %struct.qspinlock }
%union.anon.57 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.59 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.24, i32 }
%union.anon.24 = type { %struct.kuid_t }
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
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.76 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%union.anon.63 = type { %struct.atomic_t }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
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
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.68 }
%struct.msi_msg = type { %union.anon.65, %union.anon.66, %union.anon.67 }
%union.anon.65 = type { i32 }
%union.anon.66 = type { i32 }
%union.anon.67 = type { i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { %union.anon.70, %struct.anon.71, %union.anon.72 }
%union.anon.70 = type { i32 }
%struct.anon.71 = type { i16, i16, i32 }
%union.anon.72 = type { i8* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.proc_dir_entry = type opaque
%struct.syscore_ops = type { %struct.list_head, i32 ()*, void ()*, void ()* }
%struct.memblock = type { i8, i64, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i64, i64, i64, %struct.memblock_region*, i8* }
%struct.memblock_region = type { i64, i64, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.gic_quirk = type { i8*, i8*, i1 (i8*)*, i32, i32 }
%struct.msi_domain_ops = type { i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)*, void (%struct.irq_domain*, %struct.msi_domain_info*, i32)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)*, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)*, void (%struct.msi_alloc_info*, i32)*, void (%struct.msi_alloc_info*, %struct.msi_desc*)*, i32 (%struct.irq_domain*, %struct.msi_desc*, i32)*, i32 (%struct.irq_domain*, %struct.device*, i32)*, void (%struct.irq_domain*, %struct.device*)* }
%struct.msi_domain_info = type { i32, %struct.msi_domain_ops*, %struct.irq_chip*, i8*, void (%struct.irq_desc*)*, i8*, i8*, i8* }
%struct.msi_alloc_info = type { %struct.msi_desc*, i64, i64, [2 x %union.anon.101] }
%union.anon.101 = type { i64 }
%struct.cpu_lpi_count = type { %struct.atomic_t, %struct.atomic_t }
%struct.anon.105 = type { %struct.raw_spinlock, %struct.its_device*, %struct.its_vpe**, i32 }
%struct.its_device = type { %struct.list_head, %struct.its_node*, %struct.event_lpi_map, i8*, i32, i32, i8 }
%struct.its_node = type { %struct.raw_spinlock, %struct.mutex, %struct.list_head, i8*, i8*, i64, %struct.its_cmd_block*, %struct.its_cmd_block*, [8 x %struct.its_baser], %struct.its_collection*, %struct.fwnode_handle*, i64 (%struct.its_device*)*, i64, i64, i32, i32, %struct.list_head, i64, i64, i32, i32, i32, i32 }
%struct.its_cmd_block = type { %union.anon.78 }
%union.anon.78 = type { [4 x i64] }
%struct.its_baser = type { i8*, i64, i32, i32 }
%struct.its_collection = type { i64, i16 }
%struct.event_lpi_map = type { i64*, i16*, i64, i32, %struct.raw_spinlock, %struct.its_vm*, %struct.its_vlpi_map*, i32 }
%struct.its_vm = type { %struct.fwnode_handle*, %struct.irq_domain*, %struct.page*, %struct.its_vpe**, i32, i64, i64*, i32, [16 x i32] }
%struct.its_vlpi_map = type { %struct.its_vm*, %struct.its_vpe*, i32, i8, i8 }
%struct.its_vpe = type { %struct.page*, %struct.its_vm*, %struct.atomic_t, i32, i64, i8, i8, %union.anon.79, %struct.raw_spinlock, i16, i16, i8 }
%union.anon.79 = type { %struct.anon.81 }
%struct.anon.81 = type { %struct.fwnode_handle*, %struct.irq_domain*, [16 x %struct.anon.82], %struct.atomic_t }
%struct.anon.82 = type { i8, i8, i8 }
%struct.ida = type { %struct.xarray }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.nodemask_t = type { [1 x i64] }
%struct.its_cmd_desc = type { %union.anon.83 }
%union.anon.83 = type { %struct.anon.95 }
%struct.anon.95 = type { %struct.its_vpe*, %struct.its_device*, i32, i32, i8 }
%struct.its_cmd_info = type { i32, %union.anon.102 }
%union.anon.102 = type { %struct.its_vlpi_map* }
%struct.anon.89 = type { %struct.its_device*, i32, i32 }
%struct.lpi_range = type { %struct.list_head, i32, i32 }
%struct.anon.99 = type { %struct.its_vpe*, i8, i8, i8, i8, i8 }
%struct.anon.97 = type { %struct.its_vpe*, %struct.its_collection*, i16, i16 }
%struct.anon.80 = type { i32, i8 }
%struct.anon.103 = type { i8, i8 }

@its_nodes = internal global %struct.list_head { %struct.list_head* @its_nodes, %struct.list_head* @its_nodes }, align 8
@gic_rdists = internal unnamed_addr global %struct.rdists* null, align 8
@its_parent = internal unnamed_addr global %struct.irq_domain* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"\014ITS: No ITS available, not enabling LPIs\0A\00", align 1
@its_sgi_domain_ops = internal constant %struct.irq_domain_ops { i32 (%struct.irq_domain*, %struct.device_node*, i32)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* null, i32 (%struct.irq_domain*, i32, i64)* null, void (%struct.irq_domain*, i32)* null, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* null, i32 (%struct.irq_domain*, i32, i32, i8*)* @its_sgi_irq_domain_alloc, void (%struct.irq_domain*, i32, i32)* @its_sgi_irq_domain_free, i32 (%struct.irq_domain*, %struct.irq_data*, i1)* @its_sgi_irq_domain_activate, void (%struct.irq_domain*, %struct.irq_data*)* @its_sgi_irq_domain_deactivate, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* null }, align 8
@its_vpe_domain_ops = internal constant %struct.irq_domain_ops { i32 (%struct.irq_domain*, %struct.device_node*, i32)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* null, i32 (%struct.irq_domain*, i32, i64)* null, void (%struct.irq_domain*, i32)* null, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* null, i32 (%struct.irq_domain*, i32, i32, i8*)* @its_vpe_irq_domain_alloc, void (%struct.irq_domain*, i32, i32)* @its_vpe_irq_domain_free, i32 (%struct.irq_domain*, %struct.irq_data*, i1)* @its_vpe_irq_domain_activate, void (%struct.irq_domain*, %struct.irq_data*)* @its_vpe_irq_domain_deactivate, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* null }, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"\013ITS: Disabling GICv4 support\0A\00", align 1
@its_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, i32 ()* @its_save_disable, void ()* @its_restore_enable, void ()* null }, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"\016CPU%d: LPIs not supported\0A\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"\014GICv3: CPU%d: Booted with LPIs enabled, memory probably corrupted\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\013CPU%d: Timeout while disabling LPIs\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"\013CPU%d: Failed to disable LPIs\0A\00", align 1
@lpi_id_bits = internal unnamed_addr global i32 0, align 4
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@its_cpu_init_lpis.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"\016GIC: using cache flushing for LPI property table\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"\016GICv3: CPU%d: using %s LPI pending table @%pa\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"allocated\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@memblock = external dso_local global %struct.memblock, align 8
@.str.10 = private unnamed_addr constant [55 x i8] c"\014GICv3: Expected reserved range [%pa:%pa], not found\0A\00", align 1
@its_clear_vpend_valid._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.its_clear_vpend_valid = private unnamed_addr constant [22 x i8] c"its_clear_vpend_valid\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"\013ITS virtual pending table not cleaning\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@its_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@its_send_single_command._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.its_send_single_command = private unnamed_addr constant [24 x i8] c"its_send_single_command\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\013ITS cmd %ps failed\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@its_allocate_entry._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.its_allocate_entry = private unnamed_addr constant [19 x i8] c"its_allocate_entry\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"\013ITS queue not draining\0A\00", align 1
@its_wait_for_range_completion._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.its_wait_for_range_completion = private unnamed_addr constant [30 x i8] c"its_wait_for_range_completion\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"\013ITS queue timeout (%llu %llu)\0A\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@its_device_id = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-v3-its\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"msi-controller\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"\014%pOF: no msi-controller property, ITS ignored\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"\014%pOF: no regs?\0A\00", align 1
@arm64_use_ng_mappings = external dso_local local_unnamed_addr global i8, align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"\014ITS@%pa: Unable to map ITS registers\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"\014ITS@%pa: No ITS detected, giving up\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"\014ITS@%pa: Failed to quiesce, giving up\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"\016ITS %pR\0A\00", align 1
@its_probe_one.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"&its->dev_alloc_lock\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"\016ITS@%pa: Using ITS number %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"\016ITS@%pa: Single VMOVP capable\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"\016ITS@%pa: Using GICv4.1 mode %08x %08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"\016ITS: using cache flushing for cmd queue\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"\013ITS@%pa: failed probing (%d)\0A\00", align 1
@its_list_map = internal global i64 0, align 8
@.str.28 = private unnamed_addr constant [40 x i8] c"\013ITS@%pa: No ITSList entry available!\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"\013ITS@%pa: Duplicate ITSList entry %d\0A\00", align 1
@its_quirks = internal constant [1 x %struct.gic_quirk] zeroinitializer, align 8
@.str.30 = private unnamed_addr constant [52 x i8] c"\014ITS@%pa: %s Table too large, reduce ids %llu->%u\0A\00", align 1
@its_base_type_string = internal unnamed_addr constant [8 x i8*] [i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0)], align 8
@.str.31 = private unnamed_addr constant [8 x i8] c"Devices\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Virtual CPUs\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Reserved (3)\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"Interrupt Collections\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Reserved (5)\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Reserved (6)\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Reserved (7)\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"\014ITS@%pa: %s too large, reduce ITS pages %u->%u\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"\013ITS@%pa: %s doesn't stick: %llx %llx\0A\00", align 1
@.str.40 = private unnamed_addr constant [63 x i8] c"\016ITS@%pa: allocated %d %s @%lx (%s, esz %d, psz %dK, shr %d)\0A\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"indirect\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@its_domain_ops = internal constant %struct.irq_domain_ops { i32 (%struct.irq_domain*, %struct.device_node*, i32)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* null, i32 (%struct.irq_domain*, i32, i64)* null, void (%struct.irq_domain*, i32)* null, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* null, i32 (%struct.irq_domain*, i32, i32, i8*)* @its_irq_domain_alloc, void (%struct.irq_domain*, i32, i32)* @its_irq_domain_free, i32 (%struct.irq_domain*, %struct.irq_data*, i1)* @its_irq_domain_activate, void (%struct.irq_domain*, %struct.irq_data*)* @its_irq_domain_deactivate, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* null }, align 8
@its_msi_domain_ops = internal global %struct.msi_domain_ops { i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)* null, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)* null, void (%struct.irq_domain*, %struct.msi_domain_info*, i32)* null, i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)* null, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)* @its_msi_prepare, void (%struct.msi_alloc_info*, i32)* null, void (%struct.msi_alloc_info*, %struct.msi_desc*)* null, i32 (%struct.irq_domain*, %struct.msi_desc*, i32)* null, i32 (%struct.irq_domain*, %struct.device*, i32)* null, void (%struct.irq_domain*, %struct.device*)* null }, align 8
@its_irq_chip = internal global %struct.irq_chip { %struct.device* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @its_mask_irq, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @its_unmask_irq, void (%struct.irq_data*)* @irq_chip_eoi_parent, i32 (%struct.irq_data*, %struct.cpumask*, i1)* @its_set_affinity, i32 (%struct.irq_data*)* @its_irq_retrigger, i32 (%struct.irq_data*, i32)* null, i32 (%struct.irq_data*, i32)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.seq_file*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.msi_msg*)* @its_irq_compose_msi_msg, void (%struct.irq_data*, %struct.msi_msg*)* null, i32 (%struct.irq_data*, i32, i8*)* null, i32 (%struct.irq_data*, i32, i1)* @its_irq_set_irqchip_state, i32 (%struct.irq_data*, i8*)* @its_irq_set_vcpu_affinity, void (%struct.irq_data*, i32)* null, void (%struct.irq_data*, %struct.cpumask*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, i64 0 }, align 8
@irqchip_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@.str.43 = private unnamed_addr constant [4 x i8] c"ITS\00", align 1
@its_send_single_vcommand._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.its_send_single_vcommand = private unnamed_addr constant [25 x i8] c"its_send_single_vcommand\00", align 1
@cpu_lpi_count = internal global %struct.cpu_lpi_count zeroinitializer, section ".data..percpu", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@vmovp_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@lpi_range_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @lpi_range_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @lpi_range_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@lpi_range_list = internal global %struct.list_head { %struct.list_head* @lpi_range_list, %struct.list_head* @lpi_range_list }, align 8
@vpe_proxy = internal global %struct.anon.105 zeroinitializer, align 8
@its_msi_prepare.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = private unnamed_addr constant [46 x i8] c"DevId %x clashes with GICv4 VPE proxy device\0A\00", align 1
@.str.45 = private unnamed_addr constant [50 x i8] c"\016GICv3: Using preallocated redistributor tables\0A\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"\013Failed to allocate PENDBASE for CPU%d\0A\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"\013Failed to allocate PROPBASE\0A\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"\016GICv3: using LPI property table @%pa\0A\00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"\016ITS: Using hypervisor restricted LPI range [%u]\0A\00", align 1
@its_sgi_irq_chip = internal global %struct.irq_chip { %struct.device* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @its_sgi_mask_irq, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @its_sgi_unmask_irq, void (%struct.irq_data*)* null, i32 (%struct.irq_data*, %struct.cpumask*, i1)* @its_sgi_set_affinity, i32 (%struct.irq_data*)* null, i32 (%struct.irq_data*, i32)* null, i32 (%struct.irq_data*, i32)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.seq_file*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, i32 (%struct.irq_data*, i32, i8*)* @its_sgi_get_irqchip_state, i32 (%struct.irq_data*, i32, i1)* @its_sgi_set_irqchip_state, i32 (%struct.irq_data*, i8*)* @its_sgi_set_vcpu_affinity, void (%struct.irq_data*, i32)* null, void (%struct.irq_data*, %struct.cpumask*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, i64 0 }, align 8
@.str.50 = private unnamed_addr constant [12 x i8] c"GICv4.1-sgi\00", align 1
@find_4_1_its.its = internal unnamed_addr global %struct.its_node* null, align 8
@its_sgi_get_irqchip_state._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.its_sgi_get_irqchip_state = private unnamed_addr constant [26 x i8] c"its_sgi_get_irqchip_state\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"\013Unable to get SGI status\0A\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"\016ITS: Using DirectLPI for VPE invalidation\0A\00", align 1
@.str.53 = private unnamed_addr constant [42 x i8] c"\013ITS: Can't allocate GICv4 proxy device\0A\00", align 1
@.str.54 = private unnamed_addr constant [60 x i8] c"\016ITS: Allocated DevID %x as GICv4 proxy device (%d slots)\0A\00", align 1
@its_vpe_irq_chip = internal global %struct.irq_chip { %struct.device* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @its_vpe_mask_irq, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @its_vpe_unmask_irq, void (%struct.irq_data*)* @irq_chip_eoi_parent, i32 (%struct.irq_data*, %struct.cpumask*, i1)* @its_vpe_set_affinity, i32 (%struct.irq_data*)* @its_vpe_retrigger, i32 (%struct.irq_data*, i32)* null, i32 (%struct.irq_data*, i32)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.seq_file*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, i32 (%struct.irq_data*, i32, i8*)* null, i32 (%struct.irq_data*, i32, i1)* @its_vpe_set_irqchip_state, i32 (%struct.irq_data*, i8*)* @its_vpe_set_vcpu_affinity, void (%struct.irq_data*, i32)* null, void (%struct.irq_data*, %struct.cpumask*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, i64 0 }, align 8
@its_vpe_4_1_irq_chip = internal global %struct.irq_chip { %struct.device* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @its_vpe_4_1_mask_irq, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @its_vpe_4_1_unmask_irq, void (%struct.irq_data*)* @irq_chip_eoi_parent, i32 (%struct.irq_data*, %struct.cpumask*, i1)* @its_vpe_set_affinity, i32 (%struct.irq_data*)* null, i32 (%struct.irq_data*, i32)* null, i32 (%struct.irq_data*, i32)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.seq_file*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, i32 (%struct.irq_data*, i32, i8*)* null, i32 (%struct.irq_data*, i32, i1)* null, i32 (%struct.irq_data*, i8*)* @its_vpe_4_1_set_vcpu_affinity, void (%struct.irq_data*, i32)* null, void (%struct.irq_data*, %struct.cpumask*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, i64 0 }, align 8
@.str.55 = private unnamed_addr constant [10 x i8] c"GICv4-vpe\00", align 1
@vmovp_seq_num = internal unnamed_addr global i16 0, align 4
@.str.56 = private unnamed_addr constant [12 x i8] c"GICv4.1-vpe\00", align 1
@its_vpeid_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, i8* null } }, align 8
@.str.57 = private unnamed_addr constant [34 x i8] c"\013ITS@%pa: failed to quiesce: %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"\013ITS@%pa: failed to quiesce on resume: %d\0A\00", align 1
@switch.table.allocate_vpe_l2_table = private unnamed_addr constant [3 x i32] [i32 4096, i32 16384, i32 65536], align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @its_cpu_init() local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @list_empty() #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @redist_disable_lpis() #24
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup.thread, label %return

cleanup.thread:                                   ; preds = %if.then
  call fastcc void @its_cpu_init_lpis() #24
  call fastcc void @its_cpu_init_collections() #24
  br label %return

return:                                           ; preds = %if.then, %entry, %cleanup.thread
  %retval.1 = phi i32 [ 0, %cleanup.thread ], [ 0, %entry ], [ %call1, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty() unnamed_addr #1 {
entry:
  %0 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @its_nodes, i64 0, i32 0), align 8
  %cmp = icmp eq %struct.list_head* %0, @its_nodes
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @redist_disable_lpis() unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %1 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %2 = ptrtoint %struct.anon.77* %1 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, %2
  %3 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %3, i64 0, i32 1
  %4 = load i8*, i8** %rd_base, align 8
  %call2 = call fastcc i1 @gic_rdists_supports_plpis() #24
  br i1 %call2, label %if.end, label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %5 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %4) #25, !srcloc !8
  %6 = and i32 %5, 1
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %cleanup, label %do.body21

do.body21:                                        ; preds = %if.end
  %7 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist27 = getelementptr inbounds %struct.rdists, %struct.rdists* %7, i64 0, i32 0
  %8 = load %struct.anon.77*, %struct.anon.77** %rdist27, align 8
  %9 = ptrtoint %struct.anon.77* %8 to i64
  %call29 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add30 = add i64 %call29, %9
  %10 = inttoptr i64 %add30 to %struct.anon.77*
  %lpi_enabled = getelementptr inbounds %struct.anon.77, %struct.anon.77* %10, i64 0, i32 4
  %11 = load i8, i8* %lpi_enabled, align 8, !range !9
  %tobool31.not = icmp eq i8 %11, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %do.body21
  %flags = getelementptr inbounds %struct.rdists, %struct.rdists* %7, i64 0, i32 3
  %12 = load i64, i64* %flags, align 8
  %and33 = and i64 %12, 2
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %do.body41, label %cleanup

do.body41:                                        ; preds = %lor.lhs.false
  %add49 = add i64 %call29, ptrtoint (i32* @cpu_number to i64)
  %13 = inttoptr i64 %add49 to i32*
  %14 = load i32, i32* %13, align 4
  %call50 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 noundef %14) #26
  call void @add_taint(i32 noundef 10, i32 noundef 0) #27
  %and51 = and i32 %5, -2
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %and51, i8* %4) #25, !srcloc !10
  call void asm sideeffect "dsb sy", "~{memory}"() #25, !srcloc !11
  %15 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %4) #25, !srcloc !8
  %16 = and i32 %15, 8
  %tobool60.not127 = icmp eq i32 %16, 0
  br i1 %tobool60.not127, label %while.end, label %while.body

while.body:                                       ; preds = %do.body41, %if.end77
  %timeout.0128 = phi i64 [ %dec, %if.end77 ], [ 1000000, %do.body41 ]
  %tobool61.not = icmp eq i64 %timeout.0128, 0
  br i1 %tobool61.not, label %cleanup.sink.split, label %if.end77

if.end77:                                         ; preds = %while.body
  call void @__const_udelay(i64 noundef 4295) #27
  %dec = add nsw i64 %timeout.0128, -1
  %17 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %4) #25, !srcloc !8
  %18 = and i32 %17, 8
  %tobool60.not = icmp eq i32 %18, 0
  br i1 %tobool60.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end77, %do.body41
  %19 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %4) #25, !srcloc !8
  %20 = and i32 %19, 1
  %tobool84.not = icmp eq i32 %20, 0
  br i1 %tobool84.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.body, %while.end, %entry
  %.sink = phi i8* [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %entry ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), %while.end ], [ getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), %while.body ]
  %retval.0.ph = phi i32 [ -6, %entry ], [ -16, %while.end ], [ -110, %while.body ]
  %call97 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add98 = add i64 %call97, ptrtoint (i32* @cpu_number to i64)
  %21 = inttoptr i64 %add98 to i32*
  %22 = load i32, i32* %21, align 4
  %call99 = call i32 (i8*, ...) @_printk(i8* noundef %.sink, i32 noundef %22) #26
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end, %do.body21, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %do.body21 ], [ 0, %while.end ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_cpu_init_lpis() unnamed_addr #0 {
entry:
  %paddr = alloca i64, align 8
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %1 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %2 = ptrtoint %struct.anon.77* %1 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, %2
  %3 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %3, i64 0, i32 1
  %4 = load i8*, i8** %rd_base, align 8
  %5 = bitcast i64* %paddr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #25
  %6 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %7 = ptrtoint %struct.anon.77* %6 to i64
  %call11 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add12 = add i64 %call11, %7
  %8 = inttoptr i64 %add12 to %struct.anon.77*
  %lpi_enabled = getelementptr inbounds %struct.anon.77, %struct.anon.77* %8, i64 0, i32 4
  %9 = load i8, i8* %lpi_enabled, align 8, !range !9
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %10 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %4) #25, !srcloc !8
  %11 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %flags = getelementptr inbounds %struct.rdists, %struct.rdists* %11, i64 0, i32 3
  %12 = load i64, i64* %flags, align 8
  %and = and i64 %12, 2
  %tobool15.not = icmp eq i64 %and, 0
  %13 = and i32 %10, 1
  %tobool17.not = icmp eq i32 %13, 0
  %or.cond = select i1 %tobool15.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %do.body102, label %if.then18

if.then18:                                        ; preds = %if.end
  %add.ptr20 = getelementptr i8, i8* %4, i64 112
  %call21 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr20) #24
  %and23 = and i64 %call21, 4503599627366400
  %14 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %prop_table_pa = getelementptr inbounds %struct.rdists, %struct.rdists* %14, i64 0, i32 1
  %15 = load i64, i64* %prop_table_pa, align 8
  %cmp.not = icmp eq i64 %15, %and23
  br i1 %cmp.not, label %if.end45, label %if.then33, !prof !12

if.then33:                                        ; preds = %if.then18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 3059; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !13
  call void @add_taint(i32 noundef 10, i32 noundef 0) #27
  br label %if.end45

if.end45:                                         ; preds = %if.then18, %if.then33
  %add.ptr47 = getelementptr i8, i8* %4, i64 120
  %call48 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr47) #24
  %and50 = and i64 %call48, 4503599627304960
  store i64 %and50, i64* %paddr, align 8
  %16 = load i32, i32* @lpi_id_bits, align 4
  %sh_prom = zext i32 %16 to i64
  %shl = shl nuw i64 1, %sh_prom
  %div = lshr i64 %shl, 3
  %add52 = add nuw nsw i64 %div, 65535
  %and53 = and i64 %add52, 4611686018427322368
  %call54 = call fastcc i1 @gic_check_reserved_range(i64 noundef %and50, i64 noundef %and53) #24
  br i1 %call54, label %if.end70, label %if.then69, !prof !12

if.then69:                                        ; preds = %if.end45
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 3065; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !14
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end45
  %17 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist85 = getelementptr inbounds %struct.rdists, %struct.rdists* %17, i64 0, i32 0
  %18 = load %struct.anon.77*, %struct.anon.77** %rdist85, align 8
  %19 = ptrtoint %struct.anon.77* %18 to i64
  %call87 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add88 = add i64 %call87, %19
  %20 = inttoptr i64 %add88 to %struct.anon.77*
  %pend_page89 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %20, i64 0, i32 2
  %21 = load %struct.page*, %struct.page** %pend_page89, align 8
  call fastcc void @its_free_pending_table(%struct.page* noundef %21) #24
  %22 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist96 = getelementptr inbounds %struct.rdists, %struct.rdists* %22, i64 0, i32 0
  %23 = load %struct.anon.77*, %struct.anon.77** %rdist96, align 8
  %24 = ptrtoint %struct.anon.77* %23 to i64
  %call98 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add99 = add i64 %call98, %24
  %25 = inttoptr i64 %add99 to %struct.anon.77*
  %pend_page100 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %25, i64 0, i32 2
  store %struct.page* null, %struct.page** %pend_page100, align 8
  br label %do.body255

do.body102:                                       ; preds = %if.end
  %rdist108 = getelementptr inbounds %struct.rdists, %struct.rdists* %11, i64 0, i32 0
  %26 = load %struct.anon.77*, %struct.anon.77** %rdist108, align 8
  %27 = ptrtoint %struct.anon.77* %26 to i64
  %call110 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add111 = add i64 %call110, %27
  %28 = inttoptr i64 %add111 to %struct.anon.77*
  %pend_page112 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %28, i64 0, i32 2
  %29 = load %struct.page*, %struct.page** %pend_page112, align 8
  %30 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %30, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr113 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr113 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl114 = shl i64 %sub.ptr.sub, 6
  store i64 %shl114, i64* %paddr, align 8
  %prop_table_pa145 = getelementptr inbounds %struct.rdists, %struct.rdists* %11, i64 0, i32 1
  %31 = load i64, i64* %prop_table_pa145, align 8
  %32 = load i32, i32* @lpi_id_bits, align 4
  %sub = add i32 %32, 31
  %and147 = and i32 %sub, 31
  %conv148 = zext i32 %and147 to i64
  %or146 = or i64 %31, %conv148
  %or149 = or i64 %or146, 1920
  %add.ptr150 = getelementptr i8, i8* %4, i64 112
  call fastcc void @__raw_writeq(i64 noundef %or149, i8* noundef %add.ptr150) #24
  %call153 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr150) #24
  %xor = xor i64 %or149, %call153
  %and155 = and i64 %xor, 3072
  %tobool156.not = icmp eq i64 %and155, 0
  br i1 %tobool156.not, label %if.end194, label %if.then157

if.then157:                                       ; preds = %do.body102
  %and158 = and i64 %call153, 3072
  %tobool159.not = icmp eq i64 %and158, 0
  br i1 %tobool159.not, label %if.then160, label %if.end164

if.then160:                                       ; preds = %if.then157
  %and161 = and i64 %or146, -3969
  %or162 = or i64 %and161, 128
  call fastcc void @__raw_writeq(i64 noundef %or162, i8* noundef %add.ptr150) #24
  br label %if.end164

if.end164:                                        ; preds = %if.then160, %if.then157
  %.b358 = load i1, i1* @its_cpu_init_lpis.__already_done, align 1
  br i1 %.b358, label %if.end183, label %if.then177, !prof !12

if.then177:                                       ; preds = %if.end164
  store i1 true, i1* @its_cpu_init_lpis.__already_done, align 1
  %call182 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0)) #26
  br label %if.end183

if.end183:                                        ; preds = %if.then177, %if.end164
  %33 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %flags192 = getelementptr inbounds %struct.rdists, %struct.rdists* %33, i64 0, i32 3
  %34 = load i64, i64* %flags192, align 8
  %or193 = or i64 %34, 1
  store i64 %or193, i64* %flags192, align 8
  br label %if.end194

if.end194:                                        ; preds = %if.end183, %do.body102
  %35 = load i64, i64* @memstart_addr, align 8
  %shr195 = ashr i64 %35, 12
  %idx.neg196 = sub nsw i64 0, %shr195
  %add.ptr197 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg196
  %sub.ptr.rhs.cast199 = ptrtoint %struct.page* %add.ptr197 to i64
  %sub.ptr.sub200 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast199
  %shl202 = shl i64 %sub.ptr.sub200, 6
  %or204 = or i64 %shl202, 1920
  %add.ptr205 = getelementptr i8, i8* %4, i64 120
  call fastcc void @__raw_writeq(i64 noundef %or204, i8* noundef %add.ptr205) #24
  %call208 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr205) #24
  %and210 = and i64 %call208, 3072
  %tobool211.not = icmp eq i64 %and210, 0
  br i1 %tobool211.not, label %if.then212, label %if.end216

if.then212:                                       ; preds = %if.end194
  %or214 = or i64 %shl202, 128
  call fastcc void @__raw_writeq(i64 noundef %or214, i8* noundef %add.ptr205) #24
  br label %if.end216

if.end216:                                        ; preds = %if.then212, %if.end194
  %36 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %4) #25, !srcloc !8
  %37 = or i32 %36, 1
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %37, i8* %4) #25, !srcloc !10
  %38 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_vlpis = getelementptr inbounds %struct.rdists, %struct.rdists* %38, i64 0, i32 6
  %39 = load i8, i8* %has_vlpis, align 8, !range !9
  %tobool225.not = icmp eq i8 %39, 0
  br i1 %tobool225.not, label %if.end248, label %land.lhs.true227

land.lhs.true227:                                 ; preds = %if.end216
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %38, i64 0, i32 7
  %40 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool228.not = icmp eq i8 %40, 0
  br i1 %tobool228.not, label %if.then229, label %if.end248

if.then229:                                       ; preds = %land.lhs.true227
  %rdist236 = getelementptr inbounds %struct.rdists, %struct.rdists* %38, i64 0, i32 0
  %41 = load %struct.anon.77*, %struct.anon.77** %rdist236, align 8
  %42 = ptrtoint %struct.anon.77* %41 to i64
  %call238 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add239 = add i64 %call238, %42
  %43 = inttoptr i64 %add239 to %struct.anon.77*
  %rd_base240 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %43, i64 0, i32 1
  %44 = load i8*, i8** %rd_base240, align 8
  %add.ptr241 = getelementptr i8, i8* %44, i64 131072
  %45 = load i32, i32* @lpi_id_bits, align 4
  %sub242 = add i32 %45, 31
  %and243 = and i32 %sub242, 31
  %conv244 = zext i32 %and243 to i64
  %add.ptr246 = getelementptr i8, i8* %44, i64 131184
  call fastcc void @__raw_writeq(i64 noundef %conv244, i8* noundef %add.ptr246) #24
  %call247 = call fastcc i64 @its_clear_vpend_valid(i8* noundef %add.ptr241, i64 noundef 0, i64 noundef 0) #24
  br label %if.end248

if.end248:                                        ; preds = %if.then229, %land.lhs.true227, %if.end216
  %call249 = call fastcc i32 @allocate_vpe_l1_table() #24
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.end254, label %if.then251

if.then251:                                       ; preds = %if.end248
  %46 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_rvpeid252 = getelementptr inbounds %struct.rdists, %struct.rdists* %46, i64 0, i32 7
  store i8 0, i8* %has_rvpeid252, align 1
  %has_vlpis253 = getelementptr inbounds %struct.rdists, %struct.rdists* %46, i64 0, i32 6
  store i8 0, i8* %has_vlpis253, align 8
  br label %if.end254

if.end254:                                        ; preds = %if.then251, %if.end248
  call void asm sideeffect "dsb sy", "~{memory}"() #25, !srcloc !15
  %.pre = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  br label %do.body255

do.body255:                                       ; preds = %if.end70, %if.end254
  %47 = phi %struct.rdists* [ %22, %if.end70 ], [ %.pre, %if.end254 ]
  %rdist261 = getelementptr inbounds %struct.rdists, %struct.rdists* %47, i64 0, i32 0
  %48 = load %struct.anon.77*, %struct.anon.77** %rdist261, align 8
  %49 = ptrtoint %struct.anon.77* %48 to i64
  %call263 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add264 = add i64 %call263, %49
  %50 = inttoptr i64 %add264 to %struct.anon.77*
  %lpi_enabled265 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %50, i64 0, i32 4
  store i8 1, i8* %lpi_enabled265, align 8
  %call277 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add278 = add i64 %call277, ptrtoint (i32* @cpu_number to i64)
  %51 = inttoptr i64 %add278 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.anon.77*, %struct.anon.77** %rdist261, align 8
  %54 = ptrtoint %struct.anon.77* %53 to i64
  %add288 = add i64 %call277, %54
  %55 = inttoptr i64 %add288 to %struct.anon.77*
  %pend_page289 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %55, i64 0, i32 2
  %56 = load %struct.page*, %struct.page** %pend_page289, align 8
  %tobool290.not = icmp eq %struct.page* %56, null
  %cond = select i1 %tobool290.not, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)
  %call291 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 noundef %52, i8* noundef %cond, i64* noundef nonnull %paddr) #26
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body255
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_cpu_init_collections() unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef nonnull @its_lock) #24
  %.pn14 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %cmp.not15 = icmp eq i8* %.pn14, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not15, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn16 = phi i8* [ %.pn, %for.body ], [ %.pn14, %entry ]
  %its.0.in = getelementptr i8, i8* %.pn16, i64 -40
  %its.0 = bitcast i8* %its.0.in to %struct.its_node*
  call fastcc void @its_cpu_init_collection(%struct.its_node* noundef %its.0) #24
  %0 = bitcast i8* %.pn16 to i8**
  %.pn = load i8*, i8** %0, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef nonnull @its_lock) #24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @its_init(%struct.fwnode_handle* noundef %handle, %struct.rdists* noundef %rdists, %struct.irq_domain* noundef %parent_domain) local_unnamed_addr #3 section ".init.text" {
entry:
  store %struct.rdists* %rdists, %struct.rdists** @gic_rdists, align 8
  store %struct.irq_domain* %parent_domain, %struct.irq_domain** @its_parent, align 8
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %handle) #24
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %handle, i64 -1, i32 4
  %tobool.not127 = icmp ne %struct.list_head* %add.ptr, null
  %0 = and i1 %tobool.not127, %call
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  call fastcc void @its_of_probe(%struct.device_node* noundef nonnull %1) #28
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call3 = call fastcc i32 @list_empty() #24
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0)) #26
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = call fastcc i32 @allocate_lpi_tables() #28
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %if.end11
  %.pn128 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %cmp.not129 = icmp eq i8* %.pn128, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not129, label %land.rhs, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %.pn132 = phi i8* [ %.pn, %for.body ], [ %.pn128, %for.cond.preheader ]
  %has_v4.0.off0131 = phi i32 [ %or, %for.body ], [ 0, %for.cond.preheader ]
  %has_v4_1.0.off0130 = phi i1 [ %tobool38, %for.body ], [ false, %for.cond.preheader ]
  %typer = getelementptr i8, i8* %.pn132, i64 272
  %2 = bitcast i8* %typer to i64*
  %3 = load i64, i64* %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 1
  %6 = and i32 %5, 1
  %or = or i32 %6, %has_v4.0.off0131
  %and29 = lshr i64 %3, 40
  %7 = trunc i64 %and29 to i32
  %8 = and i32 %7, 1
  %conv36 = zext i1 %has_v4_1.0.off0130 to i32
  %or37 = or i32 %8, %conv36
  %tobool38 = icmp ne i32 %or37, 0
  %9 = bitcast i8* %.pn132 to i8**
  %.pn = load i8*, i8** %9, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  br i1 %tobool38, label %if.end74, label %land.rhs

land.rhs:                                         ; preds = %for.cond.preheader, %for.end
  %has_v4.0.off0.lcssa138 = phi i32 [ %or, %for.end ], [ 0, %for.cond.preheader ]
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %rdists, i64 0, i32 7
  %10 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool48.not = icmp eq i8 %10, 0
  br i1 %tobool48.not, label %if.end74, label %if.then61, !prof !12

if.then61:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 5419; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !16
  store i8 0, i8* %has_rvpeid, align 1
  br label %if.end74

if.end74:                                         ; preds = %for.end, %land.rhs, %if.then61
  %has_v4.0.off0.lcssa139 = phi i32 [ %or, %for.end ], [ %has_v4.0.off0.lcssa138, %land.rhs ], [ %has_v4.0.off0.lcssa138, %if.then61 ]
  %has_v4_1.0.off0.lcssa137 = phi %struct.irq_domain_ops* [ @its_sgi_domain_ops, %for.end ], [ null, %land.rhs ], [ null, %if.then61 ]
  %has_vlpis = getelementptr inbounds %struct.rdists, %struct.rdists* %rdists, i64 0, i32 6
  %11 = load i8, i8* %has_vlpis, align 8, !range !9
  %12 = zext i8 %11 to i32
  %and79 = and i32 %has_v4.0.off0.lcssa139, %12
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end98, label %if.then81

if.then81:                                        ; preds = %if.end74
  %call86 = call fastcc i32 @its_init_vpe_domain() #24
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %lor.lhs.false, label %if.then90

lor.lhs.false:                                    ; preds = %if.then81
  %call88 = call i32 @its_init_v4(%struct.irq_domain* noundef %parent_domain, %struct.irq_domain_ops* noundef nonnull @its_vpe_domain_ops, %struct.irq_domain_ops* noundef %has_v4_1.0.off0.lcssa137) #27
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end98, label %if.then90

if.then90:                                        ; preds = %lor.lhs.false, %if.then81
  store i8 0, i8* %has_vlpis, align 8
  %call96 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)) #26
  br label %if.end98

if.end98:                                         ; preds = %lor.lhs.false, %if.then90, %if.end74
  call void @register_syscore_ops(%struct.syscore_ops* noundef nonnull @its_syscore_ops) #27
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end98, %do.end8
  %retval.0 = phi i32 [ -6, %do.end8 ], [ 0, %if.end98 ], [ %call12, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #24
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %1 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %cmp = icmp eq %struct.fwnode_operations* %1, @of_fwnode_ops
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @its_of_probe(%struct.device_node* noundef %node) unnamed_addr #3 section ".init.text" {
entry:
  %res = alloca %struct.resource, align 8
  %0 = bitcast %struct.resource* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !17
  %call = call fastcc %struct.device_node* @of_find_matching_node(%struct.device_node* noundef %node) #24
  %tobool.not1 = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not1, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %np.02 = phi %struct.device_node* [ %call17, %for.inc ], [ %call, %entry ]
  %call1 = call i1 @of_device_is_available(%struct.device_node* noundef nonnull %np.02) #27
  br i1 %call1, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %call2 = call fastcc i1 @of_property_read_bool(%struct.device_node* noundef nonnull %np.02) #24
  br i1 %call2, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), %struct.device_node* noundef nonnull %np.02) #26
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @of_address_to_resource(%struct.device_node* noundef nonnull %np.02, i32 noundef 0, %struct.resource* noundef nonnull %res) #27
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end5
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), %struct.device_node* noundef nonnull %np.02) #26
  br label %for.inc

if.end14:                                         ; preds = %if.end5
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %np.02, i64 0, i32 3
  call fastcc void @its_probe_one(%struct.resource* noundef nonnull %res, %struct.fwnode_handle* noundef %fwnode) #28
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end14, %do.end11, %do.end
  %call17 = call fastcc %struct.device_node* @of_find_matching_node(%struct.device_node* noundef nonnull %np.02) #24
  %tobool.not = icmp eq %struct.device_node* %call17, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #25
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @allocate_lpi_tables() unnamed_addr #3 section ".init.text" {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %1 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %2 = ptrtoint %struct.anon.77* %1 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, %2
  %3 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %3, i64 0, i32 1
  %4 = load i8*, i8** %rd_base, align 8
  %5 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %4) #25, !srcloc !8
  %6 = and i32 %5, 1
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call4 = call fastcc i1 @enabled_lpis_allowed() #24
  br i1 %call4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %flags = getelementptr inbounds %struct.rdists, %struct.rdists* %7, i64 0, i32 3
  %8 = load i64, i64* %flags, align 8
  %or = or i64 %8, 3
  store i64 %or, i64* %flags, align 8
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i64 0, i64 0)) #26
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call11 = call fastcc i32 @its_setup_lpi_prop_table() #28
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond.preheader, label %cleanup36

for.cond.preheader:                               ; preds = %if.end
  %call1554 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %9 = load i32, i32* @nr_cpu_ids, align 4
  %cmp55 = icmp ult i32 %call1554, %9
  br i1 %cmp55, label %for.body, label %cleanup36

for.body:                                         ; preds = %for.cond.preheader, %cleanup
  %call1556 = phi i32 [ %call15, %cleanup ], [ %call1554, %for.cond.preheader ]
  %call17 = call fastcc %struct.page* @its_allocate_pending_table(i32 noundef 2048) #24
  %tobool18.not = icmp eq %struct.page* %call17, null
  br i1 %tobool18.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %for.body
  %call24 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.46, i64 0, i64 0), i32 noundef %call1556) #26
  br label %cleanup36

cleanup:                                          ; preds = %for.body
  %10 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist32 = getelementptr inbounds %struct.rdists, %struct.rdists* %10, i64 0, i32 0
  %11 = load %struct.anon.77*, %struct.anon.77** %rdist32, align 8
  %12 = ptrtoint %struct.anon.77* %11 to i64
  %idxprom = sext i32 %call1556 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %13 = load i64, i64* %arrayidx, align 8
  %add34 = add i64 %13, %12
  %14 = inttoptr i64 %add34 to %struct.anon.77*
  %pend_page35 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %14, i64 0, i32 2
  store %struct.page* %call17, %struct.page** %pend_page35, align 8
  %call15 = call i32 @cpumask_next(i32 noundef %call1556, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %15 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call15, %15
  br i1 %cmp, label %for.body, label %cleanup36

cleanup36:                                        ; preds = %cleanup, %for.cond.preheader, %cleanup.thread, %if.end
  %retval.2 = phi i32 [ %call11, %if.end ], [ -12, %cleanup.thread ], [ 0, %for.cond.preheader ], [ 0, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_init_vpe_domain() unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_direct_lpi = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 8
  %1 = load i8, i8* %has_direct_lpi, align 2, !range !9
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.52, i64 0, i64 0)) #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %conv21 = zext i32 %3 to i64
  %call22 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %conv21) #30
  %conv25 = trunc i64 %call22 to i32
  %sext = shl i64 %call22, 32
  %conv26 = ashr exact i64 %sext, 32
  %call27 = call fastcc i8* @kcalloc(i64 noundef %conv26, i64 noundef 8, i32 noundef 3264) #24
  store i8* %call27, i8** bitcast (%struct.its_vpe*** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 2) to i8**), align 8
  %tobool28.not = icmp eq i8* %call27, null
  br i1 %tobool28.not, label %cleanup, label %do.end45

do.end45:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, i8* %2, i64 -40
  %4 = bitcast i8* %add.ptr to %struct.its_node*
  %typer = getelementptr i8, i8* %2, i64 272
  %5 = bitcast i8* %typer to i64*
  %6 = load i64, i64* %5, align 8
  %and = lshr i64 %6, 13
  %shr = and i64 %and, 31
  %sub49 = xor i64 %shr, 63
  %shr50 = lshr i64 -1, %sub49
  %conv53 = trunc i64 %shr50 to i32
  %call54 = call fastcc %struct.its_device* @its_create_device(%struct.its_node* noundef %4, i32 noundef %conv53, i32 noundef %conv25, i1 noundef false) #24
  store %struct.its_device* %call54, %struct.its_device** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 1), align 8
  %tobool55.not = icmp eq %struct.its_device* %call54, null
  br i1 %tobool55.not, label %if.then56, label %do.body63

if.then56:                                        ; preds = %do.end45
  %7 = load i8*, i8** bitcast (%struct.its_vpe*** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 2) to i8**), align 8
  call void @kfree(i8* noundef %7) #27
  %call61 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.53, i64 0, i64 0)) #26
  br label %cleanup

do.body63:                                        ; preds = %do.end45
  %nr_ites = getelementptr inbounds %struct.its_device, %struct.its_device* %call54, i64 0, i32 4
  %8 = load i32, i32* %nr_ites, align 8
  %cmp64 = icmp ult i32 %8, %conv25
  br i1 %cmp64, label %do.body70, label %do.body79, !prof !18

do.body70:                                        ; preds = %do.body63
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 4910; .short 0; .popsection; 14471: brk 0x800", ""() #25, !srcloc !19
  unreachable

do.body79:                                        ; preds = %do.body63
  store i32 0, i32* getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 3), align 8
  %call87 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv53, i32 noundef %8) #26
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body79, %if.then56, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body79 ], [ -12, %if.then56 ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @its_init_v4(%struct.irq_domain* noundef, %struct.irq_domain_ops* noundef, %struct.irq_domain_ops* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(%struct.syscore_ops* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #7 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #31, !srcloc !20
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @gic_rdists_supports_plpis() unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %1 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %2 = ptrtoint %struct.anon.77* %1 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, %2
  %3 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %3, i64 0, i32 1
  %4 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 8
  %call2 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr) #24
  %and = and i64 %call2, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__const_udelay(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_readq(i8* noundef %addr) unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr $0, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar $0, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %addr) #25, !srcloc !21
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @gic_check_reserved_range(i64 noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %addr.addr = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %addr_end = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %addr, i64* %addr.addr, align 8
  %0 = bitcast i64* %start to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #25
  store i64 0, i64* %start, align 8, !annotation !17
  %1 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #25
  store i64 0, i64* %end, align 8, !annotation !17
  %2 = bitcast i64* %addr_end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #25
  %3 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #25
  %add = add i64 %addr, -1
  %sub = add i64 %add, %size
  store i64 %sub, i64* %addr_end, align 8
  store i64 0, i64* %i, align 8
  call void @__next_mem_range(i64* noundef nonnull %i, i32 noundef -1, i32 noundef 0, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), %struct.memblock_type* noundef null, i64* noundef nonnull %start, i64* noundef nonnull %end, i32* noundef null) #27
  %4 = load i64, i64* %i, align 8
  %cmp.not11 = icmp eq i64 %4, -1
  br i1 %cmp.not11, label %do.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %5 = load i64, i64* %start, align 8
  %cmp1.not = icmp ugt i64 %5, %addr
  %6 = load i64, i64* %end, align 8
  %cmp2.not = icmp ugt i64 %sub, %6
  %or.cond = select i1 %cmp1.not, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  call void @__next_mem_range(i64* noundef nonnull %i, i32 noundef -1, i32 noundef 0, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), %struct.memblock_type* noundef null, i64* noundef nonnull %start, i64* noundef nonnull %end, i32* noundef null) #27
  %7 = load i64, i64* %i, align 8
  %cmp.not = icmp eq i64 %7, -1
  br i1 %cmp.not, label %do.end, label %for.body

do.end:                                           ; preds = %for.inc, %entry
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i64* noundef nonnull %addr.addr, i64* noundef nonnull %addr_end) #26
  call void @add_taint(i32 noundef 10, i32 noundef 0) #27
  br label %cleanup

cleanup:                                          ; preds = %for.body, %do.end
  %cmp.not10 = phi i1 [ false, %do.end ], [ true, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #25
  ret i1 %cmp.not10
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_free_pending_table(%struct.page* noundef %pt) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @lpi_id_bits, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw i64 1, %sh_prom
  %div = lshr i64 %shl, 3
  %add = add nuw nsw i64 %div, 65535
  %and = and i64 %add, 4611686018427322368
  %dec.i = add nsw i64 %and, -1
  %shr.i = lshr i64 %dec.i, 12
  %1 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 true) #25, !range !22
  %2 = trunc i64 %1 to i32
  %conv.i.i = sub nuw nsw i32 64, %2
  %3 = ptrtoint %struct.page* %pt to i64
  %sub.i = shl i64 %3, 6
  %add.i = and i64 %sub.i, -4096
  call void @free_pages(i64 noundef %add.i, i32 noundef %conv.i.i) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_writeq(i64 noundef %val, i8* noundef %addr) unnamed_addr #0 {
entry:
  call void asm sideeffect "str ${0:x}, [$1]", "rZ,r"(i64 %val, i8* %addr) #25, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @its_clear_vpend_valid(i8* noundef %vlpi_base, i64 noundef %clr, i64 noundef %set) unnamed_addr #0 {
entry:
  %add.ptr = getelementptr i8, i8* %vlpi_base, i64 120
  %call = call fastcc i64 @__raw_readq(i8* noundef %add.ptr) #24
  %neg = and i64 %clr, 9223372036854775807
  %and = xor i64 %neg, 9223372036854775807
  %and1 = and i64 %and, %call
  %or = or i64 %and1, %set
  call fastcc void @__raw_writeq(i64 noundef %or, i8* noundef %add.ptr) #24
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %count.0 = phi i32 [ 1000000, %entry ], [ %dec, %do.cond ]
  %call5 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr) #24
  %and7 = and i64 %call5, 1152921504606846976
  %tobool.not = icmp eq i64 %and7, 0
  br i1 %tobool.not, label %if.end27, label %do.cond

do.cond:                                          ; preds = %do.body
  %dec = add nsw i32 %count.0, -1
  call fastcc void @cpu_relax() #24
  call void @__const_udelay(i64 noundef 4295) #27
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %if.then16, label %do.body

if.then16:                                        ; preds = %do.cond
  %call17 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @its_clear_vpend_valid._rs, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.its_clear_vpend_valid, i64 0, i64 0)) #27
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.then16
  %call24 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0)) #26
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %if.then16
  %or26 = or i64 %call5, 2305843009213693952
  br label %if.end27

if.end27:                                         ; preds = %do.body, %if.end25
  %val.0 = phi i64 [ %or26, %if.end25 ], [ %call5, %do.body ]
  ret i64 %val.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @allocate_vpe_l1_table() unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %1 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %2 = ptrtoint %struct.anon.77* %1 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, %2
  %3 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %3, i64 0, i32 1
  %4 = load i8*, i8** %rd_base, align 8
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 7
  %5 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr i8, i8* %4, i64 131192
  %call3 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr2) #24
  %tobool5.not = icmp sgt i64 %call3, -1
  br i1 %tobool5.not, label %do.body9, label %if.then6

if.then6:                                         ; preds = %if.end
  call fastcc void @__raw_writeq(i64 noundef 2305843009213693952, i8* noundef %add.ptr2) #24
  br label %do.body9

do.body9:                                         ; preds = %if.end, %if.then6
  %6 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist15 = getelementptr inbounds %struct.rdists, %struct.rdists* %6, i64 0, i32 0
  %7 = load %struct.anon.77*, %struct.anon.77** %rdist15, align 8
  %8 = ptrtoint %struct.anon.77* %7 to i64
  %call17 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add18 = add i64 %call17, %8
  %9 = inttoptr i64 %add18 to %struct.anon.77*
  %vpe_table_mask = getelementptr inbounds %struct.anon.77, %struct.anon.77* %9, i64 0, i32 5
  %call19 = call fastcc i64 @inherit_vpe_l1_table_from_rd(%struct.cpumask** noundef %vpe_table_mask) #24
  %tobool21.not = icmp sgt i64 %call19, -1
  br i1 %tobool21.not, label %if.end23, label %out

if.end23:                                         ; preds = %do.body9
  %call24 = call fastcc i8* @kzalloc(i64 noundef 32, i32 noundef 2592) #24
  %10 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist31 = getelementptr inbounds %struct.rdists, %struct.rdists* %10, i64 0, i32 0
  %11 = load %struct.anon.77*, %struct.anon.77** %rdist31, align 8
  %12 = ptrtoint %struct.anon.77* %11 to i64
  %call33 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add34 = add i64 %call33, %12
  %13 = inttoptr i64 %add34 to %struct.anon.77*
  %vpe_table_mask35 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %13, i64 0, i32 5
  %14 = bitcast %struct.cpumask** %vpe_table_mask35 to i8**
  store i8* %call24, i8** %14, align 8
  %15 = load %struct.anon.77*, %struct.anon.77** %rdist31, align 8
  %16 = ptrtoint %struct.anon.77* %15 to i64
  %call44 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add45 = add i64 %call44, %16
  %17 = inttoptr i64 %add45 to %struct.anon.77*
  %vpe_table_mask46 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %17, i64 0, i32 5
  %18 = load %struct.cpumask*, %struct.cpumask** %vpe_table_mask46, align 8
  %tobool47.not = icmp eq %struct.cpumask* %18, null
  br i1 %tobool47.not, label %cleanup, label %if.end49

if.end49:                                         ; preds = %if.end23
  %call50 = call fastcc i64 @inherit_vpe_l1_table_from_its() #24
  %tobool52.not = icmp sgt i64 %call50, -1
  br i1 %tobool52.not, label %do.end69, label %out

do.end69:                                         ; preds = %if.end49
  %add.ptr71 = getelementptr i8, i8* %4, i64 131184
  call fastcc void @__raw_writeq(i64 noundef 18014398509481984, i8* noundef %add.ptr71) #24
  %call74 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr71) #24
  %and92 = lshr i64 %call74, 53
  %shr = and i64 %and92, 3
  %and109 = lshr i64 %call74, 59
  %19 = trunc i64 %and109 to i32
  %conv = and i32 %19, 7
  switch i64 %shr, label %sw.epilog [
    i64 2, label %sw.bb112
    i64 1, label %sw.bb111
  ]

sw.bb111:                                         ; preds = %do.end69
  br label %sw.epilog

sw.bb112:                                         ; preds = %do.end69
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end69, %sw.bb112, %sw.bb111
  %psz.0 = phi i32 [ 65536, %sw.bb112 ], [ 16384, %sw.bb111 ], [ 4096, %do.end69 ]
  %gpsz.1 = phi i64 [ 18014398509481984, %sw.bb112 ], [ 9007199254740992, %sw.bb111 ], [ 0, %do.end69 ]
  %conv157 = zext i32 %conv to i64
  %shl158 = shl nuw nsw i64 %conv157, 59
  %or160 = or i64 %gpsz.1, %shl158
  %inc = shl nuw nsw i32 %conv, 3
  %mul = add nuw nsw i32 %inc, 8
  %div = udiv i32 %psz.0, %mul
  %20 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_rvpeid161 = getelementptr inbounds %struct.rdists, %struct.rdists* %20, i64 0, i32 7
  %21 = load i8, i8* %has_rvpeid161, align 1, !range !9
  %tobool162.not = icmp eq i8 %21, 0
  br i1 %tobool162.not, label %if.end192, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog
  %gicd_typer2 = getelementptr inbounds %struct.rdists, %struct.rdists* %20, i64 0, i32 5
  %22 = load i32, i32* %gicd_typer2, align 4
  %and164 = and i32 %22, 128
  %tobool165.not = icmp eq i32 %and164, 0
  %23 = and i32 %22, 31
  %narrow415 = add nuw nsw i32 %23, 1
  %nvpeid.0 = select i1 %tobool165.not, i32 16, i32 %narrow415
  %div.highbits = lshr i32 %div, %nvpeid.0
  %cmp = icmp eq i32 %div.highbits, 0
  br i1 %cmp, label %land.lhs.true182, label %do.end225

land.lhs.true182:                                 ; preds = %land.lhs.true
  %spec.select = select i1 %tobool165.not, i32 16, i32 %narrow415
  br label %if.end192

if.end192:                                        ; preds = %land.lhs.true182, %sw.epilog
  %nvpeid178.0 = phi i32 [ 16, %sw.epilog ], [ %spec.select, %land.lhs.true182 ]
  %or177426 = or i64 %or160, 36028797018963968
  %shl194 = shl nuw i32 1, %nvpeid178.0
  %add195 = add nsw i32 %div, -1
  %sub = add i32 %add195, %shl194
  %div196 = udiv i32 %sub, %div
  %mul197 = shl nuw nsw i32 %div196, 3
  %add198 = add nsw i32 %psz.0, -1
  %sub199 = add nuw nsw i32 %add198, %mul197
  %div200 = udiv i32 %sub199, %psz.0
  %conv201 = zext i32 %div200 to i64
  br label %do.end225

do.end225:                                        ; preds = %if.end192, %land.lhs.true
  %npg.0 = phi i64 [ %conv201, %if.end192 ], [ 1, %land.lhs.true ]
  %val.0 = phi i64 [ %or177426, %if.end192 ], [ %or160, %land.lhs.true ]
  %sub210 = add nuw nsw i64 %npg.0, 127
  %and229 = and i64 %sub210, 127
  %conv231 = zext i32 %psz.0 to i64
  %mul232 = mul nuw nsw i64 %npg.0, %conv231
  %conv238 = and i64 %mul232, 17592186040320
  %dec.i = add nsw i64 %conv238, -1
  %cmp.i.i = icmp eq i64 %dec.i, 4095
  %shr.i = lshr i64 %dec.i, 12
  %24 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #25, !range !22
  %25 = trunc i64 %24 to i32
  %conv.i.i = sub nuw nsw i32 64, %25
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %call241 = call fastcc %struct.page* @alloc_pages(i32 noundef 2848, i32 noundef %retval.0.i.i) #24
  %tobool242.not = icmp eq %struct.page* %call241, null
  br i1 %tobool242.not, label %cleanup, label %if.end244

if.end244:                                        ; preds = %do.end225
  %26 = ptrtoint %struct.page* %call241 to i64
  %sub.i418 = shl i64 %26, 6
  %add.i419 = and i64 %sub.i418, -4096
  %27 = inttoptr i64 %add.i419 to i8*
  %28 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist252 = getelementptr inbounds %struct.rdists, %struct.rdists* %28, i64 0, i32 0
  %29 = load %struct.anon.77*, %struct.anon.77** %rdist252, align 8
  %30 = ptrtoint %struct.anon.77* %29 to i64
  %call254 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add255 = add i64 %call254, %30
  %31 = inttoptr i64 %add255 to %struct.anon.77*
  %vpe_l1_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %31, i64 0, i32 6
  store i8* %27, i8** %vpe_l1_base, align 8
  %call257 = call fastcc i64 @virt_to_phys(i8* noundef %27) #24
  %sub259 = add nsw i64 %conv231, -1
  %and260 = and i64 %call257, %sub259
  %cmp261.not = icmp eq i64 %and260, 0
  br i1 %cmp261.not, label %do.end304, label %if.then272, !prof !12

if.then272:                                       ; preds = %if.end244
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 2900; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !24
  br label %do.end304

do.end304:                                        ; preds = %if.end244, %if.then272
  %and308 = and i64 %call257, 4503599627366400
  %or230 = or i64 %val.0, %and229
  %or309 = or i64 %or230, %and308
  %or313 = or i64 %or309, -9218868437227403904
  br label %out

out:                                              ; preds = %if.end49, %do.body9, %do.end304
  %val.1 = phi i64 [ %call19, %do.body9 ], [ %call50, %if.end49 ], [ %or313, %do.end304 ]
  %add.ptr314 = getelementptr i8, i8* %4, i64 131184
  call fastcc void @__raw_writeq(i64 noundef %val.1, i8* noundef %add.ptr314) #24
  %call322 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add323 = add i64 %call322, ptrtoint (i32* @cpu_number to i64)
  %32 = inttoptr i64 %add323 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist330 = getelementptr inbounds %struct.rdists, %struct.rdists* %34, i64 0, i32 0
  %35 = load %struct.anon.77*, %struct.anon.77** %rdist330, align 8
  %36 = ptrtoint %struct.anon.77* %35 to i64
  %add333 = add i64 %call322, %36
  %37 = inttoptr i64 %add333 to %struct.anon.77*
  %vpe_table_mask334 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %37, i64 0, i32 5
  %38 = load %struct.cpumask*, %struct.cpumask** %vpe_table_mask334, align 8
  call fastcc void @cpumask_set_cpu(i32 noundef %33, %struct.cpumask* noundef %38) #24
  br label %cleanup

cleanup:                                          ; preds = %do.end225, %if.end23, %entry, %out
  %retval.0 = phi i32 [ 0, %out ], [ 0, %entry ], [ -12, %if.end23 ], [ -12, %do.end225 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_range(i64* noundef, i32 noundef, i32 noundef, %struct.memblock_type* noundef, %struct.memblock_type* noundef, i64* noundef, i64* noundef, i32* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u64(i64 noundef %n) unnamed_addr #10 {
entry:
  %cmp.i = icmp eq i64 %n, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %n, i1 false) #25, !range !22
  %1 = trunc i64 %0 to i32
  %conv.i.op = sub nsw i32 63, %1
  %sub = select i1 %cmp.i, i32 -1, i32 %conv.i.op
  ret i32 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #25, !srcloc !25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @inherit_vpe_l1_table_from_rd(%struct.cpumask** nocapture noundef writeonly %mask) unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %1 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %2 = ptrtoint %struct.anon.77* %1 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, %2
  %3 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %3, i64 0, i32 1
  %4 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 8
  %call2 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr) #24
  %call4 = call fastcc i32 @compute_common_aff(i64 noundef %call2) #24
  %call5106 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp107 = icmp ult i32 %call5106, %5
  br i1 %cmp107, label %for.body.preheader, label %cleanup72

for.body.preheader:                               ; preds = %entry
  %.pre111 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup
  %6 = phi i32 [ %27, %cleanup ], [ %5, %for.body.preheader ]
  %7 = phi %struct.rdists* [ %28, %cleanup ], [ %.pre111, %for.body.preheader ]
  %call5108 = phi i32 [ %call5, %cleanup ], [ %call5106, %for.body.preheader ]
  %rdist12 = getelementptr inbounds %struct.rdists, %struct.rdists* %7, i64 0, i32 0
  %8 = load %struct.anon.77*, %struct.anon.77** %rdist12, align 8
  %9 = ptrtoint %struct.anon.77* %8 to i64
  %idxprom = sext i32 %call5108 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8
  %add14 = add i64 %10, %9
  %11 = inttoptr i64 %add14 to %struct.anon.77*
  %rd_base15 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %11, i64 0, i32 1
  %12 = load i8*, i8** %rd_base15, align 8
  %tobool.not = icmp eq i8* %12, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call23 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add24 = add i64 %call23, ptrtoint (i32* @cpu_number to i64)
  %13 = inttoptr i64 %add24 to i32*
  %14 = load i32, i32* %13, align 4
  %cmp25 = icmp eq i32 %call5108, %14
  br i1 %cmp25, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr27 = getelementptr i8, i8* %12, i64 8
  %call28 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr27) #24
  %call30 = call fastcc i32 @compute_common_aff(i64 noundef %call28) #24
  %cmp31.not = icmp eq i32 %call4, %call30
  br i1 %cmp31.not, label %cleanup.thread, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  %.pre = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %.pre112 = load i32, i32* @nr_cpu_ids, align 4
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end
  %add.ptr36 = getelementptr i8, i8* %12, i64 131184
  %call37 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr36) #24
  %and = and i64 %call37, -4503599627370497
  %15 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist45 = getelementptr inbounds %struct.rdists, %struct.rdists* %15, i64 0, i32 0
  %16 = load %struct.anon.77*, %struct.anon.77** %rdist45, align 8
  %17 = ptrtoint %struct.anon.77* %16 to i64
  %18 = load i64, i64* %arrayidx, align 8
  %add49 = add i64 %18, %17
  %19 = inttoptr i64 %add49 to %struct.anon.77*
  %vpe_l1_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %19, i64 0, i32 6
  %20 = load i8*, i8** %vpe_l1_base, align 8
  %call58 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add59 = add i64 %call58, %17
  %21 = inttoptr i64 %add59 to %struct.anon.77*
  %vpe_l1_base60 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %21, i64 0, i32 6
  store i8* %20, i8** %vpe_l1_base60, align 8
  %22 = load %struct.anon.77*, %struct.anon.77** %rdist45, align 8
  %23 = ptrtoint %struct.anon.77* %22 to i64
  %24 = load i64, i64* %arrayidx, align 8
  %add71 = add i64 %24, %23
  %25 = inttoptr i64 %add71 to %struct.anon.77*
  %vpe_table_mask = getelementptr inbounds %struct.anon.77, %struct.anon.77* %25, i64 0, i32 5
  %26 = load %struct.cpumask*, %struct.cpumask** %vpe_table_mask, align 8
  store %struct.cpumask* %26, %struct.cpumask** %mask, align 8
  br label %cleanup72

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body, %lor.lhs.false
  %27 = phi i32 [ %.pre112, %if.end.cleanup_crit_edge ], [ %6, %for.body ], [ %6, %lor.lhs.false ]
  %28 = phi %struct.rdists* [ %.pre, %if.end.cleanup_crit_edge ], [ %7, %for.body ], [ %7, %lor.lhs.false ]
  %call5 = call i32 @cpumask_next(i32 noundef %call5108, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %cmp = icmp ult i32 %call5, %27
  br i1 %cmp, label %for.body, label %cleanup72

cleanup72:                                        ; preds = %cleanup, %entry, %cleanup.thread
  %retval.2 = phi i64 [ %and, %cleanup.thread ], [ 0, %entry ], [ 0, %cleanup ]
  ret i64 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 256
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef %or) #27
  ret i8* %call10.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @inherit_vpe_l1_table_from_its() unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %1 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %2 = ptrtoint %struct.anon.77* %1 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, %2
  %3 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %3, i64 0, i32 1
  %4 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 8
  %call2 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr) #24
  %call4 = call fastcc i32 @compute_common_aff(i64 noundef %call2) #24
  %.pn307 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %cmp.not310 = icmp eq i8* %.pn307, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not310, label %cleanup258, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn311 = phi i8* [ %.pn, %for.inc ], [ %.pn307, %entry ]
  %typer = getelementptr i8, i8* %.pn311, i64 272
  %5 = bitcast i8* %typer to i64*
  %6 = load i64, i64* %5, align 8
  %and = and i64 %6, 1099511627776
  %tobool.not = icmp eq i64 %and, 0
  %7 = and i64 %6, 6597069766656
  %tobool29.not = icmp eq i64 %7, 0
  %or.cond302 = or i1 %tobool.not, %tobool29.not
  br i1 %or.cond302, label %for.inc, label %if.end31

if.end31:                                         ; preds = %for.body
  %its.0313.in = getelementptr i8, i8* %.pn311, i64 -40
  %its.0313 = bitcast i8* %its.0313.in to %struct.its_node*
  %call32 = call fastcc i32 @compute_its_aff(%struct.its_node* noundef %its.0313) #24
  %cmp33.not = icmp eq i32 %call4, %call32
  br i1 %cmp33.not, label %if.end35, label %for.inc

if.end35:                                         ; preds = %if.end31
  %val36 = getelementptr i8, i8* %.pn311, i64 112
  %8 = bitcast i8* %val36 to i64*
  %9 = load i64, i64* %8, align 8
  %tobool38.not = icmp sgt i64 %9, -1
  br i1 %tobool38.not, label %for.inc, label %if.end40

if.end40:                                         ; preds = %if.end35
  %arrayidx = getelementptr i8, i8* %.pn311, i64 104
  %base = bitcast i8* %arrayidx to i8**
  %10 = load i8*, i8** %base, align 8
  %11 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist49 = getelementptr inbounds %struct.rdists, %struct.rdists* %11, i64 0, i32 0
  %12 = load %struct.anon.77*, %struct.anon.77** %rdist49, align 8
  %13 = ptrtoint %struct.anon.77* %12 to i64
  %call51 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add52 = add i64 %call51, %13
  %14 = inttoptr i64 %add52 to %struct.anon.77*
  %vpe_l1_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %14, i64 0, i32 6
  store i8* %10, i8** %vpe_l1_base, align 8
  %and53 = and i64 %9, 4611686018427387904
  %tobool54.not = icmp eq i64 %and53, 0
  %spec.select = select i1 %tobool54.not, i64 -9223372036854775808, i64 -9187343239835811840
  %and89 = lshr i64 %9, 8
  %shr90 = and i64 %and89, 3
  %shl = shl nuw nsw i64 %shr90, 53
  %or92 = or i64 %spec.select, %shl
  %cond261 = icmp eq i64 %shr90, 2
  br i1 %cond261, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end40
  %and111 = and i64 %9, 281474976645120
  %15 = shl i64 %9, 36
  %shl114 = and i64 %15, 4222124650659840
  %or115 = or i64 %shl114, %and111
  br label %cleanup

sw.default:                                       ; preds = %if.end40
  %and116 = and i64 %9, 281474976706560
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.default
  %addr.0 = phi i64 [ %or115, %sw.bb ], [ %and116, %sw.default ]
  %and141 = and i64 %addr.0, 4503599627366400
  %or142 = or i64 %and141, %or92
  %shr176 = and i64 %9, 3072
  %or179 = or i64 %or142, %shr176
  %16 = lshr i64 %9, 52
  %shl214 = and i64 %16, 896
  %or216 = or i64 %or179, %shl214
  %and248 = and i64 %9, 127
  %or249 = or i64 %or216, %and248
  br label %cleanup258

for.inc:                                          ; preds = %for.body, %if.end31, %if.end35
  %17 = bitcast i8* %.pn311 to i8**
  %.pn = load i8*, i8** %17, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not, label %cleanup258, label %for.body

cleanup258:                                       ; preds = %for.inc, %entry, %cleanup
  %retval.2 = phi i64 [ %or249, %cleanup ], [ 0, %entry ], [ 0, %for.inc ]
  ret i64 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages(i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #0 {
entry:
  call fastcc void @numa_node_id() #24
  %call1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef 0, i32 noundef %gfp_mask, i32 noundef %order) #24
  ret %struct.page* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @virt_to_phys(i8* noundef %x) unnamed_addr #4 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @compute_common_aff(i64 noundef %val) unnamed_addr #11 {
entry:
  %shr = lshr i64 %val, 32
  %0 = lshr i64 %val, 21
  %mul = and i64 %0, 24
  %neg = ashr i64 -4294967296, %mul
  %and34 = and i64 %neg, %shr
  %conv35 = trunc i64 %and34 to i32
  ret i32 %conv35
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @compute_its_aff(%struct.its_node* nocapture noundef readonly %its) unnamed_addr #13 {
entry:
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 12
  %0 = load i64, i64* %typer, align 8
  %mpidr = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 15
  %1 = load i32, i32* %mpidr, align 4
  %sh.diff = lshr i64 %0, 17
  %2 = and i64 %sh.diff, 50331648
  %conv58 = zext i32 %1 to i64
  %shl59 = shl nuw i64 %conv58, 32
  %or = or i64 %shl59, %2
  %call = call fastcc i32 @compute_common_aff(i64 noundef %or) #24
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %nid, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @numa_mem_id() #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nid.addr.0 = phi i32 [ 0, %if.then ], [ %nid, %entry ]
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid.addr.0, i32 noundef %gfp_mask, i32 noundef %order) #24
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #7 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_mem_id() unnamed_addr #7 {
entry:
  call fastcc void @numa_node_id() #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #0 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef %nid, %struct.nodemask_t* noundef null) #27
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #25, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !27
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_cpu_init_collection(%struct.its_node* noundef %its) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %flags = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 17
  %2 = load i64, i64* %flags, align 8
  %and = and i64 %2, 4
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call %struct.device_node* @of_get_cpu_node(i32 noundef %1, i32* noundef null) #27
  %numa_node = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 19
  %3 = load i32, i32* %numa_node, align 8
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %if.end7, label %cleanup47

if.end7:                                          ; preds = %if.then, %entry
  %base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 3
  %4 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 8
  %call8 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr) #24
  %and10 = and i64 %call8, 524288
  %tobool11.not = icmp eq i64 %and10, 0
  %5 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist29 = getelementptr inbounds %struct.rdists, %struct.rdists* %5, i64 0, i32 0
  %6 = load %struct.anon.77*, %struct.anon.77** %rdist29, align 8
  %7 = ptrtoint %struct.anon.77* %6 to i64
  %call31 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add32 = add i64 %call31, %7
  %8 = inttoptr i64 %add32 to %struct.anon.77*
  br i1 %tobool11.not, label %if.else, label %do.body13

do.body13:                                        ; preds = %if.end7
  %phys_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %8, i64 0, i32 3
  %9 = load i64, i64* %phys_base, align 8
  br label %if.end37

if.else:                                          ; preds = %if.end7
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %8, i64 0, i32 1
  %10 = load i8*, i8** %rd_base, align 8
  %add.ptr33 = getelementptr i8, i8* %10, i64 8
  %call34 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr33) #24
  %11 = shl i64 %call34, 8
  %shl = and i64 %11, 4294901760
  br label %if.end37

if.end37:                                         ; preds = %if.else, %do.body13
  %target.0 = phi i64 [ %9, %do.body13 ], [ %shl, %if.else ]
  %collections = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 9
  %12 = load %struct.its_collection*, %struct.its_collection** %collections, align 8
  %idxprom = sext i32 %1 to i64
  %target_address = getelementptr %struct.its_collection, %struct.its_collection* %12, i64 %idxprom, i32 0
  store i64 %target.0, i64* %target_address, align 8
  %conv = trunc i32 %1 to i16
  %13 = load %struct.its_collection*, %struct.its_collection** %collections, align 8
  %col_id = getelementptr %struct.its_collection, %struct.its_collection* %13, i64 %idxprom, i32 1
  store i16 %conv, i16* %col_id, align 8
  %14 = load %struct.its_collection*, %struct.its_collection** %collections, align 8
  %arrayidx43 = getelementptr %struct.its_collection, %struct.its_collection* %14, i64 %idxprom
  call fastcc void @its_send_mapc(%struct.its_node* noundef %its, %struct.its_collection* noundef %arrayidx43) #24
  %15 = load %struct.its_collection*, %struct.its_collection** %collections, align 8
  %arrayidx46 = getelementptr %struct.its_collection, %struct.its_collection* %15, i64 %idxprom
  call fastcc void @its_send_invall(%struct.its_node* noundef %its, %struct.its_collection* noundef %arrayidx46) #24
  br label %cleanup47

cleanup47:                                        ; preds = %if.then, %if.end37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #24
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #27
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #27
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #24
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #25, !srcloc !29
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_cpu_node(i32 noundef, i32* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_mapc(%struct.its_node* noundef %its, %struct.its_collection* noundef %col) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false), !annotation !17
  %col1 = bitcast %struct.its_cmd_desc* %desc to %struct.its_collection**
  store %struct.its_collection* %col, %struct.its_collection** %col1, align 8
  %valid4 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast %struct.its_device** %valid4 to i32*
  store i32 1, i32* %3, align 8
  call fastcc void @its_send_single_command(%struct.its_node* noundef %its, %struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_mapc_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_invall(%struct.its_node* noundef %its, %struct.its_collection* noundef %col) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false), !annotation !17
  %col1 = bitcast %struct.its_cmd_desc* %desc to %struct.its_collection**
  store %struct.its_collection* %col, %struct.its_collection** %col1, align 8
  call fastcc void @its_send_single_command(%struct.its_node* noundef %its, %struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_invall_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_single_command(%struct.its_node* noundef %its, %struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef %builder, %struct.its_cmd_desc* noundef %desc) unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %call1 = call fastcc %struct.its_cmd_block* @its_allocate_entry(%struct.its_node* noundef %its) #24
  %tobool.not = icmp eq %struct.its_cmd_block* %call1, null
  br i1 %tobool.not, label %do.body2, label %if.end

do.body2:                                         ; preds = %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %call11 = call %struct.its_collection* %builder(%struct.its_node* noundef %its, %struct.its_cmd_block* noundef nonnull %call1, %struct.its_cmd_desc* noundef %desc) #27
  call fastcc void @its_flush_cmd(%struct.its_node* noundef %its, %struct.its_cmd_block* noundef nonnull %call1) #24
  %tobool12.not = icmp eq %struct.its_collection* %call11, null
  br i1 %tobool12.not, label %post, label %if.then13

if.then13:                                        ; preds = %if.end
  %call14 = call fastcc %struct.its_cmd_block* @its_allocate_entry(%struct.its_node* noundef %its) #24
  %tobool15.not = icmp eq %struct.its_cmd_block* %call14, null
  br i1 %tobool15.not, label %post, label %if.end17

if.end17:                                         ; preds = %if.then13
  call fastcc void @its_build_sync_cmd(%struct.its_cmd_block* noundef nonnull %call14, %struct.its_collection* noundef nonnull %call11) #24
  call fastcc void @its_flush_cmd(%struct.its_node* noundef %its, %struct.its_cmd_block* noundef nonnull %call14) #24
  br label %post

post:                                             ; preds = %if.end, %if.end17, %if.then13
  %base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 3
  %0 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr i8, i8* %0, i64 144
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #25, !srcloc !8
  %conv21 = zext i32 %1 to i64
  %call22 = call fastcc %struct.its_cmd_block* @its_post_commands(%struct.its_node* noundef %its) #24
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  %call33 = call fastcc i32 @its_wait_for_range_completion(%struct.its_node* noundef %its, i64 noundef %conv21, %struct.its_cmd_block* noundef %call22) #24
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %if.then35

if.then35:                                        ; preds = %post
  %call36 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @its_send_single_command._rs, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.its_send_single_command, i64 0, i64 0)) #27
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup, label %do.end41

do.end41:                                         ; preds = %if.then35
  %call43 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), %struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef %builder) #26
  br label %cleanup

cleanup:                                          ; preds = %post, %do.end41, %if.then35, %do.body2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal %struct.its_collection* @its_build_mapc_cmd(%struct.its_node* nocapture noundef readnone %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #15 {
entry:
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 9) #24
  %col = bitcast %struct.its_cmd_desc* %desc to %struct.its_collection**
  %0 = load %struct.its_collection*, %struct.its_collection** %col, align 8
  %col_id = getelementptr inbounds %struct.its_collection, %struct.its_collection* %0, i64 0, i32 1
  %1 = load i16, i16* %col_id, align 8
  call fastcc void @its_encode_collection(%struct.its_cmd_block* noundef %cmd, i16 noundef %1) #24
  %2 = load %struct.its_collection*, %struct.its_collection** %col, align 8
  %target_address = getelementptr inbounds %struct.its_collection, %struct.its_collection* %2, i64 0, i32 0
  %3 = load i64, i64* %target_address, align 8
  call fastcc void @its_encode_target(%struct.its_cmd_block* noundef %cmd, i64 noundef %3) #24
  %valid = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %4 = bitcast %struct.its_device** %valid to i32*
  %5 = load i32, i32* %4, align 8
  call fastcc void @its_encode_valid(%struct.its_cmd_block* noundef %cmd, i32 noundef %5) #24
  %6 = load %struct.its_collection*, %struct.its_collection** %col, align 8
  ret %struct.its_collection* %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #24
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !30
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #24
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.its_cmd_block* @its_allocate_entry(%struct.its_node* nocapture noundef %its) unnamed_addr #0 {
entry:
  %call31 = call fastcc i32 @its_queue_full(%struct.its_node* noundef %its) #24
  %tobool.not32 = icmp eq i32 %call31, 0
  br i1 %tobool.not32, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end6
  %count.033 = phi i32 [ %dec, %if.end6 ], [ 1000000, %entry ]
  %dec = add nsw i32 %count.033, -1
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %if.then, label %if.end6

if.then:                                          ; preds = %while.body
  %call2 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @its_allocate_entry._rs, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.its_allocate_entry, i64 0, i64 0)) #27
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.then
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)) #26
  br label %cleanup

if.end6:                                          ; preds = %while.body
  call fastcc void @cpu_relax() #24
  call void @__const_udelay(i64 noundef 4295) #27
  %call = call fastcc i32 @its_queue_full(%struct.its_node* noundef %its) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end6, %entry
  %cmd_write = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 7
  %0 = load %struct.its_cmd_block*, %struct.its_cmd_block** %cmd_write, align 8
  %incdec.ptr = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %0, i64 1
  %cmd_base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 6
  %1 = load %struct.its_cmd_block*, %struct.its_cmd_block** %cmd_base, align 8
  %add.ptr = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %1, i64 2048
  %cmp = icmp eq %struct.its_cmd_block* %incdec.ptr, %add.ptr
  %spec.store.select = select i1 %cmp, %struct.its_cmd_block* %1, %struct.its_cmd_block* %incdec.ptr
  store %struct.its_cmd_block* %spec.store.select, %struct.its_cmd_block** %cmd_write, align 8
  %arrayidx = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %0, i64 0, i32 0, i32 0, i64 0
  store i64 0, i64* %arrayidx, align 8
  %arrayidx13 = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %0, i64 0, i32 0, i32 0, i64 1
  store i64 0, i64* %arrayidx13, align 8
  %arrayidx15 = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %0, i64 0, i32 0, i32 0, i64 2
  store i64 0, i64* %arrayidx15, align 8
  %arrayidx17 = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %0, i64 0, i32 0, i32 0, i64 3
  store i64 0, i64* %arrayidx17, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.end, %while.end
  %retval.0 = phi %struct.its_cmd_block* [ %0, %while.end ], [ null, %do.end ], [ null, %if.then ]
  ret %struct.its_cmd_block* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #24
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #24
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_flush_cmd(%struct.its_node* nocapture noundef readonly %its, %struct.its_cmd_block* noundef %cmd) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 17
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = ptrtoint %struct.its_cmd_block* %cmd to i64
  %add = add i64 %1, 32
  call void @dcache_clean_inval_poc(i64 noundef %1, i64 noundef %add) #27
  br label %if.end

if.else:                                          ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #25, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_build_sync_cmd(%struct.its_cmd_block* nocapture noundef %sync_cmd, %struct.its_collection* nocapture noundef readonly %sync_col) unnamed_addr #15 {
entry:
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %sync_cmd, i8 noundef 5) #24
  %target_address = getelementptr inbounds %struct.its_collection, %struct.its_collection* %sync_col, i64 0, i32 0
  %0 = load i64, i64* %target_address, align 8
  call fastcc void @its_encode_target(%struct.its_cmd_block* noundef %sync_cmd, i64 noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.its_cmd_block* @its_post_commands(%struct.its_node* nocapture noundef readonly %its) unnamed_addr #0 {
entry:
  %cmd_write = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 7
  %0 = load %struct.its_cmd_block*, %struct.its_cmd_block** %cmd_write, align 8
  %call = call fastcc i64 @its_cmd_ptr_to_offset(%struct.its_node* noundef %its, %struct.its_cmd_block* noundef %0) #24
  %conv = trunc i64 %call to i32
  %base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 3
  %1 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 136
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %conv, i8* %add.ptr) #25, !srcloc !10
  %2 = load %struct.its_cmd_block*, %struct.its_cmd_block** %cmd_write, align 8
  ret %struct.its_cmd_block* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_wait_for_range_completion(%struct.its_node* nocapture noundef readonly %its, i64 noundef %prev_idx, %struct.its_cmd_block* noundef %to) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @its_cmd_ptr_to_offset(%struct.its_node* noundef %its, %struct.its_cmd_block* noundef %to) #24
  %cmp = icmp ult i64 %call, %prev_idx
  %add = add i64 %call, 65536
  %spec.select = select i1 %cmp, i64 %add, i64 %call
  %base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 3
  %0 = load i8*, i8** %base, align 8
  %add.ptr52 = getelementptr i8, i8* %0, i64 144
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr52) #25, !srcloc !8
  %conv53 = zext i32 %1 to i64
  %sub54 = sub i64 %conv53, %prev_idx
  %cmp255 = icmp ult i64 %conv53, %prev_idx
  %add556 = add i64 %sub54, 65536
  %spec.select4357 = select i1 %cmp255, i64 %add556, i64 %sub54
  %add758 = add i64 %spec.select4357, %prev_idx
  %cmp8.not59 = icmp ult i64 %add758, %spec.select
  br i1 %cmp8.not59, label %if.end11, label %cleanup20

if.end11:                                         ; preds = %entry, %cleanup
  %add762 = phi i64 [ %add7, %cleanup ], [ %add758, %entry ]
  %conv61 = phi i64 [ %conv, %cleanup ], [ %conv53, %entry ]
  %count.060 = phi i32 [ %dec, %cleanup ], [ 1000000, %entry ]
  %dec = add nsw i32 %count.060, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end11
  %call13 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @its_wait_for_range_completion._rs, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.its_wait_for_range_completion, i64 0, i64 0)) #27
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup20, label %do.end

do.end:                                           ; preds = %if.then12
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i64 noundef %spec.select, i64 noundef %add762) #26
  br label %cleanup20

cleanup:                                          ; preds = %if.end11
  call fastcc void @cpu_relax() #24
  call void @__const_udelay(i64 noundef 4295) #27
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 144
  %3 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #25, !srcloc !8
  %conv = zext i32 %3 to i64
  %sub = sub nsw i64 %conv, %conv61
  %cmp2 = icmp ugt i64 %conv61, %conv
  %add5 = add nsw i64 %sub, 65536
  %spec.select43 = select i1 %cmp2, i64 %add5, i64 %sub
  %add7 = add i64 %spec.select43, %add762
  %cmp8.not = icmp ult i64 %add7, %spec.select
  br i1 %cmp8.not, label %if.end11, label %cleanup20

cleanup20:                                        ; preds = %cleanup, %entry, %if.then12, %do.end
  %retval.2 = phi i32 [ -1, %do.end ], [ -1, %if.then12 ], [ 0, %entry ], [ 0, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #24
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #24
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #27
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #27
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #25, !srcloc !33
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #25, !srcloc !34
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #24
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !18

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #25, !srcloc !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #1 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_queue_full(%struct.its_node* nocapture noundef readonly %its) unnamed_addr #0 {
entry:
  %cmd_write = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 7
  %0 = load %struct.its_cmd_block*, %struct.its_cmd_block** %cmd_write, align 8
  %cmd_base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 6
  %1 = load %struct.its_cmd_block*, %struct.its_cmd_block** %cmd_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.its_cmd_block* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.its_cmd_block* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 3
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 144
  %3 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #25, !srcloc !8
  %4 = lshr i32 %3, 5
  %add = shl i64 %sub.ptr.sub, 27
  %sext = add i64 %add, 4294967296
  %5 = lshr i64 %sext, 32
  %rem = and i64 %5, 2047
  %6 = zext i32 %4 to i64
  %cmp = icmp eq i64 %rem, %6
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #25, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #25, !srcloc !37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dcache_clean_inval_poc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_cmd(%struct.its_cmd_block* nocapture noundef %cmd, i8 noundef %cmd_nr) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 0
  %conv = zext i8 %cmd_nr to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 7, i32 noundef 0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_target(%struct.its_cmd_block* nocapture noundef %cmd, i64 noundef %target_addr) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 2
  %shr = lshr i64 %target_addr, 16
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %shr, i32 noundef 51, i32 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_mask_encode(i64* nocapture noundef %raw_cmd, i64 noundef %val, i32 noundef %h, i32 noundef %l) unnamed_addr #15 {
entry:
  %sh_prom = zext i32 %l to i64
  %shl.neg = shl nsw i64 -1, %sh_prom
  %sub1 = sub i32 63, %h
  %sh_prom2 = zext i32 %sub1 to i64
  %shr = lshr i64 -1, %sh_prom2
  %and = and i64 %shl.neg, %shr
  %neg = xor i64 %and, -1
  %0 = load i64, i64* %raw_cmd, align 8
  %and4 = and i64 %0, %neg
  %shl6 = shl i64 %val, %sh_prom
  %and7 = and i64 %and, %shl6
  %or = or i64 %and4, %and7
  store i64 %or, i64* %raw_cmd, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @its_cmd_ptr_to_offset(%struct.its_node* nocapture noundef readonly %its, %struct.its_cmd_block* noundef %ptr) unnamed_addr #4 {
entry:
  %cmd_base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 6
  %0 = load %struct.its_cmd_block*, %struct.its_cmd_block** %cmd_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.its_cmd_block* %ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.its_cmd_block* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_collection(%struct.its_cmd_block* nocapture noundef %cmd, i16 noundef %col) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 2
  %conv = zext i16 %col to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 15, i32 noundef 0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_valid(%struct.its_cmd_block* nocapture noundef %cmd, i32 noundef %valid) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 2
  %tobool = icmp ne i32 %valid, 0
  %0 = zext i1 %tobool to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %0, i32 noundef 63, i32 noundef 63) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal noalias %struct.its_collection* @its_build_invall_cmd(%struct.its_node* nocapture noundef readnone %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #15 {
entry:
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 13) #24
  %col = bitcast %struct.its_cmd_desc* %desc to %struct.its_collection**
  %0 = load %struct.its_collection*, %struct.its_collection** %col, align 8
  %col_id = getelementptr inbounds %struct.its_collection, %struct.its_collection* %0, i64 0, i32 1
  %1 = load i16, i16* %col_id, align 8
  call fastcc void @its_encode_collection(%struct.its_cmd_block* noundef %cmd, i16 noundef %1) #24
  ret %struct.its_collection* null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #11 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_node* @of_find_matching_node(%struct.device_node* noundef %from) unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef %from, %struct.of_device_id* noundef getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @its_device_id, i64 0, i64 0), %struct.of_device_id** noundef null) #27
  ret %struct.device_node* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @of_device_is_available(%struct.device_node* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @of_property_read_bool(%struct.device_node* noundef %np) unnamed_addr #0 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32* noundef null) #27
  %tobool = icmp ne %struct.property* %call, null
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(%struct.device_node* noundef, i32 noundef, %struct.resource* noundef) local_unnamed_addr #6

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @its_probe_one(%struct.resource* noundef %res, %struct.fwnode_handle* noundef %handle) unnamed_addr #3 section ".init.text" {
entry:
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %0 = load i64, i64* %start, align 8
  %1 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !9
  %tobool.not = icmp eq i8 %1, 0
  %or4 = select i1 %tobool.not, i64 29273397577910035, i64 29273397577912083
  %call = call i8* @__ioremap(i64 noundef %0, i64 noundef 65536, i64 %or4) #27
  %tobool5.not = icmp eq i8* %call, null
  br i1 %tobool5.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i64* noundef %start) #26
  br label %cleanup212

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, i8* %call, i64 65512
  %2 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #25, !srcloc !8
  %3 = trunc i32 %2 to i8
  %trunc = and i8 %3, -16
  switch i8 %trunc, label %do.end15 [
    i8 64, label %if.end19
    i8 48, label %if.end19
  ]

do.end15:                                         ; preds = %if.end
  %call18 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), i64* noundef %start) #26
  br label %out_unmap

if.end19:                                         ; preds = %if.end, %if.end
  %call20 = call fastcc i32 @its_force_quiescent(i8* noundef nonnull %call) #24
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.end32, label %do.end25

do.end25:                                         ; preds = %if.end19
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i64* noundef %start) #26
  br label %out_unmap

do.end32:                                         ; preds = %if.end19
  %call34 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), %struct.resource* noundef %res) #26
  %call35 = call fastcc i8* @kzalloc(i64 noundef 384, i32 noundef 3264) #24
  %4 = bitcast i8* %call35 to %struct.its_node*
  %tobool36.not = icmp eq i8* %call35, null
  br i1 %tobool36.not, label %out_unmap, label %do.body39

do.body39:                                        ; preds = %do.end32
  %.compoundliteral40.sroa.0.0..sroa_idx = bitcast i8* %call35 to i32*
  store i32 0, i32* %.compoundliteral40.sroa.0.0..sroa_idx, align 8
  %dev_alloc_lock = getelementptr inbounds i8, i8* %call35, i64 8
  %5 = bitcast i8* %dev_alloc_lock to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @its_probe_one.__key) #27
  %entry47 = getelementptr inbounds i8, i8* %call35, i64 40
  %6 = bitcast i8* %entry47 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %6) #24
  %its_device_list = getelementptr inbounds i8, i8* %call35, i64 336
  %7 = bitcast i8* %its_device_list to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %7) #24
  %add.ptr49 = getelementptr i8, i8* %call, i64 8
  %call50 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr49) #24
  %typer52 = getelementptr inbounds i8, i8* %call35, i64 312
  %8 = bitcast i8* %typer52 to i64*
  store i64 %call50, i64* %8, align 8
  %base = getelementptr inbounds i8, i8* %call35, i64 56
  %9 = bitcast i8* %base to i8**
  store i8* %call, i8** %9, align 8
  %10 = load i64, i64* %start, align 8
  %phys_base = getelementptr inbounds i8, i8* %call35, i64 72
  %11 = bitcast i8* %phys_base to i64*
  store i64 %10, i64* %11, align 8
  %and55 = and i64 %call50, 2
  %tobool56.not = icmp eq i64 %and55, 0
  br i1 %tobool56.not, label %if.end129, label %if.then57

if.then57:                                        ; preds = %do.body39
  %and58 = and i64 %call50, 137438953472
  %tobool59.not = icmp eq i64 %and58, 0
  br i1 %tobool59.not, label %if.then60, label %do.end73

if.then60:                                        ; preds = %if.then57
  %call61 = call fastcc i32 @its_compute_its_list_map(%struct.resource* noundef %res, i8* noundef nonnull %call) #28
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %out_free_its, label %if.end64

if.end64:                                         ; preds = %if.then60
  %conv3 = zext i32 %call61 to i64
  %list_nr = getelementptr inbounds i8, i8* %call35, i64 360
  %12 = bitcast i8* %list_nr to i64*
  store i64 %conv3, i64* %12, align 8
  %call70 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i64* noundef %start, i32 noundef %call61) #26
  br label %if.end77

do.end73:                                         ; preds = %if.then57
  %call76 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i64* noundef %start) #26
  br label %if.end77

if.end77:                                         ; preds = %do.end73, %if.end64
  %13 = load i64, i64* %8, align 8
  %and79 = and i64 %13, 1099511627776
  %tobool80.not = icmp eq i64 %and79, 0
  br i1 %tobool80.not, label %if.end129, label %if.then81

if.then81:                                        ; preds = %if.end77
  %14 = load i64, i64* %start, align 8
  %add = add i64 %14, 131072
  %15 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !9
  %tobool103.not = icmp eq i8 %15, 0
  %or110 = select i1 %tobool103.not, i64 29273397577910035, i64 29273397577912083
  %call112 = call i8* @__ioremap(i64 noundef %add, i64 noundef 65536, i64 %or110) #27
  %sgir_base = getelementptr inbounds i8, i8* %call35, i64 64
  %16 = bitcast i8* %sgir_base to i8**
  store i8* %call112, i8** %16, align 8
  %tobool114.not = icmp eq i8* %call112, null
  br i1 %tobool114.not, label %out_free_its, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then81
  %and98 = lshr i64 %call50, 41
  %17 = trunc i64 %and98 to i32
  %conv99 = and i32 %17, 3
  %add.ptr118 = getelementptr i8, i8* %call, i64 24
  %18 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr118) #25, !srcloc !8
  %mpidr = getelementptr inbounds i8, i8* %call35, i64 332
  %19 = bitcast i8* %mpidr to i32*
  store i32 %18, i32* %19, align 4
  %call127 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0), i64* noundef %start, i32 noundef %18, i32 noundef %conv99) #26
  br label %if.end129

if.end129:                                        ; preds = %cleanup.thread, %if.end77, %do.body39
  %numa_node130 = getelementptr inbounds i8, i8* %call35, i64 368
  %20 = bitcast i8* %numa_node130 to i32*
  store i32 -1, i32* %20, align 8
  %call133 = call fastcc %struct.page* @alloc_pages_node(i32 noundef -1, i32 noundef 3520, i32 noundef 4) #24
  %tobool134.not = icmp eq %struct.page* %call133, null
  br i1 %tobool134.not, label %out_unmap_sgir, label %if.end136

if.end136:                                        ; preds = %if.end129
  %21 = ptrtoint %struct.page* %call133 to i64
  %sub.i = shl i64 %21, 6
  %add.i = and i64 %sub.i, -4096
  %22 = inttoptr i64 %add.i to i8*
  %cmd_base = getelementptr inbounds i8, i8* %call35, i64 80
  %23 = bitcast i8* %cmd_base to %struct.its_cmd_block**
  %24 = bitcast i8* %cmd_base to i8**
  store i8* %22, i8** %24, align 8
  %cmd_write = getelementptr inbounds i8, i8* %call35, i64 88
  %25 = bitcast i8* %cmd_write to i8**
  store i8* %22, i8** %25, align 8
  %fwnode_handle = getelementptr inbounds i8, i8* %call35, i64 296
  %26 = bitcast i8* %fwnode_handle to %struct.fwnode_handle**
  store %struct.fwnode_handle* %handle, %struct.fwnode_handle** %26, align 8
  %get_msi_base = getelementptr inbounds i8, i8* %call35, i64 304
  %27 = bitcast i8* %get_msi_base to i64 (%struct.its_device*)**
  store i64 (%struct.its_device*)* @its_irq_get_msi_base, i64 (%struct.its_device*)** %27, align 8
  %msi_domain_flags = getelementptr inbounds i8, i8* %call35, i64 372
  %28 = bitcast i8* %msi_domain_flags to i32*
  store i32 32, i32* %28, align 4
  call fastcc void @its_enable_quirks(%struct.its_node* noundef nonnull %4) #24
  %call139 = call fastcc i32 @its_alloc_tables(%struct.its_node* noundef nonnull %4) #24
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end142, label %out_free_cmd

if.end142:                                        ; preds = %if.end136
  %call143 = call fastcc i32 @its_alloc_collections(%struct.its_node* noundef nonnull %4) #24
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %out_free_tables

if.end146:                                        ; preds = %if.end142
  %29 = load i8*, i8** %24, align 8
  %call148 = call fastcc i64 @virt_to_phys(i8* noundef %29) #24
  %or152 = or i64 %call148, -5188146770730810353
  %30 = load i8*, i8** %9, align 8
  %add.ptr154 = getelementptr i8, i8* %30, i64 128
  call fastcc void @__raw_writeq(i64 noundef %or152, i8* noundef %add.ptr154) #24
  %31 = load i8*, i8** %9, align 8
  %add.ptr157 = getelementptr i8, i8* %31, i64 128
  %call158 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr157) #24
  %xor = xor i64 %call158, %or152
  %and160 = and i64 %xor, 3072
  %tobool161.not = icmp eq i64 %and160, 0
  br i1 %tobool161.not, label %if.end177, label %if.then162

if.then162:                                       ; preds = %if.end146
  %and163 = and i64 %call158, 3072
  %tobool164.not = icmp eq i64 %and163, 0
  br i1 %tobool164.not, label %if.then165, label %do.end173

if.then165:                                       ; preds = %if.then162
  %or167 = and i64 %or152, -3458764513820544001
  %32 = load i8*, i8** %9, align 8
  %add.ptr169 = getelementptr i8, i8* %32, i64 128
  call fastcc void @__raw_writeq(i64 noundef %or167, i8* noundef %add.ptr169) #24
  br label %do.end173

do.end173:                                        ; preds = %if.then162, %if.then165
  %call175 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0)) #26
  %flags = getelementptr inbounds i8, i8* %call35, i64 352
  %33 = bitcast i8* %flags to i64*
  %34 = load i64, i64* %33, align 8
  %or176 = or i64 %34, 1
  store i64 %or176, i64* %33, align 8
  br label %if.end177

if.end177:                                        ; preds = %do.end173, %if.end146
  %35 = load i8*, i8** %9, align 8
  %add.ptr179 = getelementptr i8, i8* %35, i64 136
  call fastcc void @__raw_writeq(i64 noundef 0, i8* noundef %add.ptr179) #24
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %36) #25, !srcloc !8
  %38 = load i64, i64* %8, align 8
  %and187 = and i64 %38, 2
  %tobool188.not = icmp eq i64 %and187, 0
  %spec.select.v = select i1 %tobool188.not, i32 1, i32 3
  %spec.select = or i32 %spec.select.v, %37
  %39 = load i8*, i8** %9, align 8
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %spec.select, i8* %39) #25, !srcloc !10
  %call194 = call fastcc i32 @its_init_domain(%struct.fwnode_handle* noundef %handle, %struct.its_node* noundef nonnull %4) #24
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end197, label %out_free_tables

if.end197:                                        ; preds = %if.end177
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef nonnull @its_lock) #24
  call fastcc void @list_add(%struct.list_head* noundef %6, %struct.list_head* noundef nonnull @its_nodes) #24
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef nonnull @its_lock) #24
  br label %cleanup212

out_free_tables:                                  ; preds = %if.end177, %if.end142
  %err.2 = phi i32 [ %call143, %if.end142 ], [ %call194, %if.end177 ]
  call fastcc void @its_free_tables(%struct.its_node* noundef nonnull %4) #24
  br label %out_free_cmd

out_free_cmd:                                     ; preds = %if.end136, %out_free_tables
  %err.3 = phi i32 [ %call139, %if.end136 ], [ %err.2, %out_free_tables ]
  %40 = load %struct.its_cmd_block*, %struct.its_cmd_block** %23, align 8
  %41 = ptrtoint %struct.its_cmd_block* %40 to i64
  call void @free_pages(i64 noundef %41, i32 noundef 4) #27
  br label %out_unmap_sgir

out_unmap_sgir:                                   ; preds = %if.end129, %out_free_cmd
  %err.4 = phi i32 [ %err.3, %out_free_cmd ], [ -12, %if.end129 ]
  %sgir_base201 = getelementptr inbounds i8, i8* %call35, i64 64
  %42 = bitcast i8* %sgir_base201 to i8**
  %43 = load i8*, i8** %42, align 8
  %tobool202.not = icmp eq i8* %43, null
  br i1 %tobool202.not, label %out_free_its, label %if.then203

if.then203:                                       ; preds = %out_unmap_sgir
  call void @iounmap(i8* noundef nonnull %43) #27
  br label %out_free_its

out_free_its:                                     ; preds = %if.then81, %out_unmap_sgir, %if.then203, %if.then60
  %err.5 = phi i32 [ %err.4, %if.then203 ], [ %err.4, %out_unmap_sgir ], [ %call61, %if.then60 ], [ -12, %if.then81 ]
  call void @kfree(i8* noundef nonnull %call35) #27
  br label %out_unmap

out_unmap:                                        ; preds = %do.end32, %out_free_its, %do.end25, %do.end15
  %err.6 = phi i32 [ -19, %do.end15 ], [ %call20, %do.end25 ], [ %err.5, %out_free_its ], [ -12, %do.end32 ]
  call void @iounmap(i8* noundef nonnull %call) #27
  %call211 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0), i64* noundef %start, i32 noundef %err.6) #26
  br label %cleanup212

cleanup212:                                       ; preds = %out_unmap, %if.end197, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef, %struct.of_device_id* noundef, %struct.of_device_id** noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.property* @of_find_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__ioremap(i64 noundef, i64 noundef, i64) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_force_quiescent(i8* noundef %base) unnamed_addr #0 {
entry:
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %base) #25, !srcloc !8
  %1 = and i32 %0, -2147483647
  %2 = icmp eq i32 %1, -2147483648
  br i1 %2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and3 = and i32 %0, -4
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %and3, i8* %base) #25, !srcloc !10
  %3 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %base) #25, !srcloc !8
  %tobool10.not28 = icmp sgt i32 %3, -1
  br i1 %tobool10.not28, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end, %if.end15
  %count.029 = phi i32 [ %dec, %if.end15 ], [ 1000000, %if.end ]
  %dec = add nsw i32 %count.029, -1
  %tobool13.not = icmp eq i32 %dec, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end12
  call fastcc void @cpu_relax() #24
  call void @__const_udelay(i64 noundef 4295) #27
  %4 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %base) #25, !srcloc !8
  %tobool10.not = icmp sgt i32 %4, -1
  br i1 %tobool10.not, label %if.end12, label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end12, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end15 ], [ -16, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #17 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @its_compute_its_list_map(%struct.resource* noundef %res, i8* noundef %its_base) unnamed_addr #3 section ".init.text" {
entry:
  %call = call fastcc i64 @find_first_zero_bit() #24
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 15
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i64* noundef %start) #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %its_base) #25, !srcloc !8
  %and = and i32 %0, -241
  %shl = shl i32 %conv, 4
  %or = or i32 %and, %shl
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %or, i8* %its_base) #25, !srcloc !10
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %its_base) #25, !srcloc !8
  %and10 = and i32 %1, 240
  %cmp12.not = icmp eq i32 %and10, %shl
  %2 = lshr exact i32 %and10, 4
  %spec.select = select i1 %cmp12.not, i32 %conv, i32 %2
  %conv17 = sext i32 %spec.select to i64
  %call18 = call fastcc i1 @test_and_set_bit(i64 noundef %conv17) #24
  br i1 %call18, label %do.end22, label %cleanup

do.end22:                                         ; preds = %if.end
  %start24 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %call25 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i64* noundef %start24, i32 noundef %spec.select) #26
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end22, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end22 ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i64 @its_irq_get_msi_base(%struct.its_device* nocapture noundef readonly %its_dev) #4 {
entry:
  %its1 = getelementptr inbounds %struct.its_device, %struct.its_device* %its_dev, i64 0, i32 1
  %0 = load %struct.its_node*, %struct.its_node** %its1, align 8
  %phys_base = getelementptr inbounds %struct.its_node, %struct.its_node* %0, i64 0, i32 5
  %1 = load i64, i64* %phys_base, align 8
  %add = add i64 %1, 65600
  ret i64 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_enable_quirks(%struct.its_node* noundef %its) unnamed_addr #0 {
entry:
  %base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 3
  %0 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr i8, i8* %0, i64 4
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #25, !srcloc !8
  %2 = bitcast %struct.its_node* %its to i8*
  call void @gic_enable_quirks(i32 noundef %1, %struct.gic_quirk* noundef getelementptr inbounds ([1 x %struct.gic_quirk], [1 x %struct.gic_quirk]* @its_quirks, i64 0, i64 0), i8* noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_alloc_tables(%struct.its_node* noundef %its) unnamed_addr #0 {
entry:
  %order = alloca i32, align 4
  %flags = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 17
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 2
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i64 4035225266123964416, i64 0
  %1 = bitcast i32* %order to i8*
  %typer28 = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 12
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %shr.0146 = phi i64 [ 1024, %entry ], [ %shr.1.ph, %for.inc ]
  %cache.1143 = phi i64 [ %spec.select, %entry ], [ %cache.2.ph, %for.inc ]
  %add.ptr = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 %indvars.iv
  %call = call fastcc i64 @its_read_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %add.ptr) #24
  %shr1 = lshr i64 %call, 56
  %and2 = and i64 %shr1, 7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #25
  %cmp3 = icmp eq i64 %and2, 0
  br i1 %cmp3, label %for.inc, label %if.end5

if.end5:                                          ; preds = %for.body
  %call6 = call fastcc i32 @its_probe_baser_psz(%struct.its_node* noundef %its, %struct.its_baser* noundef %add.ptr) #24
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end14.i, label %cleanup83

if.end14.i:                                       ; preds = %if.end5
  %psz = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 %indvars.iv, i32 3
  %2 = load i32, i32* %psz, align 4
  %conv = zext i32 %2 to i64
  %dec.i = add nsw i64 %conv, -1
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %shr.i = lshr i64 %dec.i, 12
  %3 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #25, !range !22
  %4 = trunc i64 %3 to i32
  %conv.i.i = sub nuw nsw i32 64, %4
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  store i32 %retval.0.i.i, i32* %order, align 4
  switch i64 %and2, label %sw.epilog [
    i64 1, label %sw.bb
    i64 2, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.end14.i
  %5 = load i64, i64* %typer28, align 8
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 13
  %8 = and i32 %7, 31
  %conv25 = add nuw nsw i32 %8, 1
  br label %sw.epilog.sink.split

sw.bb27:                                          ; preds = %if.end14.i
  %9 = load i64, i64* %typer28, align 8
  %and29 = and i64 %9, 1099511627776
  %tobool30.not = icmp eq i64 %and29, 0
  br i1 %tobool30.not, label %if.end58, label %if.then31

if.then31:                                        ; preds = %sw.bb27
  %cmp32.not = icmp eq i64 %indvars.iv, 2
  br i1 %cmp32.not, label %if.end43, label %if.then42, !prof !12

if.then42:                                        ; preds = %if.then31
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 2607; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !38
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then31
  %call52 = call fastcc %struct.its_node* @find_sibling_its(%struct.its_node* noundef %its) #24
  %tobool53.not = icmp eq %struct.its_node* %call52, null
  br i1 %tobool53.not, label %if.end58, label %cleanup

cleanup:                                          ; preds = %if.end43
  %arrayidx = getelementptr %struct.its_node, %struct.its_node* %call52, i64 0, i32 8, i64 2
  %10 = bitcast %struct.its_baser* %add.ptr to i8*
  %11 = bitcast %struct.its_baser* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(24) %10, i8* noundef align 8 dereferenceable(24) %11, i64 24, i1 false)
  %val56 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 %indvars.iv, i32 1
  %12 = load i64, i64* %val56, align 8
  call fastcc void @its_write_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %add.ptr, i64 noundef %12) #24
  br label %for.inc

if.end58:                                         ; preds = %if.end43, %sw.bb27
  %13 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %13, i64 0, i32 7
  %14 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool59.not = icmp eq i8 %14, 0
  br i1 %tobool59.not, label %sw.epilog.sink.split, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end58
  %gicd_typer2 = getelementptr inbounds %struct.rdists, %struct.rdists* %13, i64 0, i32 5
  %15 = load i32, i32* %gicd_typer2, align 4
  %and61 = and i32 %15, 128
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %sw.epilog.sink.split, label %if.then63

if.then63:                                        ; preds = %land.lhs.true
  %16 = and i32 %15, 31
  %narrow = add nuw nsw i32 %16, 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end58, %land.lhs.true, %if.then63, %sw.bb
  %nvpeid.0.sink = phi i32 [ %conv25, %sw.bb ], [ %narrow, %if.then63 ], [ 16, %land.lhs.true ], [ 16, %if.end58 ]
  %call71 = call fastcc i1 @its_parse_indirect_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %add.ptr, i32* noundef nonnull %order, i32 noundef %nvpeid.0.sink) #24
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end14.i
  %indirect.0.shrunk = phi i1 [ false, %if.end14.i ], [ %call71, %sw.epilog.sink.split ]
  %17 = load i32, i32* %order, align 4
  %call74 = call fastcc i32 @its_setup_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %add.ptr, i64 noundef %cache.1143, i64 noundef %shr.0146, i32 noundef %17, i1 noundef %indirect.0.shrunk) #24
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %cleanup83, label %if.end78

if.end78:                                         ; preds = %sw.epilog
  %val79 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 %indvars.iv, i32 1
  %18 = load i64, i64* %val79, align 8
  %and80 = and i64 %18, 4035225266123964416
  %and82 = and i64 %18, 3072
  br label %for.inc

cleanup83:                                        ; preds = %sw.epilog, %if.end5
  %retval.1 = phi i32 [ -6, %if.end5 ], [ %call74, %sw.epilog ]
  call fastcc void @its_free_tables(%struct.its_node* noundef %its) #24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #25
  br label %cleanup90

for.inc:                                          ; preds = %if.end78, %cleanup, %for.body
  %cache.2.ph = phi i64 [ %cache.1143, %for.body ], [ %cache.1143, %cleanup ], [ %and80, %if.end78 ]
  %shr.1.ph = phi i64 [ %shr.0146, %for.body ], [ %shr.0146, %cleanup ], [ %and82, %if.end78 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %cleanup90, label %for.body

cleanup90:                                        ; preds = %for.inc, %cleanup83
  %retval.2 = phi i32 [ %retval.1, %cleanup83 ], [ 0, %for.inc ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_alloc_collections(%struct.its_node* nocapture noundef %its) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %conv = zext i32 %0 to i64
  %call = call fastcc i8* @kcalloc(i64 noundef %conv, i64 noundef 16, i32 noundef 3264) #24
  %collections = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 9
  %1 = bitcast %struct.its_collection** %collections to i8**
  store i8* %call, i8** %1, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp9.not = icmp eq i32 %2, 0
  br i1 %cmp9.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %target_address11 = bitcast i8* %call to i64*
  store i64 -1, i64* %target_address11, align 8
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp12 = icmp ugt i32 %3, 1
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %inc13 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %.pre = load %struct.its_collection*, %struct.its_collection** %collections, align 8
  %idxprom = sext i32 %inc13 to i64
  %target_address = getelementptr %struct.its_collection, %struct.its_collection* %.pre, i64 %idxprom, i32 0
  store i64 -1, i64* %target_address, align 8
  %inc = add nuw i32 %inc13, 1
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %cleanup

cleanup:                                          ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ 0, %for.cond.preheader ], [ 0, %for.body.preheader ], [ 0, %for.body.for.body_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_init_domain(%struct.fwnode_handle* noundef %handle, %struct.its_node* noundef %its) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 64, i32 noundef 3264) #24
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.its_node* %its to i8*
  %call1 = call fastcc %struct.irq_domain* @irq_domain_create_tree(%struct.fwnode_handle* noundef %handle, i8* noundef %0) #24
  %tobool2.not = icmp eq %struct.irq_domain* %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #27
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load %struct.irq_domain*, %struct.irq_domain** @its_parent, align 8
  %parent = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %call1, i64 0, i32 9
  store %struct.irq_domain* %1, %struct.irq_domain** %parent, align 8
  call void @irq_domain_update_bus_token(%struct.irq_domain* noundef nonnull %call1, i32 noundef 5) #27
  %msi_domain_flags = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 20
  %2 = load i32, i32* %msi_domain_flags, align 4
  %flags = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %call1, i64 0, i32 4
  %3 = load i32, i32* %flags, align 8
  %or = or i32 %3, %2
  store i32 %or, i32* %flags, align 8
  %ops = getelementptr inbounds i8, i8* %call, i64 8
  %4 = bitcast i8* %ops to %struct.msi_domain_ops**
  store %struct.msi_domain_ops* @its_msi_domain_ops, %struct.msi_domain_ops** %4, align 8
  %data = getelementptr inbounds i8, i8* %call, i64 56
  %5 = bitcast i8* %data to %struct.its_node**
  store %struct.its_node* %its, %struct.its_node** %5, align 8
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %call1, i64 0, i32 3
  store i8* %call, i8** %host_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %if.then3 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #17 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_free_tables(%struct.its_node* nocapture noundef %its) unnamed_addr #0 {
entry:
  %base = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 0, i32 0
  %0 = load i8*, i8** %base, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %entry
  %1 = ptrtoint i8* %0 to i64
  %order = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 0, i32 2
  %2 = load i32, i32* %order, align 8
  call void @free_pages(i64 noundef %1, i32 noundef %2) #27
  store i8* null, i8** %base, align 8
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %base.1 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 1, i32 0
  %3 = load i8*, i8** %base.1, align 8
  %tobool.not.1 = icmp eq i8* %3, null
  br i1 %tobool.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  %4 = ptrtoint i8* %3 to i64
  %order.1 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 1, i32 2
  %5 = load i32, i32* %order.1, align 8
  call void @free_pages(i64 noundef %4, i32 noundef %5) #27
  store i8* null, i8** %base.1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %base.2 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 2, i32 0
  %6 = load i8*, i8** %base.2, align 8
  %tobool.not.2 = icmp eq i8* %6, null
  br i1 %tobool.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  %7 = ptrtoint i8* %6 to i64
  %order.2 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 2, i32 2
  %8 = load i32, i32* %order.2, align 8
  call void @free_pages(i64 noundef %7, i32 noundef %8) #27
  store i8* null, i8** %base.2, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %base.3 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 3, i32 0
  %9 = load i8*, i8** %base.3, align 8
  %tobool.not.3 = icmp eq i8* %9, null
  br i1 %tobool.not.3, label %for.inc.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  %10 = ptrtoint i8* %9 to i64
  %order.3 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 3, i32 2
  %11 = load i32, i32* %order.3, align 8
  call void @free_pages(i64 noundef %10, i32 noundef %11) #27
  store i8* null, i8** %base.3, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %base.4 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 4, i32 0
  %12 = load i8*, i8** %base.4, align 8
  %tobool.not.4 = icmp eq i8* %12, null
  br i1 %tobool.not.4, label %for.inc.4, label %if.then.4

if.then.4:                                        ; preds = %for.inc.3
  %13 = ptrtoint i8* %12 to i64
  %order.4 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 4, i32 2
  %14 = load i32, i32* %order.4, align 8
  call void @free_pages(i64 noundef %13, i32 noundef %14) #27
  store i8* null, i8** %base.4, align 8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3
  %base.5 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 5, i32 0
  %15 = load i8*, i8** %base.5, align 8
  %tobool.not.5 = icmp eq i8* %15, null
  br i1 %tobool.not.5, label %for.inc.5, label %if.then.5

if.then.5:                                        ; preds = %for.inc.4
  %16 = ptrtoint i8* %15 to i64
  %order.5 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 5, i32 2
  %17 = load i32, i32* %order.5, align 8
  call void @free_pages(i64 noundef %16, i32 noundef %17) #27
  store i8* null, i8** %base.5, align 8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4
  %base.6 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 6, i32 0
  %18 = load i8*, i8** %base.6, align 8
  %tobool.not.6 = icmp eq i8* %18, null
  br i1 %tobool.not.6, label %for.inc.6, label %if.then.6

if.then.6:                                        ; preds = %for.inc.5
  %19 = ptrtoint i8* %18 to i64
  %order.6 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 6, i32 2
  %20 = load i32, i32* %order.6, align 8
  call void @free_pages(i64 noundef %19, i32 noundef %20) #27
  store i8* null, i8** %base.6, align 8
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5
  %base.7 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 7, i32 0
  %21 = load i8*, i8** %base.7, align 8
  %tobool.not.7 = icmp eq i8* %21, null
  br i1 %tobool.not.7, label %for.inc.7, label %if.then.7

if.then.7:                                        ; preds = %for.inc.6
  %22 = ptrtoint i8* %21 to i64
  %order.7 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 7, i32 2
  %23 = load i32, i32* %order.7, align 8
  call void @free_pages(i64 noundef %22, i32 noundef %23) #27
  store i8* null, i8** %base.7, align 8
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(i8* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @find_first_zero_bit() unnamed_addr #13 {
entry:
  %0 = load i64, i64* @its_list_map, align 8
  %or = or i64 %0, -65536
  %cmp4 = icmp eq i64 %or, -1
  %neg5 = xor i64 %or, -1
  %1 = call i64 @llvm.cttz.i64(i64 %neg5, i1 false) #25, !range !22
  %cond = select i1 %cmp4, i64 16, i64 %1
  ret i64 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64 noundef %nr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* @its_list_map, i64 %idx.ext.i
  %0 = load volatile i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #27
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #25, !srcloc !39
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_enable_quirks(i32 noundef, %struct.gic_quirk* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @its_read_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %baser) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 0
  %sub.ptr.lhs.cast = ptrtoint %struct.its_baser* %baser to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.its_baser* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 3
  %0 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr i8, i8* %0, i64 256
  %shl = shl nsw i64 %sub.ptr.div, 3
  %idx.ext = and i64 %shl, 4294967288
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 %idx.ext
  %call = call fastcc i64 @__raw_readq(i8* noundef %add.ptr1) #24
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_probe_baser_psz(%struct.its_node* noundef %its, %struct.its_baser* noundef %baser) unnamed_addr #0 {
entry:
  %val34 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %baser, i64 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %switch.selectcmp63 = phi i64 [ 2, %entry ], [ %switch.selectcmp63.be, %while.cond.backedge ]
  %psz.0 = phi i64 [ 65536, %entry ], [ %psz.0.be, %while.cond.backedge ]
  %call = call fastcc i64 @its_read_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %baser) #24
  %and = and i64 %call, -769
  %shl = shl nuw nsw i64 %switch.selectcmp63, 8
  %or = or i64 %shl, %and
  call fastcc void @its_write_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %baser, i64 noundef %or) #24
  %0 = load i64, i64* %val34, align 8
  %and35 = lshr i64 %0, 8
  %shr36 = and i64 %and35, 3
  %cmp = icmp eq i64 %shr36, %switch.selectcmp63
  br i1 %cmp, label %while.end, label %if.end38

if.end38:                                         ; preds = %while.cond
  switch i64 %psz.0, label %cleanup46 [
    i64 65536, label %while.cond.backedge
    i64 16384, label %sw.bb40
  ]

sw.bb40:                                          ; preds = %if.end38
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb40, %if.end38
  %switch.selectcmp63.be = phi i64 [ 1, %if.end38 ], [ 0, %sw.bb40 ]
  %psz.0.be = phi i64 [ 16384, %if.end38 ], [ 4096, %sw.bb40 ]
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %conv = trunc i64 %psz.0 to i32
  %psz45 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %baser, i64 0, i32 3
  store i32 %conv, i32* %psz45, align 4
  br label %cleanup46

cleanup46:                                        ; preds = %if.end38, %while.end
  %retval.2 = phi i32 [ 0, %while.end ], [ -1, %if.end38 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @its_parse_indirect_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %baser, i32* nocapture noundef %order, i32 noundef %ids) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @its_read_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %baser) #24
  %shr = lshr i64 %call, 56
  %and = and i64 %shr, 7
  %shr1 = lshr i64 %call, 48
  %and2 = and i64 %shr1, 31
  %add = add nuw nsw i64 %and2, 1
  %0 = load i32, i32* %order, align 4
  %psz3 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %baser, i64 0, i32 3
  %1 = load i32, i32* %psz3, align 4
  %sh_prom = zext i32 %ids to i64
  %shl = shl i64 %add, %sh_prom
  %mul = shl i32 %1, 1
  %conv = zext i32 %mul to i64
  %cmp = icmp ugt i64 %shl, %conv
  br i1 %cmp, label %if.then, label %if.end14.i

if.then:                                          ; preds = %entry
  call fastcc void @its_write_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %baser, i64 noundef 8646911284551353344) #24
  %val5 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %baser, i64 0, i32 1
  %2 = load i64, i64* %val5, align 8
  %and6 = and i64 %2, 4611686018427387904
  %tobool.not = icmp eq i64 %and6, 0
  br i1 %tobool.not, label %if.end14.i, label %cond.end23

cond.end23:                                       ; preds = %if.then
  %conv10 = trunc i64 %add to i32
  %div = udiv i32 %1, %conv10
  %call22 = call fastcc i32 @__ilog2_u32(i32 noundef %div) #30
  %sub25 = sub i32 %ids, %call22
  %.pre = zext i32 %sub25 to i64
  br label %if.end14.i

if.end14.i:                                       ; preds = %entry, %cond.end23, %if.then
  %sh_prom27.pre-phi = phi i64 [ %sh_prom, %if.then ], [ %.pre, %cond.end23 ], [ %sh_prom, %entry ]
  %indirect.0.shrunk = phi i1 [ false, %if.then ], [ true, %cond.end23 ], [ false, %entry ]
  %esz.0 = phi i64 [ %add, %if.then ], [ 8, %cond.end23 ], [ %add, %entry ]
  %shl28 = shl i64 %esz.0, %sh_prom27.pre-phi
  %dec.i = add i64 %shl28, -1
  %shr.i = lshr i64 %dec.i, 12
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %3 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #25, !range !22
  %4 = trunc i64 %3 to i32
  %conv.i.i = sub nuw nsw i32 64, %4
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %cmp31 = icmp ugt i32 %retval.0.i.i, %0
  %cond36 = select i1 %cmp31, i32 %retval.0.i.i, i32 %0
  %cmp37 = icmp ugt i32 %cond36, 10
  br i1 %cmp37, label %cond.end71, label %if.end94

cond.end71:                                       ; preds = %if.end14.i
  %div44.rhs.trunc = trunc i64 %esz.0 to i32
  %div44137 = udiv i32 4194304, %div44.rhs.trunc
  %div44.zext = zext i32 %div44137 to i64
  %call70 = call fastcc i32 @__ilog2_u64(i64 noundef %div44.zext) #30
  %phys_base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 5
  %arrayidx = getelementptr [8 x i8*], [8 x i8*]* @its_base_type_string, i64 0, i64 %and
  %5 = load i8*, i8** %arrayidx, align 8
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 12
  %6 = load i64, i64* %typer, align 8
  %and90 = lshr i64 %6, 13
  %shr91 = and i64 %and90, 31
  %add92 = add nuw nsw i64 %shr91, 1
  %call93 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0), i64* noundef %phys_base, i8* noundef %5, i64 noundef %add92, i32 noundef %call70) #26
  br label %if.end94

if.end94:                                         ; preds = %cond.end71, %if.end14.i
  %new_order.0 = phi i32 [ 10, %cond.end71 ], [ %cond36, %if.end14.i ]
  store i32 %new_order.0, i32* %order, align 4
  ret i1 %indirect.0.shrunk
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.its_node* @find_sibling_its(%struct.its_node* noundef readonly %cur_its) unnamed_addr #18 {
entry:
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %cur_its, i64 0, i32 12
  %0 = load i64, i64* %typer, align 8
  %1 = and i64 %0, 6597069766656
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cleanup61, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @compute_its_aff(%struct.its_node* noundef %cur_its) #24
  %.pn83 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %cmp.not86 = icmp eq i8* %.pn83, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not86, label %cleanup61, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn87 = phi i8* [ %.pn, %for.inc ], [ %.pn83, %if.end ]
  %its.0.in89 = getelementptr i8, i8* %.pn87, i64 -40
  %its.090 = bitcast i8* %its.0.in89 to %struct.its_node*
  %typer18 = getelementptr i8, i8* %.pn87, i64 272
  %2 = bitcast i8* %typer18 to i64*
  %3 = load i64, i64* %2, align 8
  %and19 = and i64 %3, 1099511627776
  %tobool20.not = icmp eq i64 %and19, 0
  %cmp21 = icmp eq %struct.its_node* %its.090, %cur_its
  %or.cond = select i1 %tobool20.not, i1 true, i1 %cmp21
  %4 = and i64 %3, 6597069766656
  %tobool43.not = icmp eq i64 %4, 0
  %or.cond77 = select i1 %or.cond, i1 true, i1 %tobool43.not
  br i1 %or.cond77, label %for.inc, label %if.end45

if.end45:                                         ; preds = %for.body
  %call46 = call fastcc i32 @compute_its_aff(%struct.its_node* noundef %its.090) #24
  %cmp47.not = icmp eq i32 %call, %call46
  br i1 %cmp47.not, label %cleanup, label %for.inc

cleanup:                                          ; preds = %if.end45
  %val = getelementptr i8, i8* %.pn87, i64 112
  %5 = bitcast i8* %val to i64*
  %6 = load i64, i64* %5, align 8
  %tobool51.not = icmp sgt i64 %6, -1
  br i1 %tobool51.not, label %for.inc, label %cleanup61.loopexit.split.loop.exit

for.inc:                                          ; preds = %if.end45, %for.body, %cleanup
  %7 = bitcast i8* %.pn87 to i8**
  %.pn = load i8*, i8** %7, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not, label %cleanup61, label %for.body

cleanup61.loopexit.split.loop.exit:               ; preds = %cleanup
  %its.090.le = bitcast i8* %its.0.in89 to %struct.its_node*
  br label %cleanup61

cleanup61:                                        ; preds = %for.inc, %cleanup61.loopexit.split.loop.exit, %if.end, %entry
  %retval.2 = phi %struct.its_node* [ null, %entry ], [ null, %if.end ], [ %its.090.le, %cleanup61.loopexit.split.loop.exit ], [ null, %for.inc ]
  ret %struct.its_node* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_write_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %baser, i64 noundef %val) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 0
  %sub.ptr.lhs.cast = ptrtoint %struct.its_baser* %baser to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.its_baser* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 3
  %0 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr i8, i8* %0, i64 256
  %shl = shl nsw i64 %sub.ptr.div, 3
  %idx.ext = and i64 %shl, 4294967288
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 %idx.ext
  call fastcc void @__raw_writeq(i64 noundef %val, i8* noundef %add.ptr1) #24
  %call = call fastcc i64 @its_read_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %baser) #24
  %val2 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %baser, i64 0, i32 1
  store i64 %call, i64* %val2, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_setup_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %baser, i64 noundef %cache, i64 noundef %shr, i32 noundef %order, i1 noundef %indirect) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @its_read_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %baser) #24
  %shr1 = lshr i64 %call, 48
  %and = and i64 %shr1, 31
  %add = add nuw nsw i64 %and, 1
  %shr2 = lshr i64 %call, 56
  %and3 = and i64 %shr2, 7
  %psz4 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %baser, i64 0, i32 3
  %0 = load i32, i32* %psz4, align 4
  %sh_prom = zext i32 %order to i64
  %shl = shl i64 4096, %sh_prom
  %conv = zext i32 %0 to i64
  %div = udiv i64 %shl, %conv
  %conv5 = trunc i64 %div to i32
  %cmp = icmp ugt i32 %conv5, 256
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %phys_base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 5
  %arrayidx = getelementptr [8 x i8*], [8 x i8*]* @its_base_type_string, i64 0, i64 %and3
  %1 = load i8*, i8** %arrayidx, align 8
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.38, i64 0, i64 0), i64* noundef %phys_base, i8* noundef %1, i32 noundef %conv5, i32 noundef 256) #26
  %mul = shl i32 %0, 8
  %conv9 = zext i32 %mul to i64
  %dec.i = add nsw i64 %conv9, -1
  %shr.i = lshr i64 %dec.i, 12
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %2 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #25, !range !22
  %3 = trunc i64 %2 to i32
  %conv.i.i = sub nuw nsw i32 64, %3
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %order.addr.0 = phi i32 [ %order, %entry ], [ %retval.0.i.i, %do.end ]
  %alloc_pages.0 = phi i64 [ %div, %entry ], [ 256, %do.end ]
  %numa_node = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 19
  %4 = load i32, i32* %numa_node, align 8
  %call11 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %4, i32 noundef 3520, i32 noundef %order.addr.0) #24
  %tobool.not = icmp eq %struct.page* %call11, null
  br i1 %tobool.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end
  %5 = ptrtoint %struct.page* %call11 to i64
  %sub.i151 = shl i64 %5, 6
  %add.i152 = and i64 %sub.i151, -4096
  %6 = inttoptr i64 %add.i152 to i8*
  %call15 = call fastcc i64 @virt_to_phys(i8* noundef %6) #24
  %shl16 = shl nuw nsw i64 %and3, 56
  %shl17 = shl nuw nsw i64 %and, 48
  %sub19 = add i64 %alloc_pages.0, 4294967295
  %conv21 = and i64 %sub19, 4294967295
  %cond = select i1 %indirect, i64 4611686018427387904, i64 0
  %or = or i64 %shl16, %cond
  %or18 = or i64 %or, %shl17
  %or22 = or i64 %or18, %conv21
  %or23 = or i64 %or22, %call15
  %val34 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %baser, i64 0, i32 1
  %sh_prom41 = zext i32 %order.addr.0 to i64
  %shl42 = shl i64 4096, %sh_prom41
  %add43 = add i64 %add.i152, %shl42
  br label %retry_baser.outer

retry_baser.outer:                                ; preds = %if.then40, %if.end13
  %shr.addr.0.ph = phi i64 [ %and38, %if.then40 ], [ %shr, %if.end13 ]
  %cache.addr.0.ph = phi i64 [ 576460752303423488, %if.then40 ], [ %cache, %if.end13 ]
  br label %retry_baser

retry_baser:                                      ; preds = %retry_baser.outer, %if.then37
  %shr.addr.0 = phi i64 [ %and38, %if.then37 ], [ %shr.addr.0.ph, %retry_baser.outer ]
  %or24 = or i64 %or23, %shr.addr.0
  %or25 = or i64 %or24, %cache.addr.0.ph
  %or28 = or i64 %or25, -9223372036854775808
  switch i32 %0, label %sw.epilog [
    i32 65536, label %sw.bb32
    i32 16384, label %sw.bb30
  ]

sw.bb30:                                          ; preds = %retry_baser
  %or31 = or i64 %or25, -9223372036854775552
  br label %sw.epilog

sw.bb32:                                          ; preds = %retry_baser
  %or33 = or i64 %or25, -9223372036854775296
  br label %sw.epilog

sw.epilog:                                        ; preds = %retry_baser, %sw.bb32, %sw.bb30
  %val.0 = phi i64 [ %or33, %sw.bb32 ], [ %or31, %sw.bb30 ], [ %or28, %retry_baser ]
  call fastcc void @its_write_baser(%struct.its_node* noundef %its, %struct.its_baser* noundef %baser, i64 noundef %val.0) #24
  %7 = load i64, i64* %val34, align 8
  %xor = xor i64 %7, %val.0
  %and35 = and i64 %xor, 3072
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %if.end45, label %if.then37

if.then37:                                        ; preds = %sw.epilog
  %and38 = and i64 %7, 3072
  %tobool39.not = icmp eq i64 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %retry_baser

if.then40:                                        ; preds = %if.then37
  call void @dcache_clean_inval_poc(i64 noundef %add.i152, i64 noundef %add43) #27
  br label %retry_baser.outer

if.end45:                                         ; preds = %sw.epilog
  %cmp46.not = icmp eq i64 %val.0, %7
  br i1 %cmp46.not, label %if.end56, label %do.end51

do.end51:                                         ; preds = %if.end45
  %phys_base53 = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 5
  %arrayidx54 = getelementptr [8 x i8*], [8 x i8*]* @its_base_type_string, i64 0, i64 %and3
  %8 = load i8*, i8** %arrayidx54, align 8
  %call55 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i64* noundef %phys_base53, i8* noundef %8, i64 noundef %val.0, i64 noundef %7) #26
  call void @free_pages(i64 noundef %add.i152, i32 noundef %order.addr.0) #27
  br label %cleanup

if.end56:                                         ; preds = %if.end45
  %order57 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %baser, i64 0, i32 2
  store i32 %order.addr.0, i32* %order57, align 8
  %base58 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %baser, i64 0, i32 0
  store i8* %6, i8** %base58, align 8
  store i32 %0, i32* %psz4, align 4
  %phys_base67 = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 5
  %9 = select i1 %indirect, i64 8, i64 %add
  %div72 = udiv i64 %shl42, %9
  %conv73 = trunc i64 %div72 to i32
  %arrayidx74 = getelementptr [8 x i8*], [8 x i8*]* @its_base_type_string, i64 0, i64 %and3
  %10 = load i8*, i8** %arrayidx74, align 8
  %call75 = call fastcc i64 @virt_to_phys(i8* noundef %6) #24
  %cond78 = select i1 %indirect, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)
  %conv79 = trunc i64 %add to i32
  %div80 = lshr i32 %0, 10
  %conv81 = trunc i64 %shr.addr.0 to i32
  %shr82 = ashr i32 %conv81, 10
  %call83 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.40, i64 0, i64 0), i64* noundef %phys_base67, i32 noundef %conv73, i8* noundef %10, i64 noundef %call75, i8* noundef %cond78, i32 noundef %conv79, i32 noundef %div80, i32 noundef %shr82) #26
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end56, %do.end51
  %retval.0 = phi i32 [ -6, %do.end51 ], [ 0, %if.end56 ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u32(i32 noundef %n) unnamed_addr #10 {
entry:
  %tobool.not.i = icmp eq i32 %n, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %n, i1 false) #25, !range !40
  %narrow.i.op = sub nsw i32 31, %0
  %sub = select i1 %tobool.not.i, i32 -1, i32 %narrow.i.op
  ret i32 %sub
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 256
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %or) #24
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 %size)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !18

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef %flags) #27
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_domain* @irq_domain_create_tree(%struct.fwnode_handle* noundef %fwnode, i8* noundef %host_data) unnamed_addr #0 {
entry:
  %call = call %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef %fwnode, i32 noundef 0, i64 noundef -1, i32 noundef 0, %struct.irq_domain_ops* noundef nonnull @its_domain_ops, i8* noundef %host_data) #27
  ret %struct.irq_domain* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(%struct.irq_domain* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef, i32 noundef, i64 noundef, i32 noundef, %struct.irq_domain_ops* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_irq_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, i8* nocapture noundef readonly %args) #0 {
entry:
  %hwirq = alloca i64, align 8
  %scratchpad = getelementptr inbounds i8, i8* %args, i64 24
  %ptr = bitcast i8* %scratchpad to i8**
  %0 = load i8*, i8** %ptr, align 8
  %1 = bitcast i8* %0 to %struct.its_device*
  %its1 = getelementptr inbounds i8, i8* %0, i64 16
  %2 = bitcast i8* %its1 to %struct.its_node**
  %3 = load %struct.its_node*, %struct.its_node** %2, align 8
  %4 = bitcast i64* %hwirq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #25
  store i64 0, i64* %hwirq, align 8, !annotation !17
  %call = call fastcc i32 @its_alloc_device_irq(%struct.its_device* noundef %1, i32 noundef %nr_irqs, i64* noundef nonnull %hwirq) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %get_msi_base = getelementptr inbounds %struct.its_node, %struct.its_node* %3, i64 0, i32 11
  %5 = load i64 (%struct.its_device*)*, i64 (%struct.its_device*)** %get_msi_base, align 8
  %call2 = call i64 %5(%struct.its_device* noundef %1) #27
  %cmp50.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp50.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %6 = load i64, i64* %hwirq, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end11
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11 ]
  %add = add i32 %i.051, %virq
  %conv = sext i32 %i.051 to i64
  %add7 = add i64 %6, %conv
  %call8 = call fastcc i32 @its_irq_gic_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %add, i64 noundef %add7) #24
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %for.body
  %call15 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* noundef %domain, i32 noundef %add, i64 noundef %add7, %struct.irq_chip* noundef nonnull @its_irq_chip, i8* noundef %0) #27
  %call17 = call %struct.irq_data* @irq_get_irq_data(i32 noundef %add) #27
  call fastcc void @irqd_set_single_target(%struct.irq_data* noundef %call17) #24
  call fastcc void @irqd_set_affinity_on_activate(%struct.irq_data* noundef %call17) #24
  %inc = add nuw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %if.end11, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %if.end ], [ %call8, %for.body ], [ 0, %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #25
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_irq_domain_free(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #0 {
entry:
  %call = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %virq) #27
  %call1 = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %call) #24
  %0 = bitcast i8* %call1 to %struct.its_device*
  %its2 = getelementptr inbounds i8, i8* %call1, i64 16
  %1 = bitcast i8* %its2 to %struct.its_node**
  %2 = load %struct.its_node*, %struct.its_node** %1, align 8
  %event_map = getelementptr inbounds i8, i8* %call1, i64 24
  %lpi_map = bitcast i8* %event_map to i64**
  %3 = load i64*, i64** %lpi_map, align 8
  %call3 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %virq) #27
  %call4 = call fastcc i32 @its_get_event_id(%struct.irq_data* noundef %call3) #24
  %call5 = call fastcc i32 @get_count_order(i32 noundef %nr_irqs) #24
  call void @bitmap_release_region(i64* noundef %3, i32 noundef %call4, i32 noundef %call5) #27
  %cmp42.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp42.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.043 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %add = add i32 %i.043, %virq
  %call6 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %add) #27
  call void @irq_domain_reset_irq_data(%struct.irq_data* noundef %call6) #27
  %inc = add nuw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %dev_alloc_lock = getelementptr inbounds %struct.its_node, %struct.its_node* %2, i64 0, i32 1
  call void @mutex_lock(%struct.mutex* noundef %dev_alloc_lock) #27
  %4 = getelementptr inbounds i8, i8* %call1, i64 96
  %5 = load i8, i8* %4, align 8, !range !9
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %6 = load i64*, i64** %lpi_map, align 8
  %nr_lpis = getelementptr inbounds i8, i8* %call1, i64 48
  %7 = bitcast i8* %nr_lpis to i32*
  %8 = load i32, i32* %7, align 8
  %call10 = call fastcc i1 @bitmap_empty(i64* noundef %6, i32 noundef %8) #24
  br i1 %call10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64*, i64** %lpi_map, align 8
  %lpi_base = getelementptr inbounds i8, i8* %call1, i64 40
  %10 = bitcast i8* %lpi_base to i64*
  %11 = load i64, i64* %10, align 8
  %conv = trunc i64 %11 to i32
  %12 = load i32, i32* %7, align 8
  call fastcc void @its_lpi_free(i64* noundef %9, i32 noundef %conv, i32 noundef %12) #24
  call fastcc void @its_send_mapd(%struct.its_device* noundef %0, i32 noundef 0) #24
  call fastcc void @its_free_device(%struct.its_device* noundef %0) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end
  call void @mutex_unlock(%struct.mutex* noundef %dev_alloc_lock) #27
  call void @irq_domain_free_irqs_parent(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_irq_domain_activate(%struct.irq_domain* nocapture noundef readnone %domain, %struct.irq_data* nocapture noundef readonly %d, i1 noundef %reserve) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %call1 = call fastcc i32 @its_get_event_id(%struct.irq_data* noundef %d) #24
  %call2 = call fastcc i32 @its_select_cpu(%struct.irq_data* noundef %d, %struct.cpumask* noundef nonnull @__cpu_online_mask) #24
  %cmp = icmp sgt i32 %call2, -1
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp3.not = icmp ult i32 %call2, %0
  %or.cond = select i1 %cmp, i1 %cmp3.not, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to %struct.its_device*
  call fastcc void @its_inc_lpi_count(%struct.irq_data* noundef %d, i32 noundef %call2) #24
  %conv = trunc i32 %call2 to i16
  %col_map = getelementptr inbounds i8, i8* %call, i64 32
  %2 = bitcast i8* %col_map to i16**
  %3 = load i16*, i16** %2, align 8
  %idxprom = zext i32 %call1 to i64
  %arrayidx = getelementptr i16, i16* %3, i64 %idxprom
  store i16 %conv, i16* %arrayidx, align 2
  %call4 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %call2) #24
  call fastcc void @irq_data_update_effective_affinity(%struct.irq_data* noundef %d, %struct.cpumask* noundef nonnull %call4) #24
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %4 = load i64, i64* %hwirq, align 8
  %conv5 = trunc i64 %4 to i32
  call fastcc void @its_send_mapti(%struct.its_device* noundef %1, i32 noundef %conv5, i32 noundef %call1) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_irq_domain_deactivate(%struct.irq_domain* nocapture noundef readnone %domain, %struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_device*
  %call1 = call fastcc i32 @its_get_event_id(%struct.irq_data* noundef %d) #24
  %col_map = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %col_map to i16**
  %2 = load i16*, i16** %1, align 8
  %idxprom = zext i32 %call1 to i64
  %arrayidx = getelementptr i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  call fastcc void @its_dec_lpi_count(%struct.irq_data* noundef %d, i32 noundef %conv) #24
  call fastcc void @its_send_discard(%struct.its_device* noundef %0, i32 noundef %call1) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_alloc_device_irq(%struct.its_device* nocapture noundef readonly %dev, i32 noundef %nvecs, i64* nocapture noundef writeonly %hwirq) unnamed_addr #0 {
entry:
  %lpi_map = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 2, i32 0
  %0 = load i64*, i64** %lpi_map, align 8
  %nr_lpis = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 2, i32 3
  %1 = load i32, i32* %nr_lpis, align 8
  %call = call fastcc i32 @get_count_order(i32 noundef %nvecs) #24
  %call2 = call i32 @bitmap_find_free_region(i64* noundef %0, i32 noundef %1, i32 noundef %call) #27
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lpi_base = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 2, i32 2
  %2 = load i64, i64* %lpi_base, align 8
  %conv8 = zext i32 %call2 to i64
  %add = add i64 %2, %conv8
  store i64 %add, i64* %hwirq, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -28, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_irq_gic_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %virq, i64 noundef %hwirq) unnamed_addr #0 {
entry:
  %fwspec = alloca %struct.irq_fwspec, align 8
  %0 = bitcast %struct.irq_fwspec* %fwspec to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !17
  %parent = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 9
  %1 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8
  %call = call fastcc %struct.device_node* @irq_domain_get_of_node(%struct.irq_domain* noundef %1) #24
  %tobool.not = icmp eq %struct.device_node* %call, null
  %fwnode8 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %1, i64 0, i32 6
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode8, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %fwnode2 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 0
  store %struct.fwnode_handle* %2, %struct.fwnode_handle** %fwnode2, align 8
  %param_count = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 1
  store i32 3, i32* %param_count, align 8
  %arrayidx = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 0
  store i32 -1592735507, i32* %arrayidx, align 4
  %conv = trunc i64 %hwirq to i32
  %arrayidx4 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 1
  store i32 %conv, i32* %arrayidx4, align 8
  %arrayidx6 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 2
  store i32 1, i32* %arrayidx6, align 4
  br label %if.end21

if.else:                                          ; preds = %entry
  %call9 = call fastcc i1 @is_fwnode_irqchip(%struct.fwnode_handle* noundef %2) #24
  br i1 %call9, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.else
  %fwnode13 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 0
  store %struct.fwnode_handle* %2, %struct.fwnode_handle** %fwnode13, align 8
  %param_count14 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 1
  store i32 2, i32* %param_count14, align 8
  %conv15 = trunc i64 %hwirq to i32
  %arrayidx17 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 0
  store i32 %conv15, i32* %arrayidx17, align 4
  %arrayidx19 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 1
  store i32 1, i32* %arrayidx19, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then10, %if.then
  %call22 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef 1, i8* noundef nonnull %0) #27
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end21
  %retval.0 = phi i32 [ %call22, %if.end21 ], [ -22, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #25
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* noundef, i32 noundef, i64 noundef, %struct.irq_chip* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_data* @irq_get_irq_data(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_single_target(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #15 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 16777216
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_affinity_on_activate(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #15 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 536870912
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @get_count_order(i32 noundef %count) unnamed_addr #10 {
entry:
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %dec = add i32 %count, -1
  %tobool.not.i = icmp eq i32 %dec, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %dec, i1 false) #25, !range !40
  %narrow.i = sub nuw nsw i32 32, %0
  %narrow3.i = select i1 %tobool.not.i, i32 0, i32 %narrow.i
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %narrow3.i, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.device_node* @irq_domain_get_of_node(%struct.irq_domain* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %fwnode = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %d, i64 0, i32 6
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %0) #24
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %0, i64 -1, i32 4
  %1 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %1, %struct.device_node* null
  ret %struct.device_node* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_fwnode_irqchip(%struct.fwnode_handle* noundef readonly %fwnode) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %cmp = icmp eq %struct.fwnode_operations* %0, @irqchip_fwnode_ops
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_mask_irq(%struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %call = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #24
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @its_vlpi_set_doorbell(%struct.irq_data* noundef %d, i1 noundef false) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @lpi_update_config(%struct.irq_data* noundef %d, i8 noundef 1, i8 noundef 0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_unmask_irq(%struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %call = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #24
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @its_vlpi_set_doorbell(%struct.irq_data* noundef %d, i1 noundef true) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @lpi_update_config(%struct.irq_data* noundef %d, i8 noundef 0, i8 noundef 1) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(%struct.irq_data* noundef) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_set_affinity(%struct.irq_data* nocapture noundef readonly %d, %struct.cpumask* noundef %mask_val, i1 noundef %force) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_device*
  %call1 = call fastcc i32 @its_get_event_id(%struct.irq_data* noundef %d) #24
  %call2 = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #24
  br i1 %call2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %col_map = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %col_map to i16**
  %2 = load i16*, i16** %1, align 8
  %idxprom = zext i32 %call1 to i64
  %arrayidx = getelementptr i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  call fastcc void @its_dec_lpi_count(%struct.irq_data* noundef %d, i32 noundef %conv) #24
  br i1 %force, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i32 @its_select_cpu(%struct.irq_data* noundef %d, %struct.cpumask* noundef %mask_val) #24
  br label %if.end6

if.else:                                          ; preds = %if.end
  %call5 = call fastcc i32 @cpumask_pick_least_loaded(%struct.irq_data* noundef %d, %struct.cpumask* noundef %mask_val) #24
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %cpu.0 = phi i32 [ %call5, %if.else ], [ %call4, %if.then3 ]
  %cmp = icmp sgt i32 %cpu.0, -1
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp8.not = icmp ult i32 %cpu.0, %4
  %or.cond = select i1 %cmp, i1 %cmp8.not, i1 false
  br i1 %or.cond, label %if.end11, label %cleanup.sink.split

if.end11:                                         ; preds = %if.end6
  %cmp12.not = icmp eq i32 %cpu.0, %conv
  br i1 %cmp12.not, label %cleanup.sink.split, label %if.then14

if.then14:                                        ; preds = %if.end11
  %its = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %its to %struct.its_node**
  %6 = load %struct.its_node*, %struct.its_node** %5, align 8
  %collections = getelementptr inbounds %struct.its_node, %struct.its_node* %6, i64 0, i32 9
  %7 = load %struct.its_collection*, %struct.its_collection** %collections, align 8
  %idxprom1555 = zext i32 %cpu.0 to i64
  %arrayidx16 = getelementptr %struct.its_collection, %struct.its_collection* %7, i64 %idxprom1555
  call fastcc void @its_send_movi(%struct.its_device* noundef %0, %struct.its_collection* noundef %arrayidx16, i32 noundef %call1) #24
  %conv17 = trunc i32 %cpu.0 to i16
  %8 = load i16*, i16** %1, align 8
  %arrayidx21 = getelementptr i16, i16* %8, i64 %idxprom
  store i16 %conv17, i16* %arrayidx21, align 2
  %call22 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %cpu.0) #24
  call fastcc void @irq_data_update_effective_affinity(%struct.irq_data* noundef %d, %struct.cpumask* noundef nonnull %call22) #24
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %if.end11, %if.then14
  %conv.sink = phi i32 [ %cpu.0, %if.then14 ], [ %cpu.0, %if.end11 ], [ %conv, %if.end6 ]
  %retval.0.ph = phi i32 [ 2, %if.then14 ], [ 2, %if.end11 ], [ -22, %if.end6 ]
  call fastcc void @its_inc_lpi_count(%struct.irq_data* noundef %d, i32 noundef %conv.sink) #24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_irq_retrigger(%struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %call = call i32 @its_irq_set_irqchip_state(%struct.irq_data* noundef %d, i32 noundef 0, i1 noundef true) #24
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_irq_compose_msi_msg(%struct.irq_data* nocapture noundef readonly %d, %struct.msi_msg* nocapture noundef writeonly %msg) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_device*
  %its1 = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %its1 to %struct.its_node**
  %2 = load %struct.its_node*, %struct.its_node** %1, align 8
  %get_msi_base = getelementptr inbounds %struct.its_node, %struct.its_node* %2, i64 0, i32 11
  %3 = load i64 (%struct.its_device*)*, i64 (%struct.its_device*)** %get_msi_base, align 8
  %call2 = call i64 %3(%struct.its_device* noundef %0) #27
  %conv = trunc i64 %call2 to i32
  %address_lo = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %msg, i64 0, i32 0, i32 0
  store i32 %conv, i32* %address_lo, align 4
  %shr = lshr i64 %call2, 32
  %conv4 = trunc i64 %shr to i32
  %address_hi = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %msg, i64 0, i32 1, i32 0
  store i32 %conv4, i32* %address_hi, align 4
  %call5 = call fastcc i32 @its_get_event_id(%struct.irq_data* noundef %d) #24
  %data = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %msg, i64 0, i32 2, i32 0
  store i32 %call5, i32* %data, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_irq_set_irqchip_state(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %which, i1 noundef %state) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_device*
  %call1 = call fastcc i32 @its_get_event_id(%struct.irq_data* noundef %d) #24
  %cmp.not = icmp eq i32 %which, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #24
  br i1 %call2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.end
  br i1 %state, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then3
  call fastcc void @its_send_vint(%struct.its_device* noundef %0, i32 noundef %call1) #24
  br label %cleanup

if.else:                                          ; preds = %if.then3
  call fastcc void @its_send_vclear(%struct.its_device* noundef %0, i32 noundef %call1) #24
  br label %cleanup

if.else6:                                         ; preds = %if.end
  br i1 %state, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else6
  call void @its_send_int(%struct.its_device* noundef %0, i32 noundef %call1) #24
  br label %cleanup

if.else9:                                         ; preds = %if.else6
  call void @its_send_clear(%struct.its_device* noundef %0, i32 noundef %call1) #24
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %if.else9, %if.then8, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.then8 ], [ 0, %if.else9 ], [ 0, %if.then4 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_irq_set_vcpu_affinity(%struct.irq_data* nocapture noundef readonly %d, i8* noundef readonly %vcpu_info) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %vcpu_info to %struct.its_cmd_info*
  %its = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %its to %struct.its_node**
  %2 = load %struct.its_node*, %struct.its_node** %1, align 8
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %2, i64 0, i32 12
  %3 = load i64, i64* %typer, align 8
  %and = and i64 %3, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i8* %vcpu_info, null
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @its_vlpi_unmap(%struct.irq_data* noundef %d) #24
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmd_type = bitcast i8* %vcpu_info to i32*
  %4 = load i32, i32* %cmd_type, align 8
  switch i32 %4, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb8
    i32 3, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end4
  %call5 = call fastcc i32 @its_vlpi_map(%struct.irq_data* noundef %d, %struct.its_cmd_info* noundef nonnull %0) #24
  br label %cleanup

sw.bb6:                                           ; preds = %if.end4
  %call7 = call fastcc i32 @its_vlpi_get(%struct.irq_data* noundef %d, %struct.its_cmd_info* noundef nonnull %0) #24
  br label %cleanup

sw.bb8:                                           ; preds = %if.end4, %if.end4
  %call9 = call fastcc i32 @its_vlpi_prop_update(%struct.irq_data* noundef %d, %struct.its_cmd_info* noundef nonnull %0) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry, %sw.bb8, %sw.bb6, %sw.bb, %if.then2
  %retval.0 = phi i32 [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb ], [ %call3, %if.then2 ], [ -22, %entry ], [ -22, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 1048576
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vlpi_set_doorbell(%struct.irq_data* nocapture noundef readonly %d, i1 noundef %enable) unnamed_addr #0 {
entry:
  %frombool = zext i1 %enable to i8
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_device*
  %call1 = call fastcc i32 @its_get_event_id(%struct.irq_data* noundef %d) #24
  %its = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %its to %struct.its_node**
  %2 = load %struct.its_node*, %struct.its_node** %1, align 8
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %2, i64 0, i32 12
  %3 = load i64, i64* %typer, align 8
  %and = and i64 %3, 1099511627776
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.its_vlpi_map* @dev_event_to_vlpi_map(%struct.its_device* noundef %0, i32 noundef %call1) #24
  %db_enabled = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call2, i64 0, i32 4
  %4 = load i8, i8* %db_enabled, align 1, !range !9
  %cmp = icmp eq i8 %4, %frombool
  br i1 %cmp, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  store i8 %frombool, i8* %db_enabled, align 1
  call fastcc void @its_send_vmovi(%struct.its_device* noundef %0, i32 noundef %call1) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lpi_update_config(%struct.irq_data* nocapture noundef readonly %d, i8 noundef %clr, i8 noundef %set) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_device*
  call fastcc void @lpi_write_config(%struct.irq_data* noundef %d, i8 noundef %clr, i8 noundef %set) #24
  %1 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_direct_lpi = getelementptr inbounds %struct.rdists, %struct.rdists* %1, i64 0, i32 8
  %2 = load i8, i8* %has_direct_lpi, align 2, !range !9
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %its = getelementptr inbounds i8, i8* %call, i64 16
  %3 = bitcast i8* %its to %struct.its_node**
  %4 = load %struct.its_node*, %struct.its_node** %3, align 8
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %4, i64 0, i32 12
  %5 = load i64, i64* %typer, align 8
  %and = and i64 %5, 1099511627776
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #24
  br i1 %call2, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call fastcc void @direct_lpi_inv(%struct.irq_data* noundef %d) #24
  br label %if.end8

if.else:                                          ; preds = %lor.lhs.false, %entry
  %call3 = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #24
  %call7 = call fastcc i32 @its_get_event_id(%struct.irq_data* noundef %d) #24
  br i1 %call3, label %if.else6, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @its_send_inv(%struct.its_device* noundef %0, i32 noundef %call7) #24
  br label %if.end8

if.else6:                                         ; preds = %if.else
  call fastcc void @its_send_vinv(%struct.its_device* noundef %0, i32 noundef %call7) #24
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.else6, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %chip_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 7
  %0 = load i8*, i8** %chip_data, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @its_get_event_id(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %0 = load i64, i64* %hwirq, align 8
  %lpi_base = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %lpi_base to i64*
  %2 = load i64, i64* %1, align 8
  %sub = sub i64 %0, %2
  %conv = trunc i64 %sub to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.its_vlpi_map* @dev_event_to_vlpi_map(%struct.its_device* nocapture noundef readonly %its_dev, i32 noundef %event) unnamed_addr #0 {
entry:
  %nr_lpis = getelementptr inbounds %struct.its_device, %struct.its_device* %its_dev, i64 0, i32 2, i32 3
  %0 = load i32, i32* %nr_lpis, align 8
  %cmp.not = icmp ugt i32 %0, %event
  br i1 %cmp.not, label %if.end16, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 241; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !41
  br label %return

if.end16:                                         ; preds = %entry
  %vlpi_maps = getelementptr inbounds %struct.its_device, %struct.its_device* %its_dev, i64 0, i32 2, i32 6
  %1 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %vlpi_maps, align 8
  %idxprom = zext i32 %event to i64
  %arrayidx = getelementptr %struct.its_vlpi_map, %struct.its_vlpi_map* %1, i64 %idxprom
  br label %return

return:                                           ; preds = %if.then, %if.end16
  %retval.0 = phi %struct.its_vlpi_map* [ %arrayidx, %if.end16 ], [ null, %if.then ]
  ret %struct.its_vlpi_map* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_vmovi(%struct.its_device* noundef %dev, i32 noundef %id) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %call = call fastcc %struct.its_vlpi_map* @dev_event_to_vlpi_map(%struct.its_device* noundef %dev, i32 noundef %id) #24
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false), !annotation !17
  %vpe = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 1
  %3 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vpe1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  store %struct.its_vpe* %3, %struct.its_vpe** %vpe1, align 8
  %4 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  store %struct.its_device* %dev, %struct.its_device** %4, align 8
  %5 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  store i32 %id, i32* %5, align 8
  %db_enabled = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 4
  %6 = load i8, i8* %db_enabled, align 1, !range !9
  %db_enabled6 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 3
  %7 = bitcast i32* %db_enabled6 to i8*
  store i8 %6, i8* %7, align 4
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 1
  %8 = load %struct.its_node*, %struct.its_node** %its, align 8
  call fastcc void @its_send_single_vcommand(%struct.its_node* noundef %8, %struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_vmovi_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_single_vcommand(%struct.its_node* noundef %its, %struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef %builder, %struct.its_cmd_desc* noundef %desc) unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %call1 = call fastcc %struct.its_cmd_block* @its_allocate_entry(%struct.its_node* noundef %its) #24
  %tobool.not = icmp eq %struct.its_cmd_block* %call1, null
  br i1 %tobool.not, label %do.body2, label %if.end

do.body2:                                         ; preds = %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %call11 = call %struct.its_vpe* %builder(%struct.its_node* noundef %its, %struct.its_cmd_block* noundef nonnull %call1, %struct.its_cmd_desc* noundef %desc) #27
  call fastcc void @its_flush_cmd(%struct.its_node* noundef %its, %struct.its_cmd_block* noundef nonnull %call1) #24
  %tobool12.not = icmp eq %struct.its_vpe* %call11, null
  br i1 %tobool12.not, label %post, label %if.then13

if.then13:                                        ; preds = %if.end
  %call14 = call fastcc %struct.its_cmd_block* @its_allocate_entry(%struct.its_node* noundef %its) #24
  %tobool15.not = icmp eq %struct.its_cmd_block* %call14, null
  br i1 %tobool15.not, label %post, label %if.end17

if.end17:                                         ; preds = %if.then13
  call fastcc void @its_build_vsync_cmd(%struct.its_cmd_block* noundef nonnull %call14, %struct.its_vpe* noundef nonnull %call11) #24
  call fastcc void @its_flush_cmd(%struct.its_node* noundef %its, %struct.its_cmd_block* noundef nonnull %call14) #24
  br label %post

post:                                             ; preds = %if.end, %if.end17, %if.then13
  %base = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 3
  %0 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr i8, i8* %0, i64 144
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #25, !srcloc !8
  %conv21 = zext i32 %1 to i64
  %call22 = call fastcc %struct.its_cmd_block* @its_post_commands(%struct.its_node* noundef %its) #24
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  %call33 = call fastcc i32 @its_wait_for_range_completion(%struct.its_node* noundef %its, i64 noundef %conv21, %struct.its_cmd_block* noundef %call22) #24
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %if.then35

if.then35:                                        ; preds = %post
  %call36 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @its_send_single_vcommand._rs, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.its_send_single_vcommand, i64 0, i64 0)) #27
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup, label %do.end41

do.end41:                                         ; preds = %if.then35
  %call43 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), %struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef %builder) #26
  br label %cleanup

cleanup:                                          ; preds = %post, %do.end41, %if.then35, %do.body2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_vpe* @its_build_vmovi_cmd(%struct.its_node* nocapture noundef readonly %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 12
  %0 = load i64, i64* %typer, align 8
  %and = and i64 %0, 1099511627776
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %db_enabled = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 3
  %1 = bitcast i32* %db_enabled to i8*
  %2 = load i8, i8* %1, align 4, !range !9
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %vpe = getelementptr %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  %3 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vpe_db_lpi = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %3, i64 0, i32 4
  %4 = load i64, i64* %vpe_db_lpi, align 8
  %conv = trunc i64 %4 to i32
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %db.0 = phi i32 [ %conv, %if.then ], [ 1023, %land.lhs.true ], [ 1023, %entry ]
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 33) #24
  %5 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %6 = load %struct.its_device*, %struct.its_device** %5, align 8
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %6, i64 0, i32 5
  %7 = load i32, i32* %device_id, align 4
  call fastcc void @its_encode_devid(%struct.its_cmd_block* noundef %cmd, i32 noundef %7) #24
  %vpe5 = getelementptr %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  %8 = load %struct.its_vpe*, %struct.its_vpe** %vpe5, align 8
  %vpe_id = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %8, i64 0, i32 10
  %9 = load i16, i16* %vpe_id, align 2
  call fastcc void @its_encode_vpeid(%struct.its_cmd_block* noundef %cmd, i16 noundef %9) #24
  %10 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  call fastcc void @its_encode_event_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %11) #24
  call fastcc void @its_encode_db_phys_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %db.0) #24
  call fastcc void @its_encode_db_valid(%struct.its_cmd_block* noundef %cmd) #24
  %12 = load %struct.its_vpe*, %struct.its_vpe** %vpe5, align 8
  %call = call fastcc %struct.its_vpe* @valid_vpe(%struct.its_node* noundef %its, %struct.its_vpe* noundef %12) #24
  ret %struct.its_vpe* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_build_vsync_cmd(%struct.its_cmd_block* nocapture noundef %sync_cmd, %struct.its_vpe* nocapture noundef readonly %sync_vpe) unnamed_addr #15 {
entry:
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %sync_cmd, i8 noundef 37) #24
  %vpe_id = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %sync_vpe, i64 0, i32 10
  %0 = load i16, i16* %vpe_id, align 2
  call fastcc void @its_encode_vpeid(%struct.its_cmd_block* noundef %sync_cmd, i16 noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_vpeid(%struct.its_cmd_block* nocapture noundef %cmd, i16 noundef %vpeid) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 1
  %conv = zext i16 %vpeid to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 47, i32 noundef 32) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_devid(%struct.its_cmd_block* nocapture noundef %cmd, i32 noundef %devid) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 0
  %conv = zext i32 %devid to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 63, i32 noundef 32) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_event_id(%struct.its_cmd_block* nocapture noundef %cmd, i32 noundef %id) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 1
  %conv = zext i32 %id to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 31, i32 noundef 0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_db_phys_id(%struct.its_cmd_block* nocapture noundef %cmd, i32 noundef %db_phys_id) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 2
  %conv = zext i32 %db_phys_id to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 63, i32 noundef 32) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_db_valid(%struct.its_cmd_block* nocapture noundef %cmd) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 2
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef 1, i32 noundef 0, i32 noundef 0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.its_vpe* @valid_vpe(%struct.its_node* nocapture noundef readonly %its, %struct.its_vpe* noundef readonly %vpe) unnamed_addr #0 {
entry:
  %collections = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 9
  %0 = load %struct.its_collection*, %struct.its_collection** %collections, align 8
  %col_idx = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 9
  %1 = load i16, i16* %col_idx, align 4
  %2 = zext i16 %1 to i64
  %add.ptr = getelementptr %struct.its_collection, %struct.its_collection* %0, i64 %2
  %call = call fastcc %struct.its_collection* @valid_col(%struct.its_collection* noundef %add.ptr) #24
  %tobool.not = icmp eq %struct.its_collection* %call, null
  %.vpe = select i1 %tobool.not, %struct.its_vpe* null, %struct.its_vpe* %vpe
  ret %struct.its_vpe* %.vpe
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.its_collection* @valid_col(%struct.its_collection* noundef readonly %col) unnamed_addr #0 {
entry:
  %target_address = getelementptr inbounds %struct.its_collection, %struct.its_collection* %col, i64 0, i32 0
  %0 = load i64, i64* %target_address, align 8
  %and = and i64 %0, 65535
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 298; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %col. = phi %struct.its_collection* [ null, %if.then ], [ %col, %entry ]
  ret %struct.its_collection* %col.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lpi_write_config(%struct.irq_data* nocapture noundef readonly %d, i8 noundef %clr, i8 noundef %set) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.its_vlpi_map* @get_vlpi_map(%struct.irq_data* noundef %d) #24
  %tobool.not = icmp eq %struct.its_vlpi_map* %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vm = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 0
  %0 = load %struct.its_vm*, %struct.its_vm** %vm, align 8
  %vprop_page = getelementptr inbounds %struct.its_vm, %struct.its_vm* %0, i64 0, i32 2
  %1 = load %struct.page*, %struct.page** %vprop_page, align 8
  %2 = ptrtoint %struct.page* %1 to i64
  %sub.i = shl i64 %2, 6
  %add.i = and i64 %sub.i, -4096
  %3 = inttoptr i64 %add.i to i8*
  %vintid = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 2
  %4 = load i32, i32* %vintid, align 8
  %conv = zext i32 %4 to i64
  %neg = xor i8 %clr, -1
  %properties = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 3
  %5 = load i8, i8* %properties, align 4
  %and = and i8 %5, %neg
  %6 = or i8 %and, %set
  %or842 = or i8 %6, 2
  store i8 %or842, i8* %properties, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %prop_table_va = getelementptr inbounds %struct.rdists, %struct.rdists* %7, i64 0, i32 2
  %8 = load i8*, i8** %prop_table_va, align 8
  %hwirq10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %9 = load i64, i64* %hwirq10, align 8
  %.pre = xor i8 %clr, -1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %neg13.pre-phi = phi i8 [ %.pre, %if.else ], [ %neg, %if.then ]
  %hwirq.0 = phi i64 [ %9, %if.else ], [ %conv, %if.then ]
  %va.0 = phi i8* [ %8, %if.else ], [ %3, %if.then ]
  %add.ptr = getelementptr i8, i8* %va.0, i64 %hwirq.0
  %add.ptr11 = getelementptr i8, i8* %add.ptr, i64 -8192
  %10 = load i8, i8* %add.ptr11, align 1
  %and15 = and i8 %10, %neg13.pre-phi
  %11 = or i8 %and15, %set
  %or2041 = or i8 %11, 2
  store i8 %or2041, i8* %add.ptr11, align 1
  %12 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %flags = getelementptr inbounds %struct.rdists, %struct.rdists* %12, i64 0, i32 3
  %13 = load i64, i64* %flags, align 8
  %and22 = and i64 %13, 1
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %if.else25, label %if.then24

if.then24:                                        ; preds = %if.end
  %14 = ptrtoint i8* %add.ptr11 to i64
  %add = add i64 %14, 1
  call void @dcache_clean_inval_poc(i64 noundef %14, i64 noundef %add) #27
  br label %if.end26

if.else25:                                        ; preds = %if.end
  call void asm sideeffect "dsb ishst", "~{memory}"() #25, !srcloc !43
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @direct_lpi_inv(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %call = call fastcc %struct.its_vlpi_map* @get_vlpi_map(%struct.irq_data* noundef %d) #24
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #25
  store i64 0, i64* %flags, align 8, !annotation !17
  %tobool.not = icmp eq %struct.its_vlpi_map* %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %its = getelementptr inbounds i8, i8* %call1, i64 16
  %1 = bitcast i8* %its to %struct.its_node**
  %2 = load %struct.its_node*, %struct.its_node** %1, align 8
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %2, i64 0, i32 12
  %3 = load i64, i64* %typer, align 8
  %and = and i64 %3, 1099511627776
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.then13, label %if.end, !prof !18

if.then13:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 1441; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !44
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then
  %vpe = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 1
  %4 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vpe_id = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %4, i64 0, i32 10
  %5 = load i16, i16* %vpe_id, align 2
  %conv43 = zext i16 %5 to i64
  %shl = shl nuw nsw i64 %conv43, 32
  %vintid = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 2
  %6 = load i32, i32* %vintid, align 8
  %conv70 = zext i32 %6 to i64
  %or = or i64 %shl, %conv70
  %or73 = or i64 %or, -9223372036854775808
  br label %if.end74

if.else:                                          ; preds = %entry
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %7 = load i64, i64* %hwirq, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.end
  %val.0 = phi i64 [ %or73, %if.end ], [ %7, %if.else ]
  %call75 = call fastcc i32 @irq_to_cpuid_lock(%struct.irq_data* noundef %d, i64* noundef nonnull %flags) #24
  %8 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %8, i64 0, i32 0
  %9 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %10 = ptrtoint %struct.anon.77* %9 to i64
  %11 = zext i32 %call75 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %11
  %12 = load i64, i64* %arrayidx, align 8
  %add = add i64 %12, %10
  %13 = inttoptr i64 %add to %struct.anon.77*
  %rd_lock = getelementptr inbounds %struct.anon.77, %struct.anon.77* %13, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rd_lock) #24
  %14 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist87 = getelementptr inbounds %struct.rdists, %struct.rdists* %14, i64 0, i32 0
  %15 = load %struct.anon.77*, %struct.anon.77** %rdist87, align 8
  %16 = ptrtoint %struct.anon.77* %15 to i64
  %17 = load i64, i64* %arrayidx, align 8
  %add91 = add i64 %17, %16
  %18 = inttoptr i64 %add91 to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %18, i64 0, i32 1
  %19 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %19, i64 160
  call fastcc void @__raw_writeq(i64 noundef %val.0, i8* noundef %add.ptr) #24
  call fastcc void @wait_for_syncr(i8* noundef %19) #24
  %20 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist98 = getelementptr inbounds %struct.rdists, %struct.rdists* %20, i64 0, i32 0
  %21 = load %struct.anon.77*, %struct.anon.77** %rdist98, align 8
  %22 = ptrtoint %struct.anon.77* %21 to i64
  %23 = load i64, i64* %arrayidx, align 8
  %add102 = add i64 %23, %22
  %24 = inttoptr i64 %add102 to %struct.anon.77*
  %rd_lock103 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %24, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rd_lock103) #24
  %25 = load i64, i64* %flags, align 8
  call fastcc void @irq_to_cpuid_unlock(%struct.irq_data* noundef %d, i64 noundef %25) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_send_inv(%struct.its_device* noundef %dev, i32 noundef %event_id) #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false), !annotation !17
  %dev1 = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  store %struct.its_device* %dev, %struct.its_device** %dev1, align 8
  %event_id3 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast %struct.its_device** %event_id3 to i32*
  store i32 %event_id, i32* %3, align 8
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 1
  %4 = load %struct.its_node*, %struct.its_node** %its, align 8
  call fastcc void @its_send_single_command(%struct.its_node* noundef %4, %struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_inv_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_vinv(%struct.its_device* noundef %dev, i32 noundef %event_id) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false), !annotation !17
  %dev1 = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  store %struct.its_device* %dev, %struct.its_device** %dev1, align 8
  %event_id3 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast %struct.its_device** %event_id3 to i32*
  store i32 %event_id, i32* %3, align 8
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 1
  %4 = load %struct.its_node*, %struct.its_node** %its, align 8
  call fastcc void @its_send_single_vcommand(%struct.its_node* noundef %4, %struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_vinv_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.its_vlpi_map* @get_vlpi_map(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #24
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call1 to %struct.its_device*
  %call2 = call fastcc i32 @its_get_event_id(%struct.irq_data* noundef %d) #24
  %call3 = call fastcc %struct.its_vlpi_map* @dev_event_to_vlpi_map(%struct.its_device* noundef %0, i32 noundef %call2) #24
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.its_vlpi_map* [ %call3, %if.then ], [ null, %entry ]
  ret %struct.its_vlpi_map* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_to_cpuid_lock(%struct.irq_data* nocapture noundef readonly %d, i64* nocapture noundef writeonly %flags) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.its_vlpi_map* @get_vlpi_map(%struct.irq_data* noundef %d) #24
  %tobool.not = icmp eq %struct.its_vlpi_map* %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vpe = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 1
  %0 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %call1 = call fastcc i32 @vpe_to_cpuid_lock(%struct.its_vpe* noundef %0, i64* noundef %flags) #24
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %col_map = getelementptr inbounds i8, i8* %call2, i64 32
  %1 = bitcast i8* %col_map to i16**
  %2 = load i16*, i16** %1, align 8
  %call3 = call fastcc i32 @its_get_event_id(%struct.irq_data* noundef %d) #24
  %idxprom = zext i32 %call3 to i64
  %arrayidx = getelementptr i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  store i64 0, i64* %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cpu.0 = phi i32 [ %call1, %if.then ], [ %conv, %if.else ]
  ret i32 %cpu.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wait_for_syncr(i8* noundef %rdbase) unnamed_addr #0 {
entry:
  %add.ptr = getelementptr i8, i8* %rdbase, i64 192
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #25, !srcloc !8
  %and2 = and i32 %0, 1
  %tobool.not3 = icmp eq i32 %and2, 0
  br i1 %tobool.not3, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  call fastcc void @cpu_relax() #24
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #25, !srcloc !8
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_to_cpuid_unlock(%struct.irq_data* nocapture noundef readonly %d, i64 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.its_vlpi_map* @get_vlpi_map(%struct.irq_data* noundef %d) #24
  %tobool.not = icmp eq %struct.its_vlpi_map* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %vpe = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 1
  %0 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  call fastcc void @vpe_to_cpuid_unlock(%struct.its_vpe* noundef %0, i64 noundef %flags) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vpe_to_cpuid_lock(%struct.its_vpe* noundef %vpe, i64* nocapture noundef writeonly %flags) unnamed_addr #0 {
entry:
  %vpe_lock = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 8
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %vpe_lock) #24
  store i64 %call, i64* %flags, align 8
  %col_idx = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 9
  %0 = load i16, i16* %col_idx, align 4
  %conv1 = zext i16 %0 to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vpe_to_cpuid_unlock(%struct.its_vpe* noundef %vpe, i64 noundef %flags) unnamed_addr #0 {
entry:
  %vpe_lock = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %vpe_lock, i64 noundef %flags) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_collection* @its_build_inv_cmd(%struct.its_node* nocapture noundef readnone %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %dev = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  %0 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %event_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %1 = bitcast %struct.its_device** %event_id to i32*
  %2 = load i32, i32* %1, align 8
  %call = call fastcc %struct.its_collection* @dev_event_to_col(%struct.its_device* noundef %0, i32 noundef %2) #24
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 12) #24
  %3 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %3, i64 0, i32 5
  %4 = load i32, i32* %device_id, align 4
  call fastcc void @its_encode_devid(%struct.its_cmd_block* noundef %cmd, i32 noundef %4) #24
  %5 = load i32, i32* %1, align 8
  call fastcc void @its_encode_event_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %5) #24
  %call6 = call fastcc %struct.its_collection* @valid_col(%struct.its_collection* noundef %call) #24
  ret %struct.its_collection* %call6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.its_collection* @dev_event_to_col(%struct.its_device* nocapture noundef readonly %its_dev, i32 noundef %event) unnamed_addr #4 {
entry:
  %its1 = getelementptr inbounds %struct.its_device, %struct.its_device* %its_dev, i64 0, i32 1
  %0 = load %struct.its_node*, %struct.its_node** %its1, align 8
  %collections = getelementptr inbounds %struct.its_node, %struct.its_node* %0, i64 0, i32 9
  %1 = load %struct.its_collection*, %struct.its_collection** %collections, align 8
  %col_map = getelementptr inbounds %struct.its_device, %struct.its_device* %its_dev, i64 0, i32 2, i32 1
  %2 = load i16*, i16** %col_map, align 8
  %idxprom = zext i32 %event to i64
  %arrayidx = getelementptr i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %4 = zext i16 %3 to i64
  %add.ptr = getelementptr %struct.its_collection, %struct.its_collection* %1, i64 %4
  ret %struct.its_collection* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_vpe* @its_build_vinv_cmd(%struct.its_node* nocapture noundef readonly %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %dev = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  %0 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %event_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %1 = bitcast %struct.its_device** %event_id to i32*
  %2 = load i32, i32* %1, align 8
  %call = call fastcc %struct.its_vlpi_map* @dev_event_to_vlpi_map(%struct.its_device* noundef %0, i32 noundef %2) #24
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 12) #24
  %3 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %3, i64 0, i32 5
  %4 = load i32, i32* %device_id, align 4
  call fastcc void @its_encode_devid(%struct.its_cmd_block* noundef %cmd, i32 noundef %4) #24
  %5 = load i32, i32* %1, align 8
  call fastcc void @its_encode_event_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %5) #24
  %vpe = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 1
  %6 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %call6 = call fastcc %struct.its_vpe* @valid_vpe(%struct.its_node* noundef %its, %struct.its_vpe* noundef %6) #24
  ret %struct.its_vpe* %call6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_dec_lpi_count(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @irqd_affinity_is_managed(%struct.irq_data* noundef %d) #24
  %0 = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %0
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.cpu_lpi_count* @cpu_lpi_count to i64)
  %2 = inttoptr i64 %add to %struct.cpu_lpi_count*
  %unmanaged = getelementptr inbounds %struct.cpu_lpi_count, %struct.cpu_lpi_count* %2, i64 0, i32 1
  %managed = getelementptr inbounds %struct.cpu_lpi_count, %struct.cpu_lpi_count* %2, i64 0, i32 0
  %unmanaged.sink = select i1 %call, %struct.atomic_t* %managed, %struct.atomic_t* %unmanaged
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %unmanaged.sink) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_select_cpu(%struct.irq_data* nocapture noundef readonly %d, %struct.cpumask* noundef %aff_mask) unnamed_addr #0 {
entry:
  %tmpmask = alloca [1 x %struct.cpumask], align 8
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast [1 x %struct.cpumask]* %tmpmask to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !17
  %its = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %its to %struct.its_node**
  %2 = load %struct.its_node*, %struct.its_node** %1, align 8
  %numa_node = getelementptr inbounds %struct.its_node, %struct.its_node* %2, i64 0, i32 19
  %3 = load i32, i32* %numa_node, align 8
  %call2 = call fastcc i1 @irqd_affinity_is_managed(%struct.irq_data* noundef %d) #24
  br i1 %call2, label %if.else, label %if.then3

if.then3:                                         ; preds = %entry
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %if.end17, label %if.then4

if.then4:                                         ; preds = %if.then3
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %tmpmask, i64 0, i64 0
  call fastcc void @cpumask_and(%struct.cpumask* noundef nonnull %arraydecay, %struct.cpumask* noundef nonnull @__cpu_online_mask, %struct.cpumask* noundef %aff_mask) #24
  call fastcc void @cpumask_and(%struct.cpumask* noundef nonnull %arraydecay, %struct.cpumask* noundef nonnull %arraydecay, %struct.cpumask* noundef nonnull @__cpu_online_mask) #24
  %call10 = call fastcc i32 @cpumask_pick_least_loaded(%struct.irq_data* noundef %d, %struct.cpumask* noundef nonnull %arraydecay) #24
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp11 = icmp ult i32 %call10, %4
  br i1 %cmp11, label %out, label %if.end13

if.end13:                                         ; preds = %if.then4
  %5 = load %struct.its_node*, %struct.its_node** %1, align 8
  %flags = getelementptr inbounds %struct.its_node, %struct.its_node* %5, i64 0, i32 17
  %6 = load i64, i64* %flags, align 8
  %and = and i64 %6, 4
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end17, label %out

if.end17:                                         ; preds = %if.end13, %if.then3
  %arraydecay18 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %tmpmask, i64 0, i64 0
  call fastcc void @cpumask_and(%struct.cpumask* noundef nonnull %arraydecay18, %struct.cpumask* noundef %aff_mask, %struct.cpumask* noundef nonnull @__cpu_online_mask) #24
  %call21 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef nonnull %arraydecay18) #24
  br i1 %call21, label %if.then22, label %out.sink.split

if.then22:                                        ; preds = %if.end17
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull %arraydecay18, %struct.cpumask* noundef nonnull @__cpu_online_mask) #24
  br label %out.sink.split

if.else:                                          ; preds = %entry
  %arraydecay27 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %tmpmask, i64 0, i64 0
  %call28 = call fastcc %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* noundef %d) #24
  call fastcc void @cpumask_and(%struct.cpumask* noundef nonnull %arraydecay27, %struct.cpumask* noundef %call28, %struct.cpumask* noundef nonnull @__cpu_online_mask) #24
  %7 = load %struct.its_node*, %struct.its_node** %1, align 8
  %flags31 = getelementptr inbounds %struct.its_node, %struct.its_node* %7, i64 0, i32 17
  %8 = load i64, i64* %flags31, align 8
  %and32 = and i64 %8, 4
  %tobool33 = icmp ne i64 %and32, 0
  %cmp34 = icmp ne i32 %3, -1
  %or.cond = select i1 %tobool33, i1 %cmp34, i1 false
  br i1 %or.cond, label %if.then35, label %out.sink.split

if.then35:                                        ; preds = %if.else
  call fastcc void @cpumask_and(%struct.cpumask* noundef nonnull %arraydecay27, %struct.cpumask* noundef nonnull %arraydecay27, %struct.cpumask* noundef nonnull @__cpu_online_mask) #24
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.else, %if.then35, %if.end17, %if.then22
  %arraydecay18.sink = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %tmpmask, i64 0, i64 0
  %call26 = call fastcc i32 @cpumask_pick_least_loaded(%struct.irq_data* noundef %d, %struct.cpumask* noundef nonnull %arraydecay18.sink) #24
  br label %out

out:                                              ; preds = %out.sink.split, %if.end13, %if.then4
  %cpu.0 = phi i32 [ %call10, %if.then4 ], [ %call10, %if.end13 ], [ %call26, %out.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret i32 %cpu.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_pick_least_loaded(%struct.irq_data* nocapture noundef readonly %d, %struct.cpumask* noundef %cpu_mask) unnamed_addr #19 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call12 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %cpu_mask) #29
  %cmp13 = icmp ult i32 %call12, %0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call16 = phi i32 [ %call, %for.body ], [ %call12, %entry ]
  %count.015 = phi i32 [ %spec.select11, %for.body ], [ 2147483647, %entry ]
  %cpu.014 = phi i32 [ %spec.select, %for.body ], [ %0, %entry ]
  %call1 = call fastcc i32 @its_read_lpi_count(%struct.irq_data* noundef %d, i32 noundef %call16) #24
  %cmp2 = icmp slt i32 %call1, %count.015
  %spec.select = select i1 %cmp2, i32 %call16, i32 %cpu.014
  %spec.select11 = select i1 %cmp2, i32 %call1, i32 %count.015
  %call = call i32 @cpumask_next(i32 noundef %call16, %struct.cpumask* noundef %cpu_mask) #29
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %cpu.0.lcssa = phi i32 [ %0, %entry ], [ %spec.select, %for.body ]
  ret i32 %cpu.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_movi(%struct.its_device* noundef %dev, %struct.its_collection* noundef %col, i32 noundef %id) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false), !annotation !17
  %dev1 = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  store %struct.its_device* %dev, %struct.its_device** %dev1, align 8
  %col3 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast %struct.its_device** %col3 to %struct.its_collection**
  store %struct.its_collection* %col, %struct.its_collection** %3, align 8
  %4 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  store i32 %id, i32* %4, align 8
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 1
  %5 = load %struct.its_node*, %struct.its_node** %its, align 8
  call fastcc void @its_send_single_command(%struct.its_node* noundef %5, %struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_movi_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_data_update_effective_affinity(%struct.irq_data* nocapture noundef readonly %d, %struct.cpumask* noundef %m) unnamed_addr #0 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %arraydecay = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 4, i64 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %m) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #11 {
entry:
  %rem = and i32 %cpu, 63
  %add = add nuw nsw i32 %rem, 1
  %idxprom = zext i32 %add to i64
  %div = lshr i32 %cpu, 6
  %idx.ext = zext i32 %div to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr [65 x [4 x i64]], [65 x [4 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, i64 %idx.neg
  %0 = bitcast i64* %add.ptr to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_inc_lpi_count(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @irqd_affinity_is_managed(%struct.irq_data* noundef %d) #24
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_lpi_count* @cpu_lpi_count to i64)
  %1 = inttoptr i64 %add to %struct.cpu_lpi_count*
  %unmanaged = getelementptr inbounds %struct.cpu_lpi_count, %struct.cpu_lpi_count* %1, i64 0, i32 1
  %managed = getelementptr inbounds %struct.cpu_lpi_count, %struct.cpu_lpi_count* %1, i64 0, i32 0
  %unmanaged.sink = select i1 %call, %struct.atomic_t* %managed, %struct.atomic_t* %unmanaged
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %unmanaged.sink) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_affinity_is_managed(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 2097152
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #25, !srcloc !45
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_and(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay4 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  call fastcc void @bitmap_and(i64* noundef %arraydecay, i64* noundef %arraydecay2, i64* noundef %arraydecay4) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_empty(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i1 @bitmap_empty(i64* noundef %arraydecay, i32 noundef 256) #24
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay, i64* noundef %arraydecay2) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %arraydecay = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 3, i64 0
  ret %struct.cpumask* %arraydecay
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_and(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_and(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bitmap_empty(i64* noundef %src, i32 noundef %nbits) unnamed_addr #0 {
entry:
  %conv = zext i32 %nbits to i64
  %call = call fastcc i64 @find_first_bit(i64* noundef %src, i64 noundef %conv) #24
  %cmp5 = icmp eq i64 %call, %conv
  ret i1 %cmp5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef %size) #27
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 32) #27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @its_read_lpi_count(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %cpu) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @irqd_affinity_is_managed(%struct.irq_data* noundef %d) #24
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_lpi_count* @cpu_lpi_count to i64)
  %1 = inttoptr i64 %add to %struct.cpu_lpi_count*
  %counter.i = getelementptr inbounds %struct.cpu_lpi_count, %struct.cpu_lpi_count* %1, i64 0, i32 0, i32 0
  %counter.i18 = getelementptr inbounds %struct.cpu_lpi_count, %struct.cpu_lpi_count* %1, i64 0, i32 1, i32 0
  %retval.0.in = select i1 %call, i32* %counter.i, i32* %counter.i18
  %retval.0 = load volatile i32, i32* %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_collection* @its_build_movi_cmd(%struct.its_node* nocapture noundef readnone %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %dev = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  %0 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  %2 = load i32, i32* %1, align 8
  %call = call fastcc %struct.its_collection* @dev_event_to_col(%struct.its_device* noundef %0, i32 noundef %2) #24
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 1) #24
  %3 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %3, i64 0, i32 5
  %4 = load i32, i32* %device_id, align 4
  call fastcc void @its_encode_devid(%struct.its_cmd_block* noundef %cmd, i32 noundef %4) #24
  %5 = load i32, i32* %1, align 8
  call fastcc void @its_encode_event_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %5) #24
  %col7 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %6 = bitcast %struct.its_device** %col7 to %struct.its_collection**
  %7 = load %struct.its_collection*, %struct.its_collection** %6, align 8
  %col_id = getelementptr inbounds %struct.its_collection, %struct.its_collection* %7, i64 0, i32 1
  %8 = load i16, i16* %col_id, align 8
  call fastcc void @its_encode_collection(%struct.its_cmd_block* noundef %cmd, i16 noundef %8) #24
  %call8 = call fastcc %struct.its_collection* @valid_col(%struct.its_collection* noundef %call) #24
  ret %struct.its_collection* %call8
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #25, !srcloc !46
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_vint(%struct.its_device* noundef %dev, i32 noundef %event_id) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false), !annotation !17
  %dev1 = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  store %struct.its_device* %dev, %struct.its_device** %dev1, align 8
  %event_id3 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast %struct.its_device** %event_id3 to i32*
  store i32 %event_id, i32* %3, align 8
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 1
  %4 = load %struct.its_node*, %struct.its_node** %its, align 8
  call fastcc void @its_send_single_vcommand(%struct.its_node* noundef %4, %struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_vint_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_vclear(%struct.its_device* noundef %dev, i32 noundef %event_id) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false), !annotation !17
  %dev1 = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  store %struct.its_device* %dev, %struct.its_device** %dev1, align 8
  %event_id3 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast %struct.its_device** %event_id3 to i32*
  store i32 %event_id, i32* %3, align 8
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 1
  %4 = load %struct.its_node*, %struct.its_node** %its, align 8
  call fastcc void @its_send_single_vcommand(%struct.its_node* noundef %4, %struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_vclear_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_send_int(%struct.its_device* noundef %dev, i32 noundef %event_id) #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false), !annotation !17
  %dev1 = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  store %struct.its_device* %dev, %struct.its_device** %dev1, align 8
  %event_id3 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast %struct.its_device** %event_id3 to i32*
  store i32 %event_id, i32* %3, align 8
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 1
  %4 = load %struct.its_node*, %struct.its_node** %its, align 8
  call fastcc void @its_send_single_command(%struct.its_node* noundef %4, %struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_int_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_send_clear(%struct.its_device* noundef %dev, i32 noundef %event_id) #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false), !annotation !17
  %dev1 = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  store %struct.its_device* %dev, %struct.its_device** %dev1, align 8
  %event_id3 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast %struct.its_device** %event_id3 to i32*
  store i32 %event_id, i32* %3, align 8
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 1
  %4 = load %struct.its_node*, %struct.its_node** %its, align 8
  call fastcc void @its_send_single_command(%struct.its_node* noundef %4, %struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_clear_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_vpe* @its_build_vint_cmd(%struct.its_node* nocapture noundef readonly %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %dev = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  %0 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %event_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %1 = bitcast %struct.its_device** %event_id to i32*
  %2 = load i32, i32* %1, align 8
  %call = call fastcc %struct.its_vlpi_map* @dev_event_to_vlpi_map(%struct.its_device* noundef %0, i32 noundef %2) #24
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 3) #24
  %3 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %3, i64 0, i32 5
  %4 = load i32, i32* %device_id, align 4
  call fastcc void @its_encode_devid(%struct.its_cmd_block* noundef %cmd, i32 noundef %4) #24
  %5 = load i32, i32* %1, align 8
  call fastcc void @its_encode_event_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %5) #24
  %vpe = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 1
  %6 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %call6 = call fastcc %struct.its_vpe* @valid_vpe(%struct.its_node* noundef %its, %struct.its_vpe* noundef %6) #24
  ret %struct.its_vpe* %call6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_vpe* @its_build_vclear_cmd(%struct.its_node* nocapture noundef readonly %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %dev = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  %0 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %event_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %1 = bitcast %struct.its_device** %event_id to i32*
  %2 = load i32, i32* %1, align 8
  %call = call fastcc %struct.its_vlpi_map* @dev_event_to_vlpi_map(%struct.its_device* noundef %0, i32 noundef %2) #24
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 4) #24
  %3 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %3, i64 0, i32 5
  %4 = load i32, i32* %device_id, align 4
  call fastcc void @its_encode_devid(%struct.its_cmd_block* noundef %cmd, i32 noundef %4) #24
  %5 = load i32, i32* %1, align 8
  call fastcc void @its_encode_event_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %5) #24
  %vpe = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 1
  %6 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %call6 = call fastcc %struct.its_vpe* @valid_vpe(%struct.its_node* noundef %its, %struct.its_vpe* noundef %6) #24
  ret %struct.its_vpe* %call6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_collection* @its_build_int_cmd(%struct.its_node* nocapture noundef readnone %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %dev = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  %0 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %event_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %1 = bitcast %struct.its_device** %event_id to i32*
  %2 = load i32, i32* %1, align 8
  %call = call fastcc %struct.its_collection* @dev_event_to_col(%struct.its_device* noundef %0, i32 noundef %2) #24
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 3) #24
  %3 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %3, i64 0, i32 5
  %4 = load i32, i32* %device_id, align 4
  call fastcc void @its_encode_devid(%struct.its_cmd_block* noundef %cmd, i32 noundef %4) #24
  %5 = load i32, i32* %1, align 8
  call fastcc void @its_encode_event_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %5) #24
  %call6 = call fastcc %struct.its_collection* @valid_col(%struct.its_collection* noundef %call) #24
  ret %struct.its_collection* %call6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_collection* @its_build_clear_cmd(%struct.its_node* nocapture noundef readnone %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %dev = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  %0 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %event_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %1 = bitcast %struct.its_device** %event_id to i32*
  %2 = load i32, i32* %1, align 8
  %call = call fastcc %struct.its_collection* @dev_event_to_col(%struct.its_device* noundef %0, i32 noundef %2) #24
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 4) #24
  %3 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %3, i64 0, i32 5
  %4 = load i32, i32* %device_id, align 4
  call fastcc void @its_encode_devid(%struct.its_cmd_block* noundef %cmd, i32 noundef %4) #24
  %5 = load i32, i32* %1, align 8
  call fastcc void @its_encode_event_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %5) #24
  %call6 = call fastcc %struct.its_collection* @valid_col(%struct.its_collection* noundef %call) #24
  ret %struct.its_collection* %call6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_vlpi_unmap(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_device*
  %call1 = call fastcc i32 @its_get_event_id(%struct.irq_data* noundef %d) #24
  %vlpi_lock = getelementptr inbounds i8, i8* %call, i64 52
  %1 = bitcast i8* %vlpi_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %1) #24
  %vm = getelementptr inbounds i8, i8* %call, i64 56
  %2 = bitcast i8* %vm to %struct.its_vm**
  %3 = load %struct.its_vm*, %struct.its_vm** %2, align 8
  %tobool.not = icmp eq %struct.its_vm* %3, null
  br i1 %tobool.not, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #24
  br i1 %call3, label %if.end, label %out

if.end:                                           ; preds = %lor.lhs.false
  call fastcc void @its_send_discard(%struct.its_device* noundef %0, i32 noundef %call1) #24
  call fastcc void @irqd_clr_forwarded_to_vcpu(%struct.irq_data* noundef %d) #24
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %4 = load i64, i64* %hwirq, align 8
  %conv = trunc i64 %4 to i32
  call fastcc void @its_send_mapti(%struct.its_device* noundef %0, i32 noundef %conv, i32 noundef %call1) #24
  call fastcc void @lpi_update_config(%struct.irq_data* noundef %d, i8 noundef -1, i8 noundef -93) #24
  %its = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %its to %struct.its_node**
  %6 = load %struct.its_node*, %struct.its_node** %5, align 8
  %7 = load %struct.its_vm*, %struct.its_vm** %2, align 8
  call fastcc void @its_unmap_vm(%struct.its_node* noundef %6, %struct.its_vm* noundef %7) #24
  %nr_vlpis = getelementptr inbounds i8, i8* %call, i64 72
  %8 = bitcast i8* %nr_vlpis to i32*
  %9 = load i32, i32* %8, align 8
  %dec = add i32 %9, -1
  store i32 %dec, i32* %8, align 8
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %if.then8, label %out

if.then8:                                         ; preds = %if.end
  store %struct.its_vm* null, %struct.its_vm** %2, align 8
  %vlpi_maps = getelementptr inbounds i8, i8* %call, i64 64
  %10 = bitcast i8* %vlpi_maps to i8**
  %11 = load i8*, i8** %10, align 8
  call void @kfree(i8* noundef %11) #27
  br label %out

out:                                              ; preds = %entry, %lor.lhs.false, %if.end, %if.then8
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %if.then8 ], [ -22, %lor.lhs.false ], [ -22, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %1) #24
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_vlpi_map(%struct.irq_data* nocapture noundef readonly %d, %struct.its_cmd_info* nocapture noundef readonly %info) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_device*
  %call1 = call fastcc i32 @its_get_event_id(%struct.irq_data* noundef %d) #24
  %map = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 1, i32 0
  %1 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %map, align 8
  %tobool.not = icmp eq %struct.its_vlpi_map* %1, null
  br i1 %tobool.not, label %cleanup36, label %if.end

if.end:                                           ; preds = %entry
  %vlpi_lock = getelementptr inbounds i8, i8* %call, i64 52
  %2 = bitcast i8* %vlpi_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %2) #24
  %vm = getelementptr inbounds i8, i8* %call, i64 56
  %3 = bitcast i8* %vm to %struct.its_vm**
  %4 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %tobool3.not = icmp eq %struct.its_vm* %4, null
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %nr_lpis = getelementptr inbounds i8, i8* %call, i64 48
  %5 = bitcast i8* %nr_lpis to i32*
  %6 = load i32, i32* %5, align 8
  %conv = sext i32 %6 to i64
  %call6 = call fastcc i8* @kcalloc(i64 noundef %conv, i64 noundef 24, i32 noundef 2592) #24
  %tobool7.not = icmp eq i8* %call6, null
  br i1 %tobool7.not, label %out, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then4
  %7 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %map, align 8
  %vm11 = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %7, i64 0, i32 0
  %8 = load %struct.its_vm*, %struct.its_vm** %vm11, align 8
  store %struct.its_vm* %8, %struct.its_vm** %3, align 8
  %vlpi_maps = getelementptr inbounds i8, i8* %call, i64 64
  %9 = bitcast i8* %vlpi_maps to i8**
  store i8* %call6, i8** %9, align 8
  %10 = bitcast i8* %call6 to %struct.its_vlpi_map*
  %.phi.trans.insert73 = bitcast %struct.its_vlpi_map** %map to i8**
  %.pre74 = load i8*, i8** %.phi.trans.insert73, align 8
  br label %if.end22

if.else:                                          ; preds = %if.end
  %11 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %map, align 8
  %vm18 = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %11, i64 0, i32 0
  %12 = load %struct.its_vm*, %struct.its_vm** %vm18, align 8
  %cmp.not = icmp eq %struct.its_vm* %4, %12
  br i1 %cmp.not, label %if.else.if.end22_crit_edge, label %out

if.else.if.end22_crit_edge:                       ; preds = %if.else
  %13 = bitcast %struct.its_vlpi_map* %11 to i8*
  %vlpi_maps24.phi.trans.insert = getelementptr inbounds i8, i8* %call, i64 64
  %.phi.trans.insert = bitcast i8* %vlpi_maps24.phi.trans.insert to %struct.its_vlpi_map**
  %.pre = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %.phi.trans.insert, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %cleanup.thread
  %14 = phi i8* [ %13, %if.else.if.end22_crit_edge ], [ %.pre74, %cleanup.thread ]
  %15 = phi %struct.its_vlpi_map* [ %.pre, %if.else.if.end22_crit_edge ], [ %10, %cleanup.thread ]
  %idxprom = zext i32 %call1 to i64
  %arrayidx = getelementptr %struct.its_vlpi_map, %struct.its_vlpi_map* %15, i64 %idxprom
  %16 = bitcast %struct.its_vlpi_map* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(24) %16, i8* noundef align 8 dereferenceable(24) %14, i64 24, i1 false)
  %call26 = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #24
  br i1 %call26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.end22
  call fastcc void @its_send_vmovi(%struct.its_device* noundef %0, i32 noundef %call1) #24
  br label %out

if.else28:                                        ; preds = %if.end22
  %its = getelementptr inbounds i8, i8* %call, i64 16
  %17 = bitcast i8* %its to %struct.its_node**
  %18 = load %struct.its_node*, %struct.its_node** %17, align 8
  %19 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %map, align 8
  %vm30 = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %19, i64 0, i32 0
  %20 = load %struct.its_vm*, %struct.its_vm** %vm30, align 8
  call fastcc void @its_map_vm(%struct.its_node* noundef %18, %struct.its_vm* noundef %20) #24
  call fastcc void @irqd_set_forwarded_to_vcpu(%struct.irq_data* noundef %d) #24
  %21 = load %struct.its_vlpi_map*, %struct.its_vlpi_map** %map, align 8
  %properties = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %21, i64 0, i32 3
  %22 = load i8, i8* %properties, align 4
  call fastcc void @lpi_write_config(%struct.irq_data* noundef %d, i8 noundef -1, i8 noundef %22) #24
  call fastcc void @its_send_discard(%struct.its_device* noundef %0, i32 noundef %call1) #24
  call fastcc void @its_send_vmapti(%struct.its_device* noundef %0, i32 noundef %call1) #24
  %nr_vlpis = getelementptr inbounds i8, i8* %call, i64 72
  %23 = bitcast i8* %nr_vlpis to i32*
  %24 = load i32, i32* %23, align 8
  %inc = add i32 %24, 1
  store i32 %inc, i32* %23, align 8
  br label %out

out:                                              ; preds = %if.then4, %if.else, %if.then27, %if.else28
  %ret.2 = phi i32 [ 0, %if.then27 ], [ 0, %if.else28 ], [ -22, %if.else ], [ -12, %if.then4 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %2) #24
  br label %cleanup36

cleanup36:                                        ; preds = %entry, %out
  %retval.0 = phi i32 [ %ret.2, %out ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_vlpi_get(%struct.irq_data* nocapture noundef readonly %d, %struct.its_cmd_info* nocapture noundef readonly %info) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %vlpi_lock = getelementptr inbounds i8, i8* %call, i64 52
  %0 = bitcast i8* %vlpi_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %0) #24
  %call1 = call fastcc %struct.its_vlpi_map* @get_vlpi_map(%struct.irq_data* noundef %d) #24
  %vm = getelementptr inbounds i8, i8* %call, i64 56
  %1 = bitcast i8* %vm to %struct.its_vm**
  %2 = load %struct.its_vm*, %struct.its_vm** %1, align 8
  %tobool = icmp ne %struct.its_vm* %2, null
  %tobool3 = icmp ne %struct.its_vlpi_map* %call1, null
  %or.cond = select i1 %tobool, i1 %tobool3, i1 false
  br i1 %or.cond, label %if.end, label %out

if.end:                                           ; preds = %entry
  %map4 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 1, i32 0
  %3 = bitcast %struct.its_vlpi_map** %map4 to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast %struct.its_vlpi_map* %call1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(24) %4, i8* noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %out

out:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %0) #24
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_vlpi_prop_update(%struct.irq_data* nocapture noundef readonly %d, %struct.its_cmd_info* nocapture noundef readonly %info) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %vm = getelementptr inbounds i8, i8* %call, i64 56
  %0 = bitcast i8* %vm to %struct.its_vm**
  %1 = load %struct.its_vm*, %struct.its_vm** %0, align 8
  %tobool.not = icmp eq %struct.its_vm* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #24
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cmd_type = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 0
  %2 = load i32, i32* %cmd_type, align 8
  %cmp = icmp eq i32 %2, 3
  %3 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 1
  %config = bitcast %union.anon.102* %3 to i8*
  %4 = load i8, i8* %config, align 8
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call fastcc void @lpi_update_config(%struct.irq_data* noundef %d, i8 noundef -1, i8 noundef %4) #24
  br label %if.end4

if.else:                                          ; preds = %if.end
  call fastcc void @lpi_write_config(%struct.irq_data* noundef %d, i8 noundef -1, i8 noundef %4) #24
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %5 = load i8, i8* %config, align 8
  %6 = and i8 %5, 1
  %tobool6 = icmp ne i8 %6, 0
  call fastcc void @its_vlpi_set_doorbell(%struct.irq_data* noundef %d, i1 noundef %tobool6) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %lor.lhs.false ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_discard(%struct.its_device* noundef %dev, i32 noundef %id) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false), !annotation !17
  %dev1 = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  store %struct.its_device* %dev, %struct.its_device** %dev1, align 8
  %event_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast %struct.its_device** %event_id to i32*
  store i32 %id, i32* %3, align 8
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 1
  %4 = load %struct.its_node*, %struct.its_node** %its, align 8
  call fastcc void @its_send_single_command(%struct.its_node* noundef %4, %struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_discard_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_clr_forwarded_to_vcpu(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #15 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, -1048577
  store i32 %and, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_mapti(%struct.its_device* noundef %dev, i32 noundef %irq_id, i32 noundef %id) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false), !annotation !17
  %its_mapti_cmd = bitcast %struct.its_cmd_desc* %desc to %struct.anon.89*
  %dev1 = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  store %struct.its_device* %dev, %struct.its_device** %dev1, align 8
  %phys_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast %struct.its_device** %phys_id to i32*
  store i32 %irq_id, i32* %3, align 8
  %event_id = getelementptr inbounds %struct.anon.89, %struct.anon.89* %its_mapti_cmd, i64 0, i32 2
  store i32 %id, i32* %event_id, align 4
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 1
  %4 = load %struct.its_node*, %struct.its_node** %its, align 8
  call fastcc void @its_send_single_command(%struct.its_node* noundef %4, %struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_mapti_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_unmap_vm(%struct.its_node* noundef %its, %struct.its_vm* nocapture noundef %vm) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @gic_requires_eager_mapping() #24
  br i1 %call, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call1 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef nonnull @vmovp_lock) #24
  %list_nr = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 18
  %0 = load i64, i64* %list_nr, align 8
  %arrayidx = getelementptr %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 8, i64 %0
  %1 = load i32, i32* %arrayidx, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %arrayidx, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.body7

for.cond.preheader:                               ; preds = %do.body
  %nr_vpes = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 4
  %2 = load i32, i32* %nr_vpes, align 8
  %cmp322 = icmp sgt i32 %2, 0
  br i1 %cmp322, label %for.body.lr.ph, label %do.body7

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vpes = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %3 = load %struct.its_vpe**, %struct.its_vpe*** %vpes, align 8
  %arrayidx5 = getelementptr %struct.its_vpe*, %struct.its_vpe** %3, i64 %indvars.iv
  %4 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx5, align 8
  call fastcc void @its_send_vmapp(%struct.its_node* noundef %its, %struct.its_vpe* noundef %4, i1 noundef false) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, i32* %nr_vpes, align 8
  %6 = sext i32 %5 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp3, label %for.body, label %do.body7

do.body7:                                         ; preds = %for.body, %for.cond.preheader, %do.body
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef nonnull @vmovp_lock, i64 noundef %call1) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_collection* @its_build_discard_cmd(%struct.its_node* nocapture noundef readnone %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %dev = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  %0 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %event_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %1 = bitcast %struct.its_device** %event_id to i32*
  %2 = load i32, i32* %1, align 8
  %call = call fastcc %struct.its_collection* @dev_event_to_col(%struct.its_device* noundef %0, i32 noundef %2) #24
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 15) #24
  %3 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %3, i64 0, i32 5
  %4 = load i32, i32* %device_id, align 4
  call fastcc void @its_encode_devid(%struct.its_cmd_block* noundef %cmd, i32 noundef %4) #24
  %5 = load i32, i32* %1, align 8
  call fastcc void @its_encode_event_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %5) #24
  %call6 = call fastcc %struct.its_collection* @valid_col(%struct.its_collection* noundef %call) #24
  ret %struct.its_collection* %call6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_collection* @its_build_mapti_cmd(%struct.its_node* nocapture noundef readnone %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %its_mapti_cmd = bitcast %struct.its_cmd_desc* %desc to %struct.anon.89*
  %dev = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  %0 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %event_id = getelementptr inbounds %struct.anon.89, %struct.anon.89* %its_mapti_cmd, i64 0, i32 2
  %1 = load i32, i32* %event_id, align 4
  %call = call fastcc %struct.its_collection* @dev_event_to_col(%struct.its_device* noundef %0, i32 noundef %1) #24
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 10) #24
  %2 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %2, i64 0, i32 5
  %3 = load i32, i32* %device_id, align 4
  call fastcc void @its_encode_devid(%struct.its_cmd_block* noundef %cmd, i32 noundef %3) #24
  %4 = load i32, i32* %event_id, align 4
  call fastcc void @its_encode_event_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %4) #24
  %phys_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %5 = bitcast %struct.its_device** %phys_id to i32*
  %6 = load i32, i32* %5, align 8
  call fastcc void @its_encode_phys_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %6) #24
  %col_id = getelementptr inbounds %struct.its_collection, %struct.its_collection* %call, i64 0, i32 1
  %7 = load i16, i16* %col_id, align 8
  call fastcc void @its_encode_collection(%struct.its_cmd_block* noundef %cmd, i16 noundef %7) #24
  %call7 = call fastcc %struct.its_collection* @valid_col(%struct.its_collection* noundef %call) #24
  ret %struct.its_collection* %call7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_phys_id(%struct.its_cmd_block* nocapture noundef %cmd, i32 noundef %phys_id) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 1
  %conv = zext i32 %phys_id to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 63, i32 noundef 32) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @gic_requires_eager_mapping() unnamed_addr #4 {
entry:
  %0 = load i64, i64* @its_list_map, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %1, i64 0, i32 7
  %2 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool1.not = icmp ne i8 %2, 0
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i1 [ true, %entry ], [ %tobool1.not, %lor.lhs.false ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_vmapp(%struct.its_node* noundef %its, %struct.its_vpe* noundef %vpe, i1 noundef %valid) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %frombool = zext i1 %valid to i8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false), !annotation !17
  %vpe1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  store %struct.its_vpe* %vpe, %struct.its_vpe** %vpe1, align 8
  %valid3 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  %3 = bitcast i32* %valid3 to i8*
  store i8 %frombool, i8* %3, align 8
  %collections = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 9
  %4 = load %struct.its_collection*, %struct.its_collection** %collections, align 8
  %col_idx = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 9
  %5 = load i16, i16* %col_idx, align 4
  %idxprom = zext i16 %5 to i64
  %arrayidx = getelementptr %struct.its_collection, %struct.its_collection* %4, i64 %idxprom
  %col = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %6 = bitcast %struct.its_device** %col to %struct.its_collection**
  store %struct.its_collection* %arrayidx, %struct.its_collection** %6, align 8
  call fastcc void @its_send_single_vcommand(%struct.its_node* noundef %its, %struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_vmapp_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_vpe* @its_build_vmapp_cmd(%struct.its_node* nocapture noundef readonly %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 41) #24
  %vpe = getelementptr %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  %0 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vpe_id = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %0, i64 0, i32 10
  %1 = load i16, i16* %vpe_id, align 2
  call fastcc void @its_encode_vpeid(%struct.its_cmd_block* noundef %cmd, i16 noundef %1) #24
  %valid = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  %2 = bitcast i32* %valid to i8*
  %3 = load i8, i8* %2, align 8, !range !9
  %4 = zext i8 %3 to i32
  call fastcc void @its_encode_valid(%struct.its_cmd_block* noundef %cmd, i32 noundef %4) #24
  %5 = load i8, i8* %2, align 8, !range !9
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 12
  %6 = load i64, i64* %typer, align 8
  %and = and i64 %6, 1099511627776
  %tobool5.not = icmp eq i64 %and, 0
  br i1 %tobool5.not, label %out, label %if.then6

if.then6:                                         ; preds = %if.then
  %7 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vmapp_count = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %7, i64 0, i32 7, i32 0, i32 3
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %vmapp_count) #27
  %tobool9.not = icmp eq i32 %call.i.i.i, 0
  call fastcc void @its_encode_alloc(%struct.its_cmd_block* noundef %cmd, i1 noundef %tobool9.not) #24
  br label %out

if.end11:                                         ; preds = %entry
  %8 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vpt_page = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %8, i64 0, i32 0
  %9 = load %struct.page*, %struct.page** %vpt_page, align 8
  %10 = ptrtoint %struct.page* %9 to i64
  %sub.i = shl i64 %10, 6
  %add.i = and i64 %sub.i, -4096
  %11 = inttoptr i64 %add.i to i8*
  %call15 = call fastcc i64 @virt_to_phys(i8* noundef %11) #24
  %col = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %12 = bitcast %struct.its_device** %col to %struct.its_collection**
  %13 = load %struct.its_collection*, %struct.its_collection** %12, align 8
  %target_address = getelementptr inbounds %struct.its_collection, %struct.its_collection* %13, i64 0, i32 0
  %14 = load i64, i64* %target_address, align 8
  %vlpi_redist_offset = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 22
  %15 = load i32, i32* %vlpi_redist_offset, align 4
  %conv17 = sext i32 %15 to i64
  %add = add i64 %14, %conv17
  call fastcc void @its_encode_target(%struct.its_cmd_block* noundef %cmd, i64 noundef %add) #24
  call fastcc void @its_encode_vpt_addr(%struct.its_cmd_block* noundef %cmd, i64 noundef %call15) #24
  %16 = load i32, i32* @lpi_id_bits, align 4
  %17 = trunc i32 %16 to i8
  %conv18 = add i8 %17, -1
  call fastcc void @its_encode_vpt_size(%struct.its_cmd_block* noundef %cmd, i8 noundef %conv18) #24
  %typer19 = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 12
  %18 = load i64, i64* %typer19, align 8
  %and20 = and i64 %18, 1099511627776
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %out, label %if.end23

if.end23:                                         ; preds = %if.end11
  %19 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %its_vm = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %19, i64 0, i32 1
  %20 = load %struct.its_vm*, %struct.its_vm** %its_vm, align 8
  %vprop_page = getelementptr inbounds %struct.its_vm, %struct.its_vm* %20, i64 0, i32 2
  %21 = load %struct.page*, %struct.page** %vprop_page, align 8
  %22 = ptrtoint %struct.page* %21 to i64
  %sub.i69 = shl i64 %22, 6
  %add.i70 = and i64 %sub.i69, -4096
  %23 = inttoptr i64 %add.i70 to i8*
  %call27 = call fastcc i64 @virt_to_phys(i8* noundef %23) #24
  %vmapp_count30 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %19, i64 0, i32 7, i32 0, i32 3
  %call.i.i.i71 = call fastcc i32 @__ll_sc_atomic_fetch_add(%struct.atomic_t* noundef %vmapp_count30) #27
  %tobool32.not = icmp eq i32 %call.i.i.i71, 0
  call fastcc void @its_encode_alloc(%struct.its_cmd_block* noundef %cmd, i1 noundef %tobool32.not) #24
  call fastcc void @its_encode_ptz(%struct.its_cmd_block* noundef %cmd) #24
  call fastcc void @its_encode_vconf_addr(%struct.its_cmd_block* noundef %cmd, i64 noundef %call27) #24
  %24 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vpe_db_lpi = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %24, i64 0, i32 4
  %25 = load i64, i64* %vpe_db_lpi, align 8
  %conv38 = trunc i64 %25 to i32
  call fastcc void @its_encode_vmapp_default_db(%struct.its_cmd_block* noundef %cmd, i32 noundef %conv38) #24
  br label %out

out:                                              ; preds = %if.end11, %if.then, %if.then6, %if.end23
  %26 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %call41 = call fastcc %struct.its_vpe* @valid_vpe(%struct.its_node* noundef %its, %struct.its_vpe* noundef %26) #24
  ret %struct.its_vpe* %call41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_alloc(%struct.its_cmd_block* nocapture noundef %cmd, i1 noundef %alloc) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 0
  %conv = zext i1 %alloc to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 8, i32 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_vpt_addr(%struct.its_cmd_block* nocapture noundef %cmd, i64 noundef %vpt_pa) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 3
  %shr = lshr i64 %vpt_pa, 16
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %shr, i32 noundef 51, i32 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_vpt_size(%struct.its_cmd_block* nocapture noundef %cmd, i8 noundef %vpt_size) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 3
  %conv = zext i8 %vpt_size to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 4, i32 noundef 0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_ptz(%struct.its_cmd_block* nocapture noundef %cmd) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 0
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef 0, i32 noundef 9, i32 noundef 9) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_vconf_addr(%struct.its_cmd_block* nocapture noundef %cmd, i64 noundef %vconf_pa) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 0
  %shr = lshr i64 %vconf_pa, 16
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %shr, i32 noundef 51, i32 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_vmapp_default_db(%struct.its_cmd_block* nocapture noundef %cmd, i32 noundef %vpe_db_lpi) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 1
  %conv = zext i32 %vpe_db_lpi to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 31, i32 noundef 0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #25, !srcloc !47
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #25, !srcloc !48
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_map_vm(%struct.its_node* noundef %its, %struct.its_vm* nocapture noundef %vm) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @gic_requires_eager_mapping() #24
  br i1 %call, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call1 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef nonnull @vmovp_lock) #24
  %list_nr = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 18
  %0 = load i64, i64* %list_nr, align 8
  %arrayidx = getelementptr %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 8, i64 %0
  %1 = load i32, i32* %arrayidx, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %arrayidx, align 4
  %2 = load i64, i64* %list_nr, align 8
  %arrayidx4 = getelementptr %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 8, i64 %2
  %3 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp eq i32 %3, 1
  br i1 %cmp5, label %for.cond.preheader, label %do.body19

for.cond.preheader:                               ; preds = %do.body
  %nr_vpes = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 4
  %4 = load i32, i32* %nr_vpes, align 8
  %cmp843 = icmp sgt i32 %4, 0
  br i1 %cmp843, label %for.body.lr.ph, label %do.body19

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vpes = getelementptr inbounds %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %5 = load %struct.its_vpe**, %struct.its_vpe*** %vpes, align 8
  %arrayidx10 = getelementptr %struct.its_vpe*, %struct.its_vpe** %5, i64 %indvars.iv
  %6 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx10, align 8
  %irq = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %6, i64 0, i32 3
  %7 = load i32, i32* %irq, align 4
  %call11 = call %struct.irq_data* @irq_get_irq_data(i32 noundef %7) #27
  %call12 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef nonnull @__cpu_online_mask) #24
  %conv13 = trunc i32 %call12 to i16
  %col_idx = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %6, i64 0, i32 9
  store i16 %conv13, i16* %col_idx, align 4
  call fastcc void @its_send_vmapp(%struct.its_node* noundef %its, %struct.its_vpe* noundef %6, i1 noundef true) #24
  call fastcc void @its_send_vinvall(%struct.its_node* noundef %its, %struct.its_vpe* noundef %6) #24
  %8 = load i16, i16* %col_idx, align 4
  %conv15 = zext i16 %8 to i32
  %call16 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %conv15) #24
  call fastcc void @irq_data_update_effective_affinity(%struct.irq_data* noundef %call11, %struct.cpumask* noundef nonnull %call16) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, i32* %nr_vpes, align 8
  %10 = sext i32 %9 to i64
  %cmp8 = icmp slt i64 %indvars.iv.next, %10
  br i1 %cmp8, label %for.body, label %do.body19

do.body19:                                        ; preds = %for.body, %for.cond.preheader, %do.body
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef nonnull @vmovp_lock, i64 noundef %call1) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_forwarded_to_vcpu(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #15 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 1048576
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_vmapti(%struct.its_device* noundef %dev, i32 noundef %id) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %call = call fastcc %struct.its_vlpi_map* @dev_event_to_vlpi_map(%struct.its_device* noundef %dev, i32 noundef %id) #24
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 4
  %2 = bitcast i8* %1 to i64*, !annotation !17
  store i64 0, i64* %2, align 8, !annotation !17
  %vpe = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 1
  %3 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vpe1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  store %struct.its_vpe* %3, %struct.its_vpe** %vpe1, align 8
  %dev3 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  store %struct.its_device* %dev, %struct.its_device** %dev3, align 8
  %vintid = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 2
  %4 = load i32, i32* %vintid, align 8
  %virt_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  store i32 %4, i32* %virt_id, align 8
  %event_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 3
  store i32 %id, i32* %event_id, align 4
  %db_enabled = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %call, i64 0, i32 4
  %5 = load i8, i8* %db_enabled, align 1, !range !9
  %db_enabled7 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 4
  store i8 %5, i8* %db_enabled7, align 8
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 1
  %6 = load %struct.its_node*, %struct.its_node** %its, align 8
  call fastcc void @its_send_single_vcommand(%struct.its_node* noundef %6, %struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_vmapti_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay, i64 noundef 256) #24
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_vinvall(%struct.its_node* noundef %its, %struct.its_vpe* noundef %vpe) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false), !annotation !17
  %vpe1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  store %struct.its_vpe* %vpe, %struct.its_vpe** %vpe1, align 8
  call fastcc void @its_send_single_vcommand(%struct.its_node* noundef %its, %struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_vinvall_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_vpe* @its_build_vinvall_cmd(%struct.its_node* nocapture noundef readonly %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 45) #24
  %vpe = getelementptr %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  %0 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vpe_id = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %0, i64 0, i32 10
  %1 = load i16, i16* %vpe_id, align 2
  call fastcc void @its_encode_vpeid(%struct.its_cmd_block* noundef %cmd, i16 noundef %1) #24
  %2 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %call = call fastcc %struct.its_vpe* @valid_vpe(%struct.its_node* noundef %its, %struct.its_vpe* noundef %2) #24
  ret %struct.its_vpe* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_vpe* @its_build_vmapti_cmd(%struct.its_node* nocapture noundef readonly %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 12
  %0 = load i64, i64* %typer, align 8
  %and = and i64 %0, 1099511627776
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %db_enabled = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 4
  %1 = load i8, i8* %db_enabled, align 8, !range !9
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %vpe = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  %2 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vpe_db_lpi = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %2, i64 0, i32 4
  %3 = load i64, i64* %vpe_db_lpi, align 8
  %conv = trunc i64 %3 to i32
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %db.0 = phi i32 [ %conv, %if.then ], [ 1023, %land.lhs.true ], [ 1023, %entry ]
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 42) #24
  %dev = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %4 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %4, i64 0, i32 5
  %5 = load i32, i32* %device_id, align 4
  call fastcc void @its_encode_devid(%struct.its_cmd_block* noundef %cmd, i32 noundef %5) #24
  %vpe5 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  %6 = load %struct.its_vpe*, %struct.its_vpe** %vpe5, align 8
  %vpe_id = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %6, i64 0, i32 10
  %7 = load i16, i16* %vpe_id, align 2
  call fastcc void @its_encode_vpeid(%struct.its_cmd_block* noundef %cmd, i16 noundef %7) #24
  %event_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 3
  %8 = load i32, i32* %event_id, align 4
  call fastcc void @its_encode_event_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %8) #24
  call fastcc void @its_encode_db_phys_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %db.0) #24
  %virt_id = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  %9 = load i32, i32* %virt_id, align 8
  call fastcc void @its_encode_virt_id(%struct.its_cmd_block* noundef %cmd, i32 noundef %9) #24
  %10 = load %struct.its_vpe*, %struct.its_vpe** %vpe5, align 8
  %call = call fastcc %struct.its_vpe* @valid_vpe(%struct.its_node* noundef %its, %struct.its_vpe* noundef %10) #24
  ret %struct.its_vpe* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_virt_id(%struct.its_cmd_block* nocapture noundef %cmd, i32 noundef %virt_id) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 2
  %conv = zext i32 %virt_id to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 31, i32 noundef 0) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(%struct.irq_data* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_lpi_free(i64* noundef %bitmap, i32 noundef %base, i32 noundef %nr_ids) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @free_lpi_range(i32 noundef %base, i32 noundef %nr_ids) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 2158; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !49
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @bitmap_free(i64* noundef %bitmap) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_mapd(%struct.its_device* noundef %dev, i32 noundef %valid) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false), !annotation !17
  %dev1 = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  store %struct.its_device* %dev, %struct.its_device** %dev1, align 8
  %tobool = icmp ne i32 %valid, 0
  %lnot.ext = zext i1 %tobool to i32
  %valid4 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast %struct.its_device** %valid4 to i32*
  store i32 %lnot.ext, i32* %3, align 8
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %dev, i64 0, i32 1
  %4 = load %struct.its_node*, %struct.its_node** %its, align 8
  call fastcc void @its_send_single_command(%struct.its_node* noundef %4, %struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_mapd_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_free_device(%struct.its_device* noundef %its_dev) unnamed_addr #0 {
entry:
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %its_dev, i64 0, i32 1
  %0 = load %struct.its_node*, %struct.its_node** %its, align 8
  %lock = getelementptr inbounds %struct.its_node, %struct.its_node* %0, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %entry1 = getelementptr inbounds %struct.its_device, %struct.its_device* %its_dev, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %entry1) #24
  %1 = load %struct.its_node*, %struct.its_node** %its, align 8
  %lock9 = getelementptr inbounds %struct.its_node, %struct.its_node* %1, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock9, i64 noundef %call) #24
  %col_map = getelementptr inbounds %struct.its_device, %struct.its_device* %its_dev, i64 0, i32 2, i32 1
  %2 = bitcast i16** %col_map to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #27
  %itt = getelementptr inbounds %struct.its_device, %struct.its_device* %its_dev, i64 0, i32 3
  %4 = load i8*, i8** %itt, align 8
  call void @kfree(i8* noundef %4) #27
  %5 = bitcast %struct.its_device* %its_dev to i8*
  call void @kfree(i8* noundef %5) #27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(%struct.irq_domain* noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @free_lpi_range(i32 noundef %base, i32 noundef %nr_lpis) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.lpi_range* @mk_lpi_range(i32 noundef %base, i32 noundef %nr_lpis) #24
  %tobool.not = icmp eq %struct.lpi_range* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @lpi_range_lock) #27
  %old.036 = load %struct.lpi_range*, %struct.lpi_range** bitcast (%struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @lpi_range_list, i64 0, i32 1) to %struct.lpi_range**), align 8
  %entry137 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %old.036, i64 0, i32 0
  %cmp.not38 = icmp eq %struct.list_head* %entry137, @lpi_range_list
  br i1 %cmp.not38, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %base_id44 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %old.036, i64 0, i32 1
  %0 = load i32, i32* %base_id44, align 8
  %cmp245 = icmp ult i32 %0, %base
  br i1 %cmp245, label %for.end, label %for.inc

for.body:                                         ; preds = %for.inc
  %base_id = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %old.0, i64 0, i32 1
  %1 = load i32, i32* %base_id, align 8
  %cmp2 = icmp ult i32 %1, %base
  br i1 %cmp2, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body.preheader, %for.body
  %old.03946 = phi %struct.lpi_range* [ %old.0, %for.body ], [ %old.036, %for.body.preheader ]
  %prev = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %old.03946, i64 0, i32 0, i32 1
  %2 = bitcast %struct.list_head** %prev to %struct.lpi_range**
  %old.0 = load %struct.lpi_range*, %struct.lpi_range** %2, align 8
  %entry1 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %old.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %entry1, @lpi_range_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.inc, %for.body.preheader, %if.end
  %old.0.lcssa = phi %struct.lpi_range* [ %old.036, %if.end ], [ %old.036, %for.body.preheader ], [ %old.0, %for.inc ], [ %old.0, %for.body ]
  %entry1.lcssa = phi %struct.list_head* [ @lpi_range_list, %if.end ], [ %entry137, %for.body.preheader ], [ @lpi_range_list, %for.inc ], [ %entry1, %for.body ]
  %entry12 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %call, i64 0, i32 0
  call fastcc void @list_add(%struct.list_head* noundef %entry12, %struct.list_head* noundef %entry1.lcssa) #24
  call fastcc void @merge_lpi_ranges(%struct.lpi_range* noundef %old.0.lcssa, %struct.lpi_range* noundef nonnull %call) #24
  %3 = bitcast %struct.lpi_range* %call to %struct.lpi_range**
  %4 = load %struct.lpi_range*, %struct.lpi_range** %3, align 8
  call fastcc void @merge_lpi_ranges(%struct.lpi_range* noundef nonnull %call, %struct.lpi_range* noundef %4) #24
  call void @mutex_unlock(%struct.mutex* noundef nonnull @lpi_range_lock) #27
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(i64* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias %struct.lpi_range* @mk_lpi_range(i32 noundef %base, i32 noundef %span) unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #27
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %base_id = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %1 = bitcast i8* %base_id to i32*
  store i32 %base, i32* %1, align 8
  %span1 = getelementptr inbounds i8, i8* %call.i.i, i64 20
  %2 = bitcast i8* %span1 to i32*
  store i32 %span, i32* %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast i8* %call.i.i to %struct.lpi_range*
  ret %struct.lpi_range* %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @merge_lpi_ranges(%struct.lpi_range* noundef %a, %struct.lpi_range* noundef %b) unnamed_addr #0 {
entry:
  %entry1 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %a, i64 0, i32 0
  %cmp = icmp eq %struct.list_head* %entry1, @lpi_range_list
  %entry2 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %b, i64 0, i32 0
  %cmp3 = icmp eq %struct.list_head* %entry2, @lpi_range_list
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %base_id = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %a, i64 0, i32 1
  %0 = load i32, i32* %base_id, align 8
  %span = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %a, i64 0, i32 2
  %1 = load i32, i32* %span, align 4
  %add = add i32 %1, %0
  %base_id4 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %b, i64 0, i32 1
  %2 = load i32, i32* %base_id4, align 8
  %cmp5.not = icmp eq i32 %add, %2
  br i1 %cmp5.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.end
  store i32 %0, i32* %base_id4, align 8
  %3 = load i32, i32* %span, align 4
  %span11 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %b, i64 0, i32 2
  %4 = load i32, i32* %span11, align 4
  %add12 = add i32 %4, %3
  store i32 %add12, i32* %span11, align 4
  call fastcc void @list_del(%struct.list_head* noundef %entry1) #24
  %5 = bitcast %struct.lpi_range* %a to i8*
  call void @kfree(i8* noundef %5) #27
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end7
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #17 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #24
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #17 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #17 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal noalias %struct.its_collection* @its_build_mapd_cmd(%struct.its_node* nocapture noundef readnone %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #20 {
entry:
  %dev = bitcast %struct.its_cmd_desc* %desc to %struct.its_device**
  %0 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %nr_ites = getelementptr inbounds %struct.its_device, %struct.its_device* %0, i64 0, i32 4
  %1 = load i32, i32* %nr_ites, align 8
  %call = call fastcc i32 @__ilog2_u32(i32 noundef %1) #30
  %itt = getelementptr inbounds %struct.its_device, %struct.its_device* %0, i64 0, i32 3
  %2 = load i8*, i8** %itt, align 8
  %call17 = call fastcc i64 @virt_to_phys(i8* noundef %2) #24
  %add = add i64 %call17, 255
  %and = and i64 %add, -256
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 8) #24
  %3 = load %struct.its_device*, %struct.its_device** %dev, align 8
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %3, i64 0, i32 5
  %4 = load i32, i32* %device_id, align 4
  call fastcc void @its_encode_devid(%struct.its_cmd_block* noundef %cmd, i32 noundef %4) #24
  %5 = trunc i32 %call to i8
  %conv22 = add i8 %5, -1
  call fastcc void @its_encode_size(%struct.its_cmd_block* noundef %cmd, i8 noundef %conv22) #24
  call fastcc void @its_encode_itt(%struct.its_cmd_block* noundef %cmd, i64 noundef %and) #24
  %valid = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %6 = bitcast %struct.its_device** %valid to i32*
  %7 = load i32, i32* %6, align 8
  call fastcc void @its_encode_valid(%struct.its_cmd_block* noundef %cmd, i32 noundef %7) #24
  ret %struct.its_collection* null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_size(%struct.its_cmd_block* nocapture noundef %cmd, i8 noundef %size) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 1
  %conv = zext i8 %size to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 4, i32 noundef 0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_itt(%struct.its_cmd_block* nocapture noundef %cmd, i64 noundef %itt_addr) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 2
  %shr = lshr i64 %itt_addr, 8
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %shr, i32 noundef 51, i32 noundef 8) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_msi_prepare(%struct.irq_domain* noundef %domain, %struct.device* nocapture noundef readnone %dev, i32 noundef %nvec, %struct.msi_alloc_info* nocapture noundef %info) #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.msi_alloc_info, %struct.msi_alloc_info* %info, i64 0, i32 3, i64 0
  %ul = getelementptr %union.anon.101, %union.anon.101* %arrayidx, i64 0, i32 0
  %0 = load i64, i64* %ul, align 8
  %conv = trunc i64 %0 to i32
  %call = call %struct.msi_domain_info* @msi_get_domain_info(%struct.irq_domain* noundef %domain) #27
  %data = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %call, i64 0, i32 7
  %1 = bitcast i8** %data to %struct.its_node**
  %2 = load %struct.its_node*, %struct.its_node** %1, align 8
  %3 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_direct_lpi = getelementptr inbounds %struct.rdists, %struct.rdists* %3, i64 0, i32 8
  %4 = load i8, i8* %has_direct_lpi, align 2, !range !9
  %tobool.not90 = icmp eq i8 %4, 0
  %5 = load %struct.its_device*, %struct.its_device** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 1), align 8
  %tobool1 = icmp ne %struct.its_device* %5, null
  %or.cond = select i1 %tobool.not90, i1 %tobool1, i1 false
  br i1 %or.cond, label %land.lhs.true2, label %if.end47

land.lhs.true2:                                   ; preds = %entry
  %its3 = getelementptr inbounds %struct.its_device, %struct.its_device* %5, i64 0, i32 1
  %6 = load %struct.its_node*, %struct.its_node** %its3, align 8
  %cmp = icmp eq %struct.its_node* %6, %2
  br i1 %cmp, label %land.lhs.true5, label %if.end47

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %5, i64 0, i32 5
  %7 = load i32, i32* %device_id, align 4
  %cmp6 = icmp eq i32 %7, %conv
  br i1 %cmp6, label %if.then, label %if.end47

if.then:                                          ; preds = %land.lhs.true5
  %.b91 = load i1, i1* @its_msi_prepare.__already_done, align 1
  br i1 %.b91, label %cleanup, label %if.then15, !prof !12

if.then15:                                        ; preds = %if.then
  store i1 true, i1* @its_msi_prepare.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv) #27
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 3472; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !50
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true5, %land.lhs.true2, %entry
  %dev_alloc_lock = getelementptr inbounds %struct.its_node, %struct.its_node* %2, i64 0, i32 1
  call void @mutex_lock(%struct.mutex* noundef %dev_alloc_lock) #27
  %call48 = call fastcc %struct.its_device* @its_find_device(%struct.its_node* noundef %2, i32 noundef %conv) #24
  %tobool49.not = icmp eq %struct.its_device* %call48, null
  br i1 %tobool49.not, label %if.end52, label %out.sink.split

if.end52:                                         ; preds = %if.end47
  %call53 = call fastcc %struct.its_device* @its_create_device(%struct.its_node* noundef %2, i32 noundef %conv, i32 noundef %nvec, i1 noundef true) #24
  %tobool54.not = icmp eq %struct.its_device* %call53, null
  br i1 %tobool54.not, label %out, label %if.end56

if.end56:                                         ; preds = %if.end52
  %flags = getelementptr inbounds %struct.msi_alloc_info, %struct.msi_alloc_info* %info, i64 0, i32 2
  %8 = load i64, i64* %flags, align 8
  %and = and i64 %8, 1
  %tobool57.not = icmp eq i64 %and, 0
  br i1 %tobool57.not, label %out, label %out.sink.split

out.sink.split:                                   ; preds = %if.end56, %if.end47
  %call53.sink = phi %struct.its_device* [ %call48, %if.end47 ], [ %call53, %if.end56 ]
  %shared59 = getelementptr inbounds %struct.its_device, %struct.its_device* %call53.sink, i64 0, i32 6
  store i8 1, i8* %shared59, align 8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end56, %if.end52
  %err.0 = phi i32 [ -12, %if.end52 ], [ 0, %if.end56 ], [ 0, %out.sink.split ]
  %its_dev.0 = phi %struct.its_device* [ null, %if.end52 ], [ %call53, %if.end56 ], [ %call53.sink, %out.sink.split ]
  call void @mutex_unlock(%struct.mutex* noundef %dev_alloc_lock) #27
  %9 = bitcast %union.anon.101* %arrayidx to %struct.its_device**
  store %struct.its_device* %its_dev.0, %struct.its_device** %9, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then15, %out
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %if.then15 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.msi_domain_info* @msi_get_domain_info(%struct.irq_domain* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.its_device* @its_find_device(%struct.its_node* noundef %its, i32 noundef %dev_id) unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %its_device_list = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 16
  %0 = bitcast %struct.list_head* %its_device_list to %struct.its_device**
  %tmp.040 = load %struct.its_device*, %struct.its_device** %0, align 8
  %entry641 = getelementptr inbounds %struct.its_device, %struct.its_device* %tmp.040, i64 0, i32 0
  %cmp8.not42 = icmp eq %struct.list_head* %entry641, %its_device_list
  br i1 %cmp8.not42, label %do.body20, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %tmp.043 = phi %struct.its_device* [ %tmp.0, %for.inc ], [ %tmp.040, %entry ]
  %device_id = getelementptr inbounds %struct.its_device, %struct.its_device* %tmp.043, i64 0, i32 5
  %1 = load i32, i32* %device_id, align 4
  %cmp10 = icmp eq i32 %1, %dev_id
  br i1 %cmp10, label %do.body20, label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = bitcast %struct.its_device* %tmp.043 to %struct.its_device**
  %tmp.0 = load %struct.its_device*, %struct.its_device** %2, align 8
  %entry6 = getelementptr inbounds %struct.its_device, %struct.its_device* %tmp.0, i64 0, i32 0
  %cmp8.not = icmp eq %struct.list_head* %entry6, %its_device_list
  br i1 %cmp8.not, label %do.body20, label %for.body

do.body20:                                        ; preds = %for.inc, %for.body, %entry
  %its_dev.0 = phi %struct.its_device* [ null, %entry ], [ %tmp.043, %for.body ], [ null, %for.inc ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  ret %struct.its_device* %its_dev.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.its_device* @its_create_device(%struct.its_node* noundef %its, i32 noundef %dev_id, i32 noundef %nvecs, i1 noundef %alloc_lpis) unnamed_addr #0 {
entry:
  %lpi_base = alloca i32, align 4
  %nr_lpis = alloca i32, align 4
  %0 = bitcast i32* %lpi_base to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #25
  store i32 0, i32* %lpi_base, align 4, !annotation !17
  %1 = bitcast i32* %nr_lpis to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #25
  store i32 0, i32* %nr_lpis, align 4, !annotation !17
  %call = call fastcc i1 @its_alloc_device_table(%struct.its_node* noundef %its, i32 noundef %dev_id) #24
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i32 %nvecs to i64
  %call1 = call fastcc i1 @is_power_of_2(i64 noundef %conv) #30
  br i1 %call1, label %if.end45, label %if.then10, !prof !12

if.then10:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 3364; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !51
  %call41 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %conv) #30
  %conv44 = trunc i64 %call41 to i32
  br label %if.end45

if.end45:                                         ; preds = %if.end, %if.then10
  %nvecs.addr.0 = phi i32 [ %conv44, %if.then10 ], [ %nvecs, %if.end ]
  %call46 = call fastcc i8* @kzalloc(i64 noundef 104, i32 noundef 3264) #24
  %2 = bitcast i8* %call46 to %struct.its_device*
  %3 = icmp sgt i32 %nvecs.addr.0, 2
  %cond53 = select i1 %3, i32 %nvecs.addr.0, i32 2
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 12
  %4 = load i64, i64* %typer, align 8
  %5 = trunc i64 %4 to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  %8 = add nuw nsw i32 %7, 1
  %conv69 = mul i32 %8, %cond53
  %cmp71 = icmp sgt i32 %conv69, 256
  %cond76 = select i1 %cmp71, i32 %conv69, i32 256
  %sub78 = add nuw i32 %cond76, 255
  %conv79 = sext i32 %sub78 to i64
  %call80 = call fastcc i8* @kzalloc_node(i64 noundef %conv79) #24
  br i1 %alloc_lpis, label %if.then82, label %if.else

if.then82:                                        ; preds = %if.end45
  %call83 = call fastcc i64* @its_lpi_alloc(i32 noundef %nvecs.addr.0, i32* noundef nonnull %lpi_base, i32* noundef nonnull %nr_lpis) #24
  %tobool84.not = icmp eq i64* %call83, null
  br i1 %tobool84.not, label %if.then100, label %if.then85

if.then85:                                        ; preds = %if.then82
  %9 = load i32, i32* %nr_lpis, align 4
  %conv86 = sext i32 %9 to i64
  %call87 = call fastcc i8* @kcalloc(i64 noundef %conv86, i64 noundef 2, i32 noundef 3264) #24
  br label %if.end91

if.else:                                          ; preds = %if.end45
  %conv54 = zext i32 %cond53 to i64
  %call90 = call fastcc i8* @kcalloc(i64 noundef %conv54, i64 noundef 2, i32 noundef 3264) #24
  store i32 0, i32* %nr_lpis, align 4
  store i32 0, i32* %lpi_base, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then85, %if.else
  %10 = phi i32 [ %9, %if.then85 ], [ 0, %if.else ]
  %col_map.0.in = phi i8* [ %call87, %if.then85 ], [ %call90, %if.else ]
  %lpi_map.0 = phi i64* [ %call83, %if.then85 ], [ null, %if.else ]
  %tobool92 = icmp eq i8* %call46, null
  %tobool93 = icmp eq i8* %call80, null
  %or.cond = select i1 %tobool92, i1 true, i1 %tobool93
  %tobool95 = icmp eq i8* %col_map.0.in, null
  %or.cond145 = select i1 %or.cond, i1 true, i1 %tobool95
  %tobool97.not = icmp eq i64* %lpi_map.0, null
  %11 = and i1 %tobool97.not, %alloc_lpis
  %or.cond217 = select i1 %or.cond145, i1 true, i1 %11
  br i1 %or.cond217, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.then82, %if.end91
  %lpi_map.0215 = phi i64* [ %lpi_map.0, %if.end91 ], [ null, %if.then82 ]
  %12 = phi i8* [ %col_map.0.in, %if.end91 ], [ null, %if.then82 ]
  call void @kfree(i8* noundef %call46) #27
  call void @kfree(i8* noundef %call80) #27
  call void @bitmap_free(i64* noundef %lpi_map.0215) #27
  call void @kfree(i8* noundef %12) #27
  br label %cleanup

if.end101:                                        ; preds = %if.end91
  %13 = ptrtoint i8* %call80 to i64
  %add103 = add i64 %conv79, %13
  call void @dcache_clean_inval_poc(i64 noundef %13, i64 noundef %add103) #27
  %its104 = getelementptr inbounds i8, i8* %call46, i64 16
  %14 = bitcast i8* %its104 to %struct.its_node**
  store %struct.its_node* %its, %struct.its_node** %14, align 8
  %itt105 = getelementptr inbounds i8, i8* %call46, i64 80
  %15 = bitcast i8* %itt105 to i8**
  store i8* %call80, i8** %15, align 8
  %nr_ites106 = getelementptr inbounds i8, i8* %call46, i64 88
  %16 = bitcast i8* %nr_ites106 to i32*
  store i32 %cond53, i32* %16, align 8
  %event_map = getelementptr inbounds i8, i8* %call46, i64 24
  %lpi_map107 = bitcast i8* %event_map to i64**
  store i64* %lpi_map.0, i64** %lpi_map107, align 8
  %col_map109 = getelementptr inbounds i8, i8* %call46, i64 32
  %17 = bitcast i8* %col_map109 to i8**
  store i8* %col_map.0.in, i8** %17, align 8
  %18 = load i32, i32* %lpi_base, align 4
  %conv110 = sext i32 %18 to i64
  %lpi_base112 = getelementptr inbounds i8, i8* %call46, i64 40
  %19 = bitcast i8* %lpi_base112 to i64*
  store i64 %conv110, i64* %19, align 8
  %nr_lpis114 = getelementptr inbounds i8, i8* %call46, i64 48
  %20 = bitcast i8* %nr_lpis114 to i32*
  store i32 %10, i32* %20, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call46, i64 52
  %21 = bitcast i8* %.compoundliteral.sroa.0.0..sroa_idx to i32*
  store i32 0, i32* %21, align 4
  %device_id = getelementptr inbounds i8, i8* %call46, i64 92
  %22 = bitcast i8* %device_id to i32*
  store i32 %dev_id, i32* %22, align 4
  %entry119 = bitcast i8* %call46 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %entry119) #24
  %lock = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 0
  %call124 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %its_device_list = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 16
  call fastcc void @list_add(%struct.list_head* noundef nonnull %entry119, %struct.list_head* noundef %its_device_list) #24
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call124) #24
  call fastcc void @its_send_mapd(%struct.its_device* noundef nonnull %2, i32 noundef 1) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end101, %if.then100
  %retval.0 = phi %struct.its_device* [ %2, %if.end101 ], [ null, %if.then100 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #25
  ret %struct.its_device* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @its_alloc_device_table(%struct.its_node* noundef readonly %its, i32 noundef %dev_id) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.its_baser* @its_get_baser(%struct.its_node* noundef %its, i32 noundef 1) #24
  %tobool.not = icmp eq %struct.its_baser* %call, null
  br i1 %tobool.not, label %cond.end4, label %if.end

cond.end4:                                        ; preds = %entry
  %call3 = call fastcc i32 @__ilog2_u32(i32 noundef %dev_id) #30
  %conv6 = sext i32 %call3 to i64
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 12
  %0 = load i64, i64* %typer, align 8
  %and = lshr i64 %0, 13
  %shr = and i64 %and, 31
  %cmp19 = icmp uge i64 %shr, %conv6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call21 = call fastcc i1 @its_alloc_table_entry(%struct.its_node* noundef %its, %struct.its_baser* noundef nonnull %call, i32 noundef %dev_id) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end4
  %retval.0 = phi i1 [ %call21, %if.end ], [ %cmp19, %cond.end4 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_power_of_2(i64 noundef %n) unnamed_addr #10 {
entry:
  %cmp.not = icmp eq i64 %n, 0
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = call i64 @llvm.ctpop.i64(i64 %n), !range !22
  %cmp1 = icmp ult i64 %0, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__roundup_pow_of_two(i64 noundef %n) unnamed_addr #10 {
entry:
  %sub = add i64 %n, -1
  %call = call fastcc i32 @fls_long(i64 noundef %sub) #24
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc_node(i64 noundef %size) unnamed_addr #0 {
entry:
  %call.i.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #27
  ret i8* %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64* @its_lpi_alloc(i32 noundef %nr_irqs, i32* nocapture noundef writeonly %base, i32* nocapture noundef writeonly %nr_ids) unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %nr_irqs.addr.0 = phi i32 [ %nr_irqs, %entry ], [ %div, %if.end ]
  %call = call fastcc i32 @alloc_lpi_range(i32 noundef %nr_irqs.addr.0, i32* noundef %base) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

if.end:                                           ; preds = %do.body
  %div = sdiv i32 %nr_irqs.addr.0, 2
  %cmp = icmp sgt i32 %nr_irqs.addr.0, 1
  br i1 %cmp, label %do.body, label %if.then12

do.end:                                           ; preds = %do.body
  %tobool1.not = icmp ne i32 %nr_irqs.addr.0, 0
  %tobool4.not = select i1 %tobool1.not, i1 %tobool.not, i1 false
  br i1 %tobool4.not, label %if.end6, label %if.then12

if.end6:                                          ; preds = %do.end
  %call7 = call i64* @bitmap_zalloc(i32 noundef %nr_irqs.addr.0, i32 noundef 2592) #27
  %tobool8.not = icmp eq i64* %call7, null
  br i1 %tobool8.not, label %if.then12, label %out

out:                                              ; preds = %if.end6
  store i32 %nr_irqs.addr.0, i32* %nr_ids, align 4
  br label %if.end13

if.then12:                                        ; preds = %if.end, %do.end, %if.end6
  store i32 0, i32* %nr_ids, align 4
  store i32 0, i32* %base, align 4
  br label %if.end13

if.end13:                                         ; preds = %out, %if.then12
  %bitmap.028 = phi i64* [ null, %if.then12 ], [ %call7, %out ]
  ret i64* %bitmap.028
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.its_baser* @its_get_baser(%struct.its_node* noundef readonly %its, i32 noundef %type) unnamed_addr #21 {
entry:
  %conv = zext i32 %type to i64
  %val = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 0, i32 1
  %0 = load i64, i64* %val, align 8
  %shr = lshr i64 %0, 56
  %and = and i64 %shr, 7
  %cmp1 = icmp eq i64 %and, %conv
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %entry
  %i.011.lcssa.wide = phi i64 [ 0, %entry ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ], [ 7, %for.inc.6 ]
  %arrayidx = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 %i.011.lcssa.wide
  br label %cleanup

for.inc:                                          ; preds = %entry
  %val.1 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 1, i32 1
  %1 = load i64, i64* %val.1, align 8
  %shr.1 = lshr i64 %1, 56
  %and.1 = and i64 %shr.1, 7
  %cmp1.1 = icmp eq i64 %and.1, %conv
  br i1 %cmp1.1, label %if.then, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %val.2 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 2, i32 1
  %2 = load i64, i64* %val.2, align 8
  %shr.2 = lshr i64 %2, 56
  %and.2 = and i64 %shr.2, 7
  %cmp1.2 = icmp eq i64 %and.2, %conv
  br i1 %cmp1.2, label %if.then, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %val.3 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 3, i32 1
  %3 = load i64, i64* %val.3, align 8
  %shr.3 = lshr i64 %3, 56
  %and.3 = and i64 %shr.3, 7
  %cmp1.3 = icmp eq i64 %and.3, %conv
  br i1 %cmp1.3, label %if.then, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %val.4 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 4, i32 1
  %4 = load i64, i64* %val.4, align 8
  %shr.4 = lshr i64 %4, 56
  %and.4 = and i64 %shr.4, 7
  %cmp1.4 = icmp eq i64 %and.4, %conv
  br i1 %cmp1.4, label %if.then, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %val.5 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 5, i32 1
  %5 = load i64, i64* %val.5, align 8
  %shr.5 = lshr i64 %5, 56
  %and.5 = and i64 %shr.5, 7
  %cmp1.5 = icmp eq i64 %and.5, %conv
  br i1 %cmp1.5, label %if.then, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %val.6 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 6, i32 1
  %6 = load i64, i64* %val.6, align 8
  %shr.6 = lshr i64 %6, 56
  %and.6 = and i64 %shr.6, 7
  %cmp1.6 = icmp eq i64 %and.6, %conv
  br i1 %cmp1.6, label %if.then, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %val.7 = getelementptr %struct.its_node, %struct.its_node* %its, i64 0, i32 8, i64 7, i32 1
  %7 = load i64, i64* %val.7, align 8
  %shr.7 = lshr i64 %7, 56
  %and.7 = and i64 %shr.7, 7
  %cmp1.7 = icmp eq i64 %and.7, %conv
  br i1 %cmp1.7, label %if.then, label %cleanup

cleanup:                                          ; preds = %for.inc.6, %if.then
  %retval.0 = phi %struct.its_baser* [ %arrayidx, %if.then ], [ null, %for.inc.6 ]
  ret %struct.its_baser* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @its_alloc_table_entry(%struct.its_node* nocapture noundef readonly %its, %struct.its_baser* nocapture noundef readonly %baser, i32 noundef %id) unnamed_addr #0 {
entry:
  %val = getelementptr inbounds %struct.its_baser, %struct.its_baser* %baser, i64 0, i32 1
  %0 = load i64, i64* %val, align 8
  %shr = lshr i64 %0, 48
  %1 = trunc i64 %shr to i32
  %2 = and i32 %1, 31
  %conv = add nuw nsw i32 %2, 1
  %and2 = and i64 %0, 4611686018427387904
  %tobool.not = icmp eq i64 %and2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv3 = zext i32 %id to i64
  %order = getelementptr inbounds %struct.its_baser, %struct.its_baser* %baser, i64 0, i32 2
  %3 = load i32, i32* %order, align 8
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 4096, %sh_prom
  %conv4 = zext i32 %conv to i64
  %div = udiv i64 %shl, %conv4
  %cmp = icmp ugt i64 %div, %conv3
  br label %cleanup

if.end:                                           ; preds = %entry
  %psz = getelementptr inbounds %struct.its_baser, %struct.its_baser* %baser, i64 0, i32 3
  %4 = load i32, i32* %psz, align 4
  %div6 = udiv i32 %4, %conv
  %call = call fastcc i32 @__ilog2_u32(i32 noundef %div6) #30
  %shr20 = lshr i32 %id, %call
  %conv21 = zext i32 %shr20 to i64
  %order22 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %baser, i64 0, i32 2
  %5 = load i32, i32* %order22, align 8
  %sh_prom23 = zext i32 %5 to i64
  %shl24 = shl i64 4096, %sh_prom23
  %div25 = lshr exact i64 %shl24, 3
  %cmp26.not = icmp ugt i64 %div25, %conv21
  br i1 %cmp26.not, label %if.end29, label %cleanup

if.end29:                                         ; preds = %if.end
  %6 = bitcast %struct.its_baser* %baser to i64**
  %7 = load i64*, i64** %6, align 8
  %arrayidx = getelementptr i64, i64* %7, i64 %conv21
  %8 = load i64, i64* %arrayidx, align 8
  %tobool30.not = icmp eq i64 %8, 0
  br i1 %tobool30.not, label %if.then31, label %cleanup

if.then31:                                        ; preds = %if.end29
  %numa_node = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 19
  %9 = load i32, i32* %numa_node, align 8
  %conv33 = zext i32 %4 to i64
  %dec.i = add nsw i64 %conv33, -1
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %shr.i = lshr i64 %dec.i, 12
  %10 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #25, !range !22
  %11 = trunc i64 %10 to i32
  %conv.i.i = sub nuw nsw i32 64, %11
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %call35 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %9, i32 noundef 3520, i32 noundef %retval.0.i.i) #24
  %tobool36.not = icmp eq %struct.page* %call35, null
  br i1 %tobool36.not, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.then31
  %12 = load i64, i64* %val, align 8
  %and40 = and i64 %12, 3072
  %tobool41.not = icmp eq i64 %and40, 0
  %13 = ptrtoint %struct.page* %call35 to i64
  br i1 %tobool41.not, label %if.then42, label %if.end48

if.then42:                                        ; preds = %if.end38
  %sub.i97 = shl i64 %13, 6
  %add.i98 = and i64 %sub.i97, -4096
  %14 = load i32, i32* %psz, align 4
  %conv46 = zext i32 %14 to i64
  %add47 = add i64 %add.i98, %conv46
  call void @dcache_clean_inval_poc(i64 noundef %add.i98, i64 noundef %add47) #27
  br label %if.end48

if.end48:                                         ; preds = %if.end38, %if.then42
  %15 = load i64, i64* @memstart_addr, align 8
  %shr49 = ashr i64 %15, 12
  %idx.neg = sub nsw i64 0, %shr49
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %13, %sub.ptr.rhs.cast
  %shl50 = shl i64 %sub.ptr.sub, 6
  %or = or i64 %shl50, -9223372036854775808
  store i64 %or, i64* %arrayidx, align 8
  %16 = load i64, i64* %val, align 8
  %and54 = and i64 %16, 3072
  %tobool55.not = icmp eq i64 %and54, 0
  br i1 %tobool55.not, label %if.then56, label %if.end61

if.then56:                                        ; preds = %if.end48
  %17 = ptrtoint i64* %arrayidx to i64
  %add60 = add i64 %17, 8
  call void @dcache_clean_inval_poc(i64 noundef %17, i64 noundef %add60) #27
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end48
  call void asm sideeffect "dsb sy", "~{memory}"() #25, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end61, %if.then31, %if.end, %if.then
  %retval.0 = phi i1 [ %cmp, %if.then ], [ false, %if.end ], [ false, %if.then31 ], [ true, %if.end61 ], [ true, %if.end29 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #10 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #25, !range !22
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @alloc_lpi_range(i32 noundef %nr_lpis, i32* nocapture noundef writeonly %base) unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @lpi_range_lock) #27
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %range.0.in = phi %struct.lpi_range** [ bitcast (%struct.list_head* @lpi_range_list to %struct.lpi_range**), %entry ], [ %tmp.0.in, %for.body ]
  %range.0 = load %struct.lpi_range*, %struct.lpi_range** %range.0.in, align 8
  %entry9 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %range.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %entry9, @lpi_range_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %tmp.0.in = bitcast %struct.lpi_range* %range.0 to %struct.lpi_range**
  %span = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %range.0, i64 0, i32 2
  %0 = load i32, i32* %span, align 4
  %cmp10.not = icmp ult i32 %0, %nr_lpis
  br i1 %cmp10.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  %span.le = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %range.0, i64 0, i32 2
  %base_id = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %range.0, i64 0, i32 1
  %1 = load i32, i32* %base_id, align 8
  store i32 %1, i32* %base, align 4
  %2 = load i32, i32* %base_id, align 8
  %add = add i32 %2, %nr_lpis
  store i32 %add, i32* %base_id, align 8
  %3 = load i32, i32* %span.le, align 4
  %sub = sub i32 %3, %nr_lpis
  store i32 %sub, i32* %span.le, align 4
  %cmp14 = icmp eq i32 %sub, 0
  br i1 %cmp14, label %if.then15, label %for.end

if.then15:                                        ; preds = %if.then
  call fastcc void @list_del(%struct.list_head* noundef %entry9) #24
  %4 = bitcast %struct.lpi_range* %range.0 to i8*
  call void @kfree(i8* noundef %4) #27
  br label %for.end

for.end:                                          ; preds = %for.cond, %if.then, %if.then15
  %err.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.then ], [ -28, %for.cond ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @lpi_range_lock) #27
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64* @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #17 {
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
define internal fastcc i1 @enabled_lpis_allowed() unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %1 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %2 = ptrtoint %struct.anon.77* %1 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, %2
  %3 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %3, i64 0, i32 1
  %4 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 112
  %call2 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr) #24
  %and = and i64 %call2, 4503599627366400
  %5 = load i32, i32* @lpi_id_bits, align 4
  %sh_prom = zext i32 %5 to i64
  %shl = shl nuw i64 1, %sh_prom
  %add4 = add nuw i64 %shl, 65535
  %and5 = and i64 %add4, -65536
  %call6 = call fastcc i1 @gic_check_reserved_range(i64 noundef %and, i64 noundef %and5) #24
  ret i1 %call6
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @its_setup_lpi_prop_table() unnamed_addr #3 section ".init.text" {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %flags = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 3
  %1 = load i64, i64* %flags, align 8
  %and = and i64 %1, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %2 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %3 = ptrtoint %struct.anon.77* %2 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, %3
  %4 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %4, i64 0, i32 1
  %5 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 112
  %call2 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr) #24
  %6 = trunc i64 %call2 to i32
  %7 = and i32 %6, 31
  %conv = add nuw nsw i32 %7, 1
  store i32 %conv, i32* @lpi_id_bits, align 4
  %and6 = and i64 %call2, 4503599627366400
  %8 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %prop_table_pa = getelementptr inbounds %struct.rdists, %struct.rdists* %8, i64 0, i32 1
  store i64 %and6, i64* %prop_table_pa, align 8
  %sh_prom = zext i32 %conv to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %add8 = add nuw nsw i64 %shl, 65535
  %and9 = and i64 %add8, 9223372036854710272
  %call10 = call i8* @memremap(i64 noundef %and6, i64 noundef %and9, i64 noundef 1) #27
  %9 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %prop_table_va = getelementptr inbounds %struct.rdists, %struct.rdists* %9, i64 0, i32 2
  store i8* %call10, i8** %prop_table_va, align 8
  call fastcc void @gic_reset_prop_table(i8* noundef %call10) #24
  %.pre = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  br label %do.end58

if.else:                                          ; preds = %entry
  %gicd_typer = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 4
  %10 = load i32, i32* %gicd_typer, align 8
  %shr = lshr i32 %10, 19
  %and12 = and i32 %shr, 31
  %11 = icmp ult i32 %and12, 15
  %12 = select i1 %11, i32 %and12, i32 15
  %cond = add nuw nsw i32 %12, 1
  store i32 %cond, i32* @lpi_id_bits, align 4
  %call16 = call fastcc %struct.page* @its_allocate_prop_table(i32 noundef 2048) #24
  %tobool17.not = icmp eq %struct.page* %call16, null
  br i1 %tobool17.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else
  %13 = load i64, i64* @memstart_addr, align 8
  %shr24 = ashr i64 %13, 12
  %idx.neg = sub nsw i64 0, %shr24
  %add.ptr25 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %call16 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl26 = shl i64 %sub.ptr.sub, 6
  %14 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %prop_table_pa27 = getelementptr inbounds %struct.rdists, %struct.rdists* %14, i64 0, i32 1
  store i64 %shl26, i64* %prop_table_pa27, align 8
  %sub.i = shl i64 %sub.ptr.lhs.cast, 6
  %add.i = and i64 %sub.i, -4096
  %15 = inttoptr i64 %add.i to i8*
  %prop_table_va29 = getelementptr inbounds %struct.rdists, %struct.rdists* %14, i64 0, i32 2
  store i8* %15, i8** %prop_table_va29, align 8
  br label %do.end58

cleanup:                                          ; preds = %if.else
  %call23 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i64 0, i64 0)) #26
  br label %return

do.end58:                                         ; preds = %cleanup.thread, %if.then
  %16 = phi %struct.rdists* [ %14, %cleanup.thread ], [ %.pre, %if.then ]
  %prop_table_pa60 = getelementptr inbounds %struct.rdists, %struct.rdists* %16, i64 0, i32 1
  %call61 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i64 0, i64 0), i64* noundef %prop_table_pa60) #26
  %17 = load i32, i32* @lpi_id_bits, align 4
  %call62 = call fastcc i32 @its_lpi_init(i32 noundef %17) #28
  br label %return

return:                                           ; preds = %cleanup, %do.end58
  %retval.1 = phi i32 [ %call62, %do.end58 ], [ -12, %cleanup ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @its_allocate_pending_table(i32 noundef %gfp_flags) unnamed_addr #0 {
entry:
  %or = or i32 %gfp_flags, 256
  %0 = load i32, i32* @lpi_id_bits, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw i64 1, %sh_prom
  %div = lshr i64 %shl, 3
  %add = add nuw nsw i64 %div, 65535
  %and = and i64 %add, 4611686018427322368
  %dec.i = add nsw i64 %and, -1
  %shr.i = lshr i64 %dec.i, 12
  %1 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 true) #25, !range !22
  %2 = trunc i64 %1 to i32
  %conv.i.i = sub nuw nsw i32 64, %2
  %call1 = call fastcc %struct.page* @alloc_pages(i32 noundef %or, i32 noundef %conv.i.i) #24
  %tobool.not = icmp eq %struct.page* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = ptrtoint %struct.page* %call1 to i64
  %sub.i14 = shl i64 %3, 6
  %add.i15 = and i64 %sub.i14, -4096
  %4 = load i32, i32* @lpi_id_bits, align 4
  %sh_prom4 = zext i32 %4 to i64
  %shl5 = shl nuw i64 1, %sh_prom4
  %div6 = lshr i64 %shl5, 3
  %add7 = add nuw nsw i64 %div6, 65535
  %and8 = and i64 %add7, 4611686018427322368
  %add9 = add i64 %and8, %add.i15
  call void @dcache_clean_inval_poc(i64 noundef %add.i15, i64 noundef %add9) #27
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.page* %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memremap(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_reset_prop_table(i8* noundef %va) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @lpi_id_bits, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw i64 1, %sh_prom
  %add = add nuw i64 %shl, 65535
  %and = and i64 %add, -65536
  %call = call i8* @memset(i8* noundef %va, i32 noundef 162, i64 noundef %and) #27
  %1 = ptrtoint i8* %va to i64
  %2 = load i32, i32* @lpi_id_bits, align 4
  %sh_prom1 = zext i32 %2 to i64
  %shl2 = shl nuw i64 1, %sh_prom1
  %add3 = add nuw i64 %shl2, 65535
  %and4 = and i64 %add3, -65536
  %add5 = add i64 %and4, %1
  call void @dcache_clean_inval_poc(i64 noundef %1, i64 noundef %add5) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @its_allocate_prop_table(i32 noundef %gfp_flags) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @lpi_id_bits, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw i64 1, %sh_prom
  %add = add nuw i64 %shl, 65535
  %and = and i64 %add, -65536
  %dec.i = add i64 %and, -1
  %shr.i = lshr i64 %dec.i, 12
  %1 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 true) #25, !range !22
  %2 = trunc i64 %1 to i32
  %conv.i.i = sub nuw nsw i32 64, %2
  %call1 = call fastcc %struct.page* @alloc_pages(i32 noundef %gfp_flags, i32 noundef %conv.i.i) #24
  %tobool.not = icmp eq %struct.page* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = ptrtoint %struct.page* %call1 to i64
  %sub.i6 = shl i64 %3, 6
  %add.i7 = and i64 %sub.i6, -4096
  %4 = inttoptr i64 %add.i7 to i8*
  call fastcc void @gic_reset_prop_table(i8* noundef %4) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.page* %call1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @its_lpi_init(i32 noundef %id_bits) unnamed_addr #3 section ".init.text" {
entry:
  %sh_prom = zext i32 %id_bits to i64
  %shl = shl nuw i64 1, %sh_prom
  %0 = trunc i64 %shl to i32
  %conv = add i32 %0, -8192
  %1 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %gicd_typer = getelementptr inbounds %struct.rdists, %struct.rdists* %1, i64 0, i32 4
  %2 = load i32, i32* %gicd_typer, align 8
  %shr = lshr i32 %2, 11
  %and = and i32 %shr, 31
  %add = add nuw nsw i32 %and, 1
  %sh_prom1 = zext i32 %add to i64
  %shl2 = shl nuw nsw i64 1, %sh_prom1
  %conv3 = trunc i64 %shl2 to i32
  %cmp = icmp ugt i32 %conv3, 2
  br i1 %cmp, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %entry
  %cmp5 = icmp ult i32 %conv, %conv3
  br i1 %cmp5, label %if.then, label %if.then22, !prof !18

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 2109; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !53
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv3) #26
  br label %if.end24

if.end24:                                         ; preds = %if.then, %if.then22, %entry
  %lpis.0 = phi i32 [ %conv, %if.then ], [ %conv3, %if.then22 ], [ %conv, %entry ]
  %call25 = call fastcc i32 @free_lpi_range(i32 noundef 8192, i32 noundef %lpis.0) #24
  ret i32 %call25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_sgi_irq_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, i8* noundef %args) #0 {
entry:
  %cmp.not = icmp eq i32 %nr_irqs, 16
  br i1 %cmp.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 4319; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !54
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sgi_config = getelementptr inbounds i8, i8* %args, i64 56
  %0 = bitcast i8* %sgi_config to [16 x %struct.anon.82]*
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.body ]
  %priority = getelementptr [16 x %struct.anon.82], [16 x %struct.anon.82]* %0, i64 0, i64 %indvars.iv, i32 0
  store i8 0, i8* %priority, align 1
  %enabled = getelementptr [16 x %struct.anon.82], [16 x %struct.anon.82]* %0, i64 0, i64 %indvars.iv, i32 1
  store i8 0, i8* %enabled, align 1
  %group = getelementptr [16 x %struct.anon.82], [16 x %struct.anon.82]* %0, i64 0, i64 %indvars.iv, i32 2
  store i8 0, i8* %group, align 1
  %1 = trunc i64 %indvars.iv to i32
  %add = add i32 %1, %virq
  %call = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* noundef %domain, i32 noundef %add, i64 noundef %indvars.iv, %struct.irq_chip* noundef nonnull @its_sgi_irq_chip, i8* noundef %args) #27
  call fastcc void @irq_set_status_flags(i32 noundef %add) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @its_sgi_irq_domain_free(%struct.irq_domain* nocapture noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #11 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_sgi_irq_domain_activate(%struct.irq_domain* nocapture noundef readnone %domain, %struct.irq_data* nocapture noundef readonly %d, i1 noundef %reserve) #0 {
entry:
  call fastcc void @its_configure_sgi(%struct.irq_data* noundef %d, i1 noundef false) #24
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_sgi_irq_domain_deactivate(%struct.irq_domain* nocapture noundef readnone %domain, %struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %sgi_config = getelementptr inbounds i8, i8* %call, i64 56
  %0 = bitcast i8* %sgi_config to [16 x %struct.anon.82]*
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %1 = load i64, i64* %hwirq, align 8
  %enabled = getelementptr [16 x %struct.anon.82], [16 x %struct.anon.82]* %0, i64 0, i64 %1, i32 1
  store i8 0, i8* %enabled, align 1
  call fastcc void @its_configure_sgi(%struct.irq_data* noundef %d, i1 noundef false) #24
  call fastcc void @its_configure_sgi(%struct.irq_data* noundef %d, i1 noundef true) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_status_flags(i32 noundef %irq) unnamed_addr #0 {
entry:
  call void @irq_modify_status(i32 noundef %irq, i64 noundef 0, i64 noundef 524288) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_sgi_mask_irq(%struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %sgi_config = getelementptr inbounds i8, i8* %call, i64 56
  %0 = bitcast i8* %sgi_config to [16 x %struct.anon.82]*
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %1 = load i64, i64* %hwirq, align 8
  %enabled = getelementptr [16 x %struct.anon.82], [16 x %struct.anon.82]* %0, i64 0, i64 %1, i32 1
  store i8 0, i8* %enabled, align 1
  call fastcc void @its_configure_sgi(%struct.irq_data* noundef %d, i1 noundef false) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_sgi_unmask_irq(%struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %sgi_config = getelementptr inbounds i8, i8* %call, i64 56
  %0 = bitcast i8* %sgi_config to [16 x %struct.anon.82]*
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %1 = load i64, i64* %hwirq, align 8
  %enabled = getelementptr [16 x %struct.anon.82], [16 x %struct.anon.82]* %0, i64 0, i64 %1, i32 1
  store i8 1, i8* %enabled, align 1
  call fastcc void @its_configure_sgi(%struct.irq_data* noundef %d, i1 noundef false) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_sgi_set_affinity(%struct.irq_data* nocapture noundef readonly %d, %struct.cpumask* noundef %mask_val, i1 noundef %force) #0 {
entry:
  call fastcc void @irq_data_update_effective_affinity(%struct.irq_data* noundef %d, %struct.cpumask* noundef %mask_val) #24
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_sgi_get_irqchip_state(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %which, i8* nocapture noundef writeonly %val) #0 {
entry:
  %flags = alloca i64, align 8
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_vpe*
  %1 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #25
  store i64 0, i64* %flags, align 8, !annotation !17
  %cmp.not = icmp eq i32 %which, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @vpe_to_cpuid_lock(%struct.its_vpe* noundef %0, i64* noundef nonnull %flags) #24
  %2 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %2, i64 0, i32 0
  %3 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %4 = ptrtoint %struct.anon.77* %3 to i64
  %5 = zext i32 %call1 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %5
  %6 = load i64, i64* %arrayidx, align 8
  %add = add i64 %6, %4
  %7 = inttoptr i64 %add to %struct.anon.77*
  %rd_lock = getelementptr inbounds %struct.anon.77, %struct.anon.77* %7, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rd_lock) #24
  %8 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist9 = getelementptr inbounds %struct.rdists, %struct.rdists* %8, i64 0, i32 0
  %9 = load %struct.anon.77*, %struct.anon.77** %rdist9, align 8
  %10 = ptrtoint %struct.anon.77* %9 to i64
  %11 = load i64, i64* %arrayidx, align 8
  %add13 = add i64 %11, %10
  %12 = inttoptr i64 %add13 to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %12, i64 0, i32 1
  %13 = load i8*, i8** %rd_base, align 8
  %vpe_id = getelementptr inbounds i8, i8* %call, i64 118
  %14 = bitcast i8* %vpe_id to i16*
  %15 = load i16, i16* %14, align 2
  %conv = zext i16 %15 to i32
  %add.ptr14 = getelementptr i8, i8* %13, i64 131200
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %conv, i8* %add.ptr14) #25, !srcloc !10
  %add.ptr16 = getelementptr i8, i8* %13, i64 131208
  %16 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr16) #25, !srcloc !8
  %tobool.not82 = icmp sgt i32 %16, -1
  br i1 %tobool.not82, label %do.body36, label %if.end32

if.end20:                                         ; preds = %if.end32
  %dec = add nsw i32 %dec90, -1
  %tobool21.not = icmp eq i32 %dec, 0
  br i1 %tobool21.not, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.end20
  %call23 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @its_sgi_get_irqchip_state._rs, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.its_sgi_get_irqchip_state, i64 0, i64 0)) #27
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body36, label %do.end28

do.end28:                                         ; preds = %if.then22
  %call30 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i64 0, i64 0)) #26
  br label %do.body36

if.end32:                                         ; preds = %if.end, %if.end20
  %dec90 = phi i32 [ %dec, %if.end20 ], [ 999999, %if.end ]
  call fastcc void @cpu_relax() #24
  call void @__const_udelay(i64 noundef 4295) #27
  %17 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr16) #25, !srcloc !8
  %tobool.not = icmp sgt i32 %17, -1
  br i1 %tobool.not, label %do.body36, label %if.end20

do.body36:                                        ; preds = %if.end32, %if.end, %do.end28, %if.then22
  %18 = phi i32 [ %17, %do.end28 ], [ %17, %if.then22 ], [ %16, %if.end ], [ %17, %if.end32 ]
  %tobool48.not = phi i1 [ true, %do.end28 ], [ true, %if.then22 ], [ false, %if.end ], [ false, %if.end32 ]
  %19 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist42 = getelementptr inbounds %struct.rdists, %struct.rdists* %19, i64 0, i32 0
  %20 = load %struct.anon.77*, %struct.anon.77** %rdist42, align 8
  %21 = ptrtoint %struct.anon.77* %20 to i64
  %22 = load i64, i64* %arrayidx, align 8
  %add46 = add i64 %22, %21
  %23 = inttoptr i64 %add46 to %struct.anon.77*
  %rd_lock47 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %23, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rd_lock47) #24
  %24 = load i64, i64* %flags, align 8
  call fastcc void @vpe_to_cpuid_unlock(%struct.its_vpe* noundef %0, i64 noundef %24) #24
  br i1 %tobool48.not, label %cleanup, label %if.end50

if.end50:                                         ; preds = %do.body36
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %25 = load i64, i64* %hwirq, align 8
  %sh_prom = trunc i64 %25 to i32
  %shl = shl nuw i32 1, %sh_prom
  %and51 = and i32 %shl, %18
  %tobool52 = icmp ne i32 %and51, 0
  %frombool = zext i1 %tobool52 to i8
  store i8 %frombool, i8* %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.body36, %entry, %if.end50
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -22, %entry ], [ -6, %do.body36 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #25
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_sgi_set_irqchip_state(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %which, i1 noundef %state) #0 {
entry:
  %cmp.not = icmp eq i32 %which, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  br i1 %state, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %call2 = call fastcc %struct.its_node* @find_4_1_its() #24
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %0 = load i64, i64* %hwirq, align 8
  %vpe_id = getelementptr inbounds i8, i8* %call, i64 118
  %1 = bitcast i8* %vpe_id to i16*
  %2 = load i16, i16* %1, align 2
  %conv20 = zext i16 %2 to i64
  %shl = shl nuw nsw i64 %conv20, 32
  %and47 = and i64 %0, 15
  %or = or i64 %and47, %shl
  %sgir_base = getelementptr inbounds %struct.its_node, %struct.its_node* %call2, i64 0, i32 4
  %3 = load i8*, i8** %sgir_base, align 8
  %add.ptr48 = getelementptr i8, i8* %3, i64 32
  call fastcc void @__raw_writeq(i64 noundef %or, i8* noundef %add.ptr48) #24
  br label %return

if.else:                                          ; preds = %if.end
  call fastcc void @its_configure_sgi(%struct.irq_data* noundef %d, i1 noundef true) #24
  br label %return

return:                                           ; preds = %if.then1, %if.else, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.else ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_sgi_set_vcpu_affinity(%struct.irq_data* nocapture noundef readonly %d, i8* nocapture noundef readonly %vcpu_info) #0 {
entry:
  %cmd_type = bitcast i8* %vcpu_info to i32*
  %0 = load i32, i32* %cmd_type, align 8
  %cond = icmp eq i32 %0, 8
  br i1 %cond, label %sw.bb, label %cleanup

sw.bb:                                            ; preds = %entry
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %1 = getelementptr inbounds i8, i8* %vcpu_info, i64 8
  %2 = load i8, i8* %1, align 8
  %sgi_config = getelementptr inbounds i8, i8* %call, i64 56
  %3 = bitcast i8* %sgi_config to [16 x %struct.anon.82]*
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %4 = load i64, i64* %hwirq, align 8
  %priority1 = getelementptr [16 x %struct.anon.82], [16 x %struct.anon.82]* %3, i64 0, i64 %4, i32 0
  store i8 %2, i8* %priority1, align 1
  %5 = getelementptr inbounds i8, i8* %vcpu_info, i64 9
  %6 = load i8, i8* %5, align 1, !range !9
  %7 = load i64, i64* %hwirq, align 8
  %group5 = getelementptr [16 x %struct.anon.82], [16 x %struct.anon.82]* %3, i64 0, i64 %7, i32 2
  store i8 %6, i8* %group5, align 1
  call fastcc void @its_configure_sgi(%struct.irq_data* noundef %d, i1 noundef false) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_configure_sgi(%struct.irq_data* nocapture noundef readonly %d, i1 noundef %clear) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %frombool = zext i1 %clear to i8
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false), !annotation !17
  %its_vsgi_cmd = bitcast %struct.its_cmd_desc* %desc to %struct.anon.99*
  %3 = bitcast %struct.its_cmd_desc* %desc to i8**
  store i8* %call, i8** %3, align 8
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %4 = load i64, i64* %hwirq, align 8
  %conv = trunc i64 %4 to i8
  %sgi = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %5 = bitcast %struct.its_device** %sgi to i8*
  store i8 %conv, i8* %5, align 8
  %sgi_config = getelementptr inbounds i8, i8* %call, i64 56
  %6 = bitcast i8* %sgi_config to [16 x %struct.anon.82]*
  %priority = getelementptr [16 x %struct.anon.82], [16 x %struct.anon.82]* %6, i64 0, i64 %4, i32 0
  %7 = load i8, i8* %priority, align 1
  %priority5 = getelementptr inbounds %struct.anon.99, %struct.anon.99* %its_vsgi_cmd, i64 0, i32 2
  store i8 %7, i8* %priority5, align 1
  %enabled = getelementptr [16 x %struct.anon.82], [16 x %struct.anon.82]* %6, i64 0, i64 %4, i32 1
  %8 = load i8, i8* %enabled, align 1, !range !9
  %enable = getelementptr inbounds %struct.anon.99, %struct.anon.99* %its_vsgi_cmd, i64 0, i32 3
  store i8 %8, i8* %enable, align 2
  %group = getelementptr [16 x %struct.anon.82], [16 x %struct.anon.82]* %6, i64 0, i64 %4, i32 2
  %9 = load i8, i8* %group, align 1, !range !9
  %group16 = getelementptr inbounds %struct.anon.99, %struct.anon.99* %its_vsgi_cmd, i64 0, i32 4
  store i8 %9, i8* %group16, align 1
  %clear20 = getelementptr inbounds %struct.anon.99, %struct.anon.99* %its_vsgi_cmd, i64 0, i32 5
  store i8 %frombool, i8* %clear20, align 4
  %call22 = call fastcc %struct.its_node* @find_4_1_its() #24
  call fastcc void @its_send_single_vcommand(%struct.its_node* noundef %call22, %struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_vsgi_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc %struct.its_node* @find_4_1_its() unnamed_addr #22 {
entry:
  %0 = load %struct.its_node*, %struct.its_node** @find_4_1_its.its, align 8
  %tobool.not = icmp eq %struct.its_node* %0, null
  br i1 %tobool.not, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %entry
  %.pn15 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %cmp.not17 = icmp eq i8* %.pn15, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not17, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %.pn18 = phi i8* [ %.pn, %for.inc ], [ %.pn15, %for.cond.preheader ]
  %typer = getelementptr i8, i8* %.pn18, i64 272
  %1 = bitcast i8* %typer to i64*
  %2 = load i64, i64* %1, align 8
  %and = and i64 %2, 1099511627776
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %for.inc, label %return.loopexit

for.inc:                                          ; preds = %for.body
  %3 = bitcast i8* %.pn18 to i8**
  %.pn = load i8*, i8** %3, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  store %struct.its_node* null, %struct.its_node** @find_4_1_its.its, align 8
  br label %return

return.loopexit:                                  ; preds = %for.body
  %storemerge19 = getelementptr i8, i8* %.pn18, i64 -40
  store i8* %storemerge19, i8** bitcast (%struct.its_node** @find_4_1_its.its to i8**), align 8
  %storemerge.le = getelementptr i8, i8* %.pn18, i64 -40
  %.cast.le = bitcast i8* %storemerge.le to %struct.its_node*
  br label %return

return:                                           ; preds = %entry, %for.end, %return.loopexit
  %retval.0 = phi %struct.its_node* [ %.cast.le, %return.loopexit ], [ null, %for.end ], [ %0, %entry ]
  ret %struct.its_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_vpe* @its_build_vsgi_cmd(%struct.its_node* nocapture noundef readonly %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 12
  %0 = load i64, i64* %typer, align 8
  %and = and i64 %0, 1099511627776
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end20, !prof !18

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 955; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !55
  br label %return

if.end20:                                         ; preds = %entry
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 35) #24
  %its_vsgi_cmd = bitcast %struct.its_cmd_desc* %desc to %struct.anon.99*
  %vpe = getelementptr %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  %1 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vpe_id = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %1, i64 0, i32 10
  %2 = load i16, i16* %vpe_id, align 2
  call fastcc void @its_encode_vpeid(%struct.its_cmd_block* noundef %cmd, i16 noundef %2) #24
  %sgi = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast %struct.its_device** %sgi to i8*
  %4 = load i8, i8* %3, align 8
  call fastcc void @its_encode_sgi_intid(%struct.its_cmd_block* noundef %cmd, i8 noundef %4) #24
  %priority = getelementptr inbounds %struct.anon.99, %struct.anon.99* %its_vsgi_cmd, i64 0, i32 2
  %5 = load i8, i8* %priority, align 1
  call fastcc void @its_encode_sgi_priority(%struct.its_cmd_block* noundef %cmd, i8 noundef %5) #24
  %group = getelementptr inbounds %struct.anon.99, %struct.anon.99* %its_vsgi_cmd, i64 0, i32 4
  %6 = load i8, i8* %group, align 1, !range !9
  %tobool24 = icmp ne i8 %6, 0
  call fastcc void @its_encode_sgi_group(%struct.its_cmd_block* noundef %cmd, i1 noundef %tobool24) #24
  %clear = getelementptr inbounds %struct.anon.99, %struct.anon.99* %its_vsgi_cmd, i64 0, i32 5
  %7 = load i8, i8* %clear, align 4, !range !9
  %tobool26 = icmp ne i8 %7, 0
  call fastcc void @its_encode_sgi_clear(%struct.its_cmd_block* noundef %cmd, i1 noundef %tobool26) #24
  %enable = getelementptr inbounds %struct.anon.99, %struct.anon.99* %its_vsgi_cmd, i64 0, i32 3
  %8 = load i8, i8* %enable, align 2, !range !9
  %tobool28 = icmp ne i8 %8, 0
  call fastcc void @its_encode_sgi_enable(%struct.its_cmd_block* noundef %cmd, i1 noundef %tobool28) #24
  %9 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %call = call fastcc %struct.its_vpe* @valid_vpe(%struct.its_node* noundef %its, %struct.its_vpe* noundef %9) #24
  br label %return

return:                                           ; preds = %if.then, %if.end20
  %retval.0 = phi %struct.its_vpe* [ %call, %if.end20 ], [ null, %if.then ]
  ret %struct.its_vpe* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_sgi_intid(%struct.its_cmd_block* nocapture noundef %cmd, i8 noundef %sgi) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 0
  %conv = zext i8 %sgi to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 35, i32 noundef 32) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_sgi_priority(%struct.its_cmd_block* nocapture noundef %cmd, i8 noundef %prio) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 0
  %0 = lshr i8 %prio, 4
  %1 = zext i8 %0 to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %1, i32 noundef 23, i32 noundef 20) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_sgi_group(%struct.its_cmd_block* nocapture noundef %cmd, i1 noundef %grp) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 0
  %conv = zext i1 %grp to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 10, i32 noundef 10) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_sgi_clear(%struct.its_cmd_block* nocapture noundef %cmd, i1 noundef %clr) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 0
  %conv = zext i1 %clr to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 9, i32 noundef 9) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_sgi_enable(%struct.its_cmd_block* nocapture noundef %cmd, i1 noundef %en) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 0
  %conv = zext i1 %en to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 8, i32 noundef 8) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_vpe_irq_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, i8* noundef %args) #0 {
entry:
  %base = alloca i32, align 4
  %nr_ids = alloca i32, align 4
  %0 = bitcast i32* %base to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #25
  store i32 0, i32* %base, align 4, !annotation !17
  %1 = bitcast i32* %nr_ids to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #25
  store i32 0, i32* %nr_ids, align 4, !annotation !17
  %tobool.not = icmp eq i8* %args, null
  br i1 %tobool.not, label %do.body4, label %cond.end30, !prof !18

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 4463; .short 0; .popsection; 14471: brk 0x800", ""() #25, !srcloc !56
  unreachable

cond.end30:                                       ; preds = %entry
  %conv28 = zext i32 %nr_irqs to i64
  %call29 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %conv28) #30
  %conv32 = trunc i64 %call29 to i32
  %call33 = call fastcc i64* @its_lpi_alloc(i32 noundef %conv32, i32* noundef nonnull %base, i32* noundef nonnull %nr_ids) #24
  %tobool34.not = icmp eq i64* %call33, null
  br i1 %tobool34.not, label %cleanup, label %if.end36

if.end36:                                         ; preds = %cond.end30
  %2 = load i32, i32* %nr_ids, align 4
  %cmp37 = icmp ult i32 %2, %nr_irqs
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  %3 = load i32, i32* %base, align 4
  call fastcc void @its_lpi_free(i64* noundef nonnull %call33, i32 noundef %3, i32 noundef %2) #24
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %call41 = call fastcc %struct.page* @its_allocate_prop_table(i32 noundef 3264) #24
  %tobool42.not = icmp eq %struct.page* %call41, null
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  %4 = load i32, i32* %base, align 4
  call fastcc void @its_lpi_free(i64* noundef nonnull %call33, i32 noundef %4, i32 noundef %2) #24
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %db_bitmap = getelementptr inbounds i8, i8* %args, i64 48
  %5 = bitcast i8* %db_bitmap to i64**
  store i64* %call33, i64** %5, align 8
  %6 = load i32, i32* %base, align 4
  %conv45 = sext i32 %6 to i64
  %db_lpi_base = getelementptr inbounds i8, i8* %args, i64 40
  %7 = bitcast i8* %db_lpi_base to i64*
  store i64 %conv45, i64* %7, align 8
  %nr_db_lpis = getelementptr inbounds i8, i8* %args, i64 56
  %8 = bitcast i8* %nr_db_lpis to i32*
  store i32 %2, i32* %8, align 8
  %vprop_page46 = getelementptr inbounds i8, i8* %args, i64 16
  %9 = bitcast i8* %vprop_page46 to %struct.page**
  store %struct.page* %call41, %struct.page** %9, align 8
  %10 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %10, i64 0, i32 7
  %11 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool47.not = icmp eq i8 %11, 0
  %spec.select = select i1 %tobool47.not, %struct.irq_chip* @its_vpe_irq_chip, %struct.irq_chip* @its_vpe_4_1_irq_chip
  %cmp50143.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp50143.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end44
  %vpes = getelementptr inbounds i8, i8* %args, i64 24
  %12 = bitcast i8* %vpes to %struct.its_vpe***
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end69
  %i.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end69 ]
  %add52 = add i32 %i.0144, %6
  %conv53 = sext i32 %add52 to i64
  %13 = load %struct.its_vpe**, %struct.its_vpe*** %12, align 8
  %idxprom = sext i32 %i.0144 to i64
  %arrayidx = getelementptr %struct.its_vpe*, %struct.its_vpe** %13, i64 %idxprom
  %14 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx, align 8
  %vpe_db_lpi = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %14, i64 0, i32 4
  store i64 %conv53, i64* %vpe_db_lpi, align 8
  %15 = load %struct.its_vpe**, %struct.its_vpe*** %12, align 8
  %arrayidx56 = getelementptr %struct.its_vpe*, %struct.its_vpe** %15, i64 %idxprom
  %16 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx56, align 8
  %call57 = call fastcc i32 @its_vpe_init(%struct.its_vpe* noundef %16) #24
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.then78

if.end60:                                         ; preds = %for.body
  %add61 = add i32 %i.0144, %virq
  %17 = load %struct.its_vpe**, %struct.its_vpe*** %12, align 8
  %arrayidx64 = getelementptr %struct.its_vpe*, %struct.its_vpe** %17, i64 %idxprom
  %18 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx64, align 8
  %vpe_db_lpi65 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %18, i64 0, i32 4
  %19 = load i64, i64* %vpe_db_lpi65, align 8
  %call66 = call fastcc i32 @its_irq_gic_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %add61, i64 noundef %19) #24
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.then78

if.end69:                                         ; preds = %if.end60
  %20 = load %struct.its_vpe**, %struct.its_vpe*** %12, align 8
  %arrayidx74 = getelementptr %struct.its_vpe*, %struct.its_vpe** %20, i64 %idxprom
  %21 = bitcast %struct.its_vpe** %arrayidx74 to i8**
  %22 = load i8*, i8** %21, align 8
  %call75 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* noundef %domain, i32 noundef %add61, i64 noundef %idxprom, %struct.irq_chip* noundef nonnull %spec.select, i8* noundef %22) #27
  call fastcc void @set_bit(i64 noundef %idxprom, i64* noundef nonnull %call33) #24
  %inc = add nuw i32 %i.0144, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %cleanup, label %for.body

if.then78:                                        ; preds = %for.body, %if.end60
  %err.1.ph = phi i32 [ %call66, %if.end60 ], [ %call57, %for.body ]
  %cmp79 = icmp sgt i32 %i.0144, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.then78
  call void @its_vpe_irq_domain_free(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %i.0144) #24
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.then78
  call fastcc void @its_lpi_free(i64* noundef nonnull %call33, i32 noundef %6, i32 noundef %2) #24
  call fastcc void @its_free_prop_table(%struct.page* noundef nonnull %call41) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.end44, %if.end82, %cond.end30, %if.then43, %if.then39
  %retval.0 = phi i32 [ -12, %if.then39 ], [ -12, %if.then43 ], [ -12, %cond.end30 ], [ %err.1.ph, %if.end82 ], [ 0, %if.end44 ], [ 0, %if.end69 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #25
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_vpe_irq_domain_free(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #0 {
entry:
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %0 = bitcast i8** %host_data to %struct.its_vm**
  %1 = load %struct.its_vm*, %struct.its_vm** %0, align 8
  call void @irq_domain_free_irqs_parent(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #27
  %cmp37.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp37.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %db_bitmap = getelementptr inbounds %struct.its_vm, %struct.its_vm* %1, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %do.end9
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end9 ]
  %add = add i32 %i.038, %virq
  %call = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %add) #27
  %call1 = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %call) #24
  %its_vm = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %its_vm to %struct.its_vm**
  %3 = load %struct.its_vm*, %struct.its_vm** %2, align 8
  %cmp2.not = icmp eq %struct.its_vm* %1, %3
  br i1 %cmp2.not, label %do.end9, label %do.body4, !prof !12

do.body4:                                         ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 4441; .short 0; .popsection; 14471: brk 0x800", ""() #25, !srcloc !57
  unreachable

do.end9:                                          ; preds = %for.body
  %4 = bitcast i8* %call1 to %struct.its_vpe*
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 2
  %5 = load i64, i64* %hwirq, align 8
  %6 = load i64*, i64** %db_bitmap, align 8
  call fastcc void @clear_bit(i64 noundef %5, i64* noundef %6) #24
  call fastcc void @its_vpe_teardown(%struct.its_vpe* noundef %4) #24
  call void @irq_domain_reset_irq_data(%struct.irq_data* noundef %call) #27
  %inc = add nuw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %do.end9, %entry
  %db_bitmap10 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %1, i64 0, i32 6
  %7 = load i64*, i64** %db_bitmap10, align 8
  %nr_db_lpis = getelementptr inbounds %struct.its_vm, %struct.its_vm* %1, i64 0, i32 7
  %8 = load i32, i32* %nr_db_lpis, align 8
  %call11 = call fastcc i1 @bitmap_empty(i64* noundef %7, i32 noundef %8) #24
  br i1 %call11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %for.end
  %9 = load i64*, i64** %db_bitmap10, align 8
  %db_lpi_base = getelementptr inbounds %struct.its_vm, %struct.its_vm* %1, i64 0, i32 5
  %10 = load i64, i64* %db_lpi_base, align 8
  %conv14 = trunc i64 %10 to i32
  %11 = load i32, i32* %nr_db_lpis, align 8
  call fastcc void @its_lpi_free(i64* noundef %9, i32 noundef %conv14, i32 noundef %11) #24
  %vprop_page = getelementptr inbounds %struct.its_vm, %struct.its_vm* %1, i64 0, i32 2
  %12 = load %struct.page*, %struct.page** %vprop_page, align 8
  call fastcc void @its_free_prop_table(%struct.page* noundef %12) #24
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_vpe_irq_domain_activate(%struct.irq_domain* nocapture noundef readnone %domain, %struct.irq_data* nocapture noundef readonly %d, i1 noundef %reserve) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_vpe*
  %call1 = call fastcc i1 @gic_requires_eager_mapping() #24
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef nonnull @__cpu_online_mask) #24
  %conv = trunc i32 %call2 to i16
  %col_idx = getelementptr inbounds i8, i8* %call, i64 116
  %1 = bitcast i8* %col_idx to i16*
  store i16 %conv, i16* %1, align 4
  %.pn30 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %cmp.not33 = icmp eq i8* %.pn30, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not33, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn34 = phi i8* [ %.pn, %for.inc ], [ %.pn30, %if.end ]
  %its.035.in = getelementptr i8, i8* %.pn34, i64 -40
  %its.035 = bitcast i8* %its.035.in to %struct.its_node*
  %typer = getelementptr i8, i8* %.pn34, i64 272
  %2 = bitcast i8* %typer to i64*
  %3 = load i64, i64* %2, align 8
  %and = and i64 %3, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.end6

if.end6:                                          ; preds = %for.body
  call fastcc void @its_send_vmapp(%struct.its_node* noundef %its.035, %struct.its_vpe* noundef %0, i1 noundef true) #24
  call fastcc void @its_send_vinvall(%struct.its_node* noundef %its.035, %struct.its_vpe* noundef %0) #24
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end6
  %4 = bitcast i8* %.pn34 to i8**
  %.pn = load i8*, i8** %4, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  %.pre = load i16, i16* %1, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %5 = phi i16 [ %.pre, %for.end.loopexit ], [ %conv, %if.end ]
  %conv15 = zext i16 %5 to i32
  %call16 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %conv15) #24
  call fastcc void @irq_data_update_effective_affinity(%struct.irq_data* noundef %d, %struct.cpumask* noundef nonnull %call16) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_vpe_irq_domain_deactivate(%struct.irq_domain* nocapture noundef readnone %domain, %struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_vpe*
  %call1 = call fastcc i1 @gic_requires_eager_mapping() #24
  br i1 %call1, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %.pn36 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %cmp.not39 = icmp eq i8* %.pn36, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not39, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %.pn40 = phi i8* [ %.pn, %for.inc ], [ %.pn36, %for.cond.preheader ]
  %typer = getelementptr i8, i8* %.pn40, i64 272
  %1 = bitcast i8* %typer to i64*
  %2 = load i64, i64* %1, align 8
  %and = and i64 %2, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.end4

if.end4:                                          ; preds = %for.body
  %its.041.in = getelementptr i8, i8* %.pn40, i64 -40
  %its.041 = bitcast i8* %its.041.in to %struct.its_node*
  call fastcc void @its_send_vmapp(%struct.its_node* noundef %its.041, %struct.its_vpe* noundef %0, i1 noundef false) #24
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end4
  %3 = bitcast i8* %.pn40 to i8**
  %.pn = load i8*, i8** %3, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call12 = call fastcc %struct.its_node* @find_4_1_its() #24
  %tobool13.not = icmp eq %struct.its_node* %call12, null
  br i1 %tobool13.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %vmapp_count = getelementptr inbounds i8, i8* %call, i64 104
  %counter.i = bitcast i8* %vmapp_count to i32*
  %4 = load volatile i32, i32* %counter.i, align 4
  %tobool15.not = icmp eq i32 %4, 0
  br i1 %tobool15.not, label %if.then16, label %cleanup

if.then16:                                        ; preds = %land.lhs.true
  %vpt_page = bitcast i8* %call to %struct.page**
  %5 = load %struct.page*, %struct.page** %vpt_page, align 8
  %6 = ptrtoint %struct.page* %5 to i64
  %sub.i = shl i64 %6, 6
  %add.i = and i64 %sub.i, -4096
  %7 = load i32, i32* @lpi_id_bits, align 4
  %sh_prom = zext i32 %7 to i64
  %shl = shl nuw i64 1, %sh_prom
  %div = lshr i64 %shl, 3
  %add = add nuw nsw i64 %div, 65535
  %and20 = and i64 %add, 4611686018427322368
  %add21 = add i64 %and20, %add.i
  call void @dcache_clean_inval_poc(i64 noundef %add.i, i64 noundef %add21) #27
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true, %if.then16, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_vpe_init(%struct.its_vpe* noundef %vpe) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @its_vpe_id_alloc() #24
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.page* @its_allocate_pending_table(i32 noundef 3264) #24
  %tobool.not = icmp eq %struct.page* %call1, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %conv = trunc i32 %call to i16
  call fastcc void @its_vpe_id_free(i16 noundef %conv) #24
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i1 @its_alloc_vpe_table(i32 noundef %call) #24
  br i1 %call4, label %do.body, label %if.then5

if.then5:                                         ; preds = %if.end3
  %conv6 = trunc i32 %call to i16
  call fastcc void @its_vpe_id_free(i16 noundef %conv6) #24
  call fastcc void @its_free_pending_table(%struct.page* noundef nonnull %call1) #24
  br label %cleanup

do.body:                                          ; preds = %if.end3
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 8, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %conv8 = trunc i32 %call to i16
  %vpe_id9 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 10
  store i16 %conv8, i16* %vpe_id9, align 2
  %vpt_page10 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 0
  store %struct.page* %call1, %struct.page** %vpt_page10, align 8
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 7
  %1 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool11.not = icmp eq i8 %1, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.body
  %counter.i = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 7, i32 0, i32 3, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  br label %cleanup

if.else:                                          ; preds = %do.body
  %2 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 7
  %vpe_proxy_event = bitcast %union.anon.79* %2 to i32*
  store i32 -1, i32* %vpe_proxy_event, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.else, %entry, %if.then5, %if.then2
  %retval.0 = phi i32 [ -12, %if.then5 ], [ -12, %if.then2 ], [ %call, %entry ], [ 0, %if.else ], [ 0, %if.then12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_free_prop_table(%struct.page* noundef %prop_page) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @lpi_id_bits, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw i64 1, %sh_prom
  %add = add nuw i64 %shl, 65535
  %and = and i64 %add, -65536
  %dec.i = add i64 %and, -1
  %shr.i = lshr i64 %dec.i, 12
  %1 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 true) #25, !range !22
  %2 = trunc i64 %1 to i32
  %conv.i.i = sub nuw nsw i32 64, %2
  %3 = ptrtoint %struct.page* %prop_page to i64
  %sub.i = shl i64 %3, 6
  %add.i = and i64 %sub.i, -4096
  call void @free_pages(i64 noundef %add.i, i32 noundef %conv.i.i) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_vpe_mask_irq(%struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  call fastcc void @lpi_write_config(%struct.irq_data* noundef %0, i8 noundef 1, i8 noundef 0) #24
  call fastcc void @its_vpe_send_inv(%struct.irq_data* noundef %d) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_vpe_unmask_irq(%struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  call fastcc void @lpi_write_config(%struct.irq_data* noundef %0, i8 noundef 0, i8 noundef 1) #24
  call fastcc void @its_vpe_send_inv(%struct.irq_data* noundef %d) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_vpe_set_affinity(%struct.irq_data* nocapture noundef readonly %d, %struct.cpumask* noundef %mask_val, i1 noundef %force) #0 {
entry:
  %flags = alloca i64, align 8
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_vpe*
  %call1 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %mask_val) #24
  %1 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #25
  store i64 0, i64* %flags, align 8, !annotation !17
  %call2 = call fastcc i32 @vpe_to_cpuid_lock(%struct.its_vpe* noundef %0, i64* noundef nonnull %flags) #24
  %cmp = icmp eq i32 %call2, %call1
  br i1 %cmp, label %out, label %if.end

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call1 to i16
  %col_idx = getelementptr inbounds i8, i8* %call, i64 116
  %2 = bitcast i8* %col_idx to i16*
  store i16 %conv, i16* %2, align 4
  %3 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %3, i64 0, i32 0
  %4 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %5 = ptrtoint %struct.anon.77* %4 to i64
  %idxprom = sext i32 %call1 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %add = add i64 %6, %5
  %7 = inttoptr i64 %add to %struct.anon.77*
  %vpe_table_mask = getelementptr inbounds %struct.anon.77, %struct.anon.77* %7, i64 0, i32 5
  %8 = load %struct.cpumask*, %struct.cpumask** %vpe_table_mask, align 8
  %tobool.not = icmp eq %struct.cpumask* %8, null
  br i1 %tobool.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call16 = call fastcc i32 @cpumask_test_cpu(i32 noundef %call2, %struct.cpumask* noundef nonnull %8) #24
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %out

if.end19:                                         ; preds = %land.lhs.true, %if.end
  call fastcc void @its_send_vmovp(%struct.its_vpe* noundef %0) #24
  call fastcc void @its_vpe_db_proxy_move(%struct.its_vpe* noundef %0, i32 noundef %call2, i32 noundef %call1) #24
  br label %out

out:                                              ; preds = %land.lhs.true, %entry, %if.end19
  %call20 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %call1) #24
  call fastcc void @irq_data_update_effective_affinity(%struct.irq_data* noundef %d, %struct.cpumask* noundef nonnull %call20) #24
  %9 = load i64, i64* %flags, align 8
  call fastcc void @vpe_to_cpuid_unlock(%struct.its_vpe* noundef %0, i64 noundef %9) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #25
  ret i32 2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_vpe_retrigger(%struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %call = call i32 @its_vpe_set_irqchip_state(%struct.irq_data* noundef %d, i32 noundef 0, i1 noundef true) #24
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_vpe_set_irqchip_state(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %which, i1 noundef %state) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_vpe*
  %cmp.not = icmp eq i32 %which, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_direct_lpi = getelementptr inbounds %struct.rdists, %struct.rdists* %1, i64 0, i32 8
  %2 = load i8, i8* %has_direct_lpi, align 2, !range !9
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else8, label %if.then1

if.then1:                                         ; preds = %if.end
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %1, i64 0, i32 0
  %3 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %4 = ptrtoint %struct.anon.77* %3 to i64
  %col_idx = getelementptr inbounds i8, i8* %call, i64 116
  %5 = bitcast i8* %col_idx to i16*
  %6 = load i16, i16* %5, align 4
  %idxprom = zext i16 %6 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %7 = load i64, i64* %arrayidx, align 8
  %add = add i64 %7, %4
  %8 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %8, i64 0, i32 1
  %9 = load i8*, i8** %rd_base, align 8
  %vpe_db_lpi = getelementptr inbounds i8, i8* %call, i64 24
  %10 = bitcast i8* %vpe_db_lpi to i64*
  %11 = load i64, i64* %10, align 8
  br i1 %state, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then1
  %add.ptr = getelementptr i8, i8* %9, i64 64
  call fastcc void @__raw_writeq(i64 noundef %11, i8* noundef %add.ptr) #24
  br label %cleanup

if.else:                                          ; preds = %if.then1
  %add.ptr6 = getelementptr i8, i8* %9, i64 72
  call fastcc void @__raw_writeq(i64 noundef %11, i8* noundef %add.ptr6) #24
  call fastcc void @wait_for_syncr(i8* noundef %9) #24
  br label %cleanup

if.else8:                                         ; preds = %if.end
  br i1 %state, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else8
  call fastcc void @its_vpe_send_cmd(%struct.its_vpe* noundef %0, void (%struct.its_device*, i32)* noundef nonnull @its_send_int) #24
  br label %cleanup

if.else11:                                        ; preds = %if.else8
  call fastcc void @its_vpe_send_cmd(%struct.its_vpe* noundef %0, void (%struct.its_device*, i32)* noundef nonnull @its_send_clear) #24
  br label %cleanup

cleanup:                                          ; preds = %if.else11, %if.then10, %if.else, %if.then4, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.then4 ], [ 0, %if.else ], [ 0, %if.then10 ], [ 0, %if.else11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_vpe_set_vcpu_affinity(%struct.irq_data* nocapture noundef readonly %d, i8* nocapture noundef readonly %vcpu_info) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_vpe*
  %cmd_type = bitcast i8* %vcpu_info to i32*
  %1 = load i32, i32* %cmd_type, align 8
  switch i32 %1, label %cleanup [
    i32 4, label %sw.bb
    i32 5, label %sw.bb1
    i32 6, label %sw.bb2
    i32 7, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call fastcc void @its_vpe_schedule(%struct.its_vpe* noundef %0) #24
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call fastcc void @its_vpe_deschedule(%struct.its_vpe* noundef %0) #24
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call fastcc void @its_wait_vpt_parse_complete() #24
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call fastcc void @its_vpe_invall(%struct.its_vpe* noundef %0) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_send_inv(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_direct_lpi = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 8
  %1 = load i8, i8* %has_direct_lpi, align 2, !range !9
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %2 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %3 = ptrtoint %struct.anon.77* %2 to i64
  %col_idx = getelementptr inbounds i8, i8* %call, i64 116
  %4 = bitcast i8* %col_idx to i16*
  %5 = load i16, i16* %4, align 4
  %idxprom = zext i16 %5 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %add = add i64 %6, %3
  %7 = inttoptr i64 %add to %struct.anon.77*
  %rd_lock = getelementptr inbounds %struct.anon.77, %struct.anon.77* %7, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rd_lock) #24
  %8 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist8 = getelementptr inbounds %struct.rdists, %struct.rdists* %8, i64 0, i32 0
  %9 = load %struct.anon.77*, %struct.anon.77** %rdist8, align 8
  %10 = ptrtoint %struct.anon.77* %9 to i64
  %11 = load i16, i16* %4, align 4
  %idxprom11 = zext i16 %11 to i64
  %arrayidx12 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom11
  %12 = load i64, i64* %arrayidx12, align 8
  %add13 = add i64 %12, %10
  %13 = inttoptr i64 %add13 to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %13, i64 0, i32 1
  %14 = load i8*, i8** %rd_base, align 8
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 6
  %15 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i64 0, i32 2
  %16 = load i64, i64* %hwirq, align 8
  %add.ptr = getelementptr i8, i8* %14, i64 160
  call fastcc void @__raw_writeq(i64 noundef %16, i8* noundef %add.ptr) #24
  call fastcc void @wait_for_syncr(i8* noundef %14) #24
  %17 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist20 = getelementptr inbounds %struct.rdists, %struct.rdists* %17, i64 0, i32 0
  %18 = load %struct.anon.77*, %struct.anon.77** %rdist20, align 8
  %19 = ptrtoint %struct.anon.77* %18 to i64
  %20 = load i16, i16* %4, align 4
  %idxprom23 = zext i16 %20 to i64
  %arrayidx24 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom23
  %21 = load i64, i64* %arrayidx24, align 8
  %add25 = add i64 %21, %19
  %22 = inttoptr i64 %add25 to %struct.anon.77*
  %rd_lock26 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %22, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rd_lock26) #24
  br label %if.end

if.else:                                          ; preds = %entry
  %23 = bitcast i8* %call to %struct.its_vpe*
  call fastcc void @its_vpe_send_cmd(%struct.its_vpe* noundef %23, void (%struct.its_device*, i32)* noundef nonnull @its_send_inv) #24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_send_cmd(%struct.its_vpe* noundef %vpe, void (%struct.its_device*, i32)* nocapture noundef readonly %cmd) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 0)) #24
  call fastcc void @its_vpe_db_proxy_map_locked(%struct.its_vpe* noundef %vpe) #24
  %0 = load %struct.its_device*, %struct.its_device** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 1), align 8
  %1 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 7
  %vpe_proxy_event = bitcast %union.anon.79* %1 to i32*
  %2 = load i32, i32* %vpe_proxy_event, align 8
  call void %cmd(%struct.its_device* noundef %0, i32 noundef %2) #27, !callees !58
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 0), i64 noundef %call) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_db_proxy_map_locked(%struct.its_vpe* noundef %vpe) unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 7
  %1 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 7
  %vpe_proxy_event = bitcast %union.anon.79* %2 to i32*
  %3 = load i32, i32* %vpe_proxy_event, align 8
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %if.end2, label %return

if.end2:                                          ; preds = %if.end
  %4 = load %struct.its_vpe**, %struct.its_vpe*** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 2), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 3), align 8
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr %struct.its_vpe*, %struct.its_vpe** %4, i64 %idxprom
  %6 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx, align 8
  %tobool3.not = icmp eq %struct.its_vpe* %6, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end2
  call fastcc void @its_vpe_db_proxy_unmap_locked(%struct.its_vpe* noundef nonnull %6) #24
  %.pre = load %struct.its_vpe**, %struct.its_vpe*** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 2), align 8
  %.pre21 = load i32, i32* getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 3), align 8
  %.pre22 = sext i32 %.pre21 to i64
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end2
  %idxprom8.pre-phi = phi i64 [ %.pre22, %if.then4 ], [ %idxprom, %if.end2 ]
  %7 = phi %struct.its_vpe** [ %.pre, %if.then4 ], [ %4, %if.end2 ]
  %arrayidx9 = getelementptr %struct.its_vpe*, %struct.its_vpe** %7, i64 %idxprom8.pre-phi
  store %struct.its_vpe* %vpe, %struct.its_vpe** %arrayidx9, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 3), align 8
  store i32 %8, i32* %vpe_proxy_event, align 8
  %add = add i32 %8, 1
  %9 = load %struct.its_device*, %struct.its_device** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 1), align 8
  %nr_ites = getelementptr inbounds %struct.its_device, %struct.its_device* %9, i64 0, i32 4
  %10 = load i32, i32* %nr_ites, align 8
  %rem = urem i32 %add, %10
  store i32 %rem, i32* getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 3), align 8
  %col_idx = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 9
  %11 = load i16, i16* %col_idx, align 4
  %col_map = getelementptr inbounds %struct.its_device, %struct.its_device* %9, i64 0, i32 2, i32 1
  %12 = load i16*, i16** %col_map, align 8
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr i16, i16* %12, i64 %idxprom12
  store i16 %11, i16* %arrayidx13, align 2
  %13 = load %struct.its_device*, %struct.its_device** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 1), align 8
  %vpe_db_lpi = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 4
  %14 = load i64, i64* %vpe_db_lpi, align 8
  %conv = trunc i64 %14 to i32
  %15 = load i32, i32* %vpe_proxy_event, align 8
  call fastcc void @its_send_mapti(%struct.its_device* noundef %13, i32 noundef %conv, i32 noundef %15) #24
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_db_proxy_unmap_locked(%struct.its_vpe* nocapture noundef %vpe) unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 7
  %1 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 7
  %vpe_proxy_event = bitcast %union.anon.79* %2 to i32*
  %3 = load i32, i32* %vpe_proxy_event, align 8
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %4 = load %struct.its_device*, %struct.its_device** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 1), align 8
  call fastcc void @its_send_discard(%struct.its_device* noundef %4, i32 noundef %3) #24
  %5 = load %struct.its_vpe**, %struct.its_vpe*** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 2), align 8
  %6 = load i32, i32* %vpe_proxy_event, align 8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr %struct.its_vpe*, %struct.its_vpe** %5, i64 %idxprom
  store %struct.its_vpe* null, %struct.its_vpe** %arrayidx, align 8
  %7 = load %struct.its_vpe**, %struct.its_vpe*** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 2), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 3), align 8
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr %struct.its_vpe*, %struct.its_vpe** %7, i64 %idxprom5
  %9 = load %struct.its_vpe*, %struct.its_vpe** %arrayidx6, align 8
  %tobool7.not = icmp eq %struct.its_vpe* %9, null
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end2
  %10 = load i32, i32* %vpe_proxy_event, align 8
  store i32 %10, i32* getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 3), align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end2
  store i32 -1, i32* %vpe_proxy_event, align 8
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #1 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* %cpumask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_vmovp(%struct.its_vpe* noundef %vpe) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %col_idx = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 9
  %3 = load i16, i16* %col_idx, align 4
  %vpe1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  store %struct.its_vpe* %vpe, %struct.its_vpe** %vpe1, align 8
  %4 = load i64, i64* @its_list_map, align 8
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.then, label %do.body3

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %add.ptr = getelementptr i8, i8* %5, i64 -40
  %6 = bitcast i8* %add.ptr to %struct.its_node*
  %collections = getelementptr i8, i8* %5, i64 248
  %7 = bitcast i8* %collections to %struct.its_collection**
  %8 = load %struct.its_collection*, %struct.its_collection** %7, align 8
  %9 = zext i16 %3 to i64
  %arrayidx = getelementptr %struct.its_collection, %struct.its_collection* %8, i64 %9
  %col = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %10 = bitcast %struct.its_device** %col to %struct.its_collection**
  store %struct.its_collection* %arrayidx, %struct.its_collection** %10, align 8
  call fastcc void @its_send_single_vcommand(%struct.its_node* noundef %6, %struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_vmovp_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  br label %cleanup

do.body3:                                         ; preds = %entry
  %its_vmovp_cmd = bitcast %struct.its_cmd_desc* %desc to %struct.anon.97*
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef nonnull @vmovp_lock) #24
  %11 = load i16, i16* @vmovp_seq_num, align 4
  %inc = add i16 %11, 1
  store i16 %inc, i16* @vmovp_seq_num, align 4
  %seq_num = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  %12 = bitcast i32* %seq_num to i16*
  store i16 %11, i16* %12, align 8
  %its_vm = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 1
  %13 = load %struct.its_vm*, %struct.its_vm** %its_vm, align 8
  %call9 = call fastcc i16 @get_its_list(%struct.its_vm* noundef %13) #24
  %its_list = getelementptr inbounds %struct.anon.97, %struct.anon.97* %its_vmovp_cmd, i64 0, i32 3
  store i16 %call9, i16* %its_list, align 2
  %.pn67 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %cmp18.not70 = icmp eq i8* %.pn67, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp18.not70, label %do.body39, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.body3
  %14 = zext i16 %3 to i64
  %col31 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %15 = bitcast %struct.its_device** %col31 to %struct.its_collection**
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn71 = phi i8* [ %.pn67, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %its.073.in = getelementptr i8, i8* %.pn71, i64 -40
  %its.073 = bitcast i8* %its.073.in to %struct.its_node*
  %typer = getelementptr i8, i8* %.pn71, i64 272
  %16 = bitcast i8* %typer to i64*
  %17 = load i64, i64* %16, align 8
  %and = and i64 %17, 2
  %tobool20.not = icmp eq i64 %and, 0
  br i1 %tobool20.not, label %for.inc, label %if.end22

if.end22:                                         ; preds = %for.body
  %18 = load %struct.its_vm*, %struct.its_vm** %its_vm, align 8
  %call24 = call fastcc i1 @require_its_list_vmovp(%struct.its_vm* noundef %18, %struct.its_node* noundef %its.073) #24
  br i1 %call24, label %if.end26, label %for.inc

if.end26:                                         ; preds = %if.end22
  %collections27 = getelementptr i8, i8* %.pn71, i64 248
  %19 = bitcast i8* %collections27 to %struct.its_collection**
  %20 = load %struct.its_collection*, %struct.its_collection** %19, align 8
  %arrayidx29 = getelementptr %struct.its_collection, %struct.its_collection* %20, i64 %14
  store %struct.its_collection* %arrayidx29, %struct.its_collection** %15, align 8
  call fastcc void @its_send_single_vcommand(%struct.its_node* noundef %its.073, %struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_vmovp_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %for.body, %if.end26
  %21 = bitcast i8* %.pn71 to i8**
  %.pn = load i8*, i8** %21, align 8
  %cmp18.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp18.not, label %do.body39, label %for.body

do.body39:                                        ; preds = %for.inc, %do.body3
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef nonnull @vmovp_lock, i64 noundef %call) #24
  br label %cleanup

cleanup:                                          ; preds = %do.body39, %if.then
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_db_proxy_move(%struct.its_vpe* noundef %vpe, i32 noundef %from, i32 noundef %to) unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 7
  %1 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %has_direct_lpi = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 8
  %2 = load i8, i8* %has_direct_lpi, align 2, !range !9
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %do.body5, label %if.then2

if.then2:                                         ; preds = %if.end
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %3 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %4 = ptrtoint %struct.anon.77* %3 to i64
  %idxprom = sext i32 %from to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %add = add i64 %5, %4
  %6 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %6, i64 0, i32 1
  %7 = load i8*, i8** %rd_base, align 8
  %vpe_db_lpi = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 4
  %8 = load i64, i64* %vpe_db_lpi, align 8
  %add.ptr = getelementptr i8, i8* %7, i64 72
  call fastcc void @__raw_writeq(i64 noundef %8, i8* noundef %add.ptr) #24
  call fastcc void @wait_for_syncr(i8* noundef %7) #24
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 0)) #24
  call fastcc void @its_vpe_db_proxy_map_locked(%struct.its_vpe* noundef %vpe) #24
  %9 = load %struct.its_device*, %struct.its_device** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 1), align 8
  %its = getelementptr inbounds %struct.its_device, %struct.its_device* %9, i64 0, i32 1
  %10 = load %struct.its_node*, %struct.its_node** %its, align 8
  %collections = getelementptr inbounds %struct.its_node, %struct.its_node* %10, i64 0, i32 9
  %11 = load %struct.its_collection*, %struct.its_collection** %collections, align 8
  %idxprom9 = sext i32 %to to i64
  %arrayidx10 = getelementptr %struct.its_collection, %struct.its_collection* %11, i64 %idxprom9
  %12 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 7
  %vpe_proxy_event = bitcast %union.anon.79* %12 to i32*
  %13 = load i32, i32* %vpe_proxy_event, align 8
  call fastcc void @its_send_movi(%struct.its_device* noundef %9, %struct.its_collection* noundef %arrayidx10, i32 noundef %13) #24
  %conv11 = trunc i32 %to to i16
  %14 = load %struct.its_device*, %struct.its_device** getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 1), align 8
  %col_map = getelementptr inbounds %struct.its_device, %struct.its_device* %14, i64 0, i32 2, i32 1
  %15 = load i16*, i16** %col_map, align 8
  %16 = load i32, i32* %vpe_proxy_event, align 8
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr i16, i16* %15, i64 %idxprom13
  store i16 %conv11, i16* %arrayidx14, align 2
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 0), i64 noundef %call) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body5, %if.then2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_vpe* @its_build_vmovp_cmd(%struct.its_node* nocapture noundef readonly %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %its_vmovp_cmd = bitcast %struct.its_cmd_desc* %desc to %struct.anon.97*
  %col = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %0 = bitcast %struct.its_device** %col to %struct.its_collection**
  %1 = load %struct.its_collection*, %struct.its_collection** %0, align 8
  %target_address = getelementptr inbounds %struct.its_collection, %struct.its_collection* %1, i64 0, i32 0
  %2 = load i64, i64* %target_address, align 8
  %vlpi_redist_offset = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 22
  %3 = load i32, i32* %vlpi_redist_offset, align 4
  %conv = sext i32 %3 to i64
  %add = add i64 %2, %conv
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 34) #24
  %seq_num = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 2
  %4 = bitcast i32* %seq_num to i16*
  %5 = load i16, i16* %4, align 8
  call fastcc void @its_encode_seq_num(%struct.its_cmd_block* noundef %cmd, i16 noundef %5) #24
  %its_list = getelementptr inbounds %struct.anon.97, %struct.anon.97* %its_vmovp_cmd, i64 0, i32 3
  %6 = load i16, i16* %its_list, align 2
  call fastcc void @its_encode_its_list(%struct.its_cmd_block* noundef %cmd, i16 noundef %6) #24
  %vpe = getelementptr %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  %7 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vpe_id = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %7, i64 0, i32 10
  %8 = load i16, i16* %vpe_id, align 2
  call fastcc void @its_encode_vpeid(%struct.its_cmd_block* noundef %cmd, i16 noundef %8) #24
  call fastcc void @its_encode_target(%struct.its_cmd_block* noundef %cmd, i64 noundef %add) #24
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 12
  %9 = load i64, i64* %typer, align 8
  %and = and i64 %9, 1099511627776
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @its_encode_db(%struct.its_cmd_block* noundef %cmd) #24
  %10 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vpe_db_lpi = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %10, i64 0, i32 4
  %11 = load i64, i64* %vpe_db_lpi, align 8
  %conv6 = trunc i64 %11 to i32
  call fastcc void @its_encode_vmovp_default_db(%struct.its_cmd_block* noundef %cmd, i32 noundef %conv6) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %call = call fastcc %struct.its_vpe* @valid_vpe(%struct.its_node* noundef %its, %struct.its_vpe* noundef %12) #24
  ret %struct.its_vpe* %call
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i16 @get_its_list(%struct.its_vm* nocapture noundef readonly %vm) unnamed_addr #18 {
entry:
  %.pn21 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %cmp.not24 = icmp eq i8* %.pn21, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not24, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn26 = phi i8* [ %.pn, %for.inc ], [ %.pn21, %entry ]
  %or.i2025 = phi i64 [ %or.i19, %for.inc ], [ 0, %entry ]
  %typer = getelementptr i8, i8* %.pn26, i64 272
  %0 = bitcast i8* %typer to i64*
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %its.028.in = getelementptr i8, i8* %.pn26, i64 -40
  %its.028 = bitcast i8* %its.028.in to %struct.its_node*
  %call = call fastcc i1 @require_its_list_vmovp(%struct.its_vm* noundef %vm, %struct.its_node* noundef %its.028) #24
  br i1 %call, label %if.then2, label %for.inc

if.then2:                                         ; preds = %if.end
  %list_nr = getelementptr i8, i8* %.pn26, i64 320
  %2 = bitcast i8* %list_nr to i64*
  %3 = load i64, i64* %2, align 8
  %rem.i = and i64 %3, 63
  %shl.i = shl nuw i64 1, %rem.i
  %or.i = or i64 %shl.i, %or.i2025
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then2, %for.body
  %or.i19 = phi i64 [ %or.i2025, %if.end ], [ %or.i, %if.then2 ], [ %or.i2025, %for.body ]
  %4 = bitcast i8* %.pn26 to i8**
  %.pn = load i8*, i8** %4, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %or.i20.lcssa = phi i64 [ 0, %entry ], [ %or.i19, %for.inc ]
  %conv11 = trunc i64 %or.i20.lcssa to i16
  ret i16 %conv11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @require_its_list_vmovp(%struct.its_vm* nocapture noundef readonly %vm, %struct.its_node* nocapture noundef readonly %its) unnamed_addr #4 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 7
  %1 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %list_nr = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 18
  %2 = load i64, i64* %list_nr, align 8
  %arrayidx = getelementptr %struct.its_vm, %struct.its_vm* %vm, i64 0, i32 8, i64 %2
  %3 = load i32, i32* %arrayidx, align 4
  %tobool1 = icmp ne i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_seq_num(%struct.its_cmd_block* nocapture noundef %cmd, i16 noundef %seq_num) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 0
  %conv = zext i16 %seq_num to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 47, i32 noundef 32) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_its_list(%struct.its_cmd_block* nocapture noundef %cmd, i16 noundef %its_list) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 1
  %conv = zext i16 %its_list to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 15, i32 noundef 0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_db(%struct.its_cmd_block* nocapture noundef %cmd) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 2
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef 1, i32 noundef 63, i32 noundef 63) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @its_encode_vmovp_default_db(%struct.its_cmd_block* nocapture noundef %cmd, i32 noundef %vpe_db_lpi) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.its_cmd_block, %struct.its_cmd_block* %cmd, i64 0, i32 0, i32 0, i64 3
  %conv = zext i32 %vpe_db_lpi to i64
  call fastcc void @its_mask_encode(i64* noundef %arrayidx, i64 noundef %conv, i32 noundef 31, i32 noundef 0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_schedule(%struct.its_vpe* nocapture noundef readonly %vpe) unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %1 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %2 = ptrtoint %struct.anon.77* %1 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, %2
  %3 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %3, i64 0, i32 1
  %4 = load i8*, i8** %rd_base, align 8
  %its_vm = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 1
  %5 = load %struct.its_vm*, %struct.its_vm** %its_vm, align 8
  %vprop_page = getelementptr inbounds %struct.its_vm, %struct.its_vm* %5, i64 0, i32 2
  %6 = load %struct.page*, %struct.page** %vprop_page, align 8
  %7 = ptrtoint %struct.page* %6 to i64
  %sub.i = shl i64 %7, 6
  %add.i = and i64 %sub.i, -4096
  %8 = inttoptr i64 %add.i to i8*
  %call3 = call fastcc i64 @virt_to_phys(i8* noundef %8) #24
  %and = and i64 %call3, 4503599627366400
  %9 = load i32, i32* @lpi_id_bits, align 4
  %sub = add i32 %9, 31
  %and4 = and i32 %sub, 31
  %conv = zext i32 %and4 to i64
  %or = or i64 %and, %conv
  %or6 = or i64 %or, 1408
  %add.ptr7 = getelementptr i8, i8* %4, i64 131184
  call fastcc void @__raw_writeq(i64 noundef %or6, i8* noundef %add.ptr7) #24
  %vpt_page = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 0
  %10 = load %struct.page*, %struct.page** %vpt_page, align 8
  %11 = ptrtoint %struct.page* %10 to i64
  %sub.i34 = shl i64 %11, 6
  %add.i35 = and i64 %sub.i34, -4096
  %12 = inttoptr i64 %add.i35 to i8*
  %call9 = call fastcc i64 @virt_to_phys(i8* noundef %12) #24
  %and10 = and i64 %call9, 4503599627304960
  %13 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 7
  %14 = bitcast %union.anon.79* %13 to %struct.anon.80*
  %idai = getelementptr inbounds %struct.anon.80, %struct.anon.80* %14, i64 0, i32 1
  %15 = load i8, i8* %idai, align 4, !range !9
  %tobool.not = icmp eq i8 %15, 0
  %cond = select i1 %tobool.not, i64 0, i64 4611686018427387904
  %or13 = or i64 %and10, %cond
  %or16 = or i64 %or13, -6917529027641079936
  %add.ptr17 = getelementptr i8, i8* %4, i64 131192
  call fastcc void @__raw_writeq(i64 noundef %or16, i8* noundef %add.ptr17) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_deschedule(%struct.its_vpe* nocapture noundef writeonly %vpe) unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %1 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %2 = ptrtoint %struct.anon.77* %1 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, %2
  %3 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %3, i64 0, i32 1
  %4 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 131072
  %call2 = call fastcc i64 @its_clear_vpend_valid(i8* noundef %add.ptr, i64 noundef 0, i64 noundef 0) #24
  %5 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 7
  %6 = bitcast %union.anon.79* %5 to %struct.anon.80*
  %idai = getelementptr inbounds %struct.anon.80, %struct.anon.80* %6, i64 0, i32 1
  %and = lshr i64 %call2, 62
  %7 = trunc i64 %and to i8
  %8 = and i8 %7, 1
  store i8 %8, i8* %idai, align 4
  %pending_last = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 11
  %and4 = lshr i64 %call2, 61
  %9 = trunc i64 %and4 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %pending_last, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_wait_vpt_parse_complete() unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %has_vpend_valid_dirty = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 9
  %1 = load i8, i8* %has_vpend_valid_dirty, align 1, !range !9
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %2 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %3 = ptrtoint %struct.anon.77* %2 to i64
  %add = add i64 %call, %3
  %4 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %4, i64 0, i32 1
  %5 = load i8*, i8** %rd_base, align 8
  %call2 = call i64 @ktime_get() #27
  %call3 = call fastcc i64 @ktime_add_us(i64 noundef %call2) #24
  %add.ptr4 = getelementptr i8, i8* %5, i64 131192
  %call571 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr4) #24
  %and72 = and i64 %call571, 1152921504606846976
  %tobool7.not73 = icmp eq i64 %and72, 0
  br i1 %tobool7.not73, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end, %if.else
  %call11 = call i64 @ktime_get() #27
  %call12 = call fastcc i32 @ktime_compare(i64 noundef %call11, i64 noundef %call3) #24
  %cmp = icmp sgt i32 %call12, 0
  br i1 %cmp, label %for.end, label %if.else

if.else:                                          ; preds = %land.lhs.true
  call void @__const_udelay(i64 noundef 4295) #27
  %call5 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr4) #24
  %and = and i64 %call5, 1152921504606846976
  %tobool7.not = icmp eq i64 %and, 0
  br i1 %tobool7.not, label %cleanup, label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %call16 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr4) #24
  %.pre = and i64 %call16, 1152921504606846976
  %tobool30.not = icmp eq i64 %.pre, 0
  br i1 %tobool30.not, label %cleanup, label %if.then40, !prof !12

if.then40:                                        ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 3819; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !59
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %for.end, %if.then40, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_invall(%struct.its_vpe* noundef %vpe) unnamed_addr #0 {
entry:
  %.pn22 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %cmp.not23 = icmp eq i8* %.pn22, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not23, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %0 = load i64, i64* @its_list_map, align 8
  %tobool2.not = icmp eq i64 %0, 0
  %its_vm = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn24 = phi i8* [ %.pn22, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %typer = getelementptr i8, i8* %.pn24, i64 272
  %1 = bitcast i8* %typer to i64*
  %2 = load i64, i64* %1, align 8
  %and = and i64 %2, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  br i1 %tobool2.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.its_vm*, %struct.its_vm** %its_vm, align 8
  %list_nr = getelementptr i8, i8* %.pn24, i64 320
  %4 = bitcast i8* %list_nr to i64*
  %5 = load i64, i64* %4, align 8
  %arrayidx = getelementptr %struct.its_vm, %struct.its_vm* %3, i64 0, i32 8, i64 %5
  %6 = load i32, i32* %arrayidx, align 4
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %for.inc, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %its.0.in.le = getelementptr i8, i8* %.pn24, i64 -40
  %its.0.le = bitcast i8* %its.0.in.le to %struct.its_node*
  call fastcc void @its_send_vinvall(%struct.its_node* noundef %its.0.le, %struct.its_vpe* noundef %vpe) #24
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %7 = bitcast i8* %.pn24 to i8**
  %.pn = load i8*, i8** %7, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.end5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_add_us(i64 noundef %kt) unnamed_addr #11 {
entry:
  %add = add i64 %kt, 500000
  ret i64 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @ktime_compare(i64 noundef %cmp1, i64 noundef %cmp2) unnamed_addr #11 {
entry:
  %cmp = icmp slt i64 %cmp1, %cmp2
  %cmp3 = icmp sgt i64 %cmp1, %cmp2
  %. = zext i1 %cmp3 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_vpe_4_1_mask_irq(%struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  call fastcc void @lpi_write_config(%struct.irq_data* noundef %0, i8 noundef 1, i8 noundef 0) #24
  call fastcc void @its_vpe_4_1_send_inv(%struct.irq_data* noundef %d) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_vpe_4_1_unmask_irq(%struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  call fastcc void @lpi_write_config(%struct.irq_data* noundef %0, i8 noundef 0, i8 noundef 1) #24
  call fastcc void @its_vpe_4_1_send_inv(%struct.irq_data* noundef %d) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_vpe_4_1_set_vcpu_affinity(%struct.irq_data* nocapture noundef readonly %d, i8* nocapture noundef readonly %vcpu_info) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %0 = bitcast i8* %call to %struct.its_vpe*
  %1 = bitcast i8* %vcpu_info to %struct.its_cmd_info*
  %cmd_type = bitcast i8* %vcpu_info to i32*
  %2 = load i32, i32* %cmd_type, align 8
  switch i32 %2, label %cleanup [
    i32 4, label %sw.bb
    i32 5, label %sw.bb1
    i32 6, label %sw.bb2
    i32 7, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call fastcc void @its_vpe_4_1_schedule(%struct.its_vpe* noundef %0, %struct.its_cmd_info* noundef %1) #24
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call fastcc void @its_vpe_4_1_deschedule(%struct.its_vpe* noundef %0, %struct.its_cmd_info* noundef %1) #24
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call fastcc void @its_wait_vpt_parse_complete() #24
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call fastcc void @its_vpe_4_1_invall(%struct.its_vpe* noundef %0) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_4_1_send_inv(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #24
  %call1 = call fastcc %struct.its_node* @find_4_1_its() #24
  %tobool.not = icmp eq %struct.its_node* %call1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %call to %struct.its_vpe*
  call fastcc void @its_send_invdb(%struct.its_node* noundef nonnull %call1, %struct.its_vpe* noundef %0) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_send_invdb(%struct.its_node* noundef %its, %struct.its_vpe* noundef %vpe) unnamed_addr #0 {
entry:
  %desc = alloca %struct.its_cmd_desc, align 8
  %0 = bitcast %struct.its_cmd_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 1
  %2 = bitcast %struct.its_device** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false), !annotation !17
  %vpe1 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  store %struct.its_vpe* %vpe, %struct.its_vpe** %vpe1, align 8
  call fastcc void @its_send_single_vcommand(%struct.its_node* noundef %its, %struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* noundef nonnull @its_build_invdb_cmd, %struct.its_cmd_desc* noundef nonnull %desc) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.its_vpe* @its_build_invdb_cmd(%struct.its_node* nocapture noundef readonly %its, %struct.its_cmd_block* nocapture noundef %cmd, %struct.its_cmd_desc* nocapture noundef readonly %desc) #0 {
entry:
  %typer = getelementptr inbounds %struct.its_node, %struct.its_node* %its, i64 0, i32 12
  %0 = load i64, i64* %typer, align 8
  %and = and i64 %0, 1099511627776
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end20, !prof !18

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 940; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !60
  br label %return

if.end20:                                         ; preds = %entry
  call fastcc void @its_encode_cmd(%struct.its_cmd_block* noundef %cmd, i8 noundef 46) #24
  %vpe = getelementptr %struct.its_cmd_desc, %struct.its_cmd_desc* %desc, i64 0, i32 0, i32 0, i32 0
  %1 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %vpe_id = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %1, i64 0, i32 10
  %2 = load i16, i16* %vpe_id, align 2
  call fastcc void @its_encode_vpeid(%struct.its_cmd_block* noundef %cmd, i16 noundef %2) #24
  %3 = load %struct.its_vpe*, %struct.its_vpe** %vpe, align 8
  %call = call fastcc %struct.its_vpe* @valid_vpe(%struct.its_node* noundef %its, %struct.its_vpe* noundef %3) #24
  br label %return

return:                                           ; preds = %if.then, %if.end20
  %retval.0 = phi %struct.its_vpe* [ %call, %if.end20 ], [ null, %if.then ]
  ret %struct.its_vpe* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_4_1_schedule(%struct.its_vpe* nocapture noundef readonly %vpe, %struct.its_cmd_info* nocapture noundef readonly %info) unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %1 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %2 = ptrtoint %struct.anon.77* %1 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, %2
  %3 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %3, i64 0, i32 1
  %4 = load i8*, i8** %rd_base, align 8
  %5 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 1
  %6 = bitcast %union.anon.102* %5 to %struct.anon.103*
  %g0en = bitcast %union.anon.102* %5 to i8*
  %7 = load i8, i8* %g0en, align 8, !range !9
  %g1en = getelementptr inbounds %struct.anon.103, %struct.anon.103* %6, i64 0, i32 1
  %8 = load i8, i8* %g1en, align 1, !range !9
  %vpe_id = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 10
  %9 = load i16, i16* %vpe_id, align 2
  %tobool.not = icmp eq i8 %7, 0
  %or2 = select i1 %tobool.not, i64 -9223372036854775808, i64 -8646911284551352320
  %tobool3.not = icmp eq i8 %8, 0
  %cond4 = select i1 %tobool3.not, i64 0, i64 288230376151711744
  %or5 = or i64 %cond4, %or2
  %conv25 = zext i16 %9 to i64
  %or27 = or i64 %or5, %conv25
  %add.ptr28 = getelementptr i8, i8* %4, i64 131192
  call fastcc void @__raw_writeq(i64 noundef %or27, i8* noundef %add.ptr28) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_4_1_deschedule(%struct.its_vpe* noundef %vpe, %struct.its_cmd_info* nocapture noundef readonly %info) unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %1 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %2 = ptrtoint %struct.anon.77* %1 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, %2
  %3 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %3, i64 0, i32 1
  %4 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 131072
  %5 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %info, i64 0, i32 1
  %req_db = bitcast %union.anon.102* %5 to i8*
  %6 = load i8, i8* %req_db, align 8, !range !9
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vpe_lock = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 8
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %vpe_lock) #24
  %call7 = call fastcc i64 @its_clear_vpend_valid(i8* noundef %add.ptr, i64 noundef 2305843009213693952, i64 noundef 4611686018427387904) #24
  %pending_last = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 11
  %and = lshr i64 %call7, 61
  %7 = trunc i64 %and to i8
  %8 = and i8 %7, 1
  store i8 %8, i8* %pending_last, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %vpe_lock, i64 noundef %call4) #24
  br label %if.end

if.else:                                          ; preds = %entry
  %call19 = call fastcc i64 @its_clear_vpend_valid(i8* noundef %add.ptr, i64 noundef 0, i64 noundef 2305843009213693952) #24
  %pending_last20 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 11
  store i8 1, i8* %pending_last20, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_4_1_invall(%struct.its_vpe* noundef %vpe) unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #25
  store i64 0, i64* %flags, align 8, !annotation !17
  %vpe_id = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 10
  %1 = load i16, i16* %vpe_id, align 2
  %conv15 = zext i16 %1 to i64
  %shl = shl nuw nsw i64 %conv15, 32
  %or = or i64 %shl, -9223372036854775808
  %call = call fastcc i32 @vpe_to_cpuid_lock(%struct.its_vpe* noundef %vpe, i64* noundef nonnull %flags) #24
  %2 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %2, i64 0, i32 0
  %3 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %4 = ptrtoint %struct.anon.77* %3 to i64
  %5 = zext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %5
  %6 = load i64, i64* %arrayidx, align 8
  %add = add i64 %6, %4
  %7 = inttoptr i64 %add to %struct.anon.77*
  %rd_lock = getelementptr inbounds %struct.anon.77, %struct.anon.77* %7, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rd_lock) #24
  %8 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist28 = getelementptr inbounds %struct.rdists, %struct.rdists* %8, i64 0, i32 0
  %9 = load %struct.anon.77*, %struct.anon.77** %rdist28, align 8
  %10 = ptrtoint %struct.anon.77* %9 to i64
  %11 = load i64, i64* %arrayidx, align 8
  %add32 = add i64 %11, %10
  %12 = inttoptr i64 %add32 to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %12, i64 0, i32 1
  %13 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %13, i64 176
  call fastcc void @__raw_writeq(i64 noundef %or, i8* noundef %add.ptr) #24
  call fastcc void @wait_for_syncr(i8* noundef %13) #24
  %14 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist39 = getelementptr inbounds %struct.rdists, %struct.rdists* %14, i64 0, i32 0
  %15 = load %struct.anon.77*, %struct.anon.77** %rdist39, align 8
  %16 = ptrtoint %struct.anon.77* %15 to i64
  %17 = load i64, i64* %arrayidx, align 8
  %add43 = add i64 %17, %16
  %18 = inttoptr i64 %add43 to %struct.anon.77*
  %rd_lock44 = getelementptr inbounds %struct.anon.77, %struct.anon.77* %18, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rd_lock44) #24
  %19 = load i64, i64* %flags, align 8
  call fastcc void @vpe_to_cpuid_unlock(%struct.its_vpe* noundef %vpe, i64 noundef %19) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @its_vpe_id_alloc() unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 7
  %1 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %gicd_typer2 = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 5
  %2 = load i32, i32* %gicd_typer2, align 4
  %and = and i32 %2, 128
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = and i32 %2, 31
  %narrow = add nuw nsw i32 %3, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %nvpeid.0 = phi i32 [ %narrow, %if.then ], [ 16, %land.lhs.true ], [ 16, %entry ]
  %notmask = shl nsw i32 -1, %nvpeid.0
  %sub = xor i32 %notmask, -1
  %call = call i32 @ida_alloc_range(%struct.ida* noundef nonnull @its_vpeid_ida, i32 noundef 0, i32 noundef %sub, i32 noundef 3264) #27
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_id_free(i16 noundef %id) unnamed_addr #0 {
entry:
  %conv = zext i16 %id to i32
  call void @ida_free(%struct.ida* noundef nonnull @its_vpeid_ida, i32 noundef %conv) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @its_alloc_vpe_table(i32 noundef %vpe_id) unnamed_addr #0 {
entry:
  %.pn43 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %cmp.not46 = icmp eq i8* %.pn43, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not46, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn47 = phi i8* [ %.pn, %for.inc ], [ %.pn43, %entry ]
  %its.048.in = getelementptr i8, i8* %.pn47, i64 -40
  %its.048 = bitcast i8* %its.048.in to %struct.its_node*
  %typer = getelementptr i8, i8* %.pn47, i64 272
  %0 = bitcast i8* %typer to i64*
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call = call fastcc %struct.its_baser* @its_get_baser(%struct.its_node* noundef %its.048, i32 noundef 2) #24
  %tobool2.not = icmp eq %struct.its_baser* %call, null
  br i1 %tobool2.not, label %cleanup26, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i1 @its_alloc_table_entry(%struct.its_node* noundef %its.048, %struct.its_baser* noundef nonnull %call, i32 noundef %vpe_id) #24
  br i1 %call5, label %for.inc, label %cleanup26

for.inc:                                          ; preds = %if.end4, %for.body
  %2 = bitcast i8* %.pn47 to i8**
  %.pn = load i8*, i8** %2, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %3 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %3, i64 0, i32 7
  %4 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool15.not = icmp eq i8 %4, 0
  br i1 %tobool15.not, label %cleanup26, label %for.cond18

for.cond18:                                       ; preds = %for.end, %for.body21
  %cpu.0 = phi i32 [ %call19, %for.body21 ], [ -1, %for.end ]
  %call19 = call i32 @cpumask_next(i32 noundef %cpu.0, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp20 = icmp ult i32 %call19, %5
  br i1 %cmp20, label %for.body21, label %cleanup26.loopexit

for.body21:                                       ; preds = %for.cond18
  %call22 = call fastcc i1 @allocate_vpe_l2_table(i32 noundef %call19, i32 noundef %vpe_id) #24
  br i1 %call22, label %for.cond18, label %cleanup26.loopexit

cleanup26.loopexit:                               ; preds = %for.body21, %for.cond18
  %6 = xor i1 %cmp20, true
  br label %cleanup26

cleanup26:                                        ; preds = %if.end4, %if.end, %cleanup26.loopexit, %for.end
  %retval.2 = phi i1 [ true, %for.end ], [ %6, %cleanup26.loopexit ], [ false, %if.end ], [ false, %if.end4 ]
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(%struct.ida* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(%struct.ida* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @allocate_vpe_l2_table(i32 noundef %cpu, i32 noundef %id) unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 0
  %1 = load %struct.anon.77*, %struct.anon.77** %rdist, align 8
  %2 = ptrtoint %struct.anon.77* %1 to i64
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.anon.77*
  %rd_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %4, i64 0, i32 1
  %5 = load i8*, i8** %rd_base, align 8
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 7
  %6 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool.not = icmp eq i8 %6, 0
  %tobool2.not = icmp eq i8* %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %cleanup, label %if.end4

if.end4:                                          ; preds = %entry
  %add.ptr5 = getelementptr i8, i8* %5, i64 131184
  %call = call fastcc i64 @__raw_readq(i8* noundef %add.ptr5) #24
  %and = lshr i64 %call, 59
  %7 = trunc i64 %and to i32
  %8 = and i32 %7, 7
  %conv = add nuw nsw i32 %8, 1
  %and40 = lshr i64 %call, 53
  %9 = trunc i64 %and40 to i32
  %conv42 = and i32 %9, 3
  %10 = trunc i64 %call to i32
  %11 = and i32 %10, 127
  %conv62 = add nuw nsw i32 %11, 1
  %.not = icmp eq i32 %conv42, 3
  br i1 %.not, label %if.then67, label %switch.lookup

if.then67:                                        ; preds = %if.end4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 2749; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !61
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end4
  %12 = zext i32 %conv42 to i64
  %switch.gep = getelementptr inbounds [3 x i32], [3 x i32]* @switch.table.allocate_vpe_l2_table, i64 0, i64 %12
  %switch.load = load i32, i32* %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then67
  %psz.0 = phi i32 [ 4096, %if.then67 ], [ %switch.load, %switch.lookup ]
  %and79 = and i64 %call, 36028797018963968
  %tobool80.not = icmp eq i64 %and79, 0
  br i1 %tobool80.not, label %if.then81, label %cond.end99

if.then81:                                        ; preds = %sw.epilog
  %mul = mul nuw nsw i32 %psz.0, %conv62
  %mul82 = shl nuw nsw i32 %conv, 3
  %div = udiv i32 %mul, %mul82
  %cmp = icmp ugt i32 %div, %id
  br label %cleanup

cond.end99:                                       ; preds = %sw.epilog
  %mul85 = shl nuw nsw i32 %conv, 3
  %div86 = udiv i32 %psz.0, %mul85
  %call98 = call fastcc i32 @__ilog2_u32(i32 noundef %div86) #30
  %shr101 = lshr i32 %id, %call98
  %mul103 = mul nuw nsw i32 %psz.0, %conv62
  %13 = lshr exact i32 %mul103, 3
  %cmp106.not = icmp ult i32 %shr101, %13
  br i1 %cmp106.not, label %do.body110, label %cleanup

do.body110:                                       ; preds = %cond.end99
  %conv102 = zext i32 %shr101 to i64
  %14 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %rdist116 = getelementptr inbounds %struct.rdists, %struct.rdists* %14, i64 0, i32 0
  %15 = load %struct.anon.77*, %struct.anon.77** %rdist116, align 8
  %16 = ptrtoint %struct.anon.77* %15 to i64
  %17 = load i64, i64* %arrayidx, align 8
  %add120 = add i64 %17, %16
  %18 = inttoptr i64 %add120 to %struct.anon.77*
  %vpe_l1_base = getelementptr inbounds %struct.anon.77, %struct.anon.77* %18, i64 0, i32 6
  %19 = bitcast i8** %vpe_l1_base to i64**
  %20 = load i64*, i64** %19, align 8
  %arrayidx122 = getelementptr i64, i64* %20, i64 %conv102
  %21 = load i64, i64* %arrayidx122, align 8
  %tobool123.not = icmp eq i64 %21, 0
  br i1 %tobool123.not, label %if.then124, label %cleanup

if.then124:                                       ; preds = %do.body110
  %conv125 = zext i32 %psz.0 to i64
  %sub.i = add nsw i64 %conv125, -1
  %cmp.i.i = icmp eq i64 %sub.i, 4095
  %shr.i = lshr i64 %sub.i, 12
  %22 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #25, !range !22
  %23 = trunc i64 %22 to i32
  %conv.i.i = sub nuw nsw i32 64, %23
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %call127 = call fastcc %struct.page* @alloc_pages(i32 noundef 3520, i32 noundef %retval.0.i.i) #24
  %tobool128.not = icmp eq %struct.page* %call127, null
  br i1 %tobool128.not, label %cleanup, label %if.end130

if.end130:                                        ; preds = %if.then124
  %and131 = and i64 %call, 3072
  %tobool132.not = icmp eq i64 %and131, 0
  br i1 %tobool132.not, label %if.then133, label %if.end150.critedge

if.then133:                                       ; preds = %if.end130
  %24 = ptrtoint %struct.page* %call127 to i64
  %sub.i206 = shl i64 %24, 6
  %add.i207 = and i64 %sub.i206, -4096
  %add137 = add i64 %add.i207, %conv125
  call void @dcache_clean_inval_poc(i64 noundef %add.i207, i64 noundef %add137) #27
  %25 = load i64, i64* @memstart_addr, align 8
  %shr139 = ashr i64 %25, 12
  %idx.neg = sub nsw i64 0, %shr139
  %add.ptr140 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr140 to i64
  %sub.ptr.sub = sub i64 %24, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %or = or i64 %shl, -9223372036854775808
  store i64 %or, i64* %arrayidx122, align 8
  %26 = ptrtoint i64* %arrayidx122 to i64
  %add149 = add i64 %26, 8
  call void @dcache_clean_inval_poc(i64 noundef %26, i64 noundef %add149) #27
  br label %if.end150

if.end150.critedge:                               ; preds = %if.end130
  %27 = load i64, i64* @memstart_addr, align 8
  %shr139.c = ashr i64 %27, 12
  %idx.neg.c = sub nsw i64 0, %shr139.c
  %add.ptr140.c = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg.c
  %sub.ptr.lhs.cast.c = ptrtoint %struct.page* %call127 to i64
  %sub.ptr.rhs.cast.c = ptrtoint %struct.page* %add.ptr140.c to i64
  %sub.ptr.sub.c = sub i64 %sub.ptr.lhs.cast.c, %sub.ptr.rhs.cast.c
  %shl.c = shl i64 %sub.ptr.sub.c, 6
  %or.c = or i64 %shl.c, -9223372036854775808
  store i64 %or.c, i64* %arrayidx122, align 8
  br label %if.end150

if.end150:                                        ; preds = %if.end150.critedge, %if.then133
  call void asm sideeffect "dsb sy", "~{memory}"() #25, !srcloc !62
  br label %cleanup

cleanup:                                          ; preds = %do.body110, %if.end150, %if.then124, %cond.end99, %entry, %if.then81
  %retval.0 = phi i1 [ %cmp, %if.then81 ], [ true, %entry ], [ false, %cond.end99 ], [ false, %if.then124 ], [ true, %if.end150 ], [ true, %do.body110 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_teardown(%struct.its_vpe* nocapture noundef %vpe) unnamed_addr #0 {
entry:
  call fastcc void @its_vpe_db_proxy_unmap(%struct.its_vpe* noundef %vpe) #24
  %vpe_id = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 10
  %0 = load i16, i16* %vpe_id, align 2
  call fastcc void @its_vpe_id_free(i16 noundef %0) #24
  %vpt_page = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %vpe, i64 0, i32 0
  %1 = load %struct.page*, %struct.page** %vpt_page, align 8
  call fastcc void @its_free_pending_table(%struct.page* noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #25, !srcloc !63
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @its_vpe_db_proxy_unmap(%struct.its_vpe* nocapture noundef %vpe) unnamed_addr #0 {
entry:
  %0 = load %struct.rdists*, %struct.rdists** @gic_rdists, align 8
  %has_rvpeid = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 7
  %1 = load i8, i8* %has_rvpeid, align 1, !range !9
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.end11

if.end:                                           ; preds = %entry
  %has_direct_lpi = getelementptr inbounds %struct.rdists, %struct.rdists* %0, i64 0, i32 8
  %2 = load i8, i8* %has_direct_lpi, align 2, !range !9
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.end
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 0)) #24
  call fastcc void @its_vpe_db_proxy_unmap_locked(%struct.its_vpe* noundef %vpe) #24
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.anon.105, %struct.anon.105* @vpe_proxy, i64 0, i32 0), i64 noundef %call) #24
  br label %if.end11

if.end11:                                         ; preds = %entry, %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @its_save_disable() #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef nonnull @its_lock) #24
  %.pn91 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %cmp.not92 = icmp eq i8* %.pn91, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not92, label %cleanup54, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn93 = phi i8* [ %.pn, %for.inc ], [ %.pn91, %entry ]
  %base2 = getelementptr i8, i8* %.pn93, i64 16
  %0 = bitcast i8* %base2 to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %1) #25, !srcloc !8
  %ctlr_save = getelementptr i8, i8* %.pn93, i64 288
  %3 = bitcast i8* %ctlr_save to i32*
  store i32 %2, i32* %3, align 8
  %call5 = call fastcc i32 @its_force_quiescent(i8* noundef %1) #24
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %for.inc, label %err24

for.inc:                                          ; preds = %for.body
  %add.ptr14 = getelementptr i8, i8* %1, i64 128
  %call15 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr14) #24
  %cbaser_save = getelementptr i8, i8* %.pn93, i64 280
  %4 = bitcast i8* %cbaser_save to i64*
  store i64 %call15, i64* %4, align 8
  %5 = bitcast i8* %.pn93 to i8**
  %.pn = load i8*, i8** %5, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not, label %cleanup54, label %for.body

err24:                                            ; preds = %for.body
  %6 = bitcast i8* %ctlr_save to i32*
  %phys_base = getelementptr i8, i8* %.pn93, i64 32
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0), i8* noundef %phys_base, i32 noundef %call5) #26
  %7 = load i32, i32* %6, align 8
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %7, i8* %1) #25, !srcloc !10
  %.pn83.in.in94 = getelementptr inbounds i8, i8* %.pn93, i64 8
  %.pn83.in95 = bitcast i8* %.pn83.in.in94 to i8**
  %.pn8396 = load i8*, i8** %.pn83.in95, align 8
  %cmp36.not97 = icmp eq i8* %.pn8396, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp36.not97, label %cleanup54, label %for.body38

for.body38:                                       ; preds = %err24, %for.body38
  %.pn8398 = phi i8* [ %.pn83, %for.body38 ], [ %.pn8396, %err24 ]
  %base40 = getelementptr i8, i8* %.pn8398, i64 16
  %8 = bitcast i8* %base40 to i8**
  %9 = load i8*, i8** %8, align 8
  %ctlr_save41 = getelementptr i8, i8* %.pn8398, i64 288
  %10 = bitcast i8* %ctlr_save41 to i32*
  %11 = load i32, i32* %10, align 8
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %11, i8* %9) #25, !srcloc !10
  %.pn83.in.in = getelementptr inbounds i8, i8* %.pn8398, i64 8
  %.pn83.in = bitcast i8* %.pn83.in.in to i8**
  %.pn83 = load i8*, i8** %.pn83.in, align 8
  %cmp36.not = icmp eq i8* %.pn83, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp36.not, label %cleanup54, label %for.body38

cleanup54:                                        ; preds = %for.inc, %for.body38, %entry, %err24
  %err.187 = phi i32 [ %call5, %err24 ], [ 0, %entry ], [ %call5, %for.body38 ], [ 0, %for.inc ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef nonnull @its_lock) #24
  ret i32 %err.187
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @its_restore_enable() #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef nonnull @its_lock) #24
  %.pn108 = load i8*, i8** bitcast (%struct.list_head* @its_nodes to i8**), align 8
  %cmp.not111 = icmp eq i8* %.pn108, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not111, label %for.end72, label %for.body

for.body:                                         ; preds = %entry, %cleanup60
  %.pn112 = phi i8* [ %.pn, %cleanup60 ], [ %.pn108, %entry ]
  %its.0114.in = getelementptr i8, i8* %.pn112, i64 -40
  %its.0114 = bitcast i8* %its.0114.in to %struct.its_node*
  %base2 = getelementptr i8, i8* %.pn112, i64 16
  %0 = bitcast i8* %base2 to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %1) #25, !srcloc !8
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3-its.c\22; .popsection; .long 14472b - 14470b; .short 4811; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !64
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call21 = call fastcc i32 @its_force_quiescent(i8* noundef %1) #24
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %if.end
  %phys_base = getelementptr i8, i8* %.pn112, i64 32
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i64 0, i64 0), i8* noundef %phys_base, i32 noundef %call21) #26
  br label %cleanup60

if.end29:                                         ; preds = %if.end
  %cbaser_save = getelementptr i8, i8* %.pn112, i64 280
  %3 = bitcast i8* %cbaser_save to i64*
  %4 = load i64, i64* %3, align 8
  %add.ptr30 = getelementptr i8, i8* %1, i64 128
  call fastcc void @__raw_writeq(i64 noundef %4, i8* noundef %add.ptr30) #24
  %cmd_base = getelementptr i8, i8* %.pn112, i64 40
  %5 = bitcast i8* %cmd_base to %struct.its_cmd_block**
  %6 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %cmd_write = getelementptr i8, i8* %.pn112, i64 48
  %7 = bitcast i8* %cmd_write to %struct.its_cmd_block**
  store %struct.its_cmd_block* %6, %struct.its_cmd_block** %7, align 8
  %add.ptr31 = getelementptr i8, i8* %1, i64 136
  call fastcc void @__raw_writeq(i64 noundef 0, i8* noundef %add.ptr31) #24
  %val = getelementptr i8, i8* %.pn112, i64 64
  %8 = bitcast i8* %val to i64*
  %9 = load i64, i64* %8, align 8
  %tobool37.not = icmp sgt i64 %9, -1
  br i1 %tobool37.not, label %cleanup, label %if.end39

if.end39:                                         ; preds = %if.end29
  %tables = getelementptr i8, i8* %.pn112, i64 56
  %arrayidx = bitcast i8* %tables to %struct.its_baser*
  call fastcc void @its_write_baser(%struct.its_node* noundef %its.0114, %struct.its_baser* noundef %arrayidx, i64 noundef %9) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end39
  %val.1 = getelementptr i8, i8* %.pn112, i64 88
  %10 = bitcast i8* %val.1 to i64*
  %11 = load i64, i64* %10, align 8
  %tobool37.not.1 = icmp sgt i64 %11, -1
  br i1 %tobool37.not.1, label %cleanup.1, label %if.end39.1

if.end39.1:                                       ; preds = %cleanup
  %arrayidx.1 = getelementptr i8, i8* %.pn112, i64 80
  %12 = bitcast i8* %arrayidx.1 to %struct.its_baser*
  call fastcc void @its_write_baser(%struct.its_node* noundef %its.0114, %struct.its_baser* noundef %12, i64 noundef %11) #24
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end39.1, %cleanup
  %val.2 = getelementptr i8, i8* %.pn112, i64 112
  %13 = bitcast i8* %val.2 to i64*
  %14 = load i64, i64* %13, align 8
  %tobool37.not.2 = icmp sgt i64 %14, -1
  br i1 %tobool37.not.2, label %cleanup.2, label %if.end39.2

if.end39.2:                                       ; preds = %cleanup.1
  %arrayidx.2 = getelementptr i8, i8* %.pn112, i64 104
  %15 = bitcast i8* %arrayidx.2 to %struct.its_baser*
  call fastcc void @its_write_baser(%struct.its_node* noundef %its.0114, %struct.its_baser* noundef %15, i64 noundef %14) #24
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end39.2, %cleanup.1
  %val.3 = getelementptr i8, i8* %.pn112, i64 136
  %16 = bitcast i8* %val.3 to i64*
  %17 = load i64, i64* %16, align 8
  %tobool37.not.3 = icmp sgt i64 %17, -1
  br i1 %tobool37.not.3, label %cleanup.3, label %if.end39.3

if.end39.3:                                       ; preds = %cleanup.2
  %arrayidx.3 = getelementptr i8, i8* %.pn112, i64 128
  %18 = bitcast i8* %arrayidx.3 to %struct.its_baser*
  call fastcc void @its_write_baser(%struct.its_node* noundef %its.0114, %struct.its_baser* noundef %18, i64 noundef %17) #24
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end39.3, %cleanup.2
  %val.4 = getelementptr i8, i8* %.pn112, i64 160
  %19 = bitcast i8* %val.4 to i64*
  %20 = load i64, i64* %19, align 8
  %tobool37.not.4 = icmp sgt i64 %20, -1
  br i1 %tobool37.not.4, label %cleanup.4, label %if.end39.4

if.end39.4:                                       ; preds = %cleanup.3
  %arrayidx.4 = getelementptr i8, i8* %.pn112, i64 152
  %21 = bitcast i8* %arrayidx.4 to %struct.its_baser*
  call fastcc void @its_write_baser(%struct.its_node* noundef %its.0114, %struct.its_baser* noundef %21, i64 noundef %20) #24
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end39.4, %cleanup.3
  %val.5 = getelementptr i8, i8* %.pn112, i64 184
  %22 = bitcast i8* %val.5 to i64*
  %23 = load i64, i64* %22, align 8
  %tobool37.not.5 = icmp sgt i64 %23, -1
  br i1 %tobool37.not.5, label %cleanup.5, label %if.end39.5

if.end39.5:                                       ; preds = %cleanup.4
  %arrayidx.5 = getelementptr i8, i8* %.pn112, i64 176
  %24 = bitcast i8* %arrayidx.5 to %struct.its_baser*
  call fastcc void @its_write_baser(%struct.its_node* noundef %its.0114, %struct.its_baser* noundef %24, i64 noundef %23) #24
  br label %cleanup.5

cleanup.5:                                        ; preds = %if.end39.5, %cleanup.4
  %val.6 = getelementptr i8, i8* %.pn112, i64 208
  %25 = bitcast i8* %val.6 to i64*
  %26 = load i64, i64* %25, align 8
  %tobool37.not.6 = icmp sgt i64 %26, -1
  br i1 %tobool37.not.6, label %cleanup.6, label %if.end39.6

if.end39.6:                                       ; preds = %cleanup.5
  %arrayidx.6 = getelementptr i8, i8* %.pn112, i64 200
  %27 = bitcast i8* %arrayidx.6 to %struct.its_baser*
  call fastcc void @its_write_baser(%struct.its_node* noundef %its.0114, %struct.its_baser* noundef %27, i64 noundef %26) #24
  br label %cleanup.6

cleanup.6:                                        ; preds = %if.end39.6, %cleanup.5
  %val.7 = getelementptr i8, i8* %.pn112, i64 232
  %28 = bitcast i8* %val.7 to i64*
  %29 = load i64, i64* %28, align 8
  %tobool37.not.7 = icmp sgt i64 %29, -1
  br i1 %tobool37.not.7, label %cleanup.7, label %if.end39.7

if.end39.7:                                       ; preds = %cleanup.6
  %arrayidx.7 = getelementptr i8, i8* %.pn112, i64 224
  %30 = bitcast i8* %arrayidx.7 to %struct.its_baser*
  call fastcc void @its_write_baser(%struct.its_node* noundef %its.0114, %struct.its_baser* noundef %30, i64 noundef %29) #24
  br label %cleanup.7

cleanup.7:                                        ; preds = %if.end39.7, %cleanup.6
  %ctlr_save = getelementptr i8, i8* %.pn112, i64 288
  %31 = bitcast i8* %ctlr_save to i32*
  %32 = load i32, i32* %31, align 8
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %32, i8* %1) #25, !srcloc !10
  %collections = getelementptr i8, i8* %.pn112, i64 248
  %33 = bitcast i8* %collections to %struct.its_collection**
  %34 = load %struct.its_collection*, %struct.its_collection** %33, align 8
  %call47 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call47, ptrtoint (i32* @cpu_number to i64)
  %35 = inttoptr i64 %add to i32*
  %36 = load i32, i32* %35, align 4
  %idxprom48 = sext i32 %36 to i64
  %col_id = getelementptr %struct.its_collection, %struct.its_collection* %34, i64 %idxprom48, i32 1
  %37 = load i16, i16* %col_id, align 8
  %conv50 = zext i16 %37 to i64
  %add.ptr52 = getelementptr i8, i8* %1, i64 8
  %call53 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr52) #24
  %shr = lshr i64 %call53, 24
  %and55 = and i64 %shr, 255
  %cmp56 = icmp ugt i64 %and55, %conv50
  br i1 %cmp56, label %if.then58, label %cleanup60

if.then58:                                        ; preds = %cleanup.7
  call fastcc void @its_cpu_init_collection(%struct.its_node* noundef %its.0114) #24
  br label %cleanup60

cleanup60:                                        ; preds = %cleanup.7, %if.then58, %do.end26
  %38 = bitcast i8* %.pn112 to i8**
  %.pn = load i8*, i8** %38, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @its_nodes to i8*)
  br i1 %cmp.not, label %for.end72, label %for.body

for.end72:                                        ; preds = %cleanup60, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef nonnull @its_lock) #24
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #23

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree nounwind readonly }
attributes #9 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #13 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #17 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #19 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #20 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #21 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #22 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #23 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #24 = { nobuiltin "no-builtins" }
attributes #25 = { nounwind }
attributes #26 = { cold nobuiltin nounwind "no-builtins" }
attributes #27 = { nobuiltin nounwind "no-builtins" }
attributes #28 = { cold nobuiltin "no-builtins" }
attributes #29 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #30 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #31 = { nounwind readonly }

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
!8 = !{i64 2153780182, i64 2153780229, i64 2153780235, i64 2153780272, i64 2153780290, i64 2153781210, i64 2153781258, i64 2153781306, i64 2153781369, i64 2153781418, i64 2153780368, i64 2153780393, i64 2153780419, i64 2153780425, i64 2153780462, i64 2153780468, i64 2153780518, i64 2153780564, i64 2153780597}
!9 = !{i8 0, i8 2}
!10 = !{i64 6284964}
!11 = !{i64 2156723543}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2156116537}
!14 = !{i64 2156119982}
!15 = !{i64 2156138139}
!16 = !{i64 2156737592}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2156668061}
!20 = !{i64 2149164035, i64 2149164082, i64 2149164088, i64 2149164125, i64 2149164143, i64 2149165070, i64 2149165118, i64 2149165166, i64 2149165229, i64 2149165278, i64 2149164221, i64 2149164246, i64 2149164272, i64 2149164278, i64 2149164315, i64 2149164321, i64 2149164371, i64 2149164417, i64 2149164450}
!21 = !{i64 2153781840, i64 2153781887, i64 2153781893, i64 2153781930, i64 2153781948, i64 2153782866, i64 2153782914, i64 2153782962, i64 2153783025, i64 2153783074, i64 2153782026, i64 2153782051, i64 2153782077, i64 2153782083, i64 2153782120, i64 2153782126, i64 2153782176, i64 2153782222, i64 2153782255}
!22 = !{i64 0, i64 65}
!23 = !{i64 6285132}
!24 = !{i64 2156063819}
!25 = !{i64 1773093}
!26 = !{i64 2148025506, i64 2148026017, i64 2148026047, i64 2148026073, i64 2148026105, i64 2148026134}
!27 = !{i64 2149753195}
!28 = !{i64 2149760476}
!29 = !{i64 2148056349, i64 2148056382, i64 2148056435, i64 2148056494, i64 2148056528, i64 2148056583, i64 2148056612, i64 2148056632}
!30 = !{i64 2149738194}
!31 = !{i64 2149764037}
!32 = !{i64 2155054229}
!33 = !{i64 2149660938, i64 2149660985, i64 2149660991, i64 2149661028, i64 2149661046, i64 2149662357, i64 2149662405, i64 2149662453, i64 2149662516, i64 2149662565, i64 2149661124, i64 2149661149, i64 2149661175, i64 2149661181, i64 2149662023, i64 2149662063, i64 2149662081, i64 2149662113, i64 2149662141, i64 2149662195, i64 2149662215, i64 2149662312, i64 2149661204, i64 2149661218, i64 2149661224, i64 2149661274, i64 2149661320, i64 2149661353}
!34 = !{i64 2149663117, i64 2149663164, i64 2149663170, i64 2149663207, i64 2149663225, i64 2149664168, i64 2149664216, i64 2149664264, i64 2149664327, i64 2149664376, i64 2149663303, i64 2149663328, i64 2149663354, i64 2149663360, i64 2149663397, i64 2149663403, i64 2149663453, i64 2149663499, i64 2149663532}
!35 = !{i64 2149655235, i64 2149655282, i64 2149655288, i64 2149655325, i64 2149655343, i64 2149656684, i64 2149656732, i64 2149656780, i64 2149656843, i64 2149656892, i64 2149655421, i64 2149655446, i64 2149655472, i64 2149655478, i64 2149656350, i64 2149656390, i64 2149656408, i64 2149656440, i64 2149656468, i64 2149656522, i64 2149656542, i64 2149656639, i64 2149655501, i64 2149655515, i64 2149655521, i64 2149655571, i64 2149655617, i64 2149655650}
!36 = !{i64 2149707336}
!37 = !{i64 2149666951, i64 2149666998, i64 2149667004, i64 2149667041, i64 2149667059, i64 2149668370, i64 2149668418, i64 2149668466, i64 2149668529, i64 2149668578, i64 2149667137, i64 2149667162, i64 2149667188, i64 2149667194, i64 2149668036, i64 2149668076, i64 2149668094, i64 2149668126, i64 2149668154, i64 2149668208, i64 2149668228, i64 2149668325, i64 2149667217, i64 2149667231, i64 2149667237, i64 2149667287, i64 2149667333, i64 2149667366}
!38 = !{i64 2155507897}
!39 = !{i64 2148026352, i64 2148027004, i64 2148027034, i64 2148027065, i64 2148027097, i64 2148027132, i64 2148027157}
!40 = !{i32 0, i32 33}
!41 = !{i64 2155042389}
!42 = !{i64 2155045742}
!43 = !{i64 2155071103}
!44 = !{i64 2155072770}
!45 = !{i64 2147966147, i64 2147966663, i64 2147966693, i64 2147966720, i64 2147966754, i64 2147966784}
!46 = !{i64 2147956426, i64 2147956942, i64 2147956972, i64 2147956999, i64 2147957033, i64 2147957063}
!47 = !{i64 2147966999, i64 2147967647, i64 2147967677, i64 2147967709, i64 2147967743, i64 2147967779, i64 2147967804}
!48 = !{i64 2147961365, i64 2147962021, i64 2147962051, i64 2147962083, i64 2147962117, i64 2147962153, i64 2147962178}
!49 = !{i64 2155171659}
!50 = !{i64 2156239120}
!51 = !{i64 2156201720}
!52 = !{i64 2156164913}
!53 = !{i64 2155168614}
!54 = !{i64 2156415289}
!55 = !{i64 2155051810}
!56 = !{i64 2156420492}
!57 = !{i64 2156419075}
!58 = !{void (%struct.its_device*, i32)* @its_send_clear, void (%struct.its_device*, i32)* @its_send_int, void (%struct.its_device*, i32)* @its_send_inv}
!59 = !{i64 2156254902}
!60 = !{i64 2155050022}
!61 = !{i64 2155856802}
!62 = !{i64 2155862313}
!63 = !{i64 2148036076, i64 2148036597, i64 2148036627, i64 2148036653, i64 2148036685, i64 2148036714}
!64 = !{i64 2156581611}
