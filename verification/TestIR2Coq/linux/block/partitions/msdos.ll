; ModuleID = 'block/partitions/msdos.c'
source_filename = "block/partitions/msdos.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.anon.82 = type { i8, void (%struct.parsed_partitions*, i64, i64, i32)* }
%struct.parsed_partitions = type { %struct.gendisk*, [32 x i8], %struct.anon.78*, i32, i32, i8, i8* }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.77, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }
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
%union.anon.72 = type { %struct.list_head }
%union.anon.73 = type { %struct.hlist_node }
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
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.8, %union.anon.63, %struct.atomic_t, [8 x i8] }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.63 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.64, %union.anon.65 }
%union.anon.64 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.65 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.22, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.21, [0 x i64] }
%struct.anon.21 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.59, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.34, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.34 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.workqueue_struct = type opaque
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.44, %union.anon.45, i32 }
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
%struct.anon.22 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.23, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.24, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.23 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.24 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.69 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.67, %struct.qspinlock }
%union.anon.67 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.69 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.75 = type { %struct.callback_head }
%union.anon.76 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, {}*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.77 = type { %struct.pipe_inode_info* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.37 = type { %struct.kernfs_elem_dir }
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
%struct.kqid = type { %union.anon.71, i32 }
%union.anon.71 = type { %struct.kuid_t }
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
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.38, %union.anon.39, %union.anon.40, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.43, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.36, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.36 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%union.anon.38 = type { %struct.hlist_node }
%union.anon.39 = type { %struct.rb_node }
%union.anon.40 = type { %struct.anon.42 }
%struct.anon.42 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.43 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon.35, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.35 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
%struct.blk_mq_ctxs = type { %struct.kobject, %struct.blk_mq_ctx* }
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, %struct.blk_rq_stat*, i32 (%struct.request*)*, i32, %struct.blk_rq_stat*, void (%struct.blk_stat_callback*)*, i8*, %struct.callback_head }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type { i8, i8, i64, [2 x %struct.list_head], %struct.list_head, %struct.request*, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.backing_dev_info = type opaque
%struct.timer_rand_state = type opaque
%struct.atomic_t = type { i32 }
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.anon.78 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.Sector = type { %struct.page* }
%struct.msdos_partition = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c" [AIX]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" >\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[DM]\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"[EZD]\00", align 1
@subtypes = internal unnamed_addr constant [8 x %struct.anon.82] [%struct.anon.82 { i8 -91, void (%struct.parsed_partitions*, i64, i64, i32)* @parse_freebsd }, %struct.anon.82 { i8 -87, void (%struct.parsed_partitions*, i64, i64, i32)* @parse_netbsd }, %struct.anon.82 { i8 -90, void (%struct.parsed_partitions*, i64, i64, i32)* @parse_openbsd }, %struct.anon.82 { i8 -127, void (%struct.parsed_partitions*, i64, i64, i32)* @parse_minix }, %struct.anon.82 { i8 99, void (%struct.parsed_partitions*, i64, i64, i32)* @parse_unixware }, %struct.anon.82 { i8 -126, void (%struct.parsed_partitions*, i64, i64, i32)* @parse_solaris_x86 }, %struct.anon.82 { i8 -65, void (%struct.parsed_partitions*, i64, i64, i32)* @parse_solaris_x86 }, %struct.anon.82 zeroinitializer], align 8
@.str.6 = private unnamed_addr constant [6 x i8] c" %s%d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%08x-%02x\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @msdos_partition(%struct.parsed_partitions* noundef %state) local_unnamed_addr #0 {
entry:
  %sect = alloca %struct.Sector, align 8
  %0 = bitcast %struct.Sector* %sect to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.Sector* %sect to i64*, !annotation !7
  store i64 0, i64* %1, align 8, !annotation !7
  %disk = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 0
  %2 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 9
  %3 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %3) #8
  %div = lshr i32 %call, 9
  %conv = zext i32 %div to i64
  %call1 = call i8* @read_part_sector(%struct.parsed_partitions* noundef %state, i64 noundef 0, %struct.Sector* noundef nonnull %sect) #9
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %cleanup166, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @aix_magic_present(%struct.parsed_partitions* noundef %state, i8* noundef nonnull %call1) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %coerce.dive = getelementptr inbounds %struct.Sector, %struct.Sector* %sect, i64 0, i32 0
  %4 = load %struct.page*, %struct.page** %coerce.dive, align 8
  %coerce.val.pi = ptrtoint %struct.page* %4 to i64
  call fastcc void @put_dev_sector(i64 %coerce.val.pi) #8
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 6
  %5 = load i8*, i8** %pp_buf, align 8
  %call5 = call i64 @strlcat(i8* noundef %5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 noundef 4096) #9
  br label %cleanup166

if.end6:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, i8* %call1, i64 510
  %call7 = call fastcc i32 @msdos_magic_present(i8* noundef %add.ptr) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  %coerce.dive10 = getelementptr inbounds %struct.Sector, %struct.Sector* %sect, i64 0, i32 0
  %6 = load %struct.page*, %struct.page** %coerce.dive10, align 8
  %coerce.val.pi11 = ptrtoint %struct.page* %6 to i64
  call fastcc void @put_dev_sector(i64 %coerce.val.pi11) #8
  br label %cleanup166

if.end12:                                         ; preds = %if.end6
  %add.ptr13 = getelementptr i8, i8* %call1, i64 446
  %7 = bitcast i8* %add.ptr13 to %struct.msdos_partition*
  %8 = load i8, i8* %add.ptr13, align 1
  switch i8 %8, label %land.lhs.true25 [
    i8 0, label %for.inc
    i8 -128, label %for.inc
  ]

land.lhs.true25:                                  ; preds = %if.end12
  %reserved = getelementptr inbounds i8, i8* %call1, i64 14
  %9 = bitcast i8* %reserved to i16*
  %10 = load i16, i16* %9, align 2
  %tobool27.not = icmp eq i16 %10, 0
  br i1 %tobool27.not, label %if.else, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %11 = getelementptr inbounds i8, i8* %call1, i64 16
  %12 = load i8, i8* %11, align 4
  %tobool30.not = icmp eq i8 %12, 0
  br i1 %tobool30.not, label %if.else, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %13 = getelementptr inbounds i8, i8* %call1, i64 21
  %14 = load i8, i8* %13, align 1
  %call32 = call fastcc i32 @fat_valid_media(i8 noundef %14) #8
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %land.lhs.true31
  %pp_buf35 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 6
  %15 = load i8*, i8** %pp_buf35, align 8
  %call36 = call i64 @strlcat(i8* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 noundef 4096) #9
  %coerce.dive37 = getelementptr inbounds %struct.Sector, %struct.Sector* %sect, i64 0, i32 0
  %16 = load %struct.page*, %struct.page** %coerce.dive37, align 8
  %coerce.val.pi38 = ptrtoint %struct.page* %16 to i64
  call fastcc void @put_dev_sector(i64 %coerce.val.pi38) #8
  br label %cleanup166

if.else:                                          ; preds = %for.inc, %for.inc.1, %for.inc.2, %land.lhs.true31, %land.lhs.true28, %land.lhs.true25
  %coerce.dive39 = getelementptr inbounds %struct.Sector, %struct.Sector* %sect, i64 0, i32 0
  %17 = load %struct.page*, %struct.page** %coerce.dive39, align 8
  %coerce.val.pi40 = ptrtoint %struct.page* %17 to i64
  call fastcc void @put_dev_sector(i64 %coerce.val.pi40) #8
  br label %cleanup166

for.inc:                                          ; preds = %if.end12, %if.end12
  %incdec.ptr = getelementptr i8, i8* %call1, i64 462
  %18 = bitcast i8* %incdec.ptr to %struct.msdos_partition*
  %19 = load i8, i8* %incdec.ptr, align 1
  switch i8 %19, label %if.else [
    i8 0, label %for.inc.1
    i8 -128, label %for.inc.1
  ]

for.inc.1:                                        ; preds = %for.inc, %for.inc
  %incdec.ptr.1 = getelementptr i8, i8* %call1, i64 478
  %20 = bitcast i8* %incdec.ptr.1 to %struct.msdos_partition*
  %21 = load i8, i8* %incdec.ptr.1, align 1
  switch i8 %21, label %if.else [
    i8 0, label %for.inc.2
    i8 -128, label %for.inc.2
  ]

for.inc.2:                                        ; preds = %for.inc.1, %for.inc.1
  %incdec.ptr.2 = getelementptr i8, i8* %call1, i64 494
  %22 = bitcast i8* %incdec.ptr.2 to %struct.msdos_partition*
  %23 = load i8, i8* %incdec.ptr.2, align 1
  switch i8 %23, label %if.else [
    i8 0, label %for.inc.3
    i8 -128, label %for.inc.3
  ]

for.inc.3:                                        ; preds = %for.inc.2, %for.inc.2
  %24 = getelementptr i8, i8* %call1, i64 450
  %25 = load i8, i8* %24, align 1
  %cmp48 = icmp eq i8 %25, -18
  br i1 %cmp48, label %if.then50, label %for.inc54

if.then50:                                        ; preds = %for.inc54.2, %for.inc54.1, %for.inc54, %for.inc.3
  %coerce.dive51 = getelementptr inbounds %struct.Sector, %struct.Sector* %sect, i64 0, i32 0
  %26 = load %struct.page*, %struct.page** %coerce.dive51, align 8
  %coerce.val.pi52 = ptrtoint %struct.page* %26 to i64
  call fastcc void @put_dev_sector(i64 %coerce.val.pi52) #8
  br label %cleanup166

for.inc54:                                        ; preds = %for.inc.3
  %27 = getelementptr i8, i8* %call1, i64 466
  %28 = load i8, i8* %27, align 1
  %cmp48.1 = icmp eq i8 %28, -18
  br i1 %cmp48.1, label %if.then50, label %for.inc54.1

for.inc54.1:                                      ; preds = %for.inc54
  %29 = getelementptr i8, i8* %call1, i64 482
  %30 = load i8, i8* %29, align 1
  %cmp48.2 = icmp eq i8 %30, -18
  br i1 %cmp48.2, label %if.then50, label %for.inc54.2

for.inc54.2:                                      ; preds = %for.inc54.1
  %31 = getelementptr i8, i8* %call1, i64 498
  %32 = load i8, i8* %31, align 1
  %cmp48.3 = icmp eq i8 %32, -18
  br i1 %cmp48.3, label %if.then50, label %for.inc54.3

for.inc54.3:                                      ; preds = %for.inc54.2
  %add.ptr59 = getelementptr i8, i8* %call1, i64 440
  %33 = bitcast i8* %add.ptr59 to i32*
  %34 = load i32, i32* %33, align 4
  %next = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 3
  store i32 5, i32* %next, align 8
  %cmp74 = icmp ugt i64 %conv, 2
  %cond = select i1 %cmp74, i64 %conv, i64 2
  %pp_buf83 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 6
  %parts = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 2
  br label %for.body64

for.body64:                                       ; preds = %for.inc54.3, %cleanup
  %indvars.iv = phi i64 [ 1, %for.inc54.3 ], [ %indvars.iv.next, %cleanup ]
  %p.2270 = phi %struct.msdos_partition* [ %7, %for.inc54.3 ], [ %incdec.ptr113, %cleanup ]
  %call65 = call fastcc i64 @start_sect(%struct.msdos_partition* noundef %p.2270) #8
  %mul = mul i64 %call65, %conv
  %call66 = call fastcc i64 @nr_sects(%struct.msdos_partition* noundef %p.2270) #8
  %mul67 = mul i64 %call66, %conv
  %tobool68.not = icmp eq i64 %mul67, 0
  br i1 %tobool68.not, label %cleanup, label %if.end70

if.end70:                                         ; preds = %for.body64
  %call71 = call fastcc i32 @is_extended_partition(%struct.msdos_partition* noundef %p.2270) #8
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end87, label %if.then73

if.then73:                                        ; preds = %if.end70
  %cmp77 = icmp ult i64 %mul67, %cond
  %cond82 = select i1 %cmp77, i64 %mul67, i64 %cond
  %35 = trunc i64 %indvars.iv to i32
  call fastcc void @put_partition(%struct.parsed_partitions* noundef %state, i32 noundef %35, i64 noundef %mul, i64 noundef %cond82) #8
  %36 = load i8*, i8** %pp_buf83, align 8
  %call84 = call i64 @strlcat(i8* noundef %36, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 noundef 4096) #9
  call fastcc void @parse_extended(%struct.parsed_partitions* noundef %state, i64 noundef %mul, i64 noundef %mul67, i32 noundef %34) #8
  br label %cleanup.sink.split

if.end87:                                         ; preds = %if.end70
  %37 = trunc i64 %indvars.iv to i32
  call fastcc void @put_partition(%struct.parsed_partitions* noundef %state, i32 noundef %37, i64 noundef %mul, i64 noundef %mul67) #8
  call fastcc void @set_info(%struct.parsed_partitions* noundef %state, i32 noundef %37, i32 noundef %34) #8
  %sys_ind88 = getelementptr inbounds %struct.msdos_partition, %struct.msdos_partition* %p.2270, i64 0, i32 4
  %38 = load i8, i8* %sys_ind88, align 1
  %cmp90 = icmp eq i8 %38, -3
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end87
  %39 = load %struct.anon.78*, %struct.anon.78** %parts, align 8
  %flags = getelementptr %struct.anon.78, %struct.anon.78* %39, i64 %indvars.iv, i32 2
  store i32 1, i32* %flags, align 8
  %.pr = load i8, i8* %sys_ind88, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end87
  %40 = phi i8 [ %.pr, %if.then92 ], [ %38, %if.end87 ]
  %cmp96 = icmp eq i8 %40, 84
  br i1 %cmp96, label %if.then98, label %if.end101

if.then98:                                        ; preds = %if.end93
  %41 = load i8*, i8** %pp_buf83, align 8
  %call100 = call i64 @strlcat(i8* noundef %41, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 4096) #9
  %.pre = load i8, i8* %sys_ind88, align 1
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.end93
  %42 = phi i8 [ %.pre, %if.then98 ], [ %40, %if.end93 ]
  %cmp104 = icmp eq i8 %42, 85
  br i1 %cmp104, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end101, %if.then73
  %.sink288 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %if.then73 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %if.end101 ]
  %43 = load i8*, i8** %pp_buf83, align 8
  %call108 = call i64 @strlcat(i8* noundef %43, i8* noundef %.sink288, i64 noundef 4096) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end101, %for.body64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %incdec.ptr113 = getelementptr %struct.msdos_partition, %struct.msdos_partition* %p.2270, i64 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.end114, label %for.body64

for.end114:                                       ; preds = %cleanup
  %44 = load i8*, i8** %pp_buf83, align 8
  %call116 = call i64 @strlcat(i8* noundef %44, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 noundef 4096) #9
  %call124 = call fastcc i64 @nr_sects(%struct.msdos_partition* noundef %7) #8
  %tobool125.not = icmp eq i64 %call124, 0
  br i1 %tobool125.not, label %cleanup156, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %for.end114
  %45 = load i8, i8* %24, align 1
  switch i8 %45, label %cleanup156 [
    i8 -91, label %if.end148
    i8 -87, label %if.end148.fold.split
    i8 -90, label %if.end148.fold.split289
    i8 -127, label %if.end148.fold.split290
    i8 99, label %if.end148.fold.split291
    i8 -126, label %if.end148.fold.split292
    i8 -65, label %if.end148.fold.split293
  ]

if.end148.fold.split:                             ; preds = %land.rhs.preheader
  br label %if.end148

if.end148.fold.split289:                          ; preds = %land.rhs.preheader
  br label %if.end148

if.end148.fold.split290:                          ; preds = %land.rhs.preheader
  br label %if.end148

if.end148.fold.split291:                          ; preds = %land.rhs.preheader
  br label %if.end148

if.end148.fold.split292:                          ; preds = %land.rhs.preheader
  br label %if.end148

if.end148.fold.split293:                          ; preds = %land.rhs.preheader
  br label %if.end148

if.end148:                                        ; preds = %land.rhs.preheader, %if.end148.fold.split293, %if.end148.fold.split292, %if.end148.fold.split291, %if.end148.fold.split290, %if.end148.fold.split289, %if.end148.fold.split
  %idxprom129273.lcssa = phi i64 [ 0, %land.rhs.preheader ], [ 1, %if.end148.fold.split ], [ 2, %if.end148.fold.split289 ], [ 3, %if.end148.fold.split290 ], [ 4, %if.end148.fold.split291 ], [ 5, %if.end148.fold.split292 ], [ 6, %if.end148.fold.split293 ]
  %parse.le = getelementptr [8 x %struct.anon.82], [8 x %struct.anon.82]* @subtypes, i64 0, i64 %idxprom129273.lcssa, i32 1
  %46 = load void (%struct.parsed_partitions*, i64, i64, i32)*, void (%struct.parsed_partitions*, i64, i64, i32)** %parse.le, align 8
  %call152 = call fastcc i64 @start_sect(%struct.msdos_partition* noundef %7) #8
  %mul153 = mul i64 %call152, %conv
  %mul155 = mul i64 %call124, %conv
  call void %46(%struct.parsed_partitions* noundef %state, i64 noundef %mul153, i64 noundef %mul155, i32 noundef 1) #9
  br label %cleanup156

cleanup156:                                       ; preds = %land.rhs.preheader, %for.end114, %if.end148
  %call124.1 = call fastcc i64 @nr_sects(%struct.msdos_partition* noundef %18) #8
  %tobool125.not.1 = icmp eq i64 %call124.1, 0
  br i1 %tobool125.not.1, label %cleanup156.1, label %land.rhs.preheader.1

land.rhs.preheader.1:                             ; preds = %cleanup156
  %47 = load i8, i8* %27, align 1
  switch i8 %47, label %cleanup156.1 [
    i8 -91, label %if.end148.1
    i8 -87, label %if.end148.1.fold.split
    i8 -90, label %if.end148.1.fold.split294
    i8 -127, label %if.end148.1.fold.split295
    i8 99, label %if.end148.1.fold.split296
    i8 -126, label %if.end148.1.fold.split297
    i8 -65, label %if.end148.1.fold.split298
  ]

if.end148.1.fold.split:                           ; preds = %land.rhs.preheader.1
  br label %if.end148.1

if.end148.1.fold.split294:                        ; preds = %land.rhs.preheader.1
  br label %if.end148.1

if.end148.1.fold.split295:                        ; preds = %land.rhs.preheader.1
  br label %if.end148.1

if.end148.1.fold.split296:                        ; preds = %land.rhs.preheader.1
  br label %if.end148.1

if.end148.1.fold.split297:                        ; preds = %land.rhs.preheader.1
  br label %if.end148.1

if.end148.1.fold.split298:                        ; preds = %land.rhs.preheader.1
  br label %if.end148.1

if.end148.1:                                      ; preds = %land.rhs.preheader.1, %if.end148.1.fold.split298, %if.end148.1.fold.split297, %if.end148.1.fold.split296, %if.end148.1.fold.split295, %if.end148.1.fold.split294, %if.end148.1.fold.split
  %idxprom129273.lcssa.1 = phi i64 [ 0, %land.rhs.preheader.1 ], [ 1, %if.end148.1.fold.split ], [ 2, %if.end148.1.fold.split294 ], [ 3, %if.end148.1.fold.split295 ], [ 4, %if.end148.1.fold.split296 ], [ 5, %if.end148.1.fold.split297 ], [ 6, %if.end148.1.fold.split298 ]
  %parse.le.1 = getelementptr [8 x %struct.anon.82], [8 x %struct.anon.82]* @subtypes, i64 0, i64 %idxprom129273.lcssa.1, i32 1
  %48 = load void (%struct.parsed_partitions*, i64, i64, i32)*, void (%struct.parsed_partitions*, i64, i64, i32)** %parse.le.1, align 8
  %call152.1 = call fastcc i64 @start_sect(%struct.msdos_partition* noundef %18) #8
  %mul153.1 = mul i64 %call152.1, %conv
  %mul155.1 = mul i64 %call124.1, %conv
  call void %48(%struct.parsed_partitions* noundef %state, i64 noundef %mul153.1, i64 noundef %mul155.1, i32 noundef 2) #9
  br label %cleanup156.1

cleanup156.1:                                     ; preds = %land.rhs.preheader.1, %if.end148.1, %cleanup156
  %call124.2 = call fastcc i64 @nr_sects(%struct.msdos_partition* noundef %20) #8
  %tobool125.not.2 = icmp eq i64 %call124.2, 0
  br i1 %tobool125.not.2, label %cleanup156.2, label %land.rhs.preheader.2

land.rhs.preheader.2:                             ; preds = %cleanup156.1
  %49 = load i8, i8* %29, align 1
  switch i8 %49, label %cleanup156.2 [
    i8 -91, label %if.end148.2
    i8 -87, label %if.end148.2.fold.split
    i8 -90, label %if.end148.2.fold.split299
    i8 -127, label %if.end148.2.fold.split300
    i8 99, label %if.end148.2.fold.split301
    i8 -126, label %if.end148.2.fold.split302
    i8 -65, label %if.end148.2.fold.split303
  ]

if.end148.2.fold.split:                           ; preds = %land.rhs.preheader.2
  br label %if.end148.2

if.end148.2.fold.split299:                        ; preds = %land.rhs.preheader.2
  br label %if.end148.2

if.end148.2.fold.split300:                        ; preds = %land.rhs.preheader.2
  br label %if.end148.2

if.end148.2.fold.split301:                        ; preds = %land.rhs.preheader.2
  br label %if.end148.2

if.end148.2.fold.split302:                        ; preds = %land.rhs.preheader.2
  br label %if.end148.2

if.end148.2.fold.split303:                        ; preds = %land.rhs.preheader.2
  br label %if.end148.2

if.end148.2:                                      ; preds = %land.rhs.preheader.2, %if.end148.2.fold.split303, %if.end148.2.fold.split302, %if.end148.2.fold.split301, %if.end148.2.fold.split300, %if.end148.2.fold.split299, %if.end148.2.fold.split
  %idxprom129273.lcssa.2 = phi i64 [ 0, %land.rhs.preheader.2 ], [ 1, %if.end148.2.fold.split ], [ 2, %if.end148.2.fold.split299 ], [ 3, %if.end148.2.fold.split300 ], [ 4, %if.end148.2.fold.split301 ], [ 5, %if.end148.2.fold.split302 ], [ 6, %if.end148.2.fold.split303 ]
  %parse.le.2 = getelementptr [8 x %struct.anon.82], [8 x %struct.anon.82]* @subtypes, i64 0, i64 %idxprom129273.lcssa.2, i32 1
  %50 = load void (%struct.parsed_partitions*, i64, i64, i32)*, void (%struct.parsed_partitions*, i64, i64, i32)** %parse.le.2, align 8
  %call152.2 = call fastcc i64 @start_sect(%struct.msdos_partition* noundef %20) #8
  %mul153.2 = mul i64 %call152.2, %conv
  %mul155.2 = mul i64 %call124.2, %conv
  call void %50(%struct.parsed_partitions* noundef %state, i64 noundef %mul153.2, i64 noundef %mul155.2, i32 noundef 3) #9
  br label %cleanup156.2

cleanup156.2:                                     ; preds = %land.rhs.preheader.2, %if.end148.2, %cleanup156.1
  %call124.3 = call fastcc i64 @nr_sects(%struct.msdos_partition* noundef %22) #8
  %tobool125.not.3 = icmp eq i64 %call124.3, 0
  br i1 %tobool125.not.3, label %cleanup156.3, label %land.rhs.preheader.3

land.rhs.preheader.3:                             ; preds = %cleanup156.2
  %51 = load i8, i8* %31, align 1
  switch i8 %51, label %cleanup156.3 [
    i8 -91, label %if.end148.3
    i8 -87, label %if.end148.3.fold.split
    i8 -90, label %if.end148.3.fold.split304
    i8 -127, label %if.end148.3.fold.split305
    i8 99, label %if.end148.3.fold.split306
    i8 -126, label %if.end148.3.fold.split307
    i8 -65, label %if.end148.3.fold.split308
  ]

if.end148.3.fold.split:                           ; preds = %land.rhs.preheader.3
  br label %if.end148.3

if.end148.3.fold.split304:                        ; preds = %land.rhs.preheader.3
  br label %if.end148.3

if.end148.3.fold.split305:                        ; preds = %land.rhs.preheader.3
  br label %if.end148.3

if.end148.3.fold.split306:                        ; preds = %land.rhs.preheader.3
  br label %if.end148.3

if.end148.3.fold.split307:                        ; preds = %land.rhs.preheader.3
  br label %if.end148.3

if.end148.3.fold.split308:                        ; preds = %land.rhs.preheader.3
  br label %if.end148.3

if.end148.3:                                      ; preds = %land.rhs.preheader.3, %if.end148.3.fold.split308, %if.end148.3.fold.split307, %if.end148.3.fold.split306, %if.end148.3.fold.split305, %if.end148.3.fold.split304, %if.end148.3.fold.split
  %idxprom129273.lcssa.3 = phi i64 [ 0, %land.rhs.preheader.3 ], [ 1, %if.end148.3.fold.split ], [ 2, %if.end148.3.fold.split304 ], [ 3, %if.end148.3.fold.split305 ], [ 4, %if.end148.3.fold.split306 ], [ 5, %if.end148.3.fold.split307 ], [ 6, %if.end148.3.fold.split308 ]
  %parse.le.3 = getelementptr [8 x %struct.anon.82], [8 x %struct.anon.82]* @subtypes, i64 0, i64 %idxprom129273.lcssa.3, i32 1
  %52 = load void (%struct.parsed_partitions*, i64, i64, i32)*, void (%struct.parsed_partitions*, i64, i64, i32)** %parse.le.3, align 8
  %call152.3 = call fastcc i64 @start_sect(%struct.msdos_partition* noundef %22) #8
  %mul153.3 = mul i64 %call152.3, %conv
  %mul155.3 = mul i64 %call124.3, %conv
  call void %52(%struct.parsed_partitions* noundef %state, i64 noundef %mul153.3, i64 noundef %mul155.3, i32 noundef 4) #9
  br label %cleanup156.3

cleanup156.3:                                     ; preds = %land.rhs.preheader.3, %if.end148.3, %cleanup156.2
  %coerce.dive164 = getelementptr inbounds %struct.Sector, %struct.Sector* %sect, i64 0, i32 0
  %53 = load %struct.page*, %struct.page** %coerce.dive164, align 8
  %coerce.val.pi165 = ptrtoint %struct.page* %53 to i64
  call fastcc void @put_dev_sector(i64 %coerce.val.pi165) #8
  br label %cleanup166

cleanup166:                                       ; preds = %entry, %cleanup156.3, %if.then50, %if.else, %if.then34, %if.then9, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.then34 ], [ 0, %if.else ], [ 0, %if.then50 ], [ 1, %cleanup156.3 ], [ 0, %if.then9 ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef readonly %q) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.request_queue* %q, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %logical_block_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 9
  %0 = load i32, i32* %logical_block_size, align 8
  %tobool2.not = icmp eq i32 %0, 0
  %spec.select = select i1 %tobool2.not, i32 512, i32 %0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %retval1.0 = phi i32 [ 512, %entry ], [ %spec.select, %land.lhs.true ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @read_part_sector(%struct.parsed_partitions* noundef, i64 noundef, %struct.Sector* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @aix_magic_present(%struct.parsed_partitions* noundef %state, i8* nocapture noundef readonly %p) unnamed_addr #0 {
entry:
  %sect = alloca %struct.Sector, align 8
  %add.ptr = getelementptr i8, i8* %p, i64 446
  %0 = bitcast i8* %add.ptr to %struct.msdos_partition*
  %1 = bitcast %struct.Sector* %sect to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %2 = bitcast %struct.Sector* %sect to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %3 = load i8, i8* %p, align 1
  %cmp = icmp eq i8 %3, -55
  br i1 %cmp, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, i8* %p, i64 1
  %4 = load i8, i8* %arrayidx2, align 1
  %cmp4 = icmp eq i8 %4, -62
  br i1 %cmp4, label %land.lhs.true6, label %cleanup

land.lhs.true6:                                   ; preds = %land.lhs.true
  %arrayidx7 = getelementptr i8, i8* %p, i64 2
  %5 = load i8, i8* %arrayidx7, align 1
  %cmp9 = icmp eq i8 %5, -44
  br i1 %cmp9, label %land.lhs.true11, label %cleanup

land.lhs.true11:                                  ; preds = %land.lhs.true6
  %arrayidx12 = getelementptr i8, i8* %p, i64 3
  %6 = load i8, i8* %arrayidx12, align 1
  %cmp14 = icmp eq i8 %6, -63
  br i1 %cmp14, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %land.lhs.true11
  %7 = getelementptr i8, i8* %p, i64 450
  %8 = load i8, i8* %7, align 1
  switch i8 %8, label %lor.lhs.false35 [
    i8 -126, label %cleanup
    i8 -3, label %cleanup
    i8 -125, label %cleanup
    i8 -114, label %cleanup
  ]

lor.lhs.false35:                                  ; preds = %for.body.preheader
  %call = call fastcc i32 @is_extended_partition(%struct.msdos_partition* noundef %0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %lor.lhs.false35
  %9 = getelementptr i8, i8* %p, i64 466
  %10 = load i8, i8* %9, align 1
  switch i8 %10, label %lor.lhs.false35.1 [
    i8 -126, label %cleanup
    i8 -3, label %cleanup
    i8 -125, label %cleanup
    i8 -114, label %cleanup
  ]

lor.lhs.false35.1:                                ; preds = %for.inc
  %incdec.ptr = getelementptr i8, i8* %p, i64 462
  %11 = bitcast i8* %incdec.ptr to %struct.msdos_partition*
  %call.1 = call fastcc i32 @is_extended_partition(%struct.msdos_partition* noundef %11) #8
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %cleanup

for.inc.1:                                        ; preds = %lor.lhs.false35.1
  %12 = getelementptr i8, i8* %p, i64 482
  %13 = load i8, i8* %12, align 1
  switch i8 %13, label %lor.lhs.false35.2 [
    i8 -126, label %cleanup
    i8 -3, label %cleanup
    i8 -125, label %cleanup
    i8 -114, label %cleanup
  ]

lor.lhs.false35.2:                                ; preds = %for.inc.1
  %incdec.ptr.1 = getelementptr i8, i8* %p, i64 478
  %14 = bitcast i8* %incdec.ptr.1 to %struct.msdos_partition*
  %call.2 = call fastcc i32 @is_extended_partition(%struct.msdos_partition* noundef %14) #8
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %cleanup

for.inc.2:                                        ; preds = %lor.lhs.false35.2
  %15 = getelementptr i8, i8* %p, i64 498
  %16 = load i8, i8* %15, align 1
  switch i8 %16, label %lor.lhs.false35.3 [
    i8 -126, label %cleanup
    i8 -3, label %cleanup
    i8 -125, label %cleanup
    i8 -114, label %cleanup
  ]

lor.lhs.false35.3:                                ; preds = %for.inc.2
  %incdec.ptr.2 = getelementptr i8, i8* %p, i64 494
  %17 = bitcast i8* %incdec.ptr.2 to %struct.msdos_partition*
  %call.3 = call fastcc i32 @is_extended_partition(%struct.msdos_partition* noundef %17) #8
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %cleanup

for.inc.3:                                        ; preds = %lor.lhs.false35.3
  %call38 = call i8* @read_part_sector(%struct.parsed_partitions* noundef %state, i64 noundef 7, %struct.Sector* noundef nonnull %sect) #9
  %tobool39.not = icmp eq i8* %call38, null
  br i1 %tobool39.not, label %cleanup, label %if.then40

if.then40:                                        ; preds = %for.inc.3
  %18 = load i8, i8* %call38, align 1
  %cmp43 = icmp eq i8 %18, 95
  br i1 %cmp43, label %land.lhs.true45, label %if.end61

land.lhs.true45:                                  ; preds = %if.then40
  %arrayidx46 = getelementptr i8, i8* %call38, i64 1
  %19 = load i8, i8* %arrayidx46, align 1
  %cmp48 = icmp eq i8 %19, 76
  br i1 %cmp48, label %land.lhs.true50, label %if.end61

land.lhs.true50:                                  ; preds = %land.lhs.true45
  %arrayidx51 = getelementptr i8, i8* %call38, i64 2
  %20 = load i8, i8* %arrayidx51, align 1
  %cmp53 = icmp eq i8 %20, 86
  br i1 %cmp53, label %land.lhs.true55, label %if.end61

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %arrayidx56 = getelementptr i8, i8* %call38, i64 3
  %21 = load i8, i8* %arrayidx56, align 1
  %cmp58 = icmp eq i8 %21, 77
  %spec.select = zext i1 %cmp58 to i32
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true55, %land.lhs.true50, %land.lhs.true45, %if.then40
  %ret.0 = phi i32 [ 0, %land.lhs.true50 ], [ 0, %land.lhs.true45 ], [ 0, %if.then40 ], [ %spec.select, %land.lhs.true55 ]
  %coerce.dive = getelementptr inbounds %struct.Sector, %struct.Sector* %sect, i64 0, i32 0
  %22 = load %struct.page*, %struct.page** %coerce.dive, align 8
  %coerce.val.pi = ptrtoint %struct.page* %22 to i64
  call fastcc void @put_dev_sector(i64 %coerce.val.pi) #8
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false35, %for.body.preheader, %for.body.preheader, %for.body.preheader, %for.body.preheader, %for.inc, %for.inc, %for.inc, %for.inc, %lor.lhs.false35.1, %for.inc.1, %for.inc.1, %for.inc.1, %for.inc.1, %lor.lhs.false35.2, %for.inc.2, %for.inc.2, %for.inc.2, %for.inc.2, %lor.lhs.false35.3, %for.inc.3, %if.end61, %entry, %land.lhs.true, %land.lhs.true6, %land.lhs.true11
  %retval.0 = phi i32 [ 0, %land.lhs.true11 ], [ 0, %land.lhs.true6 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %ret.0, %if.end61 ], [ 0, %for.inc.3 ], [ 0, %lor.lhs.false35.3 ], [ 0, %for.inc.2 ], [ 0, %for.inc.2 ], [ 0, %for.inc.2 ], [ 0, %for.inc.2 ], [ 0, %lor.lhs.false35.2 ], [ 0, %for.inc.1 ], [ 0, %for.inc.1 ], [ 0, %for.inc.1 ], [ 0, %for.inc.1 ], [ 0, %lor.lhs.false35.1 ], [ 0, %for.inc ], [ 0, %for.inc ], [ 0, %for.inc ], [ 0, %for.inc ], [ 0, %for.body.preheader ], [ 0, %for.body.preheader ], [ 0, %for.body.preheader ], [ 0, %for.body.preheader ], [ 0, %lor.lhs.false35 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_dev_sector(i64 %p.coerce) unnamed_addr #0 {
entry:
  %coerce.val.ip = inttoptr i64 %p.coerce to %struct.page*
  call fastcc void @put_page(%struct.page* noundef %coerce.val.ip) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @msdos_magic_present(i8* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %0 = load i8, i8* %p, align 1
  %cmp = icmp eq i8 %0, 85
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %arrayidx2 = getelementptr i8, i8* %p, i64 1
  %1 = load i8, i8* %arrayidx2, align 1
  %cmp4 = icmp eq i8 %1, -86
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fat_valid_media(i8 noundef %media) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8 %media, -9
  %cmp3 = icmp eq i8 %media, -16
  %0 = or i1 %cmp, %cmp3
  %lor.ext = zext i1 %0 to i32
  ret i32 %lor.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @start_sect(%struct.msdos_partition* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %start_sect = getelementptr inbounds %struct.msdos_partition, %struct.msdos_partition* %p, i64 0, i32 8
  %0 = bitcast i32* %start_sect to i8*
  %call = call fastcc i32 @get_unaligned_le32(i8* noundef %0) #8
  %conv = zext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @nr_sects(%struct.msdos_partition* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %nr_sects = getelementptr inbounds %struct.msdos_partition, %struct.msdos_partition* %p, i64 0, i32 9
  %0 = bitcast i32* %nr_sects to i8*
  %call = call fastcc i32 @get_unaligned_le32(i8* noundef %0) #8
  %conv = zext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_extended_partition(%struct.msdos_partition* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %sys_ind = getelementptr inbounds %struct.msdos_partition, %struct.msdos_partition* %p, i64 0, i32 4
  %0 = load i8, i8* %sys_ind, align 1
  switch i8 %0, label %lor.rhs [
    i8 5, label %lor.end
    i8 15, label %lor.end
  ]

lor.rhs:                                          ; preds = %entry
  %cmp8 = icmp eq i8 %0, -123
  %phi.cast = zext i1 %cmp8 to i32
  br label %lor.end

lor.end:                                          ; preds = %entry, %entry, %lor.rhs
  %1 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ], [ 1, %entry ]
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_partition(%struct.parsed_partitions* noundef %p, i32 noundef %n, i64 noundef %from, i64 noundef %size) unnamed_addr #0 {
entry:
  %tmp = alloca [44 x i8], align 1
  %limit = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %p, i64 0, i32 4
  %0 = load i32, i32* %limit, align 4
  %cmp = icmp sgt i32 %0, %n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds [44 x i8], [44 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(44) %1, i8 0, i64 44, i1 false), !annotation !7
  %parts = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %p, i64 0, i32 2
  %2 = load %struct.anon.78*, %struct.anon.78** %parts, align 8
  %idxprom = sext i32 %n to i64
  %from1 = getelementptr %struct.anon.78, %struct.anon.78* %2, i64 %idxprom, i32 0
  store i64 %from, i64* %from1, align 8
  %3 = load %struct.anon.78*, %struct.anon.78** %parts, align 8
  %size5 = getelementptr %struct.anon.78, %struct.anon.78* %3, i64 %idxprom, i32 1
  store i64 %size, i64* %size5, align 8
  %arraydecay6 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %p, i64 0, i32 1, i64 0
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %1, i64 noundef 44, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* noundef %arraydecay6, i32 noundef %n) #9
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %p, i64 0, i32 6
  %4 = load i8*, i8** %pp_buf, align 8
  %call8 = call i64 @strlcat(i8* noundef %4, i8* noundef nonnull %1, i64 noundef 4096) #9
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @parse_extended(%struct.parsed_partitions* noundef %state, i64 noundef %first_sector, i64 noundef %first_size, i32 noundef %disksig) unnamed_addr #0 {
entry:
  %sect = alloca %struct.Sector, align 8
  %0 = bitcast %struct.Sector* %sect to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.Sector* %sect to i64*, !annotation !7
  store i64 0, i64* %1, align 8, !annotation !7
  %disk = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 0
  %2 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 9
  %3 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %3) #8
  %div = lshr i32 %call, 9
  %conv = zext i32 %div to i64
  %next = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 3
  %limit = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 4
  %add39 = add i64 %first_size, %first_sector
  %parts = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 2
  %coerce.dive = getelementptr inbounds %struct.Sector, %struct.Sector* %sect, i64 0, i32 0
  br label %if.end

if.end:                                           ; preds = %entry, %if.end81
  %inc171 = phi i32 [ 1, %entry ], [ %inc, %if.end81 ]
  %this_size.0170 = phi i64 [ %first_size, %entry ], [ %mul86, %if.end81 ]
  %this_sector.0169 = phi i64 [ %first_sector, %entry ], [ %add84, %if.end81 ]
  %4 = load i32, i32* %next, align 8
  %5 = load i32, i32* %limit, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %cleanup89, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call i8* @read_part_sector(%struct.parsed_partitions* noundef %state, i64 noundef %this_sector.0169, %struct.Sector* noundef nonnull %sect) #9
  %tobool.not = icmp eq i8* %call6, null
  br i1 %tobool.not, label %cleanup89, label %if.end8

if.end8:                                          ; preds = %if.end5
  %add.ptr = getelementptr i8, i8* %call6, i64 510
  %call9 = call fastcc i32 @msdos_magic_present(i8* noundef %add.ptr) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %done, label %if.end12

if.end12:                                         ; preds = %if.end8
  %add.ptr13 = getelementptr i8, i8* %call6, i64 446
  %6 = bitcast i8* %add.ptr13 to %struct.msdos_partition*
  br label %for.body

for.body:                                         ; preds = %if.end12, %for.inc
  %i.0164 = phi i32 [ 0, %if.end12 ], [ %inc62, %for.inc ]
  %loopct.1163 = phi i32 [ %inc171, %if.end12 ], [ %loopct.2.ph, %for.inc ]
  %p.0161 = phi %struct.msdos_partition* [ %6, %if.end12 ], [ %incdec.ptr, %for.inc ]
  %call17 = call fastcc i64 @nr_sects(%struct.msdos_partition* noundef %p.0161) #8
  %tobool18.not = icmp eq i64 %call17, 0
  br i1 %tobool18.not, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call19 = call fastcc i32 @is_extended_partition(%struct.msdos_partition* noundef %p.0161) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %for.inc

if.end22:                                         ; preds = %lor.lhs.false
  %call23 = call fastcc i64 @start_sect(%struct.msdos_partition* noundef %p.0161) #8
  %mul = mul i64 %call23, %conv
  %mul25 = mul i64 %call17, %conv
  %add = add i64 %mul, %this_sector.0169
  %cmp26 = icmp ugt i32 %i.0164, 1
  br i1 %cmp26, label %if.then28, label %if.end44

if.then28:                                        ; preds = %if.end22
  %add29 = add i64 %mul, %mul25
  %cmp30 = icmp ugt i64 %add29, %this_size.0170
  %cmp34 = icmp ult i64 %add, %first_sector
  %or.cond = select i1 %cmp30, i1 true, i1 %cmp34
  %add38 = add i64 %add, %mul25
  %cmp40 = icmp ugt i64 %add38, %add39
  %or.cond172 = select i1 %or.cond, i1 true, i1 %cmp40
  br i1 %or.cond172, label %for.inc, label %if.end44

if.end44:                                         ; preds = %if.then28, %if.end22
  %7 = load i32, i32* %next, align 8
  call fastcc void @put_partition(%struct.parsed_partitions* noundef %state, i32 noundef %7, i64 noundef %add, i64 noundef %mul25) #8
  %8 = load i32, i32* %next, align 8
  call fastcc void @set_info(%struct.parsed_partitions* noundef %state, i32 noundef %8, i32 noundef %disksig) #8
  %sys_ind = getelementptr inbounds %struct.msdos_partition, %struct.msdos_partition* %p.0161, i64 0, i32 4
  %9 = load i8, i8* %sys_ind, align 1
  %cmp48 = icmp eq i8 %9, -3
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end44
  %10 = load %struct.anon.78*, %struct.anon.78** %parts, align 8
  %11 = load i32, i32* %next, align 8
  %idxprom = sext i32 %11 to i64
  %flags = getelementptr %struct.anon.78, %struct.anon.78* %10, i64 %idxprom, i32 2
  store i32 1, i32* %flags, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end44
  %12 = load i32, i32* %next, align 8
  %inc54 = add i32 %12, 1
  store i32 %inc54, i32* %next, align 8
  %13 = load i32, i32* %limit, align 4
  %cmp56 = icmp eq i32 %inc54, %13
  br i1 %cmp56, label %done, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %for.body, %if.then28, %if.end52
  %loopct.2.ph = phi i32 [ 0, %if.end52 ], [ %loopct.1163, %if.then28 ], [ %loopct.1163, %for.body ], [ %loopct.1163, %lor.lhs.false ]
  %inc62 = add nuw nsw i32 %i.0164, 1
  %incdec.ptr = getelementptr %struct.msdos_partition, %struct.msdos_partition* %p.0161, i64 1
  %exitcond.not = icmp eq i32 %inc62, 4
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %add.ptr63 = getelementptr %struct.msdos_partition, %struct.msdos_partition* %p.0161, i64 -3
  %call68 = call fastcc i64 @nr_sects(%struct.msdos_partition* noundef %add.ptr63) #8
  %tobool69.not = icmp eq i64 %call68, 0
  br i1 %tobool69.not, label %for.inc74, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %call70 = call fastcc i32 @is_extended_partition(%struct.msdos_partition* noundef %add.ptr63) #8
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %for.inc74, label %if.end81

for.inc74:                                        ; preds = %for.end, %land.lhs.true
  %incdec.ptr76 = getelementptr %struct.msdos_partition, %struct.msdos_partition* %p.0161, i64 -2
  %call68.1 = call fastcc i64 @nr_sects(%struct.msdos_partition* noundef %incdec.ptr76) #8
  %tobool69.not.1 = icmp eq i64 %call68.1, 0
  br i1 %tobool69.not.1, label %for.inc74.1, label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %for.inc74
  %call70.1 = call fastcc i32 @is_extended_partition(%struct.msdos_partition* noundef %incdec.ptr76) #8
  %tobool71.not.1 = icmp eq i32 %call70.1, 0
  br i1 %tobool71.not.1, label %for.inc74.1, label %if.end81

for.inc74.1:                                      ; preds = %land.lhs.true.1, %for.inc74
  %incdec.ptr76.1 = getelementptr %struct.msdos_partition, %struct.msdos_partition* %p.0161, i64 -1
  %call68.2 = call fastcc i64 @nr_sects(%struct.msdos_partition* noundef %incdec.ptr76.1) #8
  %tobool69.not.2 = icmp eq i64 %call68.2, 0
  br i1 %tobool69.not.2, label %for.inc74.2, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %for.inc74.1
  %call70.2 = call fastcc i32 @is_extended_partition(%struct.msdos_partition* noundef %incdec.ptr76.1) #8
  %tobool71.not.2 = icmp eq i32 %call70.2, 0
  br i1 %tobool71.not.2, label %for.inc74.2, label %if.end81

for.inc74.2:                                      ; preds = %land.lhs.true.2, %for.inc74.1
  %call68.3 = call fastcc i64 @nr_sects(%struct.msdos_partition* noundef %p.0161) #8
  %tobool69.not.3 = icmp eq i64 %call68.3, 0
  br i1 %tobool69.not.3, label %done, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %for.inc74.2
  %call70.3 = call fastcc i32 @is_extended_partition(%struct.msdos_partition* noundef %p.0161) #8
  %tobool71.not.3 = icmp eq i32 %call70.3, 0
  br i1 %tobool71.not.3, label %done, label %if.end81

if.end81:                                         ; preds = %land.lhs.true, %land.lhs.true.1, %land.lhs.true.2, %land.lhs.true.3
  %p.1166.lcssa = phi %struct.msdos_partition* [ %add.ptr63, %land.lhs.true ], [ %incdec.ptr76, %land.lhs.true.1 ], [ %incdec.ptr76.1, %land.lhs.true.2 ], [ %p.0161, %land.lhs.true.3 ]
  %call82 = call fastcc i64 @start_sect(%struct.msdos_partition* noundef %p.1166.lcssa) #8
  %mul83 = mul i64 %call82, %conv
  %add84 = add i64 %mul83, %first_sector
  %call85 = call fastcc i64 @nr_sects(%struct.msdos_partition* noundef %p.1166.lcssa) #8
  %mul86 = mul i64 %call85, %conv
  %14 = load %struct.page*, %struct.page** %coerce.dive, align 8
  %coerce.val.pi = ptrtoint %struct.page* %14 to i64
  call fastcc void @put_dev_sector(i64 %coerce.val.pi) #8
  %inc = add i32 %loopct.2.ph, 1
  %cmp = icmp sgt i32 %inc, 100
  br i1 %cmp, label %cleanup89, label %if.end

done:                                             ; preds = %if.end8, %land.lhs.true.3, %for.inc74.2, %if.end52
  %15 = load %struct.page*, %struct.page** %coerce.dive, align 8
  %coerce.val.pi88 = ptrtoint %struct.page* %15 to i64
  call fastcc void @put_dev_sector(i64 %coerce.val.pi88) #8
  br label %cleanup89

cleanup89:                                        ; preds = %if.end5, %if.end, %if.end81, %done
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_info(%struct.parsed_partitions* nocapture noundef readonly %state, i32 noundef %slot, i32 noundef %disksig) unnamed_addr #0 {
entry:
  %parts = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 2
  %0 = load %struct.anon.78*, %struct.anon.78** %parts, align 8
  %idxprom = sext i32 %slot to i64
  %arraydecay = getelementptr %struct.anon.78, %struct.anon.78* %0, i64 %idxprom, i32 4, i32 0, i64 0
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 noundef %disksig, i32 noundef %slot) #9
  %arrayidx2 = getelementptr %struct.anon.78, %struct.anon.78* %0, i64 %idxprom, i32 4, i32 1, i64 0
  store i8 0, i8* %arrayidx2, align 1
  %1 = load %struct.anon.78*, %struct.anon.78** %parts, align 8
  %has_info = getelementptr %struct.anon.78, %struct.anon.78* %1, i64 %idxprom, i32 3
  store i8 1, i8* %has_info, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #8
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #6 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.8* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

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
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #9
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #7, !srcloc !9
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_unaligned_le32(i8* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %x = bitcast i8* %p to i32*
  %0 = load i32, i32* %x, align 1
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @parse_freebsd(%struct.parsed_partitions* nocapture noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #5 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @parse_netbsd(%struct.parsed_partitions* nocapture noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #5 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @parse_openbsd(%struct.parsed_partitions* nocapture noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #5 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @parse_minix(%struct.parsed_partitions* nocapture noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #5 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @parse_unixware(%struct.parsed_partitions* nocapture noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #5 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @parse_solaris_x86(%struct.parsed_partitions* nocapture noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #5 {
entry:
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"auto-init"}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148075544, i64 2148076192, i64 2148076222, i64 2148076254, i64 2148076288, i64 2148076324, i64 2148076349}
