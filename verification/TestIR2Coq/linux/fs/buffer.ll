; ModuleID = 'fs/buffer.c'
source_filename = "fs/buffer.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.bh_lru = type { [16 x %struct.buffer_head*] }
%struct.buffer_head = type { i64, %struct.buffer_head*, %struct.page*, i64, i64, i8*, %struct.block_device*, void (%struct.buffer_head*, i32)*, i8*, %struct.list_head, %struct.address_space*, %struct.atomic_t, %struct.spinlock }
%struct.page = type { i64, %union.anon, %union.anon.69, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.69 = type { %struct.atomic_t }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.79, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.46, %struct.list_head, %struct.list_head, %union.anon.47 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [48 x i8] }
%struct.anon.20 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
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
%union.anon.46 = type { %struct.list_head }
%union.anon.47 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.48 }
%union.anon.48 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.49, %union.anon.50 }
%union.anon.49 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.50 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.42, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.40, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.24, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.24 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.workqueue_struct = type opaque
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.25, %union.anon.26, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.70, %union.anon.71, %union.anon.72, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.75, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.70 = type { %struct.hlist_node }
%union.anon.71 = type { %struct.rb_node }
%union.anon.72 = type { %struct.anon.74 }
%struct.anon.74 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.75 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type opaque
%struct.blk_mq_ctx = type opaque
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.45, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.45 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.kernfs_iattrs = type opaque
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.blk_mq_tag_set = type opaque
%union.anon.25 = type { %struct.list_head }
%union.anon.26 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.27 }
%struct.anon.27 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.31 }
%struct.anon.31 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.39, i32, [12 x i8] }
%union.anon.39 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.40 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.41, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.41 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.42 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.43, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.44, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.43 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.44 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.54 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.52, %struct.qspinlock }
%union.anon.52 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.54 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.23 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.23 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.79 = type { %struct.pipe_inode_info* }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.bh_accounting = type { i32, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pagevec = type { i8, i8, [15 x %struct.page*] }
%struct.iomap = type { i64, i64, i64, i16, i16, %struct.block_device*, %struct.dax_device*, i8*, i8*, %struct.iomap_page_ops* }
%struct.dax_device = type opaque
%struct.iomap_page_ops = type { i32 (%struct.inode*, i64, i32)*, void (%struct.inode*, i64, i32, %struct.page*)* }
%struct.wait_bit_key = type { i8*, i32, i64 }
%struct.anon.63 = type { i64, i8, i8, %struct.atomic_t, i32 }

@.str = private unnamed_addr constant [23 x i8] c", lost sync page write\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c", lost async page write\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\014Emergency Thaw on %pg\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\013VFS: brelse: Trying to free free buffer\0A\00", align 1
@bh_lrus = internal global %struct.bh_lru zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@bh_cachep = internal unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@bh_accounting = internal global %struct.bh_accounting zeroinitializer, section ".data..percpu", align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"buffer_head\00", align 1
@max_buffer_heads = internal unnamed_addr global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"fs/buffer:dead\00", align 1
@buffer_heads_over_limit = dso_local local_unnamed_addr global i32 0, align 4
@buffer_io_error._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.buffer_io_error = private unnamed_addr constant [16 x i8] c"buffer_io_error\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"\013Buffer I/O error on dev %pg, logical block %llu%s\0A\00", align 1
@__find_get_block_slow.last_warned = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 250, i32 1, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.__find_get_block_slow = private unnamed_addr constant [22 x i8] c"__find_get_block_slow\00", align 1
@.str.11 = private unnamed_addr constant [115 x i8] c"__find_get_block_slow() failed. block=%llu, b_blocknr=%llu, b_state=0x%08lx, b_size=%zu, device %pg blocksize: %d\0A\00", align 1
@lru_disable_count = external dso_local global %struct.atomic_t, align 4
@.str.12 = private unnamed_addr constant [45 x i8] c"\013getblk(): invalid block size %d requested\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"\013logical block size: %d\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c", async page read\00", align 1
@fs_bio_set = external dso_local global %struct.bio_set, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @touch_buffer(%struct.buffer_head* nocapture noundef readonly %bh) local_unnamed_addr #0 {
entry:
  %b_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 2
  %0 = load %struct.page*, %struct.page** %b_page, align 8
  call void @mark_page_accessed(%struct.page* noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__lock_buffer(%struct.buffer_head* noundef %bh) local_unnamed_addr #0 {
entry:
  %b_state = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  call fastcc void @wait_on_bit_lock_io(i64* noundef %b_state) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wait_on_bit_lock_io(i64* noundef %word) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @test_and_set_bit(i64 noundef 2, i64* noundef %word) #21
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = bitcast i64* %word to i8*
  %call3 = call i32 @out_of_line_wait_on_bit_lock(i8* noundef %0, i32 noundef 2, i32 (%struct.wait_bit_key*, i32)* noundef nonnull @bit_wait_io, i32 noundef 2) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unlock_buffer(%struct.buffer_head* noundef %bh) local_unnamed_addr #0 {
entry:
  %b_state = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  call fastcc void @clear_bit_unlock(i64* noundef %b_state) #21
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !8
  %0 = bitcast %struct.buffer_head* %bh to i8*
  call void @wake_up_bit(i8* noundef %0, i32 noundef 2) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit_unlock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_fetch_andnot_release(%struct.atomic64_t* noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @buffer_check_dirty_writeback(%struct.page* noundef %page, i8* nocapture noundef writeonly %dirty, i8* nocapture noundef writeonly %writeback) local_unnamed_addr #0 {
entry:
  store i8 0, i8* %dirty, align 1
  store i8 0, i8* %writeback, align 1
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i76 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i.i76, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 93; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !10
  unreachable

do.end9:                                          ; preds = %entry
  %flags.i66 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i66, align 8
  %3 = and i64 %2, 8192
  %tobool11.not = icmp eq i64 %3, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %do.end9
  %call.i68 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %4 = inttoptr i64 %call.i68 to %struct.page*
  %flags.i69 = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i69, align 8
  %6 = and i64 %5, 32768
  %tobool15.not = icmp eq i64 %6, 0
  br i1 %tobool15.not, label %do.body18, label %if.then16

if.then16:                                        ; preds = %if.end13
  store i8 1, i8* %writeback, align 1
  br label %do.body18

do.body18:                                        ; preds = %if.end13, %if.then16
  %7 = load volatile i64, i64* %flags.i66, align 8
  %8 = and i64 %7, 8192
  %tobool20.not = icmp eq i64 %8, 0
  br i1 %tobool20.not, label %do.body31, label %do.end39, !prof !9

do.body31:                                        ; preds = %do.body18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 101; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !11
  unreachable

do.end39:                                         ; preds = %do.body18
  %private = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %9 = load i64, i64* %private, align 8
  %10 = inttoptr i64 %9 to %struct.buffer_head*
  br label %do.body40

do.body40:                                        ; preds = %if.end48, %do.end39
  %bh.0 = phi %struct.buffer_head* [ %10, %do.end39 ], [ %15, %if.end48 ]
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  %11 = load volatile i64, i64* %b_state.i, align 8
  %12 = and i64 %11, 4
  %tobool42.not = icmp eq i64 %12, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %do.body40
  store i8 1, i8* %writeback, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %do.body40
  %13 = load volatile i64, i64* %b_state.i, align 8
  %14 = and i64 %13, 2
  %tobool46.not = icmp eq i64 %14, 0
  br i1 %tobool46.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end44
  store i8 1, i8* %dirty, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %15 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp.not = icmp eq %struct.buffer_head* %15, %10
  br i1 %cmp.not, label %cleanup, label %do.body40

cleanup:                                          ; preds = %if.end48, %do.end9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__wait_on_buffer(%struct.buffer_head* noundef %bh) local_unnamed_addr #0 {
entry:
  %b_state = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  call fastcc void @wait_on_bit_io(i64* noundef %b_state) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wait_on_bit_io(i64* noundef %word) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %word, align 8
  %1 = and i64 %0, 4
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast i64* %word to i8*
  %call3 = call i32 @out_of_line_wait_on_bit(i8* noundef %2, i32 noundef 2, i32 (%struct.wait_bit_key*, i32)* noundef nonnull @bit_wait_io, i32 noundef 2) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @end_buffer_read_sync(%struct.buffer_head* noundef %bh, i32 noundef %uptodate) #0 {
entry:
  call fastcc void @__end_buffer_read_notouch(%struct.buffer_head* noundef %bh, i32 noundef %uptodate) #21
  call fastcc void @put_bh(%struct.buffer_head* noundef %bh) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__end_buffer_read_notouch(%struct.buffer_head* noundef %bh, i32 noundef %uptodate) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %uptodate, 0
  %b_state.i3 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load volatile i64, i64* %b_state.i3, align 8
  %conv.i3.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %conv.i3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i3) #20
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %b_state.i3) #20
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then, %if.else
  call void @unlock_buffer(%struct.buffer_head* noundef %bh) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_bh(%struct.buffer_head* noundef %bh) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  %b_count = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 11
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %b_count) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @end_buffer_write_sync(%struct.buffer_head* noundef %bh, i32 noundef %uptodate) #0 {
entry:
  %tobool.not = icmp eq i32 %uptodate, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %conv.i3.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %conv.i3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i) #20
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @buffer_io_error(%struct.buffer_head* noundef %bh, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)) #21
  call void @mark_buffer_write_io_error(%struct.buffer_head* noundef %bh) #21
  %b_state.i6 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %b_state.i6) #20
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then, %if.else
  call void @unlock_buffer(%struct.buffer_head* noundef %bh) #21
  call fastcc void @put_bh(%struct.buffer_head* noundef %bh) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @buffer_io_error(%struct.buffer_head* noundef %bh, i8* noundef %msg) unnamed_addr #0 {
entry:
  %b_state = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state, align 8
  %1 = and i64 %0, 4096
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call1 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @buffer_io_error._rs, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.buffer_io_error, i64 0, i64 0)) #20
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.then
  %b_bdev = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 6
  %2 = load %struct.block_device*, %struct.block_device** %b_bdev, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 3
  %3 = load i64, i64* %b_blocknr, align 8
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), %struct.block_device* noundef %2, i64 noundef %3, i8* noundef %msg) #23
  br label %if.end5

if.end5:                                          ; preds = %if.then, %do.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mark_buffer_write_io_error(%struct.buffer_head* noundef %bh) local_unnamed_addr #0 {
entry:
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %1 = and i64 %0, 1024
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %set_buffer_write_io_error.exit

if.then.i:                                        ; preds = %entry
  call fastcc void @set_bit(i64 noundef 10, i64* noundef %b_state.i) #20
  br label %set_buffer_write_io_error.exit

set_buffer_write_io_error.exit:                   ; preds = %entry, %if.then.i
  %b_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 2
  %2 = load %struct.page*, %struct.page** %b_page, align 8
  %tobool.not = icmp eq %struct.page* %2, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %set_buffer_write_io_error.exit
  %mapping = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 1, i32 0, i32 1
  %3 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %tobool2.not = icmp eq %struct.address_space* %3, null
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @mapping_set_error(%struct.address_space* noundef nonnull %3, i32 noundef -5) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %set_buffer_write_io_error.exit
  %b_assoc_map = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 10
  %4 = load %struct.address_space*, %struct.address_space** %b_assoc_map, align 8
  %tobool5.not = icmp eq %struct.address_space* %4, null
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call fastcc void @mapping_set_error(%struct.address_space* noundef nonnull %4, i32 noundef -5) #21
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  call fastcc void @__rcu_read_lock() #20
  %b_bdev = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 6
  %5 = load %struct.block_device*, %struct.block_device** %b_bdev, align 8
  %bd_super = getelementptr inbounds %struct.block_device, %struct.block_device* %5, i64 0, i32 7
  %6 = load volatile %struct.super_block*, %struct.super_block** %bd_super, align 8
  %tobool9.not = icmp eq %struct.super_block* %6, null
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  %s_wb_err = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 43
  %call = call i32 @errseq_set(i32* noundef %s_wb_err, i32 noundef -5) #20
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  call fastcc void @rcu_read_unlock() #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @end_buffer_async_write(%struct.buffer_head* noundef %bh, i32 noundef %uptodate) #0 {
entry:
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %1 = and i64 %0, 128
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 349; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !13
  unreachable

do.end9:                                          ; preds = %entry
  %b_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 2
  %2 = load %struct.page*, %struct.page** %b_page, align 8
  %tobool10.not = icmp eq i32 %uptodate, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.end9
  %3 = load volatile i64, i64* %b_state.i, align 8
  %conv.i3.i = and i64 %3, 1
  %tobool.not.i = icmp eq i64 %conv.i3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body13

if.then.i:                                        ; preds = %if.then11
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i) #20
  br label %do.body13

if.else:                                          ; preds = %do.end9
  call fastcc void @buffer_io_error(%struct.buffer_head* noundef %bh, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)) #21
  call void @mark_buffer_write_io_error(%struct.buffer_head* noundef %bh) #21
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %b_state.i) #20
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %2) #20
  %4 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 8, i64* noundef %flags.i) #20
  br label %do.body13

do.body13:                                        ; preds = %if.then.i, %if.then11, %if.else
  %flags.i104 = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i104, align 8
  %6 = and i64 %5, 8192
  %tobool15.not = icmp eq i64 %6, 0
  br i1 %tobool15.not, label %do.body26, label %do.end34, !prof !9

do.body26:                                        ; preds = %do.body13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 361; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !14
  unreachable

do.end34:                                         ; preds = %do.body13
  %private = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 1, i32 0, i32 3
  %7 = load i64, i64* %private, align 8
  %8 = inttoptr i64 %7 to %struct.buffer_head*
  %rlock.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i64 0, i32 12, i32 0, i32 0
  %call41 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #21
  call fastcc void @clear_bit(i64 noundef 7, i64* noundef %b_state.i) #20
  call void @unlock_buffer(%struct.buffer_head* noundef %bh) #21
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end34
  %bh.pn = phi %struct.buffer_head* [ %bh, %do.end34 ], [ %tmp.0, %while.body ]
  %tmp.0.in = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.pn, i64 0, i32 1
  %tmp.0 = load %struct.buffer_head*, %struct.buffer_head** %tmp.0.in, align 8
  %cmp46.not = icmp eq %struct.buffer_head* %tmp.0, %bh
  br i1 %cmp46.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %b_state.i107 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %tmp.0, i64 0, i32 0
  %9 = load volatile i64, i64* %b_state.i107, align 8
  %10 = and i64 %9, 128
  %tobool49.not = icmp eq i64 %10, 0
  br i1 %tobool49.not, label %while.cond, label %do.body51

do.body51:                                        ; preds = %while.body
  %b_state.i107.le = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %tmp.0, i64 0, i32 0
  %11 = load volatile i64, i64* %b_state.i107.le, align 8
  %12 = and i64 %11, 4
  %tobool53.not = icmp eq i64 %12, 0
  br i1 %tobool53.not, label %do.body64, label %still_busy, !prof !9

do.body64:                                        ; preds = %do.body51
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 369; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !15
  unreachable

while.end:                                        ; preds = %while.cond
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call41) #20
  call void @end_page_writeback(%struct.page* noundef %2) #20
  br label %cleanup

still_busy:                                       ; preds = %do.body51
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call41) #20
  br label %cleanup

cleanup:                                          ; preds = %still_busy, %while.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #21
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #21
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mark_buffer_async_write(%struct.buffer_head* noundef %bh) local_unnamed_addr #0 {
entry:
  call fastcc void @mark_buffer_async_write_endio(%struct.buffer_head* noundef %bh, void (%struct.buffer_head*, i32)* noundef nonnull @end_buffer_async_write) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_buffer_async_write_endio(%struct.buffer_head* noundef %bh, void (%struct.buffer_head*, i32)* noundef %handler) unnamed_addr #0 {
entry:
  %b_end_io = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 7
  store void (%struct.buffer_head*, i32)* %handler, void (%struct.buffer_head*, i32)** %b_end_io, align 8
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %1 = and i64 %0, 128
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %set_buffer_async_write.exit

if.then.i:                                        ; preds = %entry
  call fastcc void @set_bit(i64 noundef 7, i64* noundef %b_state.i) #20
  br label %set_buffer_async_write.exit

set_buffer_async_write.exit:                      ; preds = %entry, %if.then.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @inode_has_buffers(%struct.inode* noundef %inode) local_unnamed_addr #3 {
entry:
  %private_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 13
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %private_list) #21
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @emergency_thaw_bdev(%struct.super_block* nocapture noundef readonly %sb) local_unnamed_addr #0 {
entry:
  %s_bdev = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 20
  %0 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %tobool.not7 = icmp eq %struct.block_device* %0, null
  br i1 %tobool.not7, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %do.end
  %1 = phi %struct.block_device* [ %3, %do.end ], [ %0, %entry ]
  %call = call i32 @thaw_bdev(%struct.block_device* noundef nonnull %1) #20
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %do.end, label %while.end

do.end:                                           ; preds = %land.rhs
  %2 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.block_device* noundef %2) #23
  %3 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %tobool.not = icmp eq %struct.block_device* %3, null
  br i1 %tobool.not, label %while.end, label %land.rhs

while.end:                                        ; preds = %land.rhs, %do.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_bdev(%struct.block_device* noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sync_mapping_buffers(%struct.address_space* noundef %mapping) local_unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 14
  %0 = bitcast i8** %private_data to %struct.address_space**
  %1 = load %struct.address_space*, %struct.address_space** %0, align 8
  %cmp = icmp eq %struct.address_space* %1, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %private_list = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 13
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %private_list) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %private_lock = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 12
  %call2 = call fastcc i32 @fsync_buffers_list(%struct.spinlock* noundef %private_lock, %struct.list_head* noundef %private_list) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fsync_buffers_list(%struct.spinlock* noundef %lock, %struct.list_head* noundef %list) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.list_head, align 8
  %plug = alloca %struct.blk_plug, align 8
  %0 = bitcast %struct.list_head* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !17
  %1 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !17
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %tmp) #21
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #20
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %lock, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %call95 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #21
  %tobool.not96 = icmp eq i32 %call95, 0
  br i1 %tobool.not96, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = bitcast %struct.list_head* %list to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end10
  %3 = load i8*, i8** %2, align 8
  %add.ptr = getelementptr i8, i8* %3, i64 -72
  %4 = bitcast i8* %add.ptr to %struct.buffer_head*
  %b_assoc_map = getelementptr i8, i8* %3, i64 16
  %5 = bitcast i8* %b_assoc_map to %struct.address_space**
  %6 = load %struct.address_space*, %struct.address_space** %5, align 8
  call fastcc void @__remove_assoc_queue(%struct.buffer_head* noundef %4) #21
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  %b_state.i = bitcast i8* %add.ptr to i64*
  %7 = load volatile i64, i64* %b_state.i, align 8
  %8 = and i64 %7, 2
  %tobool3.not = icmp eq i64 %8, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %9 = load volatile i64, i64* %b_state.i, align 8
  %10 = and i64 %9, 4
  %tobool5.not = icmp eq i64 %10, 0
  br i1 %tobool5.not, label %if.end10, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %11 = bitcast i8* %3 to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef %11, %struct.list_head* noundef nonnull %tmp) #21
  store %struct.address_space* %6, %struct.address_space** %5, align 8
  %12 = load volatile i64, i64* %b_state.i, align 8
  %13 = and i64 %12, 2
  %tobool8.not = icmp eq i64 %13, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then
  call fastcc void @get_bh(%struct.buffer_head* noundef %4) #21
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  call void @write_dirty_buffer(%struct.buffer_head* noundef %4, i32 noundef 2048) #21
  call fastcc void @brelse(%struct.buffer_head* noundef %4) #21
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.then9, %lor.lhs.false
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %if.end10, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #20
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %call1297 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %tmp) #21
  %tobool13.not98 = icmp eq i32 %call1297, 0
  br i1 %tobool13.not98, label %while.body15.lr.ph, label %while.end33

while.body15.lr.ph:                               ; preds = %while.end
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %tmp, i64 0, i32 1
  %14 = bitcast %struct.list_head** %prev to i8**
  br label %while.body15

while.body15:                                     ; preds = %while.body15.lr.ph, %if.end28
  %err.099 = phi i32 [ 0, %while.body15.lr.ph ], [ %spec.select, %if.end28 ]
  %15 = load i8*, i8** %14, align 8
  %add.ptr21 = getelementptr i8, i8* %15, i64 -72
  %16 = bitcast i8* %add.ptr21 to %struct.buffer_head*
  call fastcc void @get_bh(%struct.buffer_head* noundef %16) #21
  %b_assoc_map22 = getelementptr i8, i8* %15, i64 16
  %17 = bitcast i8* %b_assoc_map22 to %struct.address_space**
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  call fastcc void @__remove_assoc_queue(%struct.buffer_head* noundef %16) #21
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !19
  %b_state.i87 = bitcast i8* %add.ptr21 to i64*
  %19 = load volatile i64, i64* %b_state.i87, align 8
  %20 = and i64 %19, 2
  %tobool24.not = icmp eq i64 %20, 0
  br i1 %tobool24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %while.body15
  %21 = bitcast i8* %15 to %struct.list_head*
  %private_list = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i64 0, i32 13
  call fastcc void @list_add(%struct.list_head* noundef %21, %struct.list_head* noundef %private_list) #21
  store %struct.address_space* %18, %struct.address_space** %17, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %while.body15
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  call fastcc void @wait_on_buffer(%struct.buffer_head* noundef %16) #21
  %22 = load volatile i64, i64* %b_state.i87, align 8
  %conv.i.i9194 = and i64 %22, 1
  %tobool30.not = icmp eq i64 %conv.i.i9194, 0
  %spec.select = select i1 %tobool30.not, i32 -5, i32 %err.099
  call fastcc void @brelse(%struct.buffer_head* noundef %16) #21
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %call12 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %tmp) #21
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %while.body15, label %while.end33

while.end33:                                      ; preds = %if.end28, %while.end
  %err.0.lcssa = phi i32 [ 0, %while.end ], [ %spec.select, %if.end28 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  %call34 = call fastcc i32 @osync_buffers_list(%struct.spinlock* noundef %lock, %struct.list_head* noundef %list) #21
  %tobool35.not = icmp eq i32 %err.0.lcssa, 0
  %spec.select100 = select i1 %tobool35.not, i32 %call34, i32 %err.0.lcssa
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #22
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #22
  ret i32 %spec.select100
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @write_boundary_block(%struct.block_device* noundef %bdev, i64 noundef %bblock, i32 noundef %blocksize) local_unnamed_addr #0 {
entry:
  %bh = alloca %struct.buffer_head*, align 8
  %0 = bitcast %struct.buffer_head** %bh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  %add = add i64 %bblock, 1
  %call = call %struct.buffer_head* @__find_get_block(%struct.block_device* noundef %bdev, i64 noundef %add, i32 noundef %blocksize) #21
  store %struct.buffer_head* %call, %struct.buffer_head** %bh, align 8
  %tobool.not = icmp eq %struct.buffer_head* %call, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %call, i64 0, i32 0
  %1 = load volatile i64, i64* %b_state.i, align 8
  %2 = and i64 %1, 2
  %tobool2.not = icmp eq i64 %2, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @ll_rw_block(i32 noundef 1, i32 noundef 0, i32 noundef 1, %struct.buffer_head** noundef nonnull %bh) #21
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  call fastcc void @put_bh(%struct.buffer_head* noundef nonnull %call) #21
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.buffer_head* @__find_get_block(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.buffer_head* @lookup_bh_lru(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size) #21
  %cmp = icmp eq %struct.buffer_head* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.buffer_head* @__find_get_block_slow(%struct.block_device* noundef %bdev, i64 noundef %block) #21
  %tobool.not = icmp eq %struct.buffer_head* %call1, null
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.then
  call fastcc void @bh_lru_install(%struct.buffer_head* noundef nonnull %call1) #21
  br label %if.end3

if.else:                                          ; preds = %entry
  call void @touch_buffer(%struct.buffer_head* noundef nonnull %call) #21
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.then2, %if.else
  %bh.0 = phi %struct.buffer_head* [ %call1, %if.then2 ], [ null, %if.then ], [ %call, %if.else ]
  ret %struct.buffer_head* %bh.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ll_rw_block(i32 noundef %op, i32 noundef %op_flags, i32 noundef %nr, %struct.buffer_head** nocapture noundef readonly %bhs) local_unnamed_addr #0 {
entry:
  %cmp33 = icmp sgt i32 %nr, 0
  br i1 %cmp33, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq i32 %op, 1
  %wide.trip.count = zext i32 %nr to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup ]
  %arrayidx = getelementptr %struct.buffer_head*, %struct.buffer_head** %bhs, i64 %indvars.iv
  %0 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx, align 8
  %call = call fastcc i32 @trylock_buffer(%struct.buffer_head* noundef %0) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %0, i64 0, i32 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call.i = call fastcc i1 @test_and_clear_bit(i64* noundef %b_state.i) #20
  br i1 %call.i, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.then2
  %b_end_io = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %0, i64 0, i32 7
  store void (%struct.buffer_head*, i32)* @end_buffer_write_sync, void (%struct.buffer_head*, i32)** %b_end_io, align 8
  call fastcc void @get_bh(%struct.buffer_head* noundef %0) #21
  %call6 = call i32 @submit_bh(i32 noundef 1, i32 noundef %op_flags, %struct.buffer_head* noundef %0) #21
  br label %cleanup

if.else:                                          ; preds = %if.end
  %1 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i32 = and i64 %1, 1
  %tobool9.not = icmp eq i64 %conv.i.i32, 0
  br i1 %tobool9.not, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.else
  %b_end_io11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %0, i64 0, i32 7
  store void (%struct.buffer_head*, i32)* @end_buffer_read_sync, void (%struct.buffer_head*, i32)** %b_end_io11, align 8
  call fastcc void @get_bh(%struct.buffer_head* noundef %0) #21
  %call12 = call i32 @submit_bh(i32 noundef %op, i32 noundef %op_flags, %struct.buffer_head* noundef %0) #21
  br label %cleanup

if.end14:                                         ; preds = %if.else, %if.then2
  call void @unlock_buffer(%struct.buffer_head* noundef %0) #21
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end14, %if.then10, %if.then5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mark_buffer_dirty_inode(%struct.buffer_head* noundef %bh, %struct.inode* nocapture noundef readonly %inode) local_unnamed_addr #0 {
entry:
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %b_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 2
  %1 = load %struct.page*, %struct.page** %b_page, align 8
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 1, i32 0, i32 1
  %2 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  call void @mark_buffer_dirty(%struct.buffer_head* noundef %bh) #21
  %private_data = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 14
  %3 = load i8*, i8** %private_data, align 8
  %tobool.not = icmp eq i8* %3, null
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %4 = bitcast i8** %private_data to %struct.address_space**
  store %struct.address_space* %2, %struct.address_space** %4, align 8
  br label %if.end13

do.body:                                          ; preds = %entry
  %5 = bitcast %struct.address_space* %2 to i8*
  %cmp.not = icmp eq i8* %3, %5
  br i1 %cmp.not, label %if.end13, label %do.body7, !prof !20

do.body7:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 579; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !21
  unreachable

if.end13:                                         ; preds = %do.body, %if.then
  %b_assoc_map = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 10
  %6 = load %struct.address_space*, %struct.address_space** %b_assoc_map, align 8
  %tobool14.not = icmp eq %struct.address_space* %6, null
  br i1 %tobool14.not, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end13
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %2, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %b_assoc_buffers = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 9
  %private_list = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 13
  call fastcc void @list_move_tail(%struct.list_head* noundef %b_assoc_buffers, %struct.list_head* noundef %private_list) #21
  store %struct.address_space* %0, %struct.address_space** %b_assoc_map, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mark_buffer_dirty(%struct.buffer_head* noundef %bh) local_unnamed_addr #0 {
entry:
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i64 = and i64 %0, 1
  %tobool.not = icmp eq i64 %conv.i.i64, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1084; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load volatile i64, i64* %b_state.i, align 8
  %2 = and i64 %1, 2
  %tobool17.not = icmp eq i64 %2, 0
  br i1 %tobool17.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  %3 = load volatile i64, i64* %b_state.i, align 8
  %4 = and i64 %3, 2
  %tobool20.not = icmp eq i64 %4, 0
  br i1 %tobool20.not, label %if.end23, label %if.end38

if.end23:                                         ; preds = %if.then18, %if.end
  %call.i = call fastcc i1 @test_and_set_bit(i64 noundef 1, i64* noundef %b_state.i) #20
  br i1 %call.i, label %if.end38, label %if.then26

if.then26:                                        ; preds = %if.end23
  %b_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 2
  %5 = load %struct.page*, %struct.page** %b_page, align 8
  %call.i60 = call fastcc i64 @_compound_head(%struct.page* noundef %5) #20
  %6 = inttoptr i64 %call.i60 to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_set_bit(i64 noundef 3, i64* noundef %flags.i) #20
  br i1 %call1.i, label %if.end38, label %if.then29

if.then29:                                        ; preds = %if.then26
  %call30 = call %struct.address_space* @page_mapping(%struct.page* noundef %5) #20
  %tobool31.not = icmp eq %struct.address_space* %call30, null
  br i1 %tobool31.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.then29
  call void @__set_page_dirty(%struct.page* noundef %5, %struct.address_space* noundef nonnull %call30, i32 noundef 0) #20
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %call30, i64 0, i32 0
  %7 = load %struct.inode*, %struct.inode** %host, align 8
  call void @__mark_inode_dirty(%struct.inode* noundef %7, i32 noundef 4) #20
  br label %if.end38

if.end38:                                         ; preds = %if.then29, %if.then26, %if.then36, %if.then18, %if.end23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #21
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__set_page_dirty_buffers(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #20
  %tobool.not = icmp eq %struct.address_space* %call, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_set_bit(i64 noundef 3, i64* noundef %flags.i) #20
  %1 = xor i1 %call1.i, true
  %2 = zext i1 %1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %call, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %flags.i68 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i68, align 8
  %4 = and i64 %3, 8192
  %tobool9.not = icmp eq i64 %4, 0
  br i1 %tobool9.not, label %if.end34, label %if.then10

if.then10:                                        ; preds = %if.end
  %5 = load volatile i64, i64* %flags.i68, align 8
  %6 = and i64 %5, 8192
  %tobool12.not = icmp eq i64 %6, 0
  br i1 %tobool12.not, label %do.body23, label %do.end29, !prof !9

do.body23:                                        ; preds = %if.then10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 626; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !24
  unreachable

do.end29:                                         ; preds = %if.then10
  %private = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %7 = load i64, i64* %private, align 8
  %8 = inttoptr i64 %7 to %struct.buffer_head*
  br label %do.body30

do.body30:                                        ; preds = %set_buffer_dirty.exit, %do.end29
  %bh.0 = phi %struct.buffer_head* [ %8, %do.end29 ], [ %11, %set_buffer_dirty.exit ]
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  %9 = load volatile i64, i64* %b_state.i, align 8
  %10 = and i64 %9, 2
  %tobool.not.i = icmp eq i64 %10, 0
  br i1 %tobool.not.i, label %if.then.i, label %set_buffer_dirty.exit

if.then.i:                                        ; preds = %do.body30
  call fastcc void @set_bit(i64 noundef 1, i64* noundef %b_state.i) #20
  br label %set_buffer_dirty.exit

set_buffer_dirty.exit:                            ; preds = %do.body30, %if.then.i
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %11 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp.not = icmp eq %struct.buffer_head* %11, %8
  br i1 %cmp.not, label %if.end34, label %do.body30

if.end34:                                         ; preds = %set_buffer_dirty.exit, %if.end
  %call.i71 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %12 = inttoptr i64 %call.i71 to %struct.page*
  %flags.i72 = getelementptr inbounds %struct.page, %struct.page* %12, i64 0, i32 0
  %call1.i73 = call fastcc i1 @test_and_set_bit(i64 noundef 3, i64* noundef %flags.i72) #20
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  br i1 %call1.i73, label %cleanup, label %if.then41

if.then41:                                        ; preds = %if.end34
  call void @__set_page_dirty(%struct.page* noundef %page, %struct.address_space* noundef nonnull %call, i32 noundef 1) #20
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %call, i64 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %host, align 8
  call void @__mark_inode_dirty(%struct.inode* noundef %13, i32 noundef 4) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then41, %if.then
  %retval.0.in = phi i32 [ %2, %if.then ], [ 1, %if.then41 ], [ 0, %if.end34 ]
  ret i32 %retval.0.in
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.address_space* @page_mapping(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_page_dirty(%struct.page* noundef, %struct.address_space* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(%struct.inode* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @invalidate_inode_buffers(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %call = call i32 @inode_has_buffers(%struct.inode* noundef %inode) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %private_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 13
  %private_data = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 14
  %0 = bitcast i8** %private_data to %struct.address_space**
  %1 = load %struct.address_space*, %struct.address_space** %0, align 8
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %call113 = call fastcc i32 @list_empty(%struct.list_head* noundef %private_list) #21
  %tobool2.not14 = icmp eq i32 %call113, 0
  br i1 %tobool2.not14, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.then
  %2 = bitcast %struct.list_head* %private_list to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %3 = load i8*, i8** %2, align 8
  %add.ptr = getelementptr i8, i8* %3, i64 -72
  %4 = bitcast i8* %add.ptr to %struct.buffer_head*
  call fastcc void @__remove_assoc_queue(%struct.buffer_head* noundef %4) #21
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %private_list) #21
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.then
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__remove_assoc_queue(%struct.buffer_head* noundef %bh) unnamed_addr #0 {
entry:
  %b_assoc_buffers = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 9
  call fastcc void @list_del_init(%struct.list_head* noundef %b_assoc_buffers) #21
  %b_assoc_map = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 10
  %0 = load %struct.address_space*, %struct.address_space** %b_assoc_map, align 8
  %tobool.not = icmp eq %struct.address_space* %0, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 480; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.address_space* null, %struct.address_space** %b_assoc_map, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @remove_inode_buffers(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %call = call i32 @inode_has_buffers(%struct.inode* noundef %inode) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %private_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 13
  %private_data = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 14
  %0 = bitcast i8** %private_data to %struct.address_space**
  %1 = load %struct.address_space*, %struct.address_space** %0, align 8
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %2 = bitcast %struct.list_head* %private_list to i8**
  %call124 = call fastcc i32 @list_empty(%struct.list_head* noundef %private_list) #21
  %tobool2.not25 = icmp eq i32 %call124, 0
  br i1 %tobool2.not25, label %while.body, label %while.end

while.body:                                       ; preds = %if.then, %cleanup
  %3 = load i8*, i8** %2, align 8
  %add.ptr = getelementptr i8, i8* %3, i64 -72
  %b_state.i = bitcast i8* %add.ptr to i64*
  %4 = load volatile i64, i64* %b_state.i, align 8
  %5 = and i64 %4, 2
  %tobool4.not = icmp eq i64 %5, 0
  br i1 %tobool4.not, label %cleanup, label %while.end

cleanup:                                          ; preds = %while.body
  %6 = bitcast i8* %add.ptr to %struct.buffer_head*
  call fastcc void @__remove_assoc_queue(%struct.buffer_head* noundef %6) #21
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %private_list) #21
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup, %while.body, %if.then
  %ret.2 = phi i32 [ 1, %if.then ], [ 0, %while.body ], [ 1, %cleanup ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  br label %if.end7

if.end7:                                          ; preds = %while.end, %entry
  %ret.3 = phi i32 [ %ret.2, %while.end ], [ 1, %entry ]
  ret i32 %ret.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.buffer_head* @alloc_page_buffers(%struct.page* noundef %page, i64 noundef %size, i1 noundef %retry) local_unnamed_addr #0 {
entry:
  %spec.select = select i1 %retry, i32 4230208, i32 4197440
  %sub35 = sub i64 4096, %size
  %cmp36 = icmp sgt i64 %sub35, -1
  br i1 %cmp36, label %while.body, label %out

while.body:                                       ; preds = %entry, %if.end5
  %sub38 = phi i64 [ %sub, %if.end5 ], [ %sub35, %entry ]
  %head.037 = phi %struct.buffer_head* [ %call2, %if.end5 ], [ null, %entry ]
  %call2 = call %struct.buffer_head* @alloc_buffer_head(i32 noundef %spec.select) #21
  %tobool3.not = icmp eq %struct.buffer_head* %call2, null
  br i1 %tobool3.not, label %no_grow, label %if.end5

if.end5:                                          ; preds = %while.body
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %call2, i64 0, i32 1
  store %struct.buffer_head* %head.037, %struct.buffer_head** %b_this_page, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %call2, i64 0, i32 3
  store i64 -1, i64* %b_blocknr, align 8
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %call2, i64 0, i32 4
  store i64 %size, i64* %b_size, align 8
  call void @set_bh_page(%struct.buffer_head* noundef nonnull %call2, %struct.page* noundef %page, i64 noundef %sub38) #21
  %sub = sub i64 %sub38, %size
  %cmp = icmp sgt i64 %sub, -1
  br i1 %cmp, label %while.body, label %out

out:                                              ; preds = %if.end5, %do.body, %entry, %no_grow
  %head.1 = phi %struct.buffer_head* [ null, %no_grow ], [ null, %entry ], [ null, %do.body ], [ %call2, %if.end5 ]
  ret %struct.buffer_head* %head.1

no_grow:                                          ; preds = %while.body
  %tobool7.not = icmp eq %struct.buffer_head* %head.037, null
  br i1 %tobool7.not, label %out, label %do.body

do.body:                                          ; preds = %no_grow, %do.body
  %head.2 = phi %struct.buffer_head* [ %0, %do.body ], [ %head.037, %no_grow ]
  %b_this_page9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %head.2, i64 0, i32 1
  %0 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page9, align 8
  call void @free_buffer_head(%struct.buffer_head* noundef nonnull %head.2) #21
  %tobool10.not = icmp eq %struct.buffer_head* %0, null
  br i1 %tobool10.not, label %out, label %do.body
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.buffer_head* @alloc_buffer_head(i32 noundef %gfp_flags) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @bh_cachep, align 8
  %call = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %0, i32 noundef %gfp_flags) #21
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %b_assoc_buffers = getelementptr inbounds i8, i8* %call, i64 72
  %1 = bitcast i8* %b_assoc_buffers to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %1) #21
  %b_uptodate_lock = getelementptr inbounds i8, i8* %call, i64 100
  %2 = bitcast i8* %b_uptodate_lock to i32*
  store i32 0, i32* %2, align 4
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !26
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call13, ptrtoint (%struct.bh_accounting* @bh_accounting to i64)
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  %add14 = add i32 %4, 1
  store i32 %add14, i32* %3, align 4
  call fastcc void @recalc_bh_state() #21
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = bitcast i8* %call to %struct.buffer_head*
  ret %struct.buffer_head* %5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_bh_page(%struct.buffer_head* nocapture noundef writeonly %bh, %struct.page* noundef %page, i64 noundef %offset) local_unnamed_addr #0 {
entry:
  %b_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 2
  store %struct.page* %page, %struct.page** %b_page, align 8
  %cmp = icmp ugt i64 %offset, 4095
  br i1 %cmp, label %do.body2, label %do.end5, !prof !9

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1446; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !28
  unreachable

do.end5:                                          ; preds = %entry
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  %add.ptr = getelementptr i8, i8* %1, i64 %offset
  %b_data9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 5
  store i8* %add.ptr, i8** %b_data9, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_buffer_head(%struct.buffer_head* noundef %bh) local_unnamed_addr #0 {
entry:
  %b_assoc_buffers = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 9
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %b_assoc_buffers) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 3324; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !29
  unreachable

do.end7:                                          ; preds = %entry
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @bh_cachep, align 8
  %1 = bitcast %struct.buffer_head* %bh to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %1) #20
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !30
  %call16 = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call16, ptrtoint (%struct.bh_accounting* @bh_accounting to i64)
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %add17 = add i32 %3, -1
  store i32 %add17, i32* %2, align 4
  call fastcc void @recalc_bh_state() #21
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mapping_set_error(%struct.address_space* noundef %mapping, i32 noundef %error) unnamed_addr #0 {
entry:
  call void @__filemap_set_wb_err(%struct.address_space* noundef %mapping, i32 noundef %error) #20
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %tobool4.not = icmp eq %struct.inode* %0, null
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_wb_err = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 43
  %call = call i32 @errseq_set(i32* noundef %s_wb_err, i32 noundef %error) #20
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %entry
  %cmp = icmp eq i32 %error, -28
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %. = zext i1 %cmp to i64
  call fastcc void @set_bit(i64 noundef %., i64* noundef %flags) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(i32* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__brelse(%struct.buffer_head* noundef %buf) local_unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %buf, i64 0, i32 11, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @put_bh(%struct.buffer_head* noundef %buf) #21
  br label %return

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0)) #20
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1148; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !32
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__bforget(%struct.buffer_head* noundef %bh) local_unnamed_addr #0 {
entry:
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %b_state.i) #20
  %b_assoc_map = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 10
  %0 = load %struct.address_space*, %struct.address_space** %b_assoc_map, align 8
  %tobool.not = icmp eq %struct.address_space* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %b_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 2
  %1 = load %struct.page*, %struct.page** %b_page, align 8
  %mapping = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 1, i32 0, i32 1
  %2 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %2, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %b_assoc_buffers = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 9
  call fastcc void @list_del_init(%struct.list_head* noundef %b_assoc_buffers) #21
  store %struct.address_space* null, %struct.address_space** %b_assoc_map, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @__brelse(%struct.buffer_head* noundef %bh) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #5 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #21
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.buffer_head* @lookup_bh_lru(%struct.block_device* noundef readnone %bdev, i64 noundef %block, i32 noundef %size) unnamed_addr #0 {
entry:
  call fastcc void @check_irqs_on() #21
  call fastcc void @arch_local_irq_disable() #21
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %conv = zext i32 %size to i64
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr %struct.bh_lru, %struct.bh_lru* @bh_lrus, i64 0, i32 0, i64 %indvars.iv
  %0 = ptrtoint %struct.buffer_head** %arrayidx to i64
  %add = add i64 %call, %0
  %1 = inttoptr i64 %add to %struct.buffer_head**
  %2 = load %struct.buffer_head*, %struct.buffer_head** %1, align 8
  %tobool.not = icmp eq %struct.buffer_head* %2, null
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %2, i64 0, i32 3
  %3 = load i64, i64* %b_blocknr, align 8
  %cmp12 = icmp eq i64 %3, %block
  br i1 %cmp12, label %land.lhs.true13, label %for.inc

land.lhs.true13:                                  ; preds = %land.lhs.true
  %b_bdev = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %2, i64 0, i32 6
  %4 = load %struct.block_device*, %struct.block_device** %b_bdev, align 8
  %cmp14 = icmp eq %struct.block_device* %4, %bdev
  br i1 %cmp14, label %land.lhs.true15, label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true13
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %2, i64 0, i32 4
  %5 = load i64, i64* %b_size, align 8
  %cmp16 = icmp eq i64 %5, %conv
  br i1 %cmp16, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true15
  %6 = trunc i64 %indvars.iv to i32
  %tobool18.not = icmp eq i32 %6, 0
  br i1 %tobool18.not, label %cleanup, label %while.body

while.body:                                       ; preds = %if.then, %while.body
  %indvars.iv130 = phi i64 [ %7, %while.body ], [ %indvars.iv, %if.then ]
  %7 = add nsw i64 %indvars.iv130, -1
  %arrayidx41 = getelementptr %struct.bh_lru, %struct.bh_lru* @bh_lrus, i64 0, i32 0, i64 %7
  %8 = ptrtoint %struct.buffer_head** %arrayidx41 to i64
  %call43 = call fastcc i64 @__kern_my_cpu_offset() #21
  %add44 = add i64 %call43, %8
  %9 = inttoptr i64 %add44 to %struct.buffer_head**
  %10 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %arrayidx53 = getelementptr %struct.bh_lru, %struct.bh_lru* @bh_lrus, i64 0, i32 0, i64 %indvars.iv130
  %11 = ptrtoint %struct.buffer_head** %arrayidx53 to i64
  %add56 = add i64 %call43, %11
  %12 = inttoptr i64 %add56 to %struct.buffer_head**
  store %struct.buffer_head* %10, %struct.buffer_head** %12, align 8
  %tobool20.not.wide = icmp eq i64 %7, 0
  br i1 %tobool20.not.wide, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %call74 = call fastcc i64 @__kern_my_cpu_offset() #21
  %add75 = add i64 %call74, ptrtoint (%struct.bh_lru* @bh_lrus to i64)
  %13 = inttoptr i64 %add75 to %struct.buffer_head**
  store %struct.buffer_head* %2, %struct.buffer_head** %13, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.end
  call fastcc void @get_bh(%struct.buffer_head* noundef nonnull %2) #21
  br label %do.body81

for.inc:                                          ; preds = %land.lhs.true15, %land.lhs.true13, %land.lhs.true, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %do.body81, label %for.body

do.body81:                                        ; preds = %for.inc, %cleanup
  %ret.2 = phi %struct.buffer_head* [ %2, %cleanup ], [ null, %for.inc ]
  call fastcc void @arch_local_irq_enable() #21
  ret %struct.buffer_head* %ret.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.buffer_head* @__find_get_block_slow(%struct.block_device* noundef %bdev, i64 noundef %block) unnamed_addr #0 {
entry:
  %bd_inode1 = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode1, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 17
  %2 = load i8, i8* %i_blkbits, align 2
  %conv = zext i8 %2 to i64
  %sub = sub nsw i64 12, %conv
  %sh_prom = and i64 %sub, 4294967295
  %shr = lshr i64 %block, %sh_prom
  %call = call fastcc %struct.page* @find_get_page_flags(%struct.address_space* noundef %1, i64 noundef %shr) #21
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 8192
  %tobool3.not = icmp eq i64 %4, 0
  br i1 %tobool3.not, label %out_unlock, label %do.body

do.body:                                          ; preds = %if.end
  %5 = load volatile i64, i64* %flags.i, align 8
  %6 = and i64 %5, 8192
  %tobool7.not = icmp eq i64 %6, 0
  br i1 %tobool7.not, label %do.body13, label %do.end19, !prof !9

do.body13:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 209; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !33
  unreachable

do.end19:                                         ; preds = %do.body
  %private = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 1, i32 0, i32 3
  %7 = load i64, i64* %private, align 8
  %8 = inttoptr i64 %7 to %struct.buffer_head*
  br label %do.body20

do.body20:                                        ; preds = %if.end27, %do.end19
  %bh.0 = phi %struct.buffer_head* [ %8, %do.end19 ], [ %12, %if.end27 ]
  %all_mapped.0 = phi i32 [ 1, %do.end19 ], [ %all_mapped.1, %if.end27 ]
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  %9 = load volatile i64, i64* %b_state.i, align 8
  %10 = and i64 %9, 16
  %tobool22.not = icmp eq i64 %10, 0
  br i1 %tobool22.not, label %if.end27, label %if.else

if.else:                                          ; preds = %do.body20
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 3
  %11 = load i64, i64* %b_blocknr, align 8
  %cmp = icmp eq i64 %11, %block
  br i1 %cmp, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.else
  call fastcc void @get_bh(%struct.buffer_head* noundef %bh.0) #21
  br label %out_unlock

if.end27:                                         ; preds = %do.body20, %if.else
  %all_mapped.1 = phi i32 [ %all_mapped.0, %if.else ], [ 0, %do.body20 ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %12 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp29.not = icmp eq %struct.buffer_head* %12, %8
  br i1 %cmp29.not, label %do.end31, label %do.body20

do.end31:                                         ; preds = %if.end27
  call fastcc void @ratelimit_set_flags() #21
  %tobool32.not = icmp eq i32 %all_mapped.1, 0
  br i1 %tobool32.not, label %out_unlock, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end31
  %call33 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @__find_get_block_slow.last_warned, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.__find_get_block_slow, i64 0, i64 0)) #20
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %out_unlock, label %do.end38

do.end38:                                         ; preds = %land.lhs.true
  %b_blocknr40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i64 0, i32 3
  %13 = load i64, i64* %b_blocknr40, align 8
  %b_state = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i64 0, i32 0
  %14 = load i64, i64* %b_state, align 8
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i64 0, i32 4
  %15 = load i64, i64* %b_size, align 8
  %16 = load i8, i8* %i_blkbits, align 2
  %conv42 = zext i8 %16 to i32
  %shl = shl nuw i32 1, %conv42
  %call43 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([115 x i8], [115 x i8]* @.str.11, i64 0, i64 0), i64 noundef %block, i64 noundef %13, i64 noundef %14, i64 noundef %15, %struct.block_device* noundef %bdev, i32 noundef %shl) #23
  br label %out_unlock

out_unlock:                                       ; preds = %do.end31, %land.lhs.true, %do.end38, %if.end, %if.then25
  %ret.0 = phi %struct.buffer_head* [ %bh.0, %if.then25 ], [ null, %do.end38 ], [ null, %land.lhs.true ], [ null, %do.end31 ], [ null, %if.end ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  call fastcc void @put_page(%struct.page* noundef nonnull %call) #21
  br label %out

out:                                              ; preds = %entry, %out_unlock
  %ret.1 = phi %struct.buffer_head* [ %ret.0, %out_unlock ], [ null, %entry ]
  ret %struct.buffer_head* %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bh_lru_install(%struct.buffer_head* noundef %bh) unnamed_addr #0 {
entry:
  call fastcc void @check_irqs_on() #21
  %call = call fastcc i1 @lru_cache_disabled() #21
  br i1 %call, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #21
  %call5 = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call5, ptrtoint (%struct.bh_lru* @bh_lrus to i64)
  %0 = inttoptr i64 %add to %struct.bh_lru*
  %arrayidx = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 0
  %1 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx, align 8
  store %struct.buffer_head* %bh, %struct.buffer_head** %arrayidx, align 8
  %cmp12 = icmp eq %struct.buffer_head* %1, %bh
  br i1 %cmp12, label %do.body14, label %for.cond

for.cond:                                         ; preds = %do.body
  %arrayidx.1 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 1
  %2 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.1, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %arrayidx.1, align 8
  %cmp12.1 = icmp eq %struct.buffer_head* %2, %bh
  br i1 %cmp12.1, label %do.body14, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 2
  %3 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.2, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %arrayidx.2, align 8
  %cmp12.2 = icmp eq %struct.buffer_head* %3, %bh
  br i1 %cmp12.2, label %do.body14, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 3
  %4 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.3, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %arrayidx.3, align 8
  %cmp12.3 = icmp eq %struct.buffer_head* %4, %bh
  br i1 %cmp12.3, label %do.body14, label %for.cond.3

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 4
  %5 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.4, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %arrayidx.4, align 8
  %cmp12.4 = icmp eq %struct.buffer_head* %5, %bh
  br i1 %cmp12.4, label %do.body14, label %for.cond.4

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 5
  %6 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.5, align 8
  store %struct.buffer_head* %5, %struct.buffer_head** %arrayidx.5, align 8
  %cmp12.5 = icmp eq %struct.buffer_head* %6, %bh
  br i1 %cmp12.5, label %do.body14, label %for.cond.5

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 6
  %7 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.6, align 8
  store %struct.buffer_head* %6, %struct.buffer_head** %arrayidx.6, align 8
  %cmp12.6 = icmp eq %struct.buffer_head* %7, %bh
  br i1 %cmp12.6, label %do.body14, label %for.cond.6

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 7
  %8 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.7, align 8
  store %struct.buffer_head* %7, %struct.buffer_head** %arrayidx.7, align 8
  %cmp12.7 = icmp eq %struct.buffer_head* %8, %bh
  br i1 %cmp12.7, label %do.body14, label %for.cond.7

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx.8 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.8, align 8
  store %struct.buffer_head* %8, %struct.buffer_head** %arrayidx.8, align 8
  %cmp12.8 = icmp eq %struct.buffer_head* %9, %bh
  br i1 %cmp12.8, label %do.body14, label %for.cond.8

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx.9 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 9
  %10 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.9, align 8
  store %struct.buffer_head* %9, %struct.buffer_head** %arrayidx.9, align 8
  %cmp12.9 = icmp eq %struct.buffer_head* %10, %bh
  br i1 %cmp12.9, label %do.body14, label %for.cond.9

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx.10 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 10
  %11 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.10, align 8
  store %struct.buffer_head* %10, %struct.buffer_head** %arrayidx.10, align 8
  %cmp12.10 = icmp eq %struct.buffer_head* %11, %bh
  br i1 %cmp12.10, label %do.body14, label %for.cond.10

for.cond.10:                                      ; preds = %for.cond.9
  %arrayidx.11 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 11
  %12 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.11, align 8
  store %struct.buffer_head* %11, %struct.buffer_head** %arrayidx.11, align 8
  %cmp12.11 = icmp eq %struct.buffer_head* %12, %bh
  br i1 %cmp12.11, label %do.body14, label %for.cond.11

for.cond.11:                                      ; preds = %for.cond.10
  %arrayidx.12 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 12
  %13 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.12, align 8
  store %struct.buffer_head* %12, %struct.buffer_head** %arrayidx.12, align 8
  %cmp12.12 = icmp eq %struct.buffer_head* %13, %bh
  br i1 %cmp12.12, label %do.body14, label %for.cond.12

for.cond.12:                                      ; preds = %for.cond.11
  %arrayidx.13 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 13
  %14 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.13, align 8
  store %struct.buffer_head* %13, %struct.buffer_head** %arrayidx.13, align 8
  %cmp12.13 = icmp eq %struct.buffer_head* %14, %bh
  br i1 %cmp12.13, label %do.body14, label %for.cond.13

for.cond.13:                                      ; preds = %for.cond.12
  %arrayidx.14 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 14
  %15 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.14, align 8
  store %struct.buffer_head* %14, %struct.buffer_head** %arrayidx.14, align 8
  %cmp12.14 = icmp eq %struct.buffer_head* %15, %bh
  br i1 %cmp12.14, label %do.body14, label %for.cond.14

for.cond.14:                                      ; preds = %for.cond.13
  %arrayidx.15 = getelementptr %struct.bh_lru, %struct.bh_lru* %0, i64 0, i32 0, i64 15
  %16 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.15, align 8
  store %struct.buffer_head* %15, %struct.buffer_head** %arrayidx.15, align 8
  %cmp12.15 = icmp eq %struct.buffer_head* %16, %bh
  br i1 %cmp12.15, label %do.body14, label %for.cond.15

for.cond.15:                                      ; preds = %for.cond.14
  call fastcc void @get_bh(%struct.buffer_head* noundef %bh) #21
  call fastcc void @arch_local_irq_enable() #21
  call fastcc void @brelse(%struct.buffer_head* noundef %16) #21
  br label %cleanup

do.body14:                                        ; preds = %for.cond.14, %for.cond.13, %for.cond.12, %for.cond.11, %for.cond.10, %for.cond.9, %for.cond.8, %for.cond.7, %for.cond.6, %for.cond.5, %for.cond.4, %for.cond.3, %for.cond.2, %for.cond.1, %for.cond, %do.body
  call fastcc void @arch_local_irq_enable() #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.cond.15, %do.body14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.buffer_head* @__getblk_gfp(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %call = call %struct.buffer_head* @__find_get_block(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size) #21
  %cmp = icmp eq %struct.buffer_head* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call fastcc %struct.buffer_head* @__getblk_slow(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size, i32 noundef %gfp) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bh.0 = phi %struct.buffer_head* [ %call4, %if.then ], [ %call, %entry ]
  ret %struct.buffer_head* %bh.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.buffer_head* @__getblk_slow(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size, i32 noundef %gfp) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %bdev) #21
  %sub = add i32 %call, -1
  %and = and i32 %sub, %size
  %tobool.not = icmp ne i32 %and, 0
  %0 = add i32 %size, -4097
  %1 = icmp ult i32 %0, -3585
  %2 = or i1 %1, %tobool.not
  br i1 %2, label %do.end, label %for.cond, !prof !9

do.end:                                           ; preds = %entry
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 noundef %size) #23
  %call12 = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %bdev) #21
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 noundef %call12) #23
  call void @dump_stack() #23
  br label %return

for.cond:                                         ; preds = %entry, %cleanup
  %call14 = call %struct.buffer_head* @__find_get_block(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size) #21
  %tobool15.not = icmp eq %struct.buffer_head* %call14, null
  br i1 %tobool15.not, label %cleanup, label %return

cleanup:                                          ; preds = %for.cond
  %call18 = call fastcc i32 @grow_buffers(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size, i32 noundef %gfp) #21
  %cmp19 = icmp sgt i32 %call18, -1
  br i1 %cmp19, label %for.cond, label %return

return:                                           ; preds = %for.cond, %cleanup, %do.end
  %retval.2 = phi %struct.buffer_head* [ null, %do.end ], [ %call14, %for.cond ], [ null, %cleanup ]
  ret %struct.buffer_head* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__breadahead(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %bh = alloca %struct.buffer_head*, align 8
  %0 = bitcast %struct.buffer_head** %bh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  %call = call fastcc %struct.buffer_head* @__getblk(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size) #21
  store %struct.buffer_head* %call, %struct.buffer_head** %bh, align 8
  %tobool.not = icmp eq %struct.buffer_head* %call, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void @ll_rw_block(i32 noundef 0, i32 noundef 524288, i32 noundef 1, %struct.buffer_head** noundef nonnull %bh) #21
  call fastcc void @brelse(%struct.buffer_head* noundef nonnull %call) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.buffer_head* @__getblk(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size) unnamed_addr #0 {
entry:
  %call = call %struct.buffer_head* @__getblk_gfp(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size, i32 noundef 8) #21
  ret %struct.buffer_head* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @brelse(%struct.buffer_head* noundef %bh) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.buffer_head* %bh, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__brelse(%struct.buffer_head* noundef nonnull %bh) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__breadahead_gfp(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %bh = alloca %struct.buffer_head*, align 8
  %0 = bitcast %struct.buffer_head** %bh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  %call = call %struct.buffer_head* @__getblk_gfp(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size, i32 noundef %gfp) #21
  store %struct.buffer_head* %call, %struct.buffer_head** %bh, align 8
  %tobool.not = icmp eq %struct.buffer_head* %call, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void @ll_rw_block(i32 noundef 0, i32 noundef 524288, i32 noundef 1, %struct.buffer_head** noundef nonnull %bh) #21
  call fastcc void @brelse(%struct.buffer_head* noundef nonnull %call) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.buffer_head* @__bread_gfp(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %call = call %struct.buffer_head* @__getblk_gfp(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size, i32 noundef %gfp) #21
  %tobool.not = icmp eq %struct.buffer_head* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true, !prof !9

land.lhs.true:                                    ; preds = %entry
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %call, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i10 = and i64 %0, 1
  %tobool4.not = icmp eq i64 %conv.i.i10, 0
  br i1 %tobool4.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call5 = call fastcc %struct.buffer_head* @__bread_slow(%struct.buffer_head* noundef nonnull %call) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %bh.0 = phi %struct.buffer_head* [ %call, %land.lhs.true ], [ %call5, %if.then ], [ null, %entry ]
  ret %struct.buffer_head* %bh.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.buffer_head* @__bread_slow(%struct.buffer_head* noundef %bh) unnamed_addr #0 {
entry:
  call fastcc void @lock_buffer(%struct.buffer_head* noundef %bh) #21
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i18 = and i64 %0, 1
  %tobool.not = icmp eq i64 %conv.i.i18, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @unlock_buffer(%struct.buffer_head* noundef %bh) #21
  br label %return

if.else:                                          ; preds = %entry
  call fastcc void @get_bh(%struct.buffer_head* noundef %bh) #21
  %b_end_io = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 7
  store void (%struct.buffer_head*, i32)* @end_buffer_read_sync, void (%struct.buffer_head*, i32)** %b_end_io, align 8
  %call1 = call i32 @submit_bh(i32 noundef 0, i32 noundef 0, %struct.buffer_head* noundef %bh) #21
  call fastcc void @wait_on_buffer(%struct.buffer_head* noundef %bh) #21
  %1 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i1719 = and i64 %1, 1
  %tobool3.not = icmp eq i64 %conv.i.i1719, 0
  br i1 %tobool3.not, label %if.end5, label %return

if.end5:                                          ; preds = %if.else
  call fastcc void @brelse(%struct.buffer_head* noundef %bh) #21
  br label %return

return:                                           ; preds = %if.else, %if.end5, %if.then
  %retval.0 = phi %struct.buffer_head* [ %bh, %if.then ], [ null, %if.end5 ], [ %bh, %if.else ]
  ret %struct.buffer_head* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i1 @has_bh_in_lru(i32 noundef %cpu, i8* nocapture readnone %dummy) #6 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.bh_lru* @bh_lrus to i64)
  %1 = inttoptr i64 %add to %struct.bh_lru*
  %arrayidx3 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 0
  %2 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3, align 8
  %tobool.not = icmp eq %struct.buffer_head* %2, null
  br i1 %tobool.not, label %for.cond, label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx3.1 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 1
  %3 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.1, align 8
  %tobool.not.1 = icmp eq %struct.buffer_head* %3, null
  br i1 %tobool.not.1, label %for.cond.1, label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx3.2 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 2
  %4 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.2, align 8
  %tobool.not.2 = icmp eq %struct.buffer_head* %4, null
  br i1 %tobool.not.2, label %for.cond.2, label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx3.3 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 3
  %5 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.3, align 8
  %tobool.not.3 = icmp eq %struct.buffer_head* %5, null
  br i1 %tobool.not.3, label %for.cond.3, label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx3.4 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 4
  %6 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.4, align 8
  %tobool.not.4 = icmp eq %struct.buffer_head* %6, null
  br i1 %tobool.not.4, label %for.cond.4, label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx3.5 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 5
  %7 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.5, align 8
  %tobool.not.5 = icmp eq %struct.buffer_head* %7, null
  br i1 %tobool.not.5, label %for.cond.5, label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx3.6 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 6
  %8 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.6, align 8
  %tobool.not.6 = icmp eq %struct.buffer_head* %8, null
  br i1 %tobool.not.6, label %for.cond.6, label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx3.7 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 7
  %9 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.7, align 8
  %tobool.not.7 = icmp eq %struct.buffer_head* %9, null
  br i1 %tobool.not.7, label %for.cond.7, label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx3.8 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.8, align 8
  %tobool.not.8 = icmp eq %struct.buffer_head* %10, null
  br i1 %tobool.not.8, label %for.cond.8, label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx3.9 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 9
  %11 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.9, align 8
  %tobool.not.9 = icmp eq %struct.buffer_head* %11, null
  br i1 %tobool.not.9, label %for.cond.9, label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx3.10 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 10
  %12 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.10, align 8
  %tobool.not.10 = icmp eq %struct.buffer_head* %12, null
  br i1 %tobool.not.10, label %for.cond.10, label %cleanup

for.cond.10:                                      ; preds = %for.cond.9
  %arrayidx3.11 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 11
  %13 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.11, align 8
  %tobool.not.11 = icmp eq %struct.buffer_head* %13, null
  br i1 %tobool.not.11, label %for.cond.11, label %cleanup

for.cond.11:                                      ; preds = %for.cond.10
  %arrayidx3.12 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 12
  %14 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.12, align 8
  %tobool.not.12 = icmp eq %struct.buffer_head* %14, null
  br i1 %tobool.not.12, label %for.cond.12, label %cleanup

for.cond.12:                                      ; preds = %for.cond.11
  %arrayidx3.13 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 13
  %15 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.13, align 8
  %tobool.not.13 = icmp eq %struct.buffer_head* %15, null
  br i1 %tobool.not.13, label %for.cond.13, label %cleanup

for.cond.13:                                      ; preds = %for.cond.12
  %arrayidx3.14 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 14
  %16 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.14, align 8
  %tobool.not.14 = icmp eq %struct.buffer_head* %16, null
  br i1 %tobool.not.14, label %for.cond.14, label %cleanup

for.cond.14:                                      ; preds = %for.cond.13
  %arrayidx3.15 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 15
  %17 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.15, align 8
  %tobool.not.15 = icmp ne %struct.buffer_head* %17, null
  br label %cleanup

cleanup:                                          ; preds = %for.cond.14, %for.cond.13, %for.cond.12, %for.cond.11, %for.cond.10, %for.cond.9, %for.cond.8, %for.cond.7, %for.cond.6, %for.cond.5, %for.cond.4, %for.cond.3, %for.cond.2, %for.cond.1, %for.cond, %entry
  %cmp.lcssa = phi i1 [ true, %entry ], [ true, %for.cond ], [ true, %for.cond.1 ], [ true, %for.cond.2 ], [ true, %for.cond.3 ], [ true, %for.cond.4 ], [ true, %for.cond.5 ], [ true, %for.cond.6 ], [ true, %for.cond.7 ], [ true, %for.cond.8 ], [ true, %for.cond.9 ], [ true, %for.cond.10 ], [ true, %for.cond.11 ], [ true, %for.cond.12 ], [ true, %for.cond.13 ], [ %tobool.not.15, %for.cond.14 ]
  ret i1 %cmp.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @invalidate_bh_lrus() local_unnamed_addr #0 {
entry:
  call fastcc void @on_each_cpu_cond() #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @on_each_cpu_cond() unnamed_addr #0 {
entry:
  call void @on_each_cpu_cond_mask(i1 (i32, i8*)* noundef nonnull @has_bh_in_lru, void (i8*)* noundef nonnull @invalidate_bh_lru, i8* noundef null, i1 noundef true, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @invalidate_bh_lru(i8* nocapture noundef readnone %arg) #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !34
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call, ptrtoint (%struct.bh_lru* @bh_lrus to i64)
  %0 = inttoptr i64 %add to %struct.bh_lru*
  call fastcc void @__invalidate_bh_lrus(%struct.bh_lru* noundef %0) #21
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @invalidate_bh_lrus_cpu() local_unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #21
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call, ptrtoint (%struct.bh_lru* @bh_lrus to i64)
  %0 = inttoptr i64 %add to %struct.bh_lru*
  call fastcc void @__invalidate_bh_lrus(%struct.bh_lru* noundef %0) #21
  call fastcc void @arch_local_irq_enable() #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #21
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #22, !srcloc !36
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #7 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #24, !srcloc !37
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__invalidate_bh_lrus(%struct.bh_lru* nocapture noundef %b) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 0
  %0 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %0) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx, align 8
  %arrayidx.1 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 1
  %1 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.1, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %1) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.1, align 8
  %arrayidx.2 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 2
  %2 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.2, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %2) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.2, align 8
  %arrayidx.3 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 3
  %3 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.3, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %3) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.3, align 8
  %arrayidx.4 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 4
  %4 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.4, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %4) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.4, align 8
  %arrayidx.5 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 5
  %5 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.5, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %5) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.5, align 8
  %arrayidx.6 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 6
  %6 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.6, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %6) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.6, align 8
  %arrayidx.7 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 7
  %7 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.7, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %7) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.7, align 8
  %arrayidx.8 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.8, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %8) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.8, align 8
  %arrayidx.9 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 9
  %9 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.9, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %9) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.9, align 8
  %arrayidx.10 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 10
  %10 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.10, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %10) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.10, align 8
  %arrayidx.11 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 11
  %11 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.11, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %11) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.11, align 8
  %arrayidx.12 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 12
  %12 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.12, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %12) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.12, align 8
  %arrayidx.13 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 13
  %13 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.13, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %13) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.13, align 8
  %arrayidx.14 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 14
  %14 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.14, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %14) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.14, align 8
  %arrayidx.15 = getelementptr %struct.bh_lru, %struct.bh_lru* %b, i64 0, i32 0, i64 15
  %15 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx.15, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %15) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx.15, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #22, !srcloc !38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @block_invalidatepage(%struct.page* noundef %page, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 {
entry:
  %add = add i32 %length, %offset
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i117 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i.i117, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1507; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !39
  unreachable

do.end9:                                          ; preds = %entry
  %flags.i107 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i107, align 8
  %3 = and i64 %2, 8192
  %tobool11.not = icmp eq i64 %3, 0
  br i1 %tobool11.not, label %cleanup80, label %do.body14

do.body14:                                        ; preds = %do.end9
  %cmp = icmp ugt i32 %add, 4096
  %cmp17 = icmp ult i32 %add, %length
  %4 = or i1 %cmp, %cmp17
  br i1 %4, label %do.body27, label %do.body36, !prof !9

do.body27:                                        ; preds = %do.body14
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1514; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !40
  unreachable

do.body36:                                        ; preds = %do.body14
  %5 = load volatile i64, i64* %flags.i107, align 8
  %6 = and i64 %5, 8192
  %tobool38.not = icmp eq i64 %6, 0
  br i1 %tobool38.not, label %do.body49, label %do.end57, !prof !9

do.body49:                                        ; preds = %do.body36
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1516; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !41
  unreachable

do.end57:                                         ; preds = %do.body36
  %private = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %7 = load i64, i64* %private, align 8
  %8 = inttoptr i64 %7 to %struct.buffer_head*
  br label %do.body58

do.body58:                                        ; preds = %do.cond70, %do.end57
  %bh.0 = phi %struct.buffer_head* [ %8, %do.end57 ], [ %11, %do.cond70 ]
  %curr_off.0 = phi i32 [ 0, %do.end57 ], [ %conv61, %do.cond70 ]
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 4
  %9 = load i64, i64* %b_size, align 8
  %10 = trunc i64 %9 to i32
  %conv61 = add i32 %curr_off.0, %10
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %11 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp62 = icmp ugt i32 %conv61, %add
  br i1 %cmp62, label %cleanup80, label %if.end65

if.end65:                                         ; preds = %do.body58
  %cmp66.not = icmp ult i32 %curr_off.0, %offset
  br i1 %cmp66.not, label %do.cond70, label %if.then68

if.then68:                                        ; preds = %if.end65
  call fastcc void @discard_buffer(%struct.buffer_head* noundef %bh.0) #21
  br label %do.cond70

do.cond70:                                        ; preds = %if.then68, %if.end65
  %cmp71.not = icmp eq %struct.buffer_head* %11, %8
  br i1 %cmp71.not, label %do.end73, label %do.body58

do.end73:                                         ; preds = %do.cond70
  %cmp75 = icmp eq i32 %length, 4096
  br i1 %cmp75, label %if.then77, label %cleanup80

if.then77:                                        ; preds = %do.end73
  %call78 = call i32 @try_to_release_page(%struct.page* noundef %page, i32 noundef 0) #20
  br label %cleanup80

cleanup80:                                        ; preds = %do.body58, %do.end9, %if.then77, %do.end73
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @discard_buffer(%struct.buffer_head* noundef %bh) unnamed_addr #0 {
entry:
  call fastcc void @lock_buffer(%struct.buffer_head* noundef %bh) #21
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %b_state.i) #20
  %b_bdev = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 6
  store %struct.block_device* null, %struct.block_device** %b_bdev, align 8
  %0 = load i64, i64* %b_state.i, align 8
  %1 = bitcast %struct.buffer_head* %bh to i8*
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %b_state.0 = phi i64 [ %0, %entry ], [ %call14.i, %for.cond ]
  %and = and i64 %b_state.0, -2361
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %1, i64 noundef %b_state.0, i64 noundef %and) #20
  %cmp = icmp eq i64 %call14.i, %b_state.0
  br i1 %cmp, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  call void @unlock_buffer(%struct.buffer_head* noundef %bh) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(%struct.page* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @create_empty_buffers(%struct.page* noundef %page, i64 noundef %blocksize, i64 noundef %b_state) local_unnamed_addr #0 {
entry:
  %call = call %struct.buffer_head* @alloc_page_buffers(%struct.page* noundef %page, i64 noundef %blocksize, i1 noundef true) #21
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %bh.0 = phi %struct.buffer_head* [ %call, %entry ], [ %1, %do.body ]
  %b_state1 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  %0 = load i64, i64* %b_state1, align 8
  %or = or i64 %0, %b_state
  store i64 %or, i64* %b_state1, align 8
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %1 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %tobool.not = icmp eq %struct.buffer_head* %1, null
  br i1 %tobool.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %b_this_page.le = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  store %struct.buffer_head* %call, %struct.buffer_head** %b_this_page.le, align 8
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %2 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %2, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %call3 = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #21
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %do.body7.preheader

lor.lhs.false:                                    ; preds = %do.end
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %3 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i, align 8
  %5 = and i64 %4, 8
  %tobool6.not = icmp eq i64 %5, 0
  br i1 %tobool6.not, label %if.end18, label %do.body7.preheader

do.body7.preheader:                               ; preds = %lor.lhs.false, %do.end
  br label %do.body7

do.body7:                                         ; preds = %do.body7.preheader, %if.end14
  %bh.1 = phi %struct.buffer_head* [ %12, %if.end14 ], [ %call, %do.body7.preheader ]
  %call.i42 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %6 = inttoptr i64 %call.i42 to %struct.page*
  %flags.i43 = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i43, align 8
  %8 = and i64 %7, 8
  %tobool9.not = icmp eq i64 %8, 0
  br i1 %tobool9.not, label %if.end, label %if.then10

if.then10:                                        ; preds = %do.body7
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.1, i64 0, i32 0
  %9 = load volatile i64, i64* %b_state.i, align 8
  %10 = and i64 %9, 2
  %tobool.not.i = icmp eq i64 %10, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then10
  call fastcc void @set_bit(i64 noundef 1, i64* noundef %b_state.i) #20
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10, %do.body7
  %call11 = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #21
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end
  %b_state.i45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.1, i64 0, i32 0
  %11 = load volatile i64, i64* %b_state.i45, align 8
  %conv.i3.i = and i64 %11, 1
  %tobool.not.i46 = icmp eq i64 %conv.i3.i, 0
  br i1 %tobool.not.i46, label %if.then.i47, label %if.end14

if.then.i47:                                      ; preds = %if.then13
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i45) #20
  br label %if.end14

if.end14:                                         ; preds = %if.then.i47, %if.then13, %if.end
  %b_this_page15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.1, i64 0, i32 1
  %12 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page15, align 8
  %cmp.not = icmp eq %struct.buffer_head* %12, %call
  br i1 %cmp.not, label %if.end18, label %do.body7

if.end18:                                         ; preds = %if.end14, %lor.lhs.false
  %13 = bitcast %struct.buffer_head* %call to i8*
  call fastcc void @attach_page_private(%struct.page* noundef %page, i8* noundef %13) #21
  %14 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %rlock.i48 = getelementptr inbounds %struct.address_space, %struct.address_space* %14, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i48) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @PageUptodate(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #21
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 2
  %conv.i = and i32 %3, 1
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #22, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @attach_page_private(%struct.page* noundef %page, i8* noundef %data) unnamed_addr #0 {
entry:
  call fastcc void @get_page(%struct.page* noundef %page) #21
  %0 = ptrtoint i8* %data to i64
  call fastcc void @set_page_private(%struct.page* noundef %page, i64 noundef %0) #21
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 13, i64* noundef %flags.i) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clean_bdev_aliases(%struct.block_device* nocapture noundef readonly %bdev, i64 noundef %block, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %pvec = alloca %struct.pagevec, align 8
  %index = alloca i64, align 8
  %bd_inode1 = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode1, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %2 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false), !annotation !17
  %3 = bitcast i64* %index to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #22
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 17
  %4 = load i8, i8* %i_blkbits, align 2
  %conv = zext i8 %4 to i64
  %sub = sub nsw i64 12, %conv
  %sh_prom = and i64 %sub, 4294967295
  %shr = lshr i64 %block, %sh_prom
  store i64 %shr, i64* %index, align 8
  %add = add i64 %len, %block
  %sub2 = add i64 %add, -1
  %shr7 = lshr i64 %sub2, %sh_prom
  call fastcc void @pagevec_init(%struct.pagevec* noundef nonnull %pvec) #21
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %call = call i32 @pagevec_lookup_range(%struct.pagevec* noundef nonnull %pvec, %struct.address_space* noundef %1, i64* noundef nonnull %index, i64 noundef %shr7) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call8 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #21
  %cmp93 = icmp sgt i32 %call8, 0
  br i1 %cmp93, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %while.body
  %wide.trip.count = zext i32 %call8 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %cleanup ]
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %indvars.iv
  %5 = load %struct.page*, %struct.page** %arrayidx, align 8
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i, align 8
  %7 = and i64 %6, 8192
  %tobool11.not = icmp eq i64 %7, 0
  br i1 %tobool11.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  call fastcc void @lock_page(%struct.page* noundef %5) #21
  %8 = load volatile i64, i64* %flags.i, align 8
  %9 = and i64 %8, 8192
  %tobool13.not = icmp eq i64 %9, 0
  br i1 %tobool13.not, label %unlock_page, label %do.body

do.body:                                          ; preds = %if.end
  %10 = load volatile i64, i64* %flags.i, align 8
  %11 = and i64 %10, 8192
  %tobool17.not = icmp eq i64 %11, 0
  br i1 %tobool17.not, label %do.body23, label %do.end29, !prof !9

do.body23:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1634; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !43
  unreachable

do.end29:                                         ; preds = %do.body
  %private = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 1, i32 0, i32 3
  %12 = load i64, i64* %private, align 8
  %13 = inttoptr i64 %12 to %struct.buffer_head*
  br label %do.body30

do.body30:                                        ; preds = %next, %do.end29
  %bh.0 = phi %struct.buffer_head* [ %13, %do.end29 ], [ %17, %next ]
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  %14 = load volatile i64, i64* %b_state.i, align 8
  %15 = and i64 %14, 16
  %tobool32.not = icmp eq i64 %15, 0
  br i1 %tobool32.not, label %next, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body30
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 3
  %16 = load i64, i64* %b_blocknr, align 8
  %cmp33 = icmp ult i64 %16, %block
  br i1 %cmp33, label %next, label %if.end36

if.end36:                                         ; preds = %lor.lhs.false
  %cmp39.not = icmp ult i64 %16, %add
  br i1 %cmp39.not, label %if.end42, label %unlock_page

if.end42:                                         ; preds = %if.end36
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %b_state.i) #20
  call fastcc void @wait_on_buffer(%struct.buffer_head* noundef %bh.0) #21
  call fastcc void @clear_bit(i64 noundef 3, i64* noundef %b_state.i) #20
  br label %next

next:                                             ; preds = %do.body30, %lor.lhs.false, %if.end42
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %17 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp44.not = icmp eq %struct.buffer_head* %17, %13
  br i1 %cmp44.not, label %unlock_page, label %do.body30

unlock_page:                                      ; preds = %next, %if.end36, %if.end
  call void @unlock_page(%struct.page* noundef %5) #20
  br label %cleanup

cleanup:                                          ; preds = %for.body, %unlock_page
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %while.body
  call fastcc void @pagevec_release(%struct.pagevec* noundef nonnull %pvec) #21
  call fastcc void @_cond_resched() #21
  %18 = load i64, i64* %index, align 8
  %cmp49 = icmp ule i64 %18, %shr7
  %tobool52 = icmp ne i64 %18, 0
  %or.cond = and i1 %cmp49, %tobool52
  br i1 %or.cond, label %while.cond, label %while.end

while.end:                                        ; preds = %for.end, %while.cond
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #22
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #22
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pagevec_init(%struct.pagevec* nocapture noundef writeonly %pvec) unnamed_addr #9 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  store i8 0, i8* %nr, align 8
  %percpu_pvec_drained = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 1
  store i8 0, i8* %percpu_pvec_drained, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range(%struct.pagevec* noundef, %struct.address_space* noundef, i64* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pagevec_count(%struct.pagevec* nocapture noundef readonly %pvec) unnamed_addr #10 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @trylock_page(%struct.page* noundef %page) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lock_page(%struct.page* noundef %page) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wait_on_buffer(%struct.buffer_head* noundef %bh) unnamed_addr #0 {
entry:
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %1 = and i64 %0, 4
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__wait_on_buffer(%struct.buffer_head* noundef %bh) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagevec_release(%struct.pagevec* noundef %pvec) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__pagevec_release(%struct.pagevec* noundef %pvec) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__block_write_full_page(%struct.inode* noundef %inode, %struct.page* noundef %page, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* nocapture noundef readonly %get_block, %struct.writeback_control* noundef %wbc, void (%struct.buffer_head*, i32)* noundef %handler) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @wbc_to_write_flags(%struct.writeback_control* noundef %wbc) #21
  %call1 = call fastcc %struct.buffer_head* @create_page_buffers(%struct.page* noundef %page, %struct.inode* noundef %inode, i32 noundef 3) #21
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %call1, i64 0, i32 4
  %0 = load i64, i64* %b_size, align 8
  %conv = trunc i64 %0 to i32
  %call2 = call fastcc i32 @block_size_bits(i32 noundef %conv) #21
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %1 = load i64, i64* %index, align 8
  %sub = sub i32 12, %call2
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %1, %sh_prom
  %call3 = call fastcc i64 @i_size_read(%struct.inode* noundef %inode) #21
  %sub4 = add i64 %call3, -1
  %sh_prom5 = zext i32 %call2 to i64
  %shr = ashr i64 %sub4, %sh_prom5
  %conv14 = and i64 %0, 4294967295
  br label %do.body

do.body:                                          ; preds = %if.end42, %entry
  %bh.0 = phi %struct.buffer_head* [ %call1, %entry ], [ %12, %if.end42 ]
  %block.0 = phi i64 [ %shl, %entry ], [ %inc, %if.end42 ]
  %cmp = icmp ugt i64 %block.0, %shr
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %b_state.i) #20
  %2 = load volatile i64, i64* %b_state.i, align 8
  %conv.i3.i = and i64 %2, 1
  %tobool.not.i = icmp eq i64 %conv.i3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end42

if.then.i:                                        ; preds = %if.then
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i) #20
  br label %if.end42

if.else:                                          ; preds = %do.body
  %3 = load volatile i64, i64* %b_state.i, align 8
  %4 = and i64 %3, 16
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %5 = load volatile i64, i64* %b_state.i, align 8
  %6 = and i64 %5, 256
  %tobool9.not = icmp eq i64 %6, 0
  br i1 %tobool9.not, label %if.end42, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.else
  %7 = load volatile i64, i64* %b_state.i, align 8
  %8 = and i64 %7, 2
  %tobool11.not = icmp eq i64 %8, 0
  br i1 %tobool11.not, label %if.end42, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %b_size13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 4
  %9 = load i64, i64* %b_size13, align 8
  %cmp15.not = icmp eq i64 %9, %conv14
  br i1 %cmp15.not, label %if.end, label %if.then25, !prof !20

if.then25:                                        ; preds = %if.then12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1761; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !44
  br label %if.end

if.end:                                           ; preds = %if.then25, %if.then12
  %call33 = call i32 %get_block(%struct.inode* noundef %inode, i64 noundef %block.0, %struct.buffer_head* noundef %bh.0, i32 noundef 1) #20
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %do.body107

if.end36:                                         ; preds = %if.end
  call fastcc void @clear_bit(i64 noundef 8, i64* noundef %b_state.i) #20
  %10 = load volatile i64, i64* %b_state.i, align 8
  %11 = and i64 %10, 32
  %tobool38.not = icmp eq i64 %11, 0
  br i1 %tobool38.not, label %if.end42, label %if.then39

if.then39:                                        ; preds = %if.end36
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %b_state.i) #20
  call fastcc void @clean_bdev_bh_alias(%struct.buffer_head* noundef %bh.0) #21
  br label %if.end42

if.end42:                                         ; preds = %if.then.i, %if.then, %lor.lhs.false, %land.lhs.true, %if.then39, %if.end36
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %12 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %inc = add i64 %block.0, 1
  %cmp43.not = icmp eq %struct.buffer_head* %12, %call1
  br i1 %cmp43.not, label %do.body45.preheader, label %do.body

do.body45.preheader:                              ; preds = %if.end42
  %sync_mode = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  br label %do.body45

do.body45:                                        ; preds = %do.body45.preheader, %do.cond65
  %bh.1 = phi %struct.buffer_head* [ %16, %do.cond65 ], [ %call1, %do.body45.preheader ]
  %b_state.i259 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.1, i64 0, i32 0
  %13 = load volatile i64, i64* %b_state.i259, align 8
  %14 = and i64 %13, 16
  %tobool47.not = icmp eq i64 %14, 0
  br i1 %tobool47.not, label %do.cond65, label %if.end49

if.end49:                                         ; preds = %do.body45
  %15 = load i32, i32* %sync_mode, align 8
  %cmp50.not = icmp eq i32 %15, 0
  br i1 %cmp50.not, label %if.else53, label %if.then52

if.then52:                                        ; preds = %if.end49
  call fastcc void @lock_buffer(%struct.buffer_head* noundef %bh.1) #21
  br label %if.end59

if.else53:                                        ; preds = %if.end49
  %call54 = call fastcc i32 @trylock_buffer(%struct.buffer_head* noundef %bh.1) #21
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.else53
  %call57 = call i32 @redirty_page_for_writepage(%struct.writeback_control* noundef %wbc, %struct.page* noundef %page) #20
  br label %do.cond65

if.end59:                                         ; preds = %if.else53, %if.then52
  %call.i = call fastcc i1 @test_and_clear_bit(i64* noundef %b_state.i259) #20
  br i1 %call.i, label %if.then62, label %if.else63

if.then62:                                        ; preds = %if.end59
  call fastcc void @mark_buffer_async_write_endio(%struct.buffer_head* noundef %bh.1, void (%struct.buffer_head*, i32)* noundef %handler) #21
  br label %do.cond65

if.else63:                                        ; preds = %if.end59
  call void @unlock_buffer(%struct.buffer_head* noundef %bh.1) #21
  br label %do.cond65

do.cond65:                                        ; preds = %if.then62, %if.else63, %do.body45, %if.then56
  %b_this_page66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.1, i64 0, i32 1
  %16 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page66, align 8
  %cmp67.not = icmp eq %struct.buffer_head* %16, %call1
  br i1 %cmp67.not, label %do.body70, label %do.body45

do.body70:                                        ; preds = %do.cond65
  %call.i262 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %17 = inttoptr i64 %call.i262 to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %17, i64 0, i32 0
  %18 = load volatile i64, i64* %flags.i, align 8
  %19 = and i64 %18, 32768
  %tobool72.not = icmp eq i64 %19, 0
  br i1 %tobool72.not, label %do.end89, label %do.body81, !prof !20

do.body81:                                        ; preds = %do.body70
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1803; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !45
  unreachable

do.end89:                                         ; preds = %do.body70
  call fastcc void @set_page_writeback(%struct.page* noundef %page) #21
  %i_write_hint = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 18
  br label %do.body90

do.body90:                                        ; preds = %if.end98, %do.end89
  %bh.2 = phi %struct.buffer_head* [ %call1, %do.end89 ], [ %20, %if.end98 ]
  %nr_underway.0 = phi i32 [ 0, %do.end89 ], [ %nr_underway.1, %if.end98 ]
  %b_this_page91 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.2, i64 0, i32 1
  %20 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page91, align 8
  %b_state.i264 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.2, i64 0, i32 0
  %21 = load volatile i64, i64* %b_state.i264, align 8
  %22 = and i64 %21, 128
  %tobool93.not = icmp eq i64 %22, 0
  br i1 %tobool93.not, label %if.end98, label %if.then94

if.then94:                                        ; preds = %do.body90
  %23 = load i8, i8* %i_write_hint, align 1
  %conv95 = zext i8 %23 to i32
  call fastcc void @submit_bh_wbc(i32 noundef 1, i32 noundef %call, %struct.buffer_head* noundef %bh.2, i32 noundef %conv95, %struct.writeback_control* noundef %wbc) #21
  %inc97 = add i32 %nr_underway.0, 1
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %do.body90
  %nr_underway.1 = phi i32 [ %inc97, %if.then94 ], [ %nr_underway.0, %do.body90 ]
  %cmp100.not = icmp eq %struct.buffer_head* %20, %call1
  br i1 %cmp100.not, label %done, label %do.body90

done:                                             ; preds = %if.end154, %if.end98
  %nr_underway.2 = phi i32 [ %nr_underway.1, %if.end98 ], [ %nr_underway.4, %if.end154 ]
  %err.0 = phi i32 [ 0, %if.end98 ], [ %call33, %if.end154 ]
  call void @unlock_page(%struct.page* noundef %page) #20
  %cmp103 = icmp eq i32 %nr_underway.2, 0
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %done
  call void @end_page_writeback(%struct.page* noundef %page) #20
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %done
  ret i32 %err.0

do.body107:                                       ; preds = %if.end, %do.cond119
  %bh.3 = phi %struct.buffer_head* [ %30, %do.cond119 ], [ %call1, %if.end ]
  %b_state.i266 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.3, i64 0, i32 0
  %24 = load volatile i64, i64* %b_state.i266, align 8
  %25 = and i64 %24, 16
  %tobool109.not = icmp eq i64 %25, 0
  br i1 %tobool109.not, label %if.else117, label %land.lhs.true110

land.lhs.true110:                                 ; preds = %do.body107
  %26 = load volatile i64, i64* %b_state.i266, align 8
  %27 = and i64 %26, 2
  %tobool112.not = icmp eq i64 %27, 0
  br i1 %tobool112.not, label %if.else117, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %land.lhs.true110
  %28 = load volatile i64, i64* %b_state.i266, align 8
  %29 = and i64 %28, 256
  %tobool115.not = icmp eq i64 %29, 0
  br i1 %tobool115.not, label %if.then116, label %if.else117

if.then116:                                       ; preds = %land.lhs.true113
  call fastcc void @lock_buffer(%struct.buffer_head* noundef %bh.3) #21
  call fastcc void @mark_buffer_async_write_endio(%struct.buffer_head* noundef %bh.3, void (%struct.buffer_head*, i32)* noundef %handler) #21
  br label %do.cond119

if.else117:                                       ; preds = %land.lhs.true113, %land.lhs.true110, %do.body107
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %b_state.i266) #20
  br label %do.cond119

do.cond119:                                       ; preds = %if.then116, %if.else117
  %b_this_page120 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.3, i64 0, i32 1
  %30 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page120, align 8
  %cmp121.not = icmp eq %struct.buffer_head* %30, %call1
  br i1 %cmp121.not, label %do.end123, label %do.body107

do.end123:                                        ; preds = %do.cond119
  %call.i273 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %31 = inttoptr i64 %call.i273 to %struct.page*
  %flags.i274 = getelementptr inbounds %struct.page, %struct.page* %31, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 8, i64* noundef %flags.i274) #20
  %call.i275 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %32 = inttoptr i64 %call.i275 to %struct.page*
  %flags.i276 = getelementptr inbounds %struct.page, %struct.page* %32, i64 0, i32 0
  %33 = load volatile i64, i64* %flags.i276, align 8
  %34 = and i64 %33, 32768
  %tobool126.not = icmp eq i64 %34, 0
  br i1 %tobool126.not, label %do.end143, label %do.body135, !prof !20

do.body135:                                       ; preds = %do.end123
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1857; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !46
  unreachable

do.end143:                                        ; preds = %do.end123
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %35 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  call fastcc void @mapping_set_error(%struct.address_space* noundef %35, i32 noundef %call33) #21
  call fastcc void @set_page_writeback(%struct.page* noundef %page) #21
  %i_write_hint150 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 18
  br label %do.body144

do.body144:                                       ; preds = %if.end154, %do.end143
  %bh.4 = phi %struct.buffer_head* [ %call1, %do.end143 ], [ %36, %if.end154 ]
  %nr_underway.3 = phi i32 [ 0, %do.end143 ], [ %nr_underway.4, %if.end154 ]
  %b_this_page146 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.4, i64 0, i32 1
  %36 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page146, align 8
  %b_state.i278 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.4, i64 0, i32 0
  %37 = load volatile i64, i64* %b_state.i278, align 8
  %38 = and i64 %37, 128
  %tobool148.not = icmp eq i64 %38, 0
  br i1 %tobool148.not, label %if.end154, label %if.then149

if.then149:                                       ; preds = %do.body144
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %b_state.i278) #20
  %39 = load i8, i8* %i_write_hint150, align 1
  %conv151 = zext i8 %39 to i32
  call fastcc void @submit_bh_wbc(i32 noundef 1, i32 noundef %call, %struct.buffer_head* noundef %bh.4, i32 noundef %conv151, %struct.writeback_control* noundef %wbc) #21
  %inc153 = add i32 %nr_underway.3, 1
  br label %if.end154

if.end154:                                        ; preds = %if.then149, %do.body144
  %nr_underway.4 = phi i32 [ %inc153, %if.then149 ], [ %nr_underway.3, %do.body144 ]
  %cmp156.not = icmp eq %struct.buffer_head* %36, %call1
  br i1 %cmp156.not, label %done, label %do.body144
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @wbc_to_write_flags(%struct.writeback_control* nocapture noundef readonly %wbc) unnamed_addr #10 {
entry:
  %punt_to_cgroup = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 5
  %bf.load = load i8, i8* %punt_to_cgroup, align 4
  %0 = and i8 %bf.load, -128
  %1 = zext i8 %0 to i32
  %2 = shl nuw nsw i32 %1, 15
  %sync_mode = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %3 = load i32, i32* %sync_mode, align 8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %entry
  %4 = or i32 %2, 2048
  br label %if.end16

if.else:                                          ; preds = %entry
  %5 = and i8 %bf.load, 3
  %6 = icmp eq i8 %5, 0
  %7 = or i32 %2, 1048576
  %spec.select = select i1 %6, i32 %2, i32 %7
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then1
  %flags.0 = phi i32 [ %4, %if.then1 ], [ %spec.select, %if.else ]
  ret i32 %flags.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.buffer_head* @create_page_buffers(%struct.page* noundef %page, %struct.inode* noundef %inode, i32 noundef %b_state) unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i45 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i.i45, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1674; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !47
  unreachable

do.end7:                                          ; preds = %entry
  %flags.i41 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i41, align 8
  %3 = and i64 %2, 8192
  %tobool9.not = icmp eq i64 %3, 0
  br i1 %tobool9.not, label %if.then10, label %do.body17

if.then10:                                        ; preds = %do.end7
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 17
  %4 = load volatile i8, i8* %i_blkbits, align 2
  %conv13 = zext i8 %4 to i32
  %shl = shl nuw i32 1, %conv13
  %conv14 = sext i32 %shl to i64
  %conv15 = zext i32 %b_state to i64
  call void @create_empty_buffers(%struct.page* noundef %page, i64 noundef %conv14, i64 noundef %conv15) #21
  br label %do.body17

do.body17:                                        ; preds = %do.end7, %if.then10
  %5 = load volatile i64, i64* %flags.i41, align 8
  %6 = and i64 %5, 8192
  %tobool19.not = icmp eq i64 %6, 0
  br i1 %tobool19.not, label %do.body30, label %do.end35, !prof !9

do.body30:                                        ; preds = %do.body17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1679; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !48
  unreachable

do.end35:                                         ; preds = %do.body17
  %private = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %7 = load i64, i64* %private, align 8
  %8 = inttoptr i64 %7 to %struct.buffer_head*
  ret %struct.buffer_head* %8
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @block_size_bits(i32 noundef %blocksize) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @__ilog2_u32(i32 noundef %blocksize) #25
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #10 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clean_bdev_bh_alias(%struct.buffer_head* nocapture noundef readonly %bh) unnamed_addr #0 {
entry:
  %b_bdev = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 6
  %0 = load %struct.block_device*, %struct.block_device** %b_bdev, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 3
  %1 = load i64, i64* %b_blocknr, align 8
  call void @clean_bdev_aliases(%struct.block_device* noundef %0, i64 noundef %1, i64 noundef 1) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_buffer(%struct.buffer_head* noundef %bh) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @trylock_buffer(%struct.buffer_head* noundef %bh) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lock_buffer(%struct.buffer_head* noundef %bh) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_buffer(%struct.buffer_head* noundef %bh) unnamed_addr #0 {
entry:
  %b_state = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %call = call fastcc i1 @test_and_set_bit_lock(i64 noundef 2, i64* noundef %b_state) #21
  %lnot = xor i1 %call, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control* noundef, %struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_page_writeback(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call i32 @__test_set_page_writeback(%struct.page* noundef %page, i1 noundef false) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @submit_bh_wbc(i32 noundef %op, i32 noundef %op_flags, %struct.buffer_head* noundef %bh, i32 noundef %write_hint, %struct.writeback_control* noundef readnone %wbc) unnamed_addr #0 {
entry:
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %1 = and i64 %0, 4
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 3014; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !49
  unreachable

do.body10:                                        ; preds = %entry
  %2 = load volatile i64, i64* %b_state.i, align 8
  %3 = and i64 %2, 16
  %tobool12.not = icmp eq i64 %3, 0
  br i1 %tobool12.not, label %do.body23, label %do.body32, !prof !9

do.body23:                                        ; preds = %do.body10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 3015; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !50
  unreachable

do.body32:                                        ; preds = %do.body10
  %b_end_io = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 7
  %4 = load void (%struct.buffer_head*, i32)*, void (%struct.buffer_head*, i32)** %b_end_io, align 8
  %tobool33.not = icmp eq void (%struct.buffer_head*, i32)* %4, null
  br i1 %tobool33.not, label %do.body44, label %do.body53, !prof !9

do.body44:                                        ; preds = %do.body32
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 3016; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !51
  unreachable

do.body53:                                        ; preds = %do.body32
  %5 = load volatile i64, i64* %b_state.i, align 8
  %6 = and i64 %5, 256
  %tobool55.not = icmp eq i64 %6, 0
  br i1 %tobool55.not, label %do.body73, label %do.body64, !prof !20

do.body64:                                        ; preds = %do.body53
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 3017; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !52
  unreachable

do.body73:                                        ; preds = %do.body53
  %7 = load volatile i64, i64* %b_state.i, align 8
  %8 = and i64 %7, 2048
  %tobool75.not = icmp eq i64 %8, 0
  br i1 %tobool75.not, label %do.end92, label %do.body84, !prof !20

do.body84:                                        ; preds = %do.body73
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 3018; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !53
  unreachable

do.end92:                                         ; preds = %do.body73
  %call.i = call fastcc i1 @test_and_set_bit(i64 noundef 3, i64* noundef %b_state.i) #20
  %cmp = icmp eq i32 %op, 1
  %or.cond = and i1 %cmp, %call.i
  br i1 %or.cond, label %if.then96, label %if.end97

if.then96:                                        ; preds = %do.end92
  call fastcc void @clear_bit(i64 noundef 10, i64* noundef %b_state.i) #20
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %do.end92
  %call98 = call fastcc %struct.bio* @bio_alloc() #21
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 3
  %9 = load i64, i64* %b_blocknr, align 8
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 4
  %10 = load i64, i64* %b_size, align 8
  %shr = lshr i64 %10, 9
  %mul = mul i64 %shr, %9
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %call98, i64 0, i32 8, i32 0
  store i64 %mul, i64* %bi_sector, align 8
  call fastcc void @bio_clear_flag(%struct.bio* noundef %call98, i32 noundef 11) #21
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %call98, i64 0, i32 1
  %11 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %b_bdev = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 6
  %12 = load %struct.block_device*, %struct.block_device** %b_bdev, align 8
  %cmp100.not = icmp eq %struct.block_device* %11, %12
  br i1 %cmp100.not, label %if.end103, label %if.then102

if.then102:                                       ; preds = %if.end97
  call fastcc void @bio_clear_flag(%struct.bio* noundef %call98, i32 noundef 7) #21
  %.pre = load %struct.block_device*, %struct.block_device** %b_bdev, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end97
  %13 = phi %struct.block_device* [ %.pre, %if.then102 ], [ %11, %if.end97 ]
  store %struct.block_device* %13, %struct.block_device** %bi_bdev, align 8
  %conv108 = trunc i32 %write_hint to i16
  %bi_write_hint = getelementptr inbounds %struct.bio, %struct.bio* %call98, i64 0, i32 5
  store i16 %conv108, i16* %bi_write_hint, align 8
  %b_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 2
  %14 = load %struct.page*, %struct.page** %b_page, align 8
  %15 = load i64, i64* %b_size, align 8
  %conv110 = trunc i64 %15 to i32
  %b_data = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 5
  %16 = load i8*, i8** %b_data, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = trunc i64 %17 to i32
  %conv111 = and i32 %18, 4095
  %call112 = call i32 @bio_add_page(%struct.bio* noundef %call98, %struct.page* noundef %14, i32 noundef %conv110, i32 noundef %conv111) #20
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %call98, i64 0, i32 8, i32 1
  %19 = load i32, i32* %bi_size, align 8
  %conv115 = zext i32 %19 to i64
  %20 = load i64, i64* %b_size, align 8
  %cmp117.not = icmp eq i64 %20, %conv115
  br i1 %cmp117.not, label %do.end135, label %do.body127, !prof !20

do.body127:                                       ; preds = %if.end103
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 3035; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !54
  unreachable

do.end135:                                        ; preds = %if.end103
  %bi_end_io = getelementptr inbounds %struct.bio, %struct.bio* %call98, i64 0, i32 9
  store void (%struct.bio*)* @end_bio_bh_io_sync, void (%struct.bio*)** %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %call98, i64 0, i32 10
  %21 = bitcast i8** %bi_private to %struct.buffer_head**
  store %struct.buffer_head* %bh, %struct.buffer_head** %21, align 8
  %22 = load volatile i64, i64* %b_state.i, align 8
  %23 = trunc i64 %22 to i32
  %24 = lshr i32 %23, 1
  %25 = and i32 %24, 4096
  %26 = or i32 %25, %op_flags
  %27 = load volatile i64, i64* %b_state.i, align 8
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %28, 1
  %30 = and i32 %29, 8192
  %31 = or i32 %26, %30
  call fastcc void @bio_set_op_attrs(%struct.bio* noundef %call98, i32 noundef %op, i32 noundef %31) #21
  call void @guard_bio_eod(%struct.bio* noundef %call98) #20
  %call154 = call i32 @submit_bio(%struct.bio* noundef %call98) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_zero_new_buffers(%struct.page* noundef %page, i32 noundef %from, i32 noundef %to) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i109 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i.i109, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1885; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !55
  unreachable

do.end9:                                          ; preds = %entry
  %flags.i102 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i102, align 8
  %3 = and i64 %2, 8192
  %tobool11.not = icmp eq i64 %3, 0
  br i1 %tobool11.not, label %cleanup, label %do.body14

do.body14:                                        ; preds = %do.end9
  %4 = load volatile i64, i64* %flags.i102, align 8
  %5 = and i64 %4, 8192
  %tobool16.not = icmp eq i64 %5, 0
  br i1 %tobool16.not, label %do.body27, label %do.end35, !prof !9

do.body27:                                        ; preds = %do.body14
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1889; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !56
  unreachable

do.end35:                                         ; preds = %do.body14
  %private = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %6 = load i64, i64* %private, align 8
  %7 = inttoptr i64 %6 to %struct.buffer_head*
  br label %do.body36

do.body36:                                        ; preds = %if.end61, %do.end35
  %bh.0 = phi %struct.buffer_head* [ %7, %do.end35 ], [ %13, %if.end61 ]
  %block_start.0 = phi i32 [ 0, %do.end35 ], [ %conv38, %if.end61 ]
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 4
  %8 = load i64, i64* %b_size, align 8
  %9 = trunc i64 %8 to i32
  %conv38 = add i32 %block_start.0, %9
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  %10 = load volatile i64, i64* %b_state.i, align 8
  %11 = and i64 %10, 32
  %tobool40.not = icmp ne i64 %11, 0
  %cmp = icmp ugt i32 %conv38, %from
  %or.cond = select i1 %tobool40.not, i1 %cmp, i1 false
  %cmp43 = icmp ult i32 %block_start.0, %to
  %or.cond101 = select i1 %or.cond, i1 %cmp43, i1 false
  br i1 %or.cond101, label %if.then45, label %if.end61

if.then45:                                        ; preds = %do.body36
  %call46 = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #21
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.end59

if.then48:                                        ; preds = %if.then45
  %cmp50 = icmp ult i32 %block_start.0, %from
  %cond = select i1 %cmp50, i32 %from, i32 %block_start.0
  %cmp53 = icmp ugt i32 %conv38, %to
  %cond58 = select i1 %cmp53, i32 %to, i32 %conv38
  %sub = sub i32 %cond58, %cond
  call fastcc void @zero_user(%struct.page* noundef %page, i32 noundef %cond, i32 noundef %sub) #21
  %12 = load volatile i64, i64* %b_state.i, align 8
  %conv.i3.i = and i64 %12, 1
  %tobool.not.i = icmp eq i64 %conv.i3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end59

if.then.i:                                        ; preds = %if.then48
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i) #20
  br label %if.end59

if.end59:                                         ; preds = %if.then.i, %if.then48, %if.then45
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %b_state.i) #20
  call void @mark_buffer_dirty(%struct.buffer_head* noundef %bh.0) #21
  br label %if.end61

if.end61:                                         ; preds = %if.end59, %do.body36
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %13 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp63.not = icmp eq %struct.buffer_head* %13, %7
  br i1 %cmp63.not, label %cleanup, label %do.body36

cleanup:                                          ; preds = %if.end61, %do.end9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user(%struct.page* noundef %page, i32 noundef %start, i32 noundef %size) unnamed_addr #0 {
entry:
  %add = add i32 %size, %start
  call fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start, i32 noundef %add, i32 noundef 0, i32 noundef 0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__block_write_begin_int(%struct.page* noundef %page, i64 noundef %pos, i32 noundef %len, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef readonly %get_block, %struct.iomap* nocapture noundef readonly %iomap) local_unnamed_addr #0 {
entry:
  %bh = alloca %struct.buffer_head*, align 8
  %wait = alloca [2 x %struct.buffer_head*], align 8
  %0 = trunc i64 %pos to i32
  %conv = and i32 %0, 4095
  %add = add i32 %conv, %len
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 0
  %2 = load %struct.inode*, %struct.inode** %host, align 8
  %3 = bitcast %struct.buffer_head** %bh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #22
  %4 = bitcast [2 x %struct.buffer_head*]* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !17
  %arraydecay = getelementptr inbounds [2 x %struct.buffer_head*], [2 x %struct.buffer_head*]* %wait, i64 0, i64 0
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %5 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i280 = and i64 %6, 1
  %tobool.not = icmp eq i64 %conv.i.i280, 0
  br i1 %tobool.not, label %do.body5, label %do.body31, !prof !9

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1984; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !57
  unreachable

do.body31:                                        ; preds = %entry
  %cmp33 = icmp ugt i32 %add, 4096
  br i1 %cmp33, label %do.body43, label %do.body52, !prof !9

do.body43:                                        ; preds = %do.body31
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1986; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !58
  unreachable

do.body52:                                        ; preds = %do.body31
  %cmp53 = icmp ugt i32 %conv, %add
  br i1 %cmp53, label %do.body63, label %do.end71, !prof !9

do.body63:                                        ; preds = %do.body52
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1987; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !59
  unreachable

do.end71:                                         ; preds = %do.body52
  %call72 = call fastcc %struct.buffer_head* @create_page_buffers(%struct.page* noundef %page, %struct.inode* noundef %2, i32 noundef 0) #21
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %call72, i64 0, i32 4
  %7 = load i64, i64* %b_size, align 8
  %conv73 = trunc i64 %7 to i32
  %call74 = call fastcc i32 @block_size_bits(i32 noundef %conv73) #21
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %8 = load i64, i64* %index, align 8
  %sub = sub i32 12, %call74
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %8, %sh_prom
  store %struct.buffer_head* %call72, %struct.buffer_head** %bh, align 8
  %conv103 = and i64 %7, 4294967295
  %tobool127.not = icmp eq i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* %get_block, null
  br label %for.body

for.body:                                         ; preds = %do.end71, %for.inc
  %wait_bh.0292 = phi %struct.buffer_head** [ %arraydecay, %do.end71 ], [ %wait_bh.1, %for.inc ]
  %block.0288 = phi i64 [ %shl, %do.end71 ], [ %inc, %for.inc ]
  %block_start.0286 = phi i32 [ 0, %do.end71 ], [ %add80, %for.inc ]
  %9 = phi %struct.buffer_head* [ %call72, %do.end71 ], [ %27, %for.inc ]
  %add80 = add i32 %block_start.0286, %conv73
  %cmp81.not = icmp ugt i32 %add80, %conv
  %cmp83.not = icmp ult i32 %block_start.0286, %add
  %or.cond = and i1 %cmp83.not, %cmp81.not
  br i1 %or.cond, label %if.end94, label %if.then85

if.then85:                                        ; preds = %for.body
  %call86 = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #21
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %for.inc, label %if.then88

if.then88:                                        ; preds = %if.then85
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i64 0, i32 0
  %10 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i250282 = and i64 %10, 1
  %tobool90.not = icmp eq i64 %conv.i.i250282, 0
  br i1 %tobool90.not, label %if.then91, label %for.inc

if.then91:                                        ; preds = %if.then88
  %11 = load volatile i64, i64* %b_state.i, align 8
  %conv.i3.i = and i64 %11, 1
  %tobool.not.i = icmp eq i64 %conv.i3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.inc

if.then.i:                                        ; preds = %if.then91
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i) #20
  br label %for.inc

if.end94:                                         ; preds = %for.body
  %b_state.i252 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i64 0, i32 0
  %12 = load volatile i64, i64* %b_state.i252, align 8
  %13 = and i64 %12, 32
  %tobool96.not = icmp eq i64 %13, 0
  br i1 %tobool96.not, label %if.end98, label %if.then97

if.then97:                                        ; preds = %if.end94
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %b_state.i252) #20
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end94
  %14 = load volatile i64, i64* %b_state.i252, align 8
  %15 = and i64 %14, 16
  %tobool100.not = icmp eq i64 %15, 0
  br i1 %tobool100.not, label %if.then101, label %if.end149

if.then101:                                       ; preds = %if.end98
  %b_size102 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i64 0, i32 4
  %16 = load i64, i64* %b_size102, align 8
  %cmp104.not = icmp eq i64 %16, %conv103
  br i1 %cmp104.not, label %if.end119, label %if.then118, !prof !20

if.then118:                                       ; preds = %if.then101
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 2008; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !60
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.then101
  br i1 %tobool127.not, label %if.else, label %if.then128

if.then128:                                       ; preds = %if.end119
  %call129 = call i32 %get_block(%struct.inode* noundef %2, i64 noundef %block.0288, %struct.buffer_head* noundef %9, i32 noundef 1) #20
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end133, label %for.end

if.else:                                          ; preds = %if.end119
  call fastcc void @iomap_to_bh(%struct.inode* noundef %2, i64 noundef %block.0288, %struct.buffer_head* noundef %9, %struct.iomap* noundef %iomap) #21
  br label %if.end133

if.end133:                                        ; preds = %if.then128, %if.else
  %17 = load volatile i64, i64* %b_state.i252, align 8
  %18 = and i64 %17, 32
  %tobool135.not = icmp eq i64 %18, 0
  br i1 %tobool135.not, label %if.end149, label %if.then136

if.then136:                                       ; preds = %if.end133
  call fastcc void @clean_bdev_bh_alias(%struct.buffer_head* noundef %9) #21
  %call137 = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #21
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.then139

if.then139:                                       ; preds = %if.then136
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %b_state.i252) #20
  %19 = load volatile i64, i64* %b_state.i252, align 8
  %conv.i3.i261 = and i64 %19, 1
  %tobool.not.i262 = icmp eq i64 %conv.i3.i261, 0
  br i1 %tobool.not.i262, label %if.then.i263, label %set_buffer_uptodate.exit264

if.then.i263:                                     ; preds = %if.then139
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i252) #20
  br label %set_buffer_uptodate.exit264

set_buffer_uptodate.exit264:                      ; preds = %if.then139, %if.then.i263
  call void @mark_buffer_dirty(%struct.buffer_head* noundef %9) #21
  br label %for.inc

if.end140:                                        ; preds = %if.then136
  %cmp141 = icmp ugt i32 %add80, %add
  %cmp144 = icmp ult i32 %block_start.0286, %conv
  %or.cond248 = or i1 %cmp144, %cmp141
  br i1 %or.cond248, label %if.then146, label %for.inc

if.then146:                                       ; preds = %if.end140
  call fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %add, i32 noundef %add80, i32 noundef %block_start.0286, i32 noundef %conv) #21
  br label %for.inc

if.end149:                                        ; preds = %if.end133, %if.end98
  %call150 = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #21
  %tobool151.not = icmp eq i32 %call150, 0
  %20 = load volatile i64, i64* %b_state.i252, align 8
  %conv.i.i273284 = and i64 %20, 1
  %tobool159.not = icmp eq i64 %conv.i.i273284, 0
  br i1 %tobool151.not, label %if.end157, label %if.then152

if.then152:                                       ; preds = %if.end149
  br i1 %tobool159.not, label %if.then155, label %for.inc

if.then155:                                       ; preds = %if.then152
  %21 = load volatile i64, i64* %b_state.i252, align 8
  %conv.i3.i268 = and i64 %21, 1
  %tobool.not.i269 = icmp eq i64 %conv.i3.i268, 0
  br i1 %tobool.not.i269, label %if.then.i270, label %for.inc

if.then.i270:                                     ; preds = %if.then155
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i252) #20
  br label %for.inc

if.end157:                                        ; preds = %if.end149
  br i1 %tobool159.not, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end157
  %22 = load volatile i64, i64* %b_state.i252, align 8
  %23 = and i64 %22, 256
  %tobool161.not = icmp eq i64 %23, 0
  br i1 %tobool161.not, label %land.lhs.true162, label %for.inc

land.lhs.true162:                                 ; preds = %land.lhs.true
  %24 = load volatile i64, i64* %b_state.i252, align 8
  %25 = and i64 %24, 2048
  %tobool164.not = icmp eq i64 %25, 0
  br i1 %tobool164.not, label %land.lhs.true165, label %for.inc

land.lhs.true165:                                 ; preds = %land.lhs.true162
  %cmp166 = icmp ult i32 %block_start.0286, %conv
  %cmp169 = icmp ugt i32 %add80, %add
  %or.cond249 = or i1 %cmp166, %cmp169
  br i1 %or.cond249, label %if.then171, label %for.inc

if.then171:                                       ; preds = %land.lhs.true165
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef 1, %struct.buffer_head** noundef nonnull %bh) #21
  %incdec.ptr = getelementptr %struct.buffer_head*, %struct.buffer_head** %wait_bh.0292, i64 1
  store %struct.buffer_head* %9, %struct.buffer_head** %wait_bh.0292, align 8
  %.pre = load %struct.buffer_head*, %struct.buffer_head** %bh, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i270, %if.then155, %if.then.i, %if.then91, %land.lhs.true165, %if.end140, %if.end157, %land.lhs.true, %land.lhs.true162, %if.then171, %if.then152, %if.then146, %if.then85, %if.then88, %set_buffer_uptodate.exit264
  %26 = phi %struct.buffer_head* [ %9, %if.then88 ], [ %9, %if.then85 ], [ %9, %if.then152 ], [ %9, %if.end157 ], [ %9, %land.lhs.true ], [ %9, %land.lhs.true162 ], [ %.pre, %if.then171 ], [ %9, %set_buffer_uptodate.exit264 ], [ %9, %if.then146 ], [ %9, %if.end140 ], [ %9, %land.lhs.true165 ], [ %9, %if.then91 ], [ %9, %if.then.i ], [ %9, %if.then155 ], [ %9, %if.then.i270 ]
  %wait_bh.1 = phi %struct.buffer_head** [ %wait_bh.0292, %if.then88 ], [ %wait_bh.0292, %if.then85 ], [ %wait_bh.0292, %if.then152 ], [ %wait_bh.0292, %if.end157 ], [ %wait_bh.0292, %land.lhs.true ], [ %wait_bh.0292, %land.lhs.true162 ], [ %incdec.ptr, %if.then171 ], [ %wait_bh.0292, %set_buffer_uptodate.exit264 ], [ %wait_bh.0292, %if.then146 ], [ %wait_bh.0292, %if.end140 ], [ %wait_bh.0292, %land.lhs.true165 ], [ %wait_bh.0292, %if.then91 ], [ %wait_bh.0292, %if.then.i ], [ %wait_bh.0292, %if.then155 ], [ %wait_bh.0292, %if.then.i270 ]
  %inc = add i64 %block.0288, 1
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i64 0, i32 1
  %27 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  store %struct.buffer_head* %27, %struct.buffer_head** %bh, align 8
  %cmp75 = icmp ne %struct.buffer_head* %27, %call72
  %tobool77.not = icmp eq i32 %add80, 0
  %28 = select i1 %cmp75, i1 true, i1 %tobool77.not
  br i1 %28, label %for.body, label %for.end

for.end:                                          ; preds = %if.then128, %for.inc
  %wait_bh.0.lcssa = phi %struct.buffer_head** [ %wait_bh.0292, %if.then128 ], [ %wait_bh.1, %for.inc ]
  %err.4 = phi i32 [ %call129, %if.then128 ], [ 0, %for.inc ]
  %cmp174295 = icmp ugt %struct.buffer_head** %wait_bh.0.lcssa, %arraydecay
  br i1 %cmp174295, label %while.body, label %while.end

while.body:                                       ; preds = %for.end, %while.body
  %wait_bh.2297 = phi %struct.buffer_head** [ %incdec.ptr176, %while.body ], [ %wait_bh.0.lcssa, %for.end ]
  %err.5296 = phi i32 [ %spec.select, %while.body ], [ %err.4, %for.end ]
  %incdec.ptr176 = getelementptr %struct.buffer_head*, %struct.buffer_head** %wait_bh.2297, i64 -1
  %29 = load %struct.buffer_head*, %struct.buffer_head** %incdec.ptr176, align 8
  call fastcc void @wait_on_buffer(%struct.buffer_head* noundef %29) #21
  %30 = load %struct.buffer_head*, %struct.buffer_head** %incdec.ptr176, align 8
  %b_state.i278 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i64 0, i32 0
  %31 = load volatile i64, i64* %b_state.i278, align 8
  %conv.i.i279281 = and i64 %31, 1
  %tobool178.not = icmp eq i64 %conv.i.i279281, 0
  %spec.select = select i1 %tobool178.not, i32 -5, i32 %err.5296
  %cmp174 = icmp ugt %struct.buffer_head** %incdec.ptr176, %arraydecay
  br i1 %cmp174, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %for.end
  %err.5.lcssa = phi i32 [ %err.4, %for.end ], [ %spec.select, %while.body ]
  %tobool181.not = icmp eq i32 %err.5.lcssa, 0
  br i1 %tobool181.not, label %if.end190, label %if.then189, !prof !20

if.then189:                                       ; preds = %while.end
  call void @page_zero_new_buffers(%struct.page* noundef %page, i32 noundef %conv, i32 noundef %add) #21
  br label %if.end190

if.end190:                                        ; preds = %if.then189, %while.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #22
  ret i32 %err.5.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @iomap_to_bh(%struct.inode* nocapture noundef readonly %inode, i64 noundef %block, %struct.buffer_head* noundef %bh, %struct.iomap* nocapture noundef readonly %iomap) unnamed_addr #0 {
entry:
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 17
  %0 = load i8, i8* %i_blkbits, align 2
  %sh_prom = zext i8 %0 to i64
  %shl = shl i64 %block, %sh_prom
  %bdev = getelementptr inbounds %struct.iomap, %struct.iomap* %iomap, i64 0, i32 5
  %1 = load %struct.block_device*, %struct.block_device** %bdev, align 8
  %b_bdev = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 6
  store %struct.block_device* %1, %struct.block_device** %b_bdev, align 8
  %offset1 = getelementptr inbounds %struct.iomap, %struct.iomap* %iomap, i64 0, i32 1
  %2 = load i64, i64* %offset1, align 8
  %length = getelementptr inbounds %struct.iomap, %struct.iomap* %iomap, i64 0, i32 2
  %3 = load i64, i64* %length, align 8
  %add = add i64 %3, %2
  %cmp.not = icmp ult i64 %shl, %add
  br i1 %cmp.not, label %do.end10, label %do.body5, !prof !20

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1931; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !61
  unreachable

do.end10:                                         ; preds = %entry
  %type = getelementptr inbounds %struct.iomap, %struct.iomap* %iomap, i64 0, i32 3
  %4 = load i16, i16* %type, align 8
  switch i16 %4, label %sw.epilog [
    i16 0, label %sw.bb
    i16 1, label %sw.bb18
    i16 3, label %sw.bb27
    i16 2, label %sw.bb28
  ]

sw.bb:                                            ; preds = %do.end10
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %5 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i101 = and i64 %5, 1
  %tobool12.not = icmp eq i64 %conv.i.i101, 0
  br i1 %tobool12.not, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %call13 = call fastcc i64 @i_size_read(%struct.inode* noundef %inode) #21
  %cmp14.not = icmp slt i64 %shl, %call13
  br i1 %cmp14.not, label %sw.epilog, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false, %sw.bb
  %6 = load volatile i64, i64* %b_state.i, align 8
  %7 = and i64 %6, 32
  %tobool.not.i = icmp eq i64 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.epilog

if.then.i:                                        ; preds = %if.then16
  call fastcc void @set_bit(i64 noundef 5, i64* noundef %b_state.i) #20
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end10
  %b_state.i70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %8 = load volatile i64, i64* %b_state.i70, align 8
  %conv.i.i71100 = and i64 %8, 1
  %tobool20.not = icmp eq i64 %conv.i.i71100, 0
  br i1 %tobool20.not, label %if.then25, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %sw.bb18
  %call22 = call fastcc i64 @i_size_read(%struct.inode* noundef %inode) #21
  %cmp23.not = icmp slt i64 %shl, %call22
  br i1 %cmp23.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %lor.lhs.false21, %sw.bb18
  %9 = load volatile i64, i64* %b_state.i70, align 8
  %10 = and i64 %9, 32
  %tobool.not.i73 = icmp eq i64 %10, 0
  br i1 %tobool.not.i73, label %if.then.i74, label %if.end26

if.then.i74:                                      ; preds = %if.then25
  call fastcc void @set_bit(i64 noundef 5, i64* noundef %b_state.i70) #20
  br label %if.end26

if.end26:                                         ; preds = %if.then.i74, %if.then25, %lor.lhs.false21
  %11 = load volatile i64, i64* %b_state.i70, align 8
  %conv.i3.i = and i64 %11, 1
  %tobool.not.i77 = icmp eq i64 %conv.i3.i, 0
  br i1 %tobool.not.i77, label %if.then.i78, label %set_buffer_uptodate.exit

if.then.i78:                                      ; preds = %if.end26
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i70) #20
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.end26, %if.then.i78
  %12 = load volatile i64, i64* %b_state.i70, align 8
  %13 = and i64 %12, 16
  %tobool.not.i80 = icmp eq i64 %13, 0
  br i1 %tobool.not.i80, label %if.then.i81, label %set_buffer_mapped.exit

if.then.i81:                                      ; preds = %set_buffer_uptodate.exit
  call fastcc void @set_bit(i64 noundef 4, i64* noundef %b_state.i70) #20
  br label %set_buffer_mapped.exit

set_buffer_mapped.exit:                           ; preds = %set_buffer_uptodate.exit, %if.then.i81
  %14 = load volatile i64, i64* %b_state.i70, align 8
  %15 = and i64 %14, 256
  %tobool.not.i83 = icmp eq i64 %15, 0
  br i1 %tobool.not.i83, label %if.then.i84, label %sw.epilog

if.then.i84:                                      ; preds = %set_buffer_mapped.exit
  call fastcc void @set_bit(i64 noundef 8, i64* noundef %b_state.i70) #20
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.end10
  %b_state.i85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %16 = load volatile i64, i64* %b_state.i85, align 8
  %17 = and i64 %16, 32
  %tobool.not.i86 = icmp eq i64 %17, 0
  br i1 %tobool.not.i86, label %if.then.i87, label %set_buffer_new.exit88

if.then.i87:                                      ; preds = %sw.bb27
  call fastcc void @set_bit(i64 noundef 5, i64* noundef %b_state.i85) #20
  br label %set_buffer_new.exit88

set_buffer_new.exit88:                            ; preds = %sw.bb27, %if.then.i87
  %18 = load volatile i64, i64* %b_state.i85, align 8
  %19 = and i64 %18, 2048
  %tobool.not.i90 = icmp eq i64 %19, 0
  br i1 %tobool.not.i90, label %if.then.i91, label %sw.bb28

if.then.i91:                                      ; preds = %set_buffer_new.exit88
  call fastcc void @set_bit(i64 noundef 11, i64* noundef %b_state.i85) #20
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.then.i91, %set_buffer_new.exit88, %do.end10
  %flags = getelementptr inbounds %struct.iomap, %struct.iomap* %iomap, i64 0, i32 4
  %20 = load i16, i16* %flags, align 2
  %21 = and i16 %20, 1
  %tobool30.not = icmp eq i16 %21, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.then35

lor.lhs.false31:                                  ; preds = %sw.bb28
  %call32 = call fastcc i64 @i_size_read(%struct.inode* noundef %inode) #21
  %cmp33.not = icmp slt i64 %shl, %call32
  br i1 %cmp33.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %lor.lhs.false31, %sw.bb28
  %b_state.i92 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %22 = load volatile i64, i64* %b_state.i92, align 8
  %23 = and i64 %22, 32
  %tobool.not.i93 = icmp eq i64 %23, 0
  br i1 %tobool.not.i93, label %if.then.i94, label %if.end36

if.then.i94:                                      ; preds = %if.then35
  call fastcc void @set_bit(i64 noundef 5, i64* noundef %b_state.i92) #20
  br label %if.end36

if.end36:                                         ; preds = %if.then.i94, %if.then35, %lor.lhs.false31
  %addr = getelementptr inbounds %struct.iomap, %struct.iomap* %iomap, i64 0, i32 0
  %24 = load i64, i64* %addr, align 8
  %add37 = add i64 %24, %shl
  %25 = load i64, i64* %offset1, align 8
  %sub = sub i64 %add37, %25
  %26 = load i8, i8* %i_blkbits, align 2
  %sh_prom41 = zext i8 %26 to i64
  %shr = lshr i64 %sub, %sh_prom41
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 3
  store i64 %shr, i64* %b_blocknr, align 8
  %b_state.i96 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %27 = load volatile i64, i64* %b_state.i96, align 8
  %28 = and i64 %27, 16
  %tobool.not.i97 = icmp eq i64 %28, 0
  br i1 %tobool.not.i97, label %if.then.i98, label %sw.epilog

if.then.i98:                                      ; preds = %if.end36
  call fastcc void @set_bit(i64 noundef 4, i64* noundef %b_state.i96) #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i98, %if.end36, %if.then.i84, %set_buffer_mapped.exit, %if.then.i, %if.then16, %lor.lhs.false, %do.end10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start1, i32 noundef %end1, i32 noundef %start2, i32 noundef %end2) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %page) #21
  %conv = zext i32 %end1 to i64
  %call1 = call fastcc i64 @page_size(%struct.page* noundef %page) #21
  %cmp = icmp ult i64 %call1, %conv
  br i1 %cmp, label %do.body9, label %lor.rhs, !prof !9

lor.rhs:                                          ; preds = %entry
  %conv3 = zext i32 %end2 to i64
  %call4 = call fastcc i64 @page_size(%struct.page* noundef %page) #21
  %cmp5 = icmp ult i64 %call4, %conv3
  br i1 %cmp5, label %do.body9, label %do.end14, !prof !9

do.body9:                                         ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/highmem.h\22; .popsection; .long 14472b - 14470b; .short 208; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !62
  unreachable

do.end14:                                         ; preds = %lor.rhs
  %cmp15 = icmp ugt i32 %end1, %start1
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %do.end14
  %idx.ext = zext i32 %start1 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %sub = sub i32 %end1, %start1
  %conv18 = zext i32 %sub to i64
  %call19 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv18) #20
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %do.end14
  %cmp21 = icmp ugt i32 %end2, %start2
  br i1 %cmp21, label %if.then23, label %do.end33

if.then23:                                        ; preds = %if.end20
  %idx.ext24 = zext i32 %start2 to i64
  %add.ptr25 = getelementptr i8, i8* %call, i64 %idx.ext24
  %sub26 = sub i32 %end2, %start2
  %conv27 = zext i32 %sub26 to i64
  %call28 = call i8* @memset(i8* noundef %add.ptr25, i32 noundef 0, i64 noundef %conv27) #20
  br label %do.end33

do.end33:                                         ; preds = %if.then23, %if.end20
  call fastcc void @__kunmap_atomic() #21
  %call3760 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #21
  %cmp3861.not = icmp eq i64 %call3760, 0
  br i1 %cmp3861.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.end33, %for.body
  %conv3663 = phi i64 [ %conv36, %for.body ], [ 0, %do.end33 ]
  %add.ptr41 = getelementptr %struct.page, %struct.page* %page, i64 %conv3663
  call void @flush_dcache_page(%struct.page* noundef %add.ptr41) #20
  %inc = add nuw nsw i64 %conv3663, 1
  %conv36 = and i64 %inc, 4294967295
  %call37 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #21
  %cmp38 = icmp ugt i64 %call37, %conv36
  br i1 %cmp38, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %do.end33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__block_write_begin(%struct.page* noundef %page, i64 noundef %pos, i32 noundef %len, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block) local_unnamed_addr #0 {
entry:
  %call = call i32 @__block_write_begin_int(%struct.page* noundef %page, i64 noundef %pos, i32 noundef %len, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block, %struct.iomap* noundef null) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @block_write_begin(%struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, %struct.page** nocapture noundef writeonly %pagep, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block) local_unnamed_addr #0 {
entry:
  %shr = ashr i64 %pos, 12
  %call = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* noundef %mapping, i64 noundef %shr, i32 noundef %flags) #20
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @__block_write_begin(%struct.page* noundef nonnull %call, i64 noundef %pos, i32 noundef %len, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block) #21
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end6, label %if.then5, !prof !20

if.then5:                                         ; preds = %if.end
  call void @unlock_page(%struct.page* noundef nonnull %call) #20
  call fastcc void @put_page(%struct.page* noundef nonnull %call) #21
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %page.0 = phi %struct.page* [ null, %if.then5 ], [ %call, %if.end ]
  store %struct.page* %page.0, %struct.page** %pagep, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi i32 [ %call1, %if.end6 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #21
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #21
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #20
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @block_write_end(%struct.file* nocapture readnone %file, %struct.address_space* nocapture noundef readnone %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, %struct.page* noundef %page, i8* nocapture readnone %fsdata) local_unnamed_addr #0 {
entry:
  %0 = trunc i64 %pos to i32
  %conv = and i32 %0, 4095
  %cmp = icmp ult i32 %copied, %len
  br i1 %cmp, label %if.then, label %if.end7, !prof !9

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #21
  %tobool4.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 %copied
  %add = add i32 %spec.select, %conv
  %add6 = add i32 %conv, %len
  call void @page_zero_new_buffers(%struct.page* noundef %page, i32 noundef %add, i32 noundef %add6) #21
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.then
  %copied.addr.1 = phi i32 [ %spec.select, %if.then ], [ %copied, %entry ]
  call void @flush_dcache_page(%struct.page* noundef %page) #20
  %add8 = add i32 %copied.addr.1, %conv
  call fastcc void @__block_commit_write(%struct.page* noundef %page, i32 noundef %conv, i32 noundef %add8) #21
  ret i32 %copied.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__block_commit_write(%struct.page* noundef %page, i32 noundef %from, i32 noundef %to) unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 8192
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 2072; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !63
  unreachable

do.end9:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %2 = load i64, i64* %private, align 8
  %3 = inttoptr i64 %2 to %struct.buffer_head*
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %3, i64 0, i32 4
  %4 = load i64, i64* %b_size, align 8
  %conv10 = trunc i64 %4 to i32
  br label %do.body11

do.body11:                                        ; preds = %if.end24, %do.end9
  %partial.0 = phi i32 [ 0, %do.end9 ], [ %partial.1, %if.end24 ]
  %bh.0 = phi %struct.buffer_head* [ %3, %do.end9 ], [ %8, %if.end24 ]
  %block_start.0 = phi i32 [ 0, %do.end9 ], [ %add, %if.end24 ]
  %add = add i32 %block_start.0, %conv10
  %cmp.not = icmp ugt i32 %add, %from
  %cmp13.not = icmp ult i32 %block_start.0, %to
  %or.cond = and i1 %cmp13.not, %cmp.not
  %b_state.i2 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  %5 = load volatile i64, i64* %b_state.i2, align 8
  %conv.i3.i = and i64 %5, 1
  %tobool.not.i = icmp eq i64 %conv.i3.i, 0
  br i1 %or.cond, label %if.else, label %if.then15

if.then15:                                        ; preds = %do.body11
  %spec.select = select i1 %tobool.not.i, i32 1, i32 %partial.0
  br label %if.end20

if.else:                                          ; preds = %do.body11
  br i1 %tobool.not.i, label %if.then.i, label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.else
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i2) #20
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.else, %if.then.i
  call void @mark_buffer_dirty(%struct.buffer_head* noundef %bh.0) #21
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %set_buffer_uptodate.exit
  %partial.1 = phi i32 [ %partial.0, %set_buffer_uptodate.exit ], [ %spec.select, %if.then15 ]
  %b_state.i3 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  %6 = load volatile i64, i64* %b_state.i3, align 8
  %7 = and i64 %6, 32
  %tobool22.not = icmp eq i64 %7, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %b_state.i3) #20
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %8 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp26.not = icmp eq %struct.buffer_head* %8, %3
  br i1 %cmp26.not, label %do.end28, label %do.body11

do.end28:                                         ; preds = %if.end24
  %tobool29.not = icmp eq i32 %partial.1, 0
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.end28
  call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !64
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %flags.i) #20
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %do.end28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_write_end(%struct.file* nocapture readnone %file, %struct.address_space* nocapture noundef readonly %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, %struct.page* noundef %page, i8* nocapture readnone %fsdata) local_unnamed_addr #0 {
entry:
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 11
  %1 = load i64, i64* %i_size, align 8
  %call = call i32 @block_write_end(%struct.file* undef, %struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, %struct.page* noundef %page, i8* undef) #21
  %conv = zext i32 %call to i64
  %add = add i64 %conv, %pos
  %2 = load i64, i64* %i_size, align 8
  %cmp = icmp sgt i64 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @i_size_write(%struct.inode* noundef %0, i64 noundef %add) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @unlock_page(%struct.page* noundef %page) #20
  call fastcc void @put_page(%struct.page* noundef %page) #21
  %cmp5 = icmp slt i64 %1, %pos
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @pagecache_isize_extended(%struct.inode* noundef %0, i64 noundef %1, i64 noundef %pos) #20
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end8
  call fastcc void @mark_inode_dirty(%struct.inode* noundef %0) #21
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end8
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @i_size_write(%struct.inode* nocapture noundef writeonly %inode, i64 noundef %i_size) unnamed_addr #9 {
entry:
  %i_size1 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  store i64 %i_size, i64* %i_size1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagecache_isize_extended(%struct.inode* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_inode_dirty(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void @__mark_inode_dirty(%struct.inode* noundef %inode, i32 noundef 7) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @block_is_partially_uptodate(%struct.page* noundef %page, i64 noundef %from, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 8192
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %2 = load volatile i64, i64* %flags.i, align 8
  %3 = and i64 %2, 8192
  %tobool2.not = icmp eq i64 %3, 0
  br i1 %tobool2.not, label %do.body7, label %do.end13, !prof !9

do.body7:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 2225; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !65
  unreachable

do.end13:                                         ; preds = %do.body
  %private = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %4 = load i64, i64* %private, align 8
  %5 = inttoptr i64 %4 to %struct.buffer_head*
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %5, i64 0, i32 4
  %6 = load i64, i64* %b_size, align 8
  %conv14 = trunc i64 %6 to i32
  %7 = trunc i64 %from to i32
  %conv15 = sub i32 4096, %7
  %conv16 = trunc i64 %count to i32
  %cmp = icmp ult i32 %conv15, %conv16
  %cond = select i1 %cmp, i32 %conv15, i32 %conv16
  %conv20 = add i32 %cond, %7
  %conv21 = and i64 %6, 4294967295
  %cmp22 = icmp ugt i64 %conv21, %from
  %conv24 = zext i32 %conv20 to i64
  %sub26 = sub nsw i64 4096, %conv21
  %cmp27 = icmp ult i64 %sub26, %conv24
  %or.cond = select i1 %cmp22, i1 %cmp27, i1 false
  br i1 %or.cond, label %cleanup, label %do.body31

do.body31:                                        ; preds = %do.end13, %if.end48
  %bh.0 = phi %struct.buffer_head* [ %9, %if.end48 ], [ %5, %do.end13 ]
  %block_start.0 = phi i32 [ %add32, %if.end48 ], [ 0, %do.end13 ]
  %add32 = add i32 %block_start.0, %conv14
  %conv33 = zext i32 %add32 to i64
  %cmp34 = icmp ugt i64 %conv33, %from
  %cmp37 = icmp ult i32 %block_start.0, %conv20
  %or.cond87 = and i1 %cmp37, %cmp34
  br i1 %or.cond87, label %if.then39, label %if.end48

if.then39:                                        ; preds = %do.body31
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  %8 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i9091 = and i64 %8, 1
  %tobool41.not = icmp eq i64 %conv.i.i9091, 0
  br i1 %tobool41.not, label %cleanup, label %if.end43

if.end43:                                         ; preds = %if.then39
  %cmp44.not = icmp ult i32 %add32, %conv20
  br i1 %cmp44.not, label %if.end48, label %cleanup

if.end48:                                         ; preds = %if.end43, %do.body31
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %9 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp50.not = icmp eq %struct.buffer_head* %9, %5
  br i1 %cmp50.not, label %cleanup, label %do.body31

cleanup:                                          ; preds = %if.end48, %if.end43, %if.then39, %do.end13, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %do.end13 ], [ 0, %if.then39 ], [ 1, %if.end48 ], [ 1, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @block_read_full_page(%struct.page* noundef %page, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* nocapture noundef readonly %get_block) local_unnamed_addr #0 {
entry:
  %arr = alloca [8 x %struct.buffer_head*], align 8
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %2 = bitcast [8 x %struct.buffer_head*]* %arr to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false), !annotation !17
  %call = call fastcc %struct.buffer_head* @create_page_buffers(%struct.page* noundef %page, %struct.inode* noundef %1, i32 noundef 0) #21
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %call, i64 0, i32 4
  %3 = load i64, i64* %b_size, align 8
  %conv = trunc i64 %3 to i32
  %call1 = call fastcc i32 @block_size_bits(i32 noundef %conv) #21
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %4 = load i64, i64* %index, align 8
  %sub = sub i32 12, %call1
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %4, %sh_prom
  %call2 = call fastcc i64 @i_size_read(%struct.inode* noundef %1) #21
  %conv3 = and i64 %3, 4294967295
  %add = add nsw i64 %conv3, -1
  %sub4 = add i64 %add, %call2
  %sh_prom5 = zext i32 %call1 to i64
  %shr = ashr i64 %sub4, %sh_prom5
  br label %do.body.outer

do.body.outer:                                    ; preds = %do.cond, %entry
  %iblock.0.ph = phi i64 [ %inc51, %do.cond ], [ %shl, %entry ]
  %bh.0.ph = phi %struct.buffer_head* [ %14, %do.cond ], [ %call, %entry ]
  %nr.0.ph = phi i32 [ %nr.1, %do.cond ], [ 0, %entry ]
  %i.0.ph = phi i32 [ %inc50, %do.cond ], [ 0, %entry ]
  %fully_mapped.0.ph = phi i32 [ %fully_mapped.2, %do.cond ], [ 1, %entry ]
  br label %do.body

do.body:                                          ; preds = %do.body.outer, %do.cond.thread
  %iblock.0 = phi i64 [ %inc51170, %do.cond.thread ], [ %iblock.0.ph, %do.body.outer ]
  %bh.0 = phi %struct.buffer_head* [ %15, %do.cond.thread ], [ %bh.0.ph, %do.body.outer ]
  %i.0 = phi i32 [ %inc50169, %do.cond.thread ], [ %i.0.ph, %do.body.outer ]
  %fully_mapped.0 = phi i32 [ 0, %do.cond.thread ], [ %fully_mapped.0.ph, %do.body.outer ]
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  %5 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i179 = and i64 %5, 1
  %tobool.not = icmp eq i64 %conv.i.i179, 0
  br i1 %tobool.not, label %if.end, label %do.cond

if.end:                                           ; preds = %do.body
  %6 = load volatile i64, i64* %b_state.i, align 8
  %7 = and i64 %6, 16
  %tobool8.not = icmp eq i64 %7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end49

if.then9:                                         ; preds = %if.end
  %cmp = icmp ult i64 %iblock.0, %shr
  br i1 %cmp, label %if.then11, label %if.end37

if.then11:                                        ; preds = %if.then9
  %b_size12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 4
  %8 = load i64, i64* %b_size12, align 8
  %cmp14.not = icmp eq i64 %8, %conv3
  br i1 %cmp14.not, label %if.end25, label %if.then24, !prof !20

if.then24:                                        ; preds = %if.then11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 2287; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !66
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then11
  %call33 = call i32 %get_block(%struct.inode* noundef %1, i64 noundef %iblock.0, %struct.buffer_head* noundef %bh.0, i32 noundef 0) #20
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end25
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %9 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 8, i64* noundef %flags.i) #20
  br label %if.end37

if.end37:                                         ; preds = %if.end25, %if.then35, %if.then9
  %tobool41.not = phi i1 [ true, %if.end25 ], [ false, %if.then35 ], [ true, %if.then9 ]
  %10 = load volatile i64, i64* %b_state.i, align 8
  %11 = and i64 %10, 16
  %tobool39.not = icmp eq i64 %11, 0
  br i1 %tobool39.not, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.end37
  %mul = mul i32 %i.0, %conv
  call fastcc void @zero_user(%struct.page* noundef %page, i32 noundef %mul, i32 noundef %conv) #21
  br i1 %tobool41.not, label %if.then42, label %do.cond.thread

if.then42:                                        ; preds = %if.then40
  %12 = load volatile i64, i64* %b_state.i, align 8
  %conv.i3.i = and i64 %12, 1
  %tobool.not.i = icmp eq i64 %conv.i3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.cond.thread

if.then.i:                                        ; preds = %if.then42
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i) #20
  br label %do.cond.thread

if.end44:                                         ; preds = %if.end37
  %13 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i156181 = and i64 %13, 1
  %tobool46.not = icmp eq i64 %conv.i.i156181, 0
  br i1 %tobool46.not, label %if.end49, label %do.cond.thread

if.end49:                                         ; preds = %if.end44, %if.end
  %fully_mapped.1 = phi i32 [ %fully_mapped.0, %if.end ], [ 0, %if.end44 ]
  %inc = add i32 %nr.0.ph, 1
  %idxprom = sext i32 %nr.0.ph to i64
  %arrayidx = getelementptr [8 x %struct.buffer_head*], [8 x %struct.buffer_head*]* %arr, i64 0, i64 %idxprom
  store %struct.buffer_head* %bh.0, %struct.buffer_head** %arrayidx, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body, %if.end49
  %nr.1 = phi i32 [ %inc, %if.end49 ], [ %nr.0.ph, %do.body ]
  %fully_mapped.2 = phi i32 [ %fully_mapped.1, %if.end49 ], [ %fully_mapped.0, %do.body ]
  %inc50 = add i32 %i.0, 1
  %inc51 = add i64 %iblock.0, 1
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %14 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp52.not = icmp eq %struct.buffer_head* %14, %call
  br i1 %cmp52.not, label %do.end, label %do.body.outer

do.cond.thread:                                   ; preds = %if.then.i, %if.then42, %if.end44, %if.then40
  %inc50169 = add i32 %i.0, 1
  %inc51170 = add i64 %iblock.0, 1
  %b_this_page171 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %15 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page171, align 8
  %cmp52.not172 = icmp eq %struct.buffer_head* %15, %call
  br i1 %cmp52.not172, label %if.end56, label %do.body

do.end:                                           ; preds = %do.cond
  %tobool54.not = icmp eq i32 %fully_mapped.2, 0
  br i1 %tobool54.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %do.end
  %call.i157 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %16 = inttoptr i64 %call.i157 to %struct.page*
  %flags.i158 = getelementptr inbounds %struct.page, %struct.page* %16, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 17, i64* noundef %flags.i158) #20
  br label %if.end56

if.end56:                                         ; preds = %do.cond.thread, %if.then55, %do.end
  %nr.1173178 = phi i32 [ %nr.1, %if.then55 ], [ %nr.1, %do.end ], [ %nr.0.ph, %do.cond.thread ]
  %tobool57.not = icmp eq i32 %nr.1173178, 0
  br i1 %tobool57.not, label %if.then58, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end56
  %cmp64194 = icmp sgt i32 %nr.1173178, 0
  br i1 %cmp64194, label %for.body.preheader, label %cleanup83

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %nr.1173178 to i64
  br label %for.body

if.then58:                                        ; preds = %if.end56
  %call.i159 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %17 = inttoptr i64 %call.i159 to %struct.page*
  %flags.i160 = getelementptr inbounds %struct.page, %struct.page* %17, i64 0, i32 0
  %18 = load volatile i64, i64* %flags.i160, align 8
  %19 = and i64 %18, 256
  %tobool60.not = icmp eq i64 %19, 0
  br i1 %tobool60.not, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then58
  call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !64
  %flags.i162 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %flags.i162) #20
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.then58
  call void @unlock_page(%struct.page* noundef %page) #20
  br label %cleanup83

for.cond69.preheader:                             ; preds = %for.body
  br i1 %cmp64194, label %for.body72.preheader, label %cleanup83

for.body72.preheader:                             ; preds = %for.cond69.preheader
  %wide.trip.count214 = zext i32 %nr.1173178 to i64
  br label %for.body72

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx67 = getelementptr [8 x %struct.buffer_head*], [8 x %struct.buffer_head*]* %arr, i64 0, i64 %indvars.iv
  %20 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx67, align 8
  call fastcc void @lock_buffer(%struct.buffer_head* noundef %20) #21
  call fastcc void @mark_buffer_async_read(%struct.buffer_head* noundef %20) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond69.preheader, label %for.body

for.body72:                                       ; preds = %for.body72.preheader, %for.inc80
  %indvars.iv211 = phi i64 [ 0, %for.body72.preheader ], [ %indvars.iv.next212, %for.inc80 ]
  %arrayidx74 = getelementptr [8 x %struct.buffer_head*], [8 x %struct.buffer_head*]* %arr, i64 0, i64 %indvars.iv211
  %21 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx74, align 8
  %b_state.i163 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i64 0, i32 0
  %22 = load volatile i64, i64* %b_state.i163, align 8
  %conv.i.i164180 = and i64 %22, 1
  %tobool76.not = icmp eq i64 %conv.i.i164180, 0
  br i1 %tobool76.not, label %if.else, label %if.then77

if.then77:                                        ; preds = %for.body72
  call fastcc void @end_buffer_async_read(%struct.buffer_head* noundef %21, i32 noundef 1) #21
  br label %for.inc80

if.else:                                          ; preds = %for.body72
  %call78 = call i32 @submit_bh(i32 noundef 0, i32 noundef 0, %struct.buffer_head* noundef %21) #21
  br label %for.inc80

for.inc80:                                        ; preds = %if.then77, %if.else
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %cleanup83, label %for.body72

cleanup83:                                        ; preds = %for.inc80, %for.cond.preheader, %for.cond69.preheader, %if.end62
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #22
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_buffer_async_read(%struct.buffer_head* noundef %bh) unnamed_addr #0 {
entry:
  %b_end_io = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 7
  store void (%struct.buffer_head*, i32)* @end_buffer_async_read_io, void (%struct.buffer_head*, i32)** %b_end_io, align 8
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %1 = and i64 %0, 64
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %set_buffer_async_read.exit

if.then.i:                                        ; preds = %entry
  call fastcc void @set_bit(i64 noundef 6, i64* noundef %b_state.i) #20
  br label %set_buffer_async_read.exit

set_buffer_async_read.exit:                       ; preds = %entry, %if.then.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @end_buffer_async_read(%struct.buffer_head* noundef %bh, i32 noundef %uptodate) unnamed_addr #0 {
entry:
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %1 = and i64 %0, 64
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 252; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !67
  unreachable

do.end9:                                          ; preds = %entry
  %b_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 2
  %2 = load %struct.page*, %struct.page** %b_page, align 8
  %tobool10.not = icmp eq i32 %uptodate, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.end9
  %3 = load volatile i64, i64* %b_state.i, align 8
  %conv.i3.i = and i64 %3, 1
  %tobool.not.i = icmp eq i64 %conv.i3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body13

if.then.i:                                        ; preds = %if.then11
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i) #20
  br label %do.body13

if.else:                                          ; preds = %do.end9
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %b_state.i) #20
  call fastcc void @buffer_io_error(%struct.buffer_head* noundef %bh, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)) #21
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %2) #20
  %4 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 8, i64* noundef %flags.i) #20
  br label %do.body13

do.body13:                                        ; preds = %if.then.i, %if.then11, %if.else
  %flags.i119 = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i119, align 8
  %6 = and i64 %5, 8192
  %tobool15.not = icmp eq i64 %6, 0
  br i1 %tobool15.not, label %do.body26, label %do.end34, !prof !9

do.body26:                                        ; preds = %do.body13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 268; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !68
  unreachable

do.end34:                                         ; preds = %do.body13
  %private = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 1, i32 0, i32 3
  %7 = load i64, i64* %private, align 8
  %8 = inttoptr i64 %7 to %struct.buffer_head*
  %rlock.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i64 0, i32 12, i32 0, i32 0
  %call41 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #21
  call fastcc void @clear_bit(i64 noundef 6, i64* noundef %b_state.i) #20
  call void @unlock_buffer(%struct.buffer_head* noundef %bh) #21
  br label %do.body46

do.body46:                                        ; preds = %if.end76, %do.end34
  %tmp.0 = phi %struct.buffer_head* [ %bh, %do.end34 ], [ %14, %if.end76 ]
  %page_uptodate.0 = phi i32 [ 1, %do.end34 ], [ %spec.select, %if.end76 ]
  %b_state.i122 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %tmp.0, i64 0, i32 0
  %9 = load volatile i64, i64* %b_state.i122, align 8
  %conv.i.i123134 = and i64 %9, 1
  %tobool48.not = icmp eq i64 %conv.i.i123134, 0
  %spec.select = select i1 %tobool48.not, i32 0, i32 %page_uptodate.0
  %10 = load volatile i64, i64* %b_state.i122, align 8
  %11 = and i64 %10, 64
  %tobool52.not = icmp eq i64 %11, 0
  br i1 %tobool52.not, label %if.end76, label %do.body54

do.body54:                                        ; preds = %do.body46
  %b_state.i122.le = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %tmp.0, i64 0, i32 0
  %12 = load volatile i64, i64* %b_state.i122.le, align 8
  %13 = and i64 %12, 4
  %tobool56.not = icmp eq i64 %13, 0
  br i1 %tobool56.not, label %do.body67, label %still_busy, !prof !9

do.body67:                                        ; preds = %do.body54
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 277; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !69
  unreachable

if.end76:                                         ; preds = %do.body46
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %tmp.0, i64 0, i32 1
  %14 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp78.not = icmp eq %struct.buffer_head* %14, %bh
  br i1 %cmp78.not, label %do.end80, label %do.body46

do.end80:                                         ; preds = %if.end76
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call41) #20
  %tobool82.not = icmp eq i32 %spec.select, 0
  br i1 %tobool82.not, label %if.end86, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end80
  %call.i129 = call fastcc i64 @_compound_head(%struct.page* noundef %2) #20
  %15 = inttoptr i64 %call.i129 to %struct.page*
  %flags.i130 = getelementptr inbounds %struct.page, %struct.page* %15, i64 0, i32 0
  %16 = load volatile i64, i64* %flags.i130, align 8
  %17 = and i64 %16, 256
  %tobool84.not = icmp eq i64 %17, 0
  br i1 %tobool84.not, label %if.then85, label %if.end86

if.then85:                                        ; preds = %land.lhs.true
  call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !64
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %flags.i119) #20
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %land.lhs.true, %do.end80
  call void @unlock_page(%struct.page* noundef %2) #20
  br label %cleanup

still_busy:                                       ; preds = %do.body54
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call41) #20
  br label %cleanup

cleanup:                                          ; preds = %still_busy, %if.end86
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @submit_bh(i32 noundef %op, i32 noundef %op_flags, %struct.buffer_head* noundef %bh) local_unnamed_addr #0 {
entry:
  call fastcc void @submit_bh_wbc(i32 noundef %op, i32 noundef %op_flags, %struct.buffer_head* noundef %bh, i32 noundef 0, %struct.writeback_control* noundef null) #21
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_cont_expand_simple(%struct.inode* noundef %inode, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %page = alloca %struct.page*, align 8
  %fsdata = alloca i8*, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %1 = bitcast %struct.page** %page to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #22
  store %struct.page* null, %struct.page** %page, align 8, !annotation !17
  %2 = bitcast i8** %fsdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #22
  store i8* null, i8** %fsdata, align 8, !annotation !17
  %call = call i32 @inode_newsize_ok(%struct.inode* noundef %inode, i64 noundef %size) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %call1 = call i32 @pagecache_write_begin(%struct.file* noundef null, %struct.address_space* noundef %0, i64 noundef %size, i32 noundef 0, i32 noundef 1, %struct.page** noundef nonnull %page, i8** noundef nonnull %fsdata) #20
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %out

if.end4:                                          ; preds = %if.end
  %3 = load %struct.page*, %struct.page** %page, align 8
  %4 = load i8*, i8** %fsdata, align 8
  %call5 = call i32 @pagecache_write_end(%struct.file* noundef null, %struct.address_space* noundef %0, i64 noundef %size, i32 noundef 0, i32 noundef 0, %struct.page* noundef %3, i8* noundef %4) #20
  %cmp = icmp sgt i32 %call5, 0
  br i1 %cmp, label %do.body9, label %out, !prof !9

do.body9:                                         ; preds = %if.end4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 2366; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !70
  unreachable

out:                                              ; preds = %if.end4, %if.end, %entry
  %err.0 = phi i32 [ %call, %entry ], [ %call1, %if.end ], [ %call5, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #22
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(%struct.inode* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_begin(%struct.file* noundef, %struct.address_space* noundef, i64 noundef, i32 noundef, i32 noundef, %struct.page** noundef, i8** noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_end(%struct.file* noundef, %struct.address_space* noundef, i64 noundef, i32 noundef, i32 noundef, %struct.page* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cont_write_begin(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, %struct.page** nocapture noundef writeonly %pagep, i8** nocapture noundef readnone %fsdata, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block, i64* nocapture noundef %bytes) local_unnamed_addr #0 {
entry:
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc i32 @i_blocksize(%struct.inode* noundef %0) #21
  %call1 = call fastcc i32 @cont_expand_zero(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %pos, i64* noundef %bytes) #21
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %bytes, align 8
  %conv2 = zext i32 %len to i64
  %add = add i64 %conv2, %pos
  %cmp = icmp sgt i64 %add, %1
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %2 = trunc i64 %1 to i32
  %sub = add i32 %call, -1
  %conv = and i32 %sub, 4095
  %and4 = and i32 %conv, %2
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %conv8 = zext i32 %sub to i64
  %or = or i64 %1, %conv8
  %inc = add i64 %or, 1
  store i64 %inc, i64* %bytes, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  %call10 = call i32 @block_write_begin(%struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, %struct.page** noundef %pagep, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_blocksize(%struct.inode* nocapture noundef readonly %node) unnamed_addr #10 {
entry:
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %node, i64 0, i32 17
  %0 = load i8, i8* %i_blkbits, align 2
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 1, %conv
  ret i32 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cont_expand_zero(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %pos, i64* nocapture noundef %bytes) unnamed_addr #0 {
entry:
  %page = alloca %struct.page*, align 8
  %fsdata = alloca i8*, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc i32 @i_blocksize(%struct.inode* noundef %0) #21
  %1 = bitcast %struct.page** %page to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #22
  store %struct.page* null, %struct.page** %page, align 8, !annotation !17
  %2 = bitcast i8** %fsdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #22
  store i8* null, i8** %fsdata, align 8, !annotation !17
  %shr = ashr i64 %pos, 12
  %3 = trunc i64 %pos to i32
  %conv = and i32 %3, 4095
  %sub = add i32 %call, -1
  %conv7 = zext i32 %sub to i64
  br label %while.cond

while.cond:                                       ; preds = %do.end32, %entry
  %4 = load i64, i64* %bytes, align 8
  %shr1 = ashr i64 %4, 12
  %cmp = icmp ugt i64 %shr, %shr1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = trunc i64 %4 to i32
  %conv4 = and i32 %5, 4095
  %and5 = and i32 %conv4, %sub
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %or = or i64 %4, %conv7
  %inc = add i64 %or, 1
  store i64 %inc, i64* %bytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %narrow = sub nuw nsw i32 4096, %conv4
  %call11 = call i32 @pagecache_write_begin(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %4, i32 noundef %narrow, i32 noundef 0, %struct.page** noundef nonnull %page, i8** noundef nonnull %fsdata) #20
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %out

if.end14:                                         ; preds = %if.end
  %6 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @zero_user(%struct.page* noundef %6, i32 noundef %conv4, i32 noundef %narrow) #21
  %7 = load %struct.page*, %struct.page** %page, align 8
  %8 = load i8*, i8** %fsdata, align 8
  %call15 = call i32 @pagecache_write_end(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %4, i32 noundef %narrow, i32 noundef %narrow, %struct.page* noundef %7, i8* noundef %8) #20
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %out, label %do.body

do.body:                                          ; preds = %if.end14
  %cmp20.not = icmp eq i32 %call15, %narrow
  br i1 %cmp20.not, label %do.end32, label %do.body26, !prof !20

do.body26:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 2405; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !71
  unreachable

do.end32:                                         ; preds = %do.body
  call void @balance_dirty_pages_ratelimited(%struct.address_space* noundef %mapping) #20
  %9 = call i64 asm "mrs $0, sp_el0", "=r"() #26, !srcloc !72
  %10 = inttoptr i64 %9 to %struct.task_struct*
  %call34 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %10) #21
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %while.cond, label %out

while.end:                                        ; preds = %while.cond
  %cmp38 = icmp eq i64 %shr, %shr1
  br i1 %cmp38, label %if.then40, label %out

if.then40:                                        ; preds = %while.end
  %11 = trunc i64 %4 to i32
  %conv42 = and i32 %11, 4095
  %cmp43.not = icmp ugt i32 %conv, %conv42
  br i1 %cmp43.not, label %if.end46, label %out

if.end46:                                         ; preds = %if.then40
  %and48 = and i32 %conv42, %sub
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end55, label %if.then50

if.then50:                                        ; preds = %if.end46
  %or53 = or i64 %4, %conv7
  %inc54 = add i64 %or53, 1
  store i64 %inc54, i64* %bytes, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %if.end46
  %sub56 = sub nsw i32 %conv, %conv42
  %call57 = call i32 @pagecache_write_begin(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %4, i32 noundef %sub56, i32 noundef 0, %struct.page** noundef nonnull %page, i8** noundef nonnull %fsdata) #20
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %out

if.end60:                                         ; preds = %if.end55
  %12 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @zero_user(%struct.page* noundef %12, i32 noundef %conv42, i32 noundef %sub56) #21
  %13 = load %struct.page*, %struct.page** %page, align 8
  %14 = load i8*, i8** %fsdata, align 8
  %call61 = call i32 @pagecache_write_end(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %4, i32 noundef %sub56, i32 noundef %sub56, %struct.page* noundef %13, i8* noundef %14) #20
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %out, label %do.body66

do.body66:                                        ; preds = %if.end60
  %cmp67.not = icmp eq i32 %call61, %sub56
  br i1 %cmp67.not, label %out, label %do.body77, !prof !20

do.body77:                                        ; preds = %do.body66
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 2438; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !73
  unreachable

out:                                              ; preds = %do.end32, %if.end14, %if.end, %do.body66, %while.end, %if.end60, %if.end55, %if.then40
  %err.1 = phi i32 [ 0, %if.then40 ], [ %call57, %if.end55 ], [ %call61, %if.end60 ], [ 0, %while.end ], [ 0, %do.body66 ], [ -4, %do.end32 ], [ %call15, %if.end14 ], [ %call11, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #22
  ret i32 %err.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @block_commit_write(%struct.page* noundef %page, i32 noundef %from, i32 noundef %to) local_unnamed_addr #0 {
entry:
  call fastcc void @__block_commit_write(%struct.page* noundef %page, i32 noundef %from, i32 noundef %to) #21
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @block_page_mkwrite(%struct.vm_area_struct* nocapture noundef readonly %vma, %struct.vm_fault* nocapture noundef readonly %vmf, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block) local_unnamed_addr #0 {
entry:
  %page1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  %0 = load %struct.page*, %struct.page** %page1, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %1) #21
  call fastcc void @lock_page(%struct.page* noundef %0) #21
  %call2 = call fastcc i64 @i_size_read(%struct.inode* noundef %call) #21
  %mapping = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %2 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 7
  %3 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %cmp.not = icmp eq %struct.address_space* %2, %3
  br i1 %cmp.not, label %lor.lhs.false, label %out_unlock

lor.lhs.false:                                    ; preds = %entry
  %call3 = call fastcc i64 @page_offset(%struct.page* noundef %0) #21
  %cmp4 = icmp sgt i64 %call3, %call2
  br i1 %cmp4, label %out_unlock, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %index = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 2
  %4 = load i64, i64* %index, align 8
  %add = shl i64 %4, 12
  %shl = add i64 %add, 4096
  %cmp5 = icmp ugt i64 %shl, %call2
  %5 = trunc i64 %call2 to i32
  %phi.cast = and i32 %5, 4095
  %end.0 = select i1 %cmp5, i32 %phi.cast, i32 4096
  %call8 = call i32 @__block_write_begin(%struct.page* noundef %0, i64 noundef 0, i32 noundef %end.0, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block) #21
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end12.thread, label %if.end12

if.end12.thread:                                  ; preds = %if.end
  %call11 = call i32 @block_commit_write(%struct.page* noundef %0, i32 noundef 0, i32 noundef %end.0) #21
  br label %if.end19

if.end12:                                         ; preds = %if.end
  %cmp13 = icmp slt i32 %call8, 0
  br i1 %cmp13, label %out_unlock, label %if.end19, !prof !9

if.end19:                                         ; preds = %if.end12.thread, %if.end12
  %call20 = call i32 @set_page_dirty(%struct.page* noundef %0) #20
  call void @wait_for_stable_page(%struct.page* noundef %0) #20
  br label %cleanup

out_unlock:                                       ; preds = %entry, %lor.lhs.false, %if.end12
  %ret.1 = phi i32 [ %call8, %if.end12 ], [ -14, %lor.lhs.false ], [ -14, %entry ]
  call void @unlock_page(%struct.page* noundef %0) #20
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end19
  %retval.0 = phi i32 [ %ret.1, %out_unlock ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #10 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @page_offset(%struct.page* nocapture noundef readonly %page) unnamed_addr #10 {
entry:
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %0 = load i64, i64* %index, align 8
  %shl = shl i64 %0, 12
  ret i64 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_stable_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @nobh_write_begin(%struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, %struct.page** nocapture noundef writeonly %pagep, i8** nocapture noundef writeonly %fsdata, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block) local_unnamed_addr #0 {
entry:
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 17
  %1 = load i8, i8* %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %shr = ashr i64 %pos, 12
  %2 = trunc i64 %pos to i32
  %conv1 = and i32 %2, 4095
  %add = add i32 %conv1, %len
  %call = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* noundef %mapping, i64 noundef %shr, i32 noundef %flags) #20
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %cleanup106, label %if.end

if.end:                                           ; preds = %entry
  store %struct.page* %call, %struct.page** %pagep, align 8
  store i8* null, i8** %fsdata, align 8
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 8192
  %tobool3.not = icmp eq i64 %4, 0
  br i1 %tobool3.not, label %if.end12, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @__block_write_begin(%struct.page* noundef nonnull %call, i64 noundef %pos, i32 noundef %len, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block) #21
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup106, label %out_release, !prof !20

if.end12:                                         ; preds = %if.end
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call) #20
  %5 = inttoptr i64 %call.i to %struct.page*
  %flags.i203 = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i203, align 8
  %7 = and i64 %6, 131072
  %tobool14.not = icmp eq i64 %7, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup106

if.end16:                                         ; preds = %if.end12
  %conv17 = zext i32 %shl to i64
  %call18 = call %struct.buffer_head* @alloc_page_buffers(%struct.page* noundef nonnull %call, i64 noundef %conv17, i1 noundef false) #21
  %tobool19.not = icmp eq %struct.buffer_head* %call18, null
  br i1 %tobool19.not, label %out_release, label %if.end21

if.end21:                                         ; preds = %if.end16
  %index22 = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 1, i32 0, i32 2
  %8 = load i64, i64* %index22, align 8
  %sub = sub nsw i32 12, %conv
  %sh_prom = zext i32 %sub to i64
  %shl23 = shl i64 %8, %sh_prom
  br label %for.body

for.body:                                         ; preds = %if.end21, %for.inc
  %is_mapped_to_disk.0235 = phi i32 [ 1, %if.end21 ], [ %spec.select, %for.inc ]
  %nr_reads.0234 = phi i32 [ 0, %if.end21 ], [ %nr_reads.2.ph, %for.inc ]
  %block_start.0232 = phi i32 [ 0, %if.end21 ], [ %add26, %for.inc ]
  %block_in_page.0231 = phi i32 [ 0, %if.end21 ], [ %inc67, %for.inc ]
  %bh.0228 = phi %struct.buffer_head* [ %call18, %if.end21 ], [ %18, %for.inc ]
  %add26 = add i32 %block_start.0232, %shl
  %b_state = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0228, i64 0, i32 0
  store i64 0, i64* %b_state, align 8
  %cmp27.not = icmp ult i32 %block_start.0232, %add
  %spec.store.select = zext i1 %cmp27.not to i32
  %conv31 = zext i32 %block_in_page.0231 to i64
  %add32 = add i64 %shl23, %conv31
  %call33 = call i32 %get_block(%struct.inode* noundef %0, i64 noundef %add32, %struct.buffer_head* noundef %bh.0228, i32 noundef %spec.store.select) #20
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %do.end105

if.end36:                                         ; preds = %for.body
  %9 = load volatile i64, i64* %b_state, align 8
  %10 = and i64 %9, 16
  %tobool38.not = icmp eq i64 %10, 0
  %spec.select = select i1 %tobool38.not, i32 0, i32 %is_mapped_to_disk.0235
  %11 = load volatile i64, i64* %b_state, align 8
  %12 = and i64 %11, 32
  %tobool42.not = icmp eq i64 %12, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end36
  call fastcc void @clean_bdev_bh_alias(%struct.buffer_head* noundef %bh.0228) #21
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end36
  %call45 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %call) #21
  %tobool46.not = icmp eq i32 %call45, 0
  %13 = load volatile i64, i64* %b_state, align 8
  br i1 %tobool46.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end44
  %conv.i3.i = and i64 %13, 1
  %tobool.not.i = icmp eq i64 %conv.i3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.inc

if.then.i:                                        ; preds = %if.then47
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state) #20
  br label %for.inc

if.end48:                                         ; preds = %if.end44
  %14 = and i64 %13, 32
  %tobool50.not = icmp eq i64 %14, 0
  br i1 %tobool50.not, label %lor.lhs.false, label %if.then53

lor.lhs.false:                                    ; preds = %if.end48
  %15 = load volatile i64, i64* %b_state, align 8
  %16 = and i64 %15, 16
  %tobool52.not = icmp eq i64 %16, 0
  br i1 %tobool52.not, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false, %if.end48
  call fastcc void @zero_user_segments(%struct.page* noundef nonnull %call, i32 noundef %block_start.0232, i32 noundef %conv1, i32 noundef %add, i32 noundef %add26) #21
  br label %for.inc

if.end54:                                         ; preds = %lor.lhs.false
  %17 = load volatile i64, i64* %b_state, align 8
  %conv.i.i214225 = and i64 %17, 1
  %tobool56.not = icmp eq i64 %conv.i.i214225, 0
  br i1 %tobool56.not, label %if.end58, label %for.inc

if.end58:                                         ; preds = %if.end54
  %cmp59 = icmp ult i32 %block_start.0232, %conv1
  %cmp62 = icmp ugt i32 %add26, %add
  %or.cond = select i1 %cmp59, i1 true, i1 %cmp62
  br i1 %or.cond, label %if.then64, label %for.inc

if.then64:                                        ; preds = %if.end58
  call fastcc void @lock_buffer(%struct.buffer_head* noundef %bh.0228) #21
  %b_end_io = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0228, i64 0, i32 7
  store void (%struct.buffer_head*, i32)* @end_buffer_read_nobh, void (%struct.buffer_head*, i32)** %b_end_io, align 8
  %call65 = call i32 @submit_bh(i32 noundef 0, i32 noundef 0, %struct.buffer_head* noundef %bh.0228) #21
  %inc = add i32 %nr_reads.0234, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then53, %if.end54, %if.end58, %if.then64, %if.then47, %if.then.i
  %nr_reads.2.ph = phi i32 [ %nr_reads.0234, %if.then.i ], [ %nr_reads.0234, %if.then47 ], [ %nr_reads.0234, %if.end58 ], [ %inc, %if.then64 ], [ %nr_reads.0234, %if.end54 ], [ %nr_reads.0234, %if.then53 ]
  %inc67 = add i32 %block_in_page.0231, 1
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0228, i64 0, i32 1
  %18 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp = icmp ult i32 %add26, 4096
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %tobool69.not = icmp eq i32 %nr_reads.2.ph, 0
  br i1 %tobool69.not, label %if.end84, label %for.body73

for.body73:                                       ; preds = %for.end, %for.body73
  %ret.1238 = phi i32 [ %spec.select202, %for.body73 ], [ 0, %for.end ]
  %bh.1237 = phi %struct.buffer_head* [ %20, %for.body73 ], [ %call18, %for.end ]
  call fastcc void @wait_on_buffer(%struct.buffer_head* noundef nonnull %bh.1237) #21
  %b_state.i215 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.1237, i64 0, i32 0
  %19 = load volatile i64, i64* %b_state.i215, align 8
  %conv.i.i216224 = and i64 %19, 1
  %tobool75.not = icmp eq i64 %conv.i.i216224, 0
  %spec.select202 = select i1 %tobool75.not, i32 -5, i32 %ret.1238
  %b_this_page79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.1237, i64 0, i32 1
  %20 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page79, align 8
  %tobool72.not = icmp eq %struct.buffer_head* %20, null
  br i1 %tobool72.not, label %for.end80, label %for.body73

for.end80:                                        ; preds = %for.body73
  %tobool81.not = icmp eq i32 %spec.select202, 0
  br i1 %tobool81.not, label %if.end84, label %do.end105

if.end84:                                         ; preds = %for.end80, %for.end
  %tobool85.not = icmp eq i32 %spec.select, 0
  br i1 %tobool85.not, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.end84
  %call.i217 = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call) #20
  %21 = inttoptr i64 %call.i217 to %struct.page*
  %flags.i218 = getelementptr inbounds %struct.page, %struct.page* %21, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 17, i64* noundef %flags.i218) #20
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end84
  %22 = bitcast i8** %fsdata to %struct.buffer_head**
  store %struct.buffer_head* %call18, %struct.buffer_head** %22, align 8
  br label %cleanup106

do.end105:                                        ; preds = %for.body, %for.end80
  %ret.3 = phi i32 [ %spec.select202, %for.end80 ], [ %call33, %for.body ]
  call fastcc void @attach_nobh_buffers(%struct.page* noundef nonnull %call, %struct.buffer_head* noundef nonnull %call18) #21
  call void @page_zero_new_buffers(%struct.page* noundef nonnull %call, i32 noundef %conv1, i32 noundef %add) #21
  br label %out_release

out_release:                                      ; preds = %if.end16, %if.then4, %do.end105
  %ret.4 = phi i32 [ %call5, %if.then4 ], [ %ret.3, %do.end105 ], [ -12, %if.end16 ]
  call void @unlock_page(%struct.page* noundef nonnull %call) #20
  call fastcc void @put_page(%struct.page* noundef nonnull %call) #21
  store %struct.page* null, %struct.page** %pagep, align 8
  br label %cleanup106

cleanup106:                                       ; preds = %if.end12, %if.then4, %entry, %out_release, %if.end87
  %retval.0 = phi i32 [ %ret.4, %out_release ], [ 0, %if.end87 ], [ -12, %entry ], [ 0, %if.then4 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @end_buffer_read_nobh(%struct.buffer_head* noundef %bh, i32 noundef %uptodate) #0 {
entry:
  call fastcc void @__end_buffer_read_notouch(%struct.buffer_head* noundef %bh, i32 noundef %uptodate) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @attach_nobh_buffers(%struct.page* noundef %page, %struct.buffer_head* noundef %head) unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i41 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i.i41, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 2557; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !74
  unreachable

do.end9:                                          ; preds = %entry
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %2 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %2, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  br label %do.body10

do.body10:                                        ; preds = %if.end18, %do.end9
  %bh.0 = phi %struct.buffer_head* [ %head, %do.end9 ], [ %8, %if.end18 ]
  %call.i37 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %3 = inttoptr i64 %call.i37 to %struct.page*
  %flags.i38 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i38, align 8
  %5 = and i64 %4, 8
  %tobool12.not = icmp eq i64 %5, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %do.body10
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  %6 = load volatile i64, i64* %b_state.i, align 8
  %7 = and i64 %6, 2
  %tobool.not.i = icmp eq i64 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end14

if.then.i:                                        ; preds = %if.then13
  call fastcc void @set_bit(i64 noundef 1, i64* noundef %b_state.i) #20
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %if.then13, %do.body10
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %8 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %tobool15.not = icmp eq %struct.buffer_head* %8, null
  br i1 %tobool15.not, label %if.end18.thread, label %if.end18

if.end18.thread:                                  ; preds = %if.end14
  %b_this_page.le = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  store %struct.buffer_head* %head, %struct.buffer_head** %b_this_page.le, align 8
  br label %do.end22

if.end18:                                         ; preds = %if.end14
  %cmp.not = icmp eq %struct.buffer_head* %8, %head
  br i1 %cmp.not, label %do.end22, label %do.body10

do.end22:                                         ; preds = %if.end18, %if.end18.thread
  %9 = bitcast %struct.buffer_head* %head to i8*
  call fastcc void @attach_page_private(%struct.page* noundef %page, i8* noundef %9) #21
  %10 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %rlock.i40 = getelementptr inbounds %struct.address_space, %struct.address_space* %10, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i40) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @nobh_write_end(%struct.file* nocapture noundef readnone %file, %struct.address_space* nocapture noundef readonly %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, %struct.page* noundef %page, i8* noundef %fsdata) local_unnamed_addr #0 {
entry:
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %2 = bitcast i8* %fsdata to %struct.buffer_head*
  %cmp.not = icmp eq i8* %fsdata, null
  br i1 %cmp.not, label %if.end21, label %land.rhs

land.rhs:                                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 8192
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %do.end9.thread, label %do.body4, !prof !20

do.body4:                                         ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 2725; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !75
  unreachable

do.end9.thread:                                   ; preds = %land.rhs
  %cmp1067 = icmp ult i32 %copied, %len
  br i1 %cmp1067, label %if.then20, label %if.end21, !prof !9

if.then20:                                        ; preds = %do.end9.thread
  call fastcc void @attach_nobh_buffers(%struct.page* noundef %page, %struct.buffer_head* noundef nonnull %2) #21
  br label %if.end21

if.end21:                                         ; preds = %entry, %do.end9.thread, %if.then20
  %flags.i64 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i64, align 8
  %6 = and i64 %5, 8192
  %tobool23.not = icmp eq i64 %6, 0
  br i1 %tobool23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end21
  %call25 = call i32 @generic_write_end(%struct.file* undef, %struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, %struct.page* noundef %page, i8* undef) #21
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !64
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %flags.i64) #20
  %call27 = call i32 @set_page_dirty(%struct.page* noundef %page) #20
  %conv28 = zext i32 %copied to i64
  %add = add i64 %conv28, %pos
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 11
  %7 = load i64, i64* %i_size, align 8
  %cmp29 = icmp sgt i64 %add, %7
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end26
  call fastcc void @i_size_write(%struct.inode* noundef %1, i64 noundef %add) #21
  call fastcc void @mark_inode_dirty(%struct.inode* noundef %1) #21
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end26
  call void @unlock_page(%struct.page* noundef %page) #20
  call fastcc void @put_page(%struct.page* noundef %page) #21
  br i1 %cmp.not, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end34, %while.body
  %head.069 = phi %struct.buffer_head* [ %8, %while.body ], [ %2, %if.end34 ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %head.069, i64 0, i32 1
  %8 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  call void @free_buffer_head(%struct.buffer_head* noundef nonnull %head.069) #21
  %tobool35.not = icmp eq %struct.buffer_head* %8, null
  br i1 %tobool35.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end34, %if.then24
  %retval.0 = phi i32 [ %call25, %if.then24 ], [ %copied, %if.end34 ], [ %copied, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @nobh_writepage(%struct.page* noundef %page, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block, %struct.writeback_control* noundef %wbc) local_unnamed_addr #0 {
entry:
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %1) #21
  %shr = ashr i64 %call, 12
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %2 = load i64, i64* %index, align 8
  %cmp = icmp ult i64 %2, %shr
  br i1 %cmp, label %out, label %if.end

if.end:                                           ; preds = %entry
  %3 = trunc i64 %call to i32
  %conv = and i32 %3, 4095
  %add = add nsw i64 %shr, 1
  %cmp2 = icmp ult i64 %2, %add
  %tobool = icmp ne i32 %conv, 0
  %or.cond = select i1 %cmp2, i1 %tobool, i1 false
  br i1 %or.cond, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @unlock_page(%struct.page* noundef %page) #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call fastcc void @zero_user_segment(%struct.page* noundef %page, i32 noundef %conv) #21
  br label %out

out:                                              ; preds = %entry, %if.end5
  %call6 = call i32 @mpage_writepage(%struct.page* noundef %page, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block, %struct.writeback_control* noundef %wbc) #20
  %cmp7 = icmp eq i32 %call6, -11
  br i1 %cmp7, label %if.then9, label %cleanup

if.then9:                                         ; preds = %out
  %call10 = call i32 @__block_write_full_page(%struct.inode* noundef %1, %struct.page* noundef %page, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block, %struct.writeback_control* noundef %wbc, void (%struct.buffer_head*, i32)* noundef nonnull @end_buffer_async_write) #21
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then9, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %call10, %if.then9 ], [ %call6, %out ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user_segment(%struct.page* noundef %page, i32 noundef %start) unnamed_addr #0 {
entry:
  call fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_writepage(%struct.page* noundef, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef, %struct.writeback_control* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @nobh_truncate_page(%struct.address_space* noundef %mapping, i64 noundef %from, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* nocapture noundef readonly %get_block) local_unnamed_addr #0 {
entry:
  %map_bh = alloca %struct.buffer_head, align 8
  %shr = ashr i64 %from, 12
  %0 = trunc i64 %from to i32
  %conv = and i32 %0, 4095
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %2 = bitcast %struct.buffer_head* %map_bh to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %2) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(104) %2, i8 0, i64 104, i1 false), !annotation !17
  %call = call fastcc i32 @i_blocksize(%struct.inode* noundef %1) #21
  %sub = add i32 %call, 4095
  %and1 = and i32 %sub, %conv
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub2 = sub i32 %call, %and1
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 17
  %3 = load i8, i8* %i_blkbits, align 2
  %call5 = call fastcc %struct.page* @grab_cache_page(%struct.address_space* noundef %mapping, i64 noundef %shr) #21
  %tobool6.not = icmp eq %struct.page* %call5, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %conv3 = zext i8 %3 to i64
  %sub4 = sub nsw i64 12, %conv3
  %sh_prom = and i64 %sub4, 4294967295
  %shl = shl i64 %shr, %sh_prom
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %call5, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i, align 8
  %5 = and i64 %4, 8192
  %tobool10.not = icmp eq i64 %5, 0
  br i1 %tobool10.not, label %while.cond.preheader, label %has_buffers

while.cond.preheader:                             ; preds = %if.end8
  %cmp.not96 = icmp ult i32 %conv, %call
  br i1 %cmp.not96, label %while.end, label %while.body

has_buffers:                                      ; preds = %if.end34, %if.end8
  call void @unlock_page(%struct.page* noundef nonnull %call5) #20
  call fastcc void @put_page(%struct.page* noundef nonnull %call5) #21
  %call12 = call i32 @block_truncate_page(%struct.address_space* noundef %mapping, i64 noundef %from, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block) #21
  br label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %pos.098 = phi i32 [ %add, %while.body ], [ %call, %while.cond.preheader ]
  %iblock.097 = phi i64 [ %inc, %while.body ], [ %shl, %while.cond.preheader ]
  %inc = add i64 %iblock.097, 1
  %add = add i32 %pos.098, %call
  %cmp.not = icmp ult i32 %conv, %add
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %iblock.0.lcssa = phi i64 [ %shl, %while.cond.preheader ], [ %inc, %while.body ]
  %conv15 = zext i32 %call to i64
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 4
  store i64 %conv15, i64* %b_size, align 8
  %b_state = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 0
  store i64 0, i64* %b_state, align 8
  %call16 = call i32 %get_block(%struct.inode* noundef %1, i64 noundef %iblock.0.lcssa, %struct.buffer_head* noundef nonnull %map_bh, i32 noundef 0) #20
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %unlock

if.end19:                                         ; preds = %while.end
  %6 = load volatile i64, i64* %b_state, align 8
  %7 = and i64 %6, 16
  %tobool21.not = icmp eq i64 %7, 0
  br i1 %tobool21.not, label %unlock, label %if.end23

if.end23:                                         ; preds = %if.end19
  %call24 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %call5) #21
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end39

if.then26:                                        ; preds = %if.end23
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %8 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %readpage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %8, i64 0, i32 1
  %9 = load i32 (%struct.file*, %struct.page*)*, i32 (%struct.file*, %struct.page*)** %readpage, align 8
  %call27 = call i32 %9(%struct.file* noundef null, %struct.page* noundef nonnull %call5) #20
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.then26
  call fastcc void @put_page(%struct.page* noundef nonnull %call5) #21
  br label %cleanup

if.end30:                                         ; preds = %if.then26
  call fastcc void @lock_page(%struct.page* noundef nonnull %call5) #21
  %call31 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %call5) #21
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %unlock, label %if.end34

if.end34:                                         ; preds = %if.end30
  %10 = load volatile i64, i64* %flags.i, align 8
  %11 = and i64 %10, 8192
  %tobool36.not = icmp eq i64 %11, 0
  br i1 %tobool36.not, label %if.end39, label %has_buffers

if.end39:                                         ; preds = %if.end34, %if.end23
  call fastcc void @zero_user(%struct.page* noundef nonnull %call5, i32 noundef %conv, i32 noundef %sub2) #21
  %call40 = call i32 @set_page_dirty(%struct.page* noundef nonnull %call5) #20
  br label %unlock

unlock:                                           ; preds = %if.end30, %if.end19, %while.end, %if.end39
  %err.0 = phi i32 [ %call16, %while.end ], [ 0, %if.end39 ], [ 0, %if.end19 ], [ -5, %if.end30 ]
  call void @unlock_page(%struct.page* noundef nonnull %call5) #20
  call fastcc void @put_page(%struct.page* noundef nonnull %call5) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %unlock, %if.end, %entry, %has_buffers
  %retval.0 = phi i32 [ %call12, %has_buffers ], [ 0, %entry ], [ %err.0, %unlock ], [ %call27, %if.then29 ], [ -12, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %2) #22
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @grab_cache_page(%struct.address_space* noundef %mapping, i64 noundef %index) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %mapping) #21
  %call1 = call fastcc %struct.page* @find_or_create_page(%struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef %call) #21
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @block_truncate_page(%struct.address_space* noundef %mapping, i64 noundef %from, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* nocapture noundef readonly %get_block) local_unnamed_addr #0 {
entry:
  %bh = alloca %struct.buffer_head*, align 8
  %shr = ashr i64 %from, 12
  %0 = trunc i64 %from to i32
  %conv = and i32 %0, 4095
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %2 = bitcast %struct.buffer_head** %bh to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #22
  %call = call fastcc i32 @i_blocksize(%struct.inode* noundef %1) #21
  %sub = add i32 %call, 4095
  %and1 = and i32 %sub, %conv
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub2 = sub i32 %call, %and1
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 17
  %3 = load i8, i8* %i_blkbits, align 2
  %conv3 = zext i8 %3 to i64
  %sub4 = sub nsw i64 12, %conv3
  %sh_prom = and i64 %sub4, 4294967295
  %shl = shl i64 %shr, %sh_prom
  %call5 = call fastcc %struct.page* @grab_cache_page(%struct.address_space* noundef %mapping, i64 noundef %shr) #21
  %tobool6.not = icmp eq %struct.page* %call5, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %call5, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i, align 8
  %5 = and i64 %4, 8192
  %tobool10.not = icmp eq i64 %5, 0
  br i1 %tobool10.not, label %if.then11, label %do.body

if.then11:                                        ; preds = %if.end8
  %conv12 = zext i32 %call to i64
  call void @create_empty_buffers(%struct.page* noundef nonnull %call5, i64 noundef %conv12, i64 noundef 0) #21
  br label %do.body

do.body:                                          ; preds = %if.end8, %if.then11
  %6 = load volatile i64, i64* %flags.i, align 8
  %7 = and i64 %6, 8192
  %tobool15.not = icmp eq i64 %7, 0
  br i1 %tobool15.not, label %do.body21, label %do.end27, !prof !9

do.body21:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 2905; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !76
  unreachable

do.end27:                                         ; preds = %do.body
  %private = getelementptr inbounds %struct.page, %struct.page* %call5, i64 0, i32 1, i32 0, i32 3
  %8 = load i64, i64* %private, align 8
  %9 = inttoptr i64 %8 to %struct.buffer_head*
  %cmp.not144 = icmp ult i32 %conv, %call
  br i1 %cmp.not144, label %while.end, label %while.body

while.body:                                       ; preds = %do.end27, %while.body
  %pos.0146 = phi i32 [ %add, %while.body ], [ %call, %do.end27 ]
  %iblock.0145 = phi i64 [ %inc, %while.body ], [ %shl, %do.end27 ]
  %10 = phi %struct.buffer_head* [ %11, %while.body ], [ %9, %do.end27 ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i64 0, i32 1
  %11 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %inc = add i64 %iblock.0145, 1
  %add = add i32 %pos.0146, %call
  %cmp.not = icmp ult i32 %conv, %add
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.end27
  %.lcssa = phi %struct.buffer_head* [ %9, %do.end27 ], [ %11, %while.body ]
  %iblock.0.lcssa = phi i64 [ %shl, %do.end27 ], [ %inc, %while.body ]
  store %struct.buffer_head* %.lcssa, %struct.buffer_head** %bh, align 8
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %.lcssa, i64 0, i32 0
  %12 = load volatile i64, i64* %b_state.i, align 8
  %13 = and i64 %12, 16
  %tobool30.not = icmp eq i64 %13, 0
  br i1 %tobool30.not, label %if.then31, label %if.end65

if.then31:                                        ; preds = %while.end
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %.lcssa, i64 0, i32 4
  %14 = load i64, i64* %b_size, align 8
  %conv32 = zext i32 %call to i64
  %cmp33.not = icmp eq i64 %14, %conv32
  br i1 %cmp33.not, label %if.end48, label %if.then47, !prof !20

if.then47:                                        ; preds = %if.then31
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 2915; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !77
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.then31
  %call57 = call i32 %get_block(%struct.inode* noundef %1, i64 noundef %iblock.0.lcssa, %struct.buffer_head* noundef %.lcssa, i32 noundef 0) #20
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %unlock

if.end60:                                         ; preds = %if.end48
  %15 = load volatile i64, i64* %b_state.i, align 8
  %16 = and i64 %15, 16
  %tobool62.not = icmp eq i64 %16, 0
  br i1 %tobool62.not, label %unlock, label %if.end65

if.end65:                                         ; preds = %if.end60, %while.end
  %call66 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %call5) #21
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end65
  %17 = load volatile i64, i64* %b_state.i, align 8
  %conv.i3.i = and i64 %17, 1
  %tobool.not.i = icmp eq i64 %conv.i3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end69

if.then.i:                                        ; preds = %if.then68
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i) #20
  br label %if.end69

if.end69:                                         ; preds = %if.then.i, %if.then68, %if.end65
  %18 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i135142 = and i64 %18, 1
  %tobool71.not = icmp eq i64 %conv.i.i135142, 0
  br i1 %tobool71.not, label %land.lhs.true, label %if.end82

land.lhs.true:                                    ; preds = %if.end69
  %19 = load volatile i64, i64* %b_state.i, align 8
  %20 = and i64 %19, 256
  %tobool73.not = icmp eq i64 %20, 0
  br i1 %tobool73.not, label %land.lhs.true74, label %if.end82

land.lhs.true74:                                  ; preds = %land.lhs.true
  %21 = load volatile i64, i64* %b_state.i, align 8
  %22 = and i64 %21, 2048
  %tobool76.not = icmp eq i64 %22, 0
  br i1 %tobool76.not, label %if.then77, label %if.end82

if.then77:                                        ; preds = %land.lhs.true74
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef 1, %struct.buffer_head** noundef nonnull %bh) #21
  call fastcc void @wait_on_buffer(%struct.buffer_head* noundef %.lcssa) #21
  %23 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i141143 = and i64 %23, 1
  %tobool79.not = icmp eq i64 %conv.i.i141143, 0
  br i1 %tobool79.not, label %unlock, label %if.end82

if.end82:                                         ; preds = %if.then77, %land.lhs.true74, %land.lhs.true, %if.end69
  call fastcc void @zero_user(%struct.page* noundef nonnull %call5, i32 noundef %conv, i32 noundef %sub2) #21
  call void @mark_buffer_dirty(%struct.buffer_head* noundef %.lcssa) #21
  br label %unlock

unlock:                                           ; preds = %if.then77, %if.end60, %if.end48, %if.end82
  %err.0 = phi i32 [ 0, %if.end82 ], [ -5, %if.then77 ], [ %call57, %if.end48 ], [ 0, %if.end60 ]
  call void @unlock_page(%struct.page* noundef nonnull %call5) #20
  call fastcc void @put_page(%struct.page* noundef nonnull %call5) #21
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %err.0, %unlock ], [ -12, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #22
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @block_write_full_page(%struct.page* noundef %page, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* nocapture noundef readonly %get_block, %struct.writeback_control* noundef %wbc) local_unnamed_addr #0 {
entry:
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %1) #21
  %shr = ashr i64 %call, 12
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %2 = load i64, i64* %index, align 8
  %cmp = icmp ult i64 %2, %shr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @__block_write_full_page(%struct.inode* noundef %1, %struct.page* noundef %page, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block, %struct.writeback_control* noundef %wbc, void (%struct.buffer_head*, i32)* noundef nonnull @end_buffer_async_write) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = trunc i64 %call to i32
  %conv = and i32 %3, 4095
  %add = add nsw i64 %shr, 1
  %cmp3 = icmp ult i64 %2, %add
  %tobool = icmp ne i32 %conv, 0
  %or.cond = select i1 %cmp3, i1 %tobool, i1 false
  br i1 %or.cond, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @unlock_page(%struct.page* noundef %page) #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call fastcc void @zero_user_segment(%struct.page* noundef %page, i32 noundef %conv) #21
  %call7 = call i32 @__block_write_full_page(%struct.inode* noundef %1, %struct.page* noundef %page, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block, %struct.writeback_control* noundef %wbc, void (%struct.buffer_head*, i32)* noundef nonnull @end_buffer_async_write) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call7, %if.end6 ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @generic_block_bmap(%struct.address_space* nocapture noundef readonly %mapping, i64 noundef %block, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* nocapture noundef readonly %get_block) local_unnamed_addr #0 {
entry:
  %tmp = alloca %struct.buffer_head, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %1 = bitcast %struct.buffer_head* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %1) #22
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %tmp, i64 0, i32 4
  %2 = bitcast %struct.buffer_head* %tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(104) %2, i8 0, i64 104, i1 false)
  %call = call fastcc i32 @i_blocksize(%struct.inode* noundef %0) #21
  %conv = zext i32 %call to i64
  store i64 %conv, i64* %b_size, align 8
  %call1 = call i32 %get_block(%struct.inode* noundef %0, i64 noundef %block, %struct.buffer_head* noundef nonnull %tmp, i32 noundef 0) #20
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %tmp, i64 0, i32 3
  %3 = load i64, i64* %b_blocknr, align 8
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %1) #22
  ret i64 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_bh(%struct.buffer_head* noundef %bh) unnamed_addr #0 {
entry:
  %b_count = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 11
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %b_count) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @write_dirty_buffer(%struct.buffer_head* noundef %bh, i32 noundef %op_flags) local_unnamed_addr #0 {
entry:
  call fastcc void @lock_buffer(%struct.buffer_head* noundef %bh) #21
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %call.i = call fastcc i1 @test_and_clear_bit(i64* noundef %b_state.i) #20
  br i1 %call.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @unlock_buffer(%struct.buffer_head* noundef %bh) #21
  br label %return

if.end:                                           ; preds = %entry
  %b_end_io = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 7
  store void (%struct.buffer_head*, i32)* @end_buffer_write_sync, void (%struct.buffer_head*, i32)** %b_end_io, align 8
  call fastcc void @get_bh(%struct.buffer_head* noundef %bh) #21
  %call1 = call i32 @submit_bh(i32 noundef 1, i32 noundef %op_flags, %struct.buffer_head* noundef %bh) #21
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__sync_dirty_buffer(%struct.buffer_head* noundef %bh, i32 noundef %op_flags) local_unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 11, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 3141; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !78
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @lock_buffer(%struct.buffer_head* noundef %bh) #21
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %call.i = call fastcc i1 @test_and_clear_bit(i64* noundef %b_state.i) #20
  br i1 %call.i, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  %1 = load volatile i64, i64* %b_state.i, align 8
  %2 = and i64 %1, 16
  %tobool18.not = icmp eq i64 %2, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  call void @unlock_buffer(%struct.buffer_head* noundef %bh) #21
  br label %cleanup

if.end20:                                         ; preds = %if.then16
  call fastcc void @get_bh(%struct.buffer_head* noundef %bh) #21
  %b_end_io = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 7
  store void (%struct.buffer_head*, i32)* @end_buffer_write_sync, void (%struct.buffer_head*, i32)** %b_end_io, align 8
  %call21 = call i32 @submit_bh(i32 noundef 1, i32 noundef %op_flags, %struct.buffer_head* noundef %bh) #21
  call fastcc void @wait_on_buffer(%struct.buffer_head* noundef %bh) #21
  %3 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i4445 = and i64 %3, 1
  %tobool24.not = icmp eq i64 %conv.i.i4445, 0
  %spec.select = select i1 %tobool24.not, i32 -5, i32 0
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @unlock_buffer(%struct.buffer_head* noundef %bh) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.else, %if.then19
  %retval.0 = phi i32 [ -5, %if.then19 ], [ 0, %if.else ], [ %spec.select, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sync_dirty_buffer(%struct.buffer_head* noundef %bh) local_unnamed_addr #0 {
entry:
  %call = call i32 @__sync_dirty_buffer(%struct.buffer_head* noundef %bh, i32 noundef 2048) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @try_to_free_buffers(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %buffers_to_free = alloca %struct.buffer_head*, align 8
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %1 = bitcast %struct.buffer_head** %buffers_to_free to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #22
  store %struct.buffer_head* null, %struct.buffer_head** %buffers_to_free, align 8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i53 = and i64 %3, 1
  %tobool.not = icmp eq i64 %conv.i.i53, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !9

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 3231; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !79
  unreachable

do.end10:                                         ; preds = %entry
  %call.i49 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %4 = inttoptr i64 %call.i49 to %struct.page*
  %flags.i50 = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i50, align 8
  %6 = and i64 %5, 32768
  %tobool12.not = icmp eq i64 %6, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %do.end10
  %cmp = icmp eq %struct.address_space* %0, null
  br i1 %cmp, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %call17 = call fastcc i32 @drop_buffers(%struct.page* noundef %page, %struct.buffer_head** noundef nonnull %buffers_to_free) #21
  br label %out

if.end18:                                         ; preds = %if.end14
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %call19 = call fastcc i32 @drop_buffers(%struct.page* noundef %page, %struct.buffer_head** noundef nonnull %buffers_to_free) #21
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call fastcc void @cancel_dirty_page(%struct.page* noundef %page) #21
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  br label %out

out:                                              ; preds = %if.end22, %if.then16
  %ret.0 = phi i32 [ %call17, %if.then16 ], [ %call19, %if.end22 ]
  %7 = load %struct.buffer_head*, %struct.buffer_head** %buffers_to_free, align 8
  %tobool24.not = icmp eq %struct.buffer_head* %7, null
  br i1 %tobool24.not, label %cleanup, label %do.body26

do.body26:                                        ; preds = %out, %do.body26
  %bh.0 = phi %struct.buffer_head* [ %8, %do.body26 ], [ %7, %out ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %8 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  call void @free_buffer_head(%struct.buffer_head* noundef %bh.0) #21
  %cmp28.not = icmp eq %struct.buffer_head* %8, %7
  br i1 %cmp28.not, label %cleanup, label %do.body26

cleanup:                                          ; preds = %do.body26, %out, %do.end10
  %retval.0 = phi i32 [ 0, %do.end10 ], [ %ret.0, %out ], [ %ret.0, %do.body26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #22
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @drop_buffers(%struct.page* noundef %page, %struct.buffer_head** nocapture noundef writeonly %buffers_to_free) unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 8192
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 3201; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !80
  unreachable

do.end9:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %2 = load i64, i64* %private, align 8
  %3 = inttoptr i64 %2 to %struct.buffer_head*
  br label %do.body10

do.body10:                                        ; preds = %if.end14, %do.end9
  %bh.0 = phi %struct.buffer_head* [ %3, %do.end9 ], [ %4, %if.end14 ]
  %call11 = call fastcc i32 @buffer_busy(%struct.buffer_head* noundef %bh.0) #21
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %do.body10
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %4 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp.not = icmp eq %struct.buffer_head* %4, %3
  br i1 %cmp.not, label %do.body18, label %do.body10

do.body18:                                        ; preds = %if.end14, %if.end22
  %bh.1 = phi %struct.buffer_head* [ %5, %if.end22 ], [ %3, %if.end14 ]
  %b_this_page19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.1, i64 0, i32 1
  %5 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page19, align 8
  %b_assoc_map = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.1, i64 0, i32 10
  %6 = load %struct.address_space*, %struct.address_space** %b_assoc_map, align 8
  %tobool20.not = icmp eq %struct.address_space* %6, null
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %do.body18
  call fastcc void @__remove_assoc_queue(%struct.buffer_head* noundef %bh.1) #21
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.body18
  %cmp24.not = icmp eq %struct.buffer_head* %5, %3
  br i1 %cmp24.not, label %do.end26, label %do.body18

do.end26:                                         ; preds = %if.end22
  store %struct.buffer_head* %3, %struct.buffer_head** %buffers_to_free, align 8
  call fastcc void @detach_page_private(%struct.page* noundef %page) #21
  br label %cleanup

cleanup:                                          ; preds = %do.body10, %do.end26
  %retval.0 = phi i32 [ 1, %do.end26 ], [ 0, %do.body10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cancel_dirty_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__cancel_dirty_page(%struct.page* noundef %page) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k, i32 noundef %flags) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 256
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef %or) #20
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @recalc_bh_state() unnamed_addr #12 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call, ptrtoint (i32* getelementptr inbounds (%struct.bh_accounting, %struct.bh_accounting* @bh_accounting, i64 0, i32 1) to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %add7 = add i32 %1, 1
  store i32 %add7, i32* %0, align 4
  %cmp = icmp slt i32 %1, 4096
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call23 = call fastcc i64 @__kern_my_cpu_offset() #21
  %add24 = add i64 %call23, ptrtoint (i32* getelementptr inbounds (%struct.bh_accounting, %struct.bh_accounting* @bh_accounting, i64 0, i32 1) to i64)
  %2 = inttoptr i64 %add24 to i32*
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %call2959 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #27
  %cmp3060 = icmp ult i32 %call2959, %3
  br i1 %cmp3060, label %do.body31, label %for.end

do.body31:                                        ; preds = %if.end, %do.body31
  %call2962 = phi i32 [ %call29, %do.body31 ], [ %call2959, %if.end ]
  %tot.061 = phi i32 [ %add39, %do.body31 ], [ 0, %if.end ]
  %idxprom = sext i32 %call2962 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add38 = add i64 %4, ptrtoint (%struct.bh_accounting* @bh_accounting to i64)
  %5 = inttoptr i64 %add38 to %struct.bh_accounting*
  %nr = getelementptr inbounds %struct.bh_accounting, %struct.bh_accounting* %5, i64 0, i32 0
  %6 = load i32, i32* %nr, align 4
  %add39 = add i32 %6, %tot.061
  %call29 = call i32 @cpumask_next(i32 noundef %call2962, %struct.cpumask* noundef nonnull @__cpu_online_mask) #27
  %cmp30 = icmp ult i32 %call29, %3
  br i1 %cmp30, label %do.body31, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %do.body31
  %phi.cast = sext i32 %add39 to i64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %tot.0.lcssa = phi i64 [ 0, %if.end ], [ %phi.cast, %for.end.loopexit ]
  %7 = load i64, i64* @max_buffer_heads, align 8
  %cmp40 = icmp ult i64 %7, %tot.0.lcssa
  %conv41 = zext i1 %cmp40 to i32
  store i32 %conv41, i32* @buffer_heads_over_limit, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bh_uptodate_or_lock(%struct.buffer_head* noundef %bh) local_unnamed_addr #0 {
entry:
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i10 = and i64 %0, 1
  %tobool.not = icmp eq i64 %conv.i.i10, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  call fastcc void @lock_buffer(%struct.buffer_head* noundef %bh) #21
  %1 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i911 = and i64 %1, 1
  %tobool2.not = icmp eq i64 %conv.i.i911, 0
  br i1 %tobool2.not, label %return, label %if.end

if.end:                                           ; preds = %if.then
  call void @unlock_buffer(%struct.buffer_head* noundef %bh) #21
  br label %return

return:                                           ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bh_submit_read(%struct.buffer_head* noundef %bh) local_unnamed_addr #0 {
entry:
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %1 = and i64 %0, 4
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 3374; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !81
  unreachable

do.end7:                                          ; preds = %entry
  %2 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i2528 = and i64 %2, 1
  %tobool9.not = icmp eq i64 %conv.i.i2528, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %do.end7
  call void @unlock_buffer(%struct.buffer_head* noundef %bh) #21
  br label %return

if.end11:                                         ; preds = %do.end7
  call fastcc void @get_bh(%struct.buffer_head* noundef %bh) #21
  %b_end_io = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 7
  store void (%struct.buffer_head*, i32)* @end_buffer_read_sync, void (%struct.buffer_head*, i32)** %b_end_io, align 8
  %call12 = call i32 @submit_bh(i32 noundef 0, i32 noundef 0, %struct.buffer_head* noundef %bh) #21
  call fastcc void @wait_on_buffer(%struct.buffer_head* noundef %bh) #21
  %3 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i2729 = and i64 %3, 1
  %tobool14.not = icmp eq i64 %conv.i.i2729, 0
  %. = select i1 %tobool14.not, i32 -5, i32 0
  br label %return

return:                                           ; preds = %if.end11, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ %., %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @buffer_init() local_unnamed_addr #13 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 noundef 104, i32 noundef 0, i32 noundef 1441792, void (i8*)* noundef null) #20
  store %struct.kmem_cache* %call, %struct.kmem_cache** @bh_cachep, align 8
  %call1 = call i64 @nr_free_buffer_pages() #20
  %mul = mul i64 %call1, 10
  %div = udiv i64 %mul, 100
  %mul2 = mul nuw nsw i64 %div, 39
  store i64 %mul2, i64* @max_buffer_heads, align 8
  %call3 = call fastcc i32 @cpuhp_setup_state_nocalls() #21
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 3409; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !82
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nr_free_buffer_pages() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state_nocalls() unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 27, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i1 noundef false, i32 (i32)* noundef null, i32 (i32)* noundef nonnull @buffer_exit_cpu_dead, i1 noundef false) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @buffer_exit_cpu_dead(i32 noundef %cpu) #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.bh_lru* @bh_lrus to i64)
  %1 = inttoptr i64 %add to %struct.bh_lru*
  %arrayidx3 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 0
  %2 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %2) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3, align 8
  %arrayidx3.1 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 1
  %3 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.1, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %3) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.1, align 8
  %arrayidx3.2 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 2
  %4 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.2, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %4) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.2, align 8
  %arrayidx3.3 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 3
  %5 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.3, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %5) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.3, align 8
  %arrayidx3.4 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 4
  %6 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.4, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %6) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.4, align 8
  %arrayidx3.5 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 5
  %7 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.5, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %7) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.5, align 8
  %arrayidx3.6 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 6
  %8 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.6, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %8) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.6, align 8
  %arrayidx3.7 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 7
  %9 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.7, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %9) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.7, align 8
  %arrayidx3.8 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.8, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %10) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.8, align 8
  %arrayidx3.9 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 9
  %11 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.9, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %11) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.9, align 8
  %arrayidx3.10 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 10
  %12 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.10, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %12) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.10, align 8
  %arrayidx3.11 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 11
  %13 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.11, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %13) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.11, align 8
  %arrayidx3.12 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 12
  %14 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.12, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %14) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.12, align 8
  %arrayidx3.13 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 13
  %15 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.13, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %15) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.13, align 8
  %arrayidx3.14 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 14
  %16 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.14, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %16) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.14, align 8
  %arrayidx3.15 = getelementptr %struct.bh_lru, %struct.bh_lru* %1, i64 0, i32 0, i64 15
  %17 = load %struct.buffer_head*, %struct.buffer_head** %arrayidx3.15, align 8
  call fastcc void @brelse(%struct.buffer_head* noundef %17) #21
  store %struct.buffer_head* null, %struct.buffer_head** %arrayidx3.15, align 8
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !83
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %add19 = add i64 %call, ptrtoint (%struct.bh_accounting* @bh_accounting to i64)
  %18 = inttoptr i64 %add19 to i8*
  %19 = load i64, i64* %arrayidx, align 8
  %add29 = add i64 %19, ptrtoint (%struct.bh_accounting* @bh_accounting to i64)
  %20 = inttoptr i64 %add29 to %struct.bh_accounting*
  %nr = getelementptr inbounds %struct.bh_accounting, %struct.bh_accounting* %20, i64 0, i32 0
  %21 = load i32, i32* %nr, align 4
  %conv = sext i32 %21 to i64
  call fastcc void @__percpu_add_case_32(i8* noundef %18, i64 noundef %conv) #21
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !84
  %22 = load i64, i64* %arrayidx, align 8
  %add41 = add i64 %22, ptrtoint (%struct.bh_accounting* @bh_accounting to i64)
  %23 = inttoptr i64 %add41 to %struct.bh_accounting*
  %nr42 = getelementptr inbounds %struct.bh_accounting, %struct.bh_accounting* %23, i64 0, i32 0
  store i32 0, i32* %nr42, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #20
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_lock(i8* noundef, i32 noundef, i32 (%struct.wait_bit_key*, i32)* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_io(%struct.wait_bit_key* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #22, !srcloc !85
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_fetch_andnot_release(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 4, i64* elementtype(i64) %counter) #22, !srcloc !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !20

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
declare dso_local i32 @out_of_line_wait_on_bit(i8* noundef, i32 noundef, i32 (%struct.wait_bit_key*, i32)* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #22, !srcloc !87
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #22, !srcloc !88
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #22, !srcloc !89
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #21
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #21
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #20
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !20

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #20
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #22, !srcloc !90
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #22, !srcloc !91
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #22, !srcloc !92
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #21
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #21
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !93
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #22, !srcloc !94
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #22, !srcloc !95
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !96
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #20
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !20

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #20
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #5 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #5 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #5 {
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
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #21
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !97
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(%struct.blk_plug* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(%struct.blk_plug* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @osync_buffers_list(%struct.spinlock* noundef %lock, %struct.list_head* noundef readonly %list) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %lock, i64 0, i32 0, i32 0
  br label %repeat

repeat:                                           ; preds = %if.then, %entry
  %err.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.then ]
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  br label %for.cond

for.cond:                                         ; preds = %for.body, %repeat
  %list.pn = phi %struct.list_head* [ %list, %repeat ], [ %p.0, %for.body ]
  %p.0.in = getelementptr inbounds %struct.list_head, %struct.list_head* %list.pn, i64 0, i32 1
  %p.0 = load %struct.list_head*, %struct.list_head** %p.0.in, align 8
  %cmp.not = icmp eq %struct.list_head* %p.0, %list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %p.0, i64 -5, i32 1
  %b_state.i = bitcast %struct.list_head** %add.ptr to i64*
  %0 = load volatile i64, i64* %b_state.i, align 8
  %1 = and i64 %0, 4
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  %b_state.i.le = bitcast %struct.list_head** %add.ptr to i64*
  %2 = bitcast %struct.list_head** %add.ptr to %struct.buffer_head*
  call fastcc void @get_bh(%struct.buffer_head* noundef %2) #21
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  call fastcc void @wait_on_buffer(%struct.buffer_head* noundef %2) #21
  %3 = load volatile i64, i64* %b_state.i.le, align 8
  %conv.i.i2225 = and i64 %3, 1
  %tobool2.not = icmp eq i64 %conv.i.i2225, 0
  %spec.select = select i1 %tobool2.not, i32 -5, i32 %err.0
  call fastcc void @brelse(%struct.buffer_head* noundef %2) #21
  br label %repeat

for.end:                                          ; preds = %for.cond
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(%struct.address_space* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !98
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !99
  call void @rcu_read_unlock_strict() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_irqs_on() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #21
  %call9 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #21
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %do.end20, label %do.body13, !prof !20

do.body13:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 1222; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !100
  unreachable

do.end20:                                         ; preds = %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @find_get_page_flags(%struct.address_space* noundef %mapping, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call = call %struct.page* @pagecache_get_page(%struct.address_space* noundef %mapping, i64 noundef %offset, i32 noundef 1, i32 noundef 0) #20
  ret %struct.page* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @ratelimit_set_flags() unnamed_addr #9 {
entry:
  store i64 1, i64* getelementptr inbounds (%struct.ratelimit_state, %struct.ratelimit_state* @__find_get_block_slow.last_warned, i64 0, i32 6), align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @pagecache_get_page(%struct.address_space* noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @lru_cache_disabled() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @lru_disable_count, i64 0, i32 0), align 4
  %tobool = icmp ne i32 %0, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdev_logical_block_size(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #10 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #21
  %call1 = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %call) #21
  ret i32 %call1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @grow_buffers(%struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size, i32 noundef %gfp) unnamed_addr #0 {
entry:
  %0 = zext i32 %size to i64
  %1 = call i64 @llvm.cttz.i64(i64 %0, i1 false), !range !101
  %2 = trunc i64 %1 to i32
  %conv1 = sub nsw i32 12, %2
  %sh_prom = zext i32 %conv1 to i64
  %shr = lshr i64 %block, %sh_prom
  %call8 = call fastcc i32 @grow_dev_page(%struct.block_device* noundef %bdev, i64 noundef %block, i64 noundef %shr, i32 noundef %size, i32 noundef %conv1, i32 noundef %gfp) #21
  ret i32 %call8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef readonly %q) unnamed_addr #10 {
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
define internal fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #10 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 9
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  ret %struct.request_queue* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @grow_dev_page(%struct.block_device* noundef %bdev, i64 noundef %block, i64 noundef %index, i32 noundef %size, i32 noundef %sizebits, i32 noundef %gfp) unnamed_addr #0 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call = call fastcc i32 @mapping_gfp_constraint(%struct.address_space* noundef %1) #21
  %or = or i32 %call, %gfp
  %or1 = or i32 %or, 32768
  %call3 = call fastcc %struct.page* @find_or_create_page(%struct.address_space* noundef %1, i64 noundef %index, i32 noundef %or1) #21
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %call3) #20
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i93 = and i64 %3, 1
  %tobool.not = icmp eq i64 %conv.i.i93, 0
  br i1 %tobool.not, label %do.body8, label %do.end13, !prof !9

do.body8:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 951; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !102
  unreachable

do.end13:                                         ; preds = %entry
  %flags.i88 = getelementptr inbounds %struct.page, %struct.page* %call3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i88, align 8
  %5 = and i64 %4, 8192
  %tobool15.not = icmp eq i64 %5, 0
  br i1 %tobool15.not, label %do.end13.if.end48_crit_edge, label %do.body17

do.end13.if.end48_crit_edge:                      ; preds = %do.end13
  %.pre = sext i32 %size to i64
  br label %if.end48

do.body17:                                        ; preds = %do.end13
  %6 = load volatile i64, i64* %flags.i88, align 8
  %7 = and i64 %6, 8192
  %tobool19.not = icmp eq i64 %7, 0
  br i1 %tobool19.not, label %do.body30, label %do.end38, !prof !9

do.body30:                                        ; preds = %do.body17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 954; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !103
  unreachable

do.end38:                                         ; preds = %do.body17
  %private = getelementptr inbounds %struct.page, %struct.page* %call3, i64 0, i32 1, i32 0, i32 3
  %8 = load i64, i64* %private, align 8
  %9 = inttoptr i64 %8 to %struct.buffer_head*
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i64 0, i32 4
  %10 = load i64, i64* %b_size, align 8
  %conv39 = sext i32 %size to i64
  %cmp = icmp eq i64 %10, %conv39
  br i1 %cmp, label %if.then41, label %if.end43

if.then41:                                        ; preds = %do.end38
  %sh_prom = zext i32 %sizebits to i64
  %shl = shl i64 %index, %sh_prom
  %call42 = call fastcc i64 @init_page_buffers(%struct.page* noundef %call3, %struct.block_device* noundef %bdev, i64 noundef %shl, i32 noundef %size) #21
  br label %done

if.end43:                                         ; preds = %do.end38
  %call44 = call i32 @try_to_free_buffers(%struct.page* noundef %call3) #21
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %failed, label %if.end48

if.end48:                                         ; preds = %do.end13.if.end48_crit_edge, %if.end43
  %conv49.pre-phi = phi i64 [ %.pre, %do.end13.if.end48_crit_edge ], [ %conv39, %if.end43 ]
  %call50 = call %struct.buffer_head* @alloc_page_buffers(%struct.page* noundef %call3, i64 noundef %conv49.pre-phi, i1 noundef true) #21
  %11 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %11, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  call fastcc void @link_dev_buffers(%struct.page* noundef %call3, %struct.buffer_head* noundef %call50) #21
  %sh_prom52 = zext i32 %sizebits to i64
  %shl53 = shl i64 %index, %sh_prom52
  %call54 = call fastcc i64 @init_page_buffers(%struct.page* noundef %call3, %struct.block_device* noundef %bdev, i64 noundef %shl53, i32 noundef %size) #21
  %12 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %rlock.i92 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i92) #20
  br label %done

done:                                             ; preds = %if.end48, %if.then41
  %end_block.0 = phi i64 [ %call42, %if.then41 ], [ %call54, %if.end48 ]
  %cmp57 = icmp ugt i64 %end_block.0, %block
  %cond = select i1 %cmp57, i32 1, i32 -6
  br label %failed

failed:                                           ; preds = %if.end43, %done
  %ret.0 = phi i32 [ %cond, %done ], [ 0, %if.end43 ]
  call void @unlock_page(%struct.page* noundef %call3) #20
  call fastcc void @put_page(%struct.page* noundef %call3) #21
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mapping_gfp_constraint(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #10 {
entry:
  %call = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %mapping) #21
  %and = and i32 %call, -129
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @find_or_create_page(%struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %call = call %struct.page* @pagecache_get_page(%struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef 7, i32 noundef %gfp_mask) #20
  ret %struct.page* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @init_page_buffers(%struct.page* noundef %page, %struct.block_device* noundef %bdev, i64 noundef %block, i32 noundef %size) unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 8192
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/buffer.c\22; .popsection; .long 14472b - 14470b; .short 897; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !104
  unreachable

do.end9:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %2 = load i64, i64* %private, align 8
  %3 = inttoptr i64 %2 to %struct.buffer_head*
  %call10 = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #21
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %4 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call11 = call %struct.block_device* @I_BDEV(%struct.inode* noundef %4) #20
  %call12 = call fastcc i64 @blkdev_max_block(%struct.block_device* noundef %call11, i32 noundef %size) #21
  %tobool17.not = icmp eq i32 %call10, 0
  br label %do.body13

do.body13:                                        ; preds = %if.end23, %do.end9
  %block.addr.0 = phi i64 [ %block, %do.end9 ], [ %inc, %if.end23 ]
  %bh.0 = phi %struct.buffer_head* [ %3, %do.end9 ], [ %10, %if.end23 ]
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  %5 = load volatile i64, i64* %b_state.i, align 8
  %6 = and i64 %5, 16
  %tobool15.not = icmp eq i64 %6, 0
  br i1 %tobool15.not, label %if.then16, label %if.end23

if.then16:                                        ; preds = %do.body13
  %b_end_io = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 7
  store void (%struct.buffer_head*, i32)* null, void (%struct.buffer_head*, i32)** %b_end_io, align 8
  %b_private = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 8
  store i8* null, i8** %b_private, align 8
  %b_bdev = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 6
  store %struct.block_device* %bdev, %struct.block_device** %b_bdev, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 3
  store i64 %block.addr.0, i64* %b_blocknr, align 8
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.then16
  %7 = load volatile i64, i64* %b_state.i, align 8
  %conv.i3.i = and i64 %7, 1
  %tobool.not.i = icmp eq i64 %conv.i3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end19

if.then.i:                                        ; preds = %if.then18
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %b_state.i) #20
  br label %if.end19

if.end19:                                         ; preds = %if.then.i, %if.then18, %if.then16
  %cmp = icmp ult i64 %block.addr.0, %call12
  br i1 %cmp, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %8 = load volatile i64, i64* %b_state.i, align 8
  %9 = and i64 %8, 16
  %tobool.not.i50 = icmp eq i64 %9, 0
  br i1 %tobool.not.i50, label %if.then.i51, label %if.end23

if.then.i51:                                      ; preds = %if.then21
  call fastcc void @set_bit(i64 noundef 4, i64* noundef %b_state.i) #20
  br label %if.end23

if.end23:                                         ; preds = %if.then.i51, %if.then21, %if.end19, %do.body13
  %inc = add i64 %block.addr.0, 1
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %10 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp25.not = icmp eq %struct.buffer_head* %10, %3
  br i1 %cmp25.not, label %do.end27, label %do.body13

do.end27:                                         ; preds = %if.end23
  ret i64 %call12
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @link_dev_buffers(%struct.page* noundef %page, %struct.buffer_head* noundef %head) unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %bh.0 = phi %struct.buffer_head* [ %head, %entry ], [ %0, %do.body ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %0 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %tobool.not = icmp eq %struct.buffer_head* %0, null
  br i1 %tobool.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %b_this_page.le = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  store %struct.buffer_head* %head, %struct.buffer_head** %b_this_page.le, align 8
  %1 = bitcast %struct.buffer_head* %head to i8*
  call fastcc void @attach_page_private(%struct.page* noundef %page, i8* noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mapping_gfp_mask(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #10 {
entry:
  %gfp_mask = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 3
  %0 = load i32, i32* %gfp_mask, align 8
  ret i32 %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @blkdev_max_block(%struct.block_device* nocapture noundef readonly %bdev, i32 noundef %size) unnamed_addr #6 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %0) #21
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i32 @blksize_bits(i32 noundef %size) #21
  %sh_prom = zext i32 %call2 to i64
  %shr = ashr i64 %call, %sh_prom
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %retval1.0 = phi i64 [ %shr, %if.then ], [ -1, %entry ]
  ret i64 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @I_BDEV(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i32 @blksize_bits(i32 noundef %size) unnamed_addr #15 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %size.addr.0 = phi i32 [ %size, %entry ], [ %shr, %do.body ]
  %bits.0 = phi i32 [ 8, %entry ], [ %inc, %do.body ]
  %inc = add nuw nsw i32 %bits.0, 1
  %shr = lshr i32 %size.addr.0, 1
  %cmp = icmp ugt i32 %size.addr.0, 513
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  ret i32 %inc
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(i1 (i32, i8*)* noundef, void (i8*)* noundef, i8* noundef, i1 noundef, %struct.cpumask* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #16

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #21
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #22, !srcloc !105
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #21
  %0 = inttoptr i64 %call to %struct.page*
  call fastcc void @page_ref_inc(%struct.page* noundef %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_page_private(%struct.page* nocapture noundef writeonly %page, i64 noundef %private) unnamed_addr #9 {
entry:
  %private1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  store i64 %private, i64* %private1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_inc(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %_refcount) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #22, !srcloc !106
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #21
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64 noundef 0, i64* noundef %flags) #21
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #20
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #22, !srcloc !107
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(%struct.pagevec* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u32(i32 noundef %n) unnamed_addr #11 {
entry:
  %tobool.not.i = icmp eq i32 %n, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %n, i1 false) #22, !range !108
  %narrow.i.op = sub nsw i32 31, %0
  %sub = select i1 %tobool.not.i, i32 -1, i32 %narrow.i.op
  ret i32 %sub
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 2
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %1) #20
  %2 = and i64 %call.i.i.i, 2
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 2, i64* elementtype(i64) %counter) #22, !srcloc !109
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__test_set_page_writeback(%struct.page* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !110
  call fastcc void @pagefault_disable() #21
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @page_size(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @compound_order(%struct.page* noundef %page) #21
  %sh_prom = zext i32 %call to i64
  %shl = shl i64 4096, %sh_prom
  ret i64 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #0 {
entry:
  call fastcc void @pagefault_enable() #21
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !111
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @compound_nr(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %compound_nr = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1, i32 0, i32 1
  %2 = bitcast %struct.address_space** %compound_nr to i32*
  %3 = load i32, i32* %2, align 8
  %conv = zext i32 %3 to i64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ 1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #26, !srcloc !72
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !112
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %3 = bitcast %union.anon* %2 to %struct.anon.63*
  %compound_order = getelementptr inbounds %struct.anon.63, %struct.anon.63* %3, i64 0, i32 2
  %4 = load i8, i8* %compound_order, align 1
  %conv = zext i8 %4 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !113
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #26, !srcloc !72
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #21
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #20
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #22, !srcloc !114
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @end_buffer_async_read_io(%struct.buffer_head* noundef %bh, i32 noundef %uptodate) #0 {
entry:
  call fastcc void @end_buffer_async_read(%struct.buffer_head* noundef %bh, i32 noundef %uptodate) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(%struct.address_space* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #21
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p) #21
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #10 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #21
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #21
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #21
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #17 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #10 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @bio_alloc() unnamed_addr #0 {
entry:
  %call = call %struct.bio* @bio_alloc_bioset(i32 noundef 3072, i16 noundef 1, %struct.bio_set* noundef nonnull @fs_bio_set) #20
  ret %struct.bio* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_clear_flag(%struct.bio* nocapture noundef %bio, i32 noundef %bit) unnamed_addr #18 {
entry:
  %shl = shl nuw i32 1, %bit
  %bi_flags = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 3
  %0 = load i16, i16* %bi_flags, align 4
  %1 = trunc i32 %shl to i16
  %2 = xor i16 %1, -1
  %conv1 = and i16 %0, %2
  store i16 %conv1, i16* %bi_flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(%struct.bio* noundef, %struct.page* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @end_bio_bh_io_sync(%struct.bio* noundef %bio) #0 {
entry:
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  %0 = bitcast i8** %bi_private to %struct.buffer_head**
  %1 = load %struct.buffer_head*, %struct.buffer_head** %0, align 8
  %call = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio) #21
  br i1 %call, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  %b_state = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %1, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 12, i64* noundef %b_state) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %b_end_io = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %1, i64 0, i32 7
  %2 = load void (%struct.buffer_head*, i32)*, void (%struct.buffer_head*, i32)** %b_end_io, align 8
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  %3 = load i8, i8* %bi_status, align 2
  %tobool2.not = icmp eq i8 %3, 0
  %lnot.ext4 = zext i1 %tobool2.not to i32
  call void %2(%struct.buffer_head* noundef %1, i32 noundef %lnot.ext4) #20
  call void @bio_put(%struct.bio* noundef %bio) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @bio_set_op_attrs(%struct.bio* nocapture noundef writeonly %bio, i32 noundef %op, i32 noundef %op_flags) unnamed_addr #9 {
entry:
  %or = or i32 %op_flags, %op
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  store i32 %or, i32* %bi_opf, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @guard_bio_eod(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.bio* @bio_alloc_bioset(i32 noundef, i16 noundef, %struct.bio_set* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bio_flagged(%struct.bio* nocapture noundef readonly %bio) unnamed_addr #10 {
entry:
  %bi_flags = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 3
  %0 = load i16, i16* %bi_flags, align 4
  %1 = and i16 %0, 16
  %cmp = icmp ne i16 %1, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @buffer_busy(%struct.buffer_head* noundef %bh) unnamed_addr #3 {
entry:
  %counter.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 11, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %b_state = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %1 = load i64, i64* %b_state, align 8
  %2 = trunc i64 %1 to i32
  %3 = and i32 %2, 6
  %conv1 = or i32 %3, %0
  ret i32 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @detach_page_private(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 8192
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clear_bit(i64 noundef 13, i64* noundef %flags.i) #20
  call fastcc void @set_page_private(%struct.page* noundef %page, i64 noundef 0) #21
  call fastcc void @put_page(%struct.page* noundef %page) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cancel_dirty_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %conv = trunc i64 %val to i32
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #22, !srcloc !115
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree nounwind readonly }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #19 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #20 = { nobuiltin nounwind "no-builtins" }
attributes #21 = { nobuiltin "no-builtins" }
attributes #22 = { nounwind }
attributes #23 = { cold nobuiltin nounwind "no-builtins" }
attributes #24 = { nounwind readonly }
attributes #25 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #26 = { nounwind readnone }
attributes #27 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{i64 2155842805}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155843938}
!11 = !{i64 2155849469}
!12 = !{i64 2155661351}
!13 = !{i64 2155863110}
!14 = !{i64 2155864558}
!15 = !{i64 2155866370}
!16 = !{i64 2149820026}
!17 = !{!"auto-init"}
!18 = !{i64 2155876726}
!19 = !{i64 2155879146}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2155872263}
!22 = !{i64 2155895964}
!23 = !{i64 2155896311}
!24 = !{i64 2155873875}
!25 = !{i64 2155868150}
!26 = !{i64 2156053123}
!27 = !{i64 2156057873}
!28 = !{i64 2155964316}
!29 = !{i64 2156063098}
!30 = !{i64 2156063447}
!31 = !{i64 2156068736}
!32 = !{i64 2155900983}
!33 = !{i64 2155853368}
!34 = !{i64 2155960671}
!35 = !{i64 2155961506}
!36 = !{i64 2148943511, i64 2148943558, i64 2148943564, i64 2148943601, i64 2148943619, i64 2148944960, i64 2148945008, i64 2148945056, i64 2148945119, i64 2148945168, i64 2148943697, i64 2148943722, i64 2148943748, i64 2148943754, i64 2148944626, i64 2148944666, i64 2148944684, i64 2148944716, i64 2148944744, i64 2148944798, i64 2148944818, i64 2148944915, i64 2148943777, i64 2148943791, i64 2148943797, i64 2148943847, i64 2148943893, i64 2148943926}
!37 = !{i64 2149092520, i64 2149092567, i64 2149092573, i64 2149092610, i64 2149092628, i64 2149093555, i64 2149093603, i64 2149093651, i64 2149093714, i64 2149093763, i64 2149092706, i64 2149092731, i64 2149092757, i64 2149092763, i64 2149092800, i64 2149092806, i64 2149092856, i64 2149092902, i64 2149092935}
!38 = !{i64 2148934055, i64 2148934102, i64 2148934108, i64 2148934145, i64 2148934163, i64 2148935503, i64 2148935551, i64 2148935599, i64 2148935662, i64 2148935711, i64 2148934241, i64 2148934266, i64 2148934292, i64 2148934298, i64 2148935169, i64 2148935209, i64 2148935227, i64 2148935259, i64 2148935287, i64 2148935341, i64 2148935361, i64 2148935458, i64 2148934321, i64 2148934335, i64 2148934341, i64 2148934391, i64 2148934437, i64 2148934470}
!39 = !{i64 2155966671}
!40 = !{i64 2155968167}
!41 = !{i64 2155969620}
!42 = !{i64 2150880279}
!43 = !{i64 2155971507}
!44 = !{i64 2155979237}
!45 = !{i64 2155980566}
!46 = !{i64 2155981910}
!47 = !{i64 2155973440}
!48 = !{i64 2155977603}
!49 = !{i64 2156027686}
!50 = !{i64 2156029028}
!51 = !{i64 2156030360}
!52 = !{i64 2156031698}
!53 = !{i64 2156033044}
!54 = !{i64 2156034995}
!55 = !{i64 2155987416}
!56 = !{i64 2155988892}
!57 = !{i64 2155994561}
!58 = !{i64 2155997435}
!59 = !{i64 2155998759}
!60 = !{i64 2156000370}
!61 = !{i64 2155993090}
!62 = !{i64 2154973271}
!63 = !{i64 2156001950}
!64 = !{i64 2150881108}
!65 = !{i64 2156003939}
!66 = !{i64 2156007930}
!67 = !{i64 2155855692}
!68 = !{i64 2155857140}
!69 = !{i64 2155858952}
!70 = !{i64 2156009365}
!71 = !{i64 2156011159}
!72 = !{i64 1538286}
!73 = !{i64 2156012603}
!74 = !{i64 2156018639}
!75 = !{i64 2156021797}
!76 = !{i64 2156024191}
!77 = !{i64 2156025798}
!78 = !{i64 2156036894}
!79 = !{i64 2156040091}
!80 = !{i64 2156038716}
!81 = !{i64 2156083848}
!82 = !{i64 2156085914}
!83 = !{i64 2156078961}
!84 = !{i64 2156079803}
!85 = !{i64 2147879771, i64 2147880423, i64 2147880453, i64 2147880484, i64 2147880516, i64 2147880551, i64 2147880576}
!86 = !{i64 2147893443, i64 2147894123, i64 2147894153, i64 2147894184, i64 2147894216, i64 2147894251, i64 2147894276}
!87 = !{i64 2147819566, i64 2147820082, i64 2147820112, i64 2147820139, i64 2147820173, i64 2147820203}
!88 = !{i64 2147878925, i64 2147879436, i64 2147879466, i64 2147879492, i64 2147879524, i64 2147879553}
!89 = !{i64 2147889495, i64 2147890016, i64 2147890046, i64 2147890072, i64 2147890104, i64 2147890133}
!90 = !{i64 2148949214, i64 2148949261, i64 2148949267, i64 2148949304, i64 2148949322, i64 2148950633, i64 2148950681, i64 2148950729, i64 2148950792, i64 2148950841, i64 2148949400, i64 2148949425, i64 2148949451, i64 2148949457, i64 2148950299, i64 2148950339, i64 2148950357, i64 2148950389, i64 2148950417, i64 2148950471, i64 2148950491, i64 2148950588, i64 2148949480, i64 2148949494, i64 2148949500, i64 2148949550, i64 2148949596, i64 2148949629}
!91 = !{i64 2148951393, i64 2148951440, i64 2148951446, i64 2148951483, i64 2148951501, i64 2148952444, i64 2148952492, i64 2148952540, i64 2148952603, i64 2148952652, i64 2148951579, i64 2148951604, i64 2148951630, i64 2148951636, i64 2148951673, i64 2148951679, i64 2148951729, i64 2148951775, i64 2148951808}
!92 = !{i64 2147905707, i64 2147905740, i64 2147905793, i64 2147905852, i64 2147905886, i64 2147905941, i64 2147905970, i64 2147905990}
!93 = !{i64 2149849930}
!94 = !{i64 2149789156}
!95 = !{i64 2148955227, i64 2148955274, i64 2148955280, i64 2148955317, i64 2148955335, i64 2148956646, i64 2148956694, i64 2148956742, i64 2148956805, i64 2148956854, i64 2148955413, i64 2148955438, i64 2148955464, i64 2148955470, i64 2148956312, i64 2148956352, i64 2148956370, i64 2148956402, i64 2148956430, i64 2148956484, i64 2148956504, i64 2148956601, i64 2148955493, i64 2148955507, i64 2148955513, i64 2148955563, i64 2148955609, i64 2148955642}
!96 = !{i64 2149835027}
!97 = !{i64 2149846369}
!98 = !{i64 2149465907}
!99 = !{i64 2149466124}
!100 = !{i64 2155904145}
!101 = !{i64 0, i64 65}
!102 = !{i64 2155887199}
!103 = !{i64 2155888670}
!104 = !{i64 2155885731}
!105 = !{i64 2147924565, i64 2147924598, i64 2147924649, i64 2147924705, i64 2147924738, i64 2147924793, i64 2147924822, i64 2147924849}
!106 = !{i64 2147809845, i64 2147810361, i64 2147810391, i64 2147810418, i64 2147810452, i64 2147810482}
!107 = !{i64 2147881813, i64 2147882483, i64 2147882513, i64 2147882545, i64 2147882577, i64 2147882611, i64 2147882636}
!108 = !{i32 0, i32 33}
!109 = !{i64 2147890348, i64 2147891010, i64 2147891040, i64 2147891071, i64 2147891103, i64 2147891138, i64 2147891163}
!110 = !{i64 2154964214}
!111 = !{i64 2154966472}
!112 = !{i64 2150928869}
!113 = !{i64 2150929076}
!114 = !{i64 2147820418, i64 2147821066, i64 2147821096, i64 2147821128, i64 2147821162, i64 2147821198, i64 2147821223}
!115 = !{i64 2149117410, i64 2149117452, i64 2149117511, i64 2149117564}
