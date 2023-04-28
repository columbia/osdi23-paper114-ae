; ModuleID = 'block/ioctl.c'
source_filename = "block/ioctl.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.74, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35, [48 x i8] }
%struct.anon.35 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
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
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.8, %union.anon.62 }
%union.anon.8 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.62 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.23, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.22, [0 x i64] }
%struct.anon.22 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.57, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.26 }
%union.anon.26 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.28 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
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
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.75, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.75 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.9, %union.anon.61, %struct.atomic_t, [8 x i8] }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.61 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.workqueue_struct = type opaque
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.42, %union.anon.43, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.76, %union.anon.77, %union.anon.78, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.81, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.40, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.40 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.lockdep_map = type {}
%union.anon.76 = type { %struct.hlist_node }
%union.anon.77 = type { %struct.rb_node }
%union.anon.78 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.81 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon.41, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.41 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
%struct.blk_mq_ctxs = type { %struct.kobject, %struct.blk_mq_ctx* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.39, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.39 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.kernfs_iattrs = type opaque
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, %struct.blk_rq_stat*, i32 (%struct.request*)*, i32, %struct.blk_rq_stat*, void (%struct.blk_stat_callback*)*, i8*, %struct.callback_head }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type { i8, i8, i64, [2 x %struct.list_head], %struct.list_head, %struct.request*, %struct.spinlock }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
%union.anon.42 = type { %struct.list_head }
%union.anon.43 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.48 }
%struct.anon.48 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.56, i32, [12 x i8] }
%union.anon.56 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.58, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.58 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.23 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.24, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.25, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.24 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.25 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.66 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.64, %struct.qspinlock }
%union.anon.64 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.66 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.38 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, {}*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.74 = type { %struct.pipe_inode_info* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, {}*, {}*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type { i8, i8, i16, i64 }
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type { i32 (%struct.block_device*, i64, i64, i32)*, i32 (%struct.block_device*, i64, i32, i32)*, i32 (%struct.block_device*, i64, i32)*, i32 (%struct.block_device*, i64, i64, i32, i1)*, i32 (%struct.block_device*, i64)* }
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.kqid = type { %union.anon.68, i32 }
%union.anon.68 = type { %struct.kuid_t }
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
%struct.blkpg_ioctl_arg = type { i32, i32, i32, i8* }
%struct.blkpg_partition = type { i64, i64, i32, [64 x i8], [64 x i8] }
%struct.pr_registration = type { i64, i64, i32, i32 }
%struct.pr_reservation = type { i64, i32, i32 }
%struct.pr_preempt = type { i64, i64, i32, i32 }
%struct.pr_clear = type { i64, i32, i32 }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blkdev_ioctl(%struct.block_device* noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i64 noundef %arg) local_unnamed_addr #0 {
entry:
  switch i32 %cmd, label %sw.epilog [
    i32 769, label %sw.bb
    i32 4713, label %sw.bb1
    i32 4707, label %sw.bb3
    i32 4709, label %sw.bb3
    i32 4704, label %sw.bb5
    i32 -2146954640, label %sw.bb11
    i32 1074270833, label %sw.bb14
    i32 -2146954638, label %sw.bb16
    i32 -1069018509, label %cleanup
  ]

sw.bb:                                            ; preds = %entry
  %0 = inttoptr i64 %arg to %struct.hd_geometry*
  %call = call fastcc i32 @blkdev_getgeo(%struct.block_device* noundef %bdev, %struct.hd_geometry* noundef %0) #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %1 = inttoptr i64 %arg to %struct.blkpg_ioctl_arg*
  %call2 = call fastcc i32 @blkpg_ioctl(%struct.block_device* noundef %bdev, %struct.blkpg_ioctl_arg* noundef %1) #6
  br label %cleanup

sw.bb3:                                           ; preds = %entry, %entry
  %tobool.not = icmp eq i64 %arg, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb3
  %2 = inttoptr i64 %arg to i64*
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %3 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %3, i64 0, i32 15
  %4 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %4, i64 0, i32 3
  %5 = load i64, i64* %ra_pages, align 8
  %6 = shl i64 %5, 3
  %div = and i64 %6, 36028797018963960
  %call4 = call fastcc i32 @put_long(i64* noundef nonnull %2, i64 noundef %div) #6
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %7 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call6 = call fastcc i64 @i_size_read(%struct.inode* noundef %7) #6
  %shr = ashr i64 %call6, 9
  %8 = inttoptr i64 %arg to i64*
  %call10 = call fastcc i32 @put_ulong(i64* noundef %8, i64 noundef %shr) #6
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %9 = inttoptr i64 %arg to i32*
  %call12 = call fastcc i32 @block_size(%struct.block_device* noundef %bdev) #6
  %call13 = call fastcc i32 @put_int(i32* noundef %9, i32 noundef %call12) #6
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %10 = inttoptr i64 %arg to i32*
  %call15 = call fastcc i32 @blkdev_bszset(%struct.block_device* noundef %bdev, i32 noundef %mode, i32* noundef %10) #6
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %11 = inttoptr i64 %arg to i64*
  %bd_inode17 = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %12 = load %struct.inode*, %struct.inode** %bd_inode17, align 8
  %call18 = call fastcc i64 @i_size_read(%struct.inode* noundef %12) #6
  %call19 = call fastcc i32 @put_u64(i64* noundef %11, i64 noundef %call18) #6
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %13 = inttoptr i64 %arg to i8*
  %call21 = call fastcc i32 @blkdev_common_ioctl(%struct.block_device* noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i64 noundef %arg, i8* noundef %13) #6
  %cmp22.not = icmp eq i32 %call21, -515
  br i1 %cmp22.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %sw.epilog
  %bd_disk25 = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %14 = load %struct.gendisk*, %struct.gendisk** %bd_disk25, align 8
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %14, i64 0, i32 8
  %15 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %ioctl = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %15, i64 0, i32 4
  %ioctl26 = bitcast {}** %ioctl to i32 (%struct.block_device*, i32, i32, i64)**
  %16 = load i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)** %ioctl26, align 8
  %tobool27.not = icmp eq i32 (%struct.block_device*, i32, i32, i64)* %16, null
  br i1 %tobool27.not, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.end24
  %call34 = call i32 %16(%struct.block_device* noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i64 noundef %arg) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %sw.epilog, %entry, %sw.bb3, %if.end29, %sw.bb16, %sw.bb14, %sw.bb11, %sw.bb5, %if.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call34, %if.end29 ], [ %call19, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %call13, %sw.bb11 ], [ %call10, %sw.bb5 ], [ %call4, %if.end ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %sw.bb3 ], [ -25, %entry ], [ %call21, %sw.epilog ], [ -25, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkdev_getgeo(%struct.block_device* noundef %bdev, %struct.hd_geometry* noundef %argp) unnamed_addr #0 {
entry:
  %geo = alloca %struct.hd_geometry, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %1 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %geo, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.hd_geometry* %argp, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 8
  %2 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %getgeo = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %2, i64 0, i32 8
  %3 = load i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, %struct.hd_geometry*)** %getgeo, align 8
  %tobool1.not = icmp eq i32 (%struct.block_device*, %struct.hd_geometry*)* %3, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 16) #7
  %call4 = call fastcc i64 @get_start_sect(%struct.block_device* noundef %bdev) #6
  %start = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %geo, i64 0, i32 3
  store i64 %call4, i64* %start, align 8
  %4 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %getgeo6 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %4, i64 0, i32 8
  %5 = load i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, %struct.hd_geometry*)** %getgeo6, align 8
  %call7 = call i32 %5(%struct.block_device* noundef %bdev, %struct.hd_geometry* noundef nonnull %geo) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end3
  %6 = getelementptr %struct.hd_geometry, %struct.hd_geometry* %argp, i64 0, i32 0
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %6, i8* noundef nonnull %1) #7
  %tobool12.not = icmp eq i64 %call2.i, 0
  %. = select i1 %tobool12.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -25, %if.end ], [ %call7, %if.end3 ], [ %., %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkpg_ioctl(%struct.block_device* nocapture noundef readonly %bdev, %struct.blkpg_ioctl_arg* noundef %arg) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.blkpg_ioctl_arg* %arg to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #6
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #6
  %1 = bitcast i8* %call2 to i32*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %1, i32 -14, i32 0) #8, !srcloc !8
  %asmresult = extractvalue { i32, i64 } %2, 0
  %asmresult6 = extractvalue { i32, i64 } %2, 1
  %conv = trunc i64 %asmresult6 to i32
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.blkpg_ioctl_arg, %struct.blkpg_ioctl_arg* %arg, i64 0, i32 3
  %3 = bitcast i8** %data to i8*
  %call16 = call fastcc i64 @__range_ok(i8* noundef %3, i64 noundef 8) #6
  %tobool17.not = icmp eq i64 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %if.end32

if.end32:                                         ; preds = %lor.lhs.false
  %call19 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %3) #6
  %4 = bitcast i8* %call19 to i8**
  %5 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8** %4, i32 -14, i32 0) #8, !srcloc !9
  %asmresult24 = extractvalue { i32, i64 } %5, 0
  %phi.cmp56 = icmp eq i32 %asmresult24, 0
  br i1 %phi.cmp56, label %if.end38, label %cleanup

if.end38:                                         ; preds = %if.end32
  %asmresult25 = extractvalue { i32, i64 } %5, 1
  %6 = inttoptr i64 %asmresult25 to %struct.blkpg_partition*
  %call39 = call fastcc i32 @blkpg_do_ioctl(%struct.block_device* noundef %bdev, %struct.blkpg_partition* noundef %6, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end, %if.end32, %if.end38
  %retval.0 = phi i32 [ %call39, %if.end38 ], [ -14, %if.end32 ], [ -14, %if.end ], [ -14, %entry ], [ -14, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_long(i64* noundef %argp, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %argp to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 8) #6
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #6
  %1 = bitcast i8* %call1 to i64*
  %2 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %val, i64* %1, i32 -14, i32 0) #8, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %__pu_err.0 = phi i32 [ %2, %if.then ], [ -14, %entry ]
  ret i32 %__pu_err.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #2 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_ulong(i64* noundef %argp, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %argp to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 8) #6
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #6
  %1 = bitcast i8* %call1 to i64*
  %2 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %val, i64* %1, i32 -14, i32 0) #8, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %__pu_err.0 = phi i32 [ %2, %if.then ], [ -14, %entry ]
  ret i32 %__pu_err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_int(i32* noundef %argp, i32 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i32* %argp to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #6
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #6
  %1 = bitcast i8* %call1 to i32*
  %2 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %val, i32* %1, i32 -14, i32 0) #8, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %__pu_err.0 = phi i32 [ %2, %if.then ], [ -14, %entry ]
  ret i32 %__pu_err.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @block_size(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #2 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 17
  %1 = load i8, i8* %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  ret i32 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkdev_bszset(%struct.block_device* noundef %bdev, i32 noundef %mode, i32* noundef %argp) unnamed_addr #0 {
entry:
  %bdev.addr = alloca %struct.block_device*, align 8
  store %struct.block_device* %bdev, %struct.block_device** %bdev.addr, align 8
  %call = call i1 @capable(i32 noundef 21) #7
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32* %argp, null
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %0 = bitcast i32* %argp to i8*
  %call3 = call fastcc i64 @__range_ok(i8* noundef nonnull %0, i64 noundef 4) #6
  %tobool4.not = icmp eq i64 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end2
  %call6 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %0) #6
  %1 = bitcast i8* %call6 to i32*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %1, i32 -14, i32 0) #8, !srcloc !13
  %asmresult = extractvalue { i32, i64 } %2, 0
  %asmresult10 = extractvalue { i32, i64 } %2, 1
  %conv = trunc i64 %asmresult10 to i32
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.end14
  %and = and i32 %mode, 128
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end19
  %call22 = call i32 @set_blocksize(%struct.block_device* noundef %bdev, i32 noundef %conv) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %bd_dev = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 4
  %3 = load i32, i32* %bd_dev, align 4
  %or = or i32 %mode, 128
  %4 = bitcast %struct.block_device** %bdev.addr to i8*
  %call24 = call %struct.block_device* @blkdev_get_by_dev(i32 noundef %3, i32 noundef %or, i8* noundef nonnull %4) #7
  %5 = bitcast %struct.block_device* %call24 to i8*
  %call25 = call fastcc i1 @IS_ERR(i8* noundef %5) #6
  br i1 %call25, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end23
  %6 = load %struct.block_device*, %struct.block_device** %bdev.addr, align 8
  %call28 = call i32 @set_blocksize(%struct.block_device* noundef %6, i32 noundef %conv) #7
  %7 = load %struct.block_device*, %struct.block_device** %bdev.addr, align 8
  call void @blkdev_put(%struct.block_device* noundef %7, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end23, %if.end14, %if.end, %entry, %if.end27, %if.then21
  %retval.0 = phi i32 [ %call22, %if.then21 ], [ %call28, %if.end27 ], [ -13, %entry ], [ -22, %if.end ], [ -14, %if.end14 ], [ -16, %if.end23 ], [ -14, %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_u64(i64* noundef %argp, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %argp to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 8) #6
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #6
  %1 = bitcast i8* %call1 to i64*
  %2 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %val, i64* %1, i32 -14, i32 0) #8, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %__pu_err.0 = phi i32 [ %2, %if.then ], [ -14, %entry ]
  ret i32 %__pu_err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkdev_common_ioctl(%struct.block_device* noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i64 noundef %arg, i8* noundef %argp) unnamed_addr #0 {
entry:
  switch i32 %cmd, label %sw.default [
    i32 4705, label %sw.bb
    i32 4701, label %sw.bb1
    i32 4727, label %sw.bb3
    i32 4733, label %sw.bb5
    i32 4735, label %sw.bb7
    i32 -2146954624, label %sw.bb9
    i32 -1072688510, label %cleanup
    i32 1074795139, label %cleanup
    i32 1074795142, label %cleanup
    i32 1074795143, label %cleanup
    i32 1074795144, label %cleanup
    i32 -2147216764, label %sw.bb15
    i32 -2147216763, label %sw.bb18
    i32 4702, label %sw.bb22
    i32 4712, label %sw.bb26
    i32 4731, label %sw.bb29
    i32 4728, label %sw.bb32
    i32 4729, label %sw.bb35
    i32 4730, label %sw.bb38
    i32 4732, label %sw.bb41
    i32 4711, label %sw.bb43
    i32 4734, label %sw.bb50
    i32 4706, label %sw.bb55
    i32 4708, label %sw.bb55
    i32 4703, label %sw.bb58
    i32 4724, label %cleanup
    i32 4725, label %cleanup
    i32 4726, label %cleanup
    i32 1075343560, label %sw.bb61
    i32 1074819273, label %sw.bb63
    i32 1074819274, label %sw.bb65
    i32 1075343563, label %sw.bb67
    i32 1075343564, label %sw.bb69
    i32 1074819277, label %sw.bb71
  ]

sw.bb:                                            ; preds = %entry
  %call = call fastcc i32 @blkdev_flushbuf(%struct.block_device* noundef %bdev) #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %call2 = call fastcc i32 @blkdev_roset(%struct.block_device* noundef %bdev, i64 noundef %arg) #6
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call4 = call fastcc i32 @blk_ioctl_discard(%struct.block_device* noundef %bdev, i32 noundef %mode, i64 noundef %arg, i64 noundef 0) #6
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %call6 = call fastcc i32 @blk_ioctl_discard(%struct.block_device* noundef %bdev, i32 noundef %mode, i64 noundef %arg, i64 noundef 1) #6
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %call8 = call fastcc i32 @blk_ioctl_zeroout(%struct.block_device* noundef %bdev, i32 noundef %mode, i64 noundef %arg) #6
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %0 = bitcast i8* %argp to i64*
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %diskseq = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 23
  %2 = load i64, i64* %diskseq, align 8
  %call10 = call fastcc i32 @put_u64(i64* noundef %0, i64 noundef %2) #6
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %3 = bitcast i8* %argp to i32*
  %call17 = call fastcc i32 @put_uint(i32* noundef %3, i32 noundef 0) #6
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %4 = bitcast i8* %argp to i32*
  %call21 = call fastcc i32 @put_uint(i32* noundef %4, i32 noundef 0) #6
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %5 = bitcast i8* %argp to i32*
  %call23 = call i32 @bdev_read_only(%struct.block_device* noundef %bdev) #7
  %cmp = icmp ne i32 %call23, 0
  %conv24 = zext i1 %cmp to i32
  %call25 = call fastcc i32 @put_int(i32* noundef %5, i32 noundef %conv24) #6
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %6 = bitcast i8* %argp to i32*
  %call27 = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %bdev) #6
  %call28 = call fastcc i32 @put_int(i32* noundef %6, i32 noundef %call27) #6
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  %7 = bitcast i8* %argp to i32*
  %call30 = call fastcc i32 @bdev_physical_block_size(%struct.block_device* noundef %bdev) #6
  %call31 = call fastcc i32 @put_uint(i32* noundef %7, i32 noundef %call30) #6
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %8 = bitcast i8* %argp to i32*
  %call33 = call fastcc i32 @bdev_io_min(%struct.block_device* noundef %bdev) #6
  %call34 = call fastcc i32 @put_uint(i32* noundef %8, i32 noundef %call33) #6
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  %9 = bitcast i8* %argp to i32*
  %call36 = call fastcc i32 @bdev_io_opt(%struct.block_device* noundef %bdev) #6
  %call37 = call fastcc i32 @put_uint(i32* noundef %9, i32 noundef %call36) #6
  br label %cleanup

sw.bb38:                                          ; preds = %entry
  %10 = bitcast i8* %argp to i32*
  %call39 = call fastcc i32 @bdev_alignment_offset(%struct.block_device* noundef %bdev) #6
  %call40 = call fastcc i32 @put_int(i32* noundef %10, i32 noundef %call39) #6
  br label %cleanup

sw.bb41:                                          ; preds = %entry
  %11 = bitcast i8* %argp to i32*
  %call42 = call fastcc i32 @put_uint(i32* noundef %11, i32 noundef 0) #6
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  %call44 = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #6
  %call45 = call fastcc i32 @queue_max_sectors(%struct.request_queue* noundef %call44) #6
  %12 = icmp ult i32 %call45, 65535
  %cond = select i1 %12, i32 %call45, i32 65535
  %13 = bitcast i8* %argp to i16*
  %conv48 = trunc i32 %cond to i16
  %call49 = call fastcc i32 @put_ushort(i16* noundef %13, i16 noundef %conv48) #6
  br label %cleanup

sw.bb50:                                          ; preds = %entry
  %14 = bitcast i8* %argp to i16*
  %call51 = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #6
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %call51, i64 0, i32 11
  %15 = load volatile i64, i64* %queue_flags, align 8
  %16 = trunc i64 %15 to i16
  %17 = lshr i16 %16, 6
  %18 = and i16 %17, 1
  %19 = xor i16 %18, 1
  %call54 = call fastcc i32 @put_ushort(i16* noundef %14, i16 noundef %19) #6
  br label %cleanup

sw.bb55:                                          ; preds = %entry, %entry
  %call56 = call i1 @capable(i32 noundef 21) #7
  br i1 %call56, label %if.end, label %cleanup

if.end:                                           ; preds = %sw.bb55
  %20 = lshr i64 %arg, 3
  %div = and i64 %20, 4503599627370495
  %bd_disk57 = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %21 = load %struct.gendisk*, %struct.gendisk** %bd_disk57, align 8
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %21, i64 0, i32 15
  %22 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %22, i64 0, i32 3
  store i64 %div, i64* %ra_pages, align 8
  br label %cleanup

sw.bb58:                                          ; preds = %entry
  %call59 = call fastcc i32 @blkdev_reread_part(%struct.block_device* noundef %bdev, i32 noundef %mode) #6
  br label %cleanup

sw.bb61:                                          ; preds = %entry
  %23 = bitcast i8* %argp to %struct.pr_registration*
  %call62 = call fastcc i32 @blkdev_pr_register(%struct.block_device* noundef %bdev, %struct.pr_registration* noundef %23) #6
  br label %cleanup

sw.bb63:                                          ; preds = %entry
  %24 = bitcast i8* %argp to %struct.pr_reservation*
  %call64 = call fastcc i32 @blkdev_pr_reserve(%struct.block_device* noundef %bdev, %struct.pr_reservation* noundef %24) #6
  br label %cleanup

sw.bb65:                                          ; preds = %entry
  %25 = bitcast i8* %argp to %struct.pr_reservation*
  %call66 = call fastcc i32 @blkdev_pr_release(%struct.block_device* noundef %bdev, %struct.pr_reservation* noundef %25) #6
  br label %cleanup

sw.bb67:                                          ; preds = %entry
  %26 = bitcast i8* %argp to %struct.pr_preempt*
  %call68 = call fastcc i32 @blkdev_pr_preempt(%struct.block_device* noundef %bdev, %struct.pr_preempt* noundef %26, i1 noundef false) #6
  br label %cleanup

sw.bb69:                                          ; preds = %entry
  %27 = bitcast i8* %argp to %struct.pr_preempt*
  %call70 = call fastcc i32 @blkdev_pr_preempt(%struct.block_device* noundef %bdev, %struct.pr_preempt* noundef %27, i1 noundef true) #6
  br label %cleanup

sw.bb71:                                          ; preds = %entry
  %28 = bitcast i8* %argp to %struct.pr_clear*
  %call72 = call fastcc i32 @blkdev_pr_clear(%struct.block_device* noundef %bdev, %struct.pr_clear* noundef %28) #6
  br label %cleanup

sw.default:                                       ; preds = %entry
  br label %cleanup

cleanup:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.bb55, %sw.default, %sw.bb71, %sw.bb69, %sw.bb67, %sw.bb65, %sw.bb63, %sw.bb61, %sw.bb58, %if.end, %sw.bb50, %sw.bb43, %sw.bb41, %sw.bb38, %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb26, %sw.bb22, %sw.bb18, %sw.bb15, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -515, %sw.default ], [ %call72, %sw.bb71 ], [ %call70, %sw.bb69 ], [ %call68, %sw.bb67 ], [ %call66, %sw.bb65 ], [ %call64, %sw.bb63 ], [ %call62, %sw.bb61 ], [ %call59, %sw.bb58 ], [ 0, %if.end ], [ %call54, %sw.bb50 ], [ %call49, %sw.bb43 ], [ %call42, %sw.bb41 ], [ %call40, %sw.bb38 ], [ %call37, %sw.bb35 ], [ %call34, %sw.bb32 ], [ %call31, %sw.bb29 ], [ %call28, %sw.bb26 ], [ %call25, %sw.bb22 ], [ %call21, %sw.bb18 ], [ %call17, %sw.bb15 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -13, %sw.bb55 ], [ -25, %entry ], [ -25, %entry ], [ -25, %entry ], [ -25, %entry ], [ -25, %entry ], [ -25, %entry ], [ -25, %entry ], [ -25, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @get_start_sect(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #2 {
entry:
  %bd_start_sect = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 0
  %0 = load i64, i64* %bd_start_sect, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef 16) #6
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #6
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef 16) #7
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ 16, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #8, !srcloc !15
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #8, !srcloc !16
  call void asm sideeffect "hint #20", "~{memory}"() #8, !srcloc !17
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkpg_do_ioctl(%struct.block_device* nocapture noundef readonly %bdev, %struct.blkpg_partition* noundef %upart, i32 noundef %op) unnamed_addr #0 {
entry:
  %p = alloca %struct.blkpg_partition, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %1 = bitcast %struct.blkpg_partition* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %1) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(152) %1, i8 0, i64 152, i1 false), !annotation !7
  %call = call i1 @capable(i32 noundef 21) #7
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.blkpg_partition* %upart to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %1, i8* noundef %2, i64 noundef 152) #7
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i1 @bdev_is_partition(%struct.block_device* noundef %bdev) #6
  br i1 %call4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %pno = getelementptr inbounds %struct.blkpg_partition, %struct.blkpg_partition* %p, i64 0, i32 2
  %3 = load i32, i32* %pno, align 8
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end6
  %cmp9 = icmp eq i32 %op, 2
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end8
  %call12 = call i32 @bdev_del_partition(%struct.gendisk* noundef %0, i32 noundef %3) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %start14 = getelementptr inbounds %struct.blkpg_partition, %struct.blkpg_partition* %p, i64 0, i32 0
  %4 = load i64, i64* %start14, align 8
  %shr = ashr i64 %4, 9
  %length15 = getelementptr inbounds %struct.blkpg_partition, %struct.blkpg_partition* %p, i64 0, i32 1
  %5 = load i64, i64* %length15, align 8
  %shr16 = ashr i64 %5, 9
  switch i32 %op, label %cleanup [
    i32 1, label %sw.bb
    i32 3, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end13
  %call18 = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %bdev) #6
  %sub = add i32 %call18, -1
  %conv = zext i32 %sub to i64
  %and = and i64 %4, %conv
  %tobool19.not = icmp eq i64 %and, 0
  br i1 %tobool19.not, label %if.end21, label %cleanup

if.end21:                                         ; preds = %sw.bb
  %call23 = call i32 @bdev_add_partition(%struct.gendisk* noundef %0, i32 noundef %3, i64 noundef %shr, i64 noundef %shr16) #7
  br label %cleanup

sw.bb24:                                          ; preds = %if.end13
  %call26 = call i32 @bdev_resize_partition(%struct.gendisk* noundef %0, i32 noundef %3, i64 noundef %shr, i64 noundef %shr16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %sw.bb, %if.end6, %if.end3, %if.end, %entry, %sw.bb24, %if.end21, %if.then10
  %retval.0 = phi i32 [ %call12, %if.then10 ], [ %call26, %sw.bb24 ], [ %call23, %if.end21 ], [ -13, %entry ], [ -14, %if.end ], [ -22, %if.end3 ], [ -22, %if.end6 ], [ -22, %sw.bb ], [ -22, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %1) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bdev_is_partition(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #2 {
entry:
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 14
  %0 = load i8, i8* %bd_partno, align 8
  %tobool = icmp ne i8 %0, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_del_partition(%struct.gendisk* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdev_logical_block_size(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #6
  %call1 = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %call) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_add_partition(%struct.gendisk* noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_resize_partition(%struct.gendisk* noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #6
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !18

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #6
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !19

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef readonly %q) unnamed_addr #2 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #2 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 9
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  ret %struct.request_queue* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_blocksize(%struct.block_device* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @blkdev_get_by_dev(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(%struct.block_device* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkdev_flushbuf(%struct.block_device* noundef %bdev) unnamed_addr #0 {
entry:
  %call = call i1 @capable(i32 noundef 21) #7
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @fsync_bdev(%struct.block_device* noundef %bdev) #7
  call void @invalidate_bdev(%struct.block_device* noundef %bdev) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -13, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkdev_roset(%struct.block_device* noundef %bdev, i64 noundef %arg) unnamed_addr #0 {
entry:
  %call = call i1 @capable(i32 noundef 21) #7
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = inttoptr i64 %arg to i8*
  %call1 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #6
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %call3 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #6
  %1 = bitcast i8* %call3 to i32*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %1, i32 -14, i32 0) #8, !srcloc !20
  %asmresult = extractvalue { i32, i64 } %2, 0
  %asmresult7 = extractvalue { i32, i64 } %2, 1
  %conv = trunc i64 %asmresult7 to i32
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end11
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %3 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %3, i64 0, i32 8
  %4 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %set_read_only = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %4, i64 0, i32 9
  %5 = load i32 (%struct.block_device*, i1)*, i32 (%struct.block_device*, i1)** %set_read_only, align 8
  %tobool17.not = icmp eq i32 (%struct.block_device*, i1)* %5, null
  br i1 %tobool17.not, label %if.end27, label %if.then18

if.then18:                                        ; preds = %if.end16
  %tobool22 = icmp ne i32 %conv, 0
  %call23 = call i32 %5(%struct.block_device* noundef %bdev, i1 noundef %tobool22) #7
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.then18, %if.end16
  %tobool28 = icmp ne i32 %conv, 0
  %bd_read_only = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 3
  %frombool = zext i1 %tobool28 to i8
  store i8 %frombool, i8* %bd_read_only, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then18, %if.end11, %entry, %if.end27
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -13, %entry ], [ -14, %if.end11 ], [ %call23, %if.then18 ], [ -14, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_ioctl_discard(%struct.block_device* noundef %bdev, i32 noundef %mode, i64 noundef %arg, i64 noundef %flags) unnamed_addr #0 {
entry:
  %range = alloca [2 x i64], align 8
  %0 = bitcast [2 x i64]* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %and = and i32 %mode, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #6
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %call, i64 0, i32 11
  %1 = load volatile i64, i64* %queue_flags, align 8
  %2 = and i64 %1, 256
  %tobool2.not = icmp eq i64 %2, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %3 = inttoptr i64 %arg to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %3, i64 noundef 16) #7
  %tobool6.not = icmp eq i64 %call2.i, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end4
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %range, i64 0, i64 0
  %4 = load i64, i64* %arraydecay, align 8
  %arrayidx9 = getelementptr inbounds [2 x i64], [2 x i64]* %range, i64 0, i64 1
  %5 = load i64, i64* %arrayidx9, align 8
  %and10 = and i64 %4, 511
  %tobool11.not = icmp eq i64 %and10, 0
  %and14 = and i64 %5, 511
  %tobool15.not = icmp eq i64 %and14, 0
  %or.cond = select i1 %tobool11.not, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.end8
  %add = add i64 %5, %4
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %6 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call18 = call fastcc i64 @i_size_read(%struct.inode* noundef %6) #6
  %cmp = icmp ugt i64 %add, %call18
  br i1 %cmp, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end17
  %sub = add i64 %add, -1
  %call22 = call i32 @truncate_bdev_range(%struct.block_device* noundef %bdev, i32 noundef %mode, i64 noundef %4, i64 noundef %sub) #7
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %cleanup

if.end25:                                         ; preds = %if.end20
  %shr = lshr i64 %4, 9
  %shr26 = lshr i64 %5, 9
  %call27 = call i32 @blkdev_issue_discard(%struct.block_device* noundef %bdev, i64 noundef %shr, i64 noundef %shr26, i32 noundef 3264, i64 noundef %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end17, %if.end8, %if.end4, %if.end, %entry, %if.end25
  %retval.0 = phi i32 [ %call27, %if.end25 ], [ -9, %entry ], [ -95, %if.end ], [ -14, %if.end4 ], [ -22, %if.end8 ], [ -22, %if.end17 ], [ %call22, %if.end20 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_ioctl_zeroout(%struct.block_device* noundef %bdev, i32 noundef %mode, i64 noundef %arg) unnamed_addr #0 {
entry:
  %range = alloca [2 x i64], align 8
  %0 = bitcast [2 x i64]* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %and = and i32 %mode, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = inttoptr i64 %arg to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 16) #7
  %tobool1.not = icmp eq i64 %call2.i, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %range, i64 0, i64 0
  %2 = load i64, i64* %arraydecay, align 8
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %range, i64 0, i64 1
  %3 = load i64, i64* %arrayidx4, align 8
  %add = add i64 %2, -1
  %sub = add i64 %add, %3
  %and5 = and i64 %2, 511
  %tobool6.not = icmp eq i64 %and5, 0
  %and9 = and i64 %3, 511
  %tobool10.not = icmp eq i64 %and9, 0
  %or.cond = select i1 %tobool6.not, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end3
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %4 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call13 = call fastcc i64 @i_size_read(%struct.inode* noundef %4) #6
  %cmp.not = icmp uge i64 %sub, %call13
  %cmp16 = icmp ult i64 %sub, %2
  %or.cond45 = select i1 %cmp.not, i1 true, i1 %cmp16
  br i1 %or.cond45, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end12
  %call19 = call i32 @truncate_bdev_range(%struct.block_device* noundef %bdev, i32 noundef %mode, i64 noundef %2, i64 noundef %sub) #7
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %if.end18
  %shr = lshr i64 %2, 9
  %shr23 = lshr i64 %3, 9
  %call24 = call i32 @blkdev_issue_zeroout(%struct.block_device* noundef %bdev, i64 noundef %shr, i64 noundef %shr23, i32 noundef 3264, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end12, %if.end3, %if.end, %entry, %if.end22
  %retval.0 = phi i32 [ %call24, %if.end22 ], [ -9, %entry ], [ -14, %if.end ], [ -22, %if.end3 ], [ -22, %if.end12 ], [ %call19, %if.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_uint(i32* noundef %argp, i32 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i32* %argp to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #6
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #6
  %1 = bitcast i8* %call1 to i32*
  %2 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %val, i32* %1, i32 -14, i32 0) #8, !srcloc !21
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %__pu_err.0 = phi i32 [ %2, %if.then ], [ -14, %entry ]
  ret i32 %__pu_err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_read_only(%struct.block_device* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdev_physical_block_size(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #6
  %call1 = call fastcc i32 @queue_physical_block_size(%struct.request_queue* noundef %call) #6
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdev_io_min(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #6
  %call1 = call fastcc i32 @queue_io_min(%struct.request_queue* noundef %call) #6
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdev_io_opt(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #6
  %call1 = call fastcc i32 @queue_io_opt(%struct.request_queue* noundef %call) #6
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdev_alignment_offset(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #6
  %limits = getelementptr inbounds %struct.request_queue, %struct.request_queue* %call, i64 0, i32 31
  %misaligned = getelementptr inbounds %struct.request_queue, %struct.request_queue* %call, i64 0, i32 31, i32 24
  %0 = load i8, i8* %misaligned, align 2
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @bdev_is_partition(%struct.block_device* noundef %bdev) #6
  br i1 %call1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %bd_start_sect = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 0
  %1 = load i64, i64* %bd_start_sect, align 8
  %call4 = call fastcc i32 @queue_limit_alignment_offset(%struct.queue_limits* noundef %limits, i64 noundef %1) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %alignment_offset = getelementptr inbounds %struct.request_queue, %struct.request_queue* %call, i64 0, i32 31, i32 10
  %2 = load i32, i32* %alignment_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5, %if.then2
  %retval.0 = phi i32 [ %call4, %if.then2 ], [ %2, %if.end5 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_max_sectors(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #2 {
entry:
  %max_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 6
  %0 = load i32, i32* %max_sectors, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_ushort(i16* noundef %argp, i16 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i16* %argp to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 2) #6
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #6
  %1 = bitcast i8* %call1 to i16*
  %2 = call i32 asm sideeffect "1:\09sttrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %val, i16* %1, i32 -14, i32 0) #8, !srcloc !22
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %__pu_err.0 = phi i32 [ %2, %if.then ], [ -14, %entry ]
  ret i32 %__pu_err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkdev_reread_part(%struct.block_device* nocapture noundef readonly %bdev, i32 noundef %mode) unnamed_addr #0 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %call = call fastcc i1 @disk_part_scan_enabled(%struct.gendisk* noundef %0) #6
  br i1 %call, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @bdev_is_partition(%struct.block_device* noundef %bdev) #6
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i1 @capable(i32 noundef 21) #7
  br i1 %call2, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %open_partitions = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 14
  %2 = load i32, i32* %open_partitions, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end4
  %and = and i32 %mode, -129
  %state = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 12
  call fastcc void @set_bit(i64* noundef %state) #6
  %bd_dev = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 4
  %3 = load i32, i32* %bd_dev, align 4
  %call9 = call %struct.block_device* @blkdev_get_by_dev(i32 noundef %3, i32 noundef %and, i8* noundef null) #7
  %4 = bitcast %struct.block_device* %call9 to i8*
  %call10 = call fastcc i1 @IS_ERR(i8* noundef %4) #6
  br i1 %call10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %call12 = call fastcc i64 @PTR_ERR(i8* noundef %4) #6
  %conv = trunc i64 %call12 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @blkdev_put(%struct.block_device* noundef %call9, i32 noundef %and) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %lor.lhs.false, %if.end13, %if.then11
  %retval.0 = phi i32 [ %conv, %if.then11 ], [ 0, %if.end13 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ -13, %if.end ], [ -16, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkdev_pr_register(%struct.block_device* noundef %bdev, %struct.pr_registration* noundef %arg) unnamed_addr #0 {
entry:
  %reg = alloca %struct.pr_registration, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 8
  %1 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %1, i64 0, i32 14
  %2 = load %struct.pr_ops*, %struct.pr_ops** %pr_ops, align 8
  %3 = bitcast %struct.pr_registration* %reg to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !annotation !7
  %call = call i1 @capable(i32 noundef 21) #7
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.pr_ops* %2, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %pr_register = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %2, i64 0, i32 0
  %4 = load i32 (%struct.block_device*, i64, i64, i32)*, i32 (%struct.block_device*, i64, i64, i32)** %pr_register, align 8
  %tobool1.not = icmp eq i32 (%struct.block_device*, i64, i64, i32)* %4, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %lor.lhs.false
  %5 = bitcast %struct.pr_registration* %arg to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %3, i8* noundef %5, i64 noundef 24) #7
  %tobool5.not = icmp eq i64 %call2.i, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end3
  %flags = getelementptr inbounds %struct.pr_registration, %struct.pr_registration* %reg, i64 0, i32 2
  %6 = load i32, i32* %flags, align 8
  %tobool8.not = icmp ult i32 %6, 2
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end7
  %7 = load i32 (%struct.block_device*, i64, i64, i32)*, i32 (%struct.block_device*, i64, i64, i32)** %pr_register, align 8
  %old_key = getelementptr inbounds %struct.pr_registration, %struct.pr_registration* %reg, i64 0, i32 0
  %8 = load i64, i64* %old_key, align 8
  %new_key = getelementptr inbounds %struct.pr_registration, %struct.pr_registration* %reg, i64 0, i32 1
  %9 = load i64, i64* %new_key, align 8
  %call13 = call i32 %7(%struct.block_device* noundef %bdev, i64 noundef %8, i64 noundef %9, i32 noundef %6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3, %if.end, %lor.lhs.false, %entry, %if.end10
  %retval.0 = phi i32 [ %call13, %if.end10 ], [ -1, %entry ], [ -95, %lor.lhs.false ], [ -95, %if.end ], [ -14, %if.end3 ], [ -95, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkdev_pr_reserve(%struct.block_device* noundef %bdev, %struct.pr_reservation* noundef %arg) unnamed_addr #0 {
entry:
  %rsv = alloca %struct.pr_reservation, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 8
  %1 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %1, i64 0, i32 14
  %2 = load %struct.pr_ops*, %struct.pr_ops** %pr_ops, align 8
  %3 = bitcast %struct.pr_reservation* %rsv to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !7
  %call = call i1 @capable(i32 noundef 21) #7
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.pr_ops* %2, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %pr_reserve = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %2, i64 0, i32 1
  %4 = load i32 (%struct.block_device*, i64, i32, i32)*, i32 (%struct.block_device*, i64, i32, i32)** %pr_reserve, align 8
  %tobool1.not = icmp eq i32 (%struct.block_device*, i64, i32, i32)* %4, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %lor.lhs.false
  %5 = bitcast %struct.pr_reservation* %arg to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %3, i8* noundef %5, i64 noundef 16) #7
  %tobool5.not = icmp eq i64 %call2.i, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end3
  %flags = getelementptr inbounds %struct.pr_reservation, %struct.pr_reservation* %rsv, i64 0, i32 2
  %6 = load i32, i32* %flags, align 4
  %tobool8.not = icmp ult i32 %6, 2
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end7
  %7 = load i32 (%struct.block_device*, i64, i32, i32)*, i32 (%struct.block_device*, i64, i32, i32)** %pr_reserve, align 8
  %key = getelementptr inbounds %struct.pr_reservation, %struct.pr_reservation* %rsv, i64 0, i32 0
  %8 = load i64, i64* %key, align 8
  %type = getelementptr inbounds %struct.pr_reservation, %struct.pr_reservation* %rsv, i64 0, i32 1
  %9 = load i32, i32* %type, align 8
  %call13 = call i32 %7(%struct.block_device* noundef %bdev, i64 noundef %8, i32 noundef %9, i32 noundef %6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3, %if.end, %lor.lhs.false, %entry, %if.end10
  %retval.0 = phi i32 [ %call13, %if.end10 ], [ -1, %entry ], [ -95, %lor.lhs.false ], [ -95, %if.end ], [ -14, %if.end3 ], [ -95, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkdev_pr_release(%struct.block_device* noundef %bdev, %struct.pr_reservation* noundef %arg) unnamed_addr #0 {
entry:
  %rsv = alloca %struct.pr_reservation, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 8
  %1 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %1, i64 0, i32 14
  %2 = load %struct.pr_ops*, %struct.pr_ops** %pr_ops, align 8
  %3 = bitcast %struct.pr_reservation* %rsv to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !7
  %call = call i1 @capable(i32 noundef 21) #7
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.pr_ops* %2, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %pr_release = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %2, i64 0, i32 2
  %4 = load i32 (%struct.block_device*, i64, i32)*, i32 (%struct.block_device*, i64, i32)** %pr_release, align 8
  %tobool1.not = icmp eq i32 (%struct.block_device*, i64, i32)* %4, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %lor.lhs.false
  %5 = bitcast %struct.pr_reservation* %arg to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %3, i8* noundef %5, i64 noundef 16) #7
  %tobool5.not = icmp eq i64 %call2.i, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end3
  %flags = getelementptr inbounds %struct.pr_reservation, %struct.pr_reservation* %rsv, i64 0, i32 2
  %6 = load i32, i32* %flags, align 4
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end7
  %7 = load i32 (%struct.block_device*, i64, i32)*, i32 (%struct.block_device*, i64, i32)** %pr_release, align 8
  %key = getelementptr inbounds %struct.pr_reservation, %struct.pr_reservation* %rsv, i64 0, i32 0
  %8 = load i64, i64* %key, align 8
  %type = getelementptr inbounds %struct.pr_reservation, %struct.pr_reservation* %rsv, i64 0, i32 1
  %9 = load i32, i32* %type, align 8
  %call12 = call i32 %7(%struct.block_device* noundef %bdev, i64 noundef %8, i32 noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3, %if.end, %lor.lhs.false, %entry, %if.end10
  %retval.0 = phi i32 [ %call12, %if.end10 ], [ -1, %entry ], [ -95, %lor.lhs.false ], [ -95, %if.end ], [ -14, %if.end3 ], [ -95, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkdev_pr_preempt(%struct.block_device* noundef %bdev, %struct.pr_preempt* noundef %arg, i1 noundef %abort) unnamed_addr #0 {
entry:
  %p = alloca %struct.pr_preempt, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 8
  %1 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %1, i64 0, i32 14
  %2 = load %struct.pr_ops*, %struct.pr_ops** %pr_ops, align 8
  %3 = bitcast %struct.pr_preempt* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !annotation !7
  %call = call i1 @capable(i32 noundef 21) #7
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.pr_ops* %2, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %pr_preempt = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %2, i64 0, i32 3
  %4 = load i32 (%struct.block_device*, i64, i64, i32, i1)*, i32 (%struct.block_device*, i64, i64, i32, i1)** %pr_preempt, align 8
  %tobool1.not = icmp eq i32 (%struct.block_device*, i64, i64, i32, i1)* %4, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %lor.lhs.false
  %5 = bitcast %struct.pr_preempt* %arg to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %3, i8* noundef %5, i64 noundef 24) #7
  %tobool5.not = icmp eq i64 %call2.i, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end3
  %flags = getelementptr inbounds %struct.pr_preempt, %struct.pr_preempt* %p, i64 0, i32 3
  %6 = load i32, i32* %flags, align 4
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end7
  %7 = load i32 (%struct.block_device*, i64, i64, i32, i1)*, i32 (%struct.block_device*, i64, i64, i32, i1)** %pr_preempt, align 8
  %old_key = getelementptr inbounds %struct.pr_preempt, %struct.pr_preempt* %p, i64 0, i32 0
  %8 = load i64, i64* %old_key, align 8
  %new_key = getelementptr inbounds %struct.pr_preempt, %struct.pr_preempt* %p, i64 0, i32 1
  %9 = load i64, i64* %new_key, align 8
  %type = getelementptr inbounds %struct.pr_preempt, %struct.pr_preempt* %p, i64 0, i32 2
  %10 = load i32, i32* %type, align 8
  %call13 = call i32 %7(%struct.block_device* noundef %bdev, i64 noundef %8, i64 noundef %9, i32 noundef %10, i1 noundef %abort) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3, %if.end, %lor.lhs.false, %entry, %if.end10
  %retval.0 = phi i32 [ %call13, %if.end10 ], [ -1, %entry ], [ -95, %lor.lhs.false ], [ -95, %if.end ], [ -14, %if.end3 ], [ -95, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkdev_pr_clear(%struct.block_device* noundef %bdev, %struct.pr_clear* noundef %arg) unnamed_addr #0 {
entry:
  %c = alloca %struct.pr_clear, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 8
  %1 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %1, i64 0, i32 14
  %2 = load %struct.pr_ops*, %struct.pr_ops** %pr_ops, align 8
  %3 = bitcast %struct.pr_clear* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !7
  %call = call i1 @capable(i32 noundef 21) #7
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.pr_ops* %2, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %pr_clear = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %2, i64 0, i32 4
  %4 = load i32 (%struct.block_device*, i64)*, i32 (%struct.block_device*, i64)** %pr_clear, align 8
  %tobool1.not = icmp eq i32 (%struct.block_device*, i64)* %4, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %lor.lhs.false
  %5 = bitcast %struct.pr_clear* %arg to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %3, i8* noundef %5, i64 noundef 16) #7
  %tobool5.not = icmp eq i64 %call2.i, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end3
  %flags = getelementptr inbounds %struct.pr_clear, %struct.pr_clear* %c, i64 0, i32 1
  %6 = load i32, i32* %flags, align 8
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end7
  %7 = load i32 (%struct.block_device*, i64)*, i32 (%struct.block_device*, i64)** %pr_clear, align 8
  %key = getelementptr inbounds %struct.pr_clear, %struct.pr_clear* %c, i64 0, i32 0
  %8 = load i64, i64* %key, align 8
  %call12 = call i32 %7(%struct.block_device* noundef %bdev, i64 noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3, %if.end, %lor.lhs.false, %entry, %if.end10
  %retval.0 = phi i32 [ %call12, %if.end10 ], [ -1, %entry ], [ -95, %lor.lhs.false ], [ -95, %if.end ], [ -14, %if.end3 ], [ -95, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsync_bdev(%struct.block_device* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(%struct.block_device* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @truncate_bdev_range(%struct.block_device* noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(%struct.block_device* noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(%struct.block_device* noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_physical_block_size(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #2 {
entry:
  %physical_block_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 8
  %0 = load i32, i32* %physical_block_size, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_io_min(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #2 {
entry:
  %io_min = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 11
  %0 = load i32, i32* %io_min, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_io_opt(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #2 {
entry:
  %io_opt = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 12
  %0 = load i32, i32* %io_opt, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_limit_alignment_offset(%struct.queue_limits* nocapture noundef readonly %lim, i64 noundef %sector) unnamed_addr #2 {
entry:
  %physical_block_size = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 8
  %0 = load i32, i32* %physical_block_size, align 4
  %io_min = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 11
  %1 = load i32, i32* %io_min, align 8
  %cmp = icmp ugt i32 %0, %1
  %cond = select i1 %cmp, i32 %0, i32 %1
  %shr = lshr i32 %cond, 9
  %conv = zext i32 %shr to i64
  %rem = urem i64 %sector, %conv
  %conv1 = trunc i64 %rem to i32
  %shl.neg = mul i32 %conv1, -512
  %alignment_offset = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 10
  %2 = load i32, i32* %alignment_offset, align 4
  %add = add i32 %cond, %2
  %sub = add i32 %add, %shl.neg
  %rem4 = urem i32 %sub, %cond
  ret i32 %rem4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @disk_part_scan_enabled(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @disk_max_parts(%struct.gendisk* noundef %disk) #6
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 11
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 512
  %tobool.not = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool.not, %land.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @disk_max_parts(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 11
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %minors = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 2
  %1 = load i32, i32* %minors, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ 256, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #8, !srcloc !23
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }

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
!8 = !{i64 2155031837, i64 2155031874, i64 2155031891, i64 2155031926, i64 2155031948, i64 2155031974, i64 2155031997, i64 2155032015, i64 2155032174, i64 2155032215, i64 2155032237, i64 2155032283}
!9 = !{i64 2155036452, i64 2155036489, i64 2155036506, i64 2155036541, i64 2155036563, i64 2155036589, i64 2155036612, i64 2155036630, i64 2155036789, i64 2155036830, i64 2155036852, i64 2155036898}
!10 = !{i64 2155052670, i64 2155052708, i64 2155052725, i64 2155052759, i64 2155052781, i64 2155052807, i64 2155052825, i64 2155052983, i64 2155053024, i64 2155053046, i64 2155053092}
!11 = !{i64 2155056576, i64 2155056614, i64 2155056631, i64 2155056665, i64 2155056687, i64 2155056713, i64 2155056731, i64 2155056889, i64 2155056930, i64 2155056952, i64 2155056998}
!12 = !{i64 2155044384, i64 2155044422, i64 2155044439, i64 2155044473, i64 2155044495, i64 2155044521, i64 2155044539, i64 2155044697, i64 2155044738, i64 2155044760, i64 2155044806}
!13 = !{i64 2155068270, i64 2155068307, i64 2155068324, i64 2155068359, i64 2155068381, i64 2155068407, i64 2155068430, i64 2155068448, i64 2155068607, i64 2155068648, i64 2155068670, i64 2155068716}
!14 = !{i64 2155060482, i64 2155060520, i64 2155060537, i64 2155060571, i64 2155060593, i64 2155060619, i64 2155060637, i64 2155060795, i64 2155060836, i64 2155060858, i64 2155060904}
!15 = !{i64 4003231, i64 4003314, i64 4003538, i64 4003758, i64 4003781}
!16 = !{i64 4007933, i64 4007957}
!17 = !{i64 2151560717}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2155064174, i64 2155064211, i64 2155064228, i64 2155064263, i64 2155064285, i64 2155064311, i64 2155064334, i64 2155064352, i64 2155064511, i64 2155064552, i64 2155064574, i64 2155064620}
!21 = !{i64 2155048290, i64 2155048328, i64 2155048345, i64 2155048379, i64 2155048401, i64 2155048427, i64 2155048445, i64 2155048603, i64 2155048644, i64 2155048666, i64 2155048712}
!22 = !{i64 2155040000, i64 2155040038, i64 2155040055, i64 2155040089, i64 2155040111, i64 2155040137, i64 2155040155, i64 2155040317, i64 2155040358, i64 2155040380, i64 2155040426}
!23 = !{i64 2147930442, i64 2147930953, i64 2147930983, i64 2147931009, i64 2147931041, i64 2147931070}
