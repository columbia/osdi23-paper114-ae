; ModuleID = 'kernel/dma/pool.c'
source_filename = "kernel/dma/pool.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall2.init\22, \22a\22\09\09"
module asm "__initcall__kmod_pool__261_222_dma_atomic_pool_init2:\09\09\09"
module asm ".long\09dma_atomic_pool_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)*, i8*, i8* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.workqueue_struct = type opaque
%struct.page = type { i64, %union.anon, %union.anon.60, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.62 = type { %struct.callback_head }
%union.anon.63 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.atomic_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.65 = type { %struct.kernfs_elem_dir }
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
%struct.io_tlb_mem = type { i64, i64, i64, i64, i32, %struct.spinlock, %struct.dentry*, i8, i8, i8, %struct.io_tlb_slot* }
%struct.io_tlb_slot = type { i64, i64, i32 }
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
%struct.nodemask_t = type { [1 x i64] }

@__setup_str_early_coherent_pool = internal constant [14 x i8] c"coherent_pool\00", section ".init.rodata", align 1
@__setup_early_coherent_pool = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__setup_str_early_coherent_pool, i32 0, i32 0), i32 (i8*)* @early_coherent_pool, i32 1 }, section ".init.setup", align 8
@__UNIQUE_ID___addressable_dma_atomic_pool_init262 = internal global i8* bitcast (i32 ()* @dma_atomic_pool_init to i8*), section ".discard.addressable", align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to get suitable pool for %s\0A\00", align 1
@atomic_pool_size = internal unnamed_addr global i64 0, align 8
@atomic_pool_work = internal global %struct.work_struct zeroinitializer, align 8
@atomic_pool_kernel = internal unnamed_addr global %struct.gen_pool* null, section ".data..ro_after_init", align 8
@atomic_pool_dma = internal unnamed_addr global %struct.gen_pool* null, section ".data..ro_after_init", align 8
@atomic_pool_dma32 = internal unnamed_addr global %struct.gen_pool* null, section ".data..ro_after_init", align 8
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8
@arm64_use_ng_mappings = external dso_local local_unnamed_addr global i8, align 1
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@pool_size_dma = internal unnamed_addr global i64 0, align 8
@pool_size_dma32 = internal unnamed_addr global i64 0, align 8
@pool_size_kernel = internal unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"\013DMA: failed to allocate %zu KiB %pGg pool for atomic allocation\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"\016DMA: preallocated %zu KiB %pGg pool for atomic allocations\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_dma_atomic_pool_init262 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_early_coherent_pool to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @early_coherent_pool(i8* noundef %p) #0 section ".init.text" {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %call = call i64 @memparse(i8* noundef %p, i8** noundef nonnull %p.addr) #12
  store i64 %call, i64* @atomic_pool_size, align 8
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @dma_atomic_pool_init() #0 section ".init.text" {
entry:
  %0 = load i64, i64* @atomic_pool_size, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @totalram_pages() #13
  %div = lshr i64 %call, 13
  %cmp = icmp ult i64 %div, 1024
  %cond = select i1 %cmp, i64 %div, i64 1024
  %shl = shl nuw nsw i64 %cond, 12
  %cmp2 = icmp ugt i64 %shl, 131072
  %cond6 = select i1 %cmp2, i64 %shl, i64 131072
  store i64 %cond6, i64* @atomic_pool_size, align 8
  br label %do.body

do.body:                                          ; preds = %entry, %if.then
  %1 = phi i64 [ %0, %entry ], [ %cond6, %if.then ]
  store i64 68719476704, i64* getelementptr inbounds (%struct.work_struct, %struct.work_struct* @atomic_pool_work, i64 0, i32 0, i32 0), align 8
  call fastcc void @INIT_LIST_HEAD() #13
  store void (%struct.work_struct*)* @atomic_pool_work_fn, void (%struct.work_struct*)** getelementptr inbounds (%struct.work_struct, %struct.work_struct* @atomic_pool_work, i64 0, i32 2), align 8
  %call7 = call fastcc %struct.gen_pool* @__dma_atomic_pool_init(i64 noundef %1, i32 noundef 3264) #14
  store %struct.gen_pool* %call7, %struct.gen_pool** @atomic_pool_kernel, align 8
  %tobool8.not = icmp eq %struct.gen_pool* %call7, null
  %2 = load i64, i64* @atomic_pool_size, align 8
  %call11 = call fastcc %struct.gen_pool* @__dma_atomic_pool_init(i64 noundef %2, i32 noundef 3265) #14
  store %struct.gen_pool* %call11, %struct.gen_pool** @atomic_pool_dma, align 8
  %tobool12.not = icmp eq %struct.gen_pool* %call11, null
  %3 = load i64, i64* @atomic_pool_size, align 8
  %call15 = call fastcc %struct.gen_pool* @__dma_atomic_pool_init(i64 noundef %3, i32 noundef 3268) #14
  store %struct.gen_pool* %call15, %struct.gen_pool** @atomic_pool_dma32, align 8
  %tobool16.not = icmp eq %struct.gen_pool* %call15, null
  %4 = select i1 %tobool16.not, i1 true, i1 %tobool12.not
  %5 = select i1 %4, i1 true, i1 %tobool8.not
  %ret.2 = select i1 %5, i32 -12, i32 0
  ret i32 %ret.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @dma_alloc_from_pool(%struct.device* noundef %dev, i64 noundef %size, i8** nocapture noundef writeonly %cpu_addr, i32 noundef %gfp, i1 (%struct.device*, i64, i64)* noundef %phys_addr_ok) local_unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %pool.0 = phi %struct.gen_pool* [ null, %entry ], [ %call, %while.body ]
  %call = call fastcc %struct.gen_pool* @dma_guess_pool(%struct.gen_pool* noundef %pool.0, i32 noundef %gfp) #13
  %tobool.not = icmp eq %struct.gen_pool* %call, null
  br i1 %tobool.not, label %do.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call1 = call fastcc %struct.page* @__dma_alloc_from_pool(%struct.device* noundef %dev, i64 noundef %size, %struct.gen_pool* noundef nonnull %call, i8** noundef %cpu_addr, i1 (%struct.device*, i64, i64)* noundef %phys_addr_ok) #13
  %tobool2.not = icmp eq %struct.page* %call1, null
  br i1 %tobool2.not, label %while.cond, label %cleanup

do.end:                                           ; preds = %while.cond
  %call8 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #13
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef %call8) #12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/pool.c\22; .popsection; .long 14472b - 14470b; .short 279; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !8
  br label %cleanup

cleanup:                                          ; preds = %while.body, %do.end
  %retval.0 = phi %struct.page* [ null, %do.end ], [ %call1, %while.body ]
  ret %struct.page* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.gen_pool* @dma_guess_pool(%struct.gen_pool* noundef readnone %prev, i32 noundef %gfp) unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.gen_pool* %prev, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %and = and i32 %gfp, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %0 = load %struct.gen_pool*, %struct.gen_pool** @atomic_pool_dma32, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %and2 = and i32 %gfp, 1
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load %struct.gen_pool*, %struct.gen_pool** @atomic_pool_dma, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %2 = load %struct.gen_pool*, %struct.gen_pool** @atomic_pool_kernel, align 8
  br label %return

if.end6:                                          ; preds = %entry
  %3 = load %struct.gen_pool*, %struct.gen_pool** @atomic_pool_kernel, align 8
  %cmp7 = icmp eq %struct.gen_pool* %3, %prev
  %4 = load %struct.gen_pool*, %struct.gen_pool** @atomic_pool_dma32, align 8
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %tobool9.not = icmp eq %struct.gen_pool* %4, null
  %5 = load %struct.gen_pool*, %struct.gen_pool** @atomic_pool_dma, align 8
  %cond = select i1 %tobool9.not, %struct.gen_pool* %5, %struct.gen_pool* %4
  br label %return

if.end10:                                         ; preds = %if.end6
  %cmp11 = icmp eq %struct.gen_pool* %4, %prev
  %6 = load %struct.gen_pool*, %struct.gen_pool** @atomic_pool_dma, align 8
  %spec.select = select i1 %cmp11, %struct.gen_pool* %6, %struct.gen_pool* null
  br label %return

return:                                           ; preds = %if.end10, %if.then8, %if.end5, %if.then4, %if.then1
  %retval.0 = phi %struct.gen_pool* [ %0, %if.then1 ], [ %1, %if.then4 ], [ %2, %if.end5 ], [ %cond, %if.then8 ], [ %spec.select, %if.end10 ]
  ret %struct.gen_pool* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__dma_alloc_from_pool(%struct.device* noundef %dev, i64 noundef %size, %struct.gen_pool* noundef %pool, i8** nocapture noundef writeonly %cpu_addr, i1 (%struct.device*, i64, i64)* noundef readonly %phys_addr_ok) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @gen_pool_alloc(%struct.gen_pool* noundef %pool, i64 noundef %size) #13
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i64 @gen_pool_virt_to_phys(%struct.gen_pool* noundef %pool, i64 noundef %call) #12
  %tobool2.not = icmp eq i1 (%struct.device*, i64, i64)* %phys_addr_ok, null
  br i1 %tobool2.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i1 %phys_addr_ok(%struct.device* noundef %dev, i64 noundef %call1, i64 noundef %size) #12
  br i1 %call3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  call fastcc void @gen_pool_free(%struct.gen_pool* noundef %pool, i64 noundef %call, i64 noundef %size) #13
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %call6 = call i64 @gen_pool_avail(%struct.gen_pool* noundef %pool) #12
  %0 = load i64, i64* @atomic_pool_size, align 8
  %cmp = icmp ult i64 %call6, %0
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  call fastcc void @schedule_work() #13
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %1 = inttoptr i64 %call to i8*
  store i8* %1, i8** %cpu_addr, align 8
  %call10 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef %size) #12
  %2 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %2, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %shr11 = lshr i64 %call1, 12
  %add.ptr12 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9, %if.then4
  %retval.0 = phi %struct.page* [ %add.ptr12, %if.end9 ], [ null, %if.then4 ], [ null, %entry ]
  ret %struct.page* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #2 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @dma_free_from_pool(%struct.device* nocapture noundef readnone %dev, i8* noundef %start, i64 noundef %size) local_unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %start to i64
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %pool.0 = phi %struct.gen_pool* [ null, %entry ], [ %call, %while.body ]
  %call = call fastcc %struct.gen_pool* @dma_guess_pool(%struct.gen_pool* noundef %pool.0, i32 noundef 0) #13
  %tobool.not = icmp eq %struct.gen_pool* %call, null
  br i1 %tobool.not, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond
  %call1 = call i1 @gen_pool_has_addr(%struct.gen_pool* noundef nonnull %call, i64 noundef %0, i64 noundef %size) #12
  br i1 %call1, label %if.end, label %while.cond

if.end:                                           ; preds = %while.body
  call fastcc void @gen_pool_free(%struct.gen_pool* noundef nonnull %call, i64 noundef %0, i64 noundef %size) #13
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.end
  %1 = xor i1 %tobool.not, true
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @gen_pool_has_addr(%struct.gen_pool* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gen_pool_free(%struct.gen_pool* noundef %pool, i64 noundef %addr, i64 noundef %size) unnamed_addr #1 {
entry:
  call void @gen_pool_free_owner(%struct.gen_pool* noundef %pool, i64 noundef %addr, i64 noundef %size, i8** noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(i8* noundef, i8** noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @totalram_pages() unnamed_addr #4 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @_totalram_pages, i64 0, i32 0), align 8
  ret i64 %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD() unnamed_addr #5 {
entry:
  store volatile %struct.list_head* getelementptr inbounds (%struct.work_struct, %struct.work_struct* @atomic_pool_work, i64 0, i32 1), %struct.list_head** getelementptr inbounds (%struct.work_struct, %struct.work_struct* @atomic_pool_work, i64 0, i32 1, i32 0), align 8
  store %struct.list_head* getelementptr inbounds (%struct.work_struct, %struct.work_struct* @atomic_pool_work, i64 0, i32 1), %struct.list_head** getelementptr inbounds (%struct.work_struct, %struct.work_struct* @atomic_pool_work, i64 0, i32 1, i32 1), align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @atomic_pool_work_fn(%struct.work_struct* nocapture noundef readnone %work) #1 {
entry:
  %0 = load %struct.gen_pool*, %struct.gen_pool** @atomic_pool_dma, align 8
  call fastcc void @atomic_pool_resize(%struct.gen_pool* noundef %0, i32 noundef 3265) #13
  %1 = load %struct.gen_pool*, %struct.gen_pool** @atomic_pool_dma32, align 8
  call fastcc void @atomic_pool_resize(%struct.gen_pool* noundef %1, i32 noundef 3268) #13
  %2 = load %struct.gen_pool*, %struct.gen_pool** @atomic_pool_kernel, align 8
  call fastcc void @atomic_pool_resize(%struct.gen_pool* noundef %2, i32 noundef 3264) #13
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc %struct.gen_pool* @__dma_atomic_pool_init(i64 noundef %pool_size, i32 noundef %gfp) unnamed_addr #0 section ".init.text" {
entry:
  %gfp.addr = alloca i32, align 4
  store i32 %gfp, i32* %gfp.addr, align 4
  %call = call %struct.gen_pool* @gen_pool_create(i32 noundef 12, i32 noundef -1) #12
  %tobool.not = icmp eq %struct.gen_pool* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @gen_pool_set_algo(%struct.gen_pool* noundef nonnull %call, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef nonnull @gen_pool_first_fit_order_align, i8* noundef null) #12
  %call1 = call fastcc i32 @atomic_pool_expand(%struct.gen_pool* noundef nonnull %call, i64 noundef %pool_size, i32 noundef %gfp) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @gen_pool_destroy(%struct.gen_pool* noundef nonnull %call) #12
  br label %cleanup.sink.split

do.end8:                                          ; preds = %if.end
  %call10 = call i64 @gen_pool_size(%struct.gen_pool* noundef nonnull %call) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %do.end8
  %call10.sink = phi i64 [ %call10, %do.end8 ], [ %pool_size, %if.then3 ]
  %.sink = phi i8* [ getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), %do.end8 ], [ getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), %if.then3 ]
  %retval.0.ph = phi %struct.gen_pool* [ %call, %do.end8 ], [ null, %if.then3 ]
  %shr11 = lshr i64 %call10.sink, 10
  %call12 = call i32 (i8*, ...) @_printk(i8* noundef %.sink, i64 noundef %shr11, i32* noundef nonnull %gfp.addr) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi %struct.gen_pool* [ null, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret %struct.gen_pool* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @atomic_pool_resize(%struct.gen_pool* noundef %pool, i32 noundef %gfp) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.gen_pool* %pool, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i64 @gen_pool_avail(%struct.gen_pool* noundef nonnull %pool) #12
  %0 = load i64, i64* @atomic_pool_size, align 8
  %cmp = icmp ult i64 %call, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call1 = call i64 @gen_pool_size(%struct.gen_pool* noundef nonnull %pool) #12
  %call2 = call fastcc i32 @atomic_pool_expand(%struct.gen_pool* noundef nonnull %pool, i64 noundef %call1, i32 noundef %gfp) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gen_pool_avail(%struct.gen_pool* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @atomic_pool_expand(%struct.gen_pool* noundef %pool, i64 noundef %pool_size, i32 noundef %gfp) unnamed_addr #1 {
entry:
  %dec.i = add i64 %pool_size, -1
  %shr.i = lshr i64 %dec.i, 12
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %0 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #15, !range !9
  %1 = trunc i64 %0 to i32
  br i1 %cmp.i.i, label %get_order.exit.thread, label %get_order.exit

get_order.exit:                                   ; preds = %entry
  %conv.i.i = sub nuw nsw i32 64, %1
  %cmp = icmp ugt i32 %1, 54
  br i1 %cmp, label %get_order.exit.thread, label %do.body.preheader

get_order.exit.thread:                            ; preds = %entry, %get_order.exit
  %retval.0.i145 = phi i32 [ %conv.i.i, %get_order.exit ], [ 0, %entry ]
  br label %do.body.preheader

do.body.preheader:                                ; preds = %get_order.exit, %get_order.exit.thread
  %order.0.ph = phi i32 [ 10, %get_order.exit ], [ %retval.0.i145, %get_order.exit.thread ]
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %land.rhs
  %order.0 = phi i32 [ %dec, %land.rhs ], [ %order.0.ph, %do.body.preheader ]
  %call6 = call fastcc %struct.page* @alloc_pages(i32 noundef %gfp, i32 noundef %order.0) #13
  %tobool8.not = icmp eq %struct.page* %call6, null
  br i1 %tobool8.not, label %land.rhs, label %if.end13

land.rhs:                                         ; preds = %do.body
  %dec = add i32 %order.0, -1
  %cmp9.not = icmp eq i32 %order.0, 0
  br i1 %cmp9.not, label %cleanup, label %do.body

if.end13:                                         ; preds = %do.body
  %add.le = add i32 %order.0, 12
  %shl.le = shl nuw i32 1, %add.le
  %conv.le = sext i32 %shl.le to i64
  call void @arch_dma_prep_coherent(%struct.page* noundef nonnull %call6, i64 noundef %conv.le) #12
  %2 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !10
  %tobool16.not = icmp eq i8 %2, 0
  %or24 = select i1 %tobool16.not, i64 29273397577910027, i64 29273397577912075
  %3 = call i8* @llvm.returnaddress(i32 0)
  %4 = ptrtoint i8* %3 to i64
  %and25 = and i64 %4, 36028797018963968
  %tobool26.not = icmp eq i64 %and25, 0
  %5 = load i64, i64* @vabits_actual, align 8
  %shl34.neg = shl nsw i64 -1, %5
  %or32 = or i64 %shl34.neg, %4
  %and37 = and i64 %shl34.neg, 36028797018963967
  %neg = xor i64 %and37, -1
  %and39 = and i64 %neg, %4
  %cond41 = select i1 %tobool26.not, i64 %and39, i64 %or32
  %6 = inttoptr i64 %cond41 to i8*
  %call42 = call i8* @dma_common_contiguous_remap(%struct.page* noundef nonnull %call6, i64 noundef %conv.le, i64 %or24, i8* noundef %6) #12
  %tobool43.not = icmp eq i8* %call42, null
  br i1 %tobool43.not, label %free_page, label %if.end45

if.end45:                                         ; preds = %if.end13
  %7 = ptrtoint %struct.page* %call6 to i64
  %8 = ptrtoint i8* %call42 to i64
  %9 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %9, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %7, %sub.ptr.rhs.cast
  %shl56 = shl i64 %sub.ptr.sub, 6
  %call57 = call fastcc i32 @gen_pool_add_virt(%struct.gen_pool* noundef %pool, i64 noundef %8, i64 noundef %shl56, i64 noundef %conv.le) #13
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %encrypt_mapping

if.end60:                                         ; preds = %if.end45
  call fastcc void @dma_atomic_pool_size_add(i32 noundef %gfp, i64 noundef %conv.le) #13
  br label %cleanup

encrypt_mapping:                                  ; preds = %if.end45
  call void @dma_common_free_remap(i8* noundef nonnull %call42, i64 noundef %conv.le) #12
  br label %free_page

free_page:                                        ; preds = %if.end13, %encrypt_mapping
  %ret.1 = phi i32 [ 0, %encrypt_mapping ], [ -12, %if.end13 ]
  call void @__free_pages(%struct.page* noundef nonnull %call6, i32 noundef %order.0) #12
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %free_page, %if.end60
  %retval.0 = phi i32 [ 0, %if.end60 ], [ %ret.1, %free_page ], [ -12, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gen_pool_size(%struct.gen_pool* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages(i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #1 {
entry:
  call fastcc void @numa_node_id() #13
  %call1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask, i32 noundef %order) #13
  ret %struct.page* %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_dma_prep_coherent(%struct.page* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @dma_common_contiguous_remap(%struct.page* noundef, i64 noundef, i64, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gen_pool_add_virt(%struct.gen_pool* noundef %pool, i64 noundef %addr, i64 noundef %phys, i64 noundef %size) unnamed_addr #1 {
entry:
  %call = call i32 @gen_pool_add_owner(%struct.gen_pool* noundef %pool, i64 noundef %addr, i64 noundef %phys, i64 noundef %size, i32 noundef -1, i8* noundef null) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @dma_atomic_pool_size_add(i32 noundef %gfp, i64 noundef %size) unnamed_addr #7 {
entry:
  %and = and i32 %gfp, 1
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %gfp, 4
  %tobool2.not = icmp eq i32 %and1, 0
  %pool_size_kernel.pool_size_dma32 = select i1 %tobool2.not, i64* @pool_size_kernel, i64* @pool_size_dma32
  %pool_size_dma32.sink11 = select i1 %tobool.not, i64* %pool_size_kernel.pool_size_dma32, i64* @pool_size_dma
  %0 = load i64, i64* %pool_size_dma32.sink11, align 8
  %add4 = add i64 %0, %size
  store i64 %add4, i64* %pool_size_dma32.sink11, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_common_free_remap(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(%struct.page* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #1 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef 0, i32 noundef %gfp_mask, i32 noundef %order) #13
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #9 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #1 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef %nid, %struct.nodemask_t* noundef null) #12
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #9 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #17, !srcloc !11
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(%struct.gen_pool* noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.gen_pool* @gen_pool_create(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_set_algo(%struct.gen_pool* noundef, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gen_pool_first_fit_order_align(i64* noundef, i64 noundef, i64 noundef, i32 noundef, i8* noundef, %struct.gen_pool* noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_destroy(%struct.gen_pool* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @gen_pool_alloc(%struct.gen_pool* noundef %pool, i64 noundef %size) unnamed_addr #1 {
entry:
  %algo = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 3
  %0 = load i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)*, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)** %algo, align 8
  %data = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %pool, i64 0, i32 4
  %1 = load i8*, i8** %data, align 8
  %call = call fastcc i64 @gen_pool_alloc_algo(%struct.gen_pool* noundef %pool, i64 noundef %size, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef %0, i8* noundef %1) #13
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gen_pool_virt_to_phys(%struct.gen_pool* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work() unnamed_addr #1 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @gen_pool_alloc_algo(%struct.gen_pool* noundef %pool, i64 noundef %size, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef %algo, i8* noundef %data) unnamed_addr #1 {
entry:
  %call = call i64 @gen_pool_alloc_algo_owner(%struct.gen_pool* noundef %pool, i64 noundef %size, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef %algo, i8* noundef %data, i8** noundef null) #12
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gen_pool_alloc_algo_owner(%struct.gen_pool* noundef, i64 noundef, i64 (i64*, i64, i64, i32, i8*, %struct.gen_pool*, i64)* noundef, i8* noundef, i8** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq) unnamed_addr #1 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef nonnull @atomic_pool_work) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #2 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(%struct.gen_pool* noundef, i64 noundef, i64 noundef, i8** noundef) local_unnamed_addr #3

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree nounwind readonly }
attributes #11 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { cold nobuiltin "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind readonly }

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
!8 = !{i64 2153182208}
!9 = !{i64 0, i64 65}
!10 = !{i8 0, i8 2}
!11 = !{i64 2149128000, i64 2149128047, i64 2149128053, i64 2149128090, i64 2149128108, i64 2149129035, i64 2149129083, i64 2149129131, i64 2149129194, i64 2149129243, i64 2149128186, i64 2149128211, i64 2149128237, i64 2149128243, i64 2149128280, i64 2149128286, i64 2149128336, i64 2149128382, i64 2149128415}
