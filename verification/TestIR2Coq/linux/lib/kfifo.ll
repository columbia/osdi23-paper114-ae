; ModuleID = 'lib/kfifo.c'
source_filename = "lib/kfifo.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.__kfifo = type { i32, i32, i32, i32, i8* }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.page = type { i64, %union.anon, %union.anon.60, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i8* }
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
%struct.iov_iter = type opaque
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
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.45 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.43, %struct.qspinlock }
%union.anon.43 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.45 = type { %struct.nfs_lock_info }
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
%struct.ucounts = type opaque
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
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.60 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@memstart_addr = external dso_local local_unnamed_addr global i64, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_alloc(%struct.__kfifo* nocapture noundef writeonly %fifo, i32 noundef %size, i64 noundef %esize, i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  %conv16 = zext i32 %size to i64
  %call17 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %conv16) #10
  %conv20 = trunc i64 %call17 to i32
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  store i32 0, i32* %in, align 8
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  store i32 0, i32* %out, align 4
  %conv21 = trunc i64 %esize to i32
  %esize22 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 3
  store i32 %conv21, i32* %esize22, align 4
  %cmp23 = icmp ult i32 %conv20, 2
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 4
  store i8* null, i8** %data, align 8
  br label %return

if.end:                                           ; preds = %entry
  %conv25 = and i64 %call17, 4294967295
  %call26 = call fastcc i8* @kmalloc_array(i64 noundef %esize, i64 noundef %conv25, i32 noundef %gfp_mask) #11
  %data27 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 4
  store i8* %call26, i8** %data27, align 8
  %tobool.not = icmp eq i8* %call26, null
  %sub32 = add i32 %conv20, -1
  %spec.select = select i1 %tobool.not, i32 0, i32 %sub32
  %spec.select59 = select i1 %tobool.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %if.end, %if.then
  %sub32.sink = phi i32 [ 0, %if.then ], [ %spec.select, %if.end ]
  %retval.0 = phi i32 [ -22, %if.then ], [ %spec.select59, %if.end ]
  %mask33 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 2
  store i32 %sub32.sink, i32* %mask33, align 8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__roundup_pow_of_two(i64 noundef %n) unnamed_addr #2 {
entry:
  %sub = add i64 %n, -1
  %call = call fastcc i32 @fls_long(i64 noundef %sub) #11
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 %size)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !7

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef %flags) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__kfifo_free(%struct.__kfifo* nocapture noundef %fifo) local_unnamed_addr #0 {
entry:
  %data = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 4
  %0 = load i8*, i8** %data, align 8
  call void @kfree(i8* noundef %0) #12
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  store i32 0, i32* %in, align 8
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  store i32 0, i32* %out, align 4
  %esize = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 3
  store i32 0, i32* %esize, align 4
  store i8* null, i8** %data, align 8
  %mask = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 2
  store i32 0, i32* %mask, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local i32 @__kfifo_init(%struct.__kfifo* nocapture noundef writeonly %fifo, i8* noundef %buffer, i32 noundef %size, i64 noundef %esize) local_unnamed_addr #4 {
entry:
  %conv = zext i32 %size to i64
  %div = udiv i64 %conv, %esize
  %call = call fastcc i1 @is_power_of_2(i64 noundef %div) #10
  br i1 %call, label %if.end, label %cond.end14

cond.end14:                                       ; preds = %entry
  %call13 = call fastcc i64 @__rounddown_pow_of_two(i64 noundef %div) #10
  br label %if.end

if.end:                                           ; preds = %cond.end14, %entry
  %size.addr.0.in = phi i64 [ %div, %entry ], [ %call13, %cond.end14 ]
  %size.addr.0 = trunc i64 %size.addr.0.in to i32
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  store i32 0, i32* %in, align 8
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  store i32 0, i32* %out, align 4
  %conv17 = trunc i64 %esize to i32
  %esize18 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 3
  store i32 %conv17, i32* %esize18, align 4
  %data = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 4
  store i8* %buffer, i8** %data, align 8
  %cmp19 = icmp ult i32 %size.addr.0, 2
  %sub23 = add i32 %size.addr.0, -1
  %spec.select = select i1 %cmp19, i32 0, i32 %sub23
  %spec.select40 = select i1 %cmp19, i32 -22, i32 0
  %0 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 2
  store i32 %spec.select, i32* %0, align 8
  ret i32 %spec.select40
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_power_of_2(i64 noundef %n) unnamed_addr #2 {
entry:
  %cmp.not = icmp eq i64 %n, 0
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = call i64 @llvm.ctpop.i64(i64 %n), !range !8
  %cmp1 = icmp ult i64 %0, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__rounddown_pow_of_two(i64 noundef %n) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @fls_long(i64 noundef %n) #11
  %sub = add i32 %call, -1
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_in(%struct.__kfifo* nocapture noundef %fifo, i8* noundef %buf, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @kfifo_unused(%struct.__kfifo* noundef %fifo) #11
  %cmp = icmp ult i32 %call, %len
  %spec.select = select i1 %cmp, i32 %call, i32 %len
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %0 = load i32, i32* %in, align 8
  call fastcc void @kfifo_copy_in(%struct.__kfifo* noundef %fifo, i8* noundef %buf, i32 noundef %spec.select, i32 noundef %0) #11
  %1 = load i32, i32* %in, align 8
  %add = add i32 %1, %spec.select
  store i32 %add, i32* %in, align 8
  ret i32 %spec.select
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @kfifo_unused(%struct.__kfifo* nocapture noundef readonly %fifo) unnamed_addr #6 {
entry:
  %mask = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 2
  %0 = load i32, i32* %mask, align 8
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %1 = load i32, i32* %in, align 8
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  %2 = load i32, i32* %out, align 4
  %sub.neg = add i32 %0, 1
  %add = sub i32 %sub.neg, %1
  %sub1 = add i32 %add, %2
  ret i32 %sub1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kfifo_copy_in(%struct.__kfifo* nocapture noundef readonly %fifo, i8* noundef %src, i32 noundef %len, i32 noundef %off) unnamed_addr #0 {
entry:
  %mask = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 2
  %0 = load i32, i32* %mask, align 8
  %add = add i32 %0, 1
  %esize1 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 3
  %1 = load i32, i32* %esize1, align 4
  %and = and i32 %0, %off
  %mul = mul i32 %and, %1
  %mul3 = mul i32 %add, %1
  %mul4 = mul i32 %1, %len
  %sub = sub i32 %mul3, %mul
  %cmp5 = icmp ult i32 %mul4, %sub
  %cond = select i1 %cmp5, i32 %mul4, i32 %sub
  %data = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 4
  %2 = load i8*, i8** %data, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext
  %conv = zext i32 %cond to i64
  %call = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %src, i64 noundef %conv) #12
  %3 = load i8*, i8** %data, align 8
  %add.ptr8 = getelementptr i8, i8* %src, i64 %conv
  %sub9 = sub i32 %mul4, %cond
  %conv10 = zext i32 %sub9 to i64
  %call11 = call i8* @memcpy(i8* noundef %3, i8* noundef %add.ptr8, i64 noundef %conv10) #12
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_out_peek(%struct.__kfifo* nocapture noundef readonly %fifo, i8* noundef %buf, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %0 = load i32, i32* %in, align 8
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  %1 = load i32, i32* %out, align 4
  %sub = sub i32 %0, %1
  %cmp = icmp ult i32 %sub, %len
  %spec.select = select i1 %cmp, i32 %sub, i32 %len
  call fastcc void @kfifo_copy_out(%struct.__kfifo* noundef %fifo, i8* noundef %buf, i32 noundef %spec.select, i32 noundef %1) #11
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kfifo_copy_out(%struct.__kfifo* nocapture noundef readonly %fifo, i8* noundef %dst, i32 noundef %len, i32 noundef %off) unnamed_addr #0 {
entry:
  %mask = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 2
  %0 = load i32, i32* %mask, align 8
  %add = add i32 %0, 1
  %esize1 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 3
  %1 = load i32, i32* %esize1, align 4
  %and = and i32 %0, %off
  %mul = mul i32 %and, %1
  %mul3 = mul i32 %add, %1
  %mul4 = mul i32 %1, %len
  %sub = sub i32 %mul3, %mul
  %cmp5 = icmp ult i32 %mul4, %sub
  %cond = select i1 %cmp5, i32 %mul4, i32 %sub
  %data = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 4
  %2 = load i8*, i8** %data, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext
  %conv = zext i32 %cond to i64
  %call = call i8* @memcpy(i8* noundef %dst, i8* noundef %add.ptr, i64 noundef %conv) #12
  %add.ptr7 = getelementptr i8, i8* %dst, i64 %conv
  %3 = load i8*, i8** %data, align 8
  %sub9 = sub i32 %mul4, %cond
  %conv10 = zext i32 %sub9 to i64
  %call11 = call i8* @memcpy(i8* noundef %add.ptr7, i8* noundef %3, i64 noundef %conv10) #12
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_out(%struct.__kfifo* nocapture noundef %fifo, i8* noundef %buf, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = call i32 @__kfifo_out_peek(%struct.__kfifo* noundef %fifo, i8* noundef %buf, i32 noundef %len) #11
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  %0 = load i32, i32* %out, align 4
  %add = add i32 %0, %call
  store i32 %add, i32* %out, align 4
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_from_user(%struct.__kfifo* nocapture noundef %fifo, i8* noundef %from, i64 noundef %len, i32* nocapture noundef writeonly %copied) local_unnamed_addr #0 {
entry:
  %esize1 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 3
  %0 = load i32, i32* %esize1, align 4
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i32 %0 to i64
  %div = udiv i64 %len, %conv
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %len.addr.0 = phi i64 [ %div, %if.then ], [ %len, %entry ]
  %call = call fastcc i32 @kfifo_unused(%struct.__kfifo* noundef %fifo) #11
  %conv2 = zext i32 %call to i64
  %cmp3 = icmp ugt i64 %len.addr.0, %conv2
  %spec.select = select i1 %cmp3, i64 %conv2, i64 %len.addr.0
  %conv8 = trunc i64 %spec.select to i32
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %1 = load i32, i32* %in, align 8
  %call9 = call fastcc i64 @kfifo_copy_from_user(%struct.__kfifo* noundef %fifo, i8* noundef %from, i32 noundef %conv8, i32 noundef %1, i32* noundef %copied) #11
  %tobool.not = icmp eq i64 %call9, 0
  br i1 %tobool.not, label %if.end14, label %if.then13, !prof !11

if.then13:                                        ; preds = %if.end
  %sub = sub i64 %spec.select, %call9
  %.pre = trunc i64 %sub to i32
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then13
  %.pre-phi = phi i32 [ %conv8, %if.end ], [ %.pre, %if.then13 ]
  %err.0 = phi i32 [ 0, %if.end ], [ -14, %if.then13 ]
  %2 = load i32, i32* %in, align 8
  %conv17 = add i32 %2, %.pre-phi
  store i32 %conv17, i32* %in, align 8
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @kfifo_copy_from_user(%struct.__kfifo* nocapture noundef readonly %fifo, i8* noundef %from, i32 noundef %len, i32 noundef %off, i32* nocapture noundef writeonly %copied) unnamed_addr #0 {
entry:
  %mask = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 2
  %0 = load i32, i32* %mask, align 8
  %add = add i32 %0, 1
  %esize1 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 3
  %1 = load i32, i32* %esize1, align 4
  %and = and i32 %0, %off
  %mul = mul i32 %and, %1
  %mul3 = mul i32 %add, %1
  %mul4 = mul i32 %1, %len
  %sub = sub i32 %mul3, %mul
  %cmp5 = icmp ult i32 %mul4, %sub
  %cond = select i1 %cmp5, i32 %mul4, i32 %sub
  %data = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 4
  %conv = zext i32 %cond to i64
  %cmp11.i.i = icmp slt i32 %cond, 0
  br i1 %cmp11.i.i, label %copy_from_user.exit.thread, label %copy_from_user.exit, !prof !7

copy_from_user.exit.thread:                       ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !12
  br label %if.then9

copy_from_user.exit:                              ; preds = %entry
  %2 = load i8*, i8** %data, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %add.ptr, i8* noundef %from, i64 noundef %conv) #12
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.else, label %if.then9, !prof !11

if.then9:                                         ; preds = %copy_from_user.exit.thread, %copy_from_user.exit
  %n.addr.0.i90 = phi i64 [ %conv, %copy_from_user.exit.thread ], [ %call2.i, %copy_from_user.exit ]
  %conv10 = zext i32 %mul4 to i64
  %conv14 = zext i32 %1 to i64
  %add11 = add nsw i64 %conv14, -1
  %sub13 = add nsw i64 %add11, %conv10
  %add15 = sub nsw i64 %sub13, %conv
  %sub16 = add i64 %add15, %n.addr.0.i90
  %div = udiv i64 %sub16, %conv14
  br label %if.end39

if.else:                                          ; preds = %copy_from_user.exit
  %sub21 = sub i32 %mul4, %cond
  %conv22 = zext i32 %sub21 to i64
  %cmp11.i.i82 = icmp slt i32 %sub21, 0
  br i1 %cmp11.i.i82, label %copy_from_user.exit87.thread, label %copy_from_user.exit87, !prof !7

copy_from_user.exit87.thread:                     ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !12
  br label %if.then32

copy_from_user.exit87:                            ; preds = %if.else
  %add.ptr20 = getelementptr i8, i8* %from, i64 %conv
  %3 = load i8*, i8** %data, align 8
  %call2.i84 = call fastcc i64 @_copy_from_user(i8* noundef %3, i8* noundef %add.ptr20, i64 noundef %conv22) #12
  %tobool24.not = icmp eq i64 %call2.i84, 0
  br i1 %tobool24.not, label %if.end39, label %if.then32, !prof !11

if.then32:                                        ; preds = %copy_from_user.exit87.thread, %copy_from_user.exit87
  %n.addr.0.i8693 = phi i64 [ %conv22, %copy_from_user.exit87.thread ], [ %call2.i84, %copy_from_user.exit87 ]
  %conv33 = zext i32 %1 to i64
  %add34 = add nsw i64 %conv33, -1
  %sub35 = add i64 %add34, %n.addr.0.i8693
  %div37 = udiv i64 %sub35, %conv33
  br label %if.end39

if.end39:                                         ; preds = %copy_from_user.exit87, %if.then32, %if.then9
  %ret.0 = phi i64 [ %div, %if.then9 ], [ %div37, %if.then32 ], [ 0, %copy_from_user.exit87 ]
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !13
  %4 = trunc i64 %ret.0 to i32
  %5 = mul i32 %1, %4
  %conv44 = sub i32 %mul4, %5
  store i32 %conv44, i32* %copied, align 4
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_to_user(%struct.__kfifo* nocapture noundef %fifo, i8* noundef %to, i64 noundef %len, i32* nocapture noundef writeonly %copied) local_unnamed_addr #0 {
entry:
  %esize1 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 3
  %0 = load i32, i32* %esize1, align 4
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i32 %0 to i64
  %div = udiv i64 %len, %conv
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %len.addr.0 = phi i64 [ %div, %if.then ], [ %len, %entry ]
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %1 = load i32, i32* %in, align 8
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  %2 = load i32, i32* %out, align 4
  %sub = sub i32 %1, %2
  %conv2 = zext i32 %sub to i64
  %cmp3 = icmp ugt i64 %len.addr.0, %conv2
  %spec.select = select i1 %cmp3, i64 %conv2, i64 %len.addr.0
  %conv8 = trunc i64 %spec.select to i32
  %call = call fastcc i64 @kfifo_copy_to_user(%struct.__kfifo* noundef %fifo, i8* noundef %to, i32 noundef %conv8, i32 noundef %2, i32* noundef %copied) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end15, label %if.then13, !prof !11

if.then13:                                        ; preds = %if.end
  %sub14 = sub i64 %spec.select, %call
  %.pre = trunc i64 %sub14 to i32
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then13
  %.pre-phi = phi i32 [ %conv8, %if.end ], [ %.pre, %if.then13 ]
  %err.0 = phi i32 [ 0, %if.end ], [ -14, %if.then13 ]
  %3 = load i32, i32* %out, align 4
  %conv18 = add i32 %3, %.pre-phi
  store i32 %conv18, i32* %out, align 4
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @kfifo_copy_to_user(%struct.__kfifo* nocapture noundef readonly %fifo, i8* noundef %to, i32 noundef %len, i32 noundef %off, i32* nocapture noundef writeonly %copied) unnamed_addr #0 {
entry:
  %mask = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 2
  %0 = load i32, i32* %mask, align 8
  %add = add i32 %0, 1
  %esize1 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 3
  %1 = load i32, i32* %esize1, align 4
  %and = and i32 %0, %off
  %mul = mul i32 %and, %1
  %mul3 = mul i32 %add, %1
  %mul4 = mul i32 %1, %len
  %sub = sub i32 %mul3, %mul
  %cmp5 = icmp ult i32 %mul4, %sub
  %cond = select i1 %cmp5, i32 %mul4, i32 %sub
  %data = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 4
  %conv = zext i32 %cond to i64
  %cmp11.i.i = icmp slt i32 %cond, 0
  br i1 %cmp11.i.i, label %copy_to_user.exit.thread, label %copy_to_user.exit, !prof !7

copy_to_user.exit.thread:                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !12
  br label %if.then9

copy_to_user.exit:                                ; preds = %entry
  %2 = load i8*, i8** %data, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %add.ptr, i64 noundef %conv) #12
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.else, label %if.then9, !prof !11

if.then9:                                         ; preds = %copy_to_user.exit.thread, %copy_to_user.exit
  %n.addr.0.i90 = phi i64 [ %conv, %copy_to_user.exit.thread ], [ %call2.i, %copy_to_user.exit ]
  %conv10 = zext i32 %mul4 to i64
  %conv14 = zext i32 %1 to i64
  %add11 = add nsw i64 %conv14, -1
  %sub13 = add nsw i64 %add11, %conv10
  %add15 = sub nsw i64 %sub13, %conv
  %sub16 = add i64 %add15, %n.addr.0.i90
  %div = udiv i64 %sub16, %conv14
  br label %if.end39

if.else:                                          ; preds = %copy_to_user.exit
  %sub21 = sub i32 %mul4, %cond
  %conv22 = zext i32 %sub21 to i64
  %cmp11.i.i82 = icmp slt i32 %sub21, 0
  br i1 %cmp11.i.i82, label %copy_to_user.exit87.thread, label %copy_to_user.exit87, !prof !7

copy_to_user.exit87.thread:                       ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !12
  br label %if.then32

copy_to_user.exit87:                              ; preds = %if.else
  %3 = load i8*, i8** %data, align 8
  %add.ptr19 = getelementptr i8, i8* %to, i64 %conv
  %call2.i84 = call fastcc i64 @_copy_to_user(i8* noundef %add.ptr19, i8* noundef %3, i64 noundef %conv22) #12
  %tobool24.not = icmp eq i64 %call2.i84, 0
  br i1 %tobool24.not, label %if.end39, label %if.then32, !prof !11

if.then32:                                        ; preds = %copy_to_user.exit87.thread, %copy_to_user.exit87
  %n.addr.0.i8693 = phi i64 [ %conv22, %copy_to_user.exit87.thread ], [ %call2.i84, %copy_to_user.exit87 ]
  %conv33 = zext i32 %1 to i64
  %add34 = add nsw i64 %conv33, -1
  %sub35 = add i64 %add34, %n.addr.0.i8693
  %div37 = udiv i64 %sub35, %conv33
  br label %if.end39

if.end39:                                         ; preds = %copy_to_user.exit87, %if.then32, %if.then9
  %ret.0 = phi i64 [ %div, %if.then9 ], [ %div37, %if.then32 ], [ 0, %copy_to_user.exit87 ]
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %4 = trunc i64 %ret.0 to i32
  %5 = mul i32 %1, %4
  %conv44 = sub i32 %mul4, %5
  store i32 %conv44, i32* %copied, align 4
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_dma_in_prepare(%struct.__kfifo* nocapture noundef readonly %fifo, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @kfifo_unused(%struct.__kfifo* noundef %fifo) #11
  %cmp = icmp ult i32 %call, %len
  %spec.select = select i1 %cmp, i32 %call, i32 %len
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %0 = load i32, i32* %in, align 8
  %call1 = call fastcc i32 @setup_sgl(%struct.__kfifo* noundef %fifo, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %spec.select, i32 noundef %0) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @setup_sgl(%struct.__kfifo* nocapture noundef readonly %fifo, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %len, i32 noundef %off) unnamed_addr #0 {
entry:
  %mask = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 2
  %0 = load i32, i32* %mask, align 8
  %add = add i32 %0, 1
  %esize1 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 3
  %1 = load i32, i32* %esize1, align 4
  %and = and i32 %0, %off
  %mul = mul i32 %and, %1
  %mul3 = mul i32 %add, %1
  %mul4 = mul i32 %1, %len
  %sub = sub i32 %mul3, %mul
  %cmp5 = icmp ult i32 %mul4, %sub
  %cond = select i1 %cmp5, i32 %mul4, i32 %sub
  %data = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 4
  %2 = load i8*, i8** %data, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext
  %call = call fastcc i32 @setup_sgl_buf(%struct.scatterlist* noundef %sgl, i8* noundef %add.ptr, i32 noundef %nents, i32 noundef %cond) #11
  %idx.ext6 = zext i32 %call to i64
  %add.ptr7 = getelementptr %struct.scatterlist, %struct.scatterlist* %sgl, i64 %idx.ext6
  %3 = load i8*, i8** %data, align 8
  %sub9 = sub i32 %nents, %call
  %sub10 = sub i32 %mul4, %cond
  %call11 = call fastcc i32 @setup_sgl_buf(%struct.scatterlist* noundef %add.ptr7, i8* noundef %3, i32 noundef %sub9, i32 noundef %sub10) #11
  %add12 = add i32 %call11, %call
  ret i32 %add12
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_dma_out_prepare(%struct.__kfifo* nocapture noundef readonly %fifo, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %0 = load i32, i32* %in, align 8
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  %1 = load i32, i32* %out, align 4
  %sub = sub i32 %0, %1
  %cmp = icmp ult i32 %sub, %len
  %spec.select = select i1 %cmp, i32 %sub, i32 %len
  %call = call fastcc i32 @setup_sgl(%struct.__kfifo* noundef %fifo, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %spec.select, i32 noundef %1) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @__kfifo_max_r(i32 noundef %len, i64 noundef %recsize) local_unnamed_addr #7 {
entry:
  %recsize.tr = trunc i64 %recsize to i32
  %sh_prom = shl i32 %recsize.tr, 3
  %notmask = shl nsw i32 -1, %sh_prom
  %sub = xor i32 %notmask, -1
  %cmp = icmp ult i32 %sub, %len
  %sub.len = select i1 %cmp, i32 %sub, i32 %len
  ret i32 %sub.len
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @__kfifo_len_r(%struct.__kfifo* nocapture noundef readonly %fifo, i64 noundef %recsize) local_unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__kfifo_peek_n(%struct.__kfifo* noundef %fifo, i64 noundef %recsize) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__kfifo_peek_n(%struct.__kfifo* nocapture noundef readonly %fifo, i64 noundef %recsize) unnamed_addr #6 {
entry:
  %mask1 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 2
  %0 = load i32, i32* %mask1, align 8
  %data2 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 4
  %1 = load i8*, i8** %data2, align 8
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  %2 = load i32, i32* %out, align 4
  %and = and i32 %2, %0
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %tobool.not = icmp eq i64 %recsize, 1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add = add i32 %2, 1
  %and4 = and i32 %add, %0
  %idxprom5 = zext i32 %and4 to i64
  %arrayidx6 = getelementptr i8, i8* %1, i64 %idxprom5
  %4 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %or = or i32 %shl, %conv
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %l.0 = phi i32 [ %or, %if.then ], [ %conv, %entry ]
  ret i32 %l.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_in_r(%struct.__kfifo* nocapture noundef %fifo, i8* noundef %buf, i32 noundef %len, i64 noundef %recsize) local_unnamed_addr #0 {
entry:
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %recsize
  %call = call fastcc i32 @kfifo_unused(%struct.__kfifo* noundef %fifo) #11
  %conv1 = zext i32 %call to i64
  %cmp = icmp ugt i64 %add, %conv1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__kfifo_poke_n(%struct.__kfifo* noundef %fifo, i32 noundef %len, i64 noundef %recsize) #11
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %0 = load i32, i32* %in, align 8
  %1 = trunc i64 %recsize to i32
  %conv5 = add i32 %0, %1
  call fastcc void @kfifo_copy_in(%struct.__kfifo* noundef %fifo, i8* noundef %buf, i32 noundef %len, i32 noundef %conv5) #11
  %2 = load i32, i32* %in, align 8
  %3 = trunc i64 %add to i32
  %conv11 = add i32 %2, %3
  store i32 %conv11, i32* %in, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %len, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__kfifo_poke_n(%struct.__kfifo* nocapture noundef readonly %fifo, i32 noundef %n, i64 noundef %recsize) unnamed_addr #8 {
entry:
  %mask1 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 2
  %0 = load i32, i32* %mask1, align 8
  %data2 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 4
  %1 = load i8*, i8** %data2, align 8
  %conv = trunc i32 %n to i8
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %2 = load i32, i32* %in, align 8
  %and = and i32 %2, %0
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr i8, i8* %1, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %cmp = icmp ugt i64 %recsize, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %shr = lshr i32 %n, 8
  %conv4 = trunc i32 %shr to i8
  %3 = load i32, i32* %in, align 8
  %add = add i32 %3, 1
  %and6 = and i32 %add, %0
  %idxprom7 = zext i32 %and6 to i64
  %arrayidx8 = getelementptr i8, i8* %1, i64 %idxprom7
  store i8 %conv4, i8* %arrayidx8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_out_peek_r(%struct.__kfifo* nocapture noundef readonly %fifo, i8* noundef %buf, i32 noundef %len, i64 noundef %recsize) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %1 = load i32, i32* %in, align 8
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  %2 = load i32, i32* %out, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @kfifo_out_copy_r(%struct.__kfifo* noundef %fifo, i8* noundef %buf, i32 noundef %len, i64 noundef %recsize, i32* noundef nonnull %n) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kfifo_out_copy_r(%struct.__kfifo* nocapture noundef readonly %fifo, i8* noundef %buf, i32 noundef %len, i64 noundef %recsize, i32* nocapture noundef writeonly %n) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__kfifo_peek_n(%struct.__kfifo* noundef %fifo, i64 noundef %recsize) #11
  store i32 %call, i32* %n, align 4
  %cmp = icmp ult i32 %call, %len
  %spec.select = select i1 %cmp, i32 %call, i32 %len
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  %0 = load i32, i32* %out, align 4
  %1 = trunc i64 %recsize to i32
  %conv1 = add i32 %0, %1
  call fastcc void @kfifo_copy_out(%struct.__kfifo* noundef %fifo, i8* noundef %buf, i32 noundef %spec.select, i32 noundef %conv1) #11
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_out_r(%struct.__kfifo* nocapture noundef %fifo, i8* noundef %buf, i32 noundef %len, i64 noundef %recsize) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  store i32 0, i32* %n, align 4, !annotation !15
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %1 = load i32, i32* %in, align 8
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  %2 = load i32, i32* %out, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @kfifo_out_copy_r(%struct.__kfifo* noundef %fifo, i8* noundef %buf, i32 noundef %len, i64 noundef %recsize, i32* noundef nonnull %n) #11
  %3 = load i32, i32* %n, align 4
  %4 = load i32, i32* %out, align 4
  %5 = trunc i64 %recsize to i32
  %6 = add i32 %3, %5
  %conv4 = add i32 %6, %4
  store i32 %conv4, i32* %out, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @__kfifo_skip_r(%struct.__kfifo* nocapture noundef %fifo, i64 noundef %recsize) local_unnamed_addr #8 {
entry:
  %call = call fastcc i32 @__kfifo_peek_n(%struct.__kfifo* noundef %fifo, i64 noundef %recsize) #11
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  %0 = load i32, i32* %out, align 4
  %1 = trunc i64 %recsize to i32
  %2 = add i32 %call, %1
  %conv3 = add i32 %2, %0
  store i32 %conv3, i32* %out, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_from_user_r(%struct.__kfifo* nocapture noundef %fifo, i8* noundef %from, i64 noundef %len, i32* nocapture noundef writeonly %copied, i64 noundef %recsize) local_unnamed_addr #0 {
entry:
  %conv = trunc i64 %len to i32
  %call = call i32 @__kfifo_max_r(i32 noundef %conv, i64 noundef %recsize) #11
  %conv1 = zext i32 %call to i64
  %add = add i64 %conv1, %recsize
  %call2 = call fastcc i32 @kfifo_unused(%struct.__kfifo* noundef %fifo) #11
  %conv3 = zext i32 %call2 to i64
  %cmp = icmp ugt i64 %add, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %copied, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @__kfifo_poke_n(%struct.__kfifo* noundef %fifo, i32 noundef %call, i64 noundef %recsize) #11
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %0 = load i32, i32* %in, align 8
  %1 = trunc i64 %recsize to i32
  %conv9 = add i32 %0, %1
  %call10 = call fastcc i64 @kfifo_copy_from_user(%struct.__kfifo* noundef %fifo, i8* noundef %from, i32 noundef %call, i32 noundef %conv9, i32* noundef %copied) #11
  %tobool.not = icmp eq i64 %call10, 0
  br i1 %tobool.not, label %if.end15, label %if.then14, !prof !11

if.then14:                                        ; preds = %if.end
  store i32 0, i32* %copied, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %2 = load i32, i32* %in, align 8
  %3 = trunc i64 %add to i32
  %conv20 = add i32 %2, %3
  store i32 %conv20, i32* %in, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -14, %if.then14 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_to_user_r(%struct.__kfifo* nocapture noundef %fifo, i8* noundef %to, i64 noundef %len, i32* nocapture noundef writeonly %copied, i64 noundef %recsize) local_unnamed_addr #0 {
entry:
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %0 = load i32, i32* %in, align 8
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  %1 = load i32, i32* %out, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %copied, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @__kfifo_peek_n(%struct.__kfifo* noundef %fifo, i64 noundef %recsize) #11
  %conv = zext i32 %call to i64
  %cmp1 = icmp ult i64 %conv, %len
  %spec.select = select i1 %cmp1, i64 %conv, i64 %len
  %conv6 = trunc i64 %spec.select to i32
  %2 = trunc i64 %recsize to i32
  %conv9 = add i32 %1, %2
  %call10 = call fastcc i64 @kfifo_copy_to_user(%struct.__kfifo* noundef %fifo, i8* noundef %to, i32 noundef %conv6, i32 noundef %conv9, i32* noundef %copied) #11
  %tobool.not = icmp eq i64 %call10, 0
  br i1 %tobool.not, label %if.end15, label %if.then14, !prof !11

if.then14:                                        ; preds = %if.end
  store i32 0, i32* %copied, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %3 = load i32, i32* %out, align 4
  %4 = add i32 %call, %2
  %conv21 = add i32 %4, %3
  store i32 %conv21, i32* %out, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -14, %if.then14 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_dma_in_prepare_r(%struct.__kfifo* nocapture noundef readonly %fifo, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %len, i64 noundef %recsize) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %nents, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !7

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/kfifo.c\22; .popsection; .long 14472b - 14470b; .short 551; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !16
  unreachable

do.end7:                                          ; preds = %entry
  %call = call i32 @__kfifo_max_r(i32 noundef %len, i64 noundef %recsize) #11
  %conv8 = zext i32 %call to i64
  %add = add i64 %conv8, %recsize
  %call9 = call fastcc i32 @kfifo_unused(%struct.__kfifo* noundef %fifo) #11
  %conv10 = zext i32 %call9 to i64
  %cmp = icmp ugt i64 %add, %conv10
  br i1 %cmp, label %return, label %if.end13

if.end13:                                         ; preds = %do.end7
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %0 = load i32, i32* %in, align 8
  %1 = trunc i64 %recsize to i32
  %conv16 = add i32 %0, %1
  %call17 = call fastcc i32 @setup_sgl(%struct.__kfifo* noundef %fifo, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %call, i32 noundef %conv16) #11
  br label %return

return:                                           ; preds = %do.end7, %if.end13
  %retval.0 = phi i32 [ %call17, %if.end13 ], [ 0, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @__kfifo_dma_in_finish_r(%struct.__kfifo* nocapture noundef %fifo, i32 noundef %len, i64 noundef %recsize) local_unnamed_addr #8 {
entry:
  %call = call i32 @__kfifo_max_r(i32 noundef %len, i64 noundef %recsize) #11
  call fastcc void @__kfifo_poke_n(%struct.__kfifo* noundef %fifo, i32 noundef %call, i64 noundef %recsize) #11
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %0 = load i32, i32* %in, align 8
  %1 = trunc i64 %recsize to i32
  %2 = add i32 %call, %1
  %conv3 = add i32 %2, %0
  store i32 %conv3, i32* %in, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kfifo_dma_out_prepare_r(%struct.__kfifo* nocapture noundef readonly %fifo, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %len, i64 noundef %recsize) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %nents, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !7

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/kfifo.c\22; .popsection; .long 14472b - 14470b; .short 574; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !17
  unreachable

do.end7:                                          ; preds = %entry
  %call = call i32 @__kfifo_max_r(i32 noundef %len, i64 noundef %recsize) #11
  %conv8 = zext i32 %call to i64
  %add = add i64 %conv8, %recsize
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 0
  %0 = load i32, i32* %in, align 8
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  %1 = load i32, i32* %out, align 4
  %sub = sub i32 %0, %1
  %conv9 = zext i32 %sub to i64
  %cmp = icmp ugt i64 %add, %conv9
  br i1 %cmp, label %return, label %if.end12

if.end12:                                         ; preds = %do.end7
  %2 = trunc i64 %recsize to i32
  %conv16 = add i32 %1, %2
  %call17 = call fastcc i32 @setup_sgl(%struct.__kfifo* noundef %fifo, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %call, i32 noundef %conv16) #11
  br label %return

return:                                           ; preds = %do.end7, %if.end12
  %retval.0 = phi i32 [ %call17, %if.end12 ], [ 0, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @__kfifo_dma_out_finish_r(%struct.__kfifo* nocapture noundef %fifo, i64 noundef %recsize) local_unnamed_addr #8 {
entry:
  %call = call fastcc i32 @__kfifo_peek_n(%struct.__kfifo* noundef %fifo, i64 noundef %recsize) #11
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %fifo, i64 0, i32 1
  %0 = load i32, i32* %out, align 4
  %1 = trunc i64 %recsize to i32
  %2 = add i32 %call, %1
  %conv3 = add i32 %2, %0
  store i32 %conv3, i32* %out, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #2 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #13, !range !8
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #11
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #11
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !11

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #13, !srcloc !18
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #13, !srcloc !19
  call void asm sideeffect "hint #20", "~{memory}"() #13, !srcloc !20
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #11
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #11
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #12
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @setup_sgl_buf(%struct.scatterlist* noundef %sgl, i8* noundef %buf, i32 noundef %nents, i32 noundef %len) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %nents, 0
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond81 = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond81, label %cleanup45, label %if.end3

if.end3:                                          ; preds = %entry
  %0 = ptrtoint i8* %buf to i64
  %sub = add i64 %0, 549755813888
  %1 = lshr i64 %sub, 6
  %mul = and i64 %1, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %2 = inttoptr i64 %add to %struct.page*
  %3 = trunc i64 %0 to i32
  %conv = and i32 %3, 4095
  %narrow = sub nuw nsw i32 4096, %conv
  %cmp.not98 = icmp ugt i32 %narrow, %len
  br i1 %cmp.not98, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end3
  %.pre110 = load i64, i64* @memstart_addr, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %cleanup
  %4 = phi i64 [ %8, %cleanup ], [ %.pre110, %while.body.preheader ]
  %add6105 = phi i64 [ %add6, %cleanup ], [ 4096, %while.body.preheader ]
  %sgl.addr.0104 = phi %struct.scatterlist* [ %sgl.addr.2, %cleanup ], [ %sgl, %while.body.preheader ]
  %buf.addr.0103 = phi i8* [ %add.ptr, %cleanup ], [ %buf, %while.body.preheader ]
  %len.addr.0102 = phi i32 [ %len.addr.2, %cleanup ], [ %len, %while.body.preheader ]
  %n.0101 = phi i32 [ %n.2, %cleanup ], [ 0, %while.body.preheader ]
  %page.0100 = phi %struct.page* [ %page.2, %cleanup ], [ %2, %while.body.preheader ]
  %off.099 = phi i32 [ %off.2, %cleanup ], [ %conv, %while.body.preheader ]
  %add.ptr = getelementptr i8, i8* %buf.addr.0103, i64 4096
  %5 = ptrtoint i8* %add.ptr to i64
  %sub14 = add i64 %5, 549755813888
  %6 = lshr i64 %sub14, 6
  %mul17 = and i64 %6, 288230376151711680
  %add18 = add nsw i64 %mul17, -8589934592
  %7 = inttoptr i64 %add18 to %struct.page*
  %shr = ashr i64 %4, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr20 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page.0100 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %sub.ptr.sub26 = sub i64 %add18, %sub.ptr.rhs.cast
  %shl28 = shl i64 %sub.ptr.sub26, 6
  %conv29 = and i64 %add6105, 4294967295
  %sub30 = sub i64 %shl28, %conv29
  %cmp31.not = icmp eq i64 %shl, %sub30
  br i1 %cmp31.not, label %cleanup, label %if.then33

if.then33:                                        ; preds = %while.body
  %conv12 = trunc i64 %add6105 to i32
  %sub34 = sub i32 %conv12, %off.099
  call fastcc void @sg_set_page(%struct.scatterlist* noundef %sgl.addr.0104, %struct.page* noundef %page.0100, i32 noundef %sub34, i32 noundef %off.099) #11
  %call = call %struct.scatterlist* @sg_next(%struct.scatterlist* noundef %sgl.addr.0104) #12
  %inc = add i32 %n.0101, 1
  %cmp35 = icmp eq i32 %inc, %nents
  %cmp37 = icmp eq %struct.scatterlist* %call, null
  %or.cond = select i1 %cmp35, i1 true, i1 %cmp37
  br i1 %or.cond, label %cleanup45, label %if.end40

if.end40:                                         ; preds = %if.then33
  %.pre = load i64, i64* @memstart_addr, align 8
  %sub42 = sub i32 %len.addr.0102, %sub34
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.end40
  %8 = phi i64 [ %.pre, %if.end40 ], [ %4, %while.body ]
  %off.2 = phi i32 [ 0, %if.end40 ], [ %off.099, %while.body ]
  %page.2 = phi %struct.page* [ %7, %if.end40 ], [ %page.0100, %while.body ]
  %l.2 = phi i64 [ 0, %if.end40 ], [ %add6105, %while.body ]
  %n.2 = phi i32 [ %inc, %if.end40 ], [ %n.0101, %while.body ]
  %len.addr.2 = phi i32 [ %sub42, %if.end40 ], [ %len.addr.0102, %while.body ]
  %sgl.addr.2 = phi %struct.scatterlist* [ %call, %if.end40 ], [ %sgl.addr.0104, %while.body ]
  %conv4 = zext i32 %len.addr.2 to i64
  %conv5 = and i64 %l.2, 4294967295
  %add6 = add nuw nsw i64 %conv5, 4096
  %conv7 = zext i32 %off.2 to i64
  %sub8 = sub nsw i64 %add6, %conv7
  %cmp.not = icmp ugt i64 %sub8, %conv4
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %if.end3
  %off.0.lcssa = phi i32 [ %conv, %if.end3 ], [ %off.2, %cleanup ]
  %page.0.lcssa = phi %struct.page* [ %2, %if.end3 ], [ %page.2, %cleanup ]
  %n.0.lcssa = phi i32 [ 0, %if.end3 ], [ %n.2, %cleanup ]
  %len.addr.0.lcssa = phi i32 [ %len, %if.end3 ], [ %len.addr.2, %cleanup ]
  %sgl.addr.0.lcssa = phi %struct.scatterlist* [ %sgl, %if.end3 ], [ %sgl.addr.2, %cleanup ]
  call fastcc void @sg_set_page(%struct.scatterlist* noundef %sgl.addr.0.lcssa, %struct.page* noundef %page.0.lcssa, i32 noundef %len.addr.0.lcssa, i32 noundef %off.0.lcssa) #11
  %add44 = add i32 %n.0.lcssa, 1
  br label %cleanup45

cleanup45:                                        ; preds = %if.then33, %entry, %while.end
  %retval.2 = phi i32 [ %add44, %while.end ], [ 0, %entry ], [ %inc, %if.then33 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sg_set_page(%struct.scatterlist* nocapture noundef %sg, %struct.page* noundef %page, i32 noundef %len, i32 noundef %offset) unnamed_addr #0 {
entry:
  call fastcc void @sg_assign_page(%struct.scatterlist* noundef %sg, %struct.page* noundef %page) #11
  %offset1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 1
  store i32 %offset, i32* %offset1, align 8
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 2
  store i32 %len, i32* %length, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sg_assign_page(%struct.scatterlist* nocapture noundef %sg, %struct.page* noundef %page) unnamed_addr #0 {
entry:
  %page_link1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 0
  %0 = ptrtoint %struct.page* %page to i64
  %and2 = and i64 %0, 3
  %tobool.not = icmp eq i64 %and2, 0
  br i1 %tobool.not, label %do.end10, label %do.body5, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/scatterlist.h\22; .popsection; .long 14472b - 14470b; .short 95; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !21
  unreachable

do.end10:                                         ; preds = %entry
  %1 = load i64, i64* %page_link1, align 8
  %and = and i64 %1, 3
  %or = or i64 %and, %0
  store i64 %or, i64* %page_link1, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #9

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }

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
!8 = !{i64 0, i64 65}
!9 = !{i64 2152750415}
!10 = !{i64 2152751911}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148790632}
!13 = !{i64 2152753696}
!14 = !{i64 2152755436}
!15 = !{!"auto-init"}
!16 = !{i64 2152766542}
!17 = !{i64 2152768067}
!18 = !{i64 3572985, i64 3573068, i64 3573292, i64 3573512, i64 3573535}
!19 = !{i64 3577687, i64 3577711}
!20 = !{i64 2151130471}
!21 = !{i64 2152740119}
