; ModuleID = 'block/partitions/efi.c'
source_filename = "block/partitions/efi.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.kmem_cache = type opaque
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
%struct._gpt_header = type <{ i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.guid_t, i64, i32, i32, i32 }>
%struct.guid_t = type { [16 x i8] }
%struct._gpt_entry = type { %struct.guid_t, %struct.guid_t, i64, i64, %struct._gpt_entry_attributes, [36 x i16] }
%struct._gpt_entry_attributes = type { i64 }
%struct._legacy_mbr = type <{ [440 x i8], i32, i16, [4 x %struct._gpt_mbr_record], i16 }>
%struct._gpt_mbr_record = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.Sector = type { %struct.page* }

@__setup_str_force_gpt_fn = internal constant [4 x i8] c"gpt\00", section ".init.rodata", align 1
@__setup_force_gpt_fn = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @__setup_str_force_gpt_fn, i32 0, i32 0), i32 (i8*)* @force_gpt_fn, i32 0 }, section ".init.setup", align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@force_gpt = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"\014Alternate GPT is invalid, using primary GPT.\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"\014Primary GPT is invalid, using alternate GPT.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"\014GPT:Primary header LBA != Alt. header alternate_lba\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\014GPT:%lld != %lld\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\014GPT:Primary header alternate_lba != Alt. header my_lba\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\014GPT:first_usable_lbas don't match.\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"\014GPT:last_usable_lbas don't match.\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\014GPT:disk_guids don't match.\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"\014GPT:num_partition_entries don't match: 0x%x != 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"\014GPT:sizeof_partition_entry values don't match: 0x%x != 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"\014GPT:partition_entry_array_crc32 values don't match: 0x%x != 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"\014GPT:Primary header thinks Alt. header is not at the end of the disk.\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"\014GPT:Alternate GPT header not at the end of the disk.\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"\014GPT: Use GNU Parted to correct GPT errors.\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" %s%d\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%pUl\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_force_gpt_fn to i8*)], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @force_gpt_fn(i8* nocapture noundef readnone %str) #0 section ".init.text" {
entry:
  store i1 true, i1* @force_gpt, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @efi_partition(%struct.parsed_partitions* noundef %state) local_unnamed_addr #1 {
entry:
  %gpt = alloca %struct._gpt_header*, align 8
  %ptes = alloca %struct._gpt_entry*, align 8
  %0 = bitcast %struct._gpt_header** %gpt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store %struct._gpt_header* null, %struct._gpt_header** %gpt, align 8
  %1 = bitcast %struct._gpt_entry** %ptes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  store %struct._gpt_entry* null, %struct._gpt_entry** %ptes, align 8
  %disk = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 0
  %2 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 9
  %3 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %3) #16
  %div = lshr i32 %call, 9
  %call1 = call fastcc i32 @find_valid_gpt(%struct.parsed_partitions* noundef %state, %struct._gpt_header** noundef nonnull %gpt, %struct._gpt_entry** noundef nonnull %ptes) #16
  %tobool = icmp ne i32 %call1, 0
  %4 = load %struct._gpt_header*, %struct._gpt_header** %gpt, align 8
  %tobool2 = icmp ne %struct._gpt_header* %4, null
  %or.cond = select i1 %tobool, i1 %tobool2, i1 false
  %5 = load %struct._gpt_entry*, %struct._gpt_entry** %ptes, align 8
  %tobool4 = icmp ne %struct._gpt_entry* %5, null
  %or.cond71 = select i1 %or.cond, i1 %tobool4, i1 false
  %6 = bitcast %struct._gpt_header* %4 to i8*
  br i1 %or.cond71, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %7 = getelementptr %struct._gpt_entry, %struct._gpt_entry* %5, i64 0, i32 0, i32 0, i64 0
  %limit = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 4
  %num_partition_entries = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %4, i64 0, i32 11
  %8 = load i32, i32* %num_partition_entries, align 1
  %cmp103.not = icmp eq i32 %8, 0
  br i1 %cmp103.not, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %conv = zext i32 %div to i64
  %parts = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 2
  br label %land.rhs

if.then:                                          ; preds = %entry
  call void @kfree(i8* noundef %6) #17
  %9 = bitcast %struct._gpt_entry** %ptes to i8**
  %10 = load i8*, i8** %9, align 8
  call void @kfree(i8* noundef %10) #17
  br label %cleanup67

land.rhs:                                         ; preds = %land.rhs.lr.ph, %cleanup
  %indvars.iv = phi i64 [ 0, %land.rhs.lr.ph ], [ %indvars.iv.next.pre-phi, %cleanup ]
  %11 = load i32, i32* %limit, align 4
  %sub = add i32 %11, -1
  %12 = zext i32 %sub to i64
  %cmp5 = icmp ult i64 %indvars.iv, %12
  br i1 %cmp5, label %for.body, label %for.end.loopexit

for.body:                                         ; preds = %land.rhs
  %13 = load %struct._gpt_entry*, %struct._gpt_entry** %ptes, align 8
  %arrayidx = getelementptr %struct._gpt_entry, %struct._gpt_entry* %13, i64 %indvars.iv
  %starting_lba = getelementptr %struct._gpt_entry, %struct._gpt_entry* %13, i64 %indvars.iv, i32 2
  %14 = load i64, i64* %starting_lba, align 1
  %ending_lba = getelementptr %struct._gpt_entry, %struct._gpt_entry* %13, i64 %indvars.iv, i32 3
  %15 = load i64, i64* %ending_lba, align 1
  %16 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %call15 = call fastcc i64 @last_lba(%struct.gendisk* noundef %16) #16
  %call16 = call fastcc i32 @is_pte_valid(%struct._gpt_entry* noundef %arrayidx, i64 noundef %call15) #16
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.body.cleanup_crit_edge, label %if.end19

for.body.cleanup_crit_edge:                       ; preds = %for.body
  %.pre109 = add nuw nsw i64 %indvars.iv, 1
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %sub11 = sub i64 1, %14
  %add = add i64 %sub11, %15
  %17 = add nuw nsw i64 %indvars.iv, 1
  %mul = mul i64 %14, %conv
  %mul22 = mul i64 %add, %conv
  %18 = trunc i64 %17 to i32
  call fastcc void @put_partition(%struct.parsed_partitions* noundef %state, i32 noundef %18, i64 noundef %mul, i64 noundef %mul22) #16
  %19 = load %struct._gpt_entry*, %struct._gpt_entry** %ptes, align 8
  %coerce.dive = getelementptr %struct._gpt_entry, %struct._gpt_entry* %19, i64 %indvars.iv, i32 0, i32 0
  %.elt = bitcast [16 x i8]* %coerce.dive to i64*
  %.unpack = load i64, i64* %.elt, align 1
  %20 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt101 = getelementptr %struct._gpt_entry, %struct._gpt_entry* %19, i64 %indvars.iv, i32 0, i32 0, i64 8
  %21 = bitcast i8* %.elt101 to i64*
  %.unpack102 = load i64, i64* %21, align 1
  %22 = insertvalue [2 x i64] %20, i64 %.unpack102, 1
  %call40 = call fastcc i32 @efi_guidcmp([2 x i64] %22, [2 x i64] [i64 5565048347147733007, i64 2202686893784827552]) #16
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end19
  %23 = load %struct.anon.78*, %struct.anon.78** %parts, align 8
  %flags = getelementptr %struct.anon.78, %struct.anon.78* %23, i64 %17, i32 2
  store i32 1, i32* %flags, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end19
  %24 = load %struct.anon.78*, %struct.anon.78** %parts, align 8
  %25 = load %struct._gpt_entry*, %struct._gpt_entry** %ptes, align 8
  %unique_partition_guid = getelementptr %struct._gpt_entry, %struct._gpt_entry* %25, i64 %indvars.iv, i32 1
  %arraydecay = getelementptr %struct.anon.78, %struct.anon.78* %24, i64 %17, i32 4, i32 0, i64 0
  call fastcc void @efi_guid_to_str(%struct.guid_t* noundef %unique_partition_guid, i8* noundef %arraydecay) #16
  %26 = load %struct._gpt_entry*, %struct._gpt_entry** %ptes, align 8
  %arraydecay57 = getelementptr %struct._gpt_entry, %struct._gpt_entry* %26, i64 %indvars.iv, i32 5, i64 0
  %arraydecay58 = getelementptr %struct.anon.78, %struct.anon.78* %24, i64 %17, i32 4, i32 1, i64 0
  call fastcc void @utf16_le_to_7bit(i16* noundef %arraydecay57, i8* noundef %arraydecay58) #16
  %27 = load %struct.anon.78*, %struct.anon.78** %parts, align 8
  %has_info = getelementptr %struct.anon.78, %struct.anon.78* %27, i64 %17, i32 3
  store i8 1, i8* %has_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end46
  %indvars.iv.next.pre-phi = phi i64 [ %.pre109, %for.body.cleanup_crit_edge ], [ %17, %if.end46 ]
  %28 = load i32, i32* %num_partition_entries, align 1
  %29 = zext i32 %28 to i64
  %cmp = icmp ult i64 %indvars.iv.next.pre-phi, %29
  br i1 %cmp, label %land.rhs, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %cleanup, %land.rhs
  %.phi.trans.insert = bitcast %struct._gpt_entry** %ptes to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8
  br label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.end.loopexit
  %30 = phi i8* [ %.pre, %for.end.loopexit ], [ %7, %for.cond.preheader ]
  call void @kfree(i8* noundef %30) #17
  call void @kfree(i8* noundef nonnull %6) #17
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 6
  %31 = load i8*, i8** %pp_buf, align 8
  %call66 = call i64 @strlcat(i8* noundef %31, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 noundef 4096) #17
  br label %cleanup67

cleanup67:                                        ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @find_valid_gpt(%struct.parsed_partitions* noundef %state, %struct._gpt_header** nocapture noundef writeonly %gpt, %struct._gpt_entry** noundef writeonly %ptes) unnamed_addr #1 {
entry:
  %pgpt = alloca %struct._gpt_header*, align 8
  %agpt = alloca %struct._gpt_header*, align 8
  %pptes = alloca %struct._gpt_entry*, align 8
  %aptes = alloca %struct._gpt_entry*, align 8
  %agpt_sector = alloca i64, align 8
  %0 = bitcast %struct._gpt_header** %pgpt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store %struct._gpt_header* null, %struct._gpt_header** %pgpt, align 8
  %1 = bitcast %struct._gpt_header** %agpt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  store %struct._gpt_header* null, %struct._gpt_header** %agpt, align 8
  %2 = bitcast %struct._gpt_entry** %pptes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  store %struct._gpt_entry* null, %struct._gpt_entry** %pptes, align 8
  %3 = bitcast %struct._gpt_entry** %aptes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #15
  store %struct._gpt_entry* null, %struct._gpt_entry** %aptes, align 8
  %disk1 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 0
  %4 = load %struct.gendisk*, %struct.gendisk** %disk1, align 8
  %fops2 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i64 0, i32 8
  %5 = load %struct.block_device_operations*, %struct.block_device_operations** %fops2, align 8
  %call = call fastcc i64 @get_capacity(%struct.gendisk* noundef %4) #16
  %tobool.not = icmp eq %struct._gpt_entry** %ptes, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call5 = call fastcc i64 @last_lba(%struct.gendisk* noundef %4) #16
  %.b109 = load i1, i1* @force_gpt, align 4
  br i1 %.b109, label %if.end17, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = call fastcc i8* @kzalloc() #16
  %tobool9.not = icmp eq i8* %call8, null
  br i1 %tobool9.not, label %fail, label %if.end11

if.end11:                                         ; preds = %if.then7
  %6 = bitcast i8* %call8 to %struct._legacy_mbr*
  %call12 = call fastcc i64 @read_lba(%struct.parsed_partitions* noundef %state, i64 noundef 0, i8* noundef nonnull %call8, i64 noundef 512) #16
  %call13 = call fastcc i32 @is_pmbr_valid(%struct._legacy_mbr* noundef nonnull %6, i64 noundef %call) #16
  call void @kfree(i8* noundef nonnull %call8) #17
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %fail, label %if.end17

if.end17:                                         ; preds = %if.end11, %if.end
  %call18 = call fastcc i32 @is_gpt_valid(%struct.parsed_partitions* noundef %state, i64 noundef 1, %struct._gpt_header** noundef nonnull %pgpt, %struct._gpt_entry** noundef nonnull %pptes) #16
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  %7 = load %struct._gpt_header*, %struct._gpt_header** %pgpt, align 8
  %alternate_lba = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %7, i64 0, i32 6
  %8 = load i64, i64* %alternate_lba, align 1
  %call21 = call fastcc i32 @is_gpt_valid(%struct.parsed_partitions* noundef %state, i64 noundef %8, %struct._gpt_header** noundef nonnull %agpt, %struct._gpt_entry** noundef nonnull %aptes) #16
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17
  %good_agpt.0 = phi i32 [ %call21, %if.then20 ], [ 0, %if.end17 ]
  %tobool23 = icmp eq i32 %good_agpt.0, 0
  %.b108 = load i1, i1* @force_gpt, align 4
  %or.cond = select i1 %tobool23, i1 %.b108, i1 false
  br i1 %or.cond, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  %call26 = call fastcc i32 @is_gpt_valid(%struct.parsed_partitions* noundef %state, i64 noundef %call5, %struct._gpt_header** noundef nonnull %agpt, %struct._gpt_entry** noundef nonnull %aptes) #16
  %.b.pre = load i1, i1* @force_gpt, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22
  %.b = phi i1 [ %.b.pre, %if.then25 ], [ %.b108, %if.end22 ]
  %good_agpt.1 = phi i32 [ %call26, %if.then25 ], [ %good_agpt.0, %if.end22 ]
  %tobool28 = icmp eq i32 %good_agpt.1, 0
  %or.cond73 = select i1 %tobool28, i1 %.b, i1 false
  br i1 %or.cond73, label %land.lhs.true31, label %if.end40

land.lhs.true31:                                  ; preds = %if.end27
  %alternative_gpt_sector = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %5, i64 0, i32 15
  %9 = load i32 (%struct.gendisk*, i64*)*, i32 (%struct.gendisk*, i64*)** %alternative_gpt_sector, align 8
  %tobool32.not = icmp eq i32 (%struct.gendisk*, i64*)* %9, null
  br i1 %tobool32.not, label %if.end40, label %if.then33

if.then33:                                        ; preds = %land.lhs.true31
  %10 = bitcast i64* %agpt_sector to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #15
  store i64 0, i64* %agpt_sector, align 8, !annotation !7
  %call35 = call i32 %9(%struct.gendisk* noundef %4, i64* noundef nonnull %agpt_sector) #17
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.then33
  %11 = load i64, i64* %agpt_sector, align 8
  %call38 = call fastcc i32 @is_gpt_valid(%struct.parsed_partitions* noundef %state, i64 noundef %11, %struct._gpt_header** noundef nonnull %agpt, %struct._gpt_entry** noundef nonnull %aptes) #16
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then33
  %good_agpt.2 = phi i32 [ 0, %if.then33 ], [ %call38, %if.then37 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #15
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %land.lhs.true31, %if.end27
  %good_agpt.3 = phi i32 [ %good_agpt.2, %if.end39 ], [ 0, %land.lhs.true31 ], [ %good_agpt.1, %if.end27 ]
  %tobool43 = icmp ne i32 %good_agpt.3, 0
  %or.cond74 = select i1 %tobool19, i1 true, i1 %tobool43
  br i1 %or.cond74, label %if.end45, label %if.end40.fail_crit_edge

if.end40.fail_crit_edge:                          ; preds = %if.end40
  %.phi.trans.insert = bitcast %struct._gpt_header** %pgpt to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8
  %.phi.trans.insert111 = bitcast %struct._gpt_header** %agpt to i8**
  %.pre112 = load i8*, i8** %.phi.trans.insert111, align 8
  br label %fail

if.end45:                                         ; preds = %if.end40
  %12 = load %struct._gpt_header*, %struct._gpt_header** %pgpt, align 8
  %13 = load %struct._gpt_header*, %struct._gpt_header** %agpt, align 8
  call fastcc void @compare_gpts(%struct._gpt_header* noundef %12, %struct._gpt_header* noundef %13, i64 noundef %call5) #16
  %14 = bitcast %struct._gpt_header* %12 to i8*
  %15 = bitcast %struct._gpt_header* %13 to i8*
  br i1 %tobool19, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end45
  store %struct._gpt_header* %12, %struct._gpt_header** %gpt, align 8
  %16 = load %struct._gpt_entry*, %struct._gpt_entry** %pptes, align 8
  store %struct._gpt_entry* %16, %struct._gpt_entry** %ptes, align 8
  call void @kfree(i8* noundef %15) #17
  %17 = bitcast %struct._gpt_entry** %aptes to i8**
  %18 = load i8*, i8** %17, align 8
  call void @kfree(i8* noundef %18) #17
  br i1 %tobool43, label %cleanup, label %do.end

do.end:                                           ; preds = %if.then47
  %call51 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0)) #18
  br label %cleanup

if.else:                                          ; preds = %if.end45
  br i1 %tobool43, label %if.then54, label %fail

if.then54:                                        ; preds = %if.else
  store %struct._gpt_header* %13, %struct._gpt_header** %gpt, align 8
  %19 = load %struct._gpt_entry*, %struct._gpt_entry** %aptes, align 8
  store %struct._gpt_entry* %19, %struct._gpt_entry** %ptes, align 8
  call void @kfree(i8* noundef %14) #17
  %20 = bitcast %struct._gpt_entry** %pptes to i8**
  %21 = load i8*, i8** %20, align 8
  call void @kfree(i8* noundef %21) #17
  %call59 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0)) #18
  br label %cleanup

fail:                                             ; preds = %if.end40.fail_crit_edge, %if.else, %if.end11, %if.then7
  %22 = phi i8* [ %.pre112, %if.end40.fail_crit_edge ], [ %15, %if.else ], [ null, %if.end11 ], [ null, %if.then7 ]
  %23 = phi i8* [ %.pre, %if.end40.fail_crit_edge ], [ %14, %if.else ], [ null, %if.end11 ], [ null, %if.then7 ]
  call void @kfree(i8* noundef %23) #17
  call void @kfree(i8* noundef %22) #17
  %24 = bitcast %struct._gpt_entry** %pptes to i8**
  %25 = load i8*, i8** %24, align 8
  call void @kfree(i8* noundef %25) #17
  %26 = bitcast %struct._gpt_entry** %aptes to i8**
  %27 = load i8*, i8** %26, align 8
  call void @kfree(i8* noundef %27) #17
  store %struct._gpt_header* null, %struct._gpt_header** %gpt, align 8
  store %struct._gpt_entry* null, %struct._gpt_entry** %ptes, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %do.end, %entry, %fail, %if.then54
  %retval.0 = phi i32 [ 1, %if.then54 ], [ 0, %fail ], [ 0, %entry ], [ 1, %do.end ], [ 1, %if.then47 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @is_pte_valid(%struct._gpt_entry* nocapture noundef readonly %pte, i64 noundef %lastlba) unnamed_addr #1 {
entry:
  %.elt = bitcast %struct._gpt_entry* %pte to i64*
  %.unpack = load i64, i64* %.elt, align 1
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt21 = getelementptr inbounds %struct._gpt_entry, %struct._gpt_entry* %pte, i64 0, i32 0, i32 0, i64 8
  %1 = bitcast i8* %.elt21 to i64*
  %.unpack22 = load i64, i64* %1, align 1
  %2 = insertvalue [2 x i64] %0, i64 %.unpack22, 1
  %call = call fastcc i32 @efi_guidcmp([2 x i64] %2, [2 x i64] zeroinitializer) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %starting_lba = getelementptr inbounds %struct._gpt_entry, %struct._gpt_entry* %pte, i64 0, i32 2
  %3 = load i64, i64* %starting_lba, align 1
  %cmp = icmp ugt i64 %3, %lastlba
  br i1 %cmp, label %return, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %ending_lba = getelementptr inbounds %struct._gpt_entry, %struct._gpt_entry* %pte, i64 0, i32 3
  %4 = load i64, i64* %ending_lba, align 1
  %cmp17 = icmp ule i64 %4, %lastlba
  %spec.select = zext i1 %cmp17 to i32
  br label %return

return:                                           ; preds = %lor.lhs.false16, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false16 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @last_lba(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #5 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 6
  %1 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 11
  %2 = load i64, i64* %i_size, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 9
  %3 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %3) #16
  %call1 = call fastcc i64 @div_u64(i64 noundef %2, i32 noundef %call) #16
  %sub = add i64 %call1, -1
  ret i64 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_partition(%struct.parsed_partitions* noundef %p, i32 noundef %n, i64 noundef %from, i64 noundef %size) unnamed_addr #1 {
entry:
  %tmp = alloca [44 x i8], align 1
  %limit = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %p, i64 0, i32 4
  %0 = load i32, i32* %limit, align 4
  %cmp = icmp sgt i32 %0, %n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds [44 x i8], [44 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %1) #15
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
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %1, i64 noundef 44, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* noundef %arraydecay6, i32 noundef %n) #17
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %p, i64 0, i32 6
  %4 = load i8*, i8** %pp_buf, align 8
  %call8 = call i64 @strlcat(i8* noundef %4, i8* noundef nonnull %1, i64 noundef 4096) #17
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @efi_guidcmp([2 x i64] %left.coerce, [2 x i64] %right.coerce) unnamed_addr #1 {
entry:
  %left = alloca [2 x i64], align 8
  %right = alloca [2 x i64], align 8
  %left.coerce.fca.0.extract = extractvalue [2 x i64] %left.coerce, 0
  %left.coerce.fca.0.gep = getelementptr inbounds [2 x i64], [2 x i64]* %left, i64 0, i64 0
  store i64 %left.coerce.fca.0.extract, i64* %left.coerce.fca.0.gep, align 8
  %left.coerce.fca.1.extract = extractvalue [2 x i64] %left.coerce, 1
  %left.coerce.fca.1.gep = getelementptr inbounds [2 x i64], [2 x i64]* %left, i64 0, i64 1
  store i64 %left.coerce.fca.1.extract, i64* %left.coerce.fca.1.gep, align 8
  %right.coerce.fca.0.extract = extractvalue [2 x i64] %right.coerce, 0
  %right.coerce.fca.0.gep = getelementptr inbounds [2 x i64], [2 x i64]* %right, i64 0, i64 0
  store i64 %right.coerce.fca.0.extract, i64* %right.coerce.fca.0.gep, align 8
  %right.coerce.fca.1.extract = extractvalue [2 x i64] %right.coerce, 1
  %right.coerce.fca.1.gep = getelementptr inbounds [2 x i64], [2 x i64]* %right, i64 0, i64 1
  store i64 %right.coerce.fca.1.extract, i64* %right.coerce.fca.1.gep, align 8
  %0 = bitcast [2 x i64]* %left to i8*
  %1 = bitcast [2 x i64]* %right to i8*
  %call = call i32 @memcmp(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef 16) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @efi_guid_to_str(%struct.guid_t* noundef %guid, i8* noundef %out) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.guid_t, %struct.guid_t* %guid, i64 0, i32 0, i64 0
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* noundef %arraydecay) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @utf16_le_to_7bit(i16* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out) unnamed_addr #6 {
entry:
  %arrayidx = getelementptr i8, i8* %out, i64 36
  store i8 0, i8* %arrayidx, align 1
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %arrayidx2 = getelementptr i16, i16* %in, i64 %indvars.iv
  %0 = load i16, i16* %arrayidx2, align 2
  %conv3 = trunc i16 %0 to i8
  %conv3.mask = and i16 %0, 255
  %tobool.not = icmp eq i16 %conv3.mask, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %idxprom6 = zext i16 %conv3.mask to i64
  %arrayidx7 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom6
  %1 = load i8, i8* %arrayidx7, align 1
  %2 = and i8 %1, -105
  %cmp10.not = icmp eq i8 %2, 0
  %spec.store.select = select i1 %cmp10.not, i8 33, i8 %conv3
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %while.body
  %c.0 = phi i8 [ %spec.store.select, %land.lhs.true ], [ %conv3, %while.body ]
  %arrayidx13 = getelementptr i8, i8* %out, i64 %indvars.iv
  store i8 %c.0, i8* %arrayidx13, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 36
  br i1 %exitcond.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @get_capacity(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #3 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %call = call fastcc i64 @bdev_nr_sectors(%struct.block_device* noundef %0) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 9), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #17
  ret i8* %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @read_lba(%struct.parsed_partitions* noundef %state, i64 noundef %lba, i8* noundef %buffer, i64 noundef %count) unnamed_addr #1 {
entry:
  %sect = alloca %struct.Sector, align 8
  %disk = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 0
  %0 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %tobool.not = icmp eq i8* %buffer, null
  br i1 %tobool.not, label %cleanup21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 9
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %1) #16
  %call2 = call fastcc i64 @last_lba(%struct.gendisk* noundef %0) #16
  %cmp = icmp ult i64 %call2, %lba
  %tobool4.not47 = icmp eq i64 %count, 0
  %or.cond = or i1 %cmp, %tobool4.not47
  br i1 %or.cond, label %cleanup21, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %lor.lhs.false
  %div = lshr i32 %call, 9
  %conv = zext i32 %div to i64
  %mul = mul i64 %conv, %lba
  %2 = bitcast %struct.Sector* %sect to i8*
  %3 = bitcast %struct.Sector* %sect to i64*, !annotation !7
  %coerce.dive = getelementptr inbounds %struct.Sector, %struct.Sector* %sect, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %n.051 = phi i64 [ %mul, %while.body.lr.ph ], [ %inc, %cleanup ]
  %totalreadcount.050 = phi i64 [ 0, %while.body.lr.ph ], [ %add, %cleanup ]
  %count.addr.049 = phi i64 [ %count, %while.body.lr.ph ], [ %sub, %cleanup ]
  %buffer.addr.048 = phi i8* [ %buffer, %while.body.lr.ph ], [ %add.ptr, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  store i64 0, i64* %3, align 8, !annotation !7
  %call5 = call i8* @read_part_sector(%struct.parsed_partitions* noundef %state, i64 noundef %n.051, %struct.Sector* noundef nonnull %sect) #17
  %tobool6.not = icmp eq i8* %call5, null
  br i1 %tobool6.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  br label %cleanup21

cleanup:                                          ; preds = %while.body
  %inc = add i64 %n.051, 1
  %cmp10 = icmp ult i64 %count.addr.049, 512
  %spec.select = select i1 %cmp10, i64 %count.addr.049, i64 512
  %call16 = call i8* @memcpy(i8* noundef %buffer.addr.048, i8* noundef nonnull %call5, i64 noundef %spec.select) #17
  %4 = load %struct.page*, %struct.page** %coerce.dive, align 8
  %coerce.val.pi = ptrtoint %struct.page* %4 to i64
  call fastcc void @put_dev_sector(i64 %coerce.val.pi) #16
  %add.ptr = getelementptr i8, i8* %buffer.addr.048, i64 %spec.select
  %add = add i64 %spec.select, %totalreadcount.050
  %sub = sub i64 %count.addr.049, %spec.select
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  %tobool4.not = icmp eq i64 %sub, 0
  br i1 %tobool4.not, label %cleanup21, label %while.body

cleanup21:                                        ; preds = %cleanup, %cleanup.thread, %entry, %lor.lhs.false
  %retval.0 = phi i64 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %totalreadcount.050, %cleanup.thread ], [ %add, %cleanup ]
  ret i64 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @is_pmbr_valid(%struct._legacy_mbr* noundef readonly %mbr, i64 noundef %total_sectors) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq %struct._legacy_mbr* %mbr, null
  br i1 %tobool.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %signature = getelementptr inbounds %struct._legacy_mbr, %struct._legacy_mbr* %mbr, i64 0, i32 4
  %0 = load i16, i16* %signature, align 1
  %cmp.not = icmp eq i16 %0, -21931
  br i1 %cmp.not, label %for.body.preheader, label %done

for.body.preheader:                               ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct._legacy_mbr, %struct._legacy_mbr* %mbr, i64 0, i32 3, i64 0
  %call = call fastcc i32 @pmbr_part_valid(%struct._gpt_mbr_record* noundef %arrayidx) #16
  %cmp4 = icmp eq i32 %call, 1
  br i1 %cmp4, label %for.body15.preheader, label %for.cond

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct._legacy_mbr, %struct._legacy_mbr* %mbr, i64 0, i32 3, i64 1
  %call.1 = call fastcc i32 @pmbr_part_valid(%struct._gpt_mbr_record* noundef %arrayidx.1) #16
  %cmp4.1 = icmp eq i32 %call.1, 1
  br i1 %cmp4.1, label %for.body15.preheader, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct._legacy_mbr, %struct._legacy_mbr* %mbr, i64 0, i32 3, i64 2
  %call.2 = call fastcc i32 @pmbr_part_valid(%struct._gpt_mbr_record* noundef %arrayidx.2) #16
  %cmp4.2 = icmp eq i32 %call.2, 1
  br i1 %cmp4.2, label %for.body15.preheader, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct._legacy_mbr, %struct._legacy_mbr* %mbr, i64 0, i32 3, i64 3
  %call.3 = call fastcc i32 @pmbr_part_valid(%struct._gpt_mbr_record* noundef %arrayidx.3) #16
  %cmp4.3 = icmp eq i32 %call.3, 1
  br i1 %cmp4.3, label %for.body15.preheader, label %done

for.body15.preheader:                             ; preds = %for.cond.2, %for.cond.1, %for.cond, %for.body.preheader
  %os_type = getelementptr %struct._legacy_mbr, %struct._legacy_mbr* %mbr, i64 0, i32 3, i64 0, i32 4
  %1 = load i8, i8* %os_type, align 1
  %switch.selectcmp.case1 = icmp eq i8 %1, -18
  %switch.selectcmp.case2 = icmp eq i8 %1, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %2 = select i1 %switch.selectcmp, i32 1, i32 2
  %os_type.1 = getelementptr %struct._legacy_mbr, %struct._legacy_mbr* %mbr, i64 0, i32 3, i64 1, i32 4
  %3 = load i8, i8* %os_type.1, align 1
  switch i8 %3, label %if.then29.1 [
    i8 -18, label %for.inc31.1
    i8 0, label %for.inc31.1
  ]

if.then29.1:                                      ; preds = %for.body15.preheader
  br label %for.inc31.1

for.inc31.1:                                      ; preds = %if.then29.1, %for.body15.preheader, %for.body15.preheader
  %ret.3.1 = phi i32 [ 2, %if.then29.1 ], [ %2, %for.body15.preheader ], [ %2, %for.body15.preheader ]
  %os_type.2 = getelementptr %struct._legacy_mbr, %struct._legacy_mbr* %mbr, i64 0, i32 3, i64 2, i32 4
  %4 = load i8, i8* %os_type.2, align 1
  switch i8 %4, label %if.then29.2 [
    i8 -18, label %for.inc31.2
    i8 0, label %for.inc31.2
  ]

if.then29.2:                                      ; preds = %for.inc31.1
  br label %for.inc31.2

for.inc31.2:                                      ; preds = %if.then29.2, %for.inc31.1, %for.inc31.1
  %ret.3.2 = phi i32 [ 2, %if.then29.2 ], [ %ret.3.1, %for.inc31.1 ], [ %ret.3.1, %for.inc31.1 ]
  %os_type.3 = getelementptr %struct._legacy_mbr, %struct._legacy_mbr* %mbr, i64 0, i32 3, i64 3, i32 4
  %5 = load i8, i8* %os_type.3, align 1
  switch i8 %5, label %done [
    i8 -18, label %for.inc31.3
    i8 0, label %for.inc31.3
  ]

for.inc31.3:                                      ; preds = %for.inc31.2, %for.inc31.2
  %cmp34 = icmp eq i32 %ret.3.2, 1
  %spec.select = select i1 %cmp34, i32 1, i32 2
  br label %done

done:                                             ; preds = %for.inc31.3, %for.inc31.2, %for.cond.2, %entry, %lor.lhs.false
  %ret.4 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %call.3, %for.cond.2 ], [ 2, %for.inc31.2 ], [ %spec.select, %for.inc31.3 ]
  ret i32 %ret.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @is_gpt_valid(%struct.parsed_partitions* noundef %state, i64 noundef %lba, %struct._gpt_header** nocapture noundef %gpt, %struct._gpt_entry** noundef %ptes) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct._gpt_entry** %ptes, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct._gpt_header* @alloc_read_gpt_header(%struct.parsed_partitions* noundef %state, i64 noundef %lba) #16
  store %struct._gpt_header* %call, %struct._gpt_header** %gpt, align 8
  %tobool1.not = icmp eq %struct._gpt_header* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %signature = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %call, i64 0, i32 0
  %0 = load i64, i64* %signature, align 1
  %cmp.not = icmp eq i64 %0, 6075990659671082565
  br i1 %cmp.not, label %if.end5, label %fail

if.end5:                                          ; preds = %if.end3
  %header_size = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %call, i64 0, i32 2
  %1 = load i32, i32* %header_size, align 1
  %disk = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 0
  %2 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 9
  %3 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call6 = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %3) #16
  %cmp7 = icmp ugt i32 %1, %call6
  %cmp12 = icmp ult i32 %1, 92
  %or.cond116 = or i1 %cmp12, %cmp7
  br i1 %or.cond116, label %fail, label %if.end16

if.end16:                                         ; preds = %if.end5
  %header_crc32 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %call, i64 0, i32 3
  %4 = load i32, i32* %header_crc32, align 1
  store i32 0, i32* %header_crc32, align 1
  %5 = load %struct._gpt_header*, %struct._gpt_header** %gpt, align 8
  %6 = bitcast %struct._gpt_header* %5 to i8*
  %header_size18 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %5, i64 0, i32 2
  %7 = load i32, i32* %header_size18, align 1
  %conv19 = zext i32 %7 to i64
  %call20 = call fastcc i32 @efi_crc32(i8* noundef %6, i64 noundef %conv19) #16
  %cmp21.not = icmp eq i32 %call20, %4
  br i1 %cmp21.not, label %if.end25, label %fail

if.end25:                                         ; preds = %if.end16
  %header_crc3226 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %5, i64 0, i32 3
  store i32 %4, i32* %header_crc3226, align 1
  %8 = load %struct._gpt_header*, %struct._gpt_header** %gpt, align 8
  %my_lba = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %8, i64 0, i32 5
  %9 = load i64, i64* %my_lba, align 1
  %cmp27.not = icmp eq i64 %9, %lba
  br i1 %cmp27.not, label %if.end31, label %fail

if.end31:                                         ; preds = %if.end25
  %10 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %call33 = call fastcc i64 @last_lba(%struct.gendisk* noundef %10) #16
  %11 = load %struct._gpt_header*, %struct._gpt_header** %gpt, align 8
  %first_usable_lba = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %11, i64 0, i32 7
  %12 = load i64, i64* %first_usable_lba, align 1
  %cmp34 = icmp ugt i64 %12, %call33
  br i1 %cmp34, label %fail, label %if.end38

if.end38:                                         ; preds = %if.end31
  %last_usable_lba = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %11, i64 0, i32 8
  %13 = load i64, i64* %last_usable_lba, align 1
  %cmp39 = icmp ugt i64 %13, %call33
  %cmp46 = icmp ult i64 %13, %12
  %or.cond = select i1 %cmp39, i1 true, i1 %cmp46
  br i1 %or.cond, label %fail, label %if.end50

if.end50:                                         ; preds = %if.end38
  %sizeof_partition_entry = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %11, i64 0, i32 12
  %14 = load i32, i32* %sizeof_partition_entry, align 1
  %cmp52.not = icmp eq i32 %14, 128
  br i1 %cmp52.not, label %if.end56, label %fail

if.end56:                                         ; preds = %if.end50
  %num_partition_entries = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %11, i64 0, i32 11
  %15 = load i32, i32* %num_partition_entries, align 1
  %conv57 = zext i32 %15 to i64
  %mul = shl nuw nsw i64 %conv57, 7
  %cmp60 = icmp ugt i32 %15, 32768
  br i1 %cmp60, label %fail, label %if.end64

if.end64:                                         ; preds = %if.end56
  %call65 = call fastcc %struct._gpt_entry* @alloc_read_gpt_entries(%struct.parsed_partitions* noundef %state, %struct._gpt_header* noundef %11) #16
  store %struct._gpt_entry* %call65, %struct._gpt_entry** %ptes, align 8
  %tobool66.not = icmp eq %struct._gpt_entry* %call65, null
  %16 = getelementptr %struct._gpt_entry, %struct._gpt_entry* %call65, i64 0, i32 0, i32 0, i64 0
  br i1 %tobool66.not, label %fail, label %if.end68

if.end68:                                         ; preds = %if.end64
  %17 = getelementptr %struct._gpt_entry, %struct._gpt_entry* %call65, i64 0, i32 0, i32 0, i64 0
  %call69 = call fastcc i32 @efi_crc32(i8* noundef %17, i64 noundef %mul) #16
  %18 = load %struct._gpt_header*, %struct._gpt_header** %gpt, align 8
  %partition_entry_array_crc32 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %18, i64 0, i32 13
  %19 = load i32, i32* %partition_entry_array_crc32, align 1
  %cmp70.not = icmp eq i32 %call69, %19
  br i1 %cmp70.not, label %cleanup, label %if.then72

if.then72:                                        ; preds = %if.end68
  call void @kfree(i8* noundef %16) #17
  store %struct._gpt_entry* null, %struct._gpt_entry** %ptes, align 8
  br label %fail

fail:                                             ; preds = %if.end56, %if.end50, %if.end38, %if.end31, %if.end25, %if.end16, %if.end5, %if.end3, %if.end64, %if.then72
  %20 = bitcast %struct._gpt_header** %gpt to i8**
  %21 = load i8*, i8** %20, align 8
  call void @kfree(i8* noundef %21) #17
  store %struct._gpt_header* null, %struct._gpt_header** %gpt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end, %entry, %fail
  %retval.0 = phi i32 [ 0, %fail ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end68 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @compare_gpts(%struct._gpt_header* noundef readonly %pgpt, %struct._gpt_header* noundef readonly %agpt, i64 noundef %lastlba) unnamed_addr #1 {
entry:
  %tobool = icmp ne %struct._gpt_header* %pgpt, null
  %tobool1 = icmp ne %struct._gpt_header* %agpt, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %my_lba = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %pgpt, i64 0, i32 5
  %0 = load i64, i64* %my_lba, align 1
  %alternate_lba = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %agpt, i64 0, i32 6
  %1 = load i64, i64* %alternate_lba, align 1
  %cmp.not = icmp eq i64 %0, %1
  br i1 %cmp.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0)) #18
  %2 = load i64, i64* %my_lba, align 1
  %3 = load i64, i64* %alternate_lba, align 1
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 noundef %2, i64 noundef %3) #18
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end
  %error_found.0 = phi i32 [ 1, %do.end ], [ 0, %if.end ]
  %alternate_lba11 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %pgpt, i64 0, i32 6
  %4 = load i64, i64* %alternate_lba11, align 1
  %my_lba12 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %agpt, i64 0, i32 5
  %5 = load i64, i64* %my_lba12, align 1
  %cmp13.not = icmp eq i64 %4, %5
  br i1 %cmp13.not, label %if.end28, label %do.end17

do.end17:                                         ; preds = %if.end10
  %call19 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0)) #18
  %6 = load i64, i64* %alternate_lba11, align 1
  %7 = load i64, i64* %my_lba12, align 1
  %call26 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 noundef %6, i64 noundef %7) #18
  %inc27 = add nuw nsw i32 %error_found.0, 1
  br label %if.end28

if.end28:                                         ; preds = %do.end17, %if.end10
  %error_found.1 = phi i32 [ %inc27, %do.end17 ], [ %error_found.0, %if.end10 ]
  %first_usable_lba = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %pgpt, i64 0, i32 7
  %8 = load i64, i64* %first_usable_lba, align 1
  %first_usable_lba29 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %agpt, i64 0, i32 7
  %9 = load i64, i64* %first_usable_lba29, align 1
  %cmp30.not = icmp eq i64 %8, %9
  br i1 %cmp30.not, label %if.end45, label %do.end34

do.end34:                                         ; preds = %if.end28
  %call36 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0)) #18
  %10 = load i64, i64* %first_usable_lba, align 1
  %11 = load i64, i64* %first_usable_lba29, align 1
  %call43 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 noundef %10, i64 noundef %11) #18
  %inc44 = add nuw nsw i32 %error_found.1, 1
  br label %if.end45

if.end45:                                         ; preds = %do.end34, %if.end28
  %error_found.2 = phi i32 [ %inc44, %do.end34 ], [ %error_found.1, %if.end28 ]
  %last_usable_lba = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %pgpt, i64 0, i32 8
  %12 = load i64, i64* %last_usable_lba, align 1
  %last_usable_lba46 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %agpt, i64 0, i32 8
  %13 = load i64, i64* %last_usable_lba46, align 1
  %cmp47.not = icmp eq i64 %12, %13
  br i1 %cmp47.not, label %if.end62, label %do.end51

do.end51:                                         ; preds = %if.end45
  %call53 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0)) #18
  %14 = load i64, i64* %last_usable_lba, align 1
  %15 = load i64, i64* %last_usable_lba46, align 1
  %call60 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 noundef %14, i64 noundef %15) #18
  %inc61 = add nuw nsw i32 %error_found.2, 1
  br label %if.end62

if.end62:                                         ; preds = %do.end51, %if.end45
  %error_found.3 = phi i32 [ %inc61, %do.end51 ], [ %error_found.2, %if.end45 ]
  %coerce.dive = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %pgpt, i64 0, i32 9, i32 0
  %.elt = bitcast [16 x i8]* %coerce.dive to i64*
  %.unpack = load i64, i64* %.elt, align 1
  %16 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt204 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %pgpt, i64 0, i32 9, i32 0, i64 8
  %17 = bitcast i8* %.elt204 to i64*
  %.unpack205 = load i64, i64* %17, align 1
  %18 = insertvalue [2 x i64] %16, i64 %.unpack205, 1
  %coerce.dive64 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %agpt, i64 0, i32 9, i32 0
  %.elt206 = bitcast [16 x i8]* %coerce.dive64 to i64*
  %.unpack207 = load i64, i64* %.elt206, align 1
  %19 = insertvalue [2 x i64] undef, i64 %.unpack207, 0
  %.elt208 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %agpt, i64 0, i32 9, i32 0, i64 8
  %20 = bitcast i8* %.elt208 to i64*
  %.unpack209 = load i64, i64* %20, align 1
  %21 = insertvalue [2 x i64] %19, i64 %.unpack209, 1
  %call65 = call fastcc i32 @efi_guidcmp([2 x i64] %18, [2 x i64] %21) #16
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end74, label %do.end70

do.end70:                                         ; preds = %if.end62
  %call72 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0)) #18
  %inc73 = add nuw nsw i32 %error_found.3, 1
  br label %if.end74

if.end74:                                         ; preds = %do.end70, %if.end62
  %error_found.4 = phi i32 [ %inc73, %do.end70 ], [ %error_found.3, %if.end62 ]
  %num_partition_entries = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %pgpt, i64 0, i32 11
  %22 = load i32, i32* %num_partition_entries, align 1
  %num_partition_entries75 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %agpt, i64 0, i32 11
  %23 = load i32, i32* %num_partition_entries75, align 1
  %cmp76.not = icmp eq i32 %22, %23
  br i1 %cmp76.not, label %if.end86, label %do.end80

do.end80:                                         ; preds = %if.end74
  %call84 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 noundef %22, i32 noundef %23) #18
  %inc85 = add nuw nsw i32 %error_found.4, 1
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end74
  %error_found.5 = phi i32 [ %inc85, %do.end80 ], [ %error_found.4, %if.end74 ]
  %sizeof_partition_entry = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %pgpt, i64 0, i32 12
  %24 = load i32, i32* %sizeof_partition_entry, align 1
  %sizeof_partition_entry87 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %agpt, i64 0, i32 12
  %25 = load i32, i32* %sizeof_partition_entry87, align 1
  %cmp88.not = icmp eq i32 %24, %25
  br i1 %cmp88.not, label %if.end98, label %do.end92

do.end92:                                         ; preds = %if.end86
  %call96 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i32 noundef %24, i32 noundef %25) #18
  %inc97 = add nuw nsw i32 %error_found.5, 1
  br label %if.end98

if.end98:                                         ; preds = %do.end92, %if.end86
  %error_found.6 = phi i32 [ %inc97, %do.end92 ], [ %error_found.5, %if.end86 ]
  %partition_entry_array_crc32 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %pgpt, i64 0, i32 13
  %26 = load i32, i32* %partition_entry_array_crc32, align 1
  %partition_entry_array_crc3299 = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %agpt, i64 0, i32 13
  %27 = load i32, i32* %partition_entry_array_crc3299, align 1
  %cmp100.not = icmp eq i32 %26, %27
  br i1 %cmp100.not, label %if.end110, label %do.end104

do.end104:                                        ; preds = %if.end98
  %call108 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0), i32 noundef %26, i32 noundef %27) #18
  %inc109 = add nuw nsw i32 %error_found.6, 1
  br label %if.end110

if.end110:                                        ; preds = %do.end104, %if.end98
  %error_found.7 = phi i32 [ %inc109, %do.end104 ], [ %error_found.6, %if.end98 ]
  %28 = load i64, i64* %alternate_lba11, align 1
  %cmp112.not = icmp eq i64 %28, %lastlba
  br i1 %cmp112.not, label %if.end126, label %do.end116

do.end116:                                        ; preds = %if.end110
  %call118 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i64 0, i64 0)) #18
  %29 = load i64, i64* %alternate_lba11, align 1
  %call124 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 noundef %29, i64 noundef %lastlba) #18
  %inc125 = add nuw nsw i32 %error_found.7, 1
  br label %if.end126

if.end126:                                        ; preds = %do.end116, %if.end110
  %error_found.8 = phi i32 [ %inc125, %do.end116 ], [ %error_found.7, %if.end110 ]
  %30 = load i64, i64* %my_lba12, align 1
  %cmp128.not = icmp eq i64 %30, %lastlba
  br i1 %cmp128.not, label %if.end142, label %if.end142.thread

if.end142.thread:                                 ; preds = %if.end126
  %call134 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0)) #18
  %31 = load i64, i64* %my_lba12, align 1
  %call140 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 noundef %31, i64 noundef %lastlba) #18
  br label %do.end147

if.end142:                                        ; preds = %if.end126
  %tobool143.not = icmp eq i32 %error_found.8, 0
  br i1 %tobool143.not, label %cleanup, label %do.end147

do.end147:                                        ; preds = %if.end142.thread, %if.end142
  %call149 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0)) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %do.end147, %entry
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @bdev_nr_sectors(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #3 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %0) #16
  %shr = ashr i64 %call, 9
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @read_part_sector(%struct.parsed_partitions* noundef, i64 noundef, %struct.Sector* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_dev_sector(i64 %p.coerce) unnamed_addr #1 {
entry:
  %coerce.val.ip = inttoptr i64 %p.coerce to %struct.page*
  call fastcc void @put_page(%struct.page* noundef %coerce.val.ip) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #17
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #10 {
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
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !9
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pmbr_part_valid(%struct._gpt_mbr_record* nocapture noundef readonly %part) unnamed_addr #3 {
entry:
  %os_type = getelementptr inbounds %struct._gpt_mbr_record, %struct._gpt_mbr_record* %part, i64 0, i32 4
  %0 = load i8, i8* %os_type, align 1
  %cmp.not = icmp eq i8 %0, -18
  br i1 %cmp.not, label %if.end, label %invalid

if.end:                                           ; preds = %entry
  %starting_lba = getelementptr inbounds %struct._gpt_mbr_record, %struct._gpt_mbr_record* %part, i64 0, i32 8
  %1 = load i32, i32* %starting_lba, align 1
  %cmp2.not = icmp eq i32 %1, 1
  br i1 %cmp2.not, label %return, label %invalid

invalid:                                          ; preds = %if.end, %entry
  br label %return

return:                                           ; preds = %if.end, %invalid
  %retval.0 = phi i32 [ 0, %invalid ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct._gpt_header* @alloc_read_gpt_header(%struct.parsed_partitions* noundef %state, i64 noundef %lba) unnamed_addr #1 {
entry:
  %disk = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 0
  %0 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 9
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %1) #16
  %conv = zext i32 %call to i64
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %conv, i32 noundef 3264) #17
  %tobool.not = icmp eq i8* %call10.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast i8* %call10.i to %struct._gpt_header*
  %call3 = call fastcc i64 @read_lba(%struct.parsed_partitions* noundef %state, i64 noundef %lba, i8* noundef nonnull %call10.i, i64 noundef %conv) #16
  %cmp = icmp ult i64 %call3, %conv
  br i1 %cmp, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call10.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then6
  %retval.0 = phi %struct._gpt_header* [ null, %if.then6 ], [ null, %entry ], [ %2, %if.end ]
  ret %struct._gpt_header* %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @efi_crc32(i8* noundef %buf, i64 noundef %len) unnamed_addr #11 {
entry:
  %call = call i32 @crc32_le(i32 noundef -1, i8* noundef %buf, i64 noundef %len) #19
  %xor = xor i32 %call, -1
  ret i32 %xor
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct._gpt_entry* @alloc_read_gpt_entries(%struct.parsed_partitions* noundef %state, %struct._gpt_header* noundef readonly %gpt) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct._gpt_header* %gpt, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %num_partition_entries = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %gpt, i64 0, i32 11
  %0 = load i32, i32* %num_partition_entries, align 1
  %conv = zext i32 %0 to i64
  %sizeof_partition_entry = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %gpt, i64 0, i32 12
  %1 = load i32, i32* %sizeof_partition_entry, align 1
  %conv1 = zext i32 %1 to i64
  %mul = mul nuw i64 %conv1, %conv
  %tobool2.not = icmp eq i64 %mul, 0
  br i1 %tobool2.not, label %cleanup, label %if.end9.i

if.end9.i:                                        ; preds = %if.end
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %mul, i32 noundef 3264) #17
  %tobool5.not = icmp eq i8* %call10.i, null
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end9.i
  %2 = bitcast i8* %call10.i to %struct._gpt_entry*
  %partition_entry_lba = getelementptr inbounds %struct._gpt_header, %struct._gpt_header* %gpt, i64 0, i32 10
  %3 = load i64, i64* %partition_entry_lba, align 1
  %call8 = call fastcc i64 @read_lba(%struct.parsed_partitions* noundef %state, i64 noundef %3, i8* noundef nonnull %call10.i, i64 noundef %mul) #16
  %cmp = icmp ult i64 %call8, %mul
  br i1 %cmp, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @kfree(i8* noundef nonnull %call10.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end9.i, %if.end, %entry, %if.then10
  %retval.0 = phi %struct._gpt_entry* [ null, %if.then10 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end9.i ], [ %2, %if.end7 ]
  ret %struct._gpt_entry* %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) unnamed_addr #13 {
entry:
  %remainder = alloca i32, align 4
  %0 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  %call = call fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* noundef nonnull %remainder) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* nocapture noundef writeonly %remainder) unnamed_addr #14 {
entry:
  %conv = zext i32 %divisor to i64
  %div = udiv i64 %dividend, %conv
  %0 = mul i64 %div, %conv
  %rem.decomposed = sub i64 %dividend, %0
  %conv1 = trunc i64 %rem.decomposed to i32
  store i32 %conv1, i32* %remainder, align 4
  ret i64 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

attributes #0 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #13 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { cold nobuiltin nounwind "no-builtins" }
attributes #19 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!9 = !{i64 2147753506, i64 2147754154, i64 2147754184, i64 2147754216, i64 2147754250, i64 2147754286, i64 2147754311}
