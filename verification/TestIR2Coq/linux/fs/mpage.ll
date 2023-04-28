; ModuleID = 'fs/mpage.c'
source_filename = "fs/mpage.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.kmem_cache = type opaque
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.39, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.72, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.73 }
%union.anon.73 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [48 x i8] }
%struct.anon.2 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.3, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.60 }
%union.anon.60 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.13, %union.anon.59, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.59 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.61, %union.anon.62 }
%union.anon.61 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.62 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.27, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.26, [0 x i64] }
%struct.anon.26 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.55, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.30 }
%union.anon.30 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.32 = type { i32 }
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
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.40, %union.anon.41, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.77, %union.anon.78, %union.anon.79, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.82, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.77 = type { %struct.hlist_node }
%union.anon.78 = type { %struct.rb_node }
%union.anon.79 = type { %struct.anon.81 }
%struct.anon.81 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.82 = type { %struct.__call_single_data }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_dir }
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
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.42 }
%struct.anon.42 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.54, i32, [12 x i8] }
%union.anon.54 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.56, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.56 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.27 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.28, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.29, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.28 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.29 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.70 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.68, %struct.qspinlock }
%union.anon.68 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.70 = type { %struct.nfs_lock_info }
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
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.72 = type { %struct.pipe_inode_info* }
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
%struct.export_operations = type { i32 (%struct.inode*, i32*, i32*, %struct.inode*)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, i32 (%struct.dentry*, i8*, %struct.dentry*)*, %struct.dentry* (%struct.dentry*)*, i32 (%struct.inode*)*, i32 (%struct.super_block*, i8*, i32*, i64*)*, i32 (%struct.inode*, i64, i64, %struct.iomap*, i1, i32*)*, i32 (%struct.inode*, %struct.iomap*, i32, %struct.iattr*)*, i64 (%struct.inode*)*, i64 }
%struct.fid = type { %union.anon.10 }
%union.anon.10 = type { %struct.anon.12 }
%struct.anon.12 = type { i32, i16, i16, i32, i32, i32 }
%struct.iomap = type opaque
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
%union.anon.39 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.workqueue_struct = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.buffer_head = type { i64, %struct.buffer_head*, %struct.page*, i64, i64, i8*, %struct.block_device*, void (%struct.buffer_head*, i32)*, i8*, %struct.list_head, %struct.address_space*, %struct.atomic_t, %struct.spinlock }
%struct.mpage_readpage_args = type { %struct.bio*, %struct.page*, i32, i8, i64, %struct.buffer_head, i64, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* }
%struct.mpage_data = type { %struct.bio*, i64, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)*, i32 }
%struct.anon.22 = type { i64, i8, i8, %struct.atomic_t, i32 }
%struct.bvec_iter_all = type { %struct.bio_vec, i32, i32 }

@fs_bio_set = external dso_local global %struct.bio_set, align 8
@buffer_heads_over_limit = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mpage_readahead(%struct.readahead_control* nocapture noundef %rac, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block) local_unnamed_addr #0 {
entry:
  %args = alloca %struct.mpage_readpage_args, align 8
  %0 = bitcast %struct.mpage_readpage_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %0) #10
  %is_readahead = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 3
  %1 = bitcast %struct.mpage_readpage_args* %args to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  store i8 1, i8* %is_readahead, align 4
  %get_block2 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 7
  store i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* %get_block, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)** %get_block2, align 8
  %call14 = call fastcc %struct.page* @readahead_page(%struct.readahead_control* noundef %rac) #11
  %tobool.not15 = icmp eq %struct.page* %call14, null
  br i1 %tobool.not15, label %if.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %page3 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 1
  %nr_pages = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 2
  %bio = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %call16 = phi %struct.page* [ %call14, %while.body.lr.ph ], [ %call, %while.body ]
  %2 = bitcast %struct.page* %call16 to i8*
  call fastcc void @prefetchw(i8* noundef nonnull %2) #11
  store %struct.page* %call16, %struct.page** %page3, align 8
  %call4 = call fastcc i32 @readahead_count(%struct.readahead_control* noundef %rac) #11
  store i32 %call4, i32* %nr_pages, align 8
  %call5 = call fastcc %struct.bio* @do_mpage_readpage(%struct.mpage_readpage_args* noundef nonnull %args) #11
  store %struct.bio* %call5, %struct.bio** %bio, align 8
  call fastcc void @put_page(%struct.page* noundef nonnull %call16) #11
  %call = call fastcc %struct.page* @readahead_page(%struct.readahead_control* noundef %rac) #11
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %.pre = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool7.not = icmp eq %struct.bio* %.pre, null
  br i1 %tobool7.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  call fastcc void @mpage_bio_submit(i32 noundef 0, i32 noundef 524288, %struct.bio* noundef nonnull %.pre) #11
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %while.end
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %0) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @readahead_page(%struct.readahead_control* nocapture noundef %rac) unnamed_addr #0 {
entry:
  %_batch_count = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 5
  %0 = load i32, i32* %_batch_count, align 4
  %_nr_pages = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 4
  %1 = load i32, i32* %_nr_pages, align 8
  %cmp = icmp ult i32 %1, %0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !7

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/pagemap.h\22; .popsection; .long 14472b - 14470b; .short 922; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !8
  unreachable

do.end7:                                          ; preds = %entry
  %sub = sub i32 %1, %0
  store i32 %sub, i32* %_nr_pages, align 8
  %conv11 = zext i32 %0 to i64
  %_index = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 3
  %2 = load i64, i64* %_index, align 8
  %add = add i64 %2, %conv11
  store i64 %add, i64* %_index, align 8
  %tobool13.not = icmp eq i32 %sub, 0
  br i1 %tobool13.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %do.end7
  %mapping = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 1
  %3 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %3, i64 0, i32 1
  %call = call i8* @xa_load(%struct.xarray* noundef %i_pages, i64 noundef %add) #12
  %4 = bitcast i8* %call to %struct.page*
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end16
  %storemerge = phi i32 [ 1, %if.end16 ], [ 0, %do.end7 ]
  %retval.0 = phi %struct.page* [ %4, %if.end16 ], [ null, %do.end7 ]
  store i32 %storemerge, i32* %_batch_count, align 4
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prefetchw(i8* noundef %ptr) unnamed_addr #0 {
entry:
  call void asm sideeffect "prfm pstl1keep, ${0:a}\0A", "r"(i8* %ptr) #10, !srcloc !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @readahead_count(%struct.readahead_control* nocapture noundef readonly %rac) unnamed_addr #3 {
entry:
  %_nr_pages = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %rac, i64 0, i32 4
  %0 = load i32, i32* %_nr_pages, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @do_mpage_readpage(%struct.mpage_readpage_args* noundef %args) unnamed_addr #0 {
entry:
  %blocks = alloca [8 x i64], align 8
  %page1 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 1
  %0 = load %struct.page*, %struct.page** %page1, align 8
  %mapping = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 0
  %2 = load %struct.inode*, %struct.inode** %host, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 17
  %3 = load i8, i8* %i_blkbits, align 2
  %conv = zext i8 %3 to i32
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 4096, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %shl = shl nuw i32 1, %conv
  %map_bh3 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 5
  %4 = bitcast [8 x i64]* %blocks to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false), !annotation !10
  %is_readahead = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 3
  %5 = load i8, i8* %is_readahead, align 4, !range !11
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @readahead_gfp_mask(%struct.address_space* noundef %1) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = call fastcc i32 @mapping_gfp_constraint(%struct.address_space* noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %op_flags.0 = phi i32 [ 524288, %if.then ], [ 0, %if.else ]
  %gfp.0 = phi i32 [ %call, %if.then ], [ %call6, %if.else ]
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i, align 8
  %7 = and i64 %6, 8192
  %tobool8.not = icmp eq i64 %7, 0
  br i1 %tobool8.not, label %if.end10, label %confused

if.end10:                                         ; preds = %if.end
  %index = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 2
  %8 = load i64, i64* %index, align 8
  %sub = sub nsw i32 12, %conv
  %sh_prom11 = zext i32 %sub to i64
  %shl12 = shl i64 %8, %sh_prom11
  %nr_pages = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 2
  %9 = load i32, i32* %nr_pages, align 8
  %mul = mul i32 %9, %conv2
  %conv13 = zext i32 %mul to i64
  %add = add i64 %shl12, %conv13
  %call14 = call fastcc i64 @i_size_read(%struct.inode* noundef %2) #11
  %conv15 = zext i32 %shl to i64
  %add16 = add nsw i64 %conv15, -1
  %sub17 = add i64 %add16, %call14
  %shr19 = ashr i64 %sub17, %sh_prom
  %cmp = icmp ugt i64 %add, %shr19
  %spec.select = select i1 %cmp, i64 %shr19, i64 %add
  %b_size = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 5, i32 4
  %10 = load i64, i64* %b_size, align 8
  %shr24 = lshr i64 %10, %sh_prom
  %conv25 = trunc i64 %shr24 to i32
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh3, i64 0, i32 0
  %11 = load volatile i64, i64* %b_state.i, align 8
  %12 = and i64 %11, 16
  %tobool27.not = icmp eq i64 %12, 0
  br i1 %tobool27.not, label %if.end55, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %first_logical_block = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 6
  %13 = load i64, i64* %first_logical_block, align 8
  %cmp28 = icmp ugt i64 %shl12, %13
  br i1 %cmp28, label %land.lhs.true30, label %if.end55

land.lhs.true30:                                  ; preds = %land.lhs.true
  %conv32 = and i64 %shr24, 4294967295
  %add33 = add i64 %13, %conv32
  %cmp34 = icmp ult i64 %shl12, %add33
  br i1 %cmp34, label %if.then36, label %if.end55

if.then36:                                        ; preds = %land.lhs.true30
  %sub38 = sub i64 %shl12, %13
  %conv39 = trunc i64 %sub38 to i32
  %sub40 = sub i32 %conv25, %conv39
  %cmp41438 = icmp eq i32 %sub40, 0
  br i1 %cmp41438, label %if.then43, label %if.end44.lr.ph

if.end44.lr.ph:                                   ; preds = %if.then36
  %b_blocknr = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 5, i32 3
  %conv49 = and i64 %sub38, 4294967295
  %14 = zext i32 %sub40 to i64
  %15 = add nsw i64 %14, -1
  %umin = call i64 @llvm.umin.i64(i64 %shr, i64 %15)
  %16 = add nuw nsw i64 %umin, 1
  %min.iters.check = icmp ult i64 %umin, 2
  br i1 %min.iters.check, label %if.end44.preheader, label %vector.ph

if.end44.preheader:                               ; preds = %vector.body, %if.end44.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %if.end44.lr.ph ], [ %n.vec, %vector.body ]
  %block_in_file.0439.ph = phi i64 [ %shl12, %if.end44.lr.ph ], [ %ind.end, %vector.body ]
  br label %if.end44

vector.ph:                                        ; preds = %if.end44.lr.ph
  %n.mod.vf = and i64 %16, 1
  %17 = icmp eq i64 %n.mod.vf, 0
  %18 = select i1 %17, i64 2, i64 %n.mod.vf
  %n.vec = sub nsw i64 %16, %18
  %ind.end = add i64 %shl12, %n.vec
  %19 = load i64, i64* %b_blocknr, align 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index587 = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %induction588 = or i64 %index587, 1
  %20 = add nuw nsw i64 %conv49, %index587
  %21 = add nuw nsw i64 %conv49, %induction588
  %22 = add i64 %20, %19
  %23 = add i64 %21, %19
  %24 = getelementptr [8 x i64], [8 x i64]* %blocks, i64 0, i64 %index587
  %25 = getelementptr [8 x i64], [8 x i64]* %blocks, i64 0, i64 %induction588
  store i64 %22, i64* %24, align 8
  store i64 %23, i64* %25, align 8
  %index.next = add nuw i64 %index587, 2
  %26 = icmp eq i64 %index.next, %n.vec
  br i1 %26, label %if.end44.preheader, label %vector.body, !llvm.loop !12

if.then43:                                        ; preds = %if.end48, %if.then36
  %block_in_file.0.lcssa = phi i64 [ %shl12, %if.then36 ], [ %inc53, %if.end48 ]
  call fastcc void @clear_bit(i64 noundef 4, i64* noundef %b_state.i) #12
  br label %for.end

if.end44:                                         ; preds = %if.end44.preheader, %if.end48
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end48 ], [ %indvars.iv.ph, %if.end44.preheader ]
  %block_in_file.0439 = phi i64 [ %inc53, %if.end48 ], [ %block_in_file.0439.ph, %if.end44.preheader ]
  %cmp45 = icmp eq i64 %indvars.iv, %shr
  br i1 %cmp45, label %for.end, label %if.end48

if.end48:                                         ; preds = %if.end44
  %27 = load i64, i64* %b_blocknr, align 8
  %add50 = add nuw nsw i64 %conv49, %indvars.iv
  %add52 = add i64 %add50, %27
  %arrayidx = getelementptr [8 x i64], [8 x i64]* %blocks, i64 0, i64 %indvars.iv
  store i64 %add52, i64* %arrayidx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %inc53 = add i64 %block_in_file.0439, 1
  %cmp41 = icmp eq i64 %indvars.iv.next, %14
  br i1 %cmp41, label %if.then43, label %if.end44, !llvm.loop !14

for.end:                                          ; preds = %if.end44, %if.then43
  %block_in_file.0437 = phi i64 [ %block_in_file.0.lcssa, %if.then43 ], [ %block_in_file.0439, %if.end44 ]
  %page_block.0435 = phi i32 [ %sub40, %if.then43 ], [ %conv2, %if.end44 ]
  %b_bdev = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 5, i32 6
  %28 = load %struct.block_device*, %struct.block_device** %b_bdev, align 8
  br label %if.end55

if.end55:                                         ; preds = %for.end, %land.lhs.true30, %land.lhs.true, %if.end10
  %block_in_file.1 = phi i64 [ %block_in_file.0437, %for.end ], [ %shl12, %land.lhs.true30 ], [ %shl12, %land.lhs.true ], [ %shl12, %if.end10 ]
  %page_block.1 = phi i32 [ %page_block.0435, %for.end ], [ 0, %land.lhs.true30 ], [ 0, %land.lhs.true ], [ 0, %if.end10 ]
  %bdev.0 = phi %struct.block_device* [ %28, %for.end ], [ null, %land.lhs.true30 ], [ null, %land.lhs.true ], [ null, %if.end10 ]
  %b_page = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 5, i32 2
  store %struct.page* %0, %struct.page** %b_page, align 8
  %cmp56449461 = icmp ult i32 %page_block.1, %conv2
  br i1 %cmp56449461, label %while.body.lr.ph.lr.ph, label %if.end138

while.body.lr.ph.lr.ph:                           ; preds = %if.end55
  %get_block = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 7
  %first_logical_block70 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 6
  %b_blocknr95 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 5, i32 3
  %b_bdev125 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 5, i32 6
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.then74
  %tobool135.not = phi i1 [ false, %while.body.lr.ph.lr.ph ], [ true, %if.then74 ]
  %bdev.1.ph465 = phi %struct.block_device* [ %bdev.0, %while.body.lr.ph.lr.ph ], [ %bdev.1452, %if.then74 ]
  %first_hole.0.ph464 = phi i32 [ %conv2, %while.body.lr.ph.lr.ph ], [ %spec.select401, %if.then74 ]
  %page_block.2.ph463 = phi i32 [ %page_block.1, %while.body.lr.ph.lr.ph ], [ %inc79, %if.then74 ]
  %block_in_file.2.ph462 = phi i64 [ %block_in_file.1, %while.body.lr.ph.lr.ph ], [ %inc80, %if.then74 ]
  %cmp86.not = icmp eq i32 %first_hole.0.ph464, %conv2
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %for.end124
  %bdev.1452 = phi %struct.block_device* [ %bdev.1.ph465, %while.body.lr.ph ], [ %60, %for.end124 ]
  %page_block.2451 = phi i32 [ %page_block.2.ph463, %while.body.lr.ph ], [ %page_block.3.lcssa, %for.end124 ]
  %block_in_file.2450 = phi i64 [ %block_in_file.2.ph462, %while.body.lr.ph ], [ %block_in_file.3.lcssa, %for.end124 ]
  store i64 0, i64* %b_state.i, align 8
  store i64 0, i64* %b_size, align 8
  %cmp59 = icmp ugt i64 %spec.select, %block_in_file.2450
  br i1 %cmp59, label %if.then61, label %if.end71

if.then61:                                        ; preds = %while.body
  %sub62 = sub i64 %spec.select, %block_in_file.2450
  %shl64 = shl i64 %sub62, %sh_prom
  store i64 %shl64, i64* %b_size, align 8
  %29 = load i32 (%struct.inode*, i64, %struct.buffer_head*, i32)*, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)** %get_block, align 8
  %call66 = call i32 %29(%struct.inode* noundef %2, i64 noundef %block_in_file.2450, %struct.buffer_head* noundef %map_bh3, i32 noundef 0) #12
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %confused

if.end69:                                         ; preds = %if.then61
  store i64 %block_in_file.2450, i64* %first_logical_block70, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.end69, %while.body
  %30 = load volatile i64, i64* %b_state.i, align 8
  %31 = and i64 %30, 16
  %tobool73.not = icmp eq i64 %31, 0
  br i1 %tobool73.not, label %if.then74, label %if.end81

if.then74:                                        ; preds = %if.end71
  %spec.select401 = select i1 %cmp86.not, i32 %page_block.2451, i32 %first_hole.0.ph464
  %inc79 = add nuw i32 %page_block.2451, 1
  %inc80 = add i64 %block_in_file.2450, 1
  %cmp56449 = icmp ult i32 %inc79, %conv2
  br i1 %cmp56449, label %while.body.lr.ph, label %while.end

if.end81:                                         ; preds = %if.end71
  %32 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i407416 = and i64 %32, 1
  %tobool83.not = icmp eq i64 %conv.i.i407416, 0
  br i1 %tobool83.not, label %if.end85, label %if.then84

if.then84:                                        ; preds = %if.end81
  call fastcc void @map_buffer_to_page(%struct.page* noundef %0, %struct.buffer_head* noundef %map_bh3, i32 noundef %page_block.2451) #11
  br label %confused

if.end85:                                         ; preds = %if.end81
  br i1 %cmp86.not, label %if.end89, label %confused

if.end89:                                         ; preds = %if.end85
  %tobool90.not = icmp eq i32 %page_block.2451, 0
  br i1 %tobool90.not, label %if.end100, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.end89
  %sub92 = add i32 %page_block.2451, -1
  %idxprom93 = zext i32 %sub92 to i64
  %arrayidx94 = getelementptr [8 x i64], [8 x i64]* %blocks, i64 0, i64 %idxprom93
  %33 = load i64, i64* %arrayidx94, align 8
  %34 = load i64, i64* %b_blocknr95, align 8
  %sub96 = add i64 %34, -1
  %cmp97.not = icmp eq i64 %33, %sub96
  br i1 %cmp97.not, label %if.end100, label %confused

if.end100:                                        ; preds = %land.lhs.true91, %if.end89
  %35 = load i64, i64* %b_size, align 8
  %shr103 = lshr i64 %35, %sh_prom
  %conv104 = trunc i64 %shr103 to i32
  %cmp106443 = icmp eq i32 %conv104, 0
  br i1 %cmp106443, label %for.end124, label %if.else109.preheader

if.else109.preheader:                             ; preds = %if.end100
  %36 = and i64 %shr103, 4294967295
  %37 = add nsw i64 %36, -1
  %38 = sub i32 %conv2, %page_block.2451
  %39 = zext i32 %38 to i64
  %umin592 = call i64 @llvm.umin.i64(i64 %37, i64 %39)
  %40 = add nuw nsw i64 %umin592, 1
  %min.iters.check596 = icmp ult i64 %umin592, 2
  br i1 %min.iters.check596, label %if.else109.preheader615, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %if.else109.preheader
  %41 = add nsw i64 %36, -1
  %42 = sub i32 %conv2, %page_block.2451
  %43 = zext i32 %42 to i64
  %umin591 = call i64 @llvm.umin.i64(i64 %41, i64 %43)
  %44 = trunc i64 %umin591 to i32
  %45 = xor i32 %page_block.2451, -1
  %46 = icmp ult i32 %45, %44
  br i1 %46, label %if.else109.preheader615, label %vector.ph597

vector.ph597:                                     ; preds = %vector.scevcheck
  %n.mod.vf598 = and i64 %40, 1
  %47 = icmp eq i64 %n.mod.vf598, 0
  %48 = select i1 %47, i64 2, i64 %n.mod.vf598
  %n.vec599 = sub nsw i64 %40, %48
  %cast.crd = trunc i64 %n.vec599 to i32
  %ind.end602 = add i32 %page_block.2451, %cast.crd
  %ind.end604 = add i64 %block_in_file.2450, %n.vec599
  %49 = load i64, i64* %b_blocknr95, align 8
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph597
  %index605 = phi i64 [ 0, %vector.ph597 ], [ %index.next614, %vector.body595 ]
  %induction607 = or i64 %index605, 1
  %50 = trunc i64 %index605 to i32
  %offset.idx608 = add i32 %page_block.2451, %50
  %induction610 = add i32 %offset.idx608, 1
  %51 = add i64 %49, %index605
  %52 = add i64 %49, %induction607
  %53 = zext i32 %offset.idx608 to i64
  %54 = zext i32 %induction610 to i64
  %55 = getelementptr [8 x i64], [8 x i64]* %blocks, i64 0, i64 %53
  %56 = getelementptr [8 x i64], [8 x i64]* %blocks, i64 0, i64 %54
  store i64 %51, i64* %55, align 8
  store i64 %52, i64* %56, align 8
  %index.next614 = add nuw i64 %index605, 2
  %57 = icmp eq i64 %index.next614, %n.vec599
  br i1 %57, label %if.else109.preheader615, label %vector.body595, !llvm.loop !15

if.else109.preheader615:                          ; preds = %vector.body595, %vector.scevcheck, %if.else109.preheader
  %indvars.iv494.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %if.else109.preheader ], [ %n.vec599, %vector.body595 ]
  %page_block.3445.ph = phi i32 [ %page_block.2451, %vector.scevcheck ], [ %page_block.2451, %if.else109.preheader ], [ %ind.end602, %vector.body595 ]
  %block_in_file.3444.ph = phi i64 [ %block_in_file.2450, %vector.scevcheck ], [ %block_in_file.2450, %if.else109.preheader ], [ %ind.end604, %vector.body595 ]
  br label %if.else109

if.else109:                                       ; preds = %if.else109.preheader615, %if.end114
  %indvars.iv494 = phi i64 [ %indvars.iv.next495, %if.end114 ], [ %indvars.iv494.ph, %if.else109.preheader615 ]
  %page_block.3445 = phi i32 [ %inc120, %if.end114 ], [ %page_block.3445.ph, %if.else109.preheader615 ]
  %block_in_file.3444 = phi i64 [ %inc121, %if.end114 ], [ %block_in_file.3444.ph, %if.else109.preheader615 ]
  %cmp110 = icmp eq i32 %page_block.3445, %conv2
  br i1 %cmp110, label %for.end124.thread, label %if.end114

for.end124.thread:                                ; preds = %if.else109
  %58 = load %struct.block_device*, %struct.block_device** %b_bdev125, align 8
  br label %if.else134

if.end114:                                        ; preds = %if.else109
  %59 = load i64, i64* %b_blocknr95, align 8
  %add117 = add i64 %59, %indvars.iv494
  %idxprom118 = zext i32 %page_block.3445 to i64
  %arrayidx119 = getelementptr [8 x i64], [8 x i64]* %blocks, i64 0, i64 %idxprom118
  store i64 %add117, i64* %arrayidx119, align 8
  %inc120 = add i32 %page_block.3445, 1
  %inc121 = add i64 %block_in_file.3444, 1
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1
  %cmp106 = icmp eq i64 %indvars.iv.next495, %36
  br i1 %cmp106, label %for.end124, label %if.else109, !llvm.loop !16

for.end124:                                       ; preds = %if.end114, %if.end100
  %block_in_file.3.lcssa = phi i64 [ %block_in_file.2450, %if.end100 ], [ %inc121, %if.end114 ]
  %page_block.3.lcssa = phi i32 [ %page_block.2451, %if.end100 ], [ %inc120, %if.end114 ]
  call fastcc void @clear_bit(i64 noundef 4, i64* noundef %b_state.i) #12
  %60 = load %struct.block_device*, %struct.block_device** %b_bdev125, align 8
  %cmp56 = icmp ult i32 %page_block.3.lcssa, %conv2
  br i1 %cmp56, label %while.body, label %if.else134

while.end:                                        ; preds = %if.then74
  %cmp126.not = icmp eq i32 %spec.select401, %conv2
  br i1 %cmp126.not, label %if.end151, label %if.then128

if.then128:                                       ; preds = %while.end
  %shl129 = shl i32 %spec.select401, %conv
  call fastcc void @zero_user_segment(%struct.page* noundef %0, i32 noundef %shl129) #11
  %cmp130 = icmp eq i32 %spec.select401, 0
  br i1 %cmp130, label %if.then132, label %if.end151

if.then132:                                       ; preds = %if.then128
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !17
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %flags.i) #12
  call void @unlock_page(%struct.page* noundef %0) #12
  br label %out

if.else134:                                       ; preds = %for.end124, %for.end124.thread
  %block_in_file.2.lcssa.ph = phi i64 [ %block_in_file.3444, %for.end124.thread ], [ %block_in_file.3.lcssa, %for.end124 ]
  %bdev.1.lcssa.ph = phi %struct.block_device* [ %58, %for.end124.thread ], [ %60, %for.end124 ]
  br i1 %tobool135.not, label %if.end151, label %if.end138

if.end138:                                        ; preds = %if.end55, %if.else134
  %bdev.1.lcssa.ph537 = phi %struct.block_device* [ %bdev.1.lcssa.ph, %if.else134 ], [ %bdev.0, %if.end55 ]
  %block_in_file.2.lcssa.ph536 = phi i64 [ %block_in_file.2.lcssa.ph, %if.else134 ], [ %block_in_file.1, %if.end55 ]
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %0) #12
  %61 = inttoptr i64 %call.i to %struct.page*
  %flags.i410 = getelementptr inbounds %struct.page, %struct.page* %61, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 17, i64* noundef %flags.i410) #12
  %cmp141 = icmp eq i32 %conv2, 1
  br i1 %cmp141, label %land.lhs.true143, label %if.end151

land.lhs.true143:                                 ; preds = %if.end138
  %call144 = call fastcc i32 @PageUptodate(%struct.page* noundef %0) #11
  br label %if.end151

if.end151:                                        ; preds = %if.then128, %while.end, %land.lhs.true143, %if.else134, %if.end138
  %cmp126.not521 = phi i1 [ true, %land.lhs.true143 ], [ true, %if.else134 ], [ true, %if.end138 ], [ true, %while.end ], [ false, %if.then128 ]
  %bdev.1.lcssa518 = phi %struct.block_device* [ %bdev.1.lcssa.ph537, %land.lhs.true143 ], [ %bdev.1.lcssa.ph, %if.else134 ], [ %bdev.1.lcssa.ph537, %if.end138 ], [ %bdev.1452, %while.end ], [ %bdev.1452, %if.then128 ]
  %block_in_file.2.lcssa515 = phi i64 [ %block_in_file.2.lcssa.ph536, %land.lhs.true143 ], [ %block_in_file.2.lcssa.ph, %if.else134 ], [ %block_in_file.2.lcssa.ph536, %if.end138 ], [ %inc80, %while.end ], [ %inc80, %if.then128 ]
  %first_hole.0.ph.lcssa433510 = phi i32 [ 1, %land.lhs.true143 ], [ %conv2, %if.else134 ], [ %conv2, %if.end138 ], [ %spec.select401, %while.end ], [ %spec.select401, %if.then128 ]
  %bio = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 0
  %62 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool152.not = icmp eq %struct.bio* %62, null
  br i1 %tobool152.not, label %if.then166, label %land.lhs.true153

land.lhs.true153:                                 ; preds = %if.end151
  %last_block_in_bio = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 4
  %63 = load i64, i64* %last_block_in_bio, align 8
  %arrayidx154 = getelementptr inbounds [8 x i64], [8 x i64]* %blocks, i64 0, i64 0
  %64 = load i64, i64* %arrayidx154, align 8
  %sub155 = add i64 %64, -1
  %cmp156.not = icmp eq i64 %63, %sub155
  br i1 %cmp156.not, label %if.end192, label %if.then158

if.then158:                                       ; preds = %land.lhs.true153
  call fastcc void @mpage_bio_submit(i32 noundef 0, i32 noundef %op_flags.0, %struct.bio* noundef nonnull %62) #11
  br label %if.then166.sink.split

if.then166.sink.split:                            ; preds = %if.then198, %if.then158
  store %struct.bio* null, %struct.bio** %bio, align 8
  br label %if.then166

if.then166:                                       ; preds = %if.then166.sink.split, %if.end151
  %arrayidx170 = getelementptr inbounds [8 x i64], [8 x i64]* %blocks, i64 0, i64 0
  %65 = load i64, i64* %arrayidx170, align 8
  %sub171 = add nsw i32 %conv, -9
  %sh_prom172 = zext i32 %sub171 to i64
  %shl173 = shl i64 %65, %sh_prom172
  br i1 %cmp126.not521, label %if.then169, label %if.end178

if.then169:                                       ; preds = %if.then166
  %call174 = call i32 @bdev_read_page(%struct.block_device* noundef %bdev.1.lcssa518, i64 noundef %shl173, %struct.page* noundef %0) #12
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %out, label %if.end178

if.end178:                                        ; preds = %if.then166, %if.then169
  %66 = load i32, i32* %nr_pages, align 8
  %call184 = call fastcc i32 @bio_max_segs(i32 noundef %66) #11
  %call185 = call fastcc %struct.bio* @mpage_alloc(%struct.block_device* noundef %bdev.1.lcssa518, i64 noundef %shl173, i32 noundef %call184, i32 noundef %gfp.0) #11
  store %struct.bio* %call185, %struct.bio** %bio, align 8
  %cmp188 = icmp eq %struct.bio* %call185, null
  br i1 %cmp188, label %confused, label %if.end192

if.end192:                                        ; preds = %land.lhs.true153, %if.end178
  %67 = phi %struct.bio* [ %call185, %if.end178 ], [ %62, %land.lhs.true153 ]
  %shl193 = shl i32 %first_hole.0.ph.lcssa433510, %conv
  %call195 = call i32 @bio_add_page(%struct.bio* noundef nonnull %67, %struct.page* noundef %0, i32 noundef %shl193, i32 noundef 0) #12
  %cmp196 = icmp slt i32 %call195, %shl193
  br i1 %cmp196, label %if.then198, label %if.end202

if.then198:                                       ; preds = %if.end192
  %68 = load %struct.bio*, %struct.bio** %bio, align 8
  call fastcc void @mpage_bio_submit(i32 noundef 0, i32 noundef %op_flags.0, %struct.bio* noundef %68) #11
  br label %if.then166.sink.split

if.end202:                                        ; preds = %if.end192
  %first_logical_block203 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 6
  %69 = load i64, i64* %first_logical_block203, align 8
  %70 = load i64, i64* %b_size, align 8
  %71 = load volatile i64, i64* %b_state.i, align 8
  %72 = and i64 %71, 512
  %tobool211.not = icmp eq i64 %72, 0
  br i1 %tobool211.not, label %lor.lhs.false, label %land.lhs.true212

land.lhs.true212:                                 ; preds = %if.end202
  %shr208 = lshr i64 %70, %sh_prom
  %conv209 = trunc i64 %shr208 to i32
  %sub204 = sub i64 %block_in_file.2.lcssa515, %69
  %conv205 = trunc i64 %sub204 to i32
  %cmp213 = icmp ne i32 %conv205, %conv209
  %73 = and i1 %cmp126.not521, %cmp213
  br i1 %73, label %if.else221, label %if.then217

lor.lhs.false:                                    ; preds = %if.end202
  br i1 %cmp126.not521, label %if.else221, label %if.then217

if.then217:                                       ; preds = %land.lhs.true212, %lor.lhs.false
  %74 = load %struct.bio*, %struct.bio** %bio, align 8
  call fastcc void @mpage_bio_submit(i32 noundef 0, i32 noundef %op_flags.0, %struct.bio* noundef %74) #11
  store %struct.bio* null, %struct.bio** %bio, align 8
  br label %out

if.else221:                                       ; preds = %land.lhs.true212, %lor.lhs.false
  %sub222 = add nuw nsw i64 %shr, 4294967295
  %idxprom223 = and i64 %sub222, 4294967295
  %arrayidx224 = getelementptr [8 x i64], [8 x i64]* %blocks, i64 0, i64 %idxprom223
  %75 = load i64, i64* %arrayidx224, align 8
  %last_block_in_bio225 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 4
  store i64 %75, i64* %last_block_in_bio225, align 8
  br label %out

out:                                              ; preds = %if.then237, %if.else240, %if.then217, %if.else221, %if.then169, %if.then132
  %bio227 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 0
  %76 = load %struct.bio*, %struct.bio** %bio227, align 8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #10
  ret %struct.bio* %76

confused:                                         ; preds = %land.lhs.true91, %if.end85, %if.then61, %if.end178, %if.end, %if.then84
  %bio228 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 0
  %77 = load %struct.bio*, %struct.bio** %bio228, align 8
  %tobool229.not = icmp eq %struct.bio* %77, null
  br i1 %tobool229.not, label %if.end234, label %if.then230

if.then230:                                       ; preds = %confused
  call fastcc void @mpage_bio_submit(i32 noundef 0, i32 noundef %op_flags.0, %struct.bio* noundef nonnull %77) #11
  store %struct.bio* null, %struct.bio** %bio228, align 8
  br label %if.end234

if.end234:                                        ; preds = %if.then230, %confused
  %call235 = call fastcc i32 @PageUptodate(%struct.page* noundef %0) #11
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.then237, label %if.else240

if.then237:                                       ; preds = %if.end234
  %get_block238 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 7
  %78 = load i32 (%struct.inode*, i64, %struct.buffer_head*, i32)*, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)** %get_block238, align 8
  %call239 = call i32 @block_read_full_page(%struct.page* noundef %0, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %78) #12
  br label %out

if.else240:                                       ; preds = %if.end234
  call void @unlock_page(%struct.page* noundef %0) #12
  br label %out
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #11
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mpage_bio_submit(i32 noundef %op, i32 noundef %op_flags, %struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %bi_end_io = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 9
  store void (%struct.bio*)* @mpage_end_io, void (%struct.bio*)** %bi_end_io, align 8
  call fastcc void @bio_set_op_attrs(%struct.bio* noundef %bio, i32 noundef %op, i32 noundef %op_flags) #11
  call void @guard_bio_eod(%struct.bio* noundef %bio) #12
  %call = call i32 @submit_bio(%struct.bio* noundef %bio) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @mpage_readpage(%struct.page* noundef %page, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block) local_unnamed_addr #0 {
entry:
  %args = alloca %struct.mpage_readpage_args, align 8
  %0 = bitcast %struct.mpage_readpage_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %0) #10
  %page1 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 1
  %1 = bitcast %struct.mpage_readpage_args* %args to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  store %struct.page* %page, %struct.page** %page1, align 8
  %nr_pages = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 2
  store i32 1, i32* %nr_pages, align 8
  %get_block2 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 7
  store i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* %get_block, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)** %get_block2, align 8
  %call = call fastcc %struct.bio* @do_mpage_readpage(%struct.mpage_readpage_args* noundef nonnull %args) #11
  %bio = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %args, i64 0, i32 0
  store %struct.bio* %call, %struct.bio** %bio, align 8
  %tobool.not = icmp eq %struct.bio* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @mpage_bio_submit(i32 noundef 0, i32 noundef 0, %struct.bio* noundef nonnull %call) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %0) #10
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clean_page_buffers(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  call fastcc void @clean_buffers(%struct.page* noundef %page, i32 noundef -1) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clean_buffers(%struct.page* noundef %page, i32 noundef %first_unmapped) unnamed_addr #0 {
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
  br i1 %tobool2.not, label %do.body7, label %do.end13, !prof !7

do.body7:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/mpage.c\22; .popsection; .long 14472b - 14470b; .short 449; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !18
  unreachable

do.end13:                                         ; preds = %do.body
  %private = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %4 = load i64, i64* %private, align 8
  %5 = inttoptr i64 %4 to %struct.buffer_head*
  br label %do.body14

do.body14:                                        ; preds = %if.end17, %do.end13
  %bh.0 = phi %struct.buffer_head* [ %5, %do.end13 ], [ %6, %if.end17 ]
  %buffer_counter.0 = phi i32 [ 0, %do.end13 ], [ %inc, %if.end17 ]
  %cmp = icmp eq i32 %buffer_counter.0, %first_unmapped
  br i1 %cmp, label %do.end21, label %if.end17

if.end17:                                         ; preds = %do.body14
  %inc = add i32 %buffer_counter.0, 1
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %b_state.i) #12
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %6 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp19.not = icmp eq %struct.buffer_head* %6, %5
  br i1 %cmp19.not, label %do.end21, label %do.body14

do.end21:                                         ; preds = %do.body14, %if.end17
  %7 = load i32, i32* @buffer_heads_over_limit, align 4
  %tobool22.not = icmp eq i32 %7, 0
  br i1 %tobool22.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end21
  %call23 = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  %call26 = call i32 @try_to_free_buffers(%struct.page* noundef %page) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %land.lhs.true, %if.then25, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @mpage_writepages(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef %wbc, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block) local_unnamed_addr #0 {
entry:
  %plug = alloca %struct.blk_plug, align 8
  %mpd = alloca %struct.mpage_data, align 8
  %0 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !10
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #12
  %tobool.not = icmp eq i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* %get_block, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @generic_writepages(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef %wbc) #12
  br label %if.end8

if.else:                                          ; preds = %entry
  %1 = bitcast %struct.mpage_data* %mpd to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #10
  %bio = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %mpd, i64 0, i32 0
  %get_block1 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %mpd, i64 0, i32 2
  %2 = bitcast %struct.mpage_data* %mpd to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  store i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* %get_block, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)** %get_block1, align 8
  %use_writepage = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %mpd, i64 0, i32 3
  store i32 1, i32* %use_writepage, align 8
  %call2 = call i32 @write_cache_pages(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef %wbc, i32 (%struct.page*, %struct.writeback_control*, i8*)* noundef nonnull @__mpage_writepage, i8* noundef nonnull %1) #12
  %3 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool4.not = icmp eq %struct.bio* %3, null
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.else
  %sync_mode = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %4 = load i32, i32* %sync_mode, align 8
  %cmp = icmp eq i32 %4, 1
  %conv = select i1 %cmp, i32 2048, i32 0
  call fastcc void @mpage_bio_submit(i32 noundef 1, i32 noundef %conv, %struct.bio* noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #10
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ %call2, %if.end ], [ %call, %if.then ]
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #12
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(%struct.blk_plug* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_writepages(%struct.address_space* noundef, %struct.writeback_control* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_cache_pages(%struct.address_space* noundef, %struct.writeback_control* noundef, i32 (%struct.page*, %struct.writeback_control*, i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @__mpage_writepage(%struct.page* noundef %page, %struct.writeback_control* noundef %wbc, i8* nocapture noundef %data) #0 {
entry:
  %blocks = alloca [8 x i64], align 8
  %map_bh = alloca %struct.buffer_head, align 8
  %bio1 = bitcast i8* %data to %struct.bio**
  %0 = load %struct.bio*, %struct.bio** %bio1, align 8
  %mapping2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping2, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 0
  %2 = load %struct.inode*, %struct.inode** %host, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 17
  %3 = load i8, i8* %i_blkbits, align 2
  %conv = zext i8 %3 to i32
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 4096, %sh_prom
  %conv4 = trunc i64 %shr to i32
  %4 = bitcast [8 x i64]* %blocks to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false), !annotation !10
  %5 = bitcast %struct.buffer_head* %map_bh to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %5) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(104) %5, i8 0, i64 104, i1 false), !annotation !10
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %2) #11
  %call5 = call fastcc i32 @wbc_to_write_flags(%struct.writeback_control* noundef %wbc) #11
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i, align 8
  %7 = and i64 %6, 8192
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %do.body87, label %if.then

if.then:                                          ; preds = %entry
  %8 = load volatile i64, i64* %flags.i, align 8
  %9 = and i64 %8, 8192
  %tobool8.not = icmp eq i64 %9, 0
  br i1 %tobool8.not, label %do.body14, label %do.end19, !prof !7

do.body14:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/mpage.c\22; .popsection; .long 14472b - 14470b; .short 504; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !19
  unreachable

do.end19:                                         ; preds = %if.then
  %private = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %10 = load i64, i64* %private, align 8
  %11 = inttoptr i64 %10 to %struct.buffer_head*
  br label %do.body20

do.body20:                                        ; preds = %do.cond78, %do.end19
  %page_block.0 = phi i32 [ 0, %do.end19 ], [ %page_block.1, %do.cond78 ]
  %first_unmapped.0 = phi i32 [ %conv4, %do.end19 ], [ %first_unmapped.1, %do.cond78 ]
  %bdev.0 = phi %struct.block_device* [ null, %do.end19 ], [ %bdev.1, %do.cond78 ]
  %boundary.0 = phi i32 [ 0, %do.end19 ], [ %boundary.1, %do.cond78 ]
  %boundary_block.0 = phi i64 [ 0, %do.end19 ], [ %boundary_block.2, %do.cond78 ]
  %boundary_bdev.0 = phi %struct.block_device* [ null, %do.end19 ], [ %boundary_bdev.2, %do.cond78 ]
  %bh.0 = phi %struct.buffer_head* [ %11, %do.end19 ], [ %24, %do.cond78 ]
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 0
  %12 = load volatile i64, i64* %b_state.i, align 8
  %13 = and i64 %12, 4
  %tobool23.not = icmp eq i64 %13, 0
  br i1 %tobool23.not, label %do.end40, label %do.body32, !prof !20

do.body32:                                        ; preds = %do.body20
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/mpage.c\22; .popsection; .long 14472b - 14470b; .short 510; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !21
  unreachable

do.end40:                                         ; preds = %do.body20
  %14 = load volatile i64, i64* %b_state.i, align 8
  %15 = and i64 %14, 16
  %tobool42.not = icmp eq i64 %15, 0
  br i1 %tobool42.not, label %if.then43, label %if.end51

if.then43:                                        ; preds = %do.end40
  %16 = load volatile i64, i64* %b_state.i, align 8
  %17 = and i64 %16, 2
  %tobool45.not = icmp eq i64 %17, 0
  br i1 %tobool45.not, label %if.end47, label %confused

if.end47:                                         ; preds = %if.then43
  %cmp = icmp eq i32 %first_unmapped.0, %conv4
  %spec.select = select i1 %cmp, i32 %page_block.0, i32 %first_unmapped.0
  br label %do.cond78

if.end51:                                         ; preds = %do.end40
  %cmp52.not = icmp eq i32 %first_unmapped.0, %conv4
  br i1 %cmp52.not, label %if.end55, label %confused

if.end55:                                         ; preds = %if.end51
  %18 = load volatile i64, i64* %b_state.i, align 8
  %19 = and i64 %18, 2
  %tobool57.not = icmp eq i64 %19, 0
  br i1 %tobool57.not, label %confused, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end55
  %20 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i433456 = and i64 %20, 1
  %tobool59.not = icmp eq i64 %conv.i.i433456, 0
  br i1 %tobool59.not, label %confused, label %if.end61

if.end61:                                         ; preds = %lor.lhs.false
  %tobool62.not = icmp eq i32 %page_block.0, 0
  %b_blocknr69.phi.trans.insert = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 3
  %.pre = load i64, i64* %b_blocknr69.phi.trans.insert, align 8
  br i1 %tobool62.not, label %if.end68, label %if.then63

if.then63:                                        ; preds = %if.end61
  %sub = add i32 %page_block.0, -1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr [8 x i64], [8 x i64]* %blocks, i64 0, i64 %idxprom
  %21 = load i64, i64* %arrayidx, align 8
  %add = add i64 %21, 1
  %cmp64.not = icmp eq i64 %.pre, %add
  br i1 %cmp64.not, label %if.end68, label %confused

if.end68:                                         ; preds = %if.end61, %if.then63
  %inc = add i32 %page_block.0, 1
  %idxprom70 = zext i32 %page_block.0 to i64
  %arrayidx71 = getelementptr [8 x i64], [8 x i64]* %blocks, i64 0, i64 %idxprom70
  store i64 %.pre, i64* %arrayidx71, align 8
  %22 = load volatile i64, i64* %b_state.i, align 8
  %23 = and i64 %22, 512
  %tobool73.not = icmp eq i64 %23, 0
  %b_bdev77.phi.trans.insert = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 6
  %.pre476 = load %struct.block_device*, %struct.block_device** %b_bdev77.phi.trans.insert, align 8
  %not.tobool73.not = xor i1 %tobool73.not, true
  %. = zext i1 %not.tobool73.not to i32
  %boundary_block.0. = select i1 %tobool73.not, i64 %boundary_block.0, i64 %.pre
  %boundary_bdev.0..pre476 = select i1 %tobool73.not, %struct.block_device* %boundary_bdev.0, %struct.block_device* %.pre476
  br label %do.cond78

do.cond78:                                        ; preds = %if.end68, %if.end47
  %page_block.1 = phi i32 [ %page_block.0, %if.end47 ], [ %inc, %if.end68 ]
  %first_unmapped.1 = phi i32 [ %spec.select, %if.end47 ], [ %conv4, %if.end68 ]
  %bdev.1 = phi %struct.block_device* [ %bdev.0, %if.end47 ], [ %.pre476, %if.end68 ]
  %boundary.1 = phi i32 [ %boundary.0, %if.end47 ], [ %., %if.end68 ]
  %boundary_block.2 = phi i64 [ %boundary_block.0, %if.end47 ], [ %boundary_block.0., %if.end68 ]
  %boundary_bdev.2 = phi %struct.block_device* [ %boundary_bdev.0, %if.end47 ], [ %boundary_bdev.0..pre476, %if.end68 ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh.0, i64 0, i32 1
  %24 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %cmp79.not = icmp eq %struct.buffer_head* %24, %11
  br i1 %cmp79.not, label %cleanup, label %do.body20

cleanup:                                          ; preds = %do.cond78
  %tobool82.not.not = icmp eq i32 %first_unmapped.1, 0
  br i1 %tobool82.not.not, label %confused, label %page_is_mapped

do.body87:                                        ; preds = %entry
  %call88 = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #11
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %do.body100, label %do.end108, !prof !7

do.body100:                                       ; preds = %do.body87
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/mpage.c\22; .popsection; .long 14472b - 14470b; .short 556; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !22
  unreachable

do.end108:                                        ; preds = %do.body87
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %25 = load i64, i64* %index, align 8
  %sub111 = add i64 %call, -1
  %shr113 = ashr i64 %sub111, %sh_prom
  %b_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 2
  store %struct.page* %page, %struct.page** %b_page, align 8
  %cmp114458.not = icmp eq i32 %conv4, 0
  br i1 %cmp114458.not, label %do.body166, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.end108
  %sub109 = sub nsw i32 12, %conv
  %sh_prom110 = zext i32 %sub109 to i64
  %shl = shl i64 %25, %sh_prom110
  %b_state = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 0
  %shl116 = shl nuw i32 1, %conv
  %conv117 = sext i32 %shl116 to i64
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 4
  %get_block = getelementptr inbounds i8, i8* %data, i64 16
  %26 = bitcast i8* %get_block to i32 (%struct.inode*, i64, %struct.buffer_head*, i32)**
  %b_blocknr129 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 3
  %b_bdev130 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 6
  %27 = trunc i64 %shr113 to i32
  %28 = add i32 %27, 1
  %29 = trunc i64 %shl to i32
  %30 = sub i32 %28, %29
  br label %for.body

for.cond:                                         ; preds = %if.end143
  %inc154 = add i64 %block_in_file.0459, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %shr
  br i1 %exitcond.not, label %do.body155, label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %boundary_bdev.4463 = phi %struct.block_device* [ null, %for.body.lr.ph ], [ %boundary_bdev.5, %for.cond ]
  %boundary_block.4462 = phi i64 [ 0, %for.body.lr.ph ], [ %boundary_block.5, %for.cond ]
  %block_in_file.0459 = phi i64 [ %shl, %for.body.lr.ph ], [ %inc154, %for.cond ]
  store i64 0, i64* %b_state, align 8
  store i64 %conv117, i64* %b_size, align 8
  %31 = load i32 (%struct.inode*, i64, %struct.buffer_head*, i32)*, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)** %26, align 8
  %call118 = call i32 %31(%struct.inode* noundef %2, i64 noundef %block_in_file.0459, %struct.buffer_head* noundef nonnull %map_bh, i32 noundef 1) #12
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %confused

if.end121:                                        ; preds = %for.body
  %32 = load volatile i64, i64* %b_state, align 8
  %33 = and i64 %32, 32
  %tobool123.not = icmp eq i64 %33, 0
  br i1 %tobool123.not, label %if.end125, label %if.then124

if.then124:                                       ; preds = %if.end121
  call fastcc void @clean_bdev_bh_alias(%struct.buffer_head* noundef nonnull %map_bh) #11
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.end121
  %34 = load volatile i64, i64* %b_state, align 8
  %35 = and i64 %34, 512
  %tobool127.not = icmp eq i64 %35, 0
  %36 = load i64, i64* %b_blocknr129, align 8
  %37 = load %struct.block_device*, %struct.block_device** %b_bdev130, align 8
  %boundary_block.5 = select i1 %tobool127.not, i64 %boundary_block.4462, i64 %36
  %boundary_bdev.5 = select i1 %tobool127.not, %struct.block_device* %boundary_bdev.4463, %struct.block_device* %37
  %tobool132.not = icmp eq i64 %indvars.iv, 0
  br i1 %tobool132.not, label %if.end143, label %if.then133

if.then133:                                       ; preds = %if.end125
  %38 = add nuw i64 %indvars.iv, 4294967295
  %idxprom136 = and i64 %38, 4294967295
  %arrayidx137 = getelementptr [8 x i64], [8 x i64]* %blocks, i64 0, i64 %idxprom136
  %39 = load i64, i64* %arrayidx137, align 8
  %add138 = add i64 %39, 1
  %cmp139.not = icmp eq i64 %36, %add138
  br i1 %cmp139.not, label %if.end143, label %confused

if.end143:                                        ; preds = %if.then133, %if.end125
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx147 = getelementptr [8 x i64], [8 x i64]* %blocks, i64 0, i64 %indvars.iv
  store i64 %36, i64* %arrayidx147, align 8
  %40 = load volatile i64, i64* %b_state, align 8
  %cmp150 = icmp eq i64 %block_in_file.0459, %shr113
  br i1 %cmp150, label %do.body155, label %for.cond

do.body155:                                       ; preds = %if.end143, %for.cond
  %page_block.3 = phi i32 [ %conv4, %for.cond ], [ %30, %if.end143 ]
  %41 = trunc i64 %40 to i32
  %42 = lshr i32 %41, 9
  %conv.i.i441.le = and i32 %42, 1
  %cmp156 = icmp eq i32 %page_block.3, 0
  br i1 %cmp156, label %do.body166, label %page_is_mapped, !prof !7

do.body166:                                       ; preds = %do.end108, %do.body155
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/mpage.c\22; .popsection; .long 14472b - 14470b; .short 583; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !23
  unreachable

page_is_mapped:                                   ; preds = %do.body155, %cleanup
  %first_unmapped.3 = phi i32 [ %first_unmapped.1, %cleanup ], [ %page_block.3, %do.body155 ]
  %bdev.5 = phi %struct.block_device* [ %bdev.1, %cleanup ], [ %37, %do.body155 ]
  %boundary.5 = phi i32 [ %boundary.1, %cleanup ], [ %conv.i.i441.le, %do.body155 ]
  %boundary_block.7 = phi i64 [ %boundary_block.2, %cleanup ], [ %boundary_block.5, %do.body155 ]
  %boundary_bdev.7 = phi %struct.block_device* [ %boundary_bdev.2, %cleanup ], [ %boundary_bdev.5, %do.body155 ]
  %shr175 = ashr i64 %call, 12
  %index176 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %43 = load i64, i64* %index176, align 8
  %cmp177.not = icmp ult i64 %43, %shr175
  br i1 %cmp177.not, label %if.end190, label %if.then179

if.then179:                                       ; preds = %page_is_mapped
  %44 = trunc i64 %call to i32
  %conv180 = and i32 %44, 4095
  %cmp182 = icmp ule i64 %43, %shr175
  %tobool185 = icmp ne i32 %conv180, 0
  %or.cond = select i1 %cmp182, i1 %tobool185, i1 false
  br i1 %or.cond, label %cleanup188.thread, label %confused

cleanup188.thread:                                ; preds = %if.then179
  call fastcc void @zero_user_segment(%struct.page* noundef %page, i32 noundef %conv180) #11
  br label %if.end190

if.end190:                                        ; preds = %cleanup188.thread, %page_is_mapped
  %tobool191.not = icmp eq %struct.bio* %0, null
  br i1 %tobool191.not, label %if.end190.if.end198_crit_edge, label %land.lhs.true

if.end190.if.end198_crit_edge:                    ; preds = %if.end190
  %arrayidx205.phi.trans.insert = getelementptr inbounds [8 x i64], [8 x i64]* %blocks, i64 0, i64 0
  %.pre477 = load i64, i64* %arrayidx205.phi.trans.insert, align 8
  br label %if.end198

land.lhs.true:                                    ; preds = %if.end190
  %last_block_in_bio = getelementptr inbounds i8, i8* %data, i64 8
  %45 = bitcast i8* %last_block_in_bio to i64*
  %46 = load i64, i64* %45, align 8
  %arrayidx192 = getelementptr inbounds [8 x i64], [8 x i64]* %blocks, i64 0, i64 0
  %47 = load i64, i64* %arrayidx192, align 8
  %sub193 = add i64 %47, -1
  %cmp194.not = icmp eq i64 %46, %sub193
  br i1 %cmp194.not, label %if.end198, label %if.then196

if.then196:                                       ; preds = %land.lhs.true
  call fastcc void @mpage_bio_submit(i32 noundef 1, i32 noundef %call5, %struct.bio* noundef nonnull %0) #11
  br label %if.end198

if.end198:                                        ; preds = %if.end190.if.end198_crit_edge, %if.then196, %land.lhs.true
  %48 = phi i64 [ %47, %if.then196 ], [ %47, %land.lhs.true ], [ %.pre477, %if.end190.if.end198_crit_edge ]
  %bio.0 = phi %struct.bio* [ null, %if.then196 ], [ %0, %land.lhs.true ], [ null, %if.end190.if.end198_crit_edge ]
  %cmp202 = icmp eq i32 %first_unmapped.3, %conv4
  %sub206 = add nsw i32 %conv, -9
  %sh_prom207 = zext i32 %sub206 to i64
  %shl208 = shl i64 %48, %sh_prom207
  %i_write_hint = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 18
  %shl225 = shl i32 %first_unmapped.3, %conv
  br label %alloc_new

alloc_new:                                        ; preds = %if.then229, %if.end198
  %bio.1 = phi %struct.bio* [ %bio.0, %if.end198 ], [ null, %if.then229 ]
  %cmp199 = icmp eq %struct.bio* %bio.1, null
  br i1 %cmp199, label %if.then201, label %if.end224

if.then201:                                       ; preds = %alloc_new
  br i1 %cmp202, label %if.then204, label %if.end213

if.then204:                                       ; preds = %if.then201
  %call209 = call i32 @bdev_write_page(%struct.block_device* noundef %bdev.5, i64 noundef %shl208, %struct.page* noundef %page, %struct.writeback_control* noundef %wbc) #12
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %out, label %if.end213

if.end213:                                        ; preds = %if.then204, %if.then201
  %call218 = call fastcc %struct.bio* @mpage_alloc(%struct.block_device* noundef %bdev.5, i64 noundef %shl208, i32 noundef 256, i32 noundef 3168) #11
  %cmp219 = icmp eq %struct.bio* %call218, null
  br i1 %cmp219, label %if.end270, label %if.end222

if.end222:                                        ; preds = %if.end213
  %49 = load i8, i8* %i_write_hint, align 1
  %conv223 = zext i8 %49 to i16
  %bi_write_hint = getelementptr inbounds %struct.bio, %struct.bio* %call218, i64 0, i32 5
  store i16 %conv223, i16* %bi_write_hint, align 8
  br label %if.end224

if.end224:                                        ; preds = %if.end222, %alloc_new
  %bio.2 = phi %struct.bio* [ %call218, %if.end222 ], [ %bio.1, %alloc_new ]
  %call226 = call i32 @bio_add_page(%struct.bio* noundef nonnull %bio.2, %struct.page* noundef %page, i32 noundef %shl225, i32 noundef 0) #12
  %cmp227 = icmp slt i32 %call226, %shl225
  br i1 %cmp227, label %if.then229, label %if.end231

if.then229:                                       ; preds = %if.end224
  call fastcc void @mpage_bio_submit(i32 noundef 1, i32 noundef %call5, %struct.bio* noundef nonnull %bio.2) #11
  br label %alloc_new

if.end231:                                        ; preds = %if.end224
  call fastcc void @clean_buffers(%struct.page* noundef %page, i32 noundef %first_unmapped.3) #11
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %50 = inttoptr i64 %call.i to %struct.page*
  %flags.i442 = getelementptr inbounds %struct.page, %struct.page* %50, i64 0, i32 0
  %51 = load volatile i64, i64* %flags.i442, align 8
  %52 = and i64 %51, 32768
  %tobool234.not = icmp eq i64 %52, 0
  br i1 %tobool234.not, label %do.end251, label %do.body243, !prof !20

do.body243:                                       ; preds = %if.end231
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/mpage.c\22; .popsection; .long 14472b - 14470b; .short 641; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !24
  unreachable

do.end251:                                        ; preds = %if.end231
  call fastcc void @set_page_writeback(%struct.page* noundef %page) #11
  call void @unlock_page(%struct.page* noundef %page) #12
  %tobool252.not = icmp eq i32 %boundary.5, 0
  %or.cond422 = select i1 %tobool252.not, i1 %cmp202, i1 false
  br i1 %or.cond422, label %if.else, label %if.then256

if.then256:                                       ; preds = %do.end251
  call fastcc void @mpage_bio_submit(i32 noundef 1, i32 noundef %call5, %struct.bio* noundef nonnull %bio.2) #11
  %tobool258.not = icmp eq i64 %boundary_block.7, 0
  br i1 %tobool258.not, label %out, label %if.then259

if.then259:                                       ; preds = %if.then256
  %shl260 = shl nuw i32 1, %conv
  call void @write_boundary_block(%struct.block_device* noundef %boundary_bdev.7, i64 noundef %boundary_block.7, i32 noundef %shl260) #12
  br label %out

if.else:                                          ; preds = %do.end251
  %sub262 = add nuw nsw i64 %shr, 4294967295
  %idxprom263 = and i64 %sub262, 4294967295
  %arrayidx264 = getelementptr [8 x i64], [8 x i64]* %blocks, i64 0, i64 %idxprom263
  %53 = load i64, i64* %arrayidx264, align 8
  %last_block_in_bio265 = getelementptr inbounds i8, i8* %data, i64 8
  %54 = bitcast i8* %last_block_in_bio265 to i64*
  store i64 %53, i64* %54, align 8
  br label %out

confused:                                         ; preds = %if.then63, %if.end55, %lor.lhs.false, %if.end51, %if.then43, %if.then133, %for.body, %if.then179, %cleanup
  %tobool267.not = icmp eq %struct.bio* %0, null
  br i1 %tobool267.not, label %if.end270, label %if.then268

if.then268:                                       ; preds = %confused
  call fastcc void @mpage_bio_submit(i32 noundef 1, i32 noundef %call5, %struct.bio* noundef nonnull %0) #11
  br label %if.end270

if.end270:                                        ; preds = %if.end213, %if.then268, %confused
  %use_writepage = getelementptr inbounds i8, i8* %data, i64 24
  %55 = bitcast i8* %use_writepage to i32*
  %56 = load i32, i32* %55, align 8
  %tobool271.not = icmp eq i32 %56, 0
  br i1 %tobool271.not, label %out, label %if.then272

if.then272:                                       ; preds = %if.end270
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 9
  %57 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %writepage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %57, i64 0, i32 0
  %58 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %writepage, align 8
  %call273 = call i32 %58(%struct.page* noundef %page, %struct.writeback_control* noundef %wbc) #12
  call fastcc void @mapping_set_error(%struct.address_space* noundef %1, i32 noundef %call273) #11
  br label %out

out:                                              ; preds = %if.then204, %if.end270, %if.else, %if.then259, %if.then256, %if.then272
  %bio.5 = phi %struct.bio* [ null, %if.then272 ], [ null, %if.then259 ], [ null, %if.then256 ], [ %bio.2, %if.else ], [ null, %if.end270 ], [ null, %if.then204 ]
  %ret.0 = phi i32 [ %call273, %if.then272 ], [ 0, %if.then259 ], [ 0, %if.then256 ], [ 0, %if.else ], [ -11, %if.end270 ], [ 0, %if.then204 ]
  store %struct.bio* %bio.5, %struct.bio** %bio1, align 8
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(%struct.blk_plug* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @mpage_writepage(%struct.page* noundef %page, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block, %struct.writeback_control* noundef %wbc) local_unnamed_addr #0 {
entry:
  %mpd = alloca %struct.mpage_data, align 8
  %0 = bitcast %struct.mpage_data* %mpd to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  %get_block1 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %mpd, i64 0, i32 2
  %1 = bitcast %struct.mpage_data* %mpd to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  store i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* %get_block, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)** %get_block1, align 8
  %call = call i32 @__mpage_writepage(%struct.page* noundef %page, %struct.writeback_control* noundef %wbc, i8* noundef nonnull %0) #11
  %bio = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %mpd, i64 0, i32 0
  %2 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool.not = icmp eq %struct.bio* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sync_mode = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %3 = load i32, i32* %sync_mode, align 8
  %cmp = icmp eq i32 %3, 1
  %conv = select i1 %cmp, i32 2048, i32 0
  call fastcc void @mpage_bio_submit(i32 noundef 1, i32 noundef %conv, %struct.bio* noundef nonnull %2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_load(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @readahead_gfp_mask(%struct.address_space* nocapture noundef readonly %x) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %x) #11
  %or1 = or i32 %call, 73728
  ret i32 %or1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mapping_gfp_constraint(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %mapping) #11
  %and = and i32 %call, 3264
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @map_buffer_to_page(%struct.page* noundef %page, %struct.buffer_head* noundef %bh, i32 noundef %page_block) unnamed_addr #0 {
entry:
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i, align 8
  %3 = and i64 %2, 8192
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 17
  %4 = load i8, i8* %i_blkbits, align 2
  %cmp = icmp eq i8 %4, 12
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %5 = load volatile i64, i64* %b_state.i, align 8
  %conv.i.i5660 = and i64 %5, 1
  %tobool3.not = icmp eq i64 %conv.i.i5660, 0
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !17
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %flags.i) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.then
  %call5 = call fastcc i32 @i_blocksize(%struct.inode* noundef %1) #11
  %conv6 = zext i32 %call5 to i64
  call void @create_empty_buffers(%struct.page* noundef %page, i64 noundef %conv6, i64 noundef 0) #12
  br label %do.body

do.body:                                          ; preds = %entry, %if.end
  %6 = load volatile i64, i64* %flags.i, align 8
  %7 = and i64 %6, 8192
  %tobool9.not = icmp eq i64 %7, 0
  br i1 %tobool9.not, label %do.body15, label %do.end21, !prof !7

do.body15:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/mpage.c\22; .popsection; .long 14472b - 14470b; .short 122; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !25
  unreachable

do.end21:                                         ; preds = %do.body
  %private = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %8 = load i64, i64* %private, align 8
  %9 = inttoptr i64 %8 to %struct.buffer_head*
  br label %do.body22

do.body22:                                        ; preds = %if.end29, %do.end21
  %page_bh.0 = phi %struct.buffer_head* [ %9, %do.end21 ], [ %13, %if.end29 ]
  %block.0 = phi i32 [ 0, %do.end21 ], [ %inc, %if.end29 ]
  %cmp23 = icmp eq i32 %block.0, %page_block
  br i1 %cmp23, label %if.then25, label %if.end29

if.then25:                                        ; preds = %do.body22
  %b_state = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %10 = load i64, i64* %b_state, align 8
  %b_state26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %page_bh.0, i64 0, i32 0
  store i64 %10, i64* %b_state26, align 8
  %b_bdev = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 6
  %11 = load %struct.block_device*, %struct.block_device** %b_bdev, align 8
  %b_bdev27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %page_bh.0, i64 0, i32 6
  store %struct.block_device* %11, %struct.block_device** %b_bdev27, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 3
  %12 = load i64, i64* %b_blocknr, align 8
  %b_blocknr28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %page_bh.0, i64 0, i32 3
  store i64 %12, i64* %b_blocknr28, align 8
  br label %cleanup

if.end29:                                         ; preds = %do.body22
  %b_this_page = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %page_bh.0, i64 0, i32 1
  %13 = load %struct.buffer_head*, %struct.buffer_head** %b_this_page, align 8
  %inc = add i32 %block.0, 1
  %cmp31.not = icmp eq %struct.buffer_head* %13, %9
  br i1 %cmp31.not, label %cleanup, label %do.body22

cleanup:                                          ; preds = %if.end29, %if.then25, %if.then4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user_segment(%struct.page* noundef %page, i32 noundef %start) unnamed_addr #0 {
entry:
  call fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @PageUptodate(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #11
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 2
  %conv.i = and i32 %3, 1
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #10, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_read_page(%struct.block_device* noundef, i64 noundef, %struct.page* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @mpage_alloc(%struct.block_device* noundef %bdev, i64 noundef %first_sector, i32 noundef %nr_vecs, i32 noundef %gfp_flags) unnamed_addr #0 {
entry:
  %and = and i32 %gfp_flags, 3264
  %conv = trunc i32 %nr_vecs to i16
  %call = call fastcc %struct.bio* @bio_alloc(i32 noundef %and, i16 noundef %conv) #11
  %cmp = icmp eq %struct.bio* %call, null
  br i1 %cmp, label %land.lhs.true, label %do.body

land.lhs.true:                                    ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !27
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and3 = and i32 %2, 2048
  %tobool = icmp eq i32 %and3, 0
  br i1 %tobool, label %if.end15, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true, %while.body
  %nr_vecs.addr.0 = phi i32 [ %div, %while.body ], [ %nr_vecs, %land.lhs.true ]
  %div = sdiv i32 %nr_vecs.addr.0, 2
  %nr_vecs.addr.0.off = add i32 %nr_vecs.addr.0, 1
  %3 = icmp ult i32 %nr_vecs.addr.0.off, 3
  br i1 %3, label %if.end15, label %while.body

while.body:                                       ; preds = %land.rhs
  %conv6 = trunc i32 %div to i16
  %call7 = call fastcc %struct.bio* @bio_alloc(i32 noundef %and, i16 noundef %conv6) #11
  %tobool4.old.not = icmp eq %struct.bio* %call7, null
  br i1 %tobool4.old.not, label %land.rhs, label %do.body

do.body:                                          ; preds = %while.body, %entry
  %bio.1 = phi %struct.bio* [ %call, %entry ], [ %call7, %while.body ]
  call fastcc void @bio_clear_flag(%struct.bio* noundef nonnull %bio.1, i32 noundef 11) #11
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio.1, i64 0, i32 1
  %4 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %cmp10.not = icmp eq %struct.block_device* %4, %bdev
  br i1 %cmp10.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %do.body
  call fastcc void @bio_clear_flag(%struct.bio* noundef nonnull %bio.1, i32 noundef 7) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.body
  store %struct.block_device* %bdev, %struct.block_device** %bi_bdev, align 8
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio.1, i64 0, i32 8, i32 0
  store i64 %first_sector, i64* %bi_sector, align 8
  br label %if.end15

if.end15:                                         ; preds = %land.rhs, %land.lhs.true, %if.end13
  %bio.133 = phi %struct.bio* [ %bio.1, %if.end13 ], [ null, %land.lhs.true ], [ null, %land.rhs ]
  ret %struct.bio* %bio.133
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @bio_max_segs(i32 noundef %nr_segs) unnamed_addr #5 {
entry:
  %cmp = icmp ult i32 %nr_segs, 256
  %cond = select i1 %cmp, i32 %nr_segs, i32 256
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(%struct.bio* noundef, %struct.page* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(%struct.page* noundef, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mapping_gfp_mask(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #3 {
entry:
  %gfp_mask = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 3
  %0 = load i32, i32* %gfp_mask, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #10, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(%struct.page* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_blocksize(%struct.inode* nocapture noundef readonly %node) unnamed_addr #3 {
entry:
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %node, i64 0, i32 17
  %0 = load i8, i8* %i_blkbits, align 2
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 1, %conv
  ret i32 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start1) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %page) #11
  %call1 = call fastcc i64 @page_size(%struct.page* noundef %page) #11
  %cmp = icmp ult i64 %call1, 4096
  br i1 %cmp, label %do.body9, label %lor.rhs, !prof !7

lor.rhs:                                          ; preds = %entry
  %call4 = call fastcc i64 @page_size(%struct.page* noundef %page) #11
  %cmp15 = icmp ult i32 %start1, 4096
  br i1 %cmp15, label %if.then17, label %do.end33

do.body9:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/highmem.h\22; .popsection; .long 14472b - 14470b; .short 208; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !29
  unreachable

if.then17:                                        ; preds = %lor.rhs
  %idx.ext = zext i32 %start1 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %sub = sub nuw nsw i32 4096, %start1
  %conv18 = zext i32 %sub to i64
  %call19 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv18) #12
  br label %do.end33

do.end33:                                         ; preds = %lor.rhs, %if.then17
  call fastcc void @__kunmap_atomic() #11
  %call371 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #11
  %cmp382.not = icmp eq i64 %call371, 0
  br i1 %cmp382.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.end33, %for.body
  %conv364 = phi i64 [ %conv36, %for.body ], [ 0, %do.end33 ]
  %add.ptr41 = getelementptr %struct.page, %struct.page* %page, i64 %conv364
  call void @flush_dcache_page(%struct.page* noundef %add.ptr41) #12
  %inc = add nuw nsw i64 %conv364, 1
  %conv36 = and i64 %inc, 4294967295
  %call37 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #11
  %cmp38 = icmp ugt i64 %call37, %conv36
  br i1 %cmp38, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %do.end33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  call fastcc void @pagefault_disable() #11
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @page_size(%struct.page* noundef %page) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @compound_order(%struct.page* noundef %page) #11
  %sh_prom = zext i32 %call to i64
  %shl = shl i64 4096, %sh_prom
  ret i64 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #0 {
entry:
  call fastcc void @pagefault_enable() #11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @compound_nr(%struct.page* noundef %page) unnamed_addr #6 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !27
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #6 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %3 = bitcast %union.anon.13* %2 to %struct.anon.22*
  %compound_order = getelementptr inbounds %struct.anon.22, %struct.anon.22* %3, i64 0, i32 2
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
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !27
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #10, !srcloc !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #6 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.13* %0 to i64*
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @bio_alloc(i32 noundef %gfp_mask, i16 noundef %nr_iovecs) unnamed_addr #0 {
entry:
  %call = call %struct.bio* @bio_alloc_bioset(i32 noundef %gfp_mask, i16 noundef %nr_iovecs, %struct.bio_set* noundef nonnull @fs_bio_set) #12
  ret %struct.bio* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_clear_flag(%struct.bio* nocapture noundef %bio, i32 noundef %bit) unnamed_addr #7 {
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
declare dso_local %struct.bio* @bio_alloc_bioset(i32 noundef, i16 noundef, %struct.bio_set* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #12
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #10, !srcloc !35
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @mpage_end_io(%struct.bio* noundef %bio) #0 {
entry:
  %iter_all = alloca %struct.bvec_iter_all, align 8
  %0 = bitcast %struct.bvec_iter_all* %iter_all to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !10
  %call = call fastcc %struct.bio_vec* @bvec_init_iter_all(%struct.bvec_iter_all* noundef nonnull %iter_all) #11
  %call18 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #11
  br i1 %call18, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %call, i64 0, i32 0
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %1 = load %struct.page*, %struct.page** %bv_page, align 8
  %2 = load i32, i32* %bi_opf, align 8
  %and = and i32 %2, 255
  %tobool = icmp ne i32 %and, 0
  %3 = load i8, i8* %bi_status, align 2
  %call2 = call i32 @blk_status_to_errno(i8 noundef %3) #12
  call void @page_endio(%struct.page* noundef %1, i1 noundef %tobool, i32 noundef %call2) #12
  %call1 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #11
  br i1 %call1, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  call void @bio_put(%struct.bio* noundef %bio) #12
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @bio_set_op_attrs(%struct.bio* nocapture noundef writeonly %bio, i32 noundef %op, i32 noundef %op_flags) unnamed_addr #8 {
entry:
  %or = or i32 %op_flags, %op
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  store i32 %or, i32* %bi_opf, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @guard_bio_eod(%struct.bio* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio(%struct.bio* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc %struct.bio_vec* @bvec_init_iter_all(%struct.bvec_iter_all* noundef writeonly %iter_all) unnamed_addr #8 {
entry:
  %done = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 2
  store i32 0, i32* %done, align 4
  %idx = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 1
  store i32 0, i32* %idx, align 8
  %bv = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 0
  ret %struct.bio_vec* %bv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @bio_next_segment(%struct.bio* nocapture noundef readonly %bio, %struct.bvec_iter_all* nocapture noundef %iter) unnamed_addr #7 {
entry:
  %idx = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter, i64 0, i32 1
  %0 = load i32, i32* %idx, align 8
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 12
  %1 = load i16, i16* %bi_vcnt, align 8
  %conv = zext i16 %1 to i32
  %cmp.not = icmp slt i32 %0, %conv
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %2 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr %struct.bio_vec, %struct.bio_vec* %2, i64 %idxprom
  call fastcc void @bvec_advance(%struct.bio_vec* noundef %arrayidx, %struct.bvec_iter_all* noundef %iter) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_endio(%struct.page* noundef, i1 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(%struct.bio* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bvec_advance(%struct.bio_vec* nocapture noundef readonly %bvec, %struct.bvec_iter_all* nocapture noundef %iter_all) unnamed_addr #7 {
entry:
  %done = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 2
  %0 = load i32, i32* %done, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bv_page = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 0, i32 0
  %1 = load %struct.page*, %struct.page** %bv_page, align 8
  %incdec.ptr = getelementptr %struct.page, %struct.page* %1, i64 1
  store %struct.page* %incdec.ptr, %struct.page** %bv_page, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %bv_page2 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 0
  %2 = load %struct.page*, %struct.page** %bv_page2, align 8
  %bv_offset3 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 2
  %3 = load i32, i32* %bv_offset3, align 4
  %shr = lshr i32 %3, 12
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr %struct.page, %struct.page* %2, i64 %idx.ext
  %bv_page4 = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 0, i32 0
  store %struct.page* %add.ptr, %struct.page** %bv_page4, align 8
  %4 = load i32, i32* %bv_offset3, align 4
  %5 = and i32 %4, 4095
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %5, %if.else ], [ 0, %if.then ]
  %6 = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 0, i32 2
  store i32 %.sink, i32* %6, align 4
  %sub = sub nuw nsw i32 4096, %.sink
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 1
  %7 = load i32, i32* %bv_len, align 8
  %sub12 = sub i32 %7, %0
  %cmp = icmp ult i32 %sub, %sub12
  %cond = select i1 %cmp, i32 %sub, i32 %sub12
  %bv_len14 = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 0, i32 1
  store i32 %cond, i32* %bv_len14, align 8
  %add = add i32 %cond, %0
  store i32 %add, i32* %done, align 4
  %8 = load i32, i32* %bv_len, align 8
  %cmp19 = icmp eq i32 %add, %8
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end
  %idx = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 1
  %9 = load i32, i32* %idx, align 8
  %inc = add i32 %9, 1
  store i32 %inc, i32* %idx, align 8
  store i32 0, i32* %done, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @wbc_to_write_flags(%struct.writeback_control* nocapture noundef readonly %wbc) unnamed_addr #3 {
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
define internal fastcc void @clean_bdev_bh_alias(%struct.buffer_head* nocapture noundef readonly %bh) unnamed_addr #0 {
entry:
  %b_bdev = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 6
  %0 = load %struct.block_device*, %struct.block_device** %b_bdev, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 3
  %1 = load i64, i64* %b_blocknr, align 8
  call void @clean_bdev_aliases(%struct.block_device* noundef %0, i64 noundef %1, i64 noundef 1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_write_page(%struct.block_device* noundef, i64 noundef, %struct.page* noundef, %struct.writeback_control* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_page_writeback(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call i32 @__test_set_page_writeback(%struct.page* noundef %page, i1 noundef false) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_boundary_block(%struct.block_device* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mapping_set_error(%struct.address_space* noundef %mapping, i32 noundef %error) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.end11, label %if.end, !prof !20

if.end:                                           ; preds = %entry
  call void @__filemap_set_wb_err(%struct.address_space* noundef %mapping, i32 noundef %error) #12
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %tobool4.not = icmp eq %struct.inode* %0, null
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_wb_err = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 43
  %call = call i32 @errseq_set(i32* noundef %s_wb_err, i32 noundef %error) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %cmp = icmp eq i32 %error, -28
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %. = zext i1 %cmp to i64
  call fastcc void @set_bit(i64 noundef %., i64* noundef %flags) #11
  br label %if.end11

if.end11:                                         ; preds = %if.end7, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_bdev_aliases(%struct.block_device* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__test_set_page_writeback(%struct.page* noundef, i1 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(%struct.address_space* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(i32* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind readnone }

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
!8 = !{i64 2154105489}
!9 = !{i64 1887875}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = !{i64 2150389007}
!18 = !{i64 2155111242}
!19 = !{i64 2155112943}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2155114296}
!22 = !{i64 2155115630}
!23 = !{i64 2155121044}
!24 = !{i64 2155122861}
!25 = !{i64 2155108991}
!26 = !{i64 2150388178}
!27 = !{i64 1369996}
!28 = !{i64 2147819985, i64 2147820506, i64 2147820536, i64 2147820562, i64 2147820594, i64 2147820623}
!29 = !{i64 2153700892}
!30 = !{i64 2153691835}
!31 = !{i64 2153694093}
!32 = !{i64 2152126196}
!33 = !{i64 2152126403}
!34 = !{i64 2147809415, i64 2147809926, i64 2147809956, i64 2147809982, i64 2147810014, i64 2147810043}
!35 = !{i64 2147750908, i64 2147751556, i64 2147751586, i64 2147751618, i64 2147751652, i64 2147751688, i64 2147751713}
