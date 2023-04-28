; ModuleID = 'kernel/resource.c'
source_filename = "kernel/resource.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_resource__251_145_ioresources_init6:\09\09\09"
module asm ".long\09ioresources_init - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall5.init\22, \22a\22\09\09"
module asm "__initcall__kmod_resource__263_1915_iomem_init_inode5:\09\09\09"
module asm ".long\09iomem_init_inode - .\09"
module asm ".previous\09\09\09\09\09"

%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon, %struct.qspinlock }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.54, %struct.list_head, %struct.list_head, %union.anon.55 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.22, i8* }
%union.anon.22 = type { i64 }
%struct.lockref = type { %union.anon.24 }
%union.anon.24 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.54 = type { %struct.list_head }
%union.anon.55 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.21, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.56 }
%union.anon.56 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.18, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.52, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.29 }
%union.anon.29 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.37, %union.anon.38, i32 }
%struct.request_queue = type opaque
%union.anon.37 = type { %struct.list_head }
%union.anon.38 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.51, i32, [12 x i8] }
%union.anon.51 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.52 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.4, %union.anon.61, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.61 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.53, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.53 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.18 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.19, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.20, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.19 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.20 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.27 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.27 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.26, i64, i32 }
%union.anon.26 = type { i8* }
%struct.net = type opaque
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.28, i32 }
%union.anon.28 = type { %struct.kuid_t }
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
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.63 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.proc_dir_entry = type opaque
%struct.resource_constraint = type { i64, i64, i64, i64 (i8*, %struct.resource*, i64, i64)*, i8* }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.67, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.67 = type { %struct.kernfs_elem_dir }
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
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
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
%struct.region_devres = type { %struct.resource*, i64, i64 }
%struct.resource_entry = type { %struct.list_head, %struct.resource*, i64, %struct.resource }
%struct.pseudo_fs_context = type { %struct.super_operations*, %struct.xattr_handler**, %struct.dentry_operations*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"PCI IO\00", align 1
@ioport_resource = dso_local global %struct.resource { i64 0, i64 16777215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 256, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"PCI mem\00", align 1
@iomem_resource = dso_local global %struct.resource { i64 0, i64 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 512, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, align 8
@__UNIQUE_ID___addressable_ioresources_init252 = internal global i8* bitcast (i32 ()* @ioresources_init to i8*), section ".discard.addressable", align 8
@resource_lock = internal global %struct.rwlock_t zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Expanded resource %s due to conflict with %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"\013resource: requested range [0x%llx-0x%llx] not in root %pr\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\013resource: fixing request to [0x%llx-0x%llx]\0A\00", align 1
@iomem_inode = internal global %struct.inode* null, align 8
@muxed_resource_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @muxed_resource_wait to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @muxed_resource_wait to i8*), i64 8) to %struct.list_head*) } }, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"\014Trying to free nonexistent resource <%016llx-%016llx>\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"devm_resource_release\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"resource collision: %pR conflicts with %s %pR\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"devm_region_release\00", align 1
@__setup_str_reserve_setup = internal constant [9 x i8] c"reserve=\00", section ".init.rodata", align 1
@__setup_reserve_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__setup_str_reserve_setup, i32 0, i32 0), i32 (i8*)* @reserve_setup, i32 0 }, section ".init.setup", align 8
@.str.9 = private unnamed_addr constant [91 x i8] c"\014resource sanity check: requesting [mem %#010llx-%#010llx], which spans more than %s %pR\0A\00", align 1
@strict_iomem_checks = internal unnamed_addr global i1 false, align 4
@__UNIQUE_ID___addressable_iomem_init_inode264 = internal global i8* bitcast (i32 ()* @iomem_init_inode to i8*), section ".discard.addressable", align 8
@__setup_str_strict_iomem = internal constant [7 x i8] c"iomem=\00", section ".init.rodata", align 1
@__setup_strict_iomem = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__setup_str_strict_iomem, i32 0, i32 0), i32 (i8*)* @strict_iomem, i32 0 }, section ".init.setup", align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"ioports\00", align 1
@resource_op = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @r_start, void (%struct.seq_file*, i8*)* @r_stop, i8* (%struct.seq_file*, i8*, i64*)* @r_next, i32 (%struct.seq_file*, i8*)* @r_show }, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"iomem\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%*s%0*llx-%0*llx : %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"<BAD>\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"\017release child resource %pR\0A\00", align 1
@bootmem_resource_lock = internal global %struct.spinlock zeroinitializer, align 4
@bootmem_resource_free = internal unnamed_addr global %struct.resource* null, align 8
@.str.16 = private unnamed_addr constant [59 x i8] c"\014resource: Unaddressable device %s %pR conflicts with %pR\00", align 1
@reserve_setup.reserved = internal unnamed_addr global i32 0, align 4
@reserve_setup.reserve = internal global [4 x %struct.resource] zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@iomem_init_inode.iomem_vfs_mount = internal global %struct.vfsmount* null, align 8
@iomem_init_inode.iomem_fs_cnt = internal global i32 0, align 4
@iomem_fs_type = internal global %struct.file_system_type { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 (%struct.fs_context*)* @iomem_fs_init_fs_context, %struct.fs_parameter_spec* null, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* null, void (%struct.super_block*)* @kill_anon_super, %struct.module* null, %struct.file_system_type* null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8
@.str.18 = private unnamed_addr constant [54 x i8] c"\013resource: Cannot mount iomem pseudo filesystem: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"\013resource: Cannot allocate inode for iomem: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"relaxed\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@llvm.compiler.used = appending global [4 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_iomem_init_inode264 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_ioresources_init252 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_reserve_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_strict_iomem to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @ioresources_init() #0 section ".init.text" {
entry:
  %call = call %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i16 noundef 0, %struct.proc_dir_entry* noundef null, %struct.seq_operations* noundef nonnull @resource_op, i32 noundef 0, i8* noundef bitcast (%struct.resource* @ioport_resource to i8*)) #15
  %call1 = call %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i16 noundef 0, %struct.proc_dir_entry* noundef null, %struct.seq_operations* noundef nonnull @resource_op, i32 noundef 0, i8* noundef bitcast (%struct.resource* @iomem_resource to i8*)) #15
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @release_child_resources(%struct.resource* nocapture noundef %r) local_unnamed_addr #1 {
entry:
  call fastcc void @__raw_write_lock() #16
  call fastcc void @__release_child_resources(%struct.resource* noundef %r) #16
  call fastcc void @__raw_write_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !7
  call fastcc void @queued_write_lock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__release_child_resources(%struct.resource* nocapture noundef %r) unnamed_addr #1 {
entry:
  %child = getelementptr inbounds %struct.resource, %struct.resource* %r, i64 0, i32 7
  %0 = load %struct.resource*, %struct.resource** %child, align 8
  store %struct.resource* null, %struct.resource** %child, align 8
  %tobool.not17 = icmp eq %struct.resource* %0, null
  br i1 %tobool.not17, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %p.018 = phi %struct.resource* [ %1, %while.body ], [ %0, %entry ]
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %p.018, i64 0, i32 6
  %1 = load %struct.resource*, %struct.resource** %sibling, align 8
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %p.018, i64 0, i32 5
  store %struct.resource* null, %struct.resource** %parent, align 8
  store %struct.resource* null, %struct.resource** %sibling, align 8
  call fastcc void @__release_child_resources(%struct.resource* noundef nonnull %p.018) #16
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), %struct.resource* noundef nonnull %p.018) #18
  %call4 = call fastcc i64 @resource_size(%struct.resource* noundef nonnull %p.018) #16
  %start = getelementptr inbounds %struct.resource, %struct.resource* %p.018, i64 0, i32 0
  store i64 0, i64* %start, align 8
  %sub = add i64 %call4, -1
  %end = getelementptr inbounds %struct.resource, %struct.resource* %p.018, i64 0, i32 1
  store i64 %sub, i64* %end, align 8
  %tobool.not = icmp eq %struct.resource* %1, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_unlock() unnamed_addr #1 {
entry:
  call fastcc void @queued_write_unlock() #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.resource* @request_resource_conflict(%struct.resource* noundef %root, %struct.resource* noundef %new) local_unnamed_addr #1 {
entry:
  call fastcc void @__raw_write_lock() #16
  %call = call fastcc %struct.resource* @__request_resource(%struct.resource* noundef %root, %struct.resource* noundef %new) #16
  call fastcc void @__raw_write_unlock() #16
  ret %struct.resource* %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc %struct.resource* @__request_resource(%struct.resource* noundef %root, %struct.resource* noundef %new) unnamed_addr #3 {
entry:
  %start1 = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 0
  %0 = load i64, i64* %start1, align 8
  %end2 = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 1
  %1 = load i64, i64* %end2, align 8
  %cmp = icmp ult i64 %1, %0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %start3 = getelementptr inbounds %struct.resource, %struct.resource* %root, i64 0, i32 0
  %2 = load i64, i64* %start3, align 8
  %cmp4 = icmp ult i64 %0, %2
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %end7 = getelementptr inbounds %struct.resource, %struct.resource* %root, i64 0, i32 1
  %3 = load i64, i64* %end7, align 8
  %cmp8 = icmp ugt i64 %1, %3
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %child = getelementptr inbounds %struct.resource, %struct.resource* %root, i64 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %if.end14, %if.end10
  %p.0 = phi %struct.resource** [ %child, %if.end10 ], [ %sibling15, %if.end14 ]
  %4 = load %struct.resource*, %struct.resource** %p.0, align 8
  %tobool.not = icmp eq %struct.resource* %4, null
  br i1 %tobool.not, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %start11 = getelementptr inbounds %struct.resource, %struct.resource* %4, i64 0, i32 0
  %5 = load i64, i64* %start11, align 8
  %cmp12 = icmp ugt i64 %5, %1
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %for.cond
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 6
  store %struct.resource* %4, %struct.resource** %sibling, align 8
  store %struct.resource* %new, %struct.resource** %p.0, align 8
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 5
  store %struct.resource* %root, %struct.resource** %parent, align 8
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %sibling15 = getelementptr inbounds %struct.resource, %struct.resource* %4, i64 0, i32 6
  %end16 = getelementptr inbounds %struct.resource, %struct.resource* %4, i64 0, i32 1
  %6 = load i64, i64* %end16, align 8
  %cmp17 = icmp ult i64 %6, %0
  br i1 %cmp17, label %for.cond, label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end6, %if.end, %entry, %if.then13
  %retval.0 = phi %struct.resource* [ null, %if.then13 ], [ %root, %entry ], [ %root, %if.end ], [ %root, %if.end6 ], [ %4, %if.end14 ]
  ret %struct.resource* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @request_resource(%struct.resource* noundef %root, %struct.resource* noundef %new) local_unnamed_addr #1 {
entry:
  %call = call %struct.resource* @request_resource_conflict(%struct.resource* noundef %root, %struct.resource* noundef %new) #16
  %tobool.not = icmp eq %struct.resource* %call, null
  %cond = select i1 %tobool.not, i32 0, i32 -16
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @release_resource(%struct.resource* noundef %old) local_unnamed_addr #1 {
entry:
  call fastcc void @__raw_write_lock() #16
  %call = call fastcc i32 @__release_resource(%struct.resource* noundef %old, i1 noundef true) #16
  call fastcc void @__raw_write_unlock() #16
  ret i32 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i32 @__release_resource(%struct.resource* noundef %old, i1 noundef %release_child) unnamed_addr #3 {
entry:
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %old, i64 0, i32 5
  %0 = load %struct.resource*, %struct.resource** %parent, align 8
  %child = getelementptr inbounds %struct.resource, %struct.resource* %0, i64 0, i32 7
  %1 = load %struct.resource*, %struct.resource** %child, align 8
  %tobool.not48 = icmp eq %struct.resource* %1, null
  br i1 %tobool.not48, label %cleanup, label %if.end.preheader

if.end.preheader:                                 ; preds = %entry
  %cmp54 = icmp eq %struct.resource* %1, %old
  br i1 %cmp54, label %if.then1, label %if.end20

if.end:                                           ; preds = %if.end20
  %cmp = icmp eq %struct.resource* %9, %old
  br i1 %cmp, label %if.then1.loopexit, label %if.end20

if.then1.loopexit:                                ; preds = %if.end
  %sibling21.le = getelementptr inbounds %struct.resource, %struct.resource* %8, i64 0, i32 6
  br label %if.then1

if.then1:                                         ; preds = %if.then1.loopexit, %if.end.preheader
  %p.049.lcssa = phi %struct.resource** [ %child, %if.end.preheader ], [ %sibling21.le, %if.then1.loopexit ]
  br i1 %release_child, label %if.end18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then1
  %child3 = getelementptr inbounds %struct.resource, %struct.resource* %old, i64 0, i32 7
  %2 = load %struct.resource*, %struct.resource** %child3, align 8
  %tobool4.not = icmp eq %struct.resource* %2, null
  br i1 %tobool4.not, label %if.end18, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %lor.lhs.false
  %parent955 = getelementptr inbounds %struct.resource, %struct.resource* %2, i64 0, i32 5
  store %struct.resource* %0, %struct.resource** %parent955, align 8
  %sibling1056 = getelementptr inbounds %struct.resource, %struct.resource* %2, i64 0, i32 6
  %3 = load %struct.resource*, %struct.resource** %sibling1056, align 8
  %tobool11.not57 = icmp eq %struct.resource* %3, null
  br i1 %tobool11.not57, label %for.end, label %for.cond7.for.cond7_crit_edge

for.cond7.for.cond7_crit_edge:                    ; preds = %for.cond7.preheader, %for.cond7.for.cond7_crit_edge
  %4 = phi %struct.resource* [ %5, %for.cond7.for.cond7_crit_edge ], [ %3, %for.cond7.preheader ]
  %.pre = load %struct.resource*, %struct.resource** %parent, align 8
  %parent9 = getelementptr inbounds %struct.resource, %struct.resource* %4, i64 0, i32 5
  store %struct.resource* %.pre, %struct.resource** %parent9, align 8
  %sibling10 = getelementptr inbounds %struct.resource, %struct.resource* %4, i64 0, i32 6
  %5 = load %struct.resource*, %struct.resource** %sibling10, align 8
  %tobool11.not = icmp eq %struct.resource* %5, null
  br i1 %tobool11.not, label %for.end, label %for.cond7.for.cond7_crit_edge

for.end:                                          ; preds = %for.cond7.for.cond7_crit_edge, %for.cond7.preheader
  %chd.0.lcssa = phi %struct.resource* [ %2, %for.cond7.preheader ], [ %4, %for.cond7.for.cond7_crit_edge ]
  %sibling10.le = getelementptr inbounds %struct.resource, %struct.resource* %chd.0.lcssa, i64 0, i32 6
  %6 = load %struct.resource*, %struct.resource** %child3, align 8
  store %struct.resource* %6, %struct.resource** %p.049.lcssa, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then1, %lor.lhs.false, %for.end
  %sibling10.le.sink = phi %struct.resource** [ %sibling10.le, %for.end ], [ %p.049.lcssa, %lor.lhs.false ], [ %p.049.lcssa, %if.then1 ]
  %sibling16 = getelementptr inbounds %struct.resource, %struct.resource* %old, i64 0, i32 6
  %7 = load %struct.resource*, %struct.resource** %sibling16, align 8
  store %struct.resource* %7, %struct.resource** %sibling10.le.sink, align 8
  store %struct.resource* null, %struct.resource** %parent, align 8
  br label %cleanup

if.end20:                                         ; preds = %if.end.preheader, %if.end
  %8 = phi %struct.resource* [ %9, %if.end ], [ %1, %if.end.preheader ]
  %sibling21 = getelementptr inbounds %struct.resource, %struct.resource* %8, i64 0, i32 6
  %9 = load %struct.resource*, %struct.resource** %sibling21, align 8
  %tobool.not = icmp eq %struct.resource* %9, null
  br i1 %tobool.not, label %cleanup, label %if.end

cleanup:                                          ; preds = %if.end20, %entry, %if.end18
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %entry ], [ -22, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @walk_iomem_res_desc(i64 noundef %desc, i64 noundef %flags, i64 noundef %start, i64 noundef %end, i8* noundef %arg, i32 (%struct.resource*, i8*)* nocapture noundef readonly %func) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__walk_iomem_res_desc(i64 noundef %start, i64 noundef %end, i64 noundef %flags, i64 noundef %desc, i8* noundef %arg, i32 (%struct.resource*, i8*)* noundef %func) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__walk_iomem_res_desc(i64 noundef %start, i64 noundef %end, i64 noundef %flags, i64 noundef %desc, i8* noundef %arg, i32 (%struct.resource*, i8*)* nocapture noundef readonly %func) unnamed_addr #1 {
entry:
  %res = alloca %struct.resource, align 8
  %0 = bitcast %struct.resource* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !9
  %cmp8 = icmp ult i64 %start, %end
  br i1 %cmp8, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %end3 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  %call13 = call fastcc i32 @find_next_iomem_res(i64 noundef %start, i64 noundef %end, i64 noundef %flags, i64 noundef %desc, %struct.resource* noundef nonnull %res) #16
  %tobool.not14 = icmp eq i32 %call13, 0
  br i1 %tobool.not14, label %while.body, label %while.end

land.rhs:                                         ; preds = %if.end
  %call = call fastcc i32 @find_next_iomem_res(i64 noundef %add, i64 noundef %end, i64 noundef %flags, i64 noundef %desc, %struct.resource* noundef nonnull %res) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs.lr.ph, %land.rhs
  %call1 = call i32 %func(%struct.resource* noundef nonnull %res, i8* noundef %arg) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %while.end

if.end:                                           ; preds = %while.body
  %1 = load i64, i64* %end3, align 8
  %add = add i64 %1, 1
  %cmp = icmp ult i64 %add, %end
  br i1 %cmp, label %land.rhs, label %while.end

while.end:                                        ; preds = %if.end, %while.body, %land.rhs, %land.rhs.lr.ph, %entry
  %ret.1 = phi i32 [ -22, %entry ], [ -22, %land.rhs.lr.ph ], [ 0, %land.rhs ], [ %call1, %while.body ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #17
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @walk_system_ram_res(i64 noundef %start, i64 noundef %end, i8* noundef %arg, i32 (%struct.resource*, i8*)* nocapture noundef readonly %func) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__walk_iomem_res_desc(i64 noundef %start, i64 noundef %end, i64 noundef 2164261376, i64 noundef 0, i8* noundef %arg, i32 (%struct.resource*, i8*)* noundef %func) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @walk_mem_res(i64 noundef %start, i64 noundef %end, i8* noundef %arg, i32 (%struct.resource*, i8*)* nocapture noundef readonly %func) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__walk_iomem_res_desc(i64 noundef %start, i64 noundef %end, i64 noundef 2147484160, i64 noundef 0, i8* noundef %arg, i32 (%struct.resource*, i8*)* noundef %func) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @walk_system_ram_range(i64 noundef %start_pfn, i64 noundef %nr_pages, i8* noundef %arg, i32 (i64, i64, i8*)* nocapture noundef readonly %func) local_unnamed_addr #1 {
entry:
  %res = alloca %struct.resource, align 8
  %0 = bitcast %struct.resource* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !9
  %shl = shl i64 %start_pfn, 12
  %add = add i64 %nr_pages, %start_pfn
  %shl1 = shl i64 %add, 12
  %sub = add i64 %shl1, -1
  %cmp29 = icmp ult i64 %shl, %sub
  br i1 %cmp29, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %start2 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %end5 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end13
  %ret.031 = phi i32 [ -22, %land.rhs.lr.ph ], [ 0, %if.end13 ]
  %start.030 = phi i64 [ %shl, %land.rhs.lr.ph ], [ %add15, %if.end13 ]
  %call = call fastcc i32 @find_next_iomem_res(i64 noundef %start.030, i64 noundef %sub, i64 noundef 2164261376, i64 noundef 0, %struct.resource* noundef nonnull %res) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %1 = load i64, i64* %start2, align 8
  %sub4 = add i64 %1, 4095
  %shr = lshr i64 %sub4, 12
  %2 = load i64, i64* %end5, align 8
  %add6 = add i64 %2, 1
  %shr7 = lshr i64 %add6, 12
  %cmp8 = icmp ugt i64 %shr7, %shr
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %sub9 = sub nsw i64 %shr7, %shr
  %call10 = call i32 %func(i64 noundef %shr, i64 noundef %sub9, i8* noundef %arg) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %ret.1 = phi i32 [ %call10, %if.then ], [ %ret.031, %while.body ]
  %tobool11.not = icmp eq i32 %ret.1, 0
  br i1 %tobool11.not, label %if.end13, label %while.end

if.end13:                                         ; preds = %if.end
  %3 = load i64, i64* %end5, align 8
  %add15 = add i64 %3, 1
  %cmp = icmp ult i64 %add15, %sub
  br i1 %cmp, label %land.rhs, label %while.end

while.end:                                        ; preds = %land.rhs, %if.end, %if.end13, %entry
  %ret.2 = phi i32 [ -22, %entry ], [ 0, %if.end13 ], [ %ret.1, %if.end ], [ %ret.031, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #17
  ret i32 %ret.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @find_next_iomem_res(i64 noundef %start, i64 noundef %end, i64 noundef %flags, i64 noundef %desc, %struct.resource* noundef writeonly %res) unnamed_addr #1 {
entry:
  %tobool.not = icmp ne %struct.resource* %res, null
  %cmp.not = icmp ult i64 %start, %end
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end2, label %cleanup

if.end2:                                          ; preds = %entry
  call fastcc void @__raw_read_lock() #16
  %0 = load %struct.resource*, %struct.resource** getelementptr inbounds (%struct.resource, %struct.resource* @iomem_resource, i64 0, i32 7), align 8
  %tobool3.not80 = icmp eq %struct.resource* %0, null
  br i1 %tobool3.not80, label %if.end39, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end2
  %cmp16.not = icmp eq i64 %desc, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %p.081 = phi %struct.resource* [ %0, %for.body.lr.ph ], [ %call, %for.inc ]
  %start4 = getelementptr inbounds %struct.resource, %struct.resource* %p.081, i64 0, i32 0
  %1 = load i64, i64* %start4, align 8
  %cmp5 = icmp ugt i64 %1, %end
  br i1 %cmp5, label %if.end39, label %if.end7

if.end7:                                          ; preds = %for.body
  %end8 = getelementptr inbounds %struct.resource, %struct.resource* %p.081, i64 0, i32 1
  %2 = load i64, i64* %end8, align 8
  %cmp9 = icmp ult i64 %2, %start
  br i1 %cmp9, label %for.inc, label %if.end11

if.end11:                                         ; preds = %if.end7
  %flags12 = getelementptr inbounds %struct.resource, %struct.resource* %p.081, i64 0, i32 3
  %3 = load i64, i64* %flags12, align 8
  %and = and i64 %3, %flags
  %cmp13.not = icmp eq i64 %and, %flags
  br i1 %cmp13.not, label %if.end15, label %for.inc

if.end15:                                         ; preds = %if.end11
  %desc37.phi.trans.insert = getelementptr inbounds %struct.resource, %struct.resource* %p.081, i64 0, i32 4
  %.pre = load i64, i64* %desc37.phi.trans.insert, align 8
  br i1 %cmp16.not, label %if.then22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end15
  %cmp18.not = icmp eq i64 %.pre, %desc
  br i1 %cmp18.not, label %if.then22, label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end11, %if.end7
  %call = call fastcc %struct.resource* @next_resource(%struct.resource* noundef nonnull %p.081) #16
  %tobool3.not = icmp eq %struct.resource* %call, null
  br i1 %tobool3.not, label %if.end39, label %for.body

if.then22:                                        ; preds = %land.lhs.true, %if.end15
  %4 = phi i64 [ %.pre, %if.end15 ], [ %desc, %land.lhs.true ]
  %cmp25 = icmp ult i64 %1, %start
  %cond = select i1 %cmp25, i64 %start, i64 %1
  %cmp29 = icmp ugt i64 %2, %end
  %cond33 = select i1 %cmp29, i64 %end, i64 %2
  %parent38 = getelementptr inbounds %struct.resource, %struct.resource* %p.081, i64 0, i32 5
  %5 = load %struct.resource*, %struct.resource** %parent38, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  store i64 %cond, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx50 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  store i64 %cond33, i64* %.compoundliteral.sroa.2.0..sroa_idx50, align 8
  %.compoundliteral.sroa.3.0..sroa_idx51 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 2
  store i8* null, i8** %.compoundliteral.sroa.3.0..sroa_idx51, align 8
  %.compoundliteral.sroa.4.0..sroa_idx52 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 3
  store i64 %3, i64* %.compoundliteral.sroa.4.0..sroa_idx52, align 8
  %.compoundliteral.sroa.5.0..sroa_idx53 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 4
  store i64 %4, i64* %.compoundliteral.sroa.5.0..sroa_idx53, align 8
  %.compoundliteral.sroa.6.0..sroa_idx54 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 5
  store %struct.resource* %5, %struct.resource** %.compoundliteral.sroa.6.0..sroa_idx54, align 8
  %.compoundliteral.sroa.7.0..sroa_idx55 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 6
  store %struct.resource* null, %struct.resource** %.compoundliteral.sroa.7.0..sroa_idx55, align 8
  %.compoundliteral.sroa.8.0..sroa_idx56 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 7
  store %struct.resource* null, %struct.resource** %.compoundliteral.sroa.8.0..sroa_idx56, align 8
  br label %if.end39

if.end39:                                         ; preds = %for.inc, %for.body, %if.end2, %if.then22
  %cond41 = phi i32 [ 0, %if.then22 ], [ -19, %if.end2 ], [ -19, %for.body ], [ -19, %for.inc ]
  call fastcc void @__raw_read_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end39
  %retval.0 = phi i32 [ %cond41, %if.end39 ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @page_is_ram(i64 noundef %pfn) local_unnamed_addr #1 {
entry:
  %call = call i32 @walk_system_ram_range(i64 noundef %pfn, i64 noundef 1, i8* noundef null, i32 (i64, i64, i8*)* noundef nonnull @__is_ram) #16
  %cmp = icmp eq i32 %call, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @__is_ram(i64 noundef %pfn, i64 noundef %nr_pages, i8* nocapture noundef readnone %arg) #5 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @region_intersects(i64 noundef %start, i64 noundef %size, i64 noundef %flags, i64 noundef %desc) local_unnamed_addr #1 {
entry:
  call fastcc void @__raw_read_lock() #16
  %call = call fastcc i32 @__region_intersects(i64 noundef %start, i64 noundef %size, i64 noundef %flags, i64 noundef %desc) #16
  call fastcc void @__raw_read_unlock() #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  call fastcc void @queued_read_lock() #16
  ret void
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @__region_intersects(i64 noundef %start, i64 noundef %size, i64 noundef %flags, i64 noundef %desc) unnamed_addr #6 {
entry:
  %res = alloca %struct.resource, align 8
  %0 = bitcast %struct.resource* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #17
  %1 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 2
  %2 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 48, i1 false), !annotation !9
  %start1 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  store i64 %start, i64* %start1, align 8
  %add = add i64 %start, -1
  %sub = add i64 %add, %size
  %end = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  store i64 %sub, i64* %end, align 8
  %p.030 = load %struct.resource*, %struct.resource** getelementptr inbounds (%struct.resource, %struct.resource* @iomem_resource, i64 0, i32 7), align 8
  %tobool.not31 = icmp eq %struct.resource* %p.030, null
  br i1 %tobool.not31, label %for.end.thread.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %cmp3 = icmp eq i64 %desc, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %p.036 = phi %struct.resource* [ %p.030, %for.body.lr.ph ], [ %p.0, %if.end ]
  %other.034 = phi i32 [ 0, %for.body.lr.ph ], [ %other.1, %if.end ]
  %type.032 = phi i32 [ 0, %for.body.lr.ph ], [ %type.1, %if.end ]
  %flags2 = getelementptr inbounds %struct.resource, %struct.resource* %p.036, i64 0, i32 3
  %3 = load i64, i64* %flags2, align 8
  %and = and i64 %3, %flags
  %cmp = icmp eq i64 %and, %flags
  %call41 = call fastcc i1 @resource_overlaps(%struct.resource* noundef nonnull %p.036, %struct.resource* noundef nonnull %res) #16
  br i1 %cmp, label %land.rhs, label %land.end.thread

land.rhs:                                         ; preds = %for.body
  br i1 %cmp3, label %land.end.thread40, label %land.end

land.end:                                         ; preds = %land.rhs
  br i1 %call41, label %if.then, label %if.end

land.end.thread40:                                ; preds = %land.rhs
  br i1 %call41, label %cond.true, label %if.end

land.end.thread:                                  ; preds = %for.body
  br i1 %call41, label %cond.false, label %if.end

if.then:                                          ; preds = %land.end
  %desc4 = getelementptr inbounds %struct.resource, %struct.resource* %p.036, i64 0, i32 4
  %4 = load i64, i64* %desc4, align 8
  %cmp5 = icmp eq i64 %4, %desc
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end.thread40, %if.then
  %inc = add i32 %type.032, 1
  br label %if.end

cond.false:                                       ; preds = %land.end.thread, %if.then
  %inc7 = add i32 %other.034, 1
  br label %if.end

if.end:                                           ; preds = %land.end.thread40, %land.end.thread, %cond.true, %cond.false, %land.end
  %type.1 = phi i32 [ %inc, %cond.true ], [ %type.032, %cond.false ], [ %type.032, %land.end ], [ %type.032, %land.end.thread ], [ %type.032, %land.end.thread40 ]
  %other.1 = phi i32 [ %other.034, %cond.true ], [ %inc7, %cond.false ], [ %other.034, %land.end ], [ %other.034, %land.end.thread ], [ %other.034, %land.end.thread40 ]
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %p.036, i64 0, i32 6
  %p.0 = load %struct.resource*, %struct.resource** %sibling, align 8
  %tobool.not = icmp eq %struct.resource* %p.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  %cmp8 = icmp eq i32 %type.1, 0
  %cmp11 = icmp eq i32 %other.1, 0
  %. = select i1 %cmp11, i32 0, i32 2
  br i1 %cmp8, label %for.end.thread.thread, label %5

for.end.thread.thread:                            ; preds = %for.end, %entry
  br label %5

5:                                                ; preds = %for.end, %for.end.thread.thread
  %6 = phi i32 [ 1, %for.end.thread.thread ], [ %., %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #17
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @queued_read_unlock() #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @arch_remove_reservations(%struct.resource* noundef %avail) local_unnamed_addr #1 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @allocate_resource(%struct.resource* noundef %root, %struct.resource* noundef %new, i64 noundef %size, i64 noundef %min, i64 noundef %max, i64 noundef %align, i64 (i8*, %struct.resource*, i64, i64)* noundef %alignf, i8* noundef %alignf_data) local_unnamed_addr #1 {
entry:
  %constraint = alloca %struct.resource_constraint, align 8
  %0 = bitcast %struct.resource_constraint* %constraint to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #17
  %tobool.not = icmp eq i64 (i8*, %struct.resource*, i64, i64)* %alignf, null
  %spec.store.select = select i1 %tobool.not, i64 (i8*, %struct.resource*, i64, i64)* @simple_align_resource, i64 (i8*, %struct.resource*, i64, i64)* %alignf
  %min1 = getelementptr inbounds %struct.resource_constraint, %struct.resource_constraint* %constraint, i64 0, i32 0
  store i64 %min, i64* %min1, align 8
  %max2 = getelementptr inbounds %struct.resource_constraint, %struct.resource_constraint* %constraint, i64 0, i32 1
  store i64 %max, i64* %max2, align 8
  %align3 = getelementptr inbounds %struct.resource_constraint, %struct.resource_constraint* %constraint, i64 0, i32 2
  store i64 %align, i64* %align3, align 8
  %alignf4 = getelementptr inbounds %struct.resource_constraint, %struct.resource_constraint* %constraint, i64 0, i32 3
  store i64 (i8*, %struct.resource*, i64, i64)* %spec.store.select, i64 (i8*, %struct.resource*, i64, i64)** %alignf4, align 8
  %alignf_data5 = getelementptr inbounds %struct.resource_constraint, %struct.resource_constraint* %constraint, i64 0, i32 4
  store i8* %alignf_data, i8** %alignf_data5, align 8
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 5
  %1 = load %struct.resource*, %struct.resource** %parent, align 8
  %tobool6.not = icmp eq %struct.resource* %1, null
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %entry
  %call = call fastcc i32 @reallocate_resource(%struct.resource* noundef %root, %struct.resource* noundef %new, i64 noundef %size, %struct.resource_constraint* noundef nonnull %constraint) #16
  br label %cleanup

if.end8:                                          ; preds = %entry
  call fastcc void @__raw_write_lock() #16
  %call9 = call fastcc i32 @find_resource(%struct.resource* noundef %root, %struct.resource* noundef %new, i64 noundef %size, %struct.resource_constraint* noundef nonnull %constraint) #16
  %cmp = icmp sgt i32 %call9, -1
  br i1 %cmp, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end8
  %call10 = call fastcc %struct.resource* @__request_resource(%struct.resource* noundef %root, %struct.resource* noundef %new) #16
  %tobool11.not = icmp eq %struct.resource* %call10, null
  %spec.select = select i1 %tobool11.not, i32 %call9, i32 -16
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end8
  %err.0 = phi i32 [ %call9, %if.end8 ], [ %spec.select, %land.lhs.true ]
  call fastcc void @__raw_write_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then7
  %retval.0 = phi i32 [ %call, %if.then7 ], [ %err.0, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i64 @simple_align_resource(i8* nocapture noundef readnone %data, %struct.resource* nocapture noundef readonly %avail, i64 noundef %size, i64 noundef %align) #7 {
entry:
  %start = getelementptr inbounds %struct.resource, %struct.resource* %avail, i64 0, i32 0
  %0 = load i64, i64* %start, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @reallocate_resource(%struct.resource* noundef %root, %struct.resource* noundef %old, i64 noundef %newsize, %struct.resource_constraint* nocapture noundef readonly %constraint) unnamed_addr #1 {
entry:
  %new = alloca %struct.resource, align 8
  %0 = bitcast %struct.resource* %new to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #17
  %1 = bitcast %struct.resource* %old to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8* noundef align 8 dereferenceable(64) %1, i64 64, i1 false)
  call fastcc void @__raw_write_lock() #16
  %call = call fastcc i32 @__find_resource(%struct.resource* noundef %root, %struct.resource* noundef %old, %struct.resource* noundef nonnull %new, i64 noundef %newsize, %struct.resource_constraint* noundef %constraint) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @resource_contains(%struct.resource* noundef nonnull %new, %struct.resource* noundef %old) #16
  br i1 %call1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %start = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 0
  %2 = load i64, i64* %start, align 8
  br label %out.sink.split

if.end5:                                          ; preds = %if.end
  %child = getelementptr inbounds %struct.resource, %struct.resource* %old, i64 0, i32 7
  %3 = load %struct.resource*, %struct.resource** %child, align 8
  %tobool6.not = icmp eq %struct.resource* %3, null
  br i1 %tobool6.not, label %if.end8, label %out

if.end8:                                          ; preds = %if.end5
  %call9 = call fastcc i1 @resource_contains(%struct.resource* noundef %old, %struct.resource* noundef nonnull %new) #16
  br i1 %call9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %start11 = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 0
  %4 = load i64, i64* %start11, align 8
  br label %out.sink.split

if.else:                                          ; preds = %if.end8
  %call15 = call fastcc i32 @__release_resource(%struct.resource* noundef %old, i1 noundef true) #16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(64) %1, i8* noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %call16 = call fastcc %struct.resource* @__request_resource(%struct.resource* noundef %root, %struct.resource* noundef %old) #16
  %tobool17.not = icmp eq %struct.resource* %call16, null
  br i1 %tobool17.not, label %out, label %do.body21, !prof !12

do.body21:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/resource.c\22; .popsection; .long 14472b - 14470b; .short 698; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !13
  unreachable

out.sink.split:                                   ; preds = %if.then2, %if.then10
  %.sink = phi i64 [ %4, %if.then10 ], [ %2, %if.then2 ]
  %start12 = getelementptr inbounds %struct.resource, %struct.resource* %old, i64 0, i32 0
  store i64 %.sink, i64* %start12, align 8
  %end13 = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 1
  %5 = load i64, i64* %end13, align 8
  %end14 = getelementptr inbounds %struct.resource, %struct.resource* %old, i64 0, i32 1
  store i64 %5, i64* %end14, align 8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end5, %if.else, %entry
  %err.0 = phi i32 [ %call, %entry ], [ 0, %if.else ], [ -16, %if.end5 ], [ 0, %out.sink.split ]
  call fastcc void @__raw_write_unlock() #16
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #17
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @find_resource(%struct.resource* nocapture noundef readonly %root, %struct.resource* nocapture noundef %new, i64 noundef %size, %struct.resource_constraint* nocapture noundef readonly %constraint) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__find_resource(%struct.resource* noundef %root, %struct.resource* noundef null, %struct.resource* noundef %new, i64 noundef %size, %struct.resource_constraint* noundef %constraint) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.resource* @lookup_resource(%struct.resource* nocapture noundef readonly %root, i64 noundef %start) local_unnamed_addr #1 {
entry:
  call fastcc void @__raw_read_lock() #16
  %child = getelementptr inbounds %struct.resource, %struct.resource* %root, i64 0, i32 7
  %res.06 = load %struct.resource*, %struct.resource** %child, align 8
  %tobool.not7 = icmp eq %struct.resource* %res.06, null
  br i1 %tobool.not7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %res.08 = phi %struct.resource* [ %res.0, %for.inc ], [ %res.06, %entry ]
  %start1 = getelementptr inbounds %struct.resource, %struct.resource* %res.08, i64 0, i32 0
  %0 = load i64, i64* %start1, align 8
  %cmp = icmp eq i64 %0, %start
  br i1 %cmp, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %res.08, i64 0, i32 6
  %res.0 = load %struct.resource*, %struct.resource** %sibling, align 8
  %tobool.not = icmp eq %struct.resource* %res.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %res.0.lcssa = phi %struct.resource* [ null, %entry ], [ %res.08, %for.body ], [ null, %for.inc ]
  call fastcc void @__raw_read_unlock() #16
  ret %struct.resource* %res.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.resource* @insert_resource_conflict(%struct.resource* noundef %parent, %struct.resource* noundef %new) local_unnamed_addr #1 {
entry:
  call fastcc void @__raw_write_lock() #16
  %call = call fastcc %struct.resource* @__insert_resource(%struct.resource* noundef %parent, %struct.resource* noundef %new) #16
  call fastcc void @__raw_write_unlock() #16
  ret %struct.resource* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.resource* @__insert_resource(%struct.resource* noundef %parent, %struct.resource* noundef %new) unnamed_addr #1 {
entry:
  %start23 = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 0
  %end26 = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end30, %entry
  %parent.addr.0 = phi %struct.resource* [ %parent, %entry ], [ %call, %if.end30 ]
  %call = call fastcc %struct.resource* @__request_resource(%struct.resource* noundef %parent.addr.0, %struct.resource* noundef %new) #16
  %tobool.not = icmp eq %struct.resource* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.cond
  %cmp = icmp eq %struct.resource* %call, %parent.addr.0
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %cmp3 = icmp eq %struct.resource* %call, %new
  br i1 %cmp3, label %if.then11, label %if.end22, !prof !14

if.then11:                                        ; preds = %if.end2
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/resource.c\22; .popsection; .long 14472b - 14470b; .short 791; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !15
  br label %cleanup

if.end22:                                         ; preds = %if.end2
  %start = getelementptr inbounds %struct.resource, %struct.resource* %call, i64 0, i32 0
  %0 = load i64, i64* %start, align 8
  %1 = load i64, i64* %start23, align 8
  %cmp24 = icmp ugt i64 %0, %1
  br i1 %cmp24, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end22
  %end = getelementptr inbounds %struct.resource, %struct.resource* %call, i64 0, i32 1
  %2 = load i64, i64* %end, align 8
  %3 = load i64, i64* %end26, align 8
  %cmp27 = icmp ult i64 %2, %3
  br i1 %cmp27, label %for.end, label %if.end30

if.end30:                                         ; preds = %lor.lhs.false
  %cmp33 = icmp eq i64 %0, %1
  %cmp37 = icmp eq i64 %2, %3
  %or.cond = select i1 %cmp33, i1 %cmp37, i1 false
  br i1 %or.cond, label %for.end, label %for.cond

for.end:                                          ; preds = %if.end30, %if.end22, %lor.lhs.false
  %.lcssa = phi i64 [ %0, %if.end30 ], [ %1, %if.end22 ], [ %1, %lor.lhs.false ]
  br label %for.cond41

for.cond41:                                       ; preds = %if.end55, %for.end
  %4 = phi i64 [ %0, %for.end ], [ %8, %if.end55 ]
  %next.0 = phi %struct.resource* [ %call, %for.end ], [ %7, %if.end55 ]
  %cmp44 = icmp ult i64 %4, %.lcssa
  br i1 %cmp44, label %cleanup, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %for.cond41
  %end47 = getelementptr inbounds %struct.resource, %struct.resource* %next.0, i64 0, i32 1
  %5 = load i64, i64* %end47, align 8
  %6 = load i64, i64* %end26, align 8
  %cmp49 = icmp ugt i64 %5, %6
  br i1 %cmp49, label %cleanup, label %if.end52

if.end52:                                         ; preds = %lor.lhs.false46
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %next.0, i64 0, i32 6
  %7 = load %struct.resource*, %struct.resource** %sibling, align 8
  %tobool53.not = icmp eq %struct.resource* %7, null
  br i1 %tobool53.not, label %for.end65, label %if.end55

if.end55:                                         ; preds = %if.end52
  %start57 = getelementptr inbounds %struct.resource, %struct.resource* %7, i64 0, i32 0
  %8 = load i64, i64* %start57, align 8
  %cmp59 = icmp ugt i64 %8, %6
  br i1 %cmp59, label %for.end65, label %for.cond41

for.end65:                                        ; preds = %if.end55, %if.end52
  %sibling.le = getelementptr inbounds %struct.resource, %struct.resource* %next.0, i64 0, i32 6
  %parent66 = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 5
  store %struct.resource* %parent.addr.0, %struct.resource** %parent66, align 8
  %9 = load %struct.resource*, %struct.resource** %sibling.le, align 8
  %sibling68 = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 6
  store %struct.resource* %9, %struct.resource** %sibling68, align 8
  %child = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 7
  store %struct.resource* %call, %struct.resource** %child, align 8
  store %struct.resource* null, %struct.resource** %sibling.le, align 8
  br label %for.body

for.body:                                         ; preds = %for.end65, %for.body
  %next.1154 = phi %struct.resource* [ %call, %for.end65 ], [ %10, %for.body ]
  %parent72 = getelementptr inbounds %struct.resource, %struct.resource* %next.1154, i64 0, i32 5
  store %struct.resource* %new, %struct.resource** %parent72, align 8
  %sibling74 = getelementptr inbounds %struct.resource, %struct.resource* %next.1154, i64 0, i32 6
  %10 = load %struct.resource*, %struct.resource** %sibling74, align 8
  %tobool71.not = icmp eq %struct.resource* %10, null
  br i1 %tobool71.not, label %for.end75, label %for.body

for.end75:                                        ; preds = %for.body
  %child76 = getelementptr inbounds %struct.resource, %struct.resource* %parent.addr.0, i64 0, i32 7
  %11 = load %struct.resource*, %struct.resource** %child76, align 8
  %cmp77 = icmp eq %struct.resource* %11, %call
  br i1 %cmp77, label %if.then79, label %while.cond

if.then79:                                        ; preds = %for.end75
  store %struct.resource* %new, %struct.resource** %child76, align 8
  br label %cleanup

while.cond:                                       ; preds = %for.end75, %while.cond
  %next.2 = phi %struct.resource* [ %12, %while.cond ], [ %11, %for.end75 ]
  %sibling82 = getelementptr inbounds %struct.resource, %struct.resource* %next.2, i64 0, i32 6
  %12 = load %struct.resource*, %struct.resource** %sibling82, align 8
  %cmp83.not = icmp eq %struct.resource* %12, %call
  br i1 %cmp83.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %sibling82.le = getelementptr inbounds %struct.resource, %struct.resource* %next.2, i64 0, i32 6
  store %struct.resource* %new, %struct.resource** %sibling82.le, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.cond, %for.cond41, %lor.lhs.false46, %if.then11, %if.then79, %while.end
  %retval.0 = phi %struct.resource* [ %new, %if.then11 ], [ null, %while.end ], [ null, %if.then79 ], [ %next.0, %lor.lhs.false46 ], [ %next.0, %for.cond41 ], [ %parent.addr.0, %if.end ], [ null, %for.cond ]
  ret %struct.resource* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @insert_resource(%struct.resource* noundef %parent, %struct.resource* noundef %new) local_unnamed_addr #1 {
entry:
  %call = call %struct.resource* @insert_resource_conflict(%struct.resource* noundef %parent, %struct.resource* noundef %new) #16
  %tobool.not = icmp eq %struct.resource* %call, null
  %cond = select i1 %tobool.not, i32 0, i32 -16
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @insert_resource_expand_to_fit(%struct.resource* noundef %root, %struct.resource* noundef %new) local_unnamed_addr #1 {
entry:
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 5
  %0 = load %struct.resource*, %struct.resource** %parent, align 8
  %tobool.not = icmp eq %struct.resource* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call fastcc void @__raw_write_lock() #16
  %call37 = call fastcc %struct.resource* @__insert_resource(%struct.resource* noundef %root, %struct.resource* noundef %new) #16
  %tobool1.not38 = icmp eq %struct.resource* %call37, null
  %cmp39 = icmp eq %struct.resource* %call37, %root
  %or.cond40 = or i1 %tobool1.not38, %cmp39
  br i1 %or.cond40, label %for.end, label %if.end5.lr.ph

if.end5.lr.ph:                                    ; preds = %if.end
  %start6 = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 0
  %end12 = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 1
  %name = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 2
  br label %if.end5

if.end5:                                          ; preds = %if.end5.lr.ph, %cleanup
  %call41 = phi %struct.resource* [ %call37, %if.end5.lr.ph ], [ %call, %cleanup ]
  %start = getelementptr inbounds %struct.resource, %struct.resource* %call41, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  %2 = load i64, i64* %start6, align 8
  %cmp7 = icmp ult i64 %1, %2
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  store i64 %1, i64* %start6, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5
  %end = getelementptr inbounds %struct.resource, %struct.resource* %call41, i64 0, i32 1
  %3 = load i64, i64* %end, align 8
  %4 = load i64, i64* %end12, align 8
  %cmp13 = icmp ugt i64 %3, %4
  br i1 %cmp13, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.end11
  store i64 %3, i64* %end12, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end11
  %5 = load i8*, i8** %name, align 8
  %name18 = getelementptr inbounds %struct.resource, %struct.resource* %call41, i64 0, i32 2
  %6 = load i8*, i8** %name18, align 8
  %call19 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* noundef %5, i8* noundef %6) #18
  %call = call fastcc %struct.resource* @__insert_resource(%struct.resource* noundef %root, %struct.resource* noundef %new) #16
  %tobool1.not = icmp eq %struct.resource* %call, null
  %cmp = icmp eq %struct.resource* %call, %root
  %or.cond = or i1 %tobool1.not, %cmp
  br i1 %or.cond, label %for.end, label %if.end5

for.end:                                          ; preds = %cleanup, %if.end
  call fastcc void @__raw_write_unlock() #16
  br label %return

return:                                           ; preds = %entry, %for.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @remove_resource(%struct.resource* noundef %old) local_unnamed_addr #1 {
entry:
  call fastcc void @__raw_write_lock() #16
  %call = call fastcc i32 @__release_resource(%struct.resource* noundef %old, i1 noundef false) #16
  call fastcc void @__raw_write_unlock() #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @adjust_resource(%struct.resource* noundef %res, i64 noundef %start, i64 noundef %size) local_unnamed_addr #1 {
entry:
  call fastcc void @__raw_write_lock() #16
  %call = call fastcc i32 @__adjust_resource(%struct.resource* noundef %res, i64 noundef %start, i64 noundef %size) #16
  call fastcc void @__raw_write_unlock() #16
  ret i32 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i32 @__adjust_resource(%struct.resource* noundef %res, i64 noundef %start, i64 noundef %size) unnamed_addr #3 {
entry:
  %parent1 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 5
  %0 = load %struct.resource*, %struct.resource** %parent1, align 8
  %add = add i64 %start, -1
  %sub = add i64 %add, %size
  %tobool.not = icmp eq %struct.resource* %0, null
  br i1 %tobool.not, label %skip, label %if.end

if.end:                                           ; preds = %entry
  %start2 = getelementptr inbounds %struct.resource, %struct.resource* %0, i64 0, i32 0
  %1 = load i64, i64* %start2, align 8
  %cmp = icmp ugt i64 %1, %start
  br i1 %cmp, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %end3 = getelementptr inbounds %struct.resource, %struct.resource* %0, i64 0, i32 1
  %2 = load i64, i64* %end3, align 8
  %cmp4 = icmp ugt i64 %sub, %2
  br i1 %cmp4, label %out, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 6
  %3 = load %struct.resource*, %struct.resource** %sibling, align 8
  %tobool7.not = icmp eq %struct.resource* %3, null
  br i1 %tobool7.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %3, i64 0, i32 0
  %4 = load i64, i64* %start9, align 8
  %cmp10.not = icmp ugt i64 %4, %sub
  br i1 %cmp10.not, label %if.end12, label %out

if.end12:                                         ; preds = %land.lhs.true, %if.end6
  %child = getelementptr inbounds %struct.resource, %struct.resource* %0, i64 0, i32 7
  %5 = load %struct.resource*, %struct.resource** %child, align 8
  %cmp13.not = icmp eq %struct.resource* %5, %res
  br i1 %cmp13.not, label %skip, label %while.cond

while.cond:                                       ; preds = %if.end12, %while.cond
  %tmp.0 = phi %struct.resource* [ %6, %while.cond ], [ %5, %if.end12 ]
  %sibling15 = getelementptr inbounds %struct.resource, %struct.resource* %tmp.0, i64 0, i32 6
  %6 = load %struct.resource*, %struct.resource** %sibling15, align 8
  %cmp16.not = icmp eq %struct.resource* %6, %res
  br i1 %cmp16.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %end18 = getelementptr inbounds %struct.resource, %struct.resource* %tmp.0, i64 0, i32 1
  %7 = load i64, i64* %end18, align 8
  %cmp19.not = icmp ult i64 %7, %start
  br i1 %cmp19.not, label %skip, label %out

skip:                                             ; preds = %if.end12, %while.end, %entry
  %child23 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 7
  %tmp.166 = load %struct.resource*, %struct.resource** %child23, align 8
  %tobool24.not67 = icmp eq %struct.resource* %tmp.166, null
  br i1 %tobool24.not67, label %for.end, label %for.body

for.cond:                                         ; preds = %lor.lhs.false27
  %sibling32 = getelementptr inbounds %struct.resource, %struct.resource* %tmp.168, i64 0, i32 6
  %tmp.1 = load %struct.resource*, %struct.resource** %sibling32, align 8
  %tobool24.not = icmp eq %struct.resource* %tmp.1, null
  br i1 %tobool24.not, label %for.end, label %for.body

for.body:                                         ; preds = %skip, %for.cond
  %tmp.168 = phi %struct.resource* [ %tmp.1, %for.cond ], [ %tmp.166, %skip ]
  %start25 = getelementptr inbounds %struct.resource, %struct.resource* %tmp.168, i64 0, i32 0
  %8 = load i64, i64* %start25, align 8
  %cmp26 = icmp ult i64 %8, %start
  br i1 %cmp26, label %out, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %for.body
  %end28 = getelementptr inbounds %struct.resource, %struct.resource* %tmp.168, i64 0, i32 1
  %9 = load i64, i64* %end28, align 8
  %cmp29 = icmp ugt i64 %9, %sub
  br i1 %cmp29, label %out, label %for.cond

for.end:                                          ; preds = %for.cond, %skip
  %start33 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  store i64 %start, i64* %start33, align 8
  %end34 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  store i64 %sub, i64* %end34, align 8
  br label %out

out:                                              ; preds = %for.body, %lor.lhs.false27, %while.end, %land.lhs.true, %if.end, %lor.lhs.false, %for.end
  %result.0 = phi i32 [ -16, %if.end ], [ -16, %lor.lhs.false ], [ -16, %land.lhs.true ], [ -16, %while.end ], [ 0, %for.end ], [ -16, %lor.lhs.false27 ], [ -16, %for.body ]
  ret i32 %result.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @reserve_region_with_split(%struct.resource* noundef %root, i64 noundef %start, i64 noundef %end, i8* noundef %name) local_unnamed_addr #0 section ".init.text" {
entry:
  call fastcc void @__raw_write_lock() #16
  %start1 = getelementptr inbounds %struct.resource, %struct.resource* %root, i64 0, i32 0
  %0 = load i64, i64* %start1, align 8
  %cmp = icmp ugt i64 %0, %start
  br i1 %cmp, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %end2 = getelementptr inbounds %struct.resource, %struct.resource* %root, i64 0, i32 1
  %1 = load i64, i64* %end2, align 8
  %cmp3 = icmp ult i64 %1, %end
  br i1 %cmp3, label %do.end, label %if.then26

do.end:                                           ; preds = %entry, %lor.lhs.false
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 noundef %start, i64 noundef %end, %struct.resource* noundef %root) #18
  %end4 = getelementptr inbounds %struct.resource, %struct.resource* %root, i64 0, i32 1
  %2 = load i64, i64* %end4, align 8
  %cmp5 = icmp ult i64 %2, %start
  br i1 %cmp5, label %if.end25.thread55, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %do.end
  %3 = load i64, i64* %start1, align 8
  %cmp8 = icmp ugt i64 %3, %end
  br i1 %cmp8, label %if.end25.thread55, label %if.end25

if.end25.thread55:                                ; preds = %lor.lhs.false6, %do.end
  call void @dump_stack() #18
  br label %if.end27

if.end25:                                         ; preds = %lor.lhs.false6
  %cmp11 = icmp ult i64 %2, %end
  %spec.select = select i1 %cmp11, i64 %2, i64 %end
  %cmp15 = icmp ugt i64 %3, %start
  %start.addr.0 = select i1 %cmp15, i64 %3, i64 %start
  %call23 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 noundef %start.addr.0, i64 noundef %spec.select) #18
  call void @dump_stack() #18
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false, %if.end25
  %start.addr.254 = phi i64 [ %start.addr.0, %if.end25 ], [ %start, %lor.lhs.false ]
  %end.addr.253 = phi i64 [ %spec.select, %if.end25 ], [ %end, %lor.lhs.false ]
  call fastcc void @__reserve_region_with_split(%struct.resource* noundef %root, i64 noundef %start.addr.254, i64 noundef %end.addr.253, i8* noundef %name) #19
  br label %if.end27

if.end27:                                         ; preds = %if.end25.thread55, %if.then26
  call fastcc void @__raw_write_unlock() #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #8

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @__reserve_region_with_split(%struct.resource* noundef %root, i64 noundef %start, i64 noundef %end, i8* noundef %name) unnamed_addr #0 section ".init.text" {
entry:
  %call = call fastcc %struct.resource* @alloc_resource(i32 noundef 2592) #16
  %tobool.not = icmp eq %struct.resource* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @resource_type(%struct.resource* noundef %root) #16
  %name2 = getelementptr inbounds %struct.resource, %struct.resource* %call, i64 0, i32 2
  store i8* %name, i8** %name2, align 8
  %start3 = getelementptr inbounds %struct.resource, %struct.resource* %call, i64 0, i32 0
  store i64 %start, i64* %start3, align 8
  %end4 = getelementptr inbounds %struct.resource, %struct.resource* %call, i64 0, i32 1
  store i64 %end, i64* %end4, align 8
  %or = and i64 %call1, 2147483647
  %conv5 = or i64 %or, 2147483648
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %call, i64 0, i32 3
  store i64 %conv5, i64* %flags, align 8
  %desc = getelementptr inbounds %struct.resource, %struct.resource* %call, i64 0, i32 4
  store i64 0, i64* %desc, align 8
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then8, %if.end
  %res.0.ph = phi %struct.resource* [ %next_res.1, %if.then8 ], [ %call, %if.end ]
  %call6119 = call fastcc %struct.resource* @__request_resource(%struct.resource* noundef %root, %struct.resource* noundef nonnull %res.0.ph) #16
  %tobool7.not120 = icmp eq %struct.resource* %call6119, null
  br i1 %tobool7.not120, label %cleanup, label %if.end12.lr.ph

if.end12.lr.ph:                                   ; preds = %while.cond.outer
  %start14 = getelementptr inbounds %struct.resource, %struct.resource* %res.0.ph, i64 0, i32 0
  %end17 = getelementptr inbounds %struct.resource, %struct.resource* %res.0.ph, i64 0, i32 1
  br label %if.end12

if.then8:                                         ; preds = %if.end68
  %tobool9.not = icmp eq %struct.resource* %next_res.1, null
  br i1 %tobool9.not, label %cleanup, label %while.cond.outer

if.end12:                                         ; preds = %if.end12.lr.ph, %if.end68
  %call6122 = phi %struct.resource* [ %call6119, %if.end12.lr.ph ], [ %call6, %if.end68 ]
  %next_res.0121 = phi %struct.resource* [ null, %if.end12.lr.ph ], [ %next_res.1, %if.end68 ]
  %start13 = getelementptr inbounds %struct.resource, %struct.resource* %call6122, i64 0, i32 0
  %0 = load i64, i64* %start13, align 8
  %1 = load i64, i64* %start14, align 8
  %cmp.not = icmp ugt i64 %0, %1
  br i1 %cmp.not, label %if.then44, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %end16 = getelementptr inbounds %struct.resource, %struct.resource* %call6122, i64 0, i32 1
  %2 = load i64, i64* %end16, align 8
  %3 = load i64, i64* %end17, align 8
  %cmp18.not = icmp ult i64 %2, %3
  br i1 %cmp18.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  call fastcc void @free_resource(%struct.resource* noundef nonnull %res.0.ph) #16
  %tobool21.not = icmp eq %struct.resource* %next_res.0121, null
  br i1 %tobool21.not, label %cleanup, label %if.then30, !prof !12

if.then30:                                        ; preds = %if.then20
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/resource.c\22; .popsection; .long 14472b - 14470b; .short 1027; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !16
  br label %cleanup

if.then44:                                        ; preds = %if.end12
  %4 = load i64, i64* %end17, align 8
  %sub = add i64 %0, -1
  store i64 %sub, i64* %end17, align 8
  %end48 = getelementptr inbounds %struct.resource, %struct.resource* %call6122, i64 0, i32 1
  %5 = load i64, i64* %end48, align 8
  %cmp49 = icmp ult i64 %5, %4
  br i1 %cmp49, label %if.then51, label %if.end68

if.then51:                                        ; preds = %if.then44
  %call52 = call fastcc %struct.resource* @alloc_resource(i32 noundef 2592) #16
  %tobool53.not = icmp eq %struct.resource* %call52, null
  br i1 %tobool53.not, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then51
  call fastcc void @free_resource(%struct.resource* noundef nonnull %res.0.ph) #16
  br label %cleanup

if.end55:                                         ; preds = %if.then51
  %name56 = getelementptr inbounds %struct.resource, %struct.resource* %call52, i64 0, i32 2
  store i8* %name, i8** %name56, align 8
  %6 = load i64, i64* %end48, align 8
  %add = add i64 %6, 1
  %start58 = getelementptr inbounds %struct.resource, %struct.resource* %call52, i64 0, i32 0
  store i64 %add, i64* %start58, align 8
  %end59 = getelementptr inbounds %struct.resource, %struct.resource* %call52, i64 0, i32 1
  store i64 %4, i64* %end59, align 8
  %flags62 = getelementptr inbounds %struct.resource, %struct.resource* %call52, i64 0, i32 3
  store i64 %conv5, i64* %flags62, align 8
  %desc63 = getelementptr inbounds %struct.resource, %struct.resource* %call52, i64 0, i32 4
  store i64 0, i64* %desc63, align 8
  br label %if.end68

if.else:                                          ; preds = %land.lhs.true
  %add66 = add nuw i64 %2, 1
  store i64 %add66, i64* %start14, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then44, %if.end55, %if.else
  %next_res.1 = phi %struct.resource* [ %call52, %if.end55 ], [ %next_res.0121, %if.then44 ], [ %next_res.0121, %if.else ]
  %call6 = call fastcc %struct.resource* @__request_resource(%struct.resource* noundef %root, %struct.resource* noundef nonnull %res.0.ph) #16
  %tobool7.not = icmp eq %struct.resource* %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end12

cleanup:                                          ; preds = %while.cond.outer, %if.then8, %if.then54, %if.then30, %if.then20, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @resource_alignment(%struct.resource* nocapture noundef readonly %res) local_unnamed_addr #7 {
entry:
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 786432
  switch i64 %and, label %return [
    i64 262144, label %sw.bb
    i64 524288, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %call = call fastcc i64 @resource_size(%struct.resource* noundef %res) #16
  br label %return

sw.bb1:                                           ; preds = %entry
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  br label %return

return:                                           ; preds = %entry, %sw.bb1, %sw.bb
  %retval.0 = phi i64 [ %1, %sw.bb1 ], [ %call, %sw.bb ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @resource_size(%struct.resource* nocapture noundef readonly %res) unnamed_addr #7 {
entry:
  %end = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  %0 = load i64, i64* %end, align 8
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  %sub = add i64 %0, 1
  %add = sub i64 %sub, %1
  ret i64 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.address_space* @iomem_get_mapping() local_unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.inode** nonnull elementtype(%struct.inode*) @iomem_inode) #17, !srcloc !17
  %1 = inttoptr i64 %0 to %struct.inode*
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 7
  %2 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  ret %struct.address_space* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.resource* @__request_region(%struct.resource* noundef %parent, i64 noundef %start, i64 noundef %n, i8* noundef %name, i32 noundef %flags) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.resource* @alloc_resource(i32 noundef 3264) #16
  %tobool.not = icmp eq %struct.resource* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__raw_write_lock() #16
  %call1 = call fastcc i32 @__request_region_locked(%struct.resource* noundef nonnull %call, %struct.resource* noundef %parent, i64 noundef %start, i64 noundef %n, i8* noundef %name, i32 noundef %flags) #16
  call fastcc void @__raw_write_unlock() #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @free_resource(%struct.resource* noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi %struct.resource* [ null, %if.then3 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct.resource* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.resource* @alloc_resource(i32 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_lock() #15
  %0 = load %struct.resource*, %struct.resource** @bootmem_resource_free, align 8
  %tobool.not = icmp eq %struct.resource* %0, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %entry
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %0, i64 0, i32 6
  %1 = load %struct.resource*, %struct.resource** %sibling, align 8
  store %struct.resource* %1, %struct.resource** @bootmem_resource_free, align 8
  call fastcc void @__raw_spin_unlock() #15
  %2 = bitcast %struct.resource* %0 to i8*
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 64) #15
  br label %if.end4

if.else:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock() #15
  %call3 = call fastcc i8* @kzalloc(i64 noundef 64, i32 noundef %flags) #16
  %3 = bitcast i8* %call3 to %struct.resource*
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %res.1 = phi %struct.resource* [ %0, %if.then2 ], [ %3, %if.else ]
  ret %struct.resource* %res.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__request_region_locked(%struct.resource* noundef %res, %struct.resource* noundef %parent, i64 noundef %start, i64 noundef %n, i8* noundef %name, i32 noundef %flags) unnamed_addr #1 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %0 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #17
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !18
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = bitcast i8** %private to %struct.task_struct**
  %4 = bitcast %struct.wait_queue_entry* %wait to i64*
  store i64 0, i64* %4, align 8
  store %struct.task_struct* %2, %struct.task_struct** %3, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @default_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %next = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 0
  store %struct.list_head* null, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  store %struct.list_head* null, %struct.list_head** %prev, align 8
  %name3 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 2
  store i8* %name, i8** %name3, align 8
  %start4 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  store i64 %start, i64* %start4, align 8
  %add = add i64 %start, -1
  %sub = add i64 %add, %n
  %end = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  store i64 %sub, i64* %end, align 8
  %flags7 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 3
  %or8 = or i32 %flags, -2147483648
  %conv = zext i32 %or8 to i64
  %desc11 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 4
  %call581 = call fastcc i64 @resource_type(%struct.resource* noundef %parent) #16
  %call682 = call fastcc i64 @resource_ext_type(%struct.resource* noundef %parent) #16
  %or83 = or i64 %call581, %conv
  %or1084 = or i64 %or83, %call682
  store i64 %or1084, i64* %flags7, align 8
  %desc85 = getelementptr inbounds %struct.resource, %struct.resource* %parent, i64 0, i32 4
  %5 = load i64, i64* %desc85, align 8
  store i64 %5, i64* %desc11, align 8
  %call1286 = call fastcc %struct.resource* @__request_resource(%struct.resource* noundef %parent, %struct.resource* noundef %res) #16
  %tobool.not87 = icmp eq %struct.resource* %call1286, null
  br i1 %tobool.not87, label %cleanup53, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %6 = and i32 %flags, 4194304
  %and29 = zext i32 %6 to i64
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 1
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %cleanup
  %call1289 = phi %struct.resource* [ %call1286, %if.end.lr.ph ], [ %call12, %cleanup ]
  %parent.addr.088 = phi %struct.resource* [ %parent, %if.end.lr.ph ], [ %parent.addr.1, %cleanup ]
  %desc13 = getelementptr inbounds %struct.resource, %struct.resource* %call1289, i64 0, i32 4
  %7 = load i64, i64* %desc13, align 8
  %cmp = icmp eq i64 %7, 6
  br i1 %cmp, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end
  %name16 = getelementptr inbounds %struct.resource, %struct.resource* %call1289, i64 0, i32 2
  %8 = load i8*, i8** %name16, align 8
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i64 0, i64 0), i8* noundef %8, %struct.resource* noundef nonnull %call1289, %struct.resource* noundef %res) #18
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end
  %cmp19.not = icmp ne %struct.resource* %call1289, %parent.addr.088
  %flags27.phi.trans.insert = getelementptr inbounds %struct.resource, %struct.resource* %call1289, i64 0, i32 3
  %.pre = load i64, i64* %flags27.phi.trans.insert, align 8
  %and = and i64 %.pre, 2147483648
  %tobool23.not = icmp eq i64 %and, 0
  %or.cond = select i1 %cmp19.not, i1 %tobool23.not, i1 false
  br i1 %or.cond, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end18
  %and30 = and i64 %.pre, %and29
  %tobool31.not = icmp eq i64 %and30, 0
  br i1 %tobool31.not, label %cleanup53, label %if.then32

if.then32:                                        ; preds = %if.end26
  call void @add_wait_queue(%struct.wait_queue_head* noundef nonnull @muxed_resource_wait, %struct.wait_queue_entry* noundef nonnull %wait) #15
  call fastcc void @__raw_write_unlock() #16
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void @schedule() #15
  call void @remove_wait_queue(%struct.wait_queue_head* noundef nonnull @muxed_resource_wait, %struct.wait_queue_entry* noundef nonnull %wait) #15
  call fastcc void @__raw_write_lock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then32
  %parent.addr.1 = phi %struct.resource* [ %parent.addr.088, %if.then32 ], [ %call1289, %if.end18 ]
  %call5 = call fastcc i64 @resource_type(%struct.resource* noundef %parent.addr.1) #16
  %call6 = call fastcc i64 @resource_ext_type(%struct.resource* noundef %parent.addr.1) #16
  %or = or i64 %call5, %conv
  %or10 = or i64 %or, %call6
  store i64 %or10, i64* %flags7, align 8
  %desc = getelementptr inbounds %struct.resource, %struct.resource* %parent.addr.1, i64 0, i32 4
  %9 = load i64, i64* %desc, align 8
  store i64 %9, i64* %desc11, align 8
  %call12 = call fastcc %struct.resource* @__request_resource(%struct.resource* noundef %parent.addr.1, %struct.resource* noundef %res) #16
  %tobool.not = icmp eq %struct.resource* %call12, null
  br i1 %tobool.not, label %cleanup53, label %if.end

cleanup53:                                        ; preds = %cleanup, %if.end26, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ -16, %if.end26 ], [ 0, %cleanup ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #17
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_resource(%struct.resource* noundef %res) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.resource* %res, null
  br i1 %tobool.not, label %if.end4, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.resource* %res to i8*
  %call = call fastcc %struct.page* @virt_to_head_page(i8* noundef nonnull %0) #16
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %call) #15
  %1 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i, align 8
  %3 = and i64 %2, 512
  %tobool2.not = icmp eq i64 %3, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call fastcc void @__raw_spin_lock() #15
  %4 = load %struct.resource*, %struct.resource** @bootmem_resource_free, align 8
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 6
  store %struct.resource* %4, %struct.resource** %sibling, align 8
  store %struct.resource* %res, %struct.resource** @bootmem_resource_free, align 8
  call fastcc void @__raw_spin_unlock() #15
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @kfree(i8* noundef nonnull %0) #15
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.else, %if.then3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__release_region(%struct.resource* nocapture noundef %parent, i64 noundef %start, i64 noundef %n) local_unnamed_addr #1 {
entry:
  %child = getelementptr inbounds %struct.resource, %struct.resource* %parent, i64 0, i32 7
  %add = add i64 %start, -1
  %sub = add i64 %add, %n
  call fastcc void @__raw_write_lock() #16
  %0 = load %struct.resource*, %struct.resource** %child, align 8
  %tobool.not56 = icmp eq %struct.resource* %0, null
  br i1 %tobool.not56, label %for.end, label %if.end

if.end:                                           ; preds = %entry, %cleanup
  %1 = phi %struct.resource* [ %7, %cleanup ], [ %0, %entry ]
  %p.057 = phi %struct.resource** [ %p.1, %cleanup ], [ %child, %entry ]
  %start1 = getelementptr inbounds %struct.resource, %struct.resource* %1, i64 0, i32 0
  %2 = load i64, i64* %start1, align 8
  %cmp.not = icmp ugt i64 %2, %start
  br i1 %cmp.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %end2 = getelementptr inbounds %struct.resource, %struct.resource* %1, i64 0, i32 1
  %3 = load i64, i64* %end2, align 8
  %cmp3.not = icmp ult i64 %3, %sub
  br i1 %cmp3.not, label %if.end20, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %1, i64 0, i32 3
  %4 = load i64, i64* %flags, align 8
  %and = and i64 %4, 2147483648
  %tobool5.not = icmp eq i64 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then4
  %child7 = getelementptr inbounds %struct.resource, %struct.resource* %1, i64 0, i32 7
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %cmp10.not = icmp eq i64 %2, %start
  %cmp12.not = icmp eq i64 %3, %sub
  %or.cond = select i1 %cmp10.not, i1 %cmp12.not, i1 false
  br i1 %or.cond, label %if.end14, label %for.end

if.end14:                                         ; preds = %if.end8
  %flags.le = getelementptr inbounds %struct.resource, %struct.resource* %1, i64 0, i32 3
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %1, i64 0, i32 6
  %5 = load %struct.resource*, %struct.resource** %sibling, align 8
  store %struct.resource* %5, %struct.resource** %p.057, align 8
  call fastcc void @__raw_write_unlock() #16
  %6 = load i64, i64* %flags.le, align 8
  %and16 = and i64 %6, 4194304
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %cleanup.thread49, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @muxed_resource_wait, i32 noundef 3, i32 noundef 1, i8* noundef null) #15
  br label %cleanup.thread49

cleanup.thread49:                                 ; preds = %if.end14, %if.then18
  call fastcc void @free_resource(%struct.resource* noundef nonnull %1) #16
  br label %cleanup22

if.end20:                                         ; preds = %land.lhs.true, %if.end
  %sibling21 = getelementptr inbounds %struct.resource, %struct.resource* %1, i64 0, i32 6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then6
  %p.1 = phi %struct.resource** [ %child7, %if.then6 ], [ %sibling21, %if.end20 ]
  %7 = load %struct.resource*, %struct.resource** %p.1, align 8
  %tobool.not = icmp eq %struct.resource* %7, null
  br i1 %tobool.not, label %for.end, label %if.end

for.end:                                          ; preds = %cleanup, %entry, %if.end8
  call fastcc void @__raw_write_unlock() #16
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i64 noundef %start, i64 noundef %sub) #18
  br label %cleanup22

cleanup22:                                        ; preds = %cleanup.thread49, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devm_request_resource(%struct.device* noundef %dev, %struct.resource* noundef %root, %struct.resource* noundef %new) local_unnamed_addr #1 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_resource_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0)) #15
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.resource**
  store %struct.resource* %new, %struct.resource** %0, align 8
  %call1 = call %struct.resource* @request_resource_conflict(%struct.resource* noundef %root, %struct.resource* noundef %new) #16
  %tobool2.not = icmp eq %struct.resource* %call1, null
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  %name = getelementptr inbounds %struct.resource, %struct.resource* %call1, i64 0, i32 2
  %1 = load i8*, i8** %name, align 8
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), %struct.resource* noundef %new, i8* noundef %1, %struct.resource* noundef nonnull %call1) #18
  call void @devres_free(i8* noundef nonnull %call) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end4 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_resource_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %ptr) #1 {
entry:
  %0 = bitcast i8* %ptr to %struct.resource**
  %1 = load %struct.resource*, %struct.resource** %0, align 8
  %call = call i32 @release_resource(%struct.resource* noundef %1) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devm_release_resource(%struct.device* noundef %dev, %struct.resource* noundef %new) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.resource* %new to i8*
  %call = call i32 @devres_release(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_resource_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_resource_match, i8* noundef %0) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/resource.c\22; .popsection; .long 14472b - 14470b; .short 1551; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(%struct.device* noundef, void (%struct.device*, i8*)* noundef, i32 (%struct.device*, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @devm_resource_match(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res, i8* noundef readnone %data) #7 {
entry:
  %0 = bitcast i8* %res to %struct.resource**
  %1 = load %struct.resource*, %struct.resource** %0, align 8
  %2 = bitcast i8* %data to %struct.resource*
  %cmp = icmp eq %struct.resource* %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.resource* @__devm_request_region(%struct.device* noundef %dev, %struct.resource* noundef %parent, i64 noundef %start, i64 noundef %n, i8* noundef %name) local_unnamed_addr #1 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_region_release, i64 noundef 24, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0)) #15
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %parent1 = bitcast i8* %call to %struct.resource**
  store %struct.resource* %parent, %struct.resource** %parent1, align 8
  %start2 = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %start2 to i64*
  store i64 %start, i64* %0, align 8
  %n3 = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %n3 to i64*
  store i64 %n, i64* %1, align 8
  %call4 = call %struct.resource* @__request_region(%struct.resource* noundef %parent, i64 noundef %start, i64 noundef %n, i8* noundef %name, i32 noundef 0) #16
  %tobool5.not = icmp eq %struct.resource* %call4, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.else, %entry
  %retval.0 = phi %struct.resource* [ null, %entry ], [ null, %if.else ], [ %call4, %if.then6 ]
  ret %struct.resource* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_region_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #1 {
entry:
  %parent = bitcast i8* %res to %struct.resource**
  %0 = load %struct.resource*, %struct.resource** %parent, align 8
  %start = getelementptr inbounds i8, i8* %res, i64 8
  %1 = bitcast i8* %start to i64*
  %2 = load i64, i64* %1, align 8
  %n = getelementptr inbounds i8, i8* %res, i64 16
  %3 = bitcast i8* %n to i64*
  %4 = load i64, i64* %3, align 8
  call void @__release_region(%struct.resource* noundef %0, i64 noundef %2, i64 noundef %4) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__devm_release_region(%struct.device* noundef %dev, %struct.resource* noundef %parent, i64 noundef %start, i64 noundef %n) local_unnamed_addr #1 {
entry:
  %match_data = alloca %struct.region_devres, align 8
  %0 = bitcast %struct.region_devres* %match_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #17
  %parent1 = getelementptr inbounds %struct.region_devres, %struct.region_devres* %match_data, i64 0, i32 0
  store %struct.resource* %parent, %struct.resource** %parent1, align 8
  %start2 = getelementptr inbounds %struct.region_devres, %struct.region_devres* %match_data, i64 0, i32 1
  store i64 %start, i64* %start2, align 8
  %n3 = getelementptr inbounds %struct.region_devres, %struct.region_devres* %match_data, i64 0, i32 2
  store i64 %n, i64* %n3, align 8
  call void @__release_region(%struct.resource* noundef %parent, i64 noundef %start, i64 noundef %n) #16
  %call = call i32 @devres_destroy(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_region_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_region_match, i8* noundef nonnull %0) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/resource.c\22; .popsection; .long 14472b - 14470b; .short 1609; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(%struct.device* noundef, void (%struct.device*, i8*)* noundef, i32 (%struct.device*, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @devm_region_match(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res, i8* nocapture noundef readonly %match_data) #7 {
entry:
  %parent = bitcast i8* %res to %struct.resource**
  %0 = load %struct.resource*, %struct.resource** %parent, align 8
  %parent1 = bitcast i8* %match_data to %struct.resource**
  %1 = load %struct.resource*, %struct.resource** %parent1, align 8
  %cmp = icmp eq %struct.resource* %0, %1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %start = getelementptr inbounds i8, i8* %res, i64 8
  %2 = bitcast i8* %start to i64*
  %3 = load i64, i64* %2, align 8
  %start2 = getelementptr inbounds i8, i8* %match_data, i64 8
  %4 = bitcast i8* %start2 to i64*
  %5 = load i64, i64* %4, align 8
  %cmp3 = icmp eq i64 %3, %5
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %n = getelementptr inbounds i8, i8* %res, i64 16
  %6 = bitcast i8* %n to i64*
  %7 = load i64, i64* %6, align 8
  %n4 = getelementptr inbounds i8, i8* %match_data, i64 16
  %8 = bitcast i8* %n4 to i64*
  %9 = load i64, i64* %8, align 8
  %cmp5 = icmp eq i64 %7, %9
  %phi.cast = zext i1 %cmp5 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %10 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %10
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @reserve_setup(i8* noundef %str) #0 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  %io_start = alloca i32, align 4
  %io_num = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = bitcast i32* %io_start to i8*
  %1 = bitcast i32* %io_num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %io_start, align 4, !annotation !9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #17
  store i32 0, i32* %io_num, align 4, !annotation !9
  %2 = load i32, i32* @reserve_setup.reserved, align 4
  %call39 = call i32 @get_option(i8** noundef nonnull %str.addr, i32* noundef nonnull %io_start) #15
  %cmp.not40 = icmp eq i32 %call39, 2
  br i1 %cmp.not40, label %if.end, label %for.end

if.end:                                           ; preds = %entry, %cleanup
  %3 = phi i32 [ %7, %cleanup ], [ %2, %entry ]
  %call1 = call i32 @get_option(i8** noundef nonnull %str.addr, i32* noundef nonnull %io_num) #15
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %for.end, label %if.end4

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %3, 4
  br i1 %cmp5, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr [4 x %struct.resource], [4 x %struct.resource]* @reserve_setup.reserve, i64 0, i64 %idx.ext
  %4 = load i32, i32* %io_start, align 4
  %cmp7 = icmp ult i32 %4, 65536
  %spec.select41 = select i1 %cmp7, %struct.resource* @ioport_resource, %struct.resource* @iomem_resource
  %5 = getelementptr [4 x %struct.resource], [4 x %struct.resource]* @reserve_setup.reserve, i64 0, i64 %idx.ext, i32 3
  %name = getelementptr [4 x %struct.resource], [4 x %struct.resource]* @reserve_setup.reserve, i64 0, i64 %idx.ext, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** %name, align 8
  %conv = zext i32 %4 to i64
  %start = getelementptr inbounds %struct.resource, %struct.resource* %add.ptr, i64 0, i32 0
  store i64 %conv, i64* %start, align 8
  %6 = load i32, i32* %io_num, align 4
  %add = add i32 %4, -1
  %sub = add i32 %add, %6
  %conv11 = zext i32 %sub to i64
  %end = getelementptr [4 x %struct.resource], [4 x %struct.resource]* @reserve_setup.reserve, i64 0, i64 %idx.ext, i32 1
  store i64 %conv11, i64* %end, align 8
  %or = select i1 %cmp7, i64 2147483904, i64 2147484160
  store i64 %or, i64* %5, align 8
  %desc = getelementptr [4 x %struct.resource], [4 x %struct.resource]* @reserve_setup.reserve, i64 0, i64 %idx.ext, i32 4
  store i64 0, i64* %desc, align 8
  %child = getelementptr [4 x %struct.resource], [4 x %struct.resource]* @reserve_setup.reserve, i64 0, i64 %idx.ext, i32 7
  store %struct.resource* null, %struct.resource** %child, align 8
  %call13 = call i32 @request_resource(%struct.resource* noundef nonnull %spec.select41, %struct.resource* noundef %add.ptr) #16
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %cleanup

if.then16:                                        ; preds = %if.then6
  %add17 = add nsw i32 %3, 1
  store i32 %add17, i32* @reserve_setup.reserved, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then16, %if.then6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %io_start, align 4, !annotation !9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #17
  store i32 0, i32* %io_num, align 4, !annotation !9
  %7 = load i32, i32* @reserve_setup.reserved, align 4
  %call = call i32 @get_option(i8** noundef nonnull %str.addr, i32* noundef nonnull %io_start) #15
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %for.end

for.end:                                          ; preds = %if.end, %cleanup, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @iomem_map_sanity_check(i64 noundef %addr, i64 noundef %size) local_unnamed_addr #1 {
entry:
  %l = alloca i64, align 8
  %0 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %l, align 8, !annotation !9
  call fastcc void @__raw_read_lock() #16
  %1 = load %struct.resource*, %struct.resource** getelementptr inbounds (%struct.resource, %struct.resource* @iomem_resource, i64 0, i32 7), align 8
  %tobool.not40 = icmp eq %struct.resource* %1, null
  br i1 %tobool.not40, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add = add i64 %size, %addr
  %shr5 = lshr i64 %addr, 12
  %sub = add i64 %add, -1
  %shr10 = lshr i64 %sub, 12
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %p.041 = phi %struct.resource* [ %1, %for.body.lr.ph ], [ %7, %for.inc ]
  %start = getelementptr inbounds %struct.resource, %struct.resource* %p.041, i64 0, i32 0
  %2 = load i64, i64* %start, align 8
  %cmp.not = icmp ult i64 %2, %add
  br i1 %cmp.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %end = getelementptr inbounds %struct.resource, %struct.resource* %p.041, i64 0, i32 1
  %3 = load i64, i64* %end, align 8
  %cmp1 = icmp ult i64 %3, %addr
  br i1 %cmp1, label %for.inc, label %if.end3

if.end3:                                          ; preds = %if.end
  %shr = lshr i64 %2, 12
  %cmp6.not = icmp ugt i64 %shr, %shr5
  %shr8 = lshr i64 %3, 12
  %cmp11.not = icmp ult i64 %shr8, %shr10
  %or.cond = select i1 %cmp6.not, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %if.end13, label %for.inc

if.end13:                                         ; preds = %if.end3
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %p.041, i64 0, i32 3
  %4 = load i64, i64* %flags, align 8
  %and = and i64 %4, 2147483648
  %tobool14.not = icmp eq i64 %and, 0
  br i1 %tobool14.not, label %do.end, label %for.inc

do.end:                                           ; preds = %if.end13
  %name = getelementptr inbounds %struct.resource, %struct.resource* %p.041, i64 0, i32 2
  %5 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.9, i64 0, i64 0), i64 noundef %addr, i64 noundef %sub, i8* noundef %5, %struct.resource* noundef nonnull %p.041) #18
  br label %for.end

for.inc:                                          ; preds = %if.end3, %if.end13, %if.end, %for.body
  %6 = bitcast %struct.resource* %p.041 to i8*
  %call19 = call i8* @r_next(%struct.seq_file* noundef null, i8* noundef nonnull %6, i64* noundef nonnull %l) #16
  %7 = bitcast i8* %call19 to %struct.resource*
  %tobool.not = icmp eq i8* %call19, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry, %do.end
  %err.0 = phi i32 [ -1, %do.end ], [ 0, %entry ], [ 0, %for.inc ]
  call fastcc void @__raw_read_unlock() #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %err.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal i8* @r_next(%struct.seq_file* nocapture noundef readnone %m, i8* nocapture noundef readonly %v, i64* nocapture noundef %pos) #3 {
entry:
  %0 = bitcast i8* %v to %struct.resource*
  %1 = load i64, i64* %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %pos, align 8
  %call = call fastcc %struct.resource* @next_resource(%struct.resource* noundef %0) #16
  %2 = bitcast %struct.resource* %call to i8*
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @iomem_is_exclusive(i64 noundef %addr) local_unnamed_addr #1 {
entry:
  %l = alloca i64, align 8
  %0 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %l, align 8, !annotation !9
  %.b = load i1, i1* @strict_iomem_checks, align 4
  br i1 %.b, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and = and i64 %addr, -4096
  call fastcc void @__raw_read_lock() #16
  %1 = load %struct.resource*, %struct.resource** getelementptr inbounds (%struct.resource, %struct.resource* @iomem_resource, i64 0, i32 7), align 8
  %tobool1.not33 = icmp eq %struct.resource* %1, null
  br i1 %tobool1.not33, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %add = add i64 %and, 4096
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %p.034 = phi %struct.resource* [ %1, %for.body.lr.ph ], [ %7, %for.inc ]
  %start = getelementptr inbounds %struct.resource, %struct.resource* %p.034, i64 0, i32 0
  %2 = load i64, i64* %start, align 8
  %cmp.not = icmp ult i64 %2, %add
  br i1 %cmp.not, label %if.end4, label %for.end

if.end4:                                          ; preds = %for.body
  %end = getelementptr inbounds %struct.resource, %struct.resource* %p.034, i64 0, i32 1
  %3 = load i64, i64* %end, align 8
  %cmp5 = icmp ult i64 %3, %and
  br i1 %cmp5, label %for.inc, label %if.end8

if.end8:                                          ; preds = %if.end4
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %p.034, i64 0, i32 3
  %4 = load i64, i64* %flags, align 8
  %5 = and i64 %4, 2281701376
  %.not = icmp eq i64 %5, 2281701376
  br i1 %.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end8, %if.end4
  %6 = bitcast %struct.resource* %p.034 to i8*
  %call = call i8* @r_next(%struct.seq_file* noundef null, i8* noundef nonnull %6, i64* noundef nonnull %l) #16
  %7 = bitcast i8* %call to %struct.resource*
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %if.end8, %if.end
  %err.0.off0 = phi i1 [ false, %if.end ], [ true, %if.end8 ], [ false, %for.body ], [ false, %for.inc ]
  call fastcc void @__raw_read_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i1 [ %err.0.off0, %for.end ], [ false, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.resource_entry* @resource_list_create_entry(%struct.resource* noundef %res, i64 noundef %extra_size) local_unnamed_addr #1 {
entry:
  %add = add i64 %extra_size, 96
  %call = call fastcc i8* @kzalloc(i64 noundef %add, i32 noundef 3264) #16
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %node = bitcast i8* %call to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %node) #16
  %tobool2.not = icmp eq %struct.resource* %res, null
  %__res = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %__res to %struct.resource*
  %cond = select i1 %tobool2.not, %struct.resource* %0, %struct.resource* %res
  %res3 = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %res3 to %struct.resource**
  store %struct.resource* %cond, %struct.resource** %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = bitcast i8* %call to %struct.resource_entry*
  ret %struct.resource_entry* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size, i32 noundef %flags) unnamed_addr #1 {
entry:
  %or = or i32 %flags, 256
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef %or) #15
  ret i8* %call10.i
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @resource_list_free(%struct.list_head* noundef readonly %head) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.list_head* %head to %struct.resource_entry**
  %1 = load %struct.resource_entry*, %struct.resource_entry** %0, align 8
  %node1028 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %1, i64 0, i32 0
  %cmp.not29 = icmp eq %struct.list_head* %node1028, %head
  br i1 %cmp.not29, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %entry1.030 = phi %struct.resource_entry* [ %tmp.0, %for.body ], [ %1, %entry ]
  %tmp.0.in = bitcast %struct.resource_entry* %entry1.030 to %struct.resource_entry**
  %tmp.0 = load %struct.resource_entry*, %struct.resource_entry** %tmp.0.in, align 8
  call fastcc void @resource_list_destroy_entry(%struct.resource_entry* noundef %entry1.030) #16
  %node10 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %tmp.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node10, %head
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @resource_list_destroy_entry(%struct.resource_entry* noundef %entry1) unnamed_addr #1 {
entry:
  call fastcc void @resource_list_del(%struct.resource_entry* noundef %entry1) #16
  call fastcc void @resource_list_free_entry(%struct.resource_entry* noundef %entry1) #16
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @iomem_init_inode() #0 section ".init.text" {
entry:
  %call = call i32 @simple_pin_fs(%struct.file_system_type* noundef nonnull @iomem_fs_type, %struct.vfsmount** noundef nonnull @iomem_init_inode.iomem_vfs_mount, i32* noundef nonnull @iomem_init_inode.iomem_fs_cnt) #15
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load %struct.vfsmount*, %struct.vfsmount** @iomem_init_inode.iomem_vfs_mount, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 1
  %1 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %call2 = call %struct.inode* @alloc_anon_inode(%struct.super_block* noundef %1) #15
  %2 = bitcast %struct.inode* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %2) #16
  br i1 %call3, label %if.then4, label %do.body12

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i64 @PTR_ERR(i8* noundef %2) #16
  %conv = trunc i64 %call5 to i32
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv) #18
  call void @simple_release_fs(%struct.vfsmount** noundef nonnull @iomem_init_inode.iomem_vfs_mount, i32* noundef nonnull @iomem_init_inode.iomem_fs_cnt) #15
  br label %cleanup

do.body12:                                        ; preds = %if.end
  %3 = ptrtoint %struct.inode* %call2 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.inode** nonnull elementtype(%struct.inode*) @iomem_inode, i64 %3) #17, !srcloc !22
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %if.then4, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %conv, %if.then4 ], [ 0, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @strict_iomem(i8* noundef %str) #0 section ".init.text" {
entry:
  %call = call i8* @strstr(i8* noundef %str, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0)) #15
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* @strict_iomem_checks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i8* @strstr(i8* noundef %str, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #15
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i1 true, i1* @strict_iomem_checks, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, %struct.seq_operations* noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @r_start(%struct.seq_file* nocapture noundef readonly %m, i64* nocapture noundef readonly %pos) #1 {
entry:
  %l = alloca i64, align 8
  %file = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 10
  %0 = load %struct.file*, %struct.file** %file, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %0) #16
  %call1 = call i8* @PDE_DATA(%struct.inode* noundef %call) #15
  %1 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %l, align 8
  call fastcc void @__raw_read_lock() #16
  %child = getelementptr inbounds i8, i8* %call1, i64 56
  %2 = bitcast i8* %child to %struct.resource**
  %3 = load %struct.resource*, %struct.resource** %2, align 8
  %tobool.not8 = icmp eq %struct.resource* %3, null
  br i1 %tobool.not8, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %4 = load i64, i64* %pos, align 8
  %cmp12 = icmp sgt i64 %4, 0
  br i1 %cmp12, label %for.inc, label %for.end

for.inc:                                          ; preds = %land.rhs.preheader, %for.inc.land.rhs_crit_edge
  %p.0913 = phi %struct.resource* [ %6, %for.inc.land.rhs_crit_edge ], [ %3, %land.rhs.preheader ]
  %5 = bitcast %struct.resource* %p.0913 to i8*
  %call2 = call i8* @r_next(%struct.seq_file* noundef %m, i8* noundef nonnull %5, i64* noundef nonnull %l) #16
  %tobool.not = icmp eq i8* %call2, null
  br i1 %tobool.not, label %for.end, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  %6 = bitcast i8* %call2 to %struct.resource*
  %.pre = load i64, i64* %l, align 8
  %7 = load i64, i64* %pos, align 8
  %cmp = icmp slt i64 %.pre, %7
  br i1 %cmp, label %for.inc, label %for.end.loopexit.split.loop.exit

for.end.loopexit.split.loop.exit:                 ; preds = %for.inc.land.rhs_crit_edge
  %8 = bitcast i8* %call2 to %struct.resource*
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit, %for.inc, %land.rhs.preheader, %entry
  %p.0.lcssa = phi %struct.resource* [ null, %entry ], [ %3, %land.rhs.preheader ], [ %8, %for.end.loopexit.split.loop.exit ], [ null, %for.inc ]
  %9 = bitcast %struct.resource* %p.0.lcssa to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  ret i8* %9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @r_stop(%struct.seq_file* nocapture noundef readnone %m, i8* nocapture noundef readnone %v) #1 {
entry:
  call fastcc void @__raw_read_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @r_show(%struct.seq_file* noundef %m, i8* nocapture noundef readonly %v) #1 {
entry:
  %file = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 10
  %0 = load %struct.file*, %struct.file** %file, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %0) #16
  %call1 = call i8* @PDE_DATA(%struct.inode* noundef %call) #15
  %1 = bitcast i8* %call1 to %struct.resource*
  %end2 = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %end2 to i64*
  %3 = load i64, i64* %2, align 8
  %parent = getelementptr inbounds i8, i8* %v, i64 40
  %4 = bitcast i8* %parent to %struct.resource**
  %5 = load %struct.resource*, %struct.resource** %4, align 8
  %cmp4 = icmp eq %struct.resource* %5, %1
  br i1 %cmp4, label %for.end, label %for.inc

for.inc:                                          ; preds = %entry
  %parent.1 = getelementptr inbounds %struct.resource, %struct.resource* %5, i64 0, i32 5
  %6 = load %struct.resource*, %struct.resource** %parent.1, align 8
  %cmp4.1 = icmp eq %struct.resource* %6, %1
  br i1 %cmp4.1, label %for.end, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %parent.2 = getelementptr inbounds %struct.resource, %struct.resource* %6, i64 0, i32 5
  %7 = load %struct.resource*, %struct.resource** %parent.2, align 8
  %cmp4.2 = icmp eq %struct.resource* %7, %1
  br i1 %cmp4.2, label %for.end, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %parent.3 = getelementptr inbounds %struct.resource, %struct.resource* %7, i64 0, i32 5
  %8 = load %struct.resource*, %struct.resource** %parent.3, align 8
  %cmp4.3 = icmp eq %struct.resource* %8, %1
  br i1 %cmp4.3, label %for.end, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %parent.4 = getelementptr inbounds %struct.resource, %struct.resource* %8, i64 0, i32 5
  %9 = load %struct.resource*, %struct.resource** %parent.4, align 8
  %cmp4.4 = icmp eq %struct.resource* %9, %1
  %spec.select35 = select i1 %cmp4.4, i32 8, i32 10
  br label %for.end

for.end:                                          ; preds = %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %entry
  %depth.0.lcssa = phi i32 [ 0, %entry ], [ 2, %for.inc ], [ 4, %for.inc.1 ], [ 6, %for.inc.2 ], [ %spec.select35, %for.inc.3 ]
  %10 = load %struct.file*, %struct.file** %file, align 8
  %call7 = call i1 @file_ns_capable(%struct.file* noundef %10, %struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef 21) #15
  br i1 %call7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %for.end
  %start9 = bitcast i8* %v to i64*
  %11 = load i64, i64* %start9, align 8
  %end10 = getelementptr inbounds i8, i8* %v, i64 8
  %12 = bitcast i8* %end10 to i64*
  %13 = load i64, i64* %12, align 8
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then8
  %start.0 = phi i64 [ %11, %if.then8 ], [ 0, %for.end ]
  %end.0 = phi i64 [ %13, %if.then8 ], [ 0, %for.end ]
  %name = getelementptr inbounds i8, i8* %v, i64 16
  %14 = bitcast i8* %name to i8**
  %15 = load i8*, i8** %14, align 8
  %tobool.not = icmp eq i8* %15, null
  %spec.select = select i1 %tobool.not, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %15
  %cmp = icmp ult i64 %3, 65536
  %cond = select i1 %cmp, i32 4, i32 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 noundef %depth.0.lcssa, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 noundef %cond, i64 noundef %start.0, i32 noundef %cond, i64 noundef %end.0, i8* noundef %spec.select) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @PDE_DATA(%struct.inode* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #7 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @file_ns_capable(%struct.file* noundef, %struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_lock() unnamed_addr #1 {
entry:
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.rwlock_t* @resource_lock to i8*), i32 noundef 0, i32 noundef 255) #15
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup, label %if.end, !prof !12

if.end:                                           ; preds = %entry
  call void @queued_write_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @resource_lock, i64 0, i32 0)) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_write_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #17, !srcloc !23
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.rwlock_t* @resource_lock to i8*), i8 0) #17, !srcloc !24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.resource* @next_resource(%struct.resource* nocapture noundef readonly %p) unnamed_addr #11 {
entry:
  %child = getelementptr inbounds %struct.resource, %struct.resource* %p, i64 0, i32 7
  %0 = load %struct.resource*, %struct.resource** %child, align 8
  %tobool.not = icmp eq %struct.resource* %0, null
  br i1 %tobool.not, label %while.cond, label %return

while.cond:                                       ; preds = %entry, %land.rhs
  %p.addr.0 = phi %struct.resource* [ %2, %land.rhs ], [ %p, %entry ]
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %p.addr.0, i64 0, i32 6
  %1 = load %struct.resource*, %struct.resource** %sibling, align 8
  %tobool2.not = icmp eq %struct.resource* %1, null
  br i1 %tobool2.not, label %land.rhs, label %return

land.rhs:                                         ; preds = %while.cond
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %p.addr.0, i64 0, i32 5
  %2 = load %struct.resource*, %struct.resource** %parent, align 8
  %tobool3.not = icmp eq %struct.resource* %2, null
  br i1 %tobool3.not, label %return, label %while.cond

return:                                           ; preds = %land.rhs, %while.cond, %entry
  %retval.0 = phi %struct.resource* [ %0, %entry ], [ null, %land.rhs ], [ %1, %while.cond ]
  ret %struct.resource* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock() unnamed_addr #1 {
entry:
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire() #15
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !12

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @resource_lock, i64 0, i32 0)) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire() unnamed_addr #1 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @resource_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @resource_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #17, !srcloc !25
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @resource_overlaps(%struct.resource* nocapture noundef readonly %r1, %struct.resource* nocapture noundef readonly %r2) unnamed_addr #7 {
entry:
  %start = getelementptr inbounds %struct.resource, %struct.resource* %r1, i64 0, i32 0
  %0 = load i64, i64* %start, align 8
  %end = getelementptr inbounds %struct.resource, %struct.resource* %r2, i64 0, i32 1
  %1 = load i64, i64* %end, align 8
  %cmp.not = icmp ugt i64 %0, %1
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %end1 = getelementptr inbounds %struct.resource, %struct.resource* %r1, i64 0, i32 1
  %2 = load i64, i64* %end1, align 8
  %start2 = getelementptr inbounds %struct.resource, %struct.resource* %r2, i64 0, i32 0
  %3 = load i64, i64* %start2, align 8
  %cmp3 = icmp uge i64 %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__ll_sc_atomic_sub_return_release() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release() unnamed_addr #1 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @resource_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @resource_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #17, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__find_resource(%struct.resource* nocapture noundef readonly %root, %struct.resource* noundef readonly %old, %struct.resource* nocapture noundef %new, i64 noundef %size, %struct.resource_constraint* nocapture noundef readonly %constraint) unnamed_addr #1 {
entry:
  %tmp = alloca %struct.resource, align 8
  %avail = alloca %struct.resource, align 8
  %alloc = alloca %struct.resource, align 8
  %child = getelementptr inbounds %struct.resource, %struct.resource* %root, i64 0, i32 7
  %0 = load %struct.resource*, %struct.resource** %child, align 8
  %1 = bitcast %struct.resource* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #17
  %2 = bitcast %struct.resource* %new to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %1, i8* noundef align 8 dereferenceable(64) %2, i64 64, i1 false)
  %3 = bitcast %struct.resource* %avail to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false), !annotation !9
  %4 = bitcast %struct.resource* %alloc to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false), !annotation !9
  %start = getelementptr inbounds %struct.resource, %struct.resource* %root, i64 0, i32 0
  %5 = load i64, i64* %start, align 8
  %start1 = getelementptr inbounds %struct.resource, %struct.resource* %tmp, i64 0, i32 0
  store i64 %5, i64* %start1, align 8
  %tobool.not = icmp eq %struct.resource* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %start2 = getelementptr inbounds %struct.resource, %struct.resource* %0, i64 0, i32 0
  %6 = load i64, i64* %start2, align 8
  %cmp = icmp eq i64 %6, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %cmp4 = icmp eq %struct.resource* %0, %old
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %start5 = getelementptr inbounds %struct.resource, %struct.resource* %old, i64 0, i32 0
  %7 = load i64, i64* %start5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %end = getelementptr inbounds %struct.resource, %struct.resource* %0, i64 0, i32 1
  %8 = load i64, i64* %end, align 8
  %add = add i64 %8, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %add, %cond.false ]
  store i64 %cond, i64* %start1, align 8
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %0, i64 0, i32 6
  %9 = load %struct.resource*, %struct.resource** %sibling, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  %this.0 = phi %struct.resource* [ %9, %cond.end ], [ %0, %land.lhs.true ], [ null, %entry ]
  %end20 = getelementptr inbounds %struct.resource, %struct.resource* %tmp, i64 0, i32 1
  %end17 = getelementptr inbounds %struct.resource, %struct.resource* %root, i64 0, i32 1
  %min = getelementptr inbounds %struct.resource_constraint, %struct.resource_constraint* %constraint, i64 0, i32 0
  %max = getelementptr inbounds %struct.resource_constraint, %struct.resource_constraint* %constraint, i64 0, i32 1
  %align = getelementptr inbounds %struct.resource_constraint, %struct.resource_constraint* %constraint, i64 0, i32 2
  %start30 = getelementptr inbounds %struct.resource, %struct.resource* %avail, i64 0, i32 0
  %end32 = getelementptr inbounds %struct.resource, %struct.resource* %avail, i64 0, i32 1
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 3
  %flags34 = getelementptr inbounds %struct.resource, %struct.resource* %avail, i64 0, i32 3
  %flags40 = getelementptr inbounds %struct.resource, %struct.resource* %alloc, i64 0, i32 3
  %alignf = getelementptr inbounds %struct.resource_constraint, %struct.resource_constraint* %constraint, i64 0, i32 3
  %alignf_data = getelementptr inbounds %struct.resource_constraint, %struct.resource_constraint* %constraint, i64 0, i32 4
  %start42 = getelementptr inbounds %struct.resource, %struct.resource* %alloc, i64 0, i32 0
  %add44 = add i64 %size, -1
  %end46 = getelementptr inbounds %struct.resource, %struct.resource* %alloc, i64 0, i32 1
  %end11 = getelementptr inbounds %struct.resource, %struct.resource* %old, i64 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end70, %if.end
  %this.1 = phi %struct.resource* [ %this.0, %if.end ], [ %24, %if.end70 ]
  %tobool7.not = icmp eq %struct.resource* %this.1, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %for.cond
  %cmp9 = icmp eq %struct.resource* %this.1, %old
  br i1 %cmp9, label %cond.true10, label %cond.false12

cond.true10:                                      ; preds = %if.then8
  %10 = load i64, i64* %end11, align 8
  br label %if.end19

cond.false12:                                     ; preds = %if.then8
  %start13 = getelementptr inbounds %struct.resource, %struct.resource* %this.1, i64 0, i32 0
  %11 = load i64, i64* %start13, align 8
  %sub = add i64 %11, -1
  br label %if.end19

if.else:                                          ; preds = %for.cond
  %12 = load i64, i64* %end17, align 8
  br label %if.end19

if.end19:                                         ; preds = %cond.true10, %cond.false12, %if.else
  %storemerge = phi i64 [ %12, %if.else ], [ %10, %cond.true10 ], [ %sub, %cond.false12 ]
  store i64 %storemerge, i64* %end20, align 8
  %13 = load i64, i64* %start1, align 8
  %cmp22 = icmp ult i64 %storemerge, %13
  br i1 %cmp22, label %next, label %if.end24

if.end24:                                         ; preds = %if.end19
  %14 = load i64, i64* %min, align 8
  %15 = load i64, i64* %max, align 8
  call fastcc void @resource_clip(%struct.resource* noundef nonnull %tmp, i64 noundef %14, i64 noundef %15) #16
  call void @arch_remove_reservations(%struct.resource* noundef nonnull %tmp) #16
  %16 = load i64, i64* %start1, align 8
  %17 = load i64, i64* %align, align 8
  %sub26 = add i64 %16, -1
  %add27 = add i64 %sub26, %17
  %neg = sub i64 0, %17
  %and = and i64 %add27, %neg
  store i64 %and, i64* %start30, align 8
  %18 = load i64, i64* %end20, align 8
  store i64 %18, i64* %end32, align 8
  %19 = load i64, i64* %flags, align 8
  %and33 = and i64 %19, -536870913
  store i64 %and33, i64* %flags34, align 8
  %cmp37.not = icmp ult i64 %and, %16
  br i1 %cmp37.not, label %next, label %if.then38

if.then38:                                        ; preds = %if.end24
  store i64 %and33, i64* %flags40, align 8
  %20 = load i64 (i8*, %struct.resource*, i64, i64)*, i64 (i8*, %struct.resource*, i64, i64)** %alignf, align 8
  %21 = load i8*, i8** %alignf_data, align 8
  %call = call i64 %20(i8* noundef %21, %struct.resource* noundef nonnull %avail, i64 noundef %size, i64 noundef %17) #15
  store i64 %call, i64* %start42, align 8
  %sub45 = add i64 %add44, %call
  store i64 %sub45, i64* %end46, align 8
  %cmp49.not = icmp ugt i64 %call, %sub45
  br i1 %cmp49.not, label %next, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %if.then38
  %call51 = call fastcc i1 @resource_contains(%struct.resource* noundef nonnull %avail, %struct.resource* noundef nonnull %alloc) #16
  br i1 %call51, label %if.then52, label %next

if.then52:                                        ; preds = %land.lhs.true50
  %start54 = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 0
  store i64 %call, i64* %start54, align 8
  %end56 = getelementptr inbounds %struct.resource, %struct.resource* %new, i64 0, i32 1
  store i64 %sub45, i64* %end56, align 8
  br label %cleanup

next:                                             ; preds = %if.end24, %land.lhs.true50, %if.then38, %if.end19
  br i1 %tobool7.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %next
  %end60 = getelementptr inbounds %struct.resource, %struct.resource* %this.1, i64 0, i32 1
  %22 = load i64, i64* %end60, align 8
  %23 = load i64, i64* %end17, align 8
  %cmp62 = icmp eq i64 %22, %23
  br i1 %cmp62, label %cleanup, label %if.end64

if.end64:                                         ; preds = %lor.lhs.false
  %cmp65.not = icmp eq %struct.resource* %this.1, %old
  br i1 %cmp65.not, label %if.end70, label %if.then66

if.then66:                                        ; preds = %if.end64
  %add68 = add i64 %22, 1
  store i64 %add68, i64* %start1, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.end64
  %sibling71 = getelementptr inbounds %struct.resource, %struct.resource* %this.1, i64 0, i32 6
  %24 = load %struct.resource*, %struct.resource** %sibling71, align 8
  br label %for.cond

cleanup:                                          ; preds = %lor.lhs.false, %next, %if.then52
  %retval.0 = phi i32 [ 0, %if.then52 ], [ -16, %next ], [ -16, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #17
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #17
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @resource_contains(%struct.resource* nocapture noundef readonly %r1, %struct.resource* nocapture noundef readonly %r2) unnamed_addr #7 {
entry:
  %call = call fastcc i64 @resource_type(%struct.resource* noundef %r1) #16
  %call1 = call fastcc i64 @resource_type(%struct.resource* noundef %r2) #16
  %cmp.not = icmp eq i64 %call, %call1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %r1, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 536870912
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %if.end
  %flags2 = getelementptr inbounds %struct.resource, %struct.resource* %r2, i64 0, i32 3
  %1 = load i64, i64* %flags2, align 8
  %and3 = and i64 %1, 536870912
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %return

if.end6:                                          ; preds = %lor.lhs.false
  %start = getelementptr inbounds %struct.resource, %struct.resource* %r1, i64 0, i32 0
  %2 = load i64, i64* %start, align 8
  %start7 = getelementptr inbounds %struct.resource, %struct.resource* %r2, i64 0, i32 0
  %3 = load i64, i64* %start7, align 8
  %cmp8.not = icmp ugt i64 %2, %3
  br i1 %cmp8.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.end6
  %end = getelementptr inbounds %struct.resource, %struct.resource* %r1, i64 0, i32 1
  %4 = load i64, i64* %end, align 8
  %end9 = getelementptr inbounds %struct.resource, %struct.resource* %r2, i64 0, i32 1
  %5 = load i64, i64* %end9, align 8
  %cmp10 = icmp uge i64 %4, %5
  br label %return

return:                                           ; preds = %if.end6, %land.rhs, %if.end, %lor.lhs.false, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %lor.lhs.false ], [ false, %if.end ], [ false, %if.end6 ], [ %cmp10, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @resource_clip(%struct.resource* nocapture noundef %res, i64 noundef %min, i64 noundef %max) unnamed_addr #13 {
entry:
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %0 = load i64, i64* %start, align 8
  %cmp = icmp ult i64 %0, %min
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %min, i64* %start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %end = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  %1 = load i64, i64* %end, align 8
  %cmp2 = icmp ugt i64 %1, %max
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  store i64 %max, i64* %end, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @resource_type(%struct.resource* nocapture noundef readonly %res) unnamed_addr #7 {
entry:
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 7936
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  call fastcc void @do_raw_spin_lock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #1 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.spinlock* @bootmem_resource_lock to i8*), i32 noundef 0, i32 noundef 1) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bootmem_resource_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock() #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @bootmem_resource_lock to i8*), i8 0) #17, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @resource_ext_type(%struct.resource* nocapture noundef readonly %res) unnamed_addr #7 {
entry:
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 16777216
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.page* @virt_to_head_page(i8* noundef %x) unnamed_addr #14 {
entry:
  %0 = ptrtoint i8* %x to i64
  %sub = add i64 %0, 549755813888
  %1 = lshr i64 %sub, 6
  %mul = and i64 %1, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %2 = inttoptr i64 %add to %struct.page*
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %2) #16
  %3 = inttoptr i64 %call to %struct.page*
  ret %struct.page* %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #14 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.4* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(i8** noundef, i32* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @resource_list_del(%struct.resource_entry* nocapture noundef %entry1) unnamed_addr #10 {
entry:
  %node = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %entry1, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %node) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @resource_list_free_entry(%struct.resource_entry* noundef %entry1) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.resource_entry* %entry1 to i8*
  call void @kfree(i8* noundef %0) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #10 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #16
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #10 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_pin_fs(%struct.file_system_type* noundef, %struct.vfsmount** noundef, i32* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @alloc_anon_inode(%struct.super_block* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_release_fs(%struct.vfsmount** noundef, i32* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @iomem_fs_init_fs_context(%struct.fs_context* noundef %fc) #1 {
entry:
  %call = call %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context* noundef %fc, i64 noundef 1162691661) #15
  %tobool.not = icmp eq %struct.pseudo_fs_context* %call, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(%struct.super_block* noundef) #9

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context* noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #9

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { cold nobuiltin nounwind "no-builtins" }
attributes #19 = { cold nobuiltin "no-builtins" }
attributes #20 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149613981}
!8 = !{i64 2149621517}
!9 = !{!"auto-init"}
!10 = !{i64 2149569928}
!11 = !{i64 2149624882}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2153185274}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2153187351}
!16 = !{i64 2153190624}
!17 = !{i64 2153194401}
!18 = !{i64 1334914}
!19 = !{i64 2153200424}
!20 = !{i64 2153204563}
!21 = !{i64 2153210924}
!22 = !{i64 2153224627}
!23 = !{i64 2148062317, i64 2148062350, i64 2148062403, i64 2148062462, i64 2148062496, i64 2148062551, i64 2148062580, i64 2148062600}
!24 = !{i64 2149485212}
!25 = !{i64 2147965278, i64 2147965944, i64 2147965974, i64 2147966007, i64 2147966041, i64 2147966076, i64 2147966101}
!26 = !{i64 2147976026, i64 2147976692, i64 2147976722, i64 2147976754, i64 2147976788, i64 2147976824, i64 2147976849}
!27 = !{i64 2149521419}
!28 = !{i64 2149528700}
!29 = !{i64 2149320930}
