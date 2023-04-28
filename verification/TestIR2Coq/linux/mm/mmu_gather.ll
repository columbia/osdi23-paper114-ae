; ModuleID = 'mm/mmu_gather.c'
source_filename = "mm/mmu_gather.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mmu_gather = type { %struct.mm_struct*, %struct.mmu_table_batch*, i64, i64, i16, i32, %struct.mmu_gather_batch*, %struct.mmu_gather_batch, [8 x %struct.page*] }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgprot_t = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.1, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.1 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.50, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.24, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.24 = type { i32 }
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
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.kuid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.36 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.36 = type { %struct.callback_head }
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
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
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
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.15, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.79, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.52, %struct.list_head, %struct.list_head, %union.anon.53 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.9, i8* }
%union.anon.9 = type { i64 }
%struct.lockref = type { %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.52 = type { %struct.list_head }
%union.anon.53 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.54 }
%union.anon.54 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.55, %union.anon.56 }
%union.anon.55 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.56 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.60 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.58, %struct.qspinlock }
%union.anon.58 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.60 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.79 = type { %struct.pipe_inode_info* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.14, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.14 = type { %struct.kernfs_elem_dir }
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
%struct.lock_class_key = type {}
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.16, %union.anon.17, %union.anon.18, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.23, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.16 = type { %struct.hlist_node }
%union.anon.17 = type { %struct.rb_node }
%union.anon.18 = type { %struct.anon.22 }
%struct.anon.22 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.23 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.20, %union.anon.21, i32 }
%union.anon.20 = type { %struct.list_head }
%union.anon.21 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type opaque
%struct.blk_mq_ctx = type opaque
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.blk_mq_tag_set = type opaque
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.13, i32 }
%union.anon.13 = type { %struct.kuid_t }
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
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.15 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.49, i32, [12 x i8] }
%union.anon.49 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.51, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.51 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33, [48 x i8] }
%struct.anon.33 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.file = type { %union.anon.8, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.mmu_table_batch = type { %struct.callback_head, i32, [0 x i8*] }
%struct.mmu_gather_batch = type { %struct.mmu_gather_batch*, i32, i32, [0 x %struct.page*] }
%struct.page = type { i64, %union.anon.2, %union.anon.75, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.75 = type { %struct.atomic_t }

@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @__tlb_remove_page_size(%struct.mmu_gather* nocapture noundef %tlb, %struct.page* noundef %page, i32 noundef %page_size) local_unnamed_addr #0 {
entry:
  %active = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 6
  %0 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %active, align 8
  %nr = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %0, i64 0, i32 1
  %1 = load i32, i32* %nr, align 8
  %inc = add i32 %1, 1
  store i32 %inc, i32* %nr, align 8
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr %struct.mmu_gather_batch, %struct.mmu_gather_batch* %0, i64 0, i32 3, i64 %idxprom
  store %struct.page* %page, %struct.page** %arrayidx, align 8
  %max = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %0, i64 0, i32 2
  %2 = load i32, i32* %max, align 4
  %cmp = icmp eq i32 %inc, %2
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @tlb_next_batch(%struct.mmu_gather* noundef %tlb) #9
  br i1 %call, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.then, %entry
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end4
  %retval.0 = phi i1 [ false, %if.end4 ], [ true, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @tlb_next_batch(%struct.mmu_gather* nocapture noundef %tlb) unnamed_addr #0 {
entry:
  %active = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 6
  %0 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %active, align 8
  %next = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %0, i64 0, i32 0
  %1 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %next, align 8
  %tobool.not = icmp eq %struct.mmu_gather_batch* %1, null
  br i1 %tobool.not, label %if.end, label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %batch_count = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 5
  %2 = load i32, i32* %batch_count, align 4
  %cmp = icmp eq i32 %2, 19
  br i1 %cmp, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call = call i64 @__get_free_pages(i32 noundef 10240, i32 noundef 0) #10
  %3 = inttoptr i64 %call to %struct.mmu_gather_batch*
  %tobool6.not = icmp eq i64 %call, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %4 = load i32, i32* %batch_count, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %batch_count, align 4
  %next10 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %3, i64 0, i32 0
  store %struct.mmu_gather_batch* null, %struct.mmu_gather_batch** %next10, align 8
  %nr = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %3, i64 0, i32 1
  store i32 0, i32* %nr, align 8
  %max = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %3, i64 0, i32 2
  store i32 510, i32* %max, align 4
  %5 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %active, align 8
  %next12 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %5, i64 0, i32 0
  store %struct.mmu_gather_batch* %3, %struct.mmu_gather_batch** %next12, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.end8
  %.sink = phi %struct.mmu_gather_batch* [ %3, %if.end8 ], [ %1, %entry ]
  store %struct.mmu_gather_batch* %.sink, %struct.mmu_gather_batch** %active, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ false, %if.end5 ], [ true, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tlb_remove_table(%struct.mmu_gather* nocapture noundef %tlb, i8* noundef %table) local_unnamed_addr #0 {
entry:
  %batch1 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 1
  %0 = load %struct.mmu_table_batch*, %struct.mmu_table_batch** %batch1, align 8
  %cmp = icmp eq %struct.mmu_table_batch* %0, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call = call i64 @__get_free_pages(i32 noundef 10240, i32 noundef 0) #10
  %1 = inttoptr i64 %call to %struct.mmu_table_batch*
  store %struct.mmu_table_batch* %1, %struct.mmu_table_batch** %batch1, align 8
  %cmp2 = icmp eq i64 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call fastcc void @tlb_table_invalidate(%struct.mmu_gather* noundef %tlb) #9
  call fastcc void @tlb_remove_table_one(i8* noundef %table) #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %nr = getelementptr inbounds %struct.mmu_table_batch, %struct.mmu_table_batch* %1, i64 0, i32 1
  store i32 0, i32* %nr, align 8
  %.pre = load %struct.mmu_table_batch*, %struct.mmu_table_batch** %batch1, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %2 = phi %struct.mmu_table_batch* [ %.pre, %if.end ], [ %0, %entry ]
  %nr5 = getelementptr inbounds %struct.mmu_table_batch, %struct.mmu_table_batch* %2, i64 0, i32 1
  %3 = load i32, i32* %nr5, align 8
  %inc = add i32 %3, 1
  store i32 %inc, i32* %nr5, align 8
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr %struct.mmu_table_batch, %struct.mmu_table_batch* %2, i64 0, i32 2, i64 %idxprom
  store i8* %table, i8** %arrayidx, align 8
  %4 = load %struct.mmu_table_batch*, %struct.mmu_table_batch** %batch1, align 8
  %nr6 = getelementptr inbounds %struct.mmu_table_batch, %struct.mmu_table_batch* %4, i64 0, i32 1
  %5 = load i32, i32* %nr6, align 8
  %cmp7 = icmp eq i32 %5, 509
  br i1 %cmp7, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end4
  call fastcc void @tlb_table_flush(%struct.mmu_gather* noundef %tlb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then9, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_table_invalidate(%struct.mmu_gather* nocapture noundef %tlb) unnamed_addr #0 {
entry:
  call fastcc void @tlb_flush_mmu_tlbonly(%struct.mmu_gather* noundef %tlb) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_remove_table_one(i8* noundef %table) unnamed_addr #0 {
entry:
  call fastcc void @tlb_remove_table_sync_one() #9
  call fastcc void @__tlb_remove_table(i8* noundef %table) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_table_flush(%struct.mmu_gather* nocapture noundef %tlb) unnamed_addr #0 {
entry:
  %batch1 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 1
  %0 = load %struct.mmu_table_batch*, %struct.mmu_table_batch** %batch1, align 8
  %tobool.not = icmp eq %struct.mmu_table_batch* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @tlb_table_invalidate(%struct.mmu_gather* noundef %tlb) #9
  %1 = load %struct.mmu_table_batch*, %struct.mmu_table_batch** %batch1, align 8
  call fastcc void @tlb_remove_table_free(%struct.mmu_table_batch* noundef %1) #9
  store %struct.mmu_table_batch* null, %struct.mmu_table_batch** %batch1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tlb_flush_mmu(%struct.mmu_gather* noundef %tlb) local_unnamed_addr #0 {
entry:
  call fastcc void @tlb_flush_mmu_tlbonly(%struct.mmu_gather* noundef %tlb) #9
  call fastcc void @tlb_flush_mmu_free(%struct.mmu_gather* noundef %tlb) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_flush_mmu_tlbonly(%struct.mmu_gather* nocapture noundef %tlb) unnamed_addr #0 {
entry:
  %freed_tables = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %freed_tables, align 8
  %0 = and i16 %bf.load, 124
  %1 = icmp eq i16 %0, 0
  br i1 %1, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @tlb_flush(%struct.mmu_gather* noundef %tlb) #9
  call fastcc void @__tlb_reset_range(%struct.mmu_gather* noundef %tlb) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_flush_mmu_free(%struct.mmu_gather* noundef %tlb) unnamed_addr #0 {
entry:
  call fastcc void @tlb_table_flush(%struct.mmu_gather* noundef %tlb) #9
  call fastcc void @tlb_batch_pages_flush(%struct.mmu_gather* noundef %tlb) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tlb_gather_mmu(%struct.mmu_gather* noundef %tlb, %struct.mm_struct* noundef %mm) local_unnamed_addr #0 {
entry:
  call fastcc void @__tlb_gather_mmu(%struct.mmu_gather* noundef %tlb, %struct.mm_struct* noundef %mm, i1 noundef false) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__tlb_gather_mmu(%struct.mmu_gather* noundef %tlb, %struct.mm_struct* noundef %mm, i1 noundef %fullmm) unnamed_addr #0 {
entry:
  %mm1 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 0
  store %struct.mm_struct* %mm, %struct.mm_struct** %mm1, align 8
  %fullmm2 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %0 = zext i1 %fullmm to i16
  %bf.load = load i16, i16* %fullmm2, align 8
  %bf.clear = and i16 %bf.load, -4
  %bf.set = or i16 %bf.clear, %0
  store i16 %bf.set, i16* %fullmm2, align 8
  %local = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 7
  %next = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %local, i64 0, i32 0
  store %struct.mmu_gather_batch* null, %struct.mmu_gather_batch** %next, align 8
  %nr = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 7, i32 1
  store i32 0, i32* %nr, align 8
  %max = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 7, i32 2
  store i32 8, i32* %max, align 4
  %active = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 6
  store %struct.mmu_gather_batch* %local, %struct.mmu_gather_batch** %active, align 8
  %batch_count = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 5
  store i32 0, i32* %batch_count, align 4
  call fastcc void @tlb_table_init(%struct.mmu_gather* noundef %tlb) #9
  call fastcc void @__tlb_reset_range(%struct.mmu_gather* noundef %tlb) #9
  %1 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  call fastcc void @inc_tlb_flush_pending(%struct.mm_struct* noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tlb_gather_mmu_fullmm(%struct.mmu_gather* noundef %tlb, %struct.mm_struct* noundef %mm) local_unnamed_addr #0 {
entry:
  call fastcc void @__tlb_gather_mmu(%struct.mmu_gather* noundef %tlb, %struct.mm_struct* noundef %mm, i1 noundef true) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tlb_finish_mmu(%struct.mmu_gather* noundef %tlb) local_unnamed_addr #0 {
entry:
  %mm = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 0
  %0 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call = call fastcc i1 @mm_tlb_flush_nested(%struct.mm_struct* noundef %0) #9
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %fullmm = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %fullmm, align 8
  %bf.set = or i16 %bf.load, 1
  store i16 %bf.set, i16* %fullmm, align 8
  call fastcc void @__tlb_reset_range(%struct.mmu_gather* noundef %tlb) #9
  %bf.load1 = load i16, i16* %fullmm, align 8
  %bf.set3 = or i16 %bf.load1, 4
  store i16 %bf.set3, i16* %fullmm, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @tlb_flush_mmu(%struct.mmu_gather* noundef %tlb) #9
  call fastcc void @tlb_batch_list_free(%struct.mmu_gather* noundef %tlb) #9
  %1 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @dec_tlb_flush_pending(%struct.mm_struct* noundef %1) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @mm_tlb_flush_nested(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 49, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp sgt i32 %0, 1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__tlb_reset_range(%struct.mmu_gather* nocapture noundef %tlb) unnamed_addr #4 {
entry:
  %fullmm = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %fullmm, align 8
  %bf.clear = and i16 %bf.load, 1
  %tobool.not = icmp eq i16 %bf.clear, 0
  %0 = load i64, i64* @vabits_actual, align 8
  %shl = shl nuw i64 1, %0
  %.sink26 = select i1 %tobool.not, i64 %shl, i64 -1
  %not.tobool.not = xor i1 %tobool.not, true
  %.sink = sext i1 %not.tobool.not to i64
  %1 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 2
  store i64 %.sink26, i64* %1, align 8
  %2 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 3
  store i64 %.sink, i64* %2, align 8
  %bf.clear15 = and i16 %bf.load, -125
  store i16 %bf.clear15, i16* %fullmm, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_batch_list_free(%struct.mmu_gather* nocapture noundef %tlb) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 7, i32 0
  %0 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %next1, align 8
  %tobool.not10 = icmp eq %struct.mmu_gather_batch* %0, null
  br i1 %tobool.not10, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %batch.011 = phi %struct.mmu_gather_batch* [ %1, %for.body ], [ %0, %entry ]
  %next2 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %batch.011, i64 0, i32 0
  %1 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %next2, align 8
  %2 = ptrtoint %struct.mmu_gather_batch* %batch.011 to i64
  call void @free_pages(i64 noundef %2, i32 noundef 0) #10
  %tobool.not = icmp eq %struct.mmu_gather_batch* %1, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  store %struct.mmu_gather_batch* null, %struct.mmu_gather_batch** %next1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_tlb_flush_pending(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %tlb_flush_pending = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 49
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %tlb_flush_pending) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_remove_table_sync_one() unnamed_addr #0 {
entry:
  call void @smp_call_function(void (i8*)* noundef nonnull @tlb_remove_table_smp_sync, i8* noundef null, i32 noundef 1) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__tlb_remove_table(i8* noundef %_table) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %_table to %struct.page*
  call fastcc void @put_page(%struct.page* noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function(void (i8*)* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @tlb_remove_table_smp_sync(i8* nocapture noundef %arg) #5 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #9
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.2* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #10
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #11, !srcloc !8
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_remove_table_free(%struct.mmu_table_batch* noundef %batch) unnamed_addr #0 {
entry:
  %rcu = getelementptr inbounds %struct.mmu_table_batch, %struct.mmu_table_batch* %batch, i64 0, i32 0
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @tlb_remove_table_rcu) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @tlb_remove_table_rcu(%struct.callback_head* noundef %head) #0 {
entry:
  %0 = bitcast %struct.callback_head* %head to %struct.mmu_table_batch*
  call fastcc void @__tlb_remove_table_free(%struct.mmu_table_batch* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__tlb_remove_table_free(%struct.mmu_table_batch* noundef %batch) unnamed_addr #0 {
entry:
  %nr = getelementptr inbounds %struct.mmu_table_batch, %struct.mmu_table_batch* %batch, i64 0, i32 1
  %0 = load i32, i32* %nr, align 8
  %cmp6.not = icmp eq i32 %0, 0
  br i1 %cmp6.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.07 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %idxprom = sext i32 %i.07 to i64
  %arrayidx = getelementptr %struct.mmu_table_batch, %struct.mmu_table_batch* %batch, i64 0, i32 2, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  call fastcc void @__tlb_remove_table(i8* noundef %1) #9
  %inc = add nuw i32 %i.07, 1
  %2 = load i32, i32* %nr, align 8
  %cmp = icmp ult i32 %inc, %2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %3 = ptrtoint %struct.mmu_table_batch* %batch to i64
  call void @free_pages(i64 noundef %3, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_flush(%struct.mmu_gather* nocapture noundef readonly %tlb) unnamed_addr #0 {
entry:
  %vma = alloca %struct.vm_area_struct, align 8
  %0 = bitcast %struct.vm_area_struct* %vma to i8*
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %0) #11
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %mm = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 0
  %1 = bitcast %struct.vm_area_struct* %vma to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(176) %1, i8 0, i64 176, i1 false)
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  store %struct.mm_struct* %2, %struct.mm_struct** %vm_mm, align 8
  %freed_tables = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %freed_tables, align 8
  %3 = and i16 %bf.load, 4
  %tobool.not = icmp eq i16 %3, 0
  %bf.clear3 = and i16 %bf.load, 1
  %tobool5.not = icmp eq i16 %bf.clear3, 0
  br i1 %tobool5.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.then
  call fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %2) #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call1 = call fastcc i32 @tlb_get_level(%struct.mmu_gather* noundef %tlb) #9
  %call = call fastcc i64 @tlb_get_unmap_size(%struct.mmu_gather* noundef %tlb) #9
  %start = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 2
  %4 = load i64, i64* %start, align 8
  %end = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 3
  %5 = load i64, i64* %end, align 8
  call fastcc void @__flush_tlb_range(%struct.vm_area_struct* noundef nonnull %vma, i64 noundef %4, i64 noundef %5, i64 noundef %call, i1 noundef %tobool.not, i32 noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then7, %if.end9
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %0) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @tlb_get_unmap_size(%struct.mmu_gather* nocapture noundef readonly %tlb) unnamed_addr #7 {
entry:
  %call = call fastcc i64 @tlb_get_unmap_shift(%struct.mmu_gather* noundef %tlb) #9
  %shl = shl nuw i64 1, %call
  ret i64 %shl
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @tlb_get_level(%struct.mmu_gather* nocapture noundef readonly %tlb) unnamed_addr #7 {
entry:
  %freed_tables = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %freed_tables, align 8
  %0 = and i16 %bf.load, 4
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = and i16 %bf.load, 120
  %trunc = trunc i16 %1 to i7
  switch i7 %trunc, label %if.end52 [
    i7 8, label %return
    i7 16, label %return.fold.split
  ]

if.end52:                                         ; preds = %if.end
  %2 = icmp eq i16 %1, 32
  %spec.select = zext i1 %2 to i32
  br label %return

return.fold.split:                                ; preds = %if.end
  br label %return

return:                                           ; preds = %if.end, %return.fold.split, %if.end52, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 3, %if.end ], [ %spec.select, %if.end52 ], [ 2, %return.fold.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !9
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i, align 8
  %shl = shl i64 %0, 48
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %shl) #11, !srcloc !10
  %call2 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #9
  br i1 %call2, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %or3 = or i64 %shl, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or3) #11, !srcloc !11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void asm sideeffect "dsb ish", "~{memory}"() #11, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__flush_tlb_range(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %start, i64 noundef %end, i64 noundef %stride, i1 noundef %last_level, i32 noundef %tlb_level) unnamed_addr #0 {
entry:
  %sub = add i64 %stride, -1
  %neg = sub i64 0, %stride
  %and = and i64 %neg, %start
  %sub1 = add i64 %end, -1
  %or = or i64 %sub, %sub1
  %add = sub i64 1, %and
  %sub3 = add i64 %add, %or
  %mul = shl i64 %stride, 9
  %cmp = icmp uge i64 %sub3, %mul
  %cmp5 = icmp ugt i64 %sub3, 8589934591
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  %vm_mm6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm6, align 8
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 42, i32 0, i32 0
  %2 = load volatile i64, i64* %counter.i, align 8
  %cmp9.not382 = icmp ult i64 %sub3, 4096
  br i1 %cmp9.not382, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %shr = lshr i64 %sub3, 12
  %shl = shl i64 %2, 48
  %tobool105 = icmp ne i32 %tlb_level, 0
  %and108 = and i32 %tlb_level, 3
  %3 = or i32 %and108, 4
  %or112 = zext i32 %3 to i64
  %shl136 = shl nuw nsw i64 %or112, 44
  %shr193 = lshr i64 %stride, 12
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end191
  %start.addr.0384 = phi i64 [ %and, %while.body.lr.ph ], [ %add192, %if.end191 ]
  %pages.0383 = phi i64 [ %shr, %while.body.lr.ph ], [ %sub194, %if.end191 ]
  %shr14 = lshr i64 %start.addr.0384, 12
  %and15 = and i64 %shr14, 17592186044415
  %or16 = or i64 %and15, %shl
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %last_level, label %do.body, label %do.body100

do.body:                                          ; preds = %while.body
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %do.body
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #10
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %do.body
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 7) #10
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  %or.cond262 = and i1 %tobool105, %retval.0.i
  %or47 = select i1 %or.cond262, i64 %shl136, i64 0
  %arg.0 = or i64 %or47, %or16
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %arg.0) #11, !srcloc !14
  %call52 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #9
  br i1 %call52, label %do.body54, label %if.end191

do.body54:                                        ; preds = %cpus_have_const_cap.exit
  %call.i.i355 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i356 = icmp sgt i32 %call.i.i355, 0
  br i1 %cmp.i.i356, label %if.then3.i359, label %if.else5.i361

if.then3.i359:                                    ; preds = %do.body54
  %call.i9.i357 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #10
  %cmp1.i.i358 = icmp sgt i32 %call.i9.i357, 0
  br label %cpus_have_const_cap.exit363

if.else5.i361:                                    ; preds = %do.body54
  %call6.i360 = call fastcc i1 @cpus_have_cap(i32 noundef 7) #10
  br label %cpus_have_const_cap.exit363

cpus_have_const_cap.exit363:                      ; preds = %if.then3.i359, %if.else5.i361
  %retval.0.i362 = phi i1 [ %cmp1.i.i358, %if.then3.i359 ], [ %call6.i360, %if.else5.i361 ]
  %or.cond264 = and i1 %tobool105, %retval.0.i362
  %or93 = select i1 %or.cond264, i64 %shl136, i64 0
  %or56 = or i64 %or16, %or93
  %arg55.0 = or i64 %or56, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %arg55.0) #11, !srcloc !15
  br label %if.end191

do.body100:                                       ; preds = %while.body
  br i1 %cmp.i.i, label %if.then3.i368, label %if.else5.i370

if.then3.i368:                                    ; preds = %do.body100
  %call.i9.i366 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #10
  %cmp1.i.i367 = icmp sgt i32 %call.i9.i366, 0
  br label %cpus_have_const_cap.exit372

if.else5.i370:                                    ; preds = %do.body100
  %call6.i369 = call fastcc i1 @cpus_have_cap(i32 noundef 7) #10
  br label %cpus_have_const_cap.exit372

cpus_have_const_cap.exit372:                      ; preds = %if.then3.i368, %if.else5.i370
  %retval.0.i371 = phi i1 [ %cmp1.i.i367, %if.then3.i368 ], [ %call6.i369, %if.else5.i370 ]
  %or.cond266 = and i1 %tobool105, %retval.0.i371
  %or138 = select i1 %or.cond266, i64 %shl136, i64 0
  %arg101.0 = or i64 %or138, %or16
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vae1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vae1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %arg101.0) #11, !srcloc !16
  %call143 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #9
  br i1 %call143, label %do.body145, label %if.end191

do.body145:                                       ; preds = %cpus_have_const_cap.exit372
  %call.i.i373 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i374 = icmp sgt i32 %call.i.i373, 0
  br i1 %cmp.i.i374, label %if.then3.i377, label %if.else5.i379

if.then3.i377:                                    ; preds = %do.body145
  %call.i9.i375 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #10
  %cmp1.i.i376 = icmp sgt i32 %call.i9.i375, 0
  br label %cpus_have_const_cap.exit381

if.else5.i379:                                    ; preds = %do.body145
  %call6.i378 = call fastcc i1 @cpus_have_cap(i32 noundef 7) #10
  br label %cpus_have_const_cap.exit381

cpus_have_const_cap.exit381:                      ; preds = %if.then3.i377, %if.else5.i379
  %retval.0.i380 = phi i1 [ %cmp1.i.i376, %if.then3.i377 ], [ %call6.i378, %if.else5.i379 ]
  %or.cond268 = and i1 %tobool105, %retval.0.i380
  %or184 = select i1 %or.cond268, i64 %shl136, i64 0
  %or147 = or i64 %or16, %or184
  %arg146.0 = or i64 %or147, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vae1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vae1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %arg146.0) #11, !srcloc !17
  br label %if.end191

if.end191:                                        ; preds = %cpus_have_const_cap.exit372, %cpus_have_const_cap.exit381, %cpus_have_const_cap.exit, %cpus_have_const_cap.exit363
  %add192 = add i64 %start.addr.0384, %stride
  %sub194 = sub i64 %pages.0383, %shr193
  %cmp9.not = icmp eq i64 %sub194, 0
  br i1 %cmp9.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end191, %if.end
  call void asm sideeffect "dsb ish", "~{memory}"() #11, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @tlb_get_unmap_shift(%struct.mmu_gather* nocapture noundef readonly %tlb) unnamed_addr #7 {
entry:
  %cleared_ptes = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %cleared_ptes, align 8
  %0 = and i16 %bf.load, 8
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = and i16 %bf.load, 16
  %tobool5.not = icmp eq i16 %1, 0
  br i1 %tobool5.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.end
  %2 = and i16 %bf.load, 32
  %tobool12.not = icmp eq i16 %2, 0
  br i1 %tobool12.not, label %if.end14, label %return

if.end14:                                         ; preds = %if.end7
  %3 = and i16 %bf.load, 64
  %tobool19.not = icmp eq i16 %3, 0
  %. = select i1 %tobool19.not, i64 12, i64 30
  br label %return

return:                                           ; preds = %if.end14, %if.end7, %if.end, %entry
  %retval.0 = phi i64 [ 12, %entry ], [ 21, %if.end ], [ 30, %if.end7 ], [ %., %if.end14 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @arm64_kernel_unmapped_at_el0() unnamed_addr #3 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 41, i32 0)) #10
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 41) #10
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap(i32 noundef %num) unnamed_addr #3 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %and.i = and i32 %num, 63
  %sh_prom.i = zext i32 %and.i to i64
  %1 = shl nuw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool = icmp ne i64 %2, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #3 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_batch_pages_flush(%struct.mmu_gather* noundef %tlb) unnamed_addr #0 {
entry:
  %local = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 7
  %tobool.not13 = icmp eq %struct.mmu_gather_batch* %local, null
  br i1 %tobool.not13, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %for.body
  %batch.014 = phi %struct.mmu_gather_batch* [ %1, %for.body ], [ %local, %entry ]
  %nr = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %batch.014, i64 0, i32 1
  %0 = load i32, i32* %nr, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %arraydecay = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %batch.014, i64 0, i32 3, i64 0
  call void @release_pages(%struct.page** noundef %arraydecay, i32 noundef %0) #10
  store i32 0, i32* %nr, align 8
  %next = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %batch.014, i64 0, i32 0
  %1 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %next, align 8
  %tobool.not = icmp eq %struct.mmu_gather_batch* %1, null
  br i1 %tobool.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %for.body, %entry
  %active = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 6
  store %struct.mmu_gather_batch* %local, %struct.mmu_gather_batch** %active, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_pages(%struct.page** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @tlb_table_init(%struct.mmu_gather* nocapture noundef writeonly %tlb) unnamed_addr #8 {
entry:
  %batch = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 1
  store %struct.mmu_table_batch* null, %struct.mmu_table_batch** %batch, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_tlb_flush_pending(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %tlb_flush_pending = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 49
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %tlb_flush_pending) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #11, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #11, !srcloc !20
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }

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
!8 = !{i64 2147877271, i64 2147877919, i64 2147877949, i64 2147877981, i64 2147878015, i64 2147878051, i64 2147878076}
!9 = !{i64 2152127462}
!10 = !{i64 2152128848, i64 2152128573, i64 2152129212, i64 2152129258, i64 2152129264, i64 2152130652, i64 2152129301, i64 2152129319, i64 2152130727, i64 2152130775, i64 2152130823, i64 2152130886, i64 2152130935, i64 2152129397, i64 2152129422, i64 2152129448, i64 2152129454, i64 2152130673, i64 2152129491, i64 2152129497, i64 2152129547, i64 2152129593, i64 2152129626}
!11 = !{i64 2152131694, i64 2152131387, i64 2152132058, i64 2152132104, i64 2152132110, i64 2152133498, i64 2152132147, i64 2152132165, i64 2152133573, i64 2152133621, i64 2152133669, i64 2152133732, i64 2152133781, i64 2152132243, i64 2152132268, i64 2152132294, i64 2152132300, i64 2152133519, i64 2152132337, i64 2152132343, i64 2152132393, i64 2152132439, i64 2152132472}
!12 = !{i64 2152133845}
!13 = !{i64 2152141177}
!14 = !{i64 2152173494, i64 2152173222, i64 2152173856, i64 2152173902, i64 2152173908, i64 2152175296, i64 2152173945, i64 2152173963, i64 2152175370, i64 2152175418, i64 2152175466, i64 2152175529, i64 2152175578, i64 2152174041, i64 2152174066, i64 2152174092, i64 2152174098, i64 2152175317, i64 2152174135, i64 2152174141, i64 2152174191, i64 2152174237, i64 2152174270}
!15 = !{i64 2152211321, i64 2152211049, i64 2152211683, i64 2152211729, i64 2152211735, i64 2152213123, i64 2152211772, i64 2152211790, i64 2152213197, i64 2152213245, i64 2152213293, i64 2152213356, i64 2152213405, i64 2152211868, i64 2152211893, i64 2152211919, i64 2152211925, i64 2152213144, i64 2152211962, i64 2152211968, i64 2152212018, i64 2152212064, i64 2152212097}
!16 = !{i64 2152244825, i64 2152244555, i64 2152245185, i64 2152245231, i64 2152245237, i64 2152246625, i64 2152245274, i64 2152245292, i64 2152246698, i64 2152246746, i64 2152246794, i64 2152246857, i64 2152246906, i64 2152245370, i64 2152245395, i64 2152245421, i64 2152245427, i64 2152246646, i64 2152245464, i64 2152245470, i64 2152245520, i64 2152245566, i64 2152245599}
!17 = !{i64 2152282643, i64 2152282373, i64 2152283003, i64 2152283049, i64 2152283055, i64 2152284443, i64 2152283092, i64 2152283110, i64 2152284516, i64 2152284564, i64 2152284612, i64 2152284675, i64 2152284724, i64 2152283188, i64 2152283213, i64 2152283239, i64 2152283245, i64 2152284464, i64 2152283282, i64 2152283288, i64 2152283338, i64 2152283384, i64 2152283417}
!18 = !{i64 2152297588}
!19 = !{i64 2147866698, i64 2147867214, i64 2147867244, i64 2147867271, i64 2147867305, i64 2147867335}
!20 = !{i64 2147876419, i64 2147876935, i64 2147876965, i64 2147876992, i64 2147877026, i64 2147877056}
